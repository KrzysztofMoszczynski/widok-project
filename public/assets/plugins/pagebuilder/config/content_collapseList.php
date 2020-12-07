<?php
return [
  'title' => 'Rozwijana lista',
  'icon'  => 'fa fa-caret-square-o-down',
  'order' => '103',

  'show_in_templates' => [ 4,17 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-collapseList',
    'items'  => '@CHUNK pb-tpl-collapseList__item',
    'pdf' => [
      'owner' => '@CHUNK pb-tpl-collapseList',
      'items'  => '@CHUNK pb-tpl-collapseList__item'
    ]
  ],

  'fields' => [
    
    'header' => [
      'caption' => 'Nagłówek listy',
      'type'    => 'text'
    ],

    'items' => [
      'caption' => 'Elementy',
      'type'    => 'group',
      'fields'  => [
        
        'name' => [
          'caption' => 'Tytuł elementu',
          'type'    => 'text'
        ],
        
        'content' => [
          'caption' => 'Treść elementu',
          'type'    => 'richtext',
          'theme'   => 'custom',
          'options' => [
            'height' => 200
          ]
        ]
        
      ]
    ]
  ]
  
];