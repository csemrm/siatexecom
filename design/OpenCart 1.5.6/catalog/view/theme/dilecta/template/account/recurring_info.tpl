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
		
		<div class="grid-<?php echo $grid; ?> float-left" id="content_content" style="padding-top:30px !important">

  <table class="list">
    <thead>
      <tr>
        <td class="left" colspan="2"><?php echo $text_recurring_detail; ?></td>
      </tr>
    </thead>
    <tbody>
    <tr>
        <td class="left" style="width: 50%;">
            <p style="margin:5px;"><b><?php echo $text_recurring_id; ?></b> #<?php echo $profile['order_recurring_id']; ?></p>
            <p style="margin:5px;"><b><?php echo $text_date_added; ?></b> <?php echo $profile['created']; ?></p>
            <p style="margin:5px;"><b><?php echo $text_status; ?></b> <?php echo $status_types[$profile['status']]; ?></p>
            <p style="margin:5px;"><b><?php echo $text_payment_method; ?></b> <?php echo $profile['payment_method']; ?></p>
        </td>
        <td class="left" style="width: 50%; vertical-align: top;">
            <p style="margin:5px;"><b><?php echo $text_product; ?></b> <a href="<?php echo $profile['product_link']; ?>"><?php echo $profile['product_name']; ?></a></p>
            <p style="margin:5px;"><b><?php echo $text_quantity; ?></b> <?php echo $profile['product_quantity']; ?></p>
            <p style="margin:5px;"><b><?php echo $text_order; ?></b> <a href="<?php echo $profile['order_link']; ?>">#<?php echo $profile['order_id']; ?></a></p>
        </td>
    </tr>
    </tbody>
  </table>
    <table class="list">
        <thead>
            <tr>
                <td class="left"><?php echo $text_recurring_description; ?></td>
                <td class="left"><?php echo $text_ref; ?></td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="left" style="width: 50%;"><p style="margin:5px;"><?php echo $profile['profile_description']; ?></p></td>
                <td class="left" style="width: 50%;"><p style="margin:5px;"><?php echo $profile['profile_reference']; ?></p></td>
            </tr>
        </tbody>
  </table>
  <h2><?php echo $text_transactions; ?></h2>
  <table class="list">
    <thead>
      <tr>
        <td class="left"><?php echo $column_created; ?></td>
        <td class="center"><?php echo $column_type; ?></td>
        <td class="right"><?php echo $column_amount; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php

      if(!empty($profile['transactions'])){
      foreach ($profile['transactions'] as $transaction) {

      ?>
      <tr>
        <td class="left"><?php echo $transaction['created']; ?></td>
        <td class="center"><?php echo $transaction_types[$transaction['type']]; ?></td>
        <td class="right"><?php echo $transaction['amount']; ?></td>
      </tr>
      <?php } }else{ ?>

      <tr>
          <td colspan="3" class="center"><?php echo $text_empty_transactions; ?></td>
      </tr>

    <?php } ?>
    </tbody>
  </table>

  <div class="buttons">
    <div class="right">
        <?php if($cancel_link){ ?>
            <a href="<?php echo $cancel_link; ?>" class="button" onclick="return confirmCancel();"><?php echo $button_cancel_profile; ?></a>
        <?php } ?>
        <a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
    </div>
  </div>
				
		</div>
		
		<!-- End Column center -->
	  
		<?php if($column_right != '') { echo '<div class="grid-3 float-left">'.$column_right.'</div>'; } ?>

	  <div class="clears"></div>
	  
	  <?php echo $content_bottom; ?>
  
  </section>
  
  <!-- End Content -->

<?php echo $footer; ?>
<script type="text/javascript"><!--
    function confirmCancel(){
        var confirmed = confirm("<?php echo $text_confirm_cancel; ?>");
        return confirmed;
    }
//--></script>