<?php echo $header; ?>
<?php

function get_fonts() {
	$fonts = array(
		'standard',
		'Abel',
		'Abril Fatface',
		'Aclonica',
		'Acme',
		'Actor',
		'Adamina',
		'Aguafina Script',
		'Aladin',
		'Aldrich',
		'Alex Brush',
		'Alfa Slab One',
		'Alice',
		'Alike Angular',
		'Alike', 
		'Allan',
		'Allerta Stencil',
		'Allerta',
		'Almendra SC',
		'Almendra',
		'Amaranth',
		'Amatic SC',
		'Andada',
		'Andika',
		'Annie Use Your Telescope',
		'Anonymous Pro',
		'Antic',
		'Anton',
		'Arapey',
		'Arbutus',
		'Architects Daughter',
		'Arial',
		'Arimo',
		'Arizonia',
		'Armata',
		'Artifika',
		'Arvo',
		'Asset',
		'Astloch',
		'Asul',
		'Atomic Age',
		'Aubrey',
		'Bad Script',
		'Balthazar',
		'Bangers',
		'Basic',
		'Baumans',
		'Belgrano',
		'Bentham',
		'Bevan',
		'Bigshot One',
		'Bilbo Swash Caps',
		'Bilbo',
		'Bitter',
		'Black Ops One',
		'Bonbon',
		'Boogaloo',
		'Bowlby One SC',
		'Bowlby One',
		'Brawler',
		'Bree Serif',
		'Bubblegum Sans',
		'Buda',
		'Buenard',
		'Butcherman',
		'Cabin Condensed',
		'Cabin Sketch',
		'Cabin Sketch',
		'Cabin',
		'Caesar Dressing',
		'Cagliostro',
		'Calligraffitti',
		'Cambo',
		'Candal',
		'Cantarell',
		'Cardo',
		'Carme',
		'Carter One',
		'Caudex',
		'Cedarville Cursive',
		'Ceviche One',
		'Changa One',
		'Chango',
		'Cherry Cream Soda',
		'Chewy',
		'Chicle',
		'Chivo',
		'Coda',
		'Comfortaa',
		'Coming Soon',
		'Concert One',
		'Contrail One',
		'Convergence',
		'Cookie',
		'Copse',
		'Corben',
		'Corben',
		'Cousine',
		'Coustard',
		'Covered By Your Grace',
		'Crafty Girls',
		'Creepster',
		'Crete Round',
		'Crimson Text',
		'Crushed',
		'Cuprum',
		'Damion',
		'Dancing Script',
		'Dawning of a New Day',
		'Days One',
		'Delius Swash Caps',
		'Delius Unicase',
		'Delius',
		'Devonshire',
		'Didact Gothic',
		'Dorsa',
		'Dr Sugiyama',
		'Droid Sans Mono',
		'Droid Sans',
		'Droid Serif',
		'Duru Sans',
		'Dynalight',
		'EB Garamond',
		'Eater',
		'Electrolize',
		'Engagement',
		'Enriqueta',
		'Expletus Sans',
		'Fanwood Text',
		'Fascinate Inline',
		'Fascinate',
		'Federant',
		'Federo',
		'Fjord One',
		'Flamenco',
		'Flavors',
		'Fondamento',
		'Fontdiner Swanky',
		'Forum',
		'Francois One',
		'Fresca',
		'Frijole',
		'Fugaz One',
		'Galdeano',
		'Gentium Basic',
		'Gentium Book Basic',
		'Geo',
		'Georgia',
		'Geostar Fill',
		'Geostar',
		'Give You Glory',
		'Gloria Hallelujah',
		'Goblin One',
		'Gochi Hand',
		'Goudy Bookletter 1911',
		'Gravitas One',
		'Gruppo',
		'Habibi',
		'Hammersmith One',
		'Handlee',
		'Herr Von Muellerhoff',
		'Holtwood One SC',
		'Homemade Apple',
		'IM Fell DW Pica SC',
		'IM Fell Double Pica SC',
		'IM Fell Double Pica',
		'IM Fell English SC',
		'IM Fell English',
		'IM Fell French Canon SC',
		'IM Fell French Canon',
		'IM Fell Great Primer SC',
		'IM Fell Great Primer',
		'Iceland',
		'Inconsolata',
		'Inder',
		'Indie Flower',
		'Irish Grover',
		'Irish Growler',
		'Istok Web',
		'Italianno',
		'Jockey One',
		'Josefin Sans',
		'Judson',
		'Julee',
		'Jura',
		'Just Another Hand',
		'Just Me Again Down Here',
		'Kameron',
		'Kelly Slab',
		'Kenia',
		'Knewave',
		'Kranky',
		'Kreon',
		'Kristi',
		'La Belle Aurore',
		'Lancelot',
		'League Script',
		'Leckerli One',
		'Lekton',
		'Lemon',
		'Limelight',
		'Linden Hill',
		'LMRomanCaps10-Regular',
		'Lobster Two',
		'Lobster',		
		'Lora',
		'Love Ya Like A Sister',
		'Loved by the King',
		'Luckiest Guy',
		'Maiden Orange',
		'Mako',
		'Marck Script',
		'Marko One',
		'Marmelad',
		'Marvel',
		'Mate SC',
		'Mate',
		'Maven Pro',
		'Meddon',
		'MedievalSharp',
		'Medula One',
		'Megrim',
		'Merienda One',
		'Merriweather',
		'Metamorphous',
		'Metrophobic',
		'Michroma',
		'Miltonian Tattoo',
		'Miltonian',
		'Miniver',
		'Miss Fajardose',
		'Miss Saint Delafield',
		'Modern Antiqua',
		'ModernNo.20Regular',
		'Molengo',
		'Monofett',
		'Monoton',
		'Monsieur La Doulaise',
		'Montez',
		'Montserrat',
		'Mountains of Christmas',
		'Mr Bedford',
		'Mr Dafoe',
		'Mr De Haviland',
		'Mrs Sheppards',
		'Muli',
		'Neucha',
		'Neuton',
		'News Cycle',
		'Niconne',
		'Nixie One',
		'Nobile',
		'Nokora',
		'Nosifer',
		'Noticia Text',
		'Nova Cut',
		'Nova Flat',
		'Nova Mono',
		'Nova Oval',
		'Nova Round',
		'Nova Script',
		'Nova Slim',
		'Nova Square',
		'Numans',
		'Nunito',
		'Old Standard TT',
		'Orbitron 500',
		'Orbitron 900',
		'Original Surfer',
		'Oswald',
		'Impact',
		'Over the Rainbow',
		'Overlock SC',
		'Overlock',
		'Ovo',
		'PT Sans Caption',
		'PT Sans Narrow',
		'PT Sans',
		'PT Serif Caption',
		'PT Serif',
		'Pacifico',
		'Passero One',
		'Passion One',
		'Patrick Hand',
		'Patua One',
		'Paytone One',
		'Permanent Marker',
		'Petrona',
		'Philosopher',
		'Piedra',
		'Pinyon Script',
		'Plaster',
		'Play',
		'Playball',
		'Playfair Display',
		'Podkova',
		'Poller One',
		'Poly',
		'Pompiere',
		'Prata',
		'Prociono',
		'Puritan',
		'Quantico',
		'Quattrocento Sans',
		'Quattrocento',
		'Questrial',
		'Quicksand',
		'Qwigley',
		'Radley',
		'Raleway',
		'Rammetto One',
		'Rancho',
		'Rationale',
		'Redressed',
		'Reenie Beanie',
		'Ribeye Marrow',
		'Ribeye',
		'Righteous',
		'Rochester', 
		'Rock Salt',
		'Rokkitt',
		'Rosario',
		'Ruge Boogie',
		'Ruslan Display',
		'Ruthie',
		'Sail',
		'Salsa',
		'Sancreek',
		'Sansita One',
		'Sarina',
		'Satisfy',
		'Schoolbell',
		'Shadows Into Light',
		'Shanti',
		'Short Stack',
		'Sigmar One',
		'Signika Negative',
		'Signika',
		'Six Caps',
		'Slackey',
		'Smokum',
		'Smythe',
		'Snippet', 
		'Sofia',
		'Sorts Mill Goudy',
		'Special Elite',
		'Spicy Rice',
		'Spinnaker',
		'Spirax',
		'Squada One',
		'Stardos Stencil',
		'Stint Ultra Condensed',
		'Stoke',
		'Sue Ellen Francisco',
		'Sunshiney',
		'Supermercado One',
		'Swanky and Moo Moo',
		'Swis721CnBTBold',
		'Syncopate',
		'Tahoma',
		'Tangerine',
		'Terminal Dosis Light',
		'Terminal Dosis',
		'The Girl Next Door',
		'Tinos',
		'Times New Roman',
		'Trade Winds',
		'Trykker',
		'Tulpen One', 
		'Ubuntu Condensed',
		'Ubuntu Mono',
		'Ubuntu',
		'Ultra',
		'Uncial Antiqua',
		'UnifrakturCook',
		'UnifrakturMaguntia',
		'Unkempt',
		'Unlock',
		'Unna',
		'VT323',
		'Varela Round',
		'Varela',
		'Vast Shadow',
		'Vibur',
		'Vidaloka',
		'Viga',
		'Volkhov', 
		'Vollkorn',
		'Voltaire',
		'Waiting for the Sunrise',
		'Wallpoet',
		'Walter Turncoat',
		'Wire One',
		'Yanone Kaffeesatz',
		'Yellowtail',
		'Yeseva One',
		'Yesteryear',
		'Zeyada'		
	);
	return $fonts;
}
?>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/dilecta_options.css" />
<script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>

