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
  "filename" => "profilePicture_[+time+]_[+filename+]",
  "allowed"  => array('jpg','jpeg'),
  
  // settings for image conversion at boot time
  "imageTransform" => array(
    "maxWidth"  => 1280,
    "maxHeight" => 720,
    "quality"   => 0.90,
  ),
  
  // convert on the client if true, otherwise on the server
  "clientResize" => true,
  
  // preview in the admin panel
  "thumbnail" => array(
    "folder"  => "thumbs",
    "options" => "w=300&h=300&far=C&zc=1&bg=FFFFFF"
  )
  
);
return $config;