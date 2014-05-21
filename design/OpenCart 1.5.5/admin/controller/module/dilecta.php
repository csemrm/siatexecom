<?php

class ControllerModuleDilecta extends Controller {
	
	private $error = array(); 
	
	public function index() {   
	
		//Load the language file for this module
		$this->language->load('module/dilecta');

		//Set the title from the language file $_['heading_title'] string
		$this->document->setTitle($this->language->get('heading_title'));
		
		//Load the settings model. You can also add any other models you want to load here.
		$this->load->model('setting/setting');
		
  		// DILECTA MUTLI STORE
  		
			if (isset($this->request->post['store_id'])) {
				$this->data['store_id'] = $this->request->post['store_id'];
			} else {
				$this->data['store_id'] = $this->config->get('d_store_id');
			}

			$this->data['stores'] = array();
			
			$this->load->model('setting/store');
			
			$results = $this->model_setting_store->getStores();
			
			$this->data['stores'][] = array(
				'name' => 'Default',
				'href' => '',
				'store_id' => 0
			);
				
			foreach ($results as $result) {
				$this->data['stores'][] = array(
					'name' => $result['name'],
					'href' => $result['url'],
					'store_id' => $result['store_id']
				);
			}		
			
			
			if(isset($_GET['store_id'])) {
			
				$this->data['store_id'] = $_GET['store_id'];
			
			} else {
				
				if (isset($_GET['submit'])) {
			
					$this->data['store_id'] = $this->data['store_id'];
				
				} else {
				
					$this->data['store_id'] = 0;
				
				}
			
			}
			
		// store config data
		
		$config_data = array(
			'general_status',
			'language_direction',
			'product_per_pow',
			'product_per_pow2',
			'column_position',
			'refine_search_style',
			'default_list_grid',
			'font_status',
			'body_font',
			'categories_bar',
			'categories_bar_px',
			'headlines',
			'headlines_px',
			'footer_headlines',
			'footer_headlines_px',
			'product_name_font',
			'product_name_font_px',
			'slider_medium_description',
			'slider_medium_description_px',
			'slider_large_description',
			'slider_large_description_px',
			'customfooter',
			'colors_status',
			'dilecta_color',
			'background_status',
			'general_background',
			'general_background_background',
			'general_background_position',
			'general_background_repeat',
			'general_background_attachment',
			'footer_background',
			'footer_background_background',
			'footer_background_position',
			'footer_background_repeat',
			'payment_status',
			'payment_mastercard_status',
			'payment_mastercard',
			'payment_visa',
			'payment_visa_status',
			'payment_moneybookers',
			'payment_moneybookers_status',
			'payment_paypal',
			'payment_paypal_status',
			'payment_add_1',
			'payment_add_1_url',
			'payment_add_1_status',
			'payment_add_0',
			'payment_add_0_url',
			'payment_add_0_status',
			'payment_add_2',
			'payment_add_2_url',
			'payment_add_2_status',
			'payment_add_3',
			'payment_add_3_url',
			'payment_add_3_status',
			'ex_tax_price',
			'reward_points',
			'product_social_share',
			'body_font_px',
			'body_font_smaller_px',
			'page_name',
			'page_name_px',
			'button_font',
			'button_font_px',
			'custom_price',
			'custom_price_px',
			'custom_price_px_medium',
			'custom_price_px_small',
			'custom_price_px_old_price',
			'product_image_zoom',
			'product_scroll_latest',
			'product_scroll_featured',
			'product_scroll_bestsellers',
			'product_scroll_specials',
			'product_scroll_related',
			'responsive_layout',
			'headlines_text',
			'body_text',
			'links',
			'links_hover',
			'price',
			'product_name',
			'categories_links',
			'categories_links_hover',
			'custom_footer_background',
			'custom_footer_headlines',
			'custom_footer_body',
			'custom_footer_links',
			'st_button_background',
			'st_button_background_hover',
			'st_button_font',
			'nd_button_background',
			'nd_button_background_hover',
			'nd_button_font',
			'general_background_background_color',
			'footer_background_background_color',
			'custom_code_status',
			'custom_code_css',
			'custom_code_js',
			'custom_menu_status',
			'custom_menu_position',
			'custom_menu',
			'custom_block_status',
			'custom_block_text',
			'shopping_cart_icon',
			'icon_wishlist',
			'custom_footer_background',
			'input_background',
			'input_border',
			'input_border_hover',
			'categories_background',
			'categories_border_top',
			'custom_footer_border',
			'background_page_title',
			'border_page_title',
			'background_banners',
			'border_banners',
			'border_5px_color',
			'background_slider',
			'refine_image_width',
			'refine_image_height'
		);
		
		$this->data['ustawienia'] = $this->model_setting_setting->getSetting('dilecta', $this->data['store_id']);
		
		foreach ($config_data as $conf) {
			if (isset($this->request->post[$conf])) {
				$this->data[$conf] = $this->request->post[$conf];
			} else {
				if(isset($this->data['ustawienia'][$conf])) {
					$this->data[$conf] = $this->data['ustawienia'][$conf];
				} else {
					$this->data[$conf] = false;
				}
			}
		}
		
				
		//Save the settings if the user has submitted the admin form (ie if someone has pressed save).
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
					
					$this->data['array'] = array(
						'd_store_id' => $this->request->post['store_id']
					);
					$this->model_setting_setting->editSetting('dilecta', $this->request->post, $this->request->post['store_id']);	
					$this->model_setting_setting->editSetting('d_id_store', $this->data['array']);	
					$this->session->data['success'] = $this->language->get('text_success');
               $this->redirect(HTTPS_SERVER . 'index.php?route=module/dilecta&submit=true&token=' . $this->session->data['token']);
						
		}
		
