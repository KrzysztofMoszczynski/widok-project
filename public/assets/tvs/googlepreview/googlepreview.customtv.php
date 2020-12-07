<?php

if (IN_MANAGER_MODE != 'true') {
  die('<h1>Error:</h1><p>Please use the EVO content manager instead of accessing this file directly.</p>');
}

global $modx;

$resourceId = isset($_REQUEST['id']) ? intval($_REQUEST['id']) : 0;

if ($resourceId == 0) {
  $output = '<p>To see a Google Preview, please save document first.</p>';
}

else {
  $tvDescription = isset($tvDescription) ? $tvDescription : 'meta_description';
  $tvCustomTitle = isset($tvCustomTitle) ? $tvCustomTitle : 'meta_custom_title';
  
  $siteName      = $modx->config['site_name'];
  $siteStart     = $modx->config['site_start'];
  $template      = $modx->documentObject['template'];
  $pagetitle     = $modx->documentObject['pagetitle'];
  $resourceUrl   = $modx->makeUrl($resourceId, '', '', 'full');
  $customTitle   = $modx->getTemplateVarOutput($tvCustomTitle,$resourceId);
  $customTitle   = $customTitle[$tvCustomTitle];
  $postTitle     = ' | ' . $siteName;

  // check home page
  if($template == 3){
    $metaTitle = $siteName;
  } 
  // check custom title
  elseif($customTitle != ''){
    $metaTitle = $customTitle;
  } 
  // default
  else {
    $metaTitle = $pagetitle.$postTitle;
  }

  // trim title
  $maxLength = '70';
  if (strlen($metaTitle) > $maxLength) {
    $metaTitle = substr($metaTitle, 0, $maxLength);
  }

  // get description
  $metaDescription = $modx->getTemplateVarOutput($tvDescription,$resourceId);
  $metaDescription = $metaDescription[$tvDescription];

  $output = '
  <style>
    .s-google {
      background: #fff;
      width: 100%;
      font-family: arial, sans-serif;
      color: #545454;
      word-wrap: break-word;
      text-align: left;
      font-weight: normal;
      padding: 15px;
      box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.1);
    }

    .s-google span {
      display: block;
      line-height: 1.4em;
    }

    .s-title {
      color: #1a0dab;
      font-size: 18px;
      font-weight: normal;
      text-decoration: none;
    }

    .s-url {
      color: #006621;
      font-style: normal;
      font-size: 14px;
    }

    .s-desc {
      font-size: 13px;
    }
  </style>
  <div class="s-google">
    <span class="s-title">' . $metaTitle . '</span>
    <span class="s-url">'  . $resourceUrl . '</span>
    <span class="s-desc">' . $metaDescription . '</span>
  </div>
  ';  

}

echo $output;
?>