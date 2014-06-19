<?php $id_module = rand(1,999); ?>

		<!-- Box -->
		
		<section id="latest_<?php echo $id_module; ?>" class="box">
			
			<!-- Title -->
			
			<h2 class="box-title"><?php echo $heading_title; ?></h2>
			
		  		<?php if(!($this->config->get('product_scroll_latest') == '0' && $this->config->get('general_status') == '1')) { ?>
				<!-- Pagination -->
				
				<div class="pagination-product clearfix">
				
					<a href="#" class="prev-products" id="module_latest_<?php echo $id_module; ?>_prev"></a>
					<a href="#" class="next-products" id="module_latest_<?php echo $id_module; ?>_next"></a>
				
				</div>
								
				<script type="text/javascript">
					jQuery(function($){
						paginacja('module_latest_<?php echo $id_module; ?>');
					});
				</script>
				<?php } ?> 
			
				<!-- Products -->
			
				<div class="overflow-products clearfix" id="module_latest_<?php echo $id_module; ?>">
										
					<div class="products-grid<?php if($this->config->get('general_status') == '1') { echo ' product-'.$this->config->get('product_per_pow').' grid-9-product-'.$this->config->get('product_per_pow2').''; } ?>">
														
					<?php foreach ($products as $product) { ?>
					<!-- Product -->
						
						<div>

							<div class="left">
								
								<?php if ($product['thumb']) { ?>
								<div class="image"><?php if ($product['price'] && $product['special']) { $sale = 'Sale'; if(isset($text_sale)) { if($text_sale != 'text_sale') { $sale = $text_sale; } } echo '<div class="sale" style="text-transform:uppercase">'.$sale.'</div>'; } ?><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
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
