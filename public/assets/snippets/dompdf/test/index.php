<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once("vendor/autoload.php"); 

/* Start to develop here. Best regards https://php-download.com/ */
use mikehaertl\wkhtmlto\Pdf;

// Create a new Pdf object with some global PDF options
$pdf = new Pdf(array(
    'no-outline',         // Make Chrome not complain
    'margin-top'    => 0,
    'margin-right'  => 0,
    'margin-bottom' => 0,
    'margin-left'   => 0,

    // Default page options
    'disable-smart-shrinking'
));

// Add a page. To override above page defaults, you could add
// another $options array as second argument.
$pdf->addPage('test.html');

if (!$pdf->send()) {
    $error = $pdf->getError();
    // ... handle error here
}