<?php
return [
  'title' => 'Tekst',
  'icon' => 'fa fa-pencil',
  'order' => '101',

  'show_in_templates' => [ 4,17 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-content-text',
    'pdf' => [
      'owner' => '@CHUNK pb-tpl-content-text'
    ]
  ],

  'fields' => [
    'richtext' => [
      'caption' => 'Blok treści (nagłówki, akapity, tabele)',
      'default' => '',
      'type'    => 'richtext',
      'theme'   => 'custom',
      'options' => [
        'height' => 200
      ],
    ]
  ],
];