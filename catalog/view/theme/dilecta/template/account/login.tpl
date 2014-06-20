<?php echo $header; ?>
<?php $grid = 12; if($column_left != '') { $grid = $grid-3; } if($column_right != '') { $grid = $grid-3; } ?>

	<!-- Page Title -->
	
	<section id="page-title">
	
		<div class="set-size-grid">
			
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php if($breadcrumb['separator'] != '') { echo '/'; } ?> <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
			<h2><?php echo $heading_title; ?></h2>
		
		</div>
	
	</section>
	
	<!-- End Page Title -->
	
	<!-- Content -->
	
	<section id="content" class="set-size clearfix">

		<?php if ($success) { ?>
		<div class="success"><?php echo $success; ?></div>
		<?php } ?>
		<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>
		
		<?php echo $content_top; ?>
		
		<?php if($column_left != '') { echo '<div class="grid-3 float-left">'.$column_left.'</div>'; } ?>
		
		<div class="grid-<?php echo $grid; ?> float-left" id="content_content" style="padding-top:30px !important">

		  <div class="login-content">
		    <div class="left">
		      <h2><?php echo $text_new_customer; ?></h2>
		      <div class="content">
		        <p><b><?php echo $text_register; ?></b></p>
		        <p><?php echo $text_register_account; ?></p>
		        <div style="height:20px;width:100%"></div>
		        <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
		    </div>
		    <div class="right">
		      <h2><?php echo $text_returning_customer; ?></h2>
		      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		        <div class="content">
		          <p style="padding-bottom:10px"><?php echo $text_i_am_returning_customer; ?></p>
		          <b><?php echo $entry_email; ?></b><br />
		          <input type="text" name="email" value="<?php echo $email; ?>" />
		          <br />
		          <br />
		          <b><?php echo $entry_password; ?></b><br />
		          <input type="password" name="password" value="<?php echo $password; ?>" />
		          <br />
		          <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
		          <br />
		          <input type="submit" value="<?php echo $button_login; ?>" class="button" />
		          <?php if ($redirect) { ?>
		          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
		          <?php } ?>
		        </div>
		      </form>
		    </div>
		  </div>
				  
			<script type="text/javascript"><!--
			$('#login input').keydown(function(e) {
				if (e.keyCode == 13) {
					$('#login').submit();
				}
			});
			//--></script> 
			
				
		</div>
		
		<!-- End Column center -->
	  
		<?php if($column_right != '') { echo '<div class="grid-3 float-left">'.$column_right.'</div>'; } ?>

	  <div class="clears"></div>
	  
	  <?php echo $content_bottom; ?>
  
  </section>
  
  <!-- End Content -->

<?php echo $footer; ?>
