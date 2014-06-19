<?php
class ControllerCommonSeoUrl extends Controller {
        /* SEO Custom URL */
        private $url_list = array (
            'common/home'       => 'home',
            'checkout/cart'     => 'cart',
            'account/register'  => 'register',
                        'account/wishlist'  => 'wishlist',
                        'checkout/checkout' => 'checkout',
                        'account/login'     => 'login',
                        'product/special'   => 'special',
                        'affiliate/account' => 'affiliate',
                        'checkout/voucher'  => 'voucher',
                        'product/manufacturer' => 'brand',
                        'account/newsletter'   => 'newsletter',
                        'account/order'        => 'order',
                        'account/account'      => 'account',
                        'information/contact'  => 'contact',
                        'account/return/insert' => 'return/insert',
                        'information/sitemap'   => 'sitemap',
            );
        /* SEO Custom URL */

        public function index() {
                // Add rewrite to url class
                if ($this->config->get('config_seo_url')) {
                        $this->url->addRewrite($this);
                }

                // Decode URL
                if (isset($this->request->get['_route_'])) {
                        $parts = explode('/', $this->request->get['_route_']);

                                                if ( count($parts) > 1 ) {
                                                        if ($parts[1] == 'category'){
                                                                $this->request->get['path'] = $parts[2];
                                                                for ( $i = 3 ; $i < count($parts); $i++) {      
                                                                        $this->request->get['path'] .= '_' . $parts[$i];
                                                                }
                                                        }elseif( $parts[1] == 'item' ) {
                                                                $this->request->get['product_id'] = $parts[2];
                                                        }
                                                }
                        foreach ($parts as $part) {
                                $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE keyword = '" . $this->db->escape($part) . "'");

                                if ($query->num_rows) {
                                        $url = explode('=', $query->row['query']);

                                        if ($url[0] == 'product_id') {
                                                $this->request->get['product_id'] = $url[1];
                                        }

                                        if ($url[0] == 'category_id') {
                                                if (!isset($this->request->get['path'])) {
                                                        $this->request->get['path'] = $url[1];
                                                } else {
                                                        $this->request->get['path'] .= '_' . $url[1];
                                                }
                                        }       

                                        if ($url[0] == 'manufacturer_id') {
                                                $this->request->get['manufacturer_id'] = $url[1];
                                        }

                                        if ($url[0] == 'information_id') {
                                                $this->request->get['information_id'] = $url[1];
                                        }       
                                } else {
                                        $this->request->get['route'] = 'error/not_found';       
                                }
                        }
                        /* SEO Custom URL */
                        if ( $_s = $this->setURL($this->request->get['_route_']) ) {
                                $this->request->get['route'] = $_s;
                        }/* SEO Custom URL */

                        if (isset($this->request->get['product_id'])) {
                                $this->request->get['route'] = 'product/product';


			} elseif ($this->request->get['_route_'] ==  'wishlist') { $this->request->get['route'] =  'account/wishlist';
			} elseif ($this->request->get['_route_'] ==  'contact') { $this->request->get['route'] =  'information/contact';
			} elseif ($this->request->get['_route_'] ==  'account') { $this->request->get['route'] =  'account/account';
			} elseif ($this->request->get['_route_'] ==  'sitemap') { $this->request->get['route'] =  'information/sitemap';
			} elseif ($this->request->get['_route_'] ==  'manufacturer') { $this->request->get['route'] =  'product/manufacturer';
			} elseif ($this->request->get['_route_'] ==  'affiliates') { $this->request->get['route'] =  'affiliate/account';
			} elseif ($this->request->get['_route_'] ==  'special') { $this->request->get['route'] =  'product/special';
			} elseif ($this->request->get['_route_'] ==  'login') { $this->request->get['route'] =  'account/login';
			} elseif ($this->request->get['_route_'] ==  'logout') { $this->request->get['route'] =  'account/logout';
			} elseif ($this->request->get['_route_'] ==  'register') { $this->request->get['route'] =  'account/register';
			
			
                        } elseif (isset($this->request->get['path'])) {
                                $this->request->get['route'] = 'product/category';
                        } elseif (isset($this->request->get['manufacturer_id'])) {
                                $this->request->get['route'] = 'product/manufacturer/product';
                        } elseif (isset($this->request->get['information_id'])) {
                                $this->request->get['route'] = 'information/information';
                        }

                        if (isset($this->request->get['route'])) {
                                return $this->forward($this->request->get['route']);
                        }
                }
        }

