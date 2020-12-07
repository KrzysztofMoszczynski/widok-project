<?php
$year    = date('Y');
$month   = date('m', $output);
$day     = date('d', $output);
$output  = $year.'-'.$month.'-'.$day;
return strtotime($output);
?>