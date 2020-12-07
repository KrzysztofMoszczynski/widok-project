<?php
/**
 * [+id+] - document id
 * [+parent+] - parent id
 * [+uid+] - user id
 * [+rand+] - random value
 * [+time+] - unix-time
 * [+year+] - year
 * [+month+] - month
 * [+day+] - day
 * [+hour+] - hour
 * [+minute+] - minute
 * [+second+] - second
 * 
 */

$config = array();
$config = array(
  "folder"   => "assets/resource_images/[+id+]/",
  "filename" => "cover_[+time+]_[+filename+]",
  "allowed"  => array('jpg','jpeg'),
  
  // settings for image conversion at boot time
  "imageTransform" => array(
    "maxWidth"  => 1920,
    "maxHeight" => 1920,
    "quality"   => 0.90,
  ),
  
  // convert on the client if true, otherwise on the server
  "clientResize" => true,
  
  // preview in the admin panel
  "thumbnail" => array(
    "folder"  => "thumbs",
    "options" => "w=150&h=150&far=C&bg=FFFFFF"
  )

  /*
  ,
  "previews" => array(
    "600x315" => array(
      "folder" => "600x315",
      "options" => "w=600&h=315&zc=C"
    ),
    "1200x630" => array(
      "folder" => "1200x630",
      "options" => "w=1200&h=630&zc=C"
    )
  )
  */
  
);
return $config;