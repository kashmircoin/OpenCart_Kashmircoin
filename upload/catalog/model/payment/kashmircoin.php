<?php 
/*
Copyright (c) 2013 John Atkinson (jga)
*/

class ModelPaymentKashmirCoin extends Model {
  	public function getMethod($address) {
		$this->load->language('payment/kashmircoin');
		
		if ($this->config->get('kashmircoin_status')) {
        	$status = TRUE;
		} else {
			$status = FALSE;
		}
		
		$method_data = array();
	
		if ($status) {  
      		$method_data = array( 
        		'code'         	=> 'kashmircoin',
        		'title'      	=> $this->language->get('text_title'),
			'sort_order' 	=> $this->config->get('kashmircoin_sort_order'),
      		);
    	}
   
    	return $method_data;
  	}
}
?>
