<?php
return [
  'title' => 'Obraz oblany',
  'icon' => 'fa fa-camera',
  'order' => '201',
  //'show_in_templates' => [ 4,17 ],
  'show_in_templates' => [ 9999 ],
  'templates' => [
    'owner' => '@CHUNK pb-tpl-content-image-right',
    'pdf' => [
      'owner' => '@CHUNK pb-tpl-content-image-right'
    ]
  ],
  'fields' => [
    'image' => [
      'caption' => 'Mały obraz oblany tekstem, wyrównany do prawej',
      'type'    => 'image',
    ],
    'image_caption' => [
      'caption' => 'Opis widoczny pod obrazem (opcjonalnie)',
      'type'    => 'text',
    ]
  ],
];