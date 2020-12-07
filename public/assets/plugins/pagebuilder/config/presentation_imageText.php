<?php
return [
  'title' => 'Prezentacja: Obraz + tekst',
  'icon' => 'fa fa-newspaper-o',
  'order' => '203',

  'show_in_templates' => [ 43 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-presentation-image-text'
  ],

  'fields' => [
    'image' => [
      'caption' => 'Obraz obok tekstu',
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
    'content' => [
      'caption' => 'Treść',
      'default' => '',
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

    // image
    if ($values['gif']) 
    {
      $values['prepared.image_html'] = '<img src="'.$values['image'].'" alt="">';
    }
    else 
    {
      $values['prepared.thumb_2x'] = $modx->runSnippet('phpthumb', [
        'input'   => $values['image'], 
        'options' => 'w=950'
      ]);

      $values['prepared.thumb_1x'] = $modx->runSnippet('phpthumb', [
        'input'   => $values['image'], 
        'options' => 'w=475'
      ]);

      $values['prepared.image_html'] = '<img srcset="'.$values['prepared.thumb_2x'].' 2x, '.$values['prepared.thumb_1x'].' 1x" src="'.$values['prepared.thumb_1x'].'" alt="">';
    }

    // caption
    if ($values['image_caption']) 
    {
      $values['prepared.figcaption_html'] = '<figcaption class="m-presentation__caption">'.$values['image_caption'].'</figcaption>';
    }

    //unset($value);
  }
];