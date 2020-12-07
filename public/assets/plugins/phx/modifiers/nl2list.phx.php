<?php
$bits   = explode("\n", $output);
$output = '<ul>';
foreach($bits as $bit)
{
  $output .= "<li>" . $bit . "</li>";
}
$output .= '</ul>';
return $output;
?>