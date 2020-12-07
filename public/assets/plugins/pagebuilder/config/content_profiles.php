<?php
return [
  'title' => 'Profile pełne',
  'icon' => 'fa fa-group',
  'order' => '300',
  //'show_in_templates' => [ 4 ],
  'show_in_templates' => [ 9999 ],
  
  'templates' => [
    'owner' => '@CHUNK pb-tpl-profiles',
    'item'  => '@CHUNK pb-tpl-profiles__item'
  ],
  
  'fields' => [
    
    'name' => [
      'caption' => 'Tytuł grupy',
      'type'    => 'text'
    ],
    
    'item' => [
      'caption' => 'Profile',
      'type'    => 'group',
      'fields'  => [
        'image' => [
          'caption' => 'Zdjęcie',
          'type'    => 'image'
        ],
        'name' => [
          'caption' => 'Tytuł, imię i nazwisko',
          'type'    => 'text'
        ],
        'url' => [
          'caption' => 'Link',
          'type'    => 'text'
        ],
        'university' => [
          'caption' => 'Uniwersytet',
          'type'    => 'text'
        ],
        'content' => [
          'caption' => 'Opis',
          'type'    => 'richtext',
          'theme'   => 'custom',
          'options' => [
            'height' => 150
          ]
        ]
      ]
    ]
    
  ]
];