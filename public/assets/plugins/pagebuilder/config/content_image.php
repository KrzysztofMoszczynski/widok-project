<?php
return [
  'title' => 'Obraz',
  'icon' => 'fa fa-camera',
  'order' => '200',
  'show_in_templates' => [ 4,17 ],
  'templates' => [
    'owner' => '@CHUNK pb-tpl-content-image',
    'pdf' => [
      'owner' => '@CHUNK pb-tpl-content-image'
    ]
  ],
  'fields' => [
    'image' => [
      'caption' => 'Obraz',
      'type'    => 'image',
    ],
    'image_caption' => [
      'caption' => 'Opis pod obrazem (opcjonalnie)',
      'type'    => 'richtext',
      'theme'   => 'mini2',
      'options' => [
        'height' => 50
      ]
    ],
    'pull_right' => [
      'caption'  => '',
      'type'     => 'checkbox',
      'elements' => 'Oblany==1',
      'default'  => ''
    ],
    'gif' => [
      'caption'  => '',
      'type'     => 'checkbox',
      'elements' => 'Animowany GIF==1',
      'default'  => ''
    ]
  ],

  'prepare' => function($options, &$values) {
    global $modx;

    // layout css class
    if ($values['pull_right']) 
    {
      $values['prepared.class'] = 'c-article-figure c-article-figure--right';
    }
    else 
    {
      $values['prepared.class'] = 'c-article-figure';
    }

    // image
    if ($values['gif']) 
    {
      $values['prepared.thumb_html'] = '<img src="'.$values['image'].'" alt="">';
      $values['prepared.zoom_image'] = $values['image'];
    }
    else 
    {
      $values['prepared.zoom_image'] = $modx->runSnippet('phpthumb', [
        'input'   => $values['image'], 
        'options' => 'w=1920,f=jpg,q=80'
      ]);
      
      if ($values['pull_right']) 
      {
        $values['prepared.thumb_html'] = $modx->runSnippet('srcset', [
          'input'       => $values['image'], 
          'sizes'       => '(min-width: 768px) 300px, calc(100vw - 30px)',
          'srcset'      => '330,660,768,1320',
          'defaultSize' => '660',
          'quality'     => '80',
          'attrAlt'     => ''
        ]);
      }
      else 
      {
        $values['prepared.thumb_html'] = $modx->runSnippet('srcset', [
          'input'       => $values['image'], 
          'sizes'       => '(min-width: 1200px) 50vw, (min-width: 825px) 666px, (min-width: 768px) calc(100vw - 78px), calc(100vw - 30px)',
          'srcset'      => '333,666,1332',
          'defaultSize' => '666',
          'quality'     => '80',
          'attrAlt'     => ''
        ]);
      }
    }

    // caption
    if ($values['image_caption']) 
    {
      $values['prepared.figcaption_html'] = '<figcaption>'.$values['image_caption'].'</figcaption>';
    }

    //unset($value);
  }
];