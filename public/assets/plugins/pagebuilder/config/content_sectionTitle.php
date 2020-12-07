<?php
return [
  'title' => 'Tytuł sekcji',
  'icon'  => 'fa fa-font',
  'order' => '100',

  //'show_in_templates' => [ 4,17 ],
  'show_in_templates' => [ 44444 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-content-sectionTitle',
    'pdf' => [
      'owner' => '@CHUNK pb-tpl-content-sectionTitle'
    ]
  ],

  'fields' => [
    'title' => [
      'caption' => 'Tytuł sekcji z podkreśleniem',
      'type'    => 'text'
    ]
  ],
  
];