<?php echo $header; ?>
<!--
Copyright (c) 2013 John Atkinson (jga)
-->

<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="left"></div>
  <div class="right"></div>
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
        <tr>
          <td><span class="required">*</span> <?php echo $entry_username; ?></td>
          <td><input type="text" name="kashmircoin_rpc_username" value="<?php echo $kashmircoin_rpc_username; ?>" style="width:300px;" />
            <?php if ($error_username) { ?>
            <span class="error"><?php echo $error_username; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_address; ?></td>
          <td><input type="text" name="kashmircoin_rpc_address" value="<?php echo $kashmircoin_rpc_address; ?>" style="width:300px;" />
            <?php if ($error_address) { ?>
            <span class="error"><?php echo $error_address; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_password; ?></td>
          <td><input type="text" name="kashmircoin_rpc_password" value="<?php echo $kashmircoin_rpc_password; ?>" style="width:300px;" />
            <?php if ($error_password) { ?>
            <span class="error"><?php echo $error_password; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_port; ?></td>
          <td><input type="text" name="kashmircoin_rpc_port" value="<?php echo $kashmircoin_rpc_port; ?>" style="width:300px;" />
            <?php if ($error_port) { ?>
            <span class="error"><?php echo $error_port; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_prefix; ?></td>
          <td><input type="text" name="kashmircoin_prefix" value="<?php echo $kashmircoin_prefix; ?>" style="width:300px;" />
            <?php if ($error_prefix) { ?>
            <span class="error"><?php echo $error_prefix; ?></span>
            <?php } ?></td>
        </tr>
		<tr>
          <td><?php echo $entry_show_ksc; ?></td>
          <td><select name="kashmircoin_show_ksc"> 
              <?php if ($kashmircoin_show_ksc) { ?>
              <option value="1" selected="selected"><?php echo $text_yes; ?></option>
              <option value="0"><?php echo $text_no; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_yes; ?></option>
              <option value="0" selected="selected"><?php echo $text_no; ?></option>
              <?php } ?>
            </select></td>
        </tr>
		<tr>
          <td><?php echo $entry_ksc_decimal; ?></td>
          <td><select name="kashmircoin_ksc_decimal"> 
              <?php if ($kashmircoin_ksc_decimal == 8) { ?>
              <option value="8" selected="selected"><?php echo $text_8; ?></option>
              <option value="7"><?php echo $text_7; ?></option>
              <option value="6"><?php echo $text_6; ?></option>
              <option value="5"><?php echo $text_5; ?></option>
              <option value="4"><?php echo $text_4; ?></option>
              <option value="3"><?php echo $text_3; ?></option>
              <option value="2"><?php echo $text_2; ?></option>
              <?php } else if ($kashmircoin_ksc_decimal == 7) { ?>
              <option value="8"><?php echo $text_8; ?></option>
              <option value="7" selected="selected"><?php echo $text_7; ?></option>
              <option value="6"><?php echo $text_6; ?></option>
              <option value="5"><?php echo $text_5; ?></option>
              <option value="4"><?php echo $text_4; ?></option>
              <option value="3"><?php echo $text_3; ?></option>
              <option value="2"><?php echo $text_2; ?></option>
              <?php } else if ($kashmircoin_ksc_decimal == 6) { ?>
              <option value="8"><?php echo $text_8; ?></option>
              <option value="7"><?php echo $text_7; ?></option>
              <option value="6" selected="selected"><?php echo $text_6; ?></option>
              <option value="5"><?php echo $text_5; ?></option>
              <option value="4"><?php echo $text_4; ?></option>
              <option value="3"><?php echo $text_3; ?></option>
              <option value="2"><?php echo $text_2; ?></option>
              <?php } else if ($kashmircoin_ksc_decimal == 5) { ?>
              <option value="8"><?php echo $text_8; ?></option>
              <option value="7"><?php echo $text_7; ?></option>
              <option value="6"><?php echo $text_6; ?></option>
              <option value="5" selected="selected"><?php echo $text_5; ?></option>
              <option value="4"><?php echo $text_4; ?></option>
              <option value="3"><?php echo $text_3; ?></option>
              <option value="2"><?php echo $text_2; ?></option>
              <?php } else if ($kashmircoin_ksc_decimal == 3) { ?>
              <option value="8"><?php echo $text_8; ?></option>
              <option value="7"><?php echo $text_7; ?></option>
              <option value="6"><?php echo $text_6; ?></option>
              <option value="5"><?php echo $text_5; ?></option>
              <option value="4"><?php echo $text_4; ?></option>
              <option value="3" selected="selected"><?php echo $text_3; ?></option>
              <option value="2"><?php echo $text_2; ?></option>
              <?php } else if ($kashmircoin_ksc_decimal == 2) { ?>
              <option value="8"><?php echo $text_8; ?></option>
              <option value="7"><?php echo $text_7; ?></option>
              <option value="6"><?php echo $text_6; ?></option>
              <option value="5"><?php echo $text_5; ?></option>
              <option value="4"><?php echo $text_4; ?></option>
              <option value="3"><?php echo $text_3; ?></option>
              <option value="2" selected="selected"><?php echo $text_5; ?></option>
              <?php } else { ?>
              <option value="8"><?php echo $text_8; ?></option>
              <option value="7"><?php echo $text_7; ?></option>
              <option value="6"><?php echo $text_6; ?></option>
              <option value="5"><?php echo $text_5; ?></option>
              <option value="4" selected="selected"><?php echo $text_4; ?></option>
              <option value="3"><?php echo $text_3; ?></option>
              <option value="2"><?php echo $text_2; ?></option>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_countdown_timer; ?></td>
          <td><input type="text" name="kashmircoin_countdown_timer" value="<?php echo $kashmircoin_countdown_timer; ?>" style="width:300px;" />
            <?php if ($error_countdown_timer) { ?>
            <span class="error"><?php echo $error_countdown_timer; ?></span>
            <?php } ?></td>
        </tr>
          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="kashmircoin_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $kashmircoin_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
        <tr>
          <td><?php echo $entry_status; ?></td>
          <td><select name="kashmircoin_status"> 
              <?php if ($kashmircoin_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_sort_order; ?></td>
          <td><input type="text" name="kashmircoin_sort_order" value="<?php echo $kashmircoin_sort_order; ?>" size="1" /></td>
        </tr>
      </table>
    </form>
  </div>
</div>
</div>
<?php echo $footer; ?>
