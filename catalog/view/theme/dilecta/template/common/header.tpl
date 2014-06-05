<?php 

$dir = 'ltr'; 
$dir_include = $this->config->get('language_direction'); 

if($this->config->get('general_status') == '1') { 

	if(isset($language_id)) {
		
		if(isset($dir_include[$language_id])) {
		
			if($dir_include[$language_id] == '1') { $dir = 'rtl'; }
		
		}
	
	} 

} ?>
<!DOCTYPE html>
<!--[if IE 7]>                  <html class="ie7 no-js"  dir="<?php echo $dir; ?>" lang="<?php echo $lang; ?>">     <![endif]-->
<!--[if lte IE 8]>              <html class="ie8 no-js"  dir="<?php echo $dir; ?>" lang="<?php echo $lang; ?>">    <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" dir="<?php echo $dir; ?>" lang="<?php echo $lang; ?>">  <!--<![endif]-->
<head>
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!--Google Webfont -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Raleway:100" rel="stylesheet" type="text/css">
	<!-- CSS -->
	<link href="catalog/view/theme/dilecta/css/stylesheet.css" rel="stylesheet" type="text/css" />
 	<link rel="stylesheet" type="text/css" href="catalog/view/theme/dilecta/css/carousel.css" media="screen" />	
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/dilecta/css/slider/settings.css" media="screen" />
	<!-- Javascript -->
	<script type="text/javascript" src="catalog/view/theme/dilecta/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="catalog/view/theme/dilecta/js/jquery.tweet.js"></script> 
	<script type="text/javascript" src="catalog/view/theme/dilecta/js/slider/jquery.themepunch.plugins.min.js"></script>
	<script type="text/javascript" src="catalog/view/theme/dilecta/js/slider/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript">var rtl = <?php if($dir == 'rtl') { echo '1'; } else { echo '0'; } ?>;</script>
	<script type="text/javascript" src="catalog/view/theme/dilecta/js/jquery-workarounds.js"></script>
	<script type="text/javascript" src="catalog/view/theme/dilecta/js/jquery.jcarousel.min.js"></script>
	<script type="text/javascript" src="catalog/view/theme/dilecta/js/jquery.flexslider-min.js"></script>
		
	<!-- Cloud Zoom -->
		
	<script src="catalog/view/theme/dilecta/js/jquery.jqzoom-core.js" type="text/javascript"></script>
	<link rel="stylesheet" href="catalog/view/theme/dilecta/css/jquery.jqzoom.css" type="text/css" />
	
	<!-- OPENCART JS -->
	<script type="text/javascript" src="catalog/view/theme/dilecta/js/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/dilecta/js/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
	<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
	
	<?php if($this->config->get('dilecta_color') == '1') { ?>
	<link href="catalog/view/theme/dilecta/css/color_2.css" rel="stylesheet" type="text/css" />
	<?php } ?>
	<?php if($this->config->get('dilecta_color') == '2') { ?>
	<link href="catalog/view/theme/dilecta/css/color_3.css" rel="stylesheet" type="text/css" />
	<?php } ?>
	<?php if($this->config->get('dilecta_color') == '3') { ?>
	<link href="catalog/view/theme/dilecta/css/color_4.css" rel="stylesheet" type="text/css" />
	<?php } ?>
	<?php if($this->config->get('dilecta_color') == '4') { ?>
	<link href="catalog/view/theme/dilecta/css/color_5.css" rel="stylesheet" type="text/css" />
	<?php } ?>
	<?php if($this->config->get('dilecta_color') == '5') { ?>
	<link href="catalog/view/theme/dilecta/css/color_1.css" rel="stylesheet" type="text/css" />
	<?php } ?>
	<?php if($dir == 'rtl') { ?>
	<link href="catalog/view/theme/dilecta/css/rtl.css" rel="stylesheet" type="text/css" />
	<?php } ?>
	<?php foreach ($styles as $style) { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	<?php foreach ($scripts as $script) { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>
	<?php echo $google_analytics; ?>
	
	<?php if($this->config->get('custom_code_status') == '1') { ?>
		<?php if($this->config->get('custom_code_css') != '') { ?>
		<style type="text/css">
		
			<?php echo $this->config->get('custom_code_css'); ?>
		
		</style>
		<?php } ?>
		<?php if($this->config->get('custom_code_js') != '') { ?>
		<script type="text/javascript">
		
			<?php echo $this->config->get('custom_code_js'); ?>
		
		</script>
		<?php } ?>
	<?php } ?>
	
	<?php if(!($this->config->get('responsive_layout') == '1' && $this->config->get('general_status') == '1')) { ?>
		<?php if($dir == 'rtl') { ?>
		<link href="catalog/view/theme/dilecta/css/responsive_rtl.css" rel="stylesheet" type="text/css" />
		<?php } else { ?>
		<link href="catalog/view/theme/dilecta/css/responsive.css" rel="stylesheet" type="text/css" />
		<?php } ?>
	<?php } ?>
	
	<!-- Cleve Settings -->
	
	<?php if($this->config->get('font_status') == '1' || $this->config->get('colors_status') == '1') { ?>
	
		<?php if( $this->config->get('categories_bar') != '' && $this->config->get('categories_bar') != 'standard'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('categories_bar') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		<?php if( $this->config->get('headlines') != '' && $this->config->get('headlines') != 'standard'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('headlines') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		<?php if( $this->config->get('footer_headlines') != '' && $this->config->get('footer_headlines') != 'standard'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('footer_headlines') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		<?php if( $this->config->get('custom_price') != '' && $this->config->get('custom_price') != 'standard'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('custom_price') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		<?php if( $this->config->get('product_name_font') != '' && $this->config->get('product_name_font') != 'standard'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('product_name_font') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		<?php if( $this->config->get('page_name') != '' && $this->config->get('page_name') != 'standard'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('page_name') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		<?php if( $this->config->get('button_font') != '' && $this->config->get('button_font') != 'standard'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('button_font') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		<?php if( $this->config->get('body_font') != '' && $this->config->get('custom_price') != 'body_font'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('body_font') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		<?php if( $this->config->get('slider_large_description') != '' && $this->config->get('slider_large_description') != 'body_font'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('slider_large_description') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		<?php if( $this->config->get('slider_medium_description') != '' && $this->config->get('slider_medium_description') != 'body_font'){	?>
		<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('slider_medium_description') ?>&v1' rel='stylesheet' type='text/css'>
		<?php } ?>
		
	<style type="text/css">
	
		<?php if($this->config->get('font_status') == '1') { ?>
		
			<?php if($this->config->get('body_font') != 'standard' && $this->config->get('body_font') != '') { ?>
			body, a { font-family:<?php echo $this->config->get('body_font') ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('body_font_px') != ''){	?>
			body, a { font-size:<?php echo $this->config->get('body_font_px'); ?>px !important; }
			<?php } ?>
			<?php if( $this->config->get('body_font_smaller_px') != ''){	?>
			header .top .top-right .wishlist a, header .top .top-right #cart_block .cart-heading, header .top .top-right .language-currency .switcher p a, .products-grid > div .sale, .product-list > div .sale { font-size:<?php echo $this->config->get('body_font_smaller_px'); ?>px !important; }
			<?php } ?>
			<?php if( $this->config->get('categories_bar') != '' && $this->config->get('categories_bar') != 'standard'){	?>
			<?php $toReplace =  $this->config->get('categories_bar'); $font = str_replace("+", " ", $toReplace); ?>
			.navigation_container nav > ul > li > a { font-family:<?php echo $font; ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('categories_bar_px') != ''){	?>
			.navigation_container nav > ul > li > a { font-size:<?php echo $this->config->get('categories_bar_px'); ?>px !important; }
			<?php } ?>
			
			<?php if( $this->config->get('custom_price') != '' && $this->config->get('custom_price') != 'standard'){	?>
			<?php $toReplace =  $this->config->get('custom_price'); $font = str_replace("+", " ", $toReplace); ?>
			header .top .top-right #cart_block .content ul.items-in-shopping-cart li .price, .product-list > div .price, .products-grid > div .price, .product-info .right .price { font-family:<?php echo $font; ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('custom_price_px') != ''){	?>
			.product-info .right .price p { font-size:<?php echo $this->config->get('custom_price_px'); ?>px !important; }
			<?php } ?>
			<?php if( $this->config->get('custom_price_px_medium') != ''){	?>
			.product-list > div .price, .products-grid > div .price { font-size:<?php echo $this->config->get('custom_price_px_medium'); ?>px !important; }
			<?php } ?>
			<?php if( $this->config->get('custom_price_px_small') != ''){	?>
			header .top .top-right #cart_block .content ul.items-in-shopping-cart li .price { font-size:<?php echo $this->config->get('custom_price_px_small'); ?>px !important; }
			<?php } ?>
			<?php if( $this->config->get('custom_price_px_old_price') != ''){	?>
			.price-old, .product-info .right .price span { font-size:<?php echo $this->config->get('custom_price_px_old_price'); ?>px !important; }
			<?php } ?>
			
			<?php if( $this->config->get('product_name_font') != '' && $this->config->get('product_name_font') != 'standard'){	?>
			<?php $toReplace =  $this->config->get('product_name_font'); $font = str_replace("+", " ", $toReplace); ?>
			.name a { font-family:<?php echo $font; ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('product_name_font_px') != ''){	?>
			.name a { font-size:<?php echo $this->config->get('product_name_font_px'); ?>px !important; }
			<?php } ?>
			
			<?php if( $this->config->get('headlines') != '' && $this->config->get('headlines') != 'standard'){	?>
			<?php $toReplace =  $this->config->get('headlines'); $font = str_replace("+", " ", $toReplace); ?>
			#content h1, #content h2, #content h3, #content h4, #content h5, #content h6, .custom-font, .box-heading, box-title { font-family:<?php echo $font; ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('headlines_px') != ''){	?>
			#content h1, #content h2, #content h3, #content h4, #content h5, #content h6, .custom-font, .box-heading, box-title { font-size:<?php echo $this->config->get('headlines_px'); ?>px !important; }
			<?php } ?>
			
			<?php if( $this->config->get('footer_headlines') != '' && $this->config->get('footer_headlines') != 'standard'){	?>
			<?php $toReplace =  $this->config->get('footer_headlines'); $font = str_replace("+", " ", $toReplace); ?>
			footer .footer-panels .footer-title h3, footer #custom-footer > div > div > div h3 { font-family:<?php echo $font; ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('footer_headlines_px') != ''){	?>
			footer .footer-panels .footer-title h3, footer #custom-footer > div > div > div h3 { font-size:<?php echo $this->config->get('footer_headlines_px'); ?>px !important; }
			<?php } ?>
			
			<?php if( $this->config->get('page_name') != '' && $this->config->get('page_name') != 'standard'){	?>
			<?php $toReplace =  $this->config->get('page_name'); $font = str_replace("+", " ", $toReplace); ?>
			#page-title h2 { font-family:<?php echo $font; ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('page_name_px') != ''){	?>
			d#page-title h2 { font-size:<?php echo $this->config->get('page_name_px'); ?>px !important; }
			<?php } ?>

			<?php if( $this->config->get('button_font') != '' && $this->config->get('button_font') != 'standard'){	?>
			<?php $toReplace =  $this->config->get('button_font'); $font = str_replace("+", " ", $toReplace); ?>
			.button { font-family:<?php echo $font; ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('button_font_px') != ''){	?>
			.button { font-size:<?php echo $this->config->get('button_font_px'); ?>px !important; }
			<?php } ?>
			
			<?php if( $this->config->get('slider_medium_description') != '' && $this->config->get('slider_medium_description') != 'standard'){	?>
			<?php $toReplace =  $this->config->get('slider_medium_description'); $font = str_replace("+", " ", $toReplace); ?>
			.slider-text-3 { font-family:<?php echo $font; ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('slider_medium_description_px') != ''){	?>
			.slider-text-3 { font-size:<?php echo $this->config->get('slider_medium_description_px'); ?>px; }
			<?php } ?>
			
			<?php if( $this->config->get('slider_large_description') != '' && $this->config->get('slider_large_description') != 'standard'){	?>
			<?php $toReplace =  $this->config->get('slider_large_description'); $font = str_replace("+", " ", $toReplace); ?>
			.slider-text-2 { font-family:<?php echo $font; ?> !important; }
			<?php } ?>
			<?php if( $this->config->get('slider_large_description_px') != ''){	?>
			.slider-text-2 { font-size:<?php echo $this->config->get('slider_large_description_px'); ?>px; }
			<?php } ?>
			
		<?php } ?>
		
		<?php if($this->config->get('colors_status') == '1') { ?>
		
			<?php if($this->config->get('headlines_text') != '') { ?>
			h1, h2, h3, h4, h5, h6 { color:#<?php echo $this->config->get('headlines_text'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('body_text') != '') { ?>
			body { color:#<?php echo $this->config->get('body_text'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('links') != '') { ?>
			a { color:#<?php echo $this->config->get('links'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('links_hover') != '') { ?>
			a:hover, header .top .top-right .language-currency .switcher .option ul li a:hover, .navigation_container nav > ul > li > .sub-menu > ul > li:hover > a, .navigation_container nav > ul > li > .sub-menu > ul > li > .sub-menu a:hover, .navigation_container nav > ul > li > .sub-menu > ul > li > .sub-menu a:hover, .box-category ul li a.active { color:#<?php echo $this->config->get('links_hover'); ?> !important; }
			header .top .top-right #cart_block .content ul.items-in-shopping-cart li .close:hover, div.notification .close:hover { background-color:#<?php echo $this->config->get('links_hover'); ?> !important; }
			.product-list > div:hover, .products-grid > div:hover { border:1px solid #<?php echo $this->config->get('links_hover'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('price') != '') { ?>
			header .top .top-right #cart_block .content ul.items-in-shopping-cart li .price, header .top .top-right #cart_block .content ul.items-in-shopping-cart li .price, header .top .top-right #cart_block .content .saldo-action .saldo ul li span, .cart-total td.right, .cart-info tbody .price, .cart-info tbody .total, .checkout-product tfoot .total, .product-list > div .price, .products-grid > div .price, .product-info .right .price p { color:#<?php echo $this->config->get('price'); ?> !important; }
			.product-list > div .cart a, .products-grid > div .sale, .product-list > div .sale, .product-info .right .add-to-cart, .products-grid > div .on-hover .add-to-cart { background-color:#<?php echo $this->config->get('price'); ?> !important;transition: opacity 0.2s;-webkit-transition: opacity 0.2s;-moz-transition: opacity 0.2s; }
			.product-list > div .cart a:hover, .product-info .right .add-to-cart:hover, .products-grid > div .on-hover .add-to-cart:hover { opacity:0.75 !important;filter: alpha(opacity=75);-moz-opacity:0.75;-khtml-opacity: 0.75; }
			<?php } ?>
			<?php if($this->config->get('product_name') != '') { ?>
			.name a { color:#<?php echo $this->config->get('product_name'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('custom_footer_background') != '') { ?>
			footer #custom-footer { background:#<?php echo $this->config->get('custom_footer_background'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('custom_footer_border') != '') { ?>
			footer #custom-footer { border-top:1px solid #<?php echo $this->config->get('custom_footer_border'); ?> !important;border-bottom:1px solid #<?php echo $this->config->get('custom_footer_border'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('custom_footer_headlines') != '') { ?>
			footer #custom-footer > div > div > div h3 { color:#<?php echo $this->config->get('custom_footer_headlines'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('custom_footer_body') != '') { ?>
			footer #custom-footer > div > div > div { color:#<?php echo $this->config->get('custom_footer_body'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('custom_footer_links') != '') { ?>
			footer #custom-footer > div > div > div a, ul.tweet_list li .tweet_text a { color:#<?php echo $this->config->get('custom_footer_links'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('shopping_cart_icon') != '') { ?>
			header .top .top-right #cart_block { background-color:#<?php echo $this->config->get('shopping_cart_icon'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('icon_wishlist') != '') { ?>
			header .top .top-right .wishlist { background-color:#<?php echo $this->config->get('icon_wishlist'); ?> !important;transition: opacity 0.2s;-webkit-transition: opacity 0.2s;-moz-transition: opacity 0.2s; }
			header .top .top-right .wishlist:hover { opacity:0.75 !important;filter: alpha(opacity=75);-moz-opacity:0.75;-khtml-opacity: 0.75; }
			<?php } ?>
			<?php if($this->config->get('categories_background') != '') { ?>
			.navigation_container { background:#<?php echo $this->config->get('categories_background'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('categories_border_top') != '') { ?>
			.navigation_container, .mobile-navigation .categories-mobile-links ul li { border-top:1px solid #<?php echo $this->config->get('categories_border_top'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('categories_links') != '') { ?>
			.navigation_container nav > ul > li > a, .mobile-navigation .click-menu, .mobile-navigation .categories-mobile-links > ul > li > a, .mobile-navigation .categories-mobile-links > ul > li > ul > li > a { color:#<?php echo $this->config->get('categories_links'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('categories_links_hover') != '') { ?>
			.navigation_container nav > ul > li:hover > a { color:#<?php echo $this->config->get('categories_links_hover'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('input_background') != '') { ?>
			input[type=text], input[type=password], textarea { background:#<?php echo $this->config->get('input_background'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('input_border') != '') { ?>
			input[type=text], input[type=password], textarea { border:1px solid #<?php echo $this->config->get('input_border'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('input_border_hover') != '') { ?>
			input[type=text]:focus, input[type=password]:focus, textarea:focus { border:1px solid #<?php echo $this->config->get('input_border_hover'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('background_page_title') != '') { ?>
			#page-title { background:#<?php echo $this->config->get('background_page_title'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('border_page_title') != '') { ?>
			#page-title { border-top:1px solid #<?php echo $this->config->get('border_page_title'); ?> !important;border-bottom:1px solid #<?php echo $this->config->get('border_page_title'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('background_banners') != '') { ?>
			.bg-banners { background:#<?php echo $this->config->get('background_banners'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('border_banners') != '') { ?>
			.bg-banners { border-bottom:1px solid #<?php echo $this->config->get('border_banners'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('border_5px_color') != '') { ?>
			header .top .top-right #cart_block .content, header .top .top-right .language-currency .switcher .option ul, .navigation_container nav > ul > li > .sub-menu, div.notification, .cart-module > div, .product-info .custom-block-product { border-top:5px solid #<?php echo $this->config->get('border_5px_color'); ?> !important; }
			.navigation_container nav > ul > li > .sub-menu .sub-menu { border-left:5px solid #<?php echo $this->config->get('border_5px_color'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('background_slider') != '') { ?>
			.fullwidthbanner-container { background:#<?php echo $this->config->get('background_slider'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('st_button_background') != '') { ?>
			.button, .button-slider2 { background:#<?php echo $this->config->get('st_button_background'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('st_button_background_hover') != '') { ?>
			.button:hover, .button-slider2:hover { background:#<?php echo $this->config->get('st_button_background_hover'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('st_button_font') != '') { ?>
			.button, .button-slider2 { color:#<?php echo $this->config->get('st_button_font'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('nd_button_background') != '') { ?>
			.button-two, .buttons .left .button, .buttons .center .button, .button-slider { background:#<?php echo $this->config->get('nd_button_background'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('nd_button_background_hover') != '') { ?>
			.button-two:hover, .buttons .left .button:hover, .buttons .center .button:hover, .button-slider:hover { background:#<?php echo $this->config->get('nd_button_background_hover'); ?> !important; }
			<?php } ?>
			<?php if($this->config->get('nd_button_font') != '') { ?>
			.button-two, .buttons .left .button, .buttons .center .button, .button-slider { color:#<?php echo $this->config->get('nd_button_font'); ?> !important; }
			<?php } ?>
			
		<?php } ?>
		
	</style>
		
	<?php } ?>
	
	<?php if ($stores) { ?>
	<script type="text/javascript"><!--
	$(document).ready(function() {
	<?php foreach ($stores as $store) { ?>
	$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
	<?php } ?>
	});
	//--></script>
	<?php } ?>
	<!--[if lt IE 9]> 
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> 
	<![endif]--> 
	<!--[if IE 7]>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/dilecta/css/ie7.css" />
	<![endif]-->
</head>
<body>

<div id="notification"></div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
	
	<header>
	
		<!-- Top -->
		
		<div class="top set-size clearfix">
		
			<?php if($logo) { ?>	
			<!-- Logo -->
			
			<h1 class="float-left"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>" title="<?php echo $name; ?>" /></a></h1>
			<?php } ?>
			
			<!-- Top Right -->
			
			<div class="top-right">
			
				<!-- Wishlist --><div class="wishlist"><a href="#">0</a></div>
				
				<?php echo $cart; ?>
				
				<!-- Language && Currency -->
				
				<div class="language-currency">
				
					<?php echo $language; ?>
					<?php echo $currency; ?>
					
				</div>
				
				<!-- End Language && Currency -->
				
				<!-- Menu -->
				
				<ul class="menu">
				<?php if ($logged) { ?>
                                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                <?php } ?>
    
					
					<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
					<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
				<?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>	<!--li><a href="#">Login</a></li>
					<li><a href="#">Create an account</a></li-->
				
				</ul>
			
				<!-- End Menu -->
								
			</div>
			
			<!-- End Top Right -->
					
		</div>
		
		<!-- End Top -->
		
		<!-- Navigation -->
			
		<?php $homet = false; 
			
			if(isset($this->request->get['route'])) {
			
				if($this->request->get['route'] == 'common/home') { $homet = true; }
			
			} else {
			
				$homet = true;
			
			} ?>
				
		<div class="navigation_container"<?php if($homet == true) { ?> style="-webkit-box-shadow:0px 1px 1px rgba(0, 0, 0, 0.15);-moz-box-shadow:0px 1px 1px rgba(0, 0, 0, 0.15);box-shadow:0px 1px 1px rgba(0, 0, 0, 0.15)"<?php } ?>>
			<div class="set-size clearfix">
				
				<?php if(!isset($language_id)) { $language_id = 1; } ?>
				<?php $custom_menu_status = $this->config->get('custom_menu_status'); ?>
				<?php $custom_menu_position = $this->config->get('custom_menu_position'); ?>
				<?php if($categories || $custom_menu_status[$language_id] == '1') { ?>		
				<nav>
				
					<ul>
					
						<li><a href="<?php echo $home; ?>" class="">Home</a></li>
						<?php if($custom_menu_status[$language_id] == '1' && $custom_menu_position[$language_id] == '1') { 
							
							for ($n = 1; $n <= 10; $n++) { 
								
								$custom_menus = $this->config->get('custom_menu');
								$custom_menu = $custom_menus[$language_id][$n];
								
								if(isset($custom_menu['text']) && isset($custom_menu['url'])) {
																																
									if($custom_menu['text'] != '' && $custom_menu['url'] != '') {
									
										echo '<li><a href="'.$custom_menu['url'].'">'.$custom_menu['text'].'</a></li>';
									
									}
									
								}
																	
							}
						
						 } ?>							
						<?php foreach ($categories as $category) { ?>
						<li><a href="<?php echo $category['href']; ?>"<?php if ($category['children']) { echo ' class="effect-hover"'; }?>><?php echo $category['name'];?></a>
							
							<?php if ($category['children']) { ?>
							<!-- SubMenu -->
							
							<div class="sub-menu column-<?php echo $category['column']; ?>">
								<div class="arrow-categories"></div>
								<ul>
									
									<?php $i = 0; for (; $i < count($category['children']); $i++) { ?>
									<li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
									<?php } ?>
								
								</ul>
							</div>
							<?php } ?>
						
						</li>
						<?php } ?>
						<?php if($custom_menu_status[$language_id] == '1' && $custom_menu_position[$language_id] != '1') { 
							
							for ($n = 1; $n <= 10; $n++) { 
								
								$custom_menus = $this->config->get('custom_menu');
								$custom_menu = $custom_menus[$language_id][$n];
								
								if(isset($custom_menu['text']) && isset($custom_menu['url'])) {
																																
									if($custom_menu['text'] != '' && $custom_menu['url'] != '') {
									
										echo '<li><a href="'.$custom_menu['url'].'">'.$custom_menu['text'].'</a></li>';
									
									}
									
								}
																	
							}
						
						 } ?>

					</ul>
				
				</nav>
				<?php } ?>
				
				<!-- Search -->
				
				<div class="search">
					
					<div class="button-search"></div>
    				<input type="text" name="search" class="enterkey autoclear" value="<?php echo $search; ?>" />
					
				</div>
				
				<!-- End Search -->
				
				<?php if($categories || $custom_menu_status[$language_id] == '1') { ?>		
				<!-- Mobile Navigation -->
				
				<div class="mobile-navigation">
				
					<div class="click-menu">MENU</div>
					
					<div class="categories-mobile-links">
					
						<ul>
							
							<?php if($custom_menu_status[$language_id] == '1' && $custom_menu_position[$language_id] == '1') { 
								
								for ($n = 1; $n <= 10; $n++) { 
									
									$custom_menus = $this->config->get('custom_menu');
									$custom_menu = $custom_menus[$language_id][$n];
									
									if(isset($custom_menu['text']) && isset($custom_menu['url'])) {
																																	
										if($custom_menu['text'] != '' && $custom_menu['url'] != '') {
										
											echo '<li class="mobile"><a href="'.$custom_menu['url'].'">'.$custom_menu['text'].'</a></li>';
										
										}
										
									}
																		
								}
							
							 } ?>			
							<?php foreach ($categories as $category) { ?>
							<li class="mobile"><?php if ($category['children']) { ?><div class="plus"></div><?php } ?><a href="<?php echo $category['href']; ?>"><?php echo $category['name'];?></a>
							
								<?php if ($category['children']) { ?>
								<ul>
								
									<?php $i = 0; for (; $i < count($category['children']); $i++) { ?>
									<li class="mobile"><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
									<?php } ?>
								
								</ul>
								<?php } ?>
								
							</li>
							<?php } ?>	
							<?php if($custom_menu_status[$language_id] == '1' && $custom_menu_position[$language_id] != '1') { 
								
								for ($n = 1; $n <= 10; $n++) { 
									
									$custom_menus = $this->config->get('custom_menu');
									$custom_menu = $custom_menus[$language_id][$n];
									
									if(isset($custom_menu['text']) && isset($custom_menu['url'])) {
																																	
										if($custom_menu['text'] != '' && $custom_menu['url'] != '') {
										
											echo '<li class="mobile"><a href="'.$custom_menu['url'].'">'.$custom_menu['text'].'</a></li>';
										
										}
										
									}
																		
								}
							
							 } ?>			

						</ul>
					
					</div>
				
				</div>
				
				<!-- End Mobile Navigation -->
				<?php } ?>
		
			</div>
		</div>
		
		<!-- End Navigation -->
			
	</header>
	
	<!-- SLIDER -->
	
	<?php 
	
		if($homet == true) { 
	
			if(isset($language_id)) { 
						
				if($this->config->get('slider_general_status') == '1') { ?>
				
	<?php if($this->config->get('slider_layout_type') == '1') { ?>
	
	<div class="slider-fixed">
	
		<div class="rounding-top"></div>
	
	<?php } ?>
				
			<div class="fullwidthbanner-container">
					<div class="fullwidthbanner">
						<ul>
						
	<?php 
	
					for ($i = 1; $i <= 6; $i++) { 
										
						$slider = $this->config->get('slider'); 
						
						if(isset($slider[$i][$language_id]['status'])) {
														
							if($slider[$i][$language_id]['status'] == '1') {
								
								$image = false; $description = false; $link = false;
								
								if(isset($slider[$i][$language_id]['slider'])) {
								
									if($slider[$i][$language_id]['slider'] != '') {
									
										$image = $slider[$i][$language_id]['slider'];
									
									}
								
								}
								
								for ($m = 1; $m <= 6; $m++) {
								
									if($slider[$i][$language_id][$m]['status'] == '1') {
										
										$style = false;
										
										if($slider[$i][$language_id][$m]['style'] == 'small_header') { $style = ' slider-text-1'; }
										if($slider[$i][$language_id][$m]['style'] == 'small_header_align_right') { $style = ' slider-text-4'; }
										if($slider[$i][$language_id][$m]['style'] == 'large_description') { $style = ' slider-text-2'; }
										if($slider[$i][$language_id][$m]['style'] == 'medium_description') { $style = ' slider-text-3'; }
										if($slider[$i][$language_id][$m]['style'] == 'medium_description_align_right') { $style = ' slider-text-3 align-right'; }
										
										$description .= '<div class="caption'.$style.' lfl stl" data-x="'.$slider[$i][$language_id][$m]['x'].'" data-y="'.$slider[$i][$language_id][$m]['y'].'" data-speed="'.$slider[$i][$language_id][$m]['speed'].'" data-start="'.$slider[$i][$language_id][$m]['start'].'" data-easing="'.$slider[$i][$language_id][$m]['easing'].'" data-endspeed="'.$slider[$i][$language_id][$m]['speed'].'" data-endeasing="'.$slider[$i][$language_id][$m]['endeasing'].'">'.html_entity_decode($slider[$i][$language_id][$m]['text']).'</div>';
									
									}
								
								}
								
								if(isset($slider[$i][$language_id]['link'])) {
								
									if($slider[$i][$language_id]['link'] != '') {
									
										$link = ' data-link="'.$slider[$i][$language_id]['link'].'"';
									
									}
								
								}
								
								echo '<li data-transition="'.$slider[$i][$language_id]['transition_effect'].'" data-slotamount="10" data-masterspeed="300"'.$link.'><img src="image/'.$image.'" data-fullwidthcentering="on">'.$description.'</li>';
							
							}
						
						} // end if(isset($slider[$i][$language_id]['status']))
			
					} // end for ($i = 1; $i <= 6; $i++) { 
					
					
	?>
	
						</ul>

						<div class="tp-bannertimer"></div>
					</div>
				</div>
				
				<style type="text/css">
				
					.fullwidthbanner-container { max-height:<?php echo $this->config->get('slider_height'); ?>px !important; }
				
				</style>
				
	<?php if($this->config->get('slider_layout_type') == '1') { ?>
	
			<div class="rounding-bottom"></div>
				
		 </div>
	
	<?php } ?>
				
			<!--
			##############################
			 - ACTIVATE THE BANNER HERE -
			##############################
			-->
			<script type="text/javascript">

				$(document).ready(function() {

				if ($.fn.cssOriginal!=undefined)
					$.fn.css = $.fn.cssOriginal;

					$('.fullwidthbanner').revolution(
						{
							delay:<?php echo $this->config->get('slider_speed')*1000; ?>,
							startwidth:1140,
							startheight:<?php echo $this->config->get('slider_height'); ?>,

							onHoverStop:"on",						// Stop Banner Timet at Hover on Slide on/off

							thumbWidth:100,							// Thumb With and Height and Amount (only if navigation Tyope set to thumb !)
							thumbHeight:50,
							thumbAmount:3,

							hideThumbs:0,
							navigationType:"bullet",					//bullet, thumb, none, both	 (No Shadow in Fullwidth Version !)
							navigationArrows:"verticalcentered",		//nexttobullets, verticalcentered, none
							navigationStyle:"round",				//round,square,navbar

							touchenabled:"on",						// Enable Swipe Function : on/off

							navOffsetHorizontal:0,
							navOffsetVertical:20,

							stopAtSlide:-1,							// Stop Timer if Slide "x" has been Reached. If stopAfterLoops set to 0, then it stops already in the first Loop at slide X which defined. -1 means do not stop at any slide. stopAfterLoops has no sinn in this case.
							stopAfterLoops:-1,						// Stop Timer if All slides has been played "x" times. IT will stop at THe slide which is defined via stopAtSlide:x, if set to -1 slide never stop automatic

							hideCaptionAtLimit:0,					// It Defines if a caption should be shown under a Screen Resolution ( Basod on The Width of Browser)
							hideAllCaptionAtLilmit:0,				// Hide all The Captions if Width of Browser is less then this value
							hideSliderAtLimit:0,					// Hide the whole slider, and stop also functions if Width of Browser is less than this value


							fullWidth:"on",

							shadow:0								//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows -  (No Shadow in Fullwidth Version !)

						});




			});
			</script>
				
<?php		
					
				
				} // end if($this->config->get('slider_general_status') == '1') {
	
			} // end if isset language_id
		
		} // end if homet == true
	
	?>
	
	<!-- END SLIDER -->
	
<?php if ($error) { ?>
	<div style="padding:20px">
    	<div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    </div>
<?php } ?>