		$this->data['text_image_manager'] = 'Image manager';
		$this->data['token'] = $this->session->data['token'];		
		
		$text_strings = array(
				'heading_title',
				'text_enabled',
				'text_disabled',
				'text_content_top',
				'text_content_bottom',
				'text_column_left',
				'text_column_right',
				'entry_layout',
				'entry_position',
				'entry_status',
				'entry_sort_order',
				'button_save',
				'button_cancel',
				'button_add_module',
				'button_remove',
				'entry_example' 
		);
		
		foreach ($text_strings as $text) {
			$this->data[$text] = $this->language->get($text);
		}
	
		//This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
            if (isset($this->session->data['success'])) {
                $this->data['success'] = $this->session->data['success'];

                unset($this->session->data['success']);
            } else {
                $this->data['success'] = '';
            }
		
		//SET UP BREADCRUMB TRAIL. YOU WILL NOT NEED TO MODIFY THIS UNLESS YOU CHANGE YOUR MODULE NAME.
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/dilecta', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/dilecta', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

	
		//This code handles the situation where you have multiple instances of this module, for different layouts.
		if (isset($this->request->post['dilecta_module'])) {
			$modules = explode(',', $this->request->post['dilecta_module']);
		} elseif ($this->config->get('dilecta_module') != '') {
			$modules = explode(',', $this->config->get('dilecta_module'));
		} else {
			$modules = array();
		}			
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
		
		$this->load->model('localisation/language');
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
				
		foreach ($modules as $module) {
			if (isset($this->request->post['dilecta_' . $module . '_layout_id'])) {
				$this->data['dilecta_' . $module . '_layout_id'] = $this->request->post['dilecta_' . $module . '_layout_id'];
			} else {
				$this->data['dilecta_' . $module . '_layout_id'] = $this->config->get('dilecta_' . $module . '_layout_id');
			}	
			
			if (isset($this->request->post['dilecta_' . $module . '_position'])) {
				$this->data['dilecta_' . $module . '_position'] = $this->request->post['dilecta_' . $module . '_position'];
			} else {
				$this->data['dilecta_' . $module . '_position'] = $this->config->get('dilecta_' . $module . '_position');
			}	
			
			if (isset($this->request->post['dilecta_' . $module . '_status'])) {
				$this->data['dilecta_' . $module . '_status'] = $this->request->post['dilecta_' . $module . '_status'];
			} else {
				$this->data['dilecta_' . $module . '_status'] = $this->config->get('dilecta_' . $module . '_status');
			}	
						
			if (isset($this->request->post['dilecta_' . $module . '_sort_order'])) {
				$this->data['dilecta_' . $module . '_sort_order'] = $this->request->post['dilecta_' . $module . '_sort_order'];
			} else {
				$this->data['dilecta_' . $module . '_sort_order'] = $this->config->get('dilecta_' . $module . '_sort_order');
			}				
		}
		

		
		$this->data['modules'] = $modules;
		
		if (isset($this->request->post['dilecta_module'])) {
			$this->data['dilecta_module'] = $this->request->post['dilecta_module'];
		} else {
			$this->data['dilecta_module'] = $this->config->get('dilecta_module');
		}

		//Choose which template file will be used to display this request.
		$this->template = 'module/dilecta.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		
		//Send the output.
		$this->response->setOutput($this->render());
	}
	
	/*
	 * 
	 * This function is called to ensure that the settings chosen by the admin user are allowed/valid.
	 * You can add checks in here of your own.
	 * 
	 */
	
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/dilecta')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}


}
?>
