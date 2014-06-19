<?php echo $header; ?>
<?php $grid = 12; if($column_left != '') { $grid = $grid-3; } if($column_right != '') { $grid = $grid-3; } $grid_left = 3; $grid_right = 9; if($this->config->get('column_position') == '1' && $this->config->get('general_status') == '1') { $grid_left = 9; $grid_right = 3; }  ?>

	<section id="content" class="set-size clearfix">

	
	<?php 
		
	if(isset($language_id)) { 
						
		if($this->config->get('responsive_banner_general_status') == '1' && $this->config->get('responsive_banner_position') == '0') { ?>
		
		<!-- Banners -->
		
		<section id="banners">
			
			<?php if($this->config->get('responsive_banner_background') != '0') { ?><div class="bg-banners"></div><?php } ?>
			
			<div class="banners clearfix">
			
	<?php 
	
					for ($i = 1; $i <= 6; $i++) { 
										
						$banner = $this->config->get('responsive_banner'); 
						
						if(isset($banner[$i][$language_id]['status'])) {
							
							if($banner[$i][$language_id]['status'] == '1') {
								
								$width = 1; $link = 'javascript: void()'; $image = false;
								
								if(isset($banner[$i][$language_id]['responsive_banner'])) {
								
									if($banner[$i][$language_id]['responsive_banner'] != '') {
									
										$image = $banner[$i][$language_id]['responsive_banner'];
									
									}
								
								}
								
								if(isset($banner[$i][$language_id]['width'])) {
								
									if($banner[$i][$language_id]['width'] != '') {
									
										$width = html_entity_decode($banner[$i][$language_id]['width']);
									
									}
								
								}
								
								if(isset($banner[$i][$language_id]['link'])) {
								
									if($banner[$i][$language_id]['link'] != '') {
									
										$link = $banner[$i][$language_id]['link'];
									
									}
								
								}
								
								echo '<div class="grid-'.$width.' float-left"><a href="'.$link.'"><img src="image/'.$image.'" alt="banner" /></a></div>';
								
							}
							
						}
						
					}
						
	?>
			
			</div>
			
		</section>
		
		<!-- End Banners -->
				
	<?php 
				
		}
		
	} 
				
	?>
				
	
		<?php echo $content_top; ?>
		<?php if($column_left != '' && $column_right != '') { echo '<div class="grid-'.$grid_left.' float-left">'.$column_left.'</div>'; } elseif($column_left != '') { echo $column_left; } ?>
		<?php if($column_left != '' && $column_right != '') { echo '<div class="grid-'.$grid_right.' float-left">'.$column_right.'</div>'; } elseif($column_right != '') { echo $column_right; } ?>
		<p class="clears"></p>
		<?php echo $content_bottom; ?>
		
		<p class="clears"></p>
		
	
	<?php 
		
	if(isset($language_id)) { 
						
		if($this->config->get('responsive_banner_general_status') == '1' && $this->config->get('responsive_banner_position') == '1') { ?>
		
		<!-- Banners -->
		
		<section id="banners">
			
			<?php if($this->config->get('responsive_banner_background') != '0') { ?><div class="bg-banners"></div><?php } ?>
			
			<div class="banners clearfix">
			
	<?php 
	
					for ($i = 1; $i <= 6; $i++) { 
										
						$banner = $this->config->get('responsive_banner'); 
						
						if(isset($banner[$i][$language_id]['status'])) {
							
							if($banner[$i][$language_id]['status'] == '1') {
								
								$width = 1; $link = 'javascript: void()'; $image = false;
								
								if(isset($banner[$i][$language_id]['responsive_banner'])) {
								
									if($banner[$i][$language_id]['responsive_banner'] != '') {
									
										$image = $banner[$i][$language_id]['responsive_banner'];
									
									}
								
								}
								
								if(isset($banner[$i][$language_id]['width'])) {
								
									if($banner[$i][$language_id]['width'] != '') {
									
										$width = html_entity_decode($banner[$i][$language_id]['width']);
									
									}
								
								}
								
								if(isset($banner[$i][$language_id]['link'])) {
								
									if($banner[$i][$language_id]['link'] != '') {
									
										$link = $banner[$i][$language_id]['link'];
									
									}
								
								}
								
								echo '<div class="grid-'.$width.' float-left"><a href="'.$link.'"><img src="image/'.$image.'" alt="banner" /></a></div>';
								
							}
							
						}
						
					}
						
	?>
			
			</div>
			
		</section>
		
		<!-- End Banners -->
				
	<?php 
				
		}
		
	} 
				
	?>
		
		
	</section>

<?php echo $footer; ?>
