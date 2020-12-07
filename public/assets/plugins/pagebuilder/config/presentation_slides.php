<?php
return [
  'title' => 'Prezentacja: Slideshow',
  'icon' => 'fa fa-camera',
  'order' => '206',

  'show_in_templates' => [ 43 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-presentation-slides',
    'items' => '@CHUNK pb-tpl-presentation-slides__item'
  ],

  'fields' => [
    'items' => [
      'caption' => 'Slajdy',
      'type'    => 'group',
      'fields'  => [
        'image' => [
          'caption' => 'Obraz',
          'type'    => 'image'
        ],
        'image_caption' => [
          'caption' => 'Opis widoczny pod obrazem',
          'type'    => 'richtext',
          'theme'   => 'mini2',
          'options' => [
            'height' => 50
          ]
        ],
        'gif' => [
          'caption'  => '',
          'type'     => 'checkbox',
          'elements' => 'Animowany GIF==1',
          'default'  => ''
        ]
      ]
    ],
    'bgc' => [
      'caption'  => 'Kolor tła',
      'type'     => 'dropdown',
      'elements' => 'Czarny==black||Biały==white||Kolor numeru==issue',
      'default'  => 'black'
    ]
  ],

  'prepare' => function($options, &$values) {
    global $modx;

    foreach ($values['items'] as &$value) 
    {
      // image
      if ($value['gif']) 
      {
        $value['prepared.image'] = $value['image'];
      }
      else 
      {
        $value['prepared.image'] = $modx->runSnippet('phpthumb', [
          'input'   => $value['image'], 
          'options' => 'h=720'
        ]);
      }

      // caption
      if ($value['image_caption']) 
      {
        $value['prepared.figcaption_html'] = '<figcaption class="m-presentation__caption m-presentation__caption--absolute">'.$value['image_caption'].'</figcaption>';
      }
    }

    unset($value);
  }
];