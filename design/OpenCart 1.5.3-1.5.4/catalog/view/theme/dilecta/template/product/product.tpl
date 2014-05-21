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
		
		<div class="grid-<?php echo $grid; ?> float-left" style="padding-top:20px !important">


  <div class="product-info<?php if($this->config->get('custom_block_status') == '1' && $this->config->get('custom_block_text') != '') { echo ' custom-block'; } ?>">
  
    <?php if ($thumb || $images) { ?>
	    <?php if (!($this->config->get('product_image_zoom') == '1' && $this->config->get('general_status') == '1')) { ?>
	    
<script type="text/javascript">

$(document).ready(function() {
	$('.jqzoom').jqzoom({
            zoomType: 'innerzoom',
            preloadImages: false,
            alwaysOn:false
        });
});


</script>


		    <div class="left">
		      <?php if ($thumb) { ?>
		      <div class="image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="jqzoom" rel='gal1'><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" /></a></div>
		      
		      	<div class="zoom-image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox">zoom</a></div>
		        <?php foreach ($images as $image) { ?>
		        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox" style="display:none">zoom 1</a>
		        <?php } ?>
		      
		      <?php } ?>
		      <?php if ($images) { ?>
		      <div class="image-additional">
		      	<?php if ($thumb) { ?>
		        <a href="javascript:void(0);" title="<?php echo $heading_title; ?>" rel="{gallery: 'gal1', smallimage: '<?php echo $popup; ?>',largeimage: '<?php echo $popup; ?>'}"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
		      	<?php } ?>
		        <?php foreach ($images as $image) { ?>
		        <a href="javascript:void(0);" title="<?php echo $heading_title; ?>" rel="{gallery: 'gal1', smallimage: '<?php echo $image['popup']; ?>',largeimage: '<?php echo $image['popup']; ?>'}"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
		        <?php } ?>
		      </div>
		      <?php } ?>
		    </div>
		    
	    
	    <?php } else {  ?>
	    
		    
		    <div class="left">
		      <?php if ($thumb) { ?>
		      <div class="image image-2"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image1" /></a></div>
		      <?php } ?>
		      <?php if ($images) { ?>
		      <div class="image-additional">
		        <?php foreach ($images as $image) { ?>
		        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
		        <?php } ?>
		      </div>
		      <?php } ?>
		    </div>
	    
	    <?php } ?>
    <?php } ?>
    
    <div class="right">
      <div class="description">
        <?php if ($manufacturer) { ?>
        <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
        <?php } ?>
        <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
        <?php if ($reward) { ?>
        <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
        <?php } ?>
        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?></div>
        <div class="pattern"></div>
        
      <?php if ($price) { ?>
      <div class="price">
        <?php if (!$special) { ?>
        <p><?php echo $price; ?></p>
        <?php } else { ?>
        <p><span class="price-new"><?php echo $special; ?></span> <span class="price-old"><?php echo $price; ?></span></p>
        <?php } ?>
        <?php if ($tax && $this->config->get('ex_tax_price') != '0') { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        <?php } ?>
        <?php if ($points && $this->config->get('reward_points') != '0') { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
        <?php if ($discounts) { ?>
        <br />
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php } ?>

					      
      <?php if ($options) { ?>
    
       <div class="options">
     
        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <table class="option-image">
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <tr>
              <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label></td>
            </tr>
            <?php } ?>
          </table>
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />	
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5" style="width:210px"><?php echo $option['option_value']; ?></textarea>
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
          </div>
        </div>
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <p><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <?php echo $option['name']; ?>:</p>
          <div>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
          </div>
        </div>
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>
      
					
					<div class="add-to-carts">
									
						<div class="qty">
						
							<p><?php echo $text_qty; ?></p>
							<a href="#" id="q_down"></a>
							<input type="text" name="quantity" id="quantity_wanted" size="2" value="<?php echo $minimum; ?>" />
							<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
							<a href="#" id="q_up"></a>
						
						</div>
						
						<a id="button-cart" class="add-to-cart"></a>

						<div class="links"><a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a><br /><a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a></div>
					
					</div>
					
					
        <?php if ($minimum > 1) { ?>
        <p class="clears" style="height:25px"></p>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
        
					
					<?php if ($review_status) { ?>
					
					<!-- Review -->
					
					<div class="review">
						
						<div>
						
							<img src="catalog/view/theme/dilecta/img/stars-<?php echo $rating; ?>.png" alt="" />
							<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a><a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a>
						
						</div>
						<?php if($this->config->get('product_social_share') != '0') { ?>
        <div class="share" style="padding-top:15px"><!-- AddThis Button BEGIN -->
          <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
          <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
          <!-- AddThis Button END --> 
        </div>
        
        <?php } ?>
        
        <p class="clear"></p>

					
					</div>
					
					<?php } ?>

    </div>
    
    <?php if($this->config->get('custom_block_status') == '1' && $this->config->get('custom_block_text') != '') { echo '<div class="custom-block-product">'.html_entity_decode($this->config->get('custom_block_text')).'</div>'; } ?>
    
    				<p class="clears"></p>
    
  </div>
  
  
  <!-- Tabs -->
  
  <div class="whole-tabs">
  
  <div id="tabs" class="htabs"><a href="#tab-description"><?php echo $tab_description; ?></a>
    <?php if ($attribute_groups) { ?>
    <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
    <?php } ?>
    <?php if ($review_status) { ?>
    <a href="#tab-review"><?php echo $tab_review; ?></a>
    <?php } ?>
  </div>
  <div id="tab-description" class="tab-description"><?php echo $description; ?></div>
  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
    <div id="review"></div>
    
    				<!-- Heading -->
		<div id="review-title"></div>
		<h3 style="padding-top:20px;padding-bottom:10px"><?php echo $text_write; ?></h3>

    <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="" />
    <br />
    <br />
    <b><?php echo $entry_review; ?></b>
    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
    <br />
    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
    <input type="radio" name="rating" value="1" />
    &nbsp;
    <input type="radio" name="rating" value="2" />
    &nbsp;
    <input type="radio" name="rating" value="3" />
    &nbsp;
    <input type="radio" name="rating" value="4" />
    &nbsp;
    <input type="radio" name="rating" value="5" />
    &nbsp;<span><?php echo $entry_good; ?></span><br />
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="" />
    <br /><div style="height:5px"></div>
    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
    <br />
    <div class="buttons">
      <div class="right"><a id="button-review" class="button button-active"><?php echo $button_continue; ?></a></div>
    </div>
  </div>
  <?php } ?>
  
  </div>
  
  <!-- End Tabs -->
  
  
  <?php if ($tags) { ?>
  <div class="tags" style="padding-top: 20px"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  
  		
  		<?php if($products) { ?>
  		
<?php $id_module = rand(1,999); ?>

		<!-- Box -->
		
		<section id="related_<?php echo $id_module; ?>" class="box">
			
			<!-- Title -->
			
			<h2 class="box-title"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</h2>
			
		  		<?php if(!($this->config->get('product_scroll_related') == '0' && $this->config->get('general_status') == '1')) { ?>
				<!-- Pagination -->
				
				<div class="pagination-product clearfix">
				
					<a href="#" class="prev-products" id="module_related_<?php echo $id_module; ?>_prev"></a>
					<a href="#" class="next-products" id="module_related_<?php echo $id_module; ?>_next"></a>
				
				</div>
								
				<script type="text/javascript">
					jQuery(function($){
						paginacja('module_related_<?php echo $id_module; ?>');
					});
				</script>
				<?php } ?> 
			
				<!-- Products -->
			
				<div class="overflow-products clearfix" id="module_related_<?php echo $id_module; ?>">
										
					<div class="products-grid<?php if($this->config->get('general_status') == '1') { echo ' product-'.$this->config->get('product_per_pow').' grid-9-product-'.$this->config->get('product_per_pow2').''; } ?>">
														
					<?php foreach ($products as $product) { ?>
					<!-- Product -->
						
						<div>

							<div class="left">
								
								<?php if ($product['thumb']) { ?>
								<div class="image"><?php if ($product['price'] && $product['special']) { echo '<div class="sale">SALE</div>'; } ?><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
								<?php } ?>
							
							</div>
													
							<div class="right">
							
								<div class="off-hover">

									<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
									
									<?php if ($product['price']) { ?><div class="price"><?php if(!$product['special']) { echo $product['price']; } else { echo $product['special'].' <span class="price-old">'.$product['price'].'</span>'; } ?></div><?php } ?>
								
								</div>
								
								<div class="on-hover">
								
									<!-- Add to cart -->
									
									<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="add-to-cart"></a>
									
									<?php if(isset($button_wishlist)) { ?> 
									<!-- Links hover products -->
									
									<ul class="links">
									
										<li><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></li>
										<li><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></li>
									
									</ul>
									<?php } ?>
								
								</div>
																
							</div>

						</div>
						
						<!-- End Product -->
						<?php } ?>
					
					</div>
										
	 			</div>
	 			
	 			<!-- End Products -->
	 													
		</section>
		
		<!-- End Box -->

  <?php } ?>
  
<script type="text/javascript"><!--

$(document).ready(function () {

	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5
	});

});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			$('.option input, .option textarea').removeClass("input-error");
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i + ' input, #option-' + i + ' textarea').addClass("input-error");
						$('#option-' + i).after('<span class="error" style="clear:both;position:relative;margin-top:8px;padding-bottom:4px">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="notification"><div class="close"></div>' + json['success'] + '</div>');
				
				$('#cart_block').load('index.php?route=module/cart #cart_block > *');
					
				$('.success').fadeIn('slow');
									
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?> input').addClass('input-error');
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span><br />');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
		
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--

$(document).ready(function () {

$('#tabs a').tabs();

});
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
  		
  		<?php if($products) { ?>
  		
  		<?php } ?>
  
  
  
				
		</div>
		
		<!-- End Column center -->
	  
		<?php if($column_right != '') { echo '<div class="grid-3 float-left">'.$column_right.'</div>'; } ?>

	  <div class="clears"></div>
	  
	  <?php echo $content_bottom; ?>
  
  </section>
  
  <!-- End Content -->

<?php echo $footer; ?>

