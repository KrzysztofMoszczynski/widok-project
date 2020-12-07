<?php
return [
  'title' => 'Prezentacja: Tekst',
  'icon' => 'fa fa-pencil',
  'order' => '201',

  'show_in_templates' => [ 43 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-presentation-text'
  ],

  'fields' => [
    'content' => [
      'caption' => 'Treść',
      'default' => '',
      'type'    => 'richtext',
      'theme'   => 'custom',
      'options' => [
        'height' => 200
      ]
    ],
    /*'image' => [
      'caption' => 'Obraz pod tekstem',
      'type'    => 'image'
    ],
    'gif' => [
      'caption'  => '',
      'type'     => 'checkbox',
      'elements' => 'Animowany GIF==1',
      'default'  => ''
    ],*/
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
    if ($values['image']) 
    {
      if ($values['gif']) 
      {
        $values['prepared.image_html'] = '<figure><img src="'.$values['image'].'" alt=""></figure>';
      }
      else 
      {
        $values['prepared.image_2x'] = $modx->runSnippet('phpthumb', [
          'input'   => $values['image'], 
          'options' => 'w=1332'
        ]);

        $values['prepared.image_1x'] = $modx->runSnippet('phpthumb', [
          'input'   => $values['image'], 
          'options' => 'w=666'
        ]);

        $values['prepared.image_html'] = '
        <figure>
          <img srcset="'.$values['prepared.image_2x'].' 2x, 
                       '.$values['prepared.image_1x'].' 1x"
                  src="'.$values['prepared.image_1x'].'" 
                  alt="">
        </figure>
      ';
      }
    }

    //unset($value);
  }
];