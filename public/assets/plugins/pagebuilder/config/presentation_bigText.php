<?php
return [
  'title' => 'Prezentacja: Duży tekst',
  'icon' => 'fa fa-pencil',
  'order' => '202',

  'show_in_templates' => [ 43 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-presentation-big-text'
  ],

  'fields' => [
    'content' => [
      'caption' => 'Treść',
      'default' => '',
      'type'    => 'textarea'
    ],
    'bgc' => [
      'caption'  => 'Kolor tła',
      'type'     => 'dropdown',
      'elements' => 'Czarny==black||Biały==white||Kolor numeru==issue',
      'default'  => 'black'
    ]
  ]
];