        public function rewrite($link) {
                if ($this->config->get('config_seo_url')) {
                        $url_data = parse_url(str_replace('&amp;', '&', $link));

                        $url = ''; 

                        $data = array();

                        parse_str($url_data['query'], $data);

                        foreach ($data as $key => $value) {
                                if (isset($data['route'])) {
                                        if ( (($data['route'] == 'product/manufacturer/product' || $data['route'] == 'product/product') && $key == 'manufacturer_id') || ($data['route'] == 'information/information' && $key == 'information_id')) {
                                                $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE `query` = '" . $this->db->escape($key . '=' . (int)$value) . "'");

                                                if ($query->num_rows) {
                                                        $url .= '/' . $query->row['keyword'];

                                                        unset($data[$key]);
                                                }                                       
                                        } elseif( $key == 'product_id' ) {

                                                $url = '/shop/item/'.$value;
                                                unset($data[$key]);


			} elseif (isset($data['route']) && $data['route'] ==   'common/home') { $url .=  '/';
			} elseif (isset($data['route']) && $data['route'] ==   'account/wishlist' && $key != 'remove') { $url .=  '/wishlist';
			} elseif (isset($data['route']) && $data['route'] ==   'information/contact') { $url .=  '/contact';
			} elseif (isset($data['route']) && $data['route'] ==   'account/account') { $url .=  '/account';
			} elseif (isset($data['route']) && $data['route'] ==   'information/sitemap') { $url .=  '/sitemap';
			} elseif (isset($data['route']) && $data['route'] ==   'product/manufacturer') { $url .=  '/manufacturer';
			} elseif (isset($data['route']) && $data['route'] ==   'affiliate/account') { $url .=  '/affiliates';
			} elseif (isset($data['route']) && $data['route'] ==   'product/special' && $key != 'page' && $key != 'sort' && $key != 'limit' && $key != 'order') { $url .=  '/special';
			} elseif (isset($data['route']) && $data['route'] ==   'account/login') { $url .=  '/login';
			} elseif (isset($data['route']) && $data['route'] ==   'account/logout') { $url .=  '/logout';
			} elseif (isset($data['route']) && $data['route'] ==   'account/register') { $url .=  '/register';
			
                                              }elseif ($key == 'path') {

                                                $categories = explode('_', $value);
                                                $url = '/shop/category';
                                                foreach ($categories as $category) {
                                                        $url .= '/'.$category;
                                                }
                                                unset($data[$key]);

                                        }// 
                                        /* SEO Custom URL */
                                        if( $_u = $this->getURL($data['route']) ){
                                            $url .= $_u;
                                            unset($data[$key]);
                                        }/* SEO Custom URL */        


                                }
                        }

                        if ($url) {
                                unset($data['route']);

                                $query = '';

                                if ($data) {
                                        foreach ($data as $key => $value) {
                                                $query .= '&' . $key . '=' . $value;
                                        }

                                        if ($query) {
                                                $query = '?' . trim($query, '&');
                                        }
                                }

                                return $url_data['scheme'] . '://' . $url_data['host'] . (isset($url_data['port']) ? ':' . $url_data['port'] : '') . str_replace('/index.php', '', $url_data['path']) . $url . $query;
                        } else {
                                return $link;
                        }
                } else {
                        return $link;
                }               
        }

        /* SEO Custom URL */
        public function getURL($route) {
                if( count($this->url_list) > 0) {
                     foreach ($this->url_list as $key => $value) {
                        if($route == $key) {
                            return '/'.$value;
                        }
                     }
                }
                return false;
        }
        public function setURL($_route) {
                if( count($this->url_list) > 0 ){
                     foreach ($this->url_list as $key => $value) {
                        if($_route == $value) {
                            return $key;
                        }
                     }
                }
                return false;
        }/* SEO Custom URL */
}
?>
