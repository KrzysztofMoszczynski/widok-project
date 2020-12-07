<?php
return [
  'title' => 'Profile proste',
  'icon' => 'fa fa-group',
  'order' => '301',
  //'show_in_templates' => [ 4 ],
  'show_in_templates' => [ 9999 ],
  
  'templates' => [
    'owner' => '@CHUNK pb-tpl-profiles',
    'item'  => '@CHUNK pb-tpl-profiles__item-simple'
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
        ]
      ]
    ]
    
  ]
];