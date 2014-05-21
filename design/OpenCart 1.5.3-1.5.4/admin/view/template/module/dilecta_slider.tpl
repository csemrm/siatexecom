<?php echo $header; ?>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="view/stylesheet/dilecta.css" />

<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning): ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php endif ?>
  <?php if ($success): ?>
  <div class="success"><?php echo $success; ?></div>
  <?php endif; ?>

<!-- Theme Options -->

<div class="set-size" id="theme-options">

	<h3>Dilecta slider</h3>
	
	<!-- Content -->
	
	<div class="content">
	
		<div>
		
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
			
				<!-- MULTISTORE -->

			    <div id="tb_store_select">
			        <label class="inline">Store</label>
			        <select name="dilecta_store_id" id="dilecta_store_id">
			          <?php foreach ($stores as $store): ?>
			          <option value="<?php echo $store['store_id']; ?>" rel="<?php echo HTTPS_SERVER . 'index.php?route=module/dilecta_slider&store_id=' . $store['store_id'] . '&token=' . $this->session->data['token']; ?>"<?php if($store_id == $store['store_id']) echo ' selected="selected"'; ?>><?php echo $store['name']; ?></option>
			          <?php endforeach; ?>
			        </select>
			    </div>
			    			    
			    <script type="text/javascript">
					 $(document).ready(function (){
					 
						  $("#dilecta_store_id").change(function () {
						  
	 				         $("#dilecta_store_id option:selected").each(function () {

									window.location = $(this).attr("rel");

								});
						    
						  });
						  
					 });
			    </script>
			    
			    <!-- END MULTISTORE -->
				
				<!-- Tabs -->
				
				<div class="bg-tabs">
				
					<!-- General, Design, Footer TABS -->
					
					<div id="tabs" class="htabs main-tabs">
					
						<a href="#tab_general" id="general"><span>General</span></a>
						<a href="#tab_slider_1" id="tfooter"><span>Slider 1</span></a>
						<a href="#tab_slider_2" id="tfooter"><span>Slider 2</span></a>
						<a href="#tab_slider_3" id="tfooter"><span>Slider 3</span></a>
						<a href="#tab_slider_4" id="tfooter"><span>Slider 4</span></a>
						<a href="#tab_slider_5" id="tfooter"><span>Slider 5</span></a>
						<a href="#tab_slider_6" id="tfooter"><span>Slider 6</span></a>
					
					</div>
					
					<!-- End General, Design Footer Tabs -->
					
					<!-- General -->
					
					<div id="tab_general" class="tab-content">
					
						<!-- Status -->
						
						<?php if($slider_general_status == 1) { echo '<div class="status status-on" title="1" rel="slider_general_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="slider_general_status"></div>'; } ?>
						
						<input name="slider_general_status" value="<?php echo $slider_general_status; ?>" id="slider_general_status" type="hidden" />
						
						<!-- Float General -->
						
						<div id="general" style="width:auto">
						
						<!-- Title -->
						
						<h4>General settings</h4>
						
						<!-- Input -->
						
						<div class="input">
						
							<p>Height slider (px)</p>
							<input type="text" name="slider_height" value="<?php echo $slider_height; ?>" style="width:155px" />
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						<!-- Input -->
						
						<div class="input">
						
							<p>Slideshow speed</p>
							<select name="slider_speed">
							
			              <option value="4" <?php if($slider_speed =='4'){echo ' selected="selected"';} ?>>4000</option>
			              <option value="5" <?php if($slider_speed =='5'){echo ' selected="selected"';} ?>>5000</option>
			              <option value="6" <?php if($slider_speed =='6'){echo ' selected="selected"';} ?>>6000</option>
			              <option value="7" <?php if($slider_speed =='7'){echo ' selected="selected"';} ?>>7000</option>
			              <option value="8" <?php if($slider_speed =='8'){echo ' selected="selected"';} ?>>8000</option>
			              <option value="9" <?php if($slider_speed =='9' || $slider_speed < 1){echo ' selected="selected"';} ?>>9000</option>
			              <option value="10" <?php if($slider_speed =='10'){echo ' selected="selected"';} ?>>10000</option>
			              <option value="11" <?php if($slider_speed =='11'){echo ' selected="selected"';} ?>>11000</option>
			              <option value="12" <?php if($slider_speed =='12'){echo ' selected="selected"';} ?>>12000</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						
						<!-- Input -->
						
						<div class="input">
						
							<p>Layout Type</p>
							<select name="slider_layout_type">
								
			              <option value="0" <?php if($slider_layout_type =='0'){echo ' selected="selected"';} ?>>Full width</option>
			              <option value="1" <?php if($slider_layout_type =='1'){echo ' selected="selected"';} ?>>Fixed</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						
						</div>
						
						<!-- End Float General -->

					</div>
					
					<!-- End General -->
					
					<?php for ($i = 1; $i <= 6; $i++) { ?>
					<!-- Sliders -->
					
					<div id="tab_slider_<?php echo $i; ?>" class="tab-content3">
					
						<div class="footer_left">
						
							<!-- Contact, About us, Facebook TABS -->
							
							<div id="tabs_slider_<?php echo $i; ?>_language" class="htabs main-tabs">
								
								<?php foreach ($languages as $language): ?>
								<a href="#tab_slider_<?php echo $i; ?>_language_<?php echo $language['language_id']; ?>"><img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							
							</div>
							
							<!-- End Contact, About us, Facebook Tabs -->
						
						</div>
						
						<div class="footer_right">
							
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							
							<div id="tab_slider_<?php echo $i; ?>_language_<?php echo $language_id; ?>" class="tab-content4">
							
									<!-- Status -->
									
									<?php if(isset($slider[$i][$language_id]['status'])) { ?>
									<?php if($slider[$i][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="slider_'.$i.'_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="slider_'.$i.'_'.$language_id.'_status"></div>'; } ?>
									
									<input name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][status]" value="<?php echo $slider[$i][$language_id]['status']; ?>" id="slider_<?php echo $i; ?>_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="slider_'.$i.'_'.$language_id.'_status"></div>'; ?>
									<input name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][status]" value="0" id="slider_<?php echo $i; ?>_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } ?>
							
									<div class="slider" onclick="image_upload('slider_<?php echo $i; ?>_<?php echo $language_id; ?>_slider', 'preview_<?php echo $i; ?>_<?php echo $language_id; ?>');">
									
										<input type="hidden" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][slider]" value="<?php echo $slider[$i][$language_id]['slider']; ?>" id="slider_<?php echo $i; ?>_<?php echo $language_id; ?>_slider" />
										<img src="../image/<?php echo $slider[$i][$language_id]['slider']; ?>" alt="" id="preview_<?php echo $i; ?>_<?php echo $language_id; ?>" />
									
									</div>
									<!-- Input -->
									
									<div class="input">
									
										<p>Transition slider effect</p>
										<select name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][transition_effect]" style="float:right;margin-right:0px;width:250px">
											<?php if(isset($slider[$i][$language_id]['transition_effect'])) { ?>
						              <option value="boxslide"<?php if($slider[$i][$language_id]['transition_effect'] == 'boxslide') { echo ' selected="selected"'; } ?>>boxslide</option>
						              <option value="boxfade"<?php if($slider[$i][$language_id]['transition_effect'] == 'boxfade') { echo ' selected="selected"'; } ?>>boxfade</option>
						              <option value="slotzoom-horizontal"<?php if($slider[$i][$language_id]['transition_effect'] == 'slotzoom-horizontal') { echo ' selected="selected"'; } ?>>slotzoom-horizontal</option>
						              <option value="slotslide-horizontal"<?php if($slider[$i][$language_id]['transition_effect'] == 'slotslide-horizontal') { echo ' selected="selected"'; } ?>>slotslide-horizontal</option>
						              <option value="slotfade-horizontal"<?php if($slider[$i][$language_id]['transition_effect'] == 'slotfade-horizontal') { echo ' selected="selected"'; } ?>>slotfade-horizontal</option>
						              <option value="slotzoom-vertical"<?php if($slider[$i][$language_id]['transition_effect'] == 'slotzoom-vertical') { echo ' selected="selected"'; } ?>>slotzoom-vertical</option>
						              <option value="slotslide-vertical"<?php if($slider[$i][$language_id]['transition_effect'] == 'slotslide-vertical') { echo ' selected="selected"'; } ?>>slotslide-vertical</option>
						              <option value="slotfade-vertical"<?php if($slider[$i][$language_id]['transition_effect'] == 'slotfade-vertical') { echo ' selected="selected"'; } ?>>slotfade-vertical</option>
						              <option value="curtain-1"<?php if($slider[$i][$language_id]['transition_effect'] == 'curtain-1') { echo ' selected="selected"'; } ?>>curtain-1</option>
						              <option value="curtain-2"<?php if($slider[$i][$language_id]['transition_effect'] == 'curtain-2') { echo ' selected="selected"'; } ?>>curtain-2</option>
						              <option value="curtain-3"<?php if($slider[$i][$language_id]['transition_effect'] == 'curtain-3') { echo ' selected="selected"'; } ?>>curtain-3</option>
						              <option value="slideleft"<?php if($slider[$i][$language_id]['transition_effect'] == 'slideleft') { echo ' selected="selected"'; } ?>>slideleft</option>
						              <option value="slideright"<?php if($slider[$i][$language_id]['transition_effect'] == 'slideright') { echo ' selected="selected"'; } ?>>slideright</option>
						              <option value="slideup"<?php if($slider[$i][$language_id]['transition_effect'] == 'slideup') { echo ' selected="selected"'; } ?>>slideup</option>
						              <option value="slidedown"<?php if($slider[$i][$language_id]['transition_effect'] == 'slidedown') { echo ' selected="selected"'; } ?>>slidedown</option>
						              <option value="fade"<?php if($slider[$i][$language_id]['transition_effect'] == 'fade') { echo ' selected="selected"'; } ?>>fade</option>
						              <option value="random"<?php if($slider[$i][$language_id]['transition_effect'] == 'random') { echo ' selected="selected"'; } ?>>random</option>
						              <option value="slidehorizontal"<?php if($slider[$i][$language_id]['transition_effect'] == 'slidehorizontal') { echo ' selected="selected"'; } ?>>slidehorizontal</option>
						              <option value="slidevertical"<?php if($slider[$i][$language_id]['transition_effect'] == 'slidevertical') { echo ' selected="selected"'; } ?>>slidevertical</option>
						              <option value="papercut"<?php if($slider[$i][$language_id]['transition_effect'] == 'papercut') { echo ' selected="selected"'; } ?>>papercut</option>
						              <option value="flyin"<?php if($slider[$i][$language_id]['transition_effect'] == 'flyin') { echo ' selected="selected"'; } ?>>flyin</option>
						              <option value="turnoff"<?php if($slider[$i][$language_id]['transition_effect'] == 'turnoff') { echo ' selected="selected"'; } ?>>turnoff</option>
						              <option value="cube"<?php if($slider[$i][$language_id]['transition_effect'] == 'cube') { echo ' selected="selected"'; } ?>>cube</option>
						              <option value="3dcurtain-vertical"<?php if($slider[$i][$language_id]['transition_effect'] == '3dcurtain-vertical') { echo ' selected="selected"'; } ?>>3dcurtain-vertical</option>
						              <option value="3dcurtain-horizontal"<?php if($slider[$i][$language_id]['transition_effect'] == '3dcurtain-horizontal') { echo ' selected="selected"'; } ?>>3dcurtain-horizontal</option>
											<?php } else { ?>
						              <option value="boxslide">boxslide</option>
						              <option value="boxfade">boxfade</option>
						              <option value="slotzoom-horizontal">slotzoom-horizontal</option>
						              <option value="slotslide-horizontal">slotslide-horizontal</option>
						              <option value="slotfade-horizontal">slotfade-horizontal</option>
						              <option value="slotzoom-vertical">slotzoom-vertical</option>
						              <option value="slotslide-vertical">slotslide-vertical</option>
						              <option value="slotfade-vertical">slotfade-vertical</option>
						              <option value="curtain-1">curtain-1</option>
						              <option value="curtain-2">curtain-2</option>
						              <option value="curtain-3">curtain-3</option>
						              <option value="slideleft">slideleft</option>
						              <option value="slideright">slideright</option>
						              <option value="slideup">slideup</option>
						              <option value="slidedown">slidedown</option>
						              <option value="fade">fade</option>
						              <option value="random">random</option>
						              <option value="slidehorizontal">slidehorizontal</option>
						              <option value="slidevertical">slidevertical</option>
						              <option value="papercut">papercut</option>
						              <option value="flyin">flyin</option>
						              <option value="turnoff">turnoff</option>
						              <option value="cube">cube</option>
						              <option value="3dcurtain-vertical">3dcurtain-vertical</option>
						              <option value="3dcurtain-horizontal">3dcurtain-horizontal</option>
						              <?php } ?>
										
										</select>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Link</p>
										<?php if(isset($slider[$i][$language_id]['link'])) { ?>
										<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][link]" value="<?php echo $slider[$i][$language_id]['link']; ?>" style="float:right;margin-right:0px;width:232px" />
										<?php } else { ?>
										<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][link]" value="" style="float:right;margin-right:0px;width:232px" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									
									<!-- Add elements -->
									
									<div class="clear" style="height:20px;"></div>
									
									<h4>Add elements to the slider</h4>
									
									<div id="tabs_slider_elements_<?php echo $i; ?>_<?php echo $language_id; ?>" class="tabs_add_element">
									
										<a href="#tab_add_element_<?php echo $i; ?><?php echo $language_id ?>_1">1</a>
										<a href="#tab_add_element_<?php echo $i; ?><?php echo $language_id ?>_2">2</a>
										<a href="#tab_add_element_<?php echo $i; ?><?php echo $language_id ?>_3">3</a>
										<a href="#tab_add_element_<?php echo $i; ?><?php echo $language_id ?>_4">4</a>
										<a href="#tab_add_element_<?php echo $i; ?><?php echo $language_id ?>_5">5</a>
										<a href="#tab_add_element_<?php echo $i; ?><?php echo $language_id ?>_6">6</a>
									
									</div>
									
									<?php for ($m = 1; $m <= 6; $m++) { ?>
									
									<div id="tab_add_element_<?php echo $i; ?><?php echo $language_id ?>_<?php echo $m; ?>">
									
										<div class="clear" style="height:20px;"></div>
									
		  								<!-- Status -->
										
										<?php if(isset($slider[$i][$language_id][$m]['status'])) { ?>
										<?php if($slider[$i][$language_id][$m]['status'] == 1) { echo '<div class="status status-on" title="1" rel="slider_'.$i.'_'.$language_id.'_'.$m.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="slider_'.$i.'_'.$language_id.'_'.$m.'_status"></div>'; } ?>
										
										<input name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][status]" value="<?php echo $slider[$i][$language_id][$m]['status']; ?>" id="slider_<?php echo $i; ?>_<?php echo $language_id; ?>_<?php echo $m; ?>_status" type="hidden" />
										<?php } else { ?>
										<?php echo '<div class="status status-off" title="0" rel="slider_'.$i.'_'.$language_id.'_'.$m.'_status"></div>'; ?>
										<input name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][status]" value="0" id="slider_<?php echo $i; ?>_<?php echo $language_id; ?>_<?php echo $m; ?>_status" type="hidden" />
										<?php } ?>
									
										<!-- Input -->
										
										<div class="input">
										
											<p>Style</p>
											<select name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][style]" style="float:right;margin-right:0px;width:250px">
												<?php if(isset($slider[$i][$language_id][$m]['style'])) { ?>
							              <option value="none"<?php if($slider[$i][$language_id][$m]['style'] == 'none') { echo ' selected="selected"'; } ?>>none</option>
							              <option value="small_header"<?php if($slider[$i][$language_id][$m]['style'] == 'small_header') { echo ' selected="selected"'; } ?>>small header</option>
							              <option value="small_header_align_right"<?php if($slider[$i][$language_id][$m]['style'] == 'small_header_align_right') { echo ' selected="selected"'; } ?>>small header align right</option>
							              <option value="large_description"<?php if($slider[$i][$language_id][$m]['style'] == 'large_description') { echo ' selected="selected"'; } ?>>large description</option>
							              <option value="medium_description"<?php if($slider[$i][$language_id][$m]['style'] == 'medium_description') { echo ' selected="selected"'; } ?>>medium description</option>
							              <option value="medium_description_align_right"<?php if($slider[$i][$language_id][$m]['style'] == 'medium_description_align_right') { echo ' selected="selected"'; } ?>>medium description align right</option>
												<?php } else { ?>
							              <option value="none">none</option>
							              <option value="small_header">small header</option>
							              <option value="small_header_align_right">small header align right</option>
							              <option value="large_description">large description</option>
							              <option value="medium_description">medium description</option>
							              <option value="medium_description_align_right">medium description align right</option>
							              <?php } ?>
											
											</select>
										
											<div class="clear"></div>
										
										</div>
										
										<!-- End Input -->
										<!-- Input -->
										
										<div class="input">
										
											<p>Easing</p>
											<select name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][easing]" style="float:right;margin-right:0px;width:250px">
												<?php if(isset($slider[$i][$language_id][$m]['easing'])) { ?>
							              <option value="easeOutBack"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutBack') { echo ' selected="selected"'; } ?>>easeOutBack</option>
							              <option value="easeInQuad"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInQuad') { echo ' selected="selected"'; } ?>>easeInQuad</option>
							              <option value="easeOutQuad"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutQuad') { echo ' selected="selected"'; } ?>>easeOutQuad</option>
							              <option value="easeInOutQuad"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutQuad') { echo ' selected="selected"'; } ?>>easeInOutQuad</option>
							              <option value="easeInCubic"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInCubic') { echo ' selected="selected"'; } ?>>easeInCubic</option>
							              <option value="easeOutCubic"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutCubic') { echo ' selected="selected"'; } ?>>easeOutCubic</option>
							              <option value="easeInOutCubic"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutCubic') { echo ' selected="selected"'; } ?>>easeInOutCubic</option>
							              <option value="easeInQuart"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInQuart') { echo ' selected="selected"'; } ?>>easeInQuart</option>
							              <option value="easeOutQuart"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutQuart') { echo ' selected="selected"'; } ?>>easeOutQuart</option>
							              <option value="easeInOutQuart"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutQuart') { echo ' selected="selected"'; } ?>>easeInOutQuart</option>
							              <option value="easeInQuint"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInQuint') { echo ' selected="selected"'; } ?>>easeInQuint</option>
							              <option value="easeOutQuint"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutQuint') { echo ' selected="selected"'; } ?>>easeOutQuint</option>
							              <option value="easeInOutQuint"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutQuint') { echo ' selected="selected"'; } ?>>easeInOutQuint</option>
							              <option value="easeInSine"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInSine') { echo ' selected="selected"'; } ?>>easeInSine</option>
							              <option value="easeOutSine"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutSine') { echo ' selected="selected"'; } ?>>easeOutSine</option>
							              <option value="easeInOutSine"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutSine') { echo ' selected="selected"'; } ?>>easeInOutSine</option>
							              <option value="easeInExpo"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInExpo') { echo ' selected="selected"'; } ?>>easeInExpo</option>
							              <option value="easeOutExpo"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutExpo') { echo ' selected="selected"'; } ?>>easeOutExpo</option>
							              <option value="easeInOutExpo"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutExpo') { echo ' selected="selected"'; } ?>>easeInOutExpo</option>
							              <option value="easeInCirc"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInCirc') { echo ' selected="selected"'; } ?>>easeInCirc</option>
							              <option value="easeOutCirc"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutCirc') { echo ' selected="selected"'; } ?>>easeOutCirc</option>
							              <option value="easeInOutCirc"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutCirc') { echo ' selected="selected"'; } ?>>easeInOutCirc</option>
							              <option value="easeInElastic"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInElastic') { echo ' selected="selected"'; } ?>>easeInElastic</option>
							              <option value="easeOutElastic"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutElastic') { echo ' selected="selected"'; } ?>>easeOutElastic</option>
							              <option value="easeInOutElastic"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutElastic') { echo ' selected="selected"'; } ?>>easeInOutElastic</option>
							              <option value="easeInBack"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInBack') { echo ' selected="selected"'; } ?>>easeInBack</option>
							              <option value="easeOutBack"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutBack') { echo ' selected="selected"'; } ?>>easeOutBack</option>
							              <option value="easeInOutBack"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutBack') { echo ' selected="selected"'; } ?>>easeInOutBack</option>
							              <option value="easeInBounce"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInBounce') { echo ' selected="selected"'; } ?>>easeInBounce</option>
							              <option value="easeOutBounce"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeOutBounce') { echo ' selected="selected"'; } ?>>easeOutBounce</option>
							              <option value="easeInOutBounce"<?php if($slider[$i][$language_id][$m]['easing'] == 'easeInOutBounce') { echo ' selected="selected"'; } ?>>easeInOutBounce</option>
												<?php } else { ?>
							              <option value="easeOutBack">easeOutBack</option>
							              <option value="easeInQuad">easeInQuad</option>
							              <option value="easeOutQuad">easeOutQuad</option>
							              <option value="easeInOutQuad">easeInOutQuad</option>
							              <option value="easeInCubic">easeInCubic</option>
							              <option value="easeOutCubic">easeOutCubic</option>
							              <option value="easeInOutCubic">easeInOutCubic</option>
							              <option value="easeInQuart">easeInQuart</option>
							              <option value="easeOutQuart">easeOutQuart</option>
							              <option value="easeInOutQuart">easeInOutQuart</option>
							              <option value="easeInQuint">easeInQuint</option>
							              <option value="easeOutQuint">easeOutQuint</option>
							              <option value="easeInOutQuint">easeInOutQuint</option>
							              <option value="easeInSine">easeInSine</option>
							              <option value="easeOutSine">easeOutSine</option>
							              <option value="easeInOutSine">easeInOutSine</option>
							              <option value="easeInExpo">easeInExpo</option>
							              <option value="easeOutExpo">easeOutExpo</option>
							              <option value="easeInOutExpo">easeInOutExpo</option>
							              <option value="easeInCirc">easeInCirc</option>
							              <option value="easeOutCirc">easeOutCirc</option>
							              <option value="easeInOutCirc">easeInOutCirc</option>
							              <option value="easeInElastic">easeInElastic</option>
							              <option value="easeOutElastic">easeOutElastic</option>
							              <option value="easeInOutElastic">easeInOutElastic</option>
							              <option value="easeInBack">easeInBack</option>
							              <option value="easeOutBack">easeOutBack</option>
							              <option value="easeInOutBack">easeInOutBack</option>
							              <option value="easeInBounce">easeInBounce</option>
							              <option value="easeOutBounce">easeOutBounce</option>
							              <option value="easeInOutBounce">easeInOutBounce</option>
							              <?php } ?>
											
											</select>
										
											<div class="clear"></div>
										
										</div>
										
										<!-- End Input -->
										<!-- Input -->
										
										<div class="input">
										
											<p>Endeasing</p>
											<select name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][endeasing]" style="float:right;margin-right:0px;width:250px">
												<?php if(isset($slider[$i][$language_id][$m]['easing'])) { ?>
							              <option value="easeOutBack"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutBack') { echo ' selected="selected"'; } ?>>easeOutBack</option>
							              <option value="easeInQuad"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInQuad') { echo ' selected="selected"'; } ?>>easeInQuad</option>
							              <option value="easeOutQuad"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutQuad') { echo ' selected="selected"'; } ?>>easeOutQuad</option>
							              <option value="easeInOutQuad"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutQuad') { echo ' selected="selected"'; } ?>>easeInOutQuad</option>
							              <option value="easeInCubic"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInCubic') { echo ' selected="selected"'; } ?>>easeInCubic</option>
							              <option value="easeOutCubic"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutCubic') { echo ' selected="selected"'; } ?>>easeOutCubic</option>
							              <option value="easeInOutCubic"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutCubic') { echo ' selected="selected"'; } ?>>easeInOutCubic</option>
							              <option value="easeInQuart"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInQuart') { echo ' selected="selected"'; } ?>>easeInQuart</option>
							              <option value="easeOutQuart"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutQuart') { echo ' selected="selected"'; } ?>>easeOutQuart</option>
							              <option value="easeInOutQuart"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutQuart') { echo ' selected="selected"'; } ?>>easeInOutQuart</option>
							              <option value="easeInQuint"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInQuint') { echo ' selected="selected"'; } ?>>easeInQuint</option>
							              <option value="easeOutQuint"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutQuint') { echo ' selected="selected"'; } ?>>easeOutQuint</option>
							              <option value="easeInOutQuint"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutQuint') { echo ' selected="selected"'; } ?>>easeInOutQuint</option>
							              <option value="easeInSine"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInSine') { echo ' selected="selected"'; } ?>>easeInSine</option>
							              <option value="easeOutSine"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutSine') { echo ' selected="selected"'; } ?>>easeOutSine</option>
							              <option value="easeInOutSine"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutSine') { echo ' selected="selected"'; } ?>>easeInOutSine</option>
							              <option value="easeInExpo"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInExpo') { echo ' selected="selected"'; } ?>>easeInExpo</option>
							              <option value="easeOutExpo"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutExpo') { echo ' selected="selected"'; } ?>>easeOutExpo</option>
							              <option value="easeInOutExpo"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutExpo') { echo ' selected="selected"'; } ?>>easeInOutExpo</option>
							              <option value="easeInCirc"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInCirc') { echo ' selected="selected"'; } ?>>easeInCirc</option>
							              <option value="easeOutCirc"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutCirc') { echo ' selected="selected"'; } ?>>easeOutCirc</option>
							              <option value="easeInOutCirc"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutCirc') { echo ' selected="selected"'; } ?>>easeInOutCirc</option>
							              <option value="easeInElastic"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInElastic') { echo ' selected="selected"'; } ?>>easeInElastic</option>
							              <option value="easeOutElastic"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutElastic') { echo ' selected="selected"'; } ?>>easeOutElastic</option>
							              <option value="easeInOutElastic"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutElastic') { echo ' selected="selected"'; } ?>>easeInOutElastic</option>
							              <option value="easeInBack"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInBack') { echo ' selected="selected"'; } ?>>easeInBack</option>
							              <option value="easeOutBack"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutBack') { echo ' selected="selected"'; } ?>>easeOutBack</option>
							              <option value="easeInOutBack"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutBack') { echo ' selected="selected"'; } ?>>easeInOutBack</option>
							              <option value="easeInBounce"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInBounce') { echo ' selected="selected"'; } ?>>easeInBounce</option>
							              <option value="easeOutBounce"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeOutBounce') { echo ' selected="selected"'; } ?>>easeOutBounce</option>
							              <option value="easeInOutBounce"<?php if($slider[$i][$language_id][$m]['endeasing'] == 'easeInOutBounce') { echo ' selected="selected"'; } ?>>easeInOutBounce</option>
												<?php } else { ?>
							              <option value="easeOutBack">easeOutBack</option>
							              <option value="easeInQuad">easeInQuad</option>
							              <option value="easeOutQuad">easeOutQuad</option>
							              <option value="easeInOutQuad">easeInOutQuad</option>
							              <option value="easeInCubic">easeInCubic</option>
							              <option value="easeOutCubic">easeOutCubic</option>
							              <option value="easeInOutCubic">easeInOutCubic</option>
							              <option value="easeInQuart">easeInQuart</option>
							              <option value="easeOutQuart">easeOutQuart</option>
							              <option value="easeInOutQuart">easeInOutQuart</option>
							              <option value="easeInQuint">easeInQuint</option>
							              <option value="easeOutQuint">easeOutQuint</option>
							              <option value="easeInOutQuint">easeInOutQuint</option>
							              <option value="easeInSine">easeInSine</option>
							              <option value="easeOutSine">easeOutSine</option>
							              <option value="easeInOutSine">easeInOutSine</option>
							              <option value="easeInExpo">easeInExpo</option>
							              <option value="easeOutExpo">easeOutExpo</option>
							              <option value="easeInOutExpo">easeInOutExpo</option>
							              <option value="easeInCirc">easeInCirc</option>
							              <option value="easeOutCirc">easeOutCirc</option>
							              <option value="easeInOutCirc">easeInOutCirc</option>
							              <option value="easeInElastic">easeInElastic</option>
							              <option value="easeOutElastic">easeOutElastic</option>
							              <option value="easeInOutElastic">easeInOutElastic</option>
							              <option value="easeInBack">easeInBack</option>
							              <option value="easeOutBack">easeOutBack</option>
							              <option value="easeInOutBack">easeInOutBack</option>
							              <option value="easeInBounce">easeInBounce</option>
							              <option value="easeOutBounce">easeOutBounce</option>
							              <option value="easeInOutBounce">easeInOutBounce</option>
							              <?php } ?>
											
											</select>
										
											<div class="clear"></div>
										
										</div>
										
										<!-- End Input -->
										<!-- Input -->
										
										<div class="input">										
										
											<p>Text / html</p>
											<?php if(isset($slider[$i][$language_id][$m]['text'])) { ?>
											<textarea rows="0" cols="0" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][text]"><?php echo $slider[$i][$language_id][$m]['text']; ?></textarea>
											<?php } else { ?>
											<textarea rows="0" cols="0" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][text]"></textarea>
											<?php } ?>
										
											<div class="clear"></div>
										
										</div>
										
										<!-- End Input -->
										<!-- Input -->
										
										<div class="input">
										
											<p>Speed</p>
											<?php if(isset($slider[$i][$language_id][$m]['speed'])) { ?>
											<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][speed]" value="<?php echo $slider[$i][$language_id][$m]['speed']; ?>" style="float:right;margin-right:0px;width:232px" />
											<?php } else { ?>
											<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][speed]" value="300" style="float:right;margin-right:0px;width:232px" />
											<?php } ?>
										
											<div class="clear"></div>
										
										</div>
										
										<!-- End Input -->
										<!-- Input -->
										
										<div class="input">
										
											<p>Start</p>
											<?php if(isset($slider[$i][$language_id][$m]['start'])) { ?>
											<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][start]" value="<?php echo $slider[$i][$language_id][$m]['start']; ?>" style="float:right;margin-right:0px;width:232px" />
											<?php } else { ?>
											<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][start]" value="300" style="float:right;margin-right:0px;width:232px" />
											<?php } ?>
										
											<div class="clear"></div>
										
										</div>
										
										<!-- End Input -->
										<!-- Input -->
										
										<div class="input">
										
											<p>X</p>
											<?php if(isset($slider[$i][$language_id][$m]['x'])) { ?>
											<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][x]" value="<?php echo $slider[$i][$language_id][$m]['x']; ?>" style="float:right;margin-right:0px;width:232px" />
											<?php } else { ?>
											<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][x]" value="100" style="float:right;margin-right:0px;width:232px" />
											<?php } ?>
										
											<div class="clear"></div>
										
										</div>
										
										<!-- End Input -->
										<!-- Input -->
										
										<div class="input">
										
											<p>Y</p>
											<?php if(isset($slider[$i][$language_id][$m]['y'])) { ?>
											<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][y]" value="<?php echo $slider[$i][$language_id][$m]['y']; ?>" style="float:right;margin-right:0px;width:232px" />
											<?php } else { ?>
											<input type="text" name="slider[<?php echo $i; ?>][<?php echo $language_id; ?>][<?php echo $m; ?>][y]" value="100" style="float:right;margin-right:0px;width:232px" />
											<?php } ?>
										
											<div class="clear"></div>
										
										</div>
										
										<!-- End Input -->
									
									</div>
									
									<?php } ?>
									
									<!-- End Add elements -->
									
									<script type="text/javascript"><!--
									$('#tabs_slider_elements_<?php echo $i; ?>_<?php echo $language_id; ?> a').tabs();
									//--></script> 
														
							</div>
							
							<?php } ?>
						
						</div>
						
						<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
												
						<script type="text/javascript"><!--
						$('#tabs_slider_<?php echo $i; ?>_language a').tabs();
						//--></script> 
					
					</div>
					
					<!-- End Sliders -->
					<?php } ?>
					
					<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
				
				</div>
				
				<!-- End Tabs -->
				
				<!-- Buttons -->
				
				<div class="buttons"><a onclick="$('#form').submit();" class="button-save"><span><?php echo $button_save; ?></span></a></div>
				
				<!-- End Buttons -->
			
			</form>
		
		</div>
	
	</div>
	
	<!-- End Content -->

</div>

<!-- End Theme Options -->

</div>

<!-- END #CONTENT -->

<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 

<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 

<script type="text/javascript">
jQuery(document).ready(function($) {

	$(".status").click(function () {
		
		var styl = $(this).attr("rel");
		var co = $(this).attr("title");
		
		if(co == 1) {
		
			$(this).removeClass('status-on');
			$(this).addClass('status-off');
			$(this).attr("title", "0");

			$("#"+styl+"").val(0);
		
		}
		
		if(co == 0) {
		
			$(this).addClass('status-on');
			$(this).removeClass('status-off');
			$(this).attr("title", "1");

			$("#"+styl+"").val(1);
		
		}
		
	});


});	
</script>

<?php echo $footer; ?>
