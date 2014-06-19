<div id="cart_block">

	<!-- Cart heading --><div class="cart-heading"><?php echo $text_items; ?></div>


	<div class="content">
  
		<div class="content-arrow"></div>
		
		<?php if ($products || $vouchers) { ?>
			
			<ul class="items-in-shopping-cart">
				
				<?php foreach ($products as $product) { ?>
							<!-- Item -->
							<li>
							
								<?php if ($product['thumb']) { ?><!-- Image --><div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a></div><?php } ?>
								<!-- Info --><div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
								<!-- quantity --><div class="quantity">x <?php echo $product['quantity']; ?></div>
								<!-- Price --><div class="price"><?php echo $product['total']; ?></span></div>
								<!-- Close --><div class="close" onclick="$('#cart_block').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?> #cart_block > *');"></div>							
							</li>
							<!-- End Item -->
				<?php } ?>
				<?php foreach ($vouchers as $voucher) { ?>
							<!-- Item -->
							<li>
							
								<!-- Info --><div class="name"><?php echo $voucher['description']; ?></div>
								<!-- quantity --><div class="quantity">x 1</div>
								<!-- Price --><div class="price"><?php echo $voucher['amount']; ?></span></div>
								<!-- Close --><div class="close" onclick="$('#cart_block').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?> #cart_block > *');"></div>							
							</li>
							<!-- End Item -->
				<?php } ?>
			
			</ul>
		  	

						<div class="saldo-action">
							
							<div class="saldo">
							
								<ul>
									
									<?php foreach ($totals as $total) { ?>
									<li><p><?php echo $total['title']; ?></p><span><?php echo $total['text']; ?></span></li>
									<?php } ?>
								
								</ul>
							
							</div>
							
							<div class="action">
								
								<a href="<?php echo $cart; ?>" class="button button-two"><?php echo $text_cart; ?></a><a href="<?php echo $checkout; ?>" class="button"><?php echo $text_checkout; ?></a>
								
							</div>
						
						</div>
	
    <?php } else { ?>
    <div class="empty" style="padding:50px 40px;text-align:center"><?php echo $text_empty; ?></div>
    <?php } ?>
    
  </div>
  
</div>
