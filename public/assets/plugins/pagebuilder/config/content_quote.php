<?php
return [
  'title' => 'Cytat',
  'icon'  => 'fa fa-quote-right',
  'order' => '102',

  //'show_in_templates' => [ 4,17 ],
  'show_in_templates' => [ 9999 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-content-quote',
    'pdf' => [
      'owner' => '@CHUNK pb-tpl-content-quote'
    ]
  ],

  'fields' => [
    'quotecontent' => [
      'caption' => 'Treść cytatu',
      'type'    => 'textarea'
    ],
    'quoteauthor' => [
      'caption' => 'Autor cytatu',
      'type'    => 'text'
    ]
  ],
  
];