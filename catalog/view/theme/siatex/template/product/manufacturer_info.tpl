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

		<?php echo $content_top; ?>
		
		<?php if($column_left != '') { echo '<div class="grid-3 float-left">'.$column_left.'</div>'; } ?>
		
		<div class="grid-<?php echo $grid; ?> float-left" style="padding-top:29px !important">


  <?php if ($products) { ?>
  <div class="product-filter">
	 <div class="display"><div class="<?php if(!($this->config->get('default_list_grid') == '1' && $this->config->get('general_status') == '1')) { echo 'active-'; } ?>display-list" onclick="display('list');"><?php echo $text_list; ?></div><div class="<?php if($this->config->get('default_list_grid') == '1' && $this->config->get('general_status') == '1') { echo 'active-'; } ?>display-grid" onclick="display('grid');"><?php echo $text_grid; ?></div></div>
  	<div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
    <div class="limit"><b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><b><?php echo $text_sort; ?></b>
      <select onchange="location = this.value;" style="max-width:100px">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
			
  <div class="product-list"<?php if($this->config->get('default_list_grid') == '1' && $this->config->get('general_status') == '1') { echo ' style="display:none;"'; } ?>>
    <?php foreach ($products as $product) { ?>
    
						<!-- Product -->
						
						<div>
							
							<div class="left">
								
								<?php if ($product['thumb']) { ?>
								<div class="image"><?php if ($product['price'] && $product['special']) { $sale = 'Sale'; if(isset($text_sale)) { if($text_sale != 'text_sale') { $sale = $text_sale; } } echo '<div class="sale" style="text-transform:uppercase">'.$sale.'</div>'; } ?><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
								<?php } ?>

								<div class="name">
								
							  		<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
									
									<p><?php echo $product['description']; ?></p>
      		
								</div>
							
							</div>
							
							<div class="right">

								<?php if ($product['price']) { ?>
									<?php if (!$product['special']) { ?>
						        <div class="price"><?php echo $product['price']; ?></div>
						        <?php } else { ?>
						        <div class="price"><span class="price-old"><?php echo $product['price']; ?></span><span class="price-new"><?php echo $product['special']; ?></span></div>
						        <?php } ?>
								<?php } ?>
								
								<div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');"></a></div>
								
								<div class="wish-list"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a><br /><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>
																
							</div>
							
							<p class="clears"></p>

						</div>
						
						<!-- End Product -->
	 
    <?php } ?>
  </div>
	
  <div class="product-grid"<?php if(!($this->config->get('default_list_grid') == '1' && $this->config->get('general_status') == '1')) { echo ' style="display:none;"'; } ?>>
  
			<!-- Products -->
			
			<div class="overflow-products clearfix">
			
				<div class="products-grid<?php if($this->config->get('general_status') == '1') { echo ' product-'.$this->config->get('product_per_pow').' grid-9-product-'.$this->config->get('product_per_pow2').''; } ?>">
				
 				   <?php foreach ($products as $product) { ?>

						<!-- Product -->
						<div>
						
							<div class="left">
							
								<!-- Image -->
								
								<?php if ($product['thumb']) { ?>
								<div class="image"><?php if ($product['price'] && $product['special']) { $sale = 'Sale'; if(isset($text_sale)) { if($text_sale != 'text_sale') { $sale = $text_sale; } } echo '<div class="sale" style="text-transform:uppercase">'.$sale.'</div>'; } ?><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
								<?php } ?>		
													
							</div>
							
							<div class="right">
								
								<div class="off-hover">
																											
									<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
						        <?php if ($product['price']) { ?>
						        <div class="price">
						          <?php if (!$product['special']) { ?>
						          <?php echo $product['price']; ?>
						          <?php } else { ?>
						          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
						          <?php } ?>
						        </div>
						        <?php } ?>
								
								</div>
								
								<div class="on-hover">
								
									<!-- Add to cart -->
									
									<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="add-to-cart"></a>
									
									<!-- Links hover products -->
									
									<ul class="links">
									
										<li><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></li>
										<li><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></li>
									
									</ul>

								</div>
																					
							</div>
						
						</div>
						<!-- End Product -->
						
    				<?php } ?>	
    				
				</div>
				
			</div>
    				
  </div>	
  
  <!-- END PRODUCT GRID -->
						
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content" style="padding-top:15px"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php }?>
<script type="text/javascript"><!--
function display(view) {

	if (view == 'list') {
		$('.product-grid').css("display", "none");
		$('.product-list').css("display", "block");

		$('.display').html('<div class="active-display-list"><?php echo $text_list; ?></div><div class="display-grid" onclick="display(\'grid\');"><?php echo $text_grid; ?></div>');
		
		$.cookie('display', 'list'); 
	} else {
	
		$('.product-grid').css("display", "block");
		$('.product-list').css("display", "none");
					
		$('.display').html('<div class="display-list" onclick="display(\'list\');"><?php echo $text_list; ?></div><div class="active-display-grid"><?php echo $text_grid; ?></div>');
		
		$.cookie('display', 'grid');
	}
}

view = $.cookie('display');

if (view) {
	display(view);
}
//--></script> 
				
		</div>
		
		<!-- End Column center -->
	  
		<?php if($column_right != '') { echo '<div class="grid-3 float-left">'.$column_right.'</div>'; } ?>

	  <div class="clears"></div>
	  
	  <?php echo $content_bottom; ?>
  
  </section>
  
  <!-- End Content -->

<?php echo $footer; ?>
