	<!-- Footer -->
	
	<footer>
	
	<?php 
	
	if(isset($language_id)) {
	
	$customfooter = $this->config->get('customfooter');
	
	if(isset($customfooter[$language_id])) { if($customfooter[$language_id]['twitter_status'] == '1' || $customfooter[$language_id]['contact_status'] == '1' || $customfooter[$language_id]['aboutus_status'] == '1' || $customfooter[$language_id]['facebook_status'] == '1') { ?>
	
		<?php $grids = 12; $test = 0;  if($customfooter[$language_id]['aboutus_status'] == '1') { $test++; } if($customfooter[$language_id]['twitter_status'] == '1') { $test++; } if($customfooter[$language_id]['facebook_status'] == '1') { $test++; } if($customfooter[$language_id]['contact_status'] == '1') { $test++; } $grids = 12/$test; ?>
	
		<!-- Custom Footer -->
		
		<div id="custom-footer">
		
			<div class="set-size clearfix">
				
				<?php if($customfooter[$language_id]['aboutus_status'] == '1') { ?>
				<!-- About us -->
				
				<div class="grid-<?php echo $grids; ?> float-left"><div>
					
					<?php if($customfooter[$language_id]['aboutus_title'] != '') { ?>
					<h3 class="about-us"><?php echo $customfooter[$language_id]['aboutus_title']; ?></h3>
					<?php } ?>
					
					<p>
											
						<?php echo html_entity_decode(nl2br($customfooter[$language_id]['aboutus_text'])); ?>
											
					</p>
				
				</div></div>
				
				<!-- End About us -->
				<?php } ?>
				<?php if($customfooter[$language_id]['contact_status'] == '1') { ?>
				<!-- Contact -->
				
				<div class="grid-<?php echo $grids; ?> float-left"><div>
					
					<?php if($customfooter[$language_id]['contact_title'] != '') { ?>
					<h3 class="contact"><?php echo $customfooter[$language_id]['contact_title']; ?></h3>
					<?php } ?>
					
					<ul class="list-contact">
						
						<?php if($customfooter[$language_id]['contact_phone'] != '' || $customfooter[$language_id]['contact_phone2'] != '') { ?>
						<li class="phone">
						
							<ul>
								
								<?php if($customfooter[$language_id]['contact_phone'] != '') { ?>
								<li<?php if($customfooter[$language_id]['contact_phone2'] == '') { echo ' style="padding-top:13px"'; } ?>><?php echo $customfooter[$language_id]['contact_phone']; ?></li>
								<?php } ?>
								<?php if($customfooter[$language_id]['contact_phone2'] != '') { ?>
								<li<?php if($customfooter[$language_id]['contact_phone'] == '') { echo ' style="padding-top:13px"'; } ?>><?php echo $customfooter[$language_id]['contact_phone2']; ?></li>
								<?php } ?>
							
							</ul>
						
						</li>
						<?php } ?>
						<?php if($customfooter[$language_id]['contact_email'] != '' || $customfooter[$language_id]['contact_email2'] != '') { ?>
						<li class="email">
						
							<ul>
							
								<?php if($customfooter[$language_id]['contact_email'] != '') { ?>
								<li<?php if($customfooter[$language_id]['contact_email2'] == '') { echo ' style="padding-top:13px"'; } ?>><?php echo $customfooter[$language_id]['contact_email']; ?></li>
								<?php } ?>
								<?php if($customfooter[$language_id]['contact_email2'] != '') { ?>
								<li<?php if($customfooter[$language_id]['contact_email'] == '') { echo ' style="padding-top:13px"'; } ?>><?php echo $customfooter[$language_id]['contact_email2']; ?></li>
								<?php } ?>
							
							</ul>
						
						</li>
						<?php } ?>
						<?php if($customfooter[$language_id]['contact_skype'] != '' || $customfooter[$language_id]['contact_skype2'] != '') { ?>
						<li class="skype">
						
							<ul>
							
								<?php if($customfooter[$language_id]['contact_skype'] != '') { ?>
								<li<?php if($customfooter[$language_id]['contact_skype2'] == '') { echo ' style="padding-top:13px"'; } ?>><?php echo $customfooter[$language_id]['contact_skype']; ?></li>
								<?php } ?>
								<?php if($customfooter[$language_id]['contact_skype2'] != '') { ?>
								<li<?php if($customfooter[$language_id]['contact_skype'] == '') { echo ' style="padding-top:13px"'; } ?>><?php echo $customfooter[$language_id]['contact_skype2']; ?></li>
								<?php } ?>
							
							</ul>
						
						</li>
						<?php } ?>

					</ul>
				
				</div></div>
				
				<!-- End Contact -->
				<?php } ?>
				<?php if($customfooter[$language_id]['twitter_status'] == '1') { ?>
				<!-- Twitter -->
				
				<div class="grid-<?php echo $grids; ?> float-left"><div>
				
					<!-- ***** TWITTER API INTEGRATION STARTS HERE ***** -->
					<script type="text/javascript">
						jQuery(function($){
							$(".tweet").tweet({
								username: "<?php echo $customfooter[$language_id]['twitter_profile'] ; ?>",
								join_text: "auto",
								avatar_size: 0,
								count: 2,
								auto_join_text_default: "<b>:</b>",
								auto_join_text_ed: "<b>:</b>",
								auto_join_text_ing: "<b>:</b>",
								auto_join_text_reply: "<b>:</b>",
								auto_join_text_url: "<b>:</b>",
								loading_text: "Loading tweets..."
							});
						});
					</script> 
					<!-- ***** TWITTER API INTEGRATION ENDS HERE ***** -->
					<?php if($customfooter[$language_id]['twitter_title'] != '') { ?>
					<h3 class="twitter"><?php echo $customfooter[$language_id]['twitter_title']; ?></h3>
					<?php } ?>
					
					<?php if(!isset($customfooter[$language_id]['twitter_profile'])) $customfooter[$language_id]['twitter_profile'] = null; ?>
					<?php if(!isset($customfooter[$language_id]['twitter_theme'])) $customfooter[$language_id]['twitter_theme'] = null; ?>
					<?php if(!isset($customfooter[$language_id]['twitter_widget_id'])) $customfooter[$language_id]['twitter_widget_id'] = null; ?>
					<div style="position:relative;margin-bottom:-30px"><a class="twitter-timeline"  href="https://twitter.com/@<?php echo $customfooter[$language_id]['twitter_profile']; ?>" data-chrome="noheader nofooter noborders noscrollbar transparent" data-tweet-limit="2"  data-widget-id="<?php echo $customfooter[$language_id]['twitter_widget_id'] ; ?>" data-theme="<?php if($customfooter[$language_id]['twitter_theme'] == 'dark') { echo 'dark'; } else { echo 'light'; } ?>" data-related="twitterapi,twitter" data-aria-polite="assertive">Tweets by @<?php echo $customfooter[$language_id]['twitter_profile'] ; ?></a></div>
					
					<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
				
				</div></div>
				
				<!-- End Twitter -->
				<?php } ?>
				<?php if($customfooter[$language_id]['facebook_status'] == '1') { ?>
				<!-- Facebook -->
				<div class="grid-<?php echo $grids; ?> float-left"><div>
				
					<?php if($customfooter[$language_id]['facebook_title'] != '') { ?>
					<h3 class="facebook"><?php echo $customfooter[$language_id]['facebook_title']; ?></h3>
					<?php } ?>
					<?php $facebook_css = ''.HTTP_SERVER.'catalog/view/theme/dilecta/css/facebook.css';?>
					
					<div id="facebook" style="margin-top:0px">
						
						<div style="margin:-7px 0px -5px -7px">
						<div class="fb-like-box fb_iframe_widget" profile_id="<?php echo $customfooter[$language_id]['facebook_id']; ?>" data-border-color="transparent" data-width="260" data-height="<?php if($customfooter[$language_id]['facebook_height'] > 0) { echo $customfooter[$language_id]['facebook_height']; } else { echo '210'; } ?>" <?php if($customfooter[$language_id]['show_faces'] != '1') { ?>data-connections="<?php if($customfooter[$language_id]['facebook_faces'] > 0) { echo $customfooter[$language_id]['facebook_faces']; } else { echo '8'; } ?>"<?php } ?> data-colorscheme="light" data-stream="false" data-header="false" data-show-faces="<?php if($customfooter[$language_id]['show_faces'] == '1') { echo 'false'; } else { echo 'true'; } ?>" fb-xfbml-state="rendered"></div>
						</div>
					
					</div>
				
				</div></div>
				<!-- End Facebook -->
				<?php } ?>
			
			</div>
		
		</div>
		
		<!-- End Custom Footer -->
		
  		<?php } } } ?>
		
		<div class="set-size clearfix">
		
			<div class="footer-navigation clearfix">
 					
 				 <?php if ($informations) { ?>	
			    <div class="grid-3 float-left"><div class="footer-panels">

			    	<div class="footer-title"><h3><?php echo $text_information; ?></h3></div>

			      <ul class="no-active">

				      <?php foreach ($informations as $information) { ?>
				      <li><a href="<?php echo $information['href']; ?>">&#8250; <?php echo $information['title']; ?></a></li>
				      <?php } ?>
				
			      </ul>

			    </div></div>
			    <?php } ?>

			    <div class="grid-3 float-left"><div class="footer-panels">

			      <div class="footer-title"><h3><?php echo $text_service; ?></h3></div>

			      <ul class="no-active">

				      <li><a href="<?php echo $contact; ?>">&#8250; <?php echo $text_contact; ?></a></li>
				      <li><a href="<?php echo $return; ?>">&#8250; <?php echo $text_return; ?></a></li>
				      <li><a href="<?php echo $sitemap; ?>">&#8250; <?php echo $text_sitemap; ?></a></li>

			      </ul>

			    </div></div>

			    <div class="grid-3 float-left"><div class="footer-panels">

			      <div class="footer-title"><h3><?php echo $text_extra; ?></h3></div>

			      <ul class="no-active">

				      <li><a href="<?php echo $manufacturer; ?>">&#8250; <?php echo $text_manufacturer; ?></a></li>
				      <li><a href="<?php echo $voucher; ?>">&#8250; <?php echo $text_voucher; ?></a></li>
				      <li><a href="<?php echo $affiliate; ?>">&#8250; <?php echo $text_affiliate; ?></a></li>
				      <li><a href="<?php echo $special; ?>">&#8250; <?php echo $text_special; ?></a></li>
					 
			      </ul>

			    </div></div>

			    <div class="grid-3 float-left"><div class="footer-panels">

					<div class="footer-title"><h3><?php echo $text_account; ?></h3></div>

			    	<ul class="no-active">

			      <li><a href="<?php echo $account; ?>">&#8250; <?php echo $text_account; ?></a></li>
			      <li><a href="<?php echo $order; ?>">&#8250; <?php echo $text_order; ?></a></li>
			      <li><a href="<?php echo $wishlist; ?>">&#8250; <?php echo $text_wishlist; ?></a></li>
			      <li><a href="<?php echo $newsletter; ?>">&#8250; <?php echo $text_newsletter; ?></a></li>

			    	</ul>

				</div></div>
				
			</div>
							
			<!-- Copyright -->
			
			<div class="copyright clearfix">
				
				<?php if($this->config->get('payment_status') != '0') { ?>
				<ul>
					
					<?php if($this->config->get('payment_mastercard_status') != '0') { ?>
					<?php if($this->config->get('payment_mastercard') != '') { ?>
					<li><a href="<?php echo $this->config->get('payment_mastercard'); ?>"><img src="catalog/view/theme/dilecta/img/mastercard.png" alt="Mastercard" /></a></li>
					<?php } else { ?>
					<li><img src="catalog/view/theme/dilecta/img/mastercard.png" alt="Mastercard" /></li>
					<?php } ?>
					<?php } ?>
					<?php if($this->config->get('payment_visa_status') != '0') { ?>
					<?php if($this->config->get('payment_visa') != '') { ?>
					<li><a href="<?php echo $this->config->get('payment_visa'); ?>"><img src="catalog/view/theme/dilecta/img/visa.png" alt="Visa" /></a></li>
					<?php } else { ?>
					<li><img src="catalog/view/theme/dilecta/img/visa.png" alt="Visa" /></li>
					<?php } ?>
					<?php } ?>
					<?php if($this->config->get('payment_moneybookers_status') != '0') { ?>
					<?php if($this->config->get('payment_moneybookers') != '') { ?>
					<li><a href="<?php echo $this->config->get('payment_moneybookers'); ?>"><img src="catalog/view/theme/dilecta/img/moneybookers.png" alt="MoneyBookers" /></a></li>
					<?php } else { ?>
					<li><img src="catalog/view/theme/dilecta/img/moneybookers.png" alt="MoneyBookers" /></li>
					<?php } ?>
					<?php } ?>
					<?php if($this->config->get('payment_paypal_status') != '0') { ?>
					<?php if($this->config->get('payment_paypal') != '') { ?>
					<li><a href="<?php echo $this->config->get('payment_paypal'); ?>"><img src="catalog/view/theme/dilecta/img/paypal.png" alt="PayPal" /></a></li>
					<?php } else { ?>
					<li><img src="catalog/view/theme/dilecta/img/paypal.png" alt="PayPal" /></li>
					<?php } ?>
					<?php } ?>
					<?php if($this->config->get('payment_add_0_status') != '0' && $this->config->get('payment_add_0') != '') { ?>
					<?php if($this->config->get('payment_add_0_url') != '') { ?>
					<li><a href="<?php echo $this->config->get('payment_add_0_url'); ?>"><img src="image/<?php echo $this->config->get('payment_add_0'); ?>" alt="PayPal" /></a></li>
					<?php } else { ?>
					<li><img src="image/<?php echo $this->config->get('payment_add_0'); ?>" alt="" /></li>
					<?php } ?>
					<?php } ?>
					<?php if($this->config->get('payment_add_1_status') != '0' && $this->config->get('payment_add_1') != '') { ?>
					<?php if($this->config->get('payment_add_1_url') != '') { ?>
					<li><a href="<?php echo $this->config->get('payment_add_1_url'); ?>"><img src="image/<?php echo $this->config->get('payment_add_1'); ?>" alt="PayPal" /></a></li>
					<?php } else { ?>
					<li><img src="image/<?php echo $this->config->get('payment_add_1'); ?>" alt="" /></li>
					<?php } ?>
					<?php } ?>
					<?php if($this->config->get('payment_add_2_status') != '0' && $this->config->get('payment_add_2') != '') { ?>
					<?php if($this->config->get('payment_add_2_url') != '') { ?>
					<li><a href="<?php echo $this->config->get('payment_add_2_url'); ?>"><img src="image/<?php echo $this->config->get('payment_add_2'); ?>" alt="PayPal" /></a></li>
					<?php } else { ?>
					<li><img src="image/<?php echo $this->config->get('payment_add_2'); ?>" alt="" /></li>
					<?php } ?>
					<?php } ?>
					<?php if($this->config->get('payment_add_3_status') != '0' && $this->config->get('payment_add_3') != '') { ?>
					<?php if($this->config->get('payment_add_3_url') != '') { ?>
					<li><a href="<?php echo $this->config->get('payment_add_3_url'); ?>"><img src="image/<?php echo $this->config->get('payment_add_3'); ?>" alt="PayPal" /></a></li>
					<?php } else { ?>
					<li><img src="image/<?php echo $this->config->get('payment_add_3'); ?>" alt="" /></li>
					<?php } ?>
					<?php } ?>
				
				</ul>
				<?php } ?>
				
				<p><?php echo $powered; ?></p>
							
			</div>
			
			<!-- End copyright -->
		
		</div>
	
	</footer>
	
	<!-- End Footer -->
	
	<div id="toTop"></div>
		
</body>
</html>