<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning): ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php endif ?>
  <?php if ($success): ?>
  <div class="success"><?php echo $success; ?></div>
  <?php endif; ?>

<!-- Theme Options -->

<div class="set-size" id="theme-options">

	<h3>Dilecta Theme Options</h3>
	
	<!-- Content -->
	
	<div class="content">
	
		<div>
		
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">	
			
				<!-- MULTISTORE -->

			    <div id="tb_store_select">
			        <label class="inline">Store</label>
			        <select name="dilecta_store_id" id="dilecta_store_id">
			          <?php foreach ($stores as $store): ?>
			          <option value="<?php echo HTTPS_SERVER . 'index.php?route=module/dilecta&store_id=' . $store['store_id'] . '&token=' . $this->session->data['token']; ?>"<?php if($store_id == $store['store_id']) echo ' selected="selected"'; ?>><?php echo $store['name']; ?></option>
			          <?php endforeach; ?>
			        </select>
			    </div>
			    
			    <input type="hidden" name="store_id" value="<?php echo $store_id; ?>" />
			    
			    <script type="text/javascript">
					 $(document).ready(function (){
					 
						  $("#dilecta_store_id").bind("change", function() {
						    window.location = $(this).val();
						  });
						  
					 });
			    </script>
			    
			    <!-- END MULTISTORE -->
				
				<!-- Tabs -->
				
				<div class="bg-tabs">
				
					<!-- General, Design, Footer TABS -->
					
					<div id="tabs" class="htabs main-tabs">
					
						<a href="#tab_general" id="general"><span>General</span></a>
						<a href="#tab_design" id="design"><span>Design</span></a>
						<a href="#tab_footer" id="tfooter"><span>Footer</span></a>
						<a href="#tab_payment" id="tpayment"><span>Payment</span></a>
						<a href="#tab_custom_code" id="tcustomcode"><span>Custom code</span></a>
						<a href="#tab_custom_menu" id="tcustommenu"><span>Custom menu</span></a>
						<a href="#tab_custom_block" id="tcustomblock"><span>Custom block</span></a>
					
					</div>
					
					<!-- End General, Design Footer Tabs -->
					
					<!-- General -->
					
					<div id="tab_general" class="tab-content">
					
						<!-- Status -->
						
						<?php if($general_status == 1) { echo '<div class="status status-on" title="1" rel="general_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="general_status"></div>'; } ?>
						
						<input name="general_status" value="<?php echo $general_status; ?>" id="general_status" type="hidden" />
						
						<!-- Float General -->
						
						<div id="general" style="float:left;width:330px">
						
						<!-- Title -->
						
						<h4>General settings</h4>
						
						<!-- Input -->
						
						<div class="input">
						
							<p>Language direction</p>
							<?php $i = 1; foreach ($languages as $language): ?>
							<select name="language_direction[<?php echo $language['language_id']; ?>]" class="language-direction" <?php if($i == 1) { echo 'style="display:block"'; } else { echo 'style="display:none"'; } ?>>
								
								<?php $lang_id = $language['language_id']; 
								if(!isset($language_direction[$lang_id])) { $language_direction[$lang_id] = 0; } ?>
								<option value="0"<?php if($language_direction[$lang_id] == '0'){echo ' selected="selected"';} ?>>LTR</option>
								<option value="1"<?php if($language_direction[$lang_id] == '1'){echo ' selected="selected"';} ?>>RTL</option>
							
							</select>
							<?php $i++; endforeach; ?>
							<div class="change-direction" style="padding:14px 0px 0px 158px;clear:both">
								<?php $i = 1; foreach ($languages as $language): ?>
								<a href="#" id="<?php echo $language['language_id']; ?>" <?php if($i == 1) { echo 'class="active-direction"'; } ?>><img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /></a>
								<?php $i++; endforeach; ?>
							</div>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						<!-- Input -->
						
						<div class="input">
						
							<p>Product number per row full width</p>
							<select name="product_per_pow">
							
								<option value="3"<?php if($product_per_pow =='3'){echo ' selected="selected"';} ?>>3</option>
								<option value="4"<?php if($product_per_pow =='4' || $product_per_pow < 3){echo ' selected="selected"';} ?>>4</option>
								<option value="5"<?php if($product_per_pow =='5'){echo ' selected="selected"';} ?>>5</option>
								<option value="6"<?php if($product_per_pow =='6'){echo ' selected="selected"';} ?>>6</option>
								<option value="7"<?php if($product_per_pow =='7'){echo ' selected="selected"';} ?>>7</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						
						<!-- Input -->
						
						<div class="input">
						
							<p>Product number per row with column</p>
							<select name="product_per_pow2">
							
								<option value="2"<?php if($product_per_pow2 =='2'){echo ' selected="selected"';} ?>>2</option>
								<option value="3"<?php if($product_per_pow2 =='3'|| $product_per_pow < 2){echo ' selected="selected"';} ?>>3</option>
								<option value="4"<?php if($product_per_pow2 =='4'){echo ' selected="selected"';} ?>>4</option>
								<option value="5"<?php if($product_per_pow2 =='5'){echo ' selected="selected"';} ?>>5</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						
						<!-- Input -->
						
						<div class="input">
						
							<p>Column position</p>
							<select name="column_position">
							
								<option value="0"<?php if($column_position =='0'){echo ' selected="selected"';} ?>>Left</option>
								<option value="1"<?php if($column_position =='1'){echo ' selected="selected"';} ?>>Right</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						
 						<!-- Input -->	
						
						<div class="input">
						
							<p>Refine search style</p>
							<select name="refine_search_style">
							
			              <option value="0" <?php if($refine_search_style =='0'){echo ' selected="selected"';} ?>>With images</option>
			              <option value="1" <?php if($refine_search_style =='1'){echo ' selected="selected"';} ?>>Text only</option>
			              <option value="2" <?php if($refine_search_style =='2'){echo ' selected="selected"';} ?>>Disable</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						
						<!-- Input -->
						
						<div class="input">
						
							<p>Default list/grid</p>
							<select name="default_list_grid">
							
			              <option value="0" <?php if($default_list_grid =='0'){echo ' selected="selected"';} ?>>List</option>
			              <option value="1" <?php if($default_list_grid =='1'){echo ' selected="selected"';} ?>>Grid</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						<!-- Input -->
						
						<div class="input">
						
							<p>Product image zoom</p>
							<select name="product_image_zoom">
							
			              <option value="0" <?php if($product_image_zoom =='0'){echo ' selected="selected"';} ?>>cloud zoom</option>
			              <option value="1" <?php if($product_image_zoom =='1'){echo ' selected="selected"';} ?>>default</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						<!-- Input -->
						
						<div class="input">
						
							<p>Responsive layout</p>
							<select name="responsive_layout">
							
			              <option value="0" <?php if($responsive_layout =='0'){echo ' selected="selected"';} ?>>enabled</option>
			              <option value="1" <?php if($responsive_layout =='1'){echo ' selected="selected"';} ?>>disabled</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						<!-- Input -->
						
						<div class="input">
						
							<p>Refine Search Image Size:</p>
							<div style="float:right;width:170px">
							
								<input type="text" name="refine_image_width" style="width:30px" value="<?php echo $refine_image_width; ?>" />
								<div style="float:left;width:auto;padding-right:15px;position:relative;margin-left:-5px;padding-top:5px"> x </div>
								<input type="text" name="refine_image_height" style="width:30px" value="<?php echo $refine_image_height; ?>" />
							
							</div>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
						
						</div>
						
						<!-- End Float General -->
						
						<!-- Functions -->
						
						<div class="functions">
						
							<h4>Functions</h4>
						
							<!-- Input -->
							
							<div class="input">
								
								<p>Ex. Tax price</p>
								<?php if($ex_tax_price == 0 && $ex_tax_price != '') { echo '<div class="status status-off" title="0" rel="ex_tax_price"></div>'; } else { echo '<div class="status status-on" title="1" rel="ex_tax_price"></div>'; } ?>
								
								<input name="ex_tax_price" value="<?php echo $ex_tax_price; ?>" id="ex_tax_price" type="hidden" />
								
								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
								
								<p>Reward points</p>
								<?php if($reward_points == 0 && $reward_points != '') { echo '<div class="status status-off" title="0" rel="reward_points"></div>'; } else { echo '<div class="status status-on" title="1" rel="reward_points"></div>'; } ?>
								
								<input name="reward_points" value="<?php echo $reward_points; ?>" id="reward_points" type="hidden" />
								
								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
								
								<p>Product social share</p>
								<?php if($product_social_share == 0 && $product_social_share != '') { echo '<div class="status status-off" title="0" rel="product_social_share"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_social_share"></div>'; } ?>
								
								<input name="product_social_share" value="<?php echo $product_social_share; ?>" id="product_social_share" type="hidden" />
								
								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
								
								<p>Product scroll:</p>

								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
								
								<p>&nbsp;&nbsp;&nbsp;&nbsp;- latest</p>
								<?php if($product_scroll_latest == 0 && $product_scroll_latest != '') { echo '<div class="status status-off" title="0" rel="product_scroll_latest"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_latest"></div>'; } ?>
								
								<input name="product_scroll_latest" value="<?php echo $product_scroll_latest; ?>" id="product_scroll_latest" type="hidden" />
								
								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
								
								<p>&nbsp;&nbsp;&nbsp;&nbsp;- featured</p>
								<?php if($product_scroll_featured == 0 && $product_scroll_featured != '') { echo '<div class="status status-off" title="0" rel="product_scroll_featured"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_featured"></div>'; } ?>
								
								<input name="product_scroll_featured" value="<?php echo $product_scroll_featured; ?>" id="product_scroll_featured" type="hidden" />
								
								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
								
								<p>&nbsp;&nbsp;&nbsp;&nbsp;- bestsellers</p>
								<?php if($product_scroll_bestsellers == 0 && $product_scroll_bestsellers != '') { echo '<div class="status status-off" title="0" rel="product_scroll_bestsellers"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_bestsellers"></div>'; } ?>
								
								<input name="product_scroll_bestsellers" value="<?php echo $product_scroll_bestsellers; ?>" id="product_scroll_bestsellers" type="hidden" />
								
								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
								
								<p>&nbsp;&nbsp;&nbsp;&nbsp;- specials</p>
								<?php if($product_scroll_specials == 0 && $product_scroll_specials != '') { echo '<div class="status status-off" title="0" rel="product_scroll_specials"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_specials"></div>'; } ?>
								
								<input name="product_scroll_specials" value="<?php echo $product_scroll_specials; ?>" id="product_scroll_specials" type="hidden" />
								
								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
								
								<p>&nbsp;&nbsp;&nbsp;&nbsp;- related</p>
								<?php if($product_scroll_related == 0 && $product_scroll_related != '') { echo '<div class="status status-off" title="0" rel="product_scroll_related"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_related"></div>'; } ?>
								
								<input name="product_scroll_related" value="<?php echo $product_scroll_related; ?>" id="product_scroll_related" type="hidden" />
								
								<div class="clear"></div>
								
							</div>
							
							<!-- End Input -->
												
						</div>
						
						<!-- End Functions -->
				
					</div>
					
					<!-- End General -->
					
					<!-- Design -->
					
					<div id="tab_design" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_design" class="htabs tabs-design">
						
							<a href="#tab_font" id="tfont"><span>Font</span></a>
							<a href="#tab_colors" id="tcolors"><span>Colors</span></a>
						
						</div>
						
						<!-- Font, colors, background -->
						
						<!-- Font -->
					
						<div id="tab_font" class="tab-content">
						
							<!-- Status -->
							
							<?php if($font_status == 1) { echo '<div class="status status-on" title="1" rel="font_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="font_status"></div>'; } ?>
							
							<input name="font_status" value="<?php echo $font_status; ?>" id="font_status" type="hidden" />
							
							<!-- Title -->
							
							<h4>Font settings</h4>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Body Font</p>
								<select name="body_font">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($body_font == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

								</select>
								<select name="body_font_px" style="width:80px;margin-right:25px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($body_font_px==$x || ($x == 12 && $body_font_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								<p style="width:60px">Smaller</p>
								<select name="body_font_smaller_px" style="width:80px;margin-right:35px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($body_font_smaller_px==$x || ($x == 11 && $body_font_smaller_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Categories bar</p>
								<select name="categories_bar">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($categories_bar == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
																
								</select>
								<select name="categories_bar_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($categories_bar_px==$x || ($x == 14 && $categories_bar_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Price</p>
								<select name="custom_price">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($custom_price == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
								
								</select>
								<p style="width:51px">Big</p>
								<select name="custom_price_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px==$x || ($x == 40 && $custom_price_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								<p style="width:71px">Medium</p>
								<select name="custom_price_px_medium" style="width:80px;margin-right:0px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px_medium==$x || ($x == 17 && $custom_price_px_medium < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								
								<div class="clear" style="height:15px"></div>
								
								<div style="float:left;width:340px;height:10px"></div>
								
								<p style="width:51px">Small</p>
								<select name="custom_price_px_small" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px_small==$x || ($x == 12 && $custom_price_px_small < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								<p style="width:71px">Old price</p>
								<select name="custom_price_px_old_price" style="width:80px;margin-right:0px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px_old_price==$x || ($x == 12 && $custom_price_px_old_price < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->

							
							<!-- Input -->
							
							<div class="input">
							
								<p>Product name</p>
								<select name="product_name_font">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($product_name_font == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
							
								</select>
								<select name="product_name_font_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($product_name_font_px==$x || ($x == 12 && $product_name_font < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
								
							<!-- Input -->
							
							<div class="input">
							
								<p>Headlines</p>
								<select name="headlines">

								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($headlines == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
						
								</select>
								<select name="headlines_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($headlines_px==$x || ($x == 18 && $headlines_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Footer headlines</p>
								<select name="footer_headlines">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($footer_headlines == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
																	
								</select>
								<select name="footer_headlines_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($footer_headlines_px==$x || ($x == 18 && $footer_headlines_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Page name</p>
								<select name="page_name">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($page_name == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

								</select>
								<select name="page_name_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($page_name_px==$x || ($x == 30 && $page_name_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
							
								<p>Button</p>
								<select name="button_font">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($button_font == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

							</select>
								<select name="button_font_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($button_font_px==$x || ($x == 12 && $button_font_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
							
								<p>Slider medium description</p>
								<select name="slider_medium_description">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($slider_medium_description == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

								</select>
								<select name="slider_medium_description_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 70; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($slider_medium_description_px==$x || ($x == 45 && $slider_medium_description_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
							
								<p>Slider large description</p>
								<select name="slider_large_description">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($slider_large_description == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

								</select>
								<select name="slider_large_description_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 100; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($slider_large_description_px==$x || ($x == 80 && $slider_large_description_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
													
						</div>
					
						<!-- End Font -->
						
						<!-- Colors -->
						
						<div id="tab_colors" class="tab-content">
						
							<h4>Colors settings</h4>
							
							<!-- Select color settings -->
							
							<ul class="select-color-settings">
							
								<li><a href="javascript:;" rel="0"<?php if($dilecta_color < 1) { echo ' class="active"'; } ?>><img src="view/image/dilecta/version_1.png" alt=""></a></li>
								<li><a href="javascript:;" rel="1"<?php if($dilecta_color == 1) { echo ' class="active"'; } ?>><img src="view/image/dilecta/version_2.png" alt=""></a></li>
								<li><a href="javascript:;" rel="2"<?php if($dilecta_color == 2) { echo ' class="active"'; } ?>><img src="view/image/dilecta/version_3.png" alt=""></a></li>
								<li><a href="javascript:;" rel="3"<?php if($dilecta_color == 3) { echo ' class="active"'; } ?>><img src="view/image/dilecta/version_4.png" alt=""></a></li>
								<li><a href="javascript:;" rel="4"<?php if($dilecta_color == 4) { echo ' class="active"'; } ?>><img src="view/image/dilecta/version_5.png" alt=""></a></li>
								<li><a href="javascript:;" rel="5"<?php if($dilecta_color == 5) { echo ' class="active"'; } ?>><img src="view/image/dilecta/version_6.png" alt=""></a></li>
							
							</ul>
							<input name="dilecta_color" value="<?php echo $dilecta_color; ?>" id="dilecta_color" type="hidden" />
							
							<!-- Status -->
							
							<?php if($colors_status == 1) { echo '<div class="status status-on" title="1" rel="colors_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="colors_status"></div>'; } ?>
							
							<input name="colors_status" value="<?php echo $colors_status; ?>" id="colors_status" type="hidden" />
							
							<!-- Colors Left -->
							
							<div class="colors_left">
								
								<h5>Body fonts</h5>
								
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Headlines</p>
									<div><input type="text" value="<?php echo $headlines_text; ?>" id="headlines_text" name="headlines_text" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Body text</p>
									<div><input type="text" value="<?php echo $body_text; ?>" id="body_text" name="body_text" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Links</p>
									<div><input type="text" value="<?php echo $links; ?>" id="links" name="links" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Links hover</p>
									<div><input type="text" value="<?php echo $links_hover; ?>" id="links_hover" name="links_hover" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Price</p>
									<div><input type="text" value="<?php echo $price; ?>" id="price" name="price" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Product name</p>
									<div><input type="text" value="<?php echo $product_name; ?>" id="product_name" name="product_name" /></div>
								
								</div>
								
								<!-- Input -->
									
							</div>
							
							<!-- End Colors Left -->
							
							<!-- Colors Center -->
							
							<div class="colors_center">
								
								<h5>Custom Footer</h5>
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background</p>
									<div><input type="text" value="<?php echo $custom_footer_background; ?>" id="custom_footer_background" name="custom_footer_background" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Border</p>
									<div><input type="text" value="<?php echo $custom_footer_border; ?>" id="custom_footer_border" name="custom_footer_border" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Headlines</p>
									<div><input type="text" value="<?php echo $custom_footer_headlines; ?>" id="custom_footer_headlines" name="custom_footer_headlines" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Body</p>
									<div><input type="text" value="<?php echo $custom_footer_body; ?>" id="custom_footer_body" name="custom_footer_body" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Links</p>
									<div><input type="text" value="<?php echo $custom_footer_links; ?>" id="custom_footer_links" name="custom_footer_links" /></div>
								
								</div>
								
								<!-- Input -->
																
							</div>
							
							<!-- End Colors Center -->
							
							<!-- Colors Right -->
							
							<div class="colors_right">
								
								<h5>Header</h5>
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Shopping cart icon</p>
									<div><input type="text" value="<?php echo $shopping_cart_icon; ?>" id="shopping_cart_icon" name="shopping_cart_icon" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Wishlist icon</p>
									<div><input type="text" value="<?php echo $icon_wishlist; ?>" id="icon_wishlist" name="icon_wishlist" /></div>
								
								</div>
								
								<!-- Input -->
									
									
							</div>
							
							<!-- End Colors Right -->
							
							<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
							
							<!-- Colors Left -->
							
							<div class="colors_left">
								
								<h5>Categories</h5>
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background</p>
									<div><input type="text" value="<?php echo $categories_background; ?>" id="categories_background" name="categories_background" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Border top</p>
									<div><input type="text" value="<?php echo $categories_border_top; ?>" id="categories_border_top" name="categories_border_top" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Categories links</p>
									<div><input type="text" value="<?php echo $categories_links; ?>" id="categories_links" name="categories_links" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Categories links hover</p>
									<div><input type="text" value="<?php echo $categories_links_hover; ?>" id="categories_links_hover" name="categories_links_hover" /></div>
								
								</div>
								
								<!-- Input -->
																		
							</div>
							
							<!-- End Colors Left -->
							<!-- Colors Center -->
							
							<div class="colors_center">
								
								<h5>Inputs</h5>
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background</p>
									<div><input type="text" value="<?php echo $input_background; ?>" id="input_background" name="input_background" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Border</p>
									<div><input type="text" value="<?php echo $input_border; ?>" id="input_border" name="input_border" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Border hover</p>
									<div><input type="text" value="<?php echo $input_border_hover; ?>" id="input_border_hover" name="input_border_hover" /></div>
								
								</div>
								
								<!-- Input -->
																
							</div>
							
							<!-- End Colors Center -->
							
							<!-- Colors Right -->
							
							<div class="colors_right">
								
								<h5>Rest elements</h5>
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background page title</p>
									<div><input type="text" value="<?php echo $background_page_title; ?>" id="background_page_title" name="background_page_title" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Border page title</p>
									<div><input type="text" value="<?php echo $border_page_title; ?>" id="border_page_title" name="border_page_title" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background banners</p>
									<div><input type="text" value="<?php echo $background_banners; ?>" id="background_banners" name="background_banners" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Border banners</p>
									<div><input type="text" value="<?php echo $border_banners; ?>" id="border_banners" name="border_banners" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Border 5px color</p>
									<div><input type="text" value="<?php echo $border_5px_color; ?>" id="border_5px_color" name="border_5px_color" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background slider</p>
									<div><input type="text" value="<?php echo $background_slider; ?>" id="background_slider" name="background_slider" /></div>
								
								</div>
								
								<!-- Input -->
									
									
							</div>
							
							<!-- End Colors Right -->
							
							<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
							<!-- Colors Left -->
							
							<div class="colors_left">
								
								<h5>1st Button</h5>
								
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background</p>
									<div><input type="text" value="<?php echo $st_button_background; ?>" id="st_button_background" name="st_button_background" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background hover</p>
									<div><input type="text" value="<?php echo $st_button_background_hover; ?>" id="st_button_background_hover" name="st_button_background_hover" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Font</p>
									<div><input type="text" value="<?php echo $st_button_font; ?>" id="1st_button_font" name="st_button_font" /></div>
								
								</div>
								
								<!-- Input -->
																		
							</div>
							
							<!-- End Colors Left -->
							
							<!-- Colors Center -->
							
							<div class="colors_center">
								
								<h5>2nd Button</h5>
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background</p>
									<div><input type="text" value="<?php echo $nd_button_background; ?>" id="nd_button_background" name="nd_button_background" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Background hover</p>
									<div><input type="text" value="<?php echo $nd_button_background_hover; ?>" id="nd_button_background_hover" name="nd_button_background_hover" /></div>
								
								</div>
								
								<!-- Input -->
								<!-- Input -->
								
								<div class="color_input">
								
									<p>Font</p>
									<div><input type="text" value="<?php echo $nd_button_font; ?>" id="2nd_button_font" name="nd_button_font" /></div>
								
								</div>
								
								<!-- Input -->
																
							</div>
							
							<!-- End Colors Center -->
							
							<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>

						
						</div>
						
						<!-- End Colors -->
					
					</div>
					
					<!-- End Design -->
					
					<!-- Footer -->
					
					<div id="tab_footer" class="tab-content3">
					
						<div class="footer_left">
						
							<!-- Contact, About us, Facebook TABS -->
							
							<div id="tabs_footer" class="htabs main-tabs">
								
								<?php foreach ($languages as $language): ?>
								<a href="#tab_customfooter_<?php echo $language['language_id']; ?>"><img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							
							</div>
							
							<!-- End Contact, About us, Facebook Tabs -->
						
						</div>
						
						<div class="footer_right">
							
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							
							<div id="tab_customfooter_<?php echo $language_id; ?>">
							
								<!-- Contact, About us, Facebook TABS -->
								
								<div id="tabs_<?php echo $language_id; ?>" class="htabs tabs-design">
								
									<a href="#tab_contact_<?php echo $language_id; ?>" class="tcontact"><span>Contact</span></a>
									<a href="#tab_aboutus_<?php echo $language_id; ?>" class="taboutus"><span>About us</span></a>
									<a href="#tab_facebook_<?php echo $language_id; ?>" class="tfacebook"><span>Facebook</span></a>
									<a href="#tab_twitter_<?php echo $language_id; ?>" class="ttwitter"><span>Twitter</span></a>
								
								</div>
								
								<!-- Contact, About us, Facebook -->
								
								<!-- TAB CONTACT -->
								
								<div id="tab_contact_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['contact_status'])) { ?>
									<?php if($customfooter[$language_id]['contact_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_contact_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; } ?>
									
									<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="<?php echo $customfooter[$language_id]['contact_status']; ?>" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; ?>
									<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="0" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } ?>
									
									<h4>Contact</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title</p>
										<?php if(isset($customfooter[$language_id]['contact_title'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_title]" value="<?php echo $customfooter[$language_id]['contact_title']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Phone</p>
										<?php if(isset($customfooter[$language_id]['contact_phone'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_phone]" value="<?php echo $customfooter[$language_id]['contact_phone']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_phone]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Phone 2</p>
										<?php if(isset($customfooter[$language_id]['contact_phone2'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" value="<?php echo $customfooter[$language_id]['contact_phone2']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Skype</p>
										<?php if(isset($customfooter[$language_id]['contact_skype'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_skype]" value="<?php echo $customfooter[$language_id]['contact_skype']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_skype]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Skype 2</p>
										<?php if(isset($customfooter[$language_id]['contact_skype2'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" value="<?php echo $customfooter[$language_id]['contact_skype2']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>E-mail</p>
										<?php if(isset($customfooter[$language_id]['contact_email'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_email]" value="<?php echo $customfooter[$language_id]['contact_email']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_email]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>E-mail 2</p>
										<?php if(isset($customfooter[$language_id]['contact_email2'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_email2]" value="<?php echo $customfooter[$language_id]['contact_email2']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_email2]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB CONTACT -->
								
								<!-- TAB About us -->
								
								<div id="tab_aboutus_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['aboutus_status'])) { ?>
									<?php if($customfooter[$language_id]['aboutus_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } ?>
									
									<input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="<?php echo $customfooter[$language_id]['aboutus_status']; ?>" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; ?>
									<input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="0" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
									<?php } ?>
									
									<h4>About us</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title</p>
										<?php if(isset($customfooter[$language_id]['aboutus_title'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" value="<?php echo $customfooter[$language_id]['aboutus_title']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									
									<!-- Input -->
									
									<div class="input">										
									
										<p>Text</p>
										<?php if(isset($customfooter[$language_id]['aboutus_text'])) { ?>
										<textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]"><?php echo $customfooter[$language_id]['aboutus_text']; ?></textarea>
										<?php } else { ?>
										<textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]"></textarea>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB About US -->
								
								<!-- TAB Facebook -->
								
								<div id="tab_facebook_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['facebook_status'])) { ?>
									<?php if($customfooter[$language_id]['facebook_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } ?>
									
									<input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="<?php echo $customfooter[$language_id]['facebook_status']; ?>" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; ?>
									<input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="0" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
									<?php } ?>
									
									<h4>Facebook</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title</p>
										<?php if(isset($customfooter[$language_id]['facebook_title'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_title]" value="<?php echo $customfooter[$language_id]['facebook_title']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Facebook ID</p>
										<?php if(isset($customfooter[$language_id]['facebook_id'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_id]" value="<?php echo $customfooter[$language_id]['facebook_id']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_id]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Show Faces</p>
										<select name="customfooter[<?php echo $language_id; ?>][show_faces]" style="width:189px">
											
											<?php if(isset($customfooter[$language_id]['show_faces'])) { ?>
						            	  <option value="0" <?php if($customfooter[$language_id]['show_faces'] =='0'){echo ' selected="selected"';} ?>>Yes</option>
							              <option value="1" <?php if($customfooter[$language_id]['show_faces'] =='1'){echo ' selected="selected"';} ?>>No</option>
						              	<?php } else { ?>
	 						              <option value="0" selected="selected">Yes</option>
							              <option value="1">No</option>						              
						              	<?php } ?>
										
										</select>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Number of faces</p>
										<?php if(isset($customfooter[$language_id]['facebook_faces'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" value="<?php echo $customfooter[$language_id]['facebook_faces']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Height</p>
										<?php if(isset($customfooter[$language_id]['facebook_height'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_height]" value="<?php echo $customfooter[$language_id]['facebook_height']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_height]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB Facebook -->
								
								<!-- TAB Twitter -->
								
								<div id="tab_twitter_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['twitter_status'])) { ?>
									<?php if($customfooter[$language_id]['twitter_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } ?>
									
									<input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="<?php echo $customfooter[$language_id]['twitter_status']; ?>" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; ?>
									<input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="0" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
									<?php } ?>
									
									<h4>Twitter</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title</p>
										<?php if(isset($customfooter[$language_id]['twitter_title'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_title]" value="<?php echo $customfooter[$language_id]['twitter_title']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Twitter profile</p>
										<?php if(isset($customfooter[$language_id]['twitter_profile'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_profile]" value="<?php echo $customfooter[$language_id]['twitter_profile']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_profile]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Widget id</p>
										<?php if(isset($customfooter[$language_id]['twitter_widget_id'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" value="<?php echo $customfooter[$language_id]['twitter_widget_id']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Theme</p>
										<?php if(isset($customfooter[$language_id]['twitter_theme'])) { ?>
										<select name="customfooter[<?php echo $language_id; ?>][twitter_theme]" />
											<option value="light"<?php if($customfooter[$language_id]['twitter_theme'] == 'light') echo ' selected="selected"'; ?>>Light</option>
											<option value="dark"<?php if($customfooter[$language_id]['twitter_theme'] == 'dark') echo ' selected="selected"'; ?>>Dark</option>
										</select>
										<?php } else { ?>
										<select name="customfooter[<?php echo $language_id; ?>][twitter_theme]" />
											<option value="light" selected="selected">Light</option>
											<option value="dark">Dark</option>
										</select>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB Twitter -->
								
								<script type="text/javascript"><!--
								$('#tabs_<?php echo $language_id; ?> a').tabs();
								//--></script> 
							
							</div>
							
							<?php } ?>
						
						</div>
						
						<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
					
					</div>
					
					<!-- End Footer -->
					
					<!-- Payment -->
					
					<div id="tab_payment" class="tab-content">
					
						<!-- Status -->
							
						<?php if($payment_status == 0 && $payment_status != '') { echo '<div class="status status-off" title="0" rel="payment_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_status"></div>'; } ?>
						
						<input name="payment_status" value="<?php echo $payment_status; ?>" id="payment_status" type="hidden" />
						
						<!-- Title -->
						
						<h4>Payment</h4>
						
						<p class="text">Show payment images in footer</p>
						
						<!-- Input Payment -->
						
						<div class="input-payment">
						
							<img src="view/image/dilecta/mastercard.png" alt="Mastercard" />
							
							<div class="input-payment-div">
							
								<p>Url</p>
								<input type="text" value="<?php echo $payment_mastercard; ?>" name="payment_mastercard" />
							
							</div>
							
							<?php if($payment_mastercard_status == 0 && $payment_mastercard_status != '') { echo '<div class="status status-off" title="0" rel="payment_mastercard_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_mastercard_status"></div>'; } ?>
							
							<input name="payment_mastercard_status" value="<?php echo $payment_mastercard_status; ?>" id="payment_mastercard_status" type="hidden" />
						
						</div>
						
						<!-- End Input Payment -->
						
						<!-- Input Payment -->
						
						<div class="input-payment">
						
							<img src="view/image/dilecta/visa.png" alt="Visa" />
							
							<div class="input-payment-div">
							
								<p>Url</p>
								<input type="text" value="<?php echo $payment_visa; ?>" name="payment_visa" />
							
							</div>
							
							<?php if($payment_visa_status == 0 && $payment_visa_status != '') { echo '<div class="status status-off" title="0" rel="payment_visa_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_visa_status"></div>'; } ?>
							
							<input name="payment_visa_status" value="<?php echo $payment_visa_status; ?>" id="payment_visa_status" type="hidden" />
						
						</div>
						
						<!-- End Input Payment -->
						
						<!-- Input Payment -->
						
						<div class="input-payment">
						
							<img src="view/image/dilecta/moneybookers.png" alt="Moneybookers" />
							
							<div class="input-payment-div">
							
								<p>Url</p>
								<input type="text" value="<?php echo $payment_moneybookers; ?>" name="payment_moneybookers" />
							
							</div>
							
							<?php if($payment_moneybookers_status == 0 && $payment_moneybookers_status != '') { echo '<div class="status status-off" title="0" rel="payment_moneybookers_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_moneybookers_status"></div>'; } ?>
							
							<input name="payment_moneybookers_status" value="<?php echo $payment_moneybookers_status; ?>" id="payment_moneybookers_status" type="hidden" />
						
						</div>
						
						<!-- End Input Payment -->
						
						<!-- Input Payment -->
						
						<div class="input-payment">
						
							<img src="view/image/dilecta/paypal.png" alt="PayPal" />
							
							<div class="input-payment-div">
							
								<p>Url</p>
								<input type="text" value="<?php echo $payment_paypal; ?>" name="payment_paypal" />
							
							</div>
							
							<?php if($payment_paypal_status == 0 && $payment_paypal_status != '') { echo '<div class="status status-off" title="0" rel="payment_paypal_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_paypal_status"></div>'; } ?>
							
							<input name="payment_paypal_status" value="<?php echo $payment_paypal_status; ?>" id="payment_paypal_status" type="hidden" />
						
						</div>
						
						<!-- End Input Payment -->
						
						<h4>Own payment images</h4>
						
						<div style="height:30px"></div>
						
						<div style="float:left;width:330px;">
							
							<div style="float:left;width:200px">
							
								<div class="own_image" onclick="image_upload('payment_add_0', 'preview15');">
								
									<input type="hidden" name="payment_add_0" value="<?php echo $payment_add_0; ?>" id="payment_add_0" />
									<img src="../image/<?php echo $payment_add_0; ?>" alt="" id="preview15" />
								
								</div>
								<div class="url"><p>Url</p> <input type="text" value="<?php echo $payment_add_0_url; ?>" name="payment_add_0_url" /></div>
								
							</div>
							
							<div style="float:left;width:130px">
							
								<?php if($payment_add_0_status == 0 || $payment_add_0_status == '') { echo '<div class="status status-off" title="0" rel="payment_add_0_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_add_0_status"></div>'; } ?>
								
								<input name="payment_add_0_status" value="<?php if($payment_add_0_status == '') { echo 0; } else { echo $payment_add_0_status; } ?>" id="payment_add_0_status" type="hidden" />
							
							</div>
						
						</div>
						<div style="float:right;width:330px;">
						
							<div style="float:left;width:200px">
						
								<div class="own_image" onclick="image_upload('payment_add_1', 'preview16');">
								
									<input type="hidden" name="payment_add_1" value="<?php echo $payment_add_1; ?>" id="payment_add_1" />
									<img src="../image/<?php echo $payment_add_1; ?>" alt="" id="preview16" />
								
								</div>
								<div class="url"><p>Url</p> <input type="text" value="<?php echo $payment_add_1_url; ?>" name="payment_add_1_url" /></div>
								
							</div>
								
							<div style="float:left;width:130px">
							
								<?php if($payment_add_1_status == 0 || $payment_add_1_status == '') { echo '<div class="status status-off" title="0" rel="payment_add_1_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_add_1_status"></div>'; } ?>
								
								<input name="payment_add_1_status" value="<?php if($payment_add_1_status == '') { echo 0; } else { echo $payment_add_1_status; } ?>" id="payment_add_1_status" type="hidden" />
							
							</div>
													
						</div>
						
						<div style="clear:both;height:20px"></div>
						
						<div style="float:left;width:330px;">
							
							<div style="float:left;width:200px">
							
								<div class="own_image" onclick="image_upload('payment_add_2', 'preview17');">
								
									<input type="hidden" name="payment_add_2" value="<?php echo $payment_add_2; ?>" id="payment_add_2" />
									<img src="../image/<?php echo $payment_add_2; ?>" alt="" id="preview17" />
								
								</div>
								<div class="url"><p>Url</p> <input type="text" value="<?php echo $payment_add_2_url; ?>" name="payment_add_2_url" /></div>
								
							</div>
							
							<div style="float:left;width:130px">
							
								<?php if($payment_add_2_status == 0 || $payment_add_2_status == '') { echo '<div class="status status-off" title="0" rel="payment_add_2_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_add_2_status"></div>'; } ?>
								
								<input name="payment_add_2_status" value="<?php if($payment_add_2_status == '') { echo 0; } else { echo $payment_add_2_status; } ?>" id="payment_add_2_status" type="hidden" />
							
							</div>
						
						</div>
						<div style="float:right;width:330px;">
						
							<div style="float:left;width:200px">
						
								<div class="own_image" onclick="image_upload('payment_add_3', 'preview18');">
								
									<input type="hidden" name="payment_add_3" value="<?php echo $payment_add_3; ?>" id="payment_add_3" />
									<img src="../image/<?php echo $payment_add_3; ?>" alt="" id="preview18" />
								
								</div>
								<div class="url"><p>Url</p> <input type="text" value="<?php echo $payment_add_3_url; ?>" name="payment_add_3_url" /></div>
								
							</div>
								
							<div style="float:left;width:130px">
							
								<?php if($payment_add_3_status == 0 || $payment_add_3_status == '') { echo '<div class="status status-off" title="0" rel="payment_add_3_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_add_3_status"></div>'; } ?>
								
								<input name="payment_add_3_status" value="<?php if($payment_add_3_status == '') { echo 0; } else { echo $payment_add_3_status; } ?>" id="payment_add_3_status" type="hidden" />
							
							</div>
													
						</div>
						
						
					</div>
					
					<!-- End Payment -->
					
					<!-- Custom code -->
					
					<div id="tab_custom_code" class="tab-content">
					
							<!-- Status -->
							
							<?php if($custom_code_status == 1) { echo '<div class="status status-on" title="1" rel="custom_code_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_code_status"></div>'; } ?>
							
							<input name="custom_code_status" value="<?php echo $custom_code_status; ?>" id="custom_code_status" type="hidden" />
						
						<!-- Title -->
						
						<h4>Custom code</h4>
						
									
									<!-- Input -->
									
									<div class="input">										
									
										<p>Custom CSS code</p>
										<?php if(isset($custom_code_css)) { ?>
										<textarea rows="0" cols="0" name="custom_code_css"><?php echo $custom_code_css; ?></textarea>
										<?php } else { ?>
										<textarea rows="0" cols="0" name="custom_code_css"></textarea>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">										
									
										<p>Custom JavaScript code</p>
										<?php if(isset($custom_code_js)) { ?>
										<textarea rows="0" cols="0" name="custom_code_js"><?php echo $custom_code_js; ?></textarea>
										<?php } else { ?>
										<textarea rows="0" cols="0" name="custom_code_js"></textarea>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
					
					</div>
					
					<!-- End Custom code -->
										
					
					<!-- Custom menu -->
					
					<div id="tab_custom_menu" class="tab-content3">
					
						<div class="footer_left">
						
							<!-- Contact, About us, Facebook TABS -->
							
							<div id="tabs_custommenu" class="htabs main-tabs">
								
								<?php foreach ($languages as $language): ?>
								<a href="#tab_custommenu_<?php echo $language['language_id']; ?>"><img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							
							</div>
							
							<!-- End Contact, About us, Facebook Tabs -->
						
						</div>
						
						<div class="footer_right">
							
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							
							<div id="tab_custommenu_<?php echo $language_id; ?>" class="tab-content4">
						
								<!-- Status -->
								
								<?php if($custom_menu_status[$language_id] == 1) { echo '<div class="status status-on" title="1" rel="custom_menu_status_'.$language_id.'"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_menu_status_'.$language_id.'"></div>'; } ?>
								
								<input name="custom_menu_status[<?php echo $language_id; ?>]" value="<?php echo $custom_menu_status[$language_id]; ?>" id="custom_menu_status_<?php echo $language_id; ?>" type="hidden" />
								
						<!-- Input -->
						
						<div class="input" style="border:none">
						
							<p style="width:170px">Custom menu position:</p>
							<select name="custom_menu_position[<?php echo $language_id; ?>]">
							
								<option value="0"<?php if($custom_menu_position[$language_id] == '0'){echo ' selected="selected"';} ?>>Right</option>
								<option value="1"<?php if($custom_menu_position[$language_id] =='1'){echo ' selected="selected"';} ?>>Left</option>
							
							</select>
						
							<div class="clear"></div>
						
						</div>
						
						<!-- End Input -->
							
							<!-- Title -->
							
							<h4>Custom menu</h4>
							
										
										<?php for ($ss = 1; $ss <= 10; $ss++) { ?>
										<!-- Input -->
										
										<div class="input">										
										
											<p><?php echo $ss; ?></p>
											<div class="text">Text:</div>
											<?php if(isset($custom_menu[$language_id][$ss]['text'])) { ?>
											<input type="text" name="custom_menu[<?php echo $language_id; ?>][<?php echo $ss; ?>][text]" value="<?php echo $custom_menu[$language_id][$ss]['text']; ?>" />
											<?php } else { ?>
											<input type="text" name="custom_menu[<?php echo $language_id; ?>][<?php echo $ss; ?>][text]" />
											<?php } ?>
											<div class="text">URL:</div>
											<?php if(isset($custom_menu[$language_id][$ss]['url'])) { ?>
											<input type="text" name="custom_menu[<?php echo $language_id; ?>][<?php echo $ss; ?>][url]" value="<?php echo $custom_menu[$language_id][$ss]['url']; ?>" />
											<?php } else { ?>
											<input type="text" name="custom_menu[<?php echo $language_id; ?>][<?php echo $ss; ?>][url]" />
											<?php } ?>
										
											<div class="clear"></div>
										
										</div>
										
										<!-- End Input -->
										<?php } ?>
										
							
							</div>
							
						<?php } ?>
							
						</div>
											
					</div>
					
					<!-- End Custom menu -->
					
					
					<!-- Custom block -->
					
					<div id="tab_custom_block" class="tab-content">
					
							<!-- Status -->
							
							<?php if($custom_block_status == 1) { echo '<div class="status status-on" title="1" rel="custom_block_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_block_status"></div>'; } ?>
							
							<input name="custom_block_status" value="<?php echo $custom_block_status; ?>" id="custom_block_status" type="hidden" />
						
						<!-- Title -->
						
						<h4>Custom block on product page</h4>
						
						<p class="text">Shown only when product page is in full width mode.</p>
						
									<!-- Input -->
									
									<div class="input">										
									
										<p>Text</p>
										<?php if(isset($custom_block_text)) { ?>
										<textarea rows="0" cols="0" name="custom_block_text"><?php echo $custom_block_text; ?></textarea>
										<?php } else { ?>
										<textarea rows="0" cols="0" name="custom_block_text"></textarea>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->

					
					</div>
					
					<!-- End Custom block -->
										
					<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
				
				</div>
				
				<!-- End Tabs -->
				
				<!-- Buttons -->
				
				<div class="buttons"><a onclick="$('#form').submit();" class="button-save"><span><?php echo $button_save; ?></span></a></div>
				
				<!-- End Buttons -->
			
			</form>
		
		</div>
	
	</div>
	
	<!-- End Content -->

</div>

<!-- End Theme Options -->

</div>

<!-- END #CONTENT -->

<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 


<script type="text/javascript">
jQuery(document).ready(function($) {

	$(".select-color-settings li a").click(function () {
		
		var styl = $(this).attr("rel");
		var element_index = $('.select-color-settings li a').index(this);
		$(".select-color-settings li a").removeClass("active");
		$(".select-color-settings li a").eq(element_index).addClass("active");
		$("#dilecta_color").val(styl);
		
	});

});	
</script>

<script type="text/javascript">

$(document).ready(function() {

	$('#headlines_text, #body_text, #links, #links_hover, #price, #product_name, #categories_links, #categories_links_hover, #custom_footer_background, #custom_footer_headlines, #custom_footer_body, #custom_footer_links, #st_button_background, #st_button_background_hover, #1st_button_font, #nd_button_background, #nd_button_background_hover, #2nd_button_font, #footer_background_background_color, #general_background_background_color, #shopping_cart_icon, #icon_wishlist, #custom_footer_background, #input_background, #input_border, #input_border_hover, #input_border_hover, #categories_border_top, #custom_footer_border, #background_page_title, #border_page_title, #background_banners, #border_banners, #border_5px_color, #categories_background, #background_slider').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});
	 });
</script>

<script type="text/javascript"><!--
$('#tabs a').tabs();
$('#tabs_design a').tabs();
$('#tabs_footer a').tabs();
$('#tabs_custommenu a').tabs();
//--></script> 

<script type="text/javascript">
jQuery(document).ready(function($) {

	$(".status").click(function () {
		
		var styl = $(this).attr("rel");
		var co = $(this).attr("title");
		
		if(co == 1) {
		
			$(this).removeClass('status-on');
			$(this).addClass('status-off');
			$(this).attr("title", "0");

			$("#"+styl+"").val(0);
		
		}
		
		if(co == 0) {
		
			$(this).addClass('status-on');
			$(this).removeClass('status-off');
			$(this).attr("title", "1");

			$("#"+styl+"").val(1);
		
		}
		
	});
	
	$(".change-direction a").click(function () {

		var element_index = $(".change-direction a").index(this);
		$(".language-direction").hide();
		$(".language-direction").eq(element_index).show();
		$(".change-direction a").removeClass("active-direction");
		$(this).addClass("active-direction");
		
		return false;
		
	});

});	
</script>

<?php echo $footer; ?>
