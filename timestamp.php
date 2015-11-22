<?php 
$this->load->helper('date');
$datestring = "Year: %Y Month: %m Day: %d - %h:%i %a";
$time = time();

echo mdate($datestring, $time);

?>