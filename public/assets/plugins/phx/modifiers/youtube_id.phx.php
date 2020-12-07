<?php

$url_parts = parse_url($output);
parse_str($url_parts['query']);

if (isset($v)) {
  return $v;    
} 

else {
  return false;   
}

?>