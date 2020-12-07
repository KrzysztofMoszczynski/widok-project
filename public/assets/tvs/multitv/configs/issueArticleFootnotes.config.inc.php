<?php
$settings['display'] = 'datatable';

$settings['fields'] = array(
  'footnote' => array(
    'caption' => 'Treść przypisu',
    'type' => 'richtext'
  )
  /*'footnote_number' => array(
    'caption' => 'Numer przypisu',
    'type' => 'text'
  )*/
);

$settings['columns'] = array(
  /*array(
    'caption' => 'Nr',
    'fieldname' => 'iteration',
    //'render' => '[+row.number+]',
    'width' => 35
  ),*/
  array(
    'caption' => 'Przypisy',
    'fieldname' => 'footnote',
    'render' => '[+footnote:notags:strip:word_limit=`8`+]'
  )
);

$settings['form'] = array(
  array(
    'caption' => 'Przypis',
    'content' => array(
      //'footnote_number' => array(),
      'footnote' => array()
    )
  )
);

$settings['templates'] = array(
  'outerTpl' => '',
  'rowTpl' => ''
);

$settings['configuration'] = array(
  'enablePaste' => false,
  'enableClear' => false,
  'hideHeader' => false
  //'displayLength' => 50
);
