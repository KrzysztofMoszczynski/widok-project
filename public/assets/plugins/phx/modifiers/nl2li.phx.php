<?php
$output = '<li>'.str_replace(array("\r","\n\n","\n"),array('',"\n","</li>\n<li>"),trim($output,"\n\r")).'</li>';
return $output;
?>