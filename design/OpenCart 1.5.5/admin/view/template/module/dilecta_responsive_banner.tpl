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

	<h3>Dilecta responsive banners</h3>
	
	<!-- Content -->
	
	<div class="content">
	
		<div>
		
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">	
			
				<!-- MULTISTORE -->

			    <div id="tb_store_select">
			        <label class="inline">Store</label>
			        <select name="dilecta_store_id" id="dilecta_store_id">
			          <?php foreach ($stores as $store): ?>
			          <option value="<?php echo $store['store_id']; ?>" rel="<?php echo HTTPS_SERVER . 'index.php?route=module/dilecta_responsive_banner&store_id=' . $store['store_id'] . '&token=' . $this->session->data['token']; ?>"<?php if($store_id == $store['store_id']) echo ' selected="selected"'; ?>><?php echo $store['name']; ?></option>
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
						<a href="#tab_banner_1" id="tfooter"><span>Banner 1</span></a>
						<a href="#tab_banner_2" id="tfooter"><span>Banner 2</span></a>
						<a href="#tab_banner_3" id="tfooter"><span>Banner 3</span></a>
						<a href="#tab_banner_4" id="tfooter"><span>Banner 4</span></a>
						<a href="#tab_banner_5" id="tfooter"><span>Banner 5</span></a>
						<a href="#tab_banner_6" id="tfooter"><span>Banner 6</span></a>
					
					</div>
					
					<!-- End General, Design Footer Tabs -->
					
					<!-- General -->
					
					<div id="tab_general" class="tab-content">
					
						<!-- Status -->
						
						<?php if($responsive_banner_general_status == 1) { echo '<div class="status status-on" title="1" rel="responsive_banner_general_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="responsive_banner_general_status"></div>'; } ?>
						
						<input name="responsive_banner_general_status" value="<?php echo $responsive_banner_general_status; ?>" id="responsive_banner_general_status" type="hidden" />
						
						<!-- Float General -->
						
						<div id="general" style="width:auto">
						
						<!-- Title -->
						
						<h4>General settings</h4>

						<!-- Input -->
						
						<div class="input">
						
							<p>Position</p>
							<select name="responsive_banner_position" style="width:250px">
							
			              <option value="0" <?php if($responsive_banner_position =='0'){echo ' selected="selected"';} ?>>Content top of homepage</option>
			              <option value="1" <?php if($responsive_banner_position =='1'){echo ' selected="selected"';} ?>>Content bottom of homepage</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
							<div class="functions">
							<!-- Input -->
							
							<div class="input">
								
								<p>Background</p>
								<?php if($responsive_banner_background == 0 && $responsive_banner_background != '') { echo '<div class="status status-off" title="0" rel="responsive_banner_background"></div>'; } else { echo '<div class="status status-on" title="1" rel="responsive_banner_background"></div>'; } ?>
								
								<input name="responsive_banner_background" value="<?php echo $responsive_banner_background; ?>" id="responsive_banner_background" type="hidden" />
								
								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
							</div>
						
						</div>
						
						<!-- End Float General -->

					</div>
					
					<!-- End General -->
					
					<?php for ($i = 1; $i <= 6; $i++) { ?>
					<!-- Banners -->
					
					<div id="tab_banner_<?php echo $i; ?>" class="tab-content3">
					
						<div class="footer_left">
						
							<!-- Contact, About us, Facebook TABS -->
							
							<div id="tabs_banner_<?php echo $i; ?>_language" class="htabs main-tabs">
								
								<?php foreach ($languages as $language): ?>
								<a href="#tab_banner_<?php echo $i; ?>_language_<?php echo $language['language_id']; ?>"><img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							
							</div>
							
							<!-- End Contact, About us, Facebook Tabs -->
						
						</div>
						
						<div class="footer_right">
							
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							
							<div id="tab_banner_<?php echo $i; ?>_language_<?php echo $language_id; ?>" class="tab-content4">
							
									<!-- Status -->
									
									<?php if(isset($responsive_banner[$i][$language_id]['status'])) { ?>
									<?php if($responsive_banner[$i][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="responsive_banner_'.$i.'_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="responsive_banner_'.$i.'_'.$language_id.'_status"></div>'; } ?>
									
									<input name="responsive_banner[<?php echo $i; ?>][<?php echo $language_id; ?>][status]" value="<?php echo $responsive_banner[$i][$language_id]['status']; ?>" id="responsive_banner_<?php echo $i; ?>_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="responsive_banner_'.$i.'_'.$language_id.'_status"></div>'; ?>
									<input name="responsive_banner[<?php echo $i; ?>][<?php echo $language_id; ?>][status]" value="0" id="responsive_banner_<?php echo $i; ?>_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } ?>
							
									<div class="slider" onclick="image_upload('responsive_banner_<?php echo $i; ?>_<?php echo $language_id; ?>_responsive_banner', 'preview_<?php echo $i; ?>_<?php echo $language_id; ?>');">
									
										<input type="hidden" name="responsive_banner[<?php echo $i; ?>][<?php echo $language_id; ?>][responsive_banner]" value="<?php echo $responsive_banner[$i][$language_id]['responsive_banner']; ?>" id="responsive_banner_<?php echo $i; ?>_<?php echo $language_id; ?>_responsive_banner" />
										<img src="../image/<?php echo $responsive_banner[$i][$language_id]['responsive_banner']; ?>" alt="" id="preview_<?php echo $i; ?>_<?php echo $language_id; ?>" />
									
									</div>
									

									<!-- Input -->
									
									<div class="input">
									
										<p>Width</p>
										<select name="responsive_banner[<?php echo $i; ?>][<?php echo $language_id; ?>][width]" style="float:right;margin-right:0px;width:250px">
											<?php if(isset($responsive_banner[$i][$language_id]['width'])) { ?>
												<?php for ($si = 1; $si <= 12; $si++) { ?>
							              <option value="<?php echo $si; ?>"<?php if($responsive_banner[$i][$language_id]['width'] == $si) { echo ' selected="selected"'; } ?>>Grid <?php echo $si; ?></option>
												<?php } ?>
						              <?php } else { ?>
												<?php for ($si = 1; $si <= 12; $si++) { ?>
							              <option value="<?php echo $si; ?>">Grid <?php echo $si; ?></option>
												<?php } ?>
						              <?php } ?>
										
										</select>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Link</p>
										<?php if(isset($responsive_banner[$i][$language_id]['link'])) { ?>
										<input type="text" name="responsive_banner[<?php echo $i; ?>][<?php echo $language_id; ?>][link]" value="<?php echo $responsive_banner[$i][$language_id]['link']; ?>" style="float:right;margin-right:0px;width:232px" />
										<?php } else { ?>
										<input type="text" name="responsive_banner[<?php echo $i; ?>][<?php echo $language_id; ?>][link]" value="" style="float:right;margin-right:0px;width:232px" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
														
							</div>
							
							<?php } ?>
						
						</div>
						
						<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
												
						<script type="text/javascript"><!--
						$('#tabs_banner_<?php echo $i; ?>_language a').tabs();
						//--></script> 
					
					</div>
					
					<!-- End Banners -->
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
