<?php

$retval = $output;
$array = explode(" ", $output);

if (count($array)<=$options) {
	$retval = $output;
}

else {
	array_splice($array,$options);
	$retval = implode(" ", $array);
	$retval = $retval.'...';
}

return $retval;

?>