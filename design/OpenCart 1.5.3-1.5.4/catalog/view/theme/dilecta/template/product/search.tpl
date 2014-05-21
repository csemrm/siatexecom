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
		
		<div class="grid-<?php echo $grid; ?> float-left" style="padding-top:0px !important">
			
			<div class="box">
			
  <h2 class="box-title"><?php echo $text_critea; ?></h2>
  
<div class="content" style="padding-top:20px">
  <p><?php echo $entry_search; ?>
    <?php if ($filter_name) { ?>
    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
    <?php } else { ?>
    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
    <?php } ?>
    <select name="filter_category_id">
      <option value="0"><?php echo $text_category; ?></option>
      <?php foreach ($categories as $category_1) { ?>
      <?php if ($category_1['category_id'] == $filter_category_id) { ?>
      <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
      <?php } ?>
      <?php foreach ($category_1['children'] as $category_2) { ?>
      <?php if ($category_2['category_id'] == $filter_category_id) { ?>
      <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
      <?php } ?>
      <?php foreach ($category_2['children'] as $category_3) { ?>
      <?php if ($category_3['category_id'] == $filter_category_id) { ?>
      <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
      <?php } ?>
      <?php } ?>
      <?php } ?>
      <?php } ?>
    </select>
    <?php if ($filter_sub_category) { ?>
    <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" />
    <?php } ?>
    <label for="sub_category"><?php echo $text_sub_category; ?></label>
  </p>
  <?php if ($filter_description) { ?>
  <input type="checkbox" name="filter_description" value="1" id="description" checked="checked" />
  <?php } else { ?>
  <input type="checkbox" name="filter_description" value="1" id="description" />
  <?php } ?>
  <label for="description"><?php echo $entry_description; ?></label>
</div>
<div class="buttons">
  <div class="right"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" /></div>
</div>
<h2 style="padding-top:20px"><?php echo $text_search; ?></h2>
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
  <?php }?>
<script type="text/javascript"><!--
$('#content input[name=\'filter_name\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var filter_name = $('#content input[name=\'filter_name\']').attr('value');
	
	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}

	var filter_category_id = $('#content select[name=\'filter_category_id\']').attr('value');
	
	if (filter_category_id > 0) {
		url += '&filter_category_id=' + encodeURIComponent(filter_category_id);
	}
	
	var filter_sub_category = $('#content input[name=\'filter_sub_category\']:checked').attr('value');
	
	if (filter_sub_category) {
		url += '&filter_sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'filter_description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&filter_description=true';
	}

	location = url;
});

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
