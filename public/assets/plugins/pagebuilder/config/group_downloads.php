<?php
return [
  'title' => 'Pliki',
  'icon' => 'fa fa-download',
  'order' => '20',
  'show_in_templates' => [ 9999 ],
  'templates' => [
    'owner' => '@CHUNK pb-tpl-group-downloads',
    'files' => '@CHUNK pb-tpl-group-downloads__file'
  ],
  'fields' => [
    'files' => [
      'caption' => 'Pliki do pobrania',
      'type'    => 'group',
      'fields'  => [
        'text' => [
          'caption' => 'Nazwa pobierania',
          'type'    => 'text',
        ],
        'file' => [
          'caption' => '',
          'type'    => 'file',
        ]
      ],
    ],
  ],
];

