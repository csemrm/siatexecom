<?php if (count($languages) > 1) { ?>
		<!-- Language -->
		
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language_form">
		
			<div class="switcher">
				
				<?php foreach ($languages as $language) { ?>
				<?php if ($language['code'] == $language_code) { ?>
				<p><a href="#"><?php echo $language['name']; ?></a></p>
				<?php } ?>
				<?php } ?>
				<div class="option">
				<div class="option-icon"></div>
					<ul>
					
						<?php foreach ($languages as $language) { ?>
						<li><a href="javascript:;" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();"><?php echo $language['name']; ?></a></li>
						<?php } ?>
					
					</ul>
				</div>
				
			</div>
			
	    <input type="hidden" name="language_code" value="" />
	    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
			
		</form><!-- End currency form -->
		
		<!-- End language -->
<?php } ?>