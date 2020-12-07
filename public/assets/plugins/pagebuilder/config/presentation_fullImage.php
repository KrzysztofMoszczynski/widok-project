<?php
return [
  'title' => 'Prezentacja: Full Image',
  'icon' => 'fa fa-camera',
  'order' => '204',

  //'show_in_templates' => [ 43 ],
  'show_in_templates' => [ 9999 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-presentation-full-image'
  ],

  'fields' => [
    'image' => [
      'caption' => 'Obraz',
      'type'    => 'image'
    ],
    'image_caption' => [
      'caption' => 'Opis widoczny pod obrazem',
      'type'    => 'text'
    ]
  ],

  'prepare' => function($options, &$values) {
    global $modx;

    if ($values['image_caption']) 
    {
      $values['prepared.figcaption_html'] = '<figcaption class="m-presentation__caption m-presentation__caption--absolute">'.$values['image_caption'].'</figcaption>';
    }

    //unset($value);
  }
];