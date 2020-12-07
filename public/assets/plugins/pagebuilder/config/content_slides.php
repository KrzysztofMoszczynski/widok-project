<?php
return [
  'title' => 'Slideshow',
  'icon' => 'fa fa-camera',
  'order' => '201',

  'show_in_templates' => [ 4,17 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-content-slides',
    'items' => '@CHUNK pb-tpl-content-slides__item',
    'pdf' => [
      'owner' => '@CHUNK pb-tpl-content-slides-pdf',
      'items' => '@CHUNK pb-tpl-content-slides__item'
    ]
  ],

  'fields' => [
    'items' => [
      'caption' => 'Slajdy',
      'type'    => 'group',
      'fields'  => [
        'image' => [
          'caption' => 'Obraz',
          'type'    => 'image'
        ]
      ]
    ],
    'slides_caption' => [
      'caption' => 'Opis widoczny pod obrazami',
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
  ],

  'prepare' => function($options, &$values) {
    global $modx;
    
    // caption
    if ($values['slides_caption']) 
    {
      $values['prepared.caption_html'] = '<div class="c-article-slides__caption">'.$values['slides_caption'].'</div>';
    }

    foreach ($values['items'] as &$value) 
    {
      // pull right
      if ($values['pull_right']) 
      {
        $values['prepared.class_modifier'] = 'm-page-content--slides-right';
        $values['prepared.pdf_class'] = 'c-article-figure c-article-figure--right';
      }
      else 
      {
        $values['prepared.class_modifier'] = 'm-page-content--slides-default';
        $values['prepared.pdf_class'] = 'c-article-figure';
      }

      // image
      $value['prepared.zoom_image'] = $modx->runSnippet('phpthumb', [
        'input'   => $value['image'], 
        'options' => 'w=1920,f=jpg,q=80'
      ]);

      if ($value['pull_right']) 
      {
        $value['prepared.thumb_html'] = $modx->runSnippet('srcset', [
          'input'       => $value['image'], 
          'sizes'       => '(min-width: 768px) 300px, calc(100vw - 30px)',
          'srcset'      => '330,660,768,1320',
          'defaultSize' => '660',
          'quality'     => '80',
          'attrAlt'     => ''
        ]);
      }
      else 
      {
        $value['prepared.thumb_html'] = $modx->runSnippet('srcset', [
          'input'       => $value['image'], 
          'sizes'       => '(min-width: 1200px) 50vw, (min-width: 825px) 666px, (min-width: 768px) calc(100vw - 78px), calc(100vw - 30px)',
          'srcset'      => '333,666,1332',
          'defaultSize' => '666',
          'quality'     => '80',
          'attrAlt'     => ''
        ]);
      }

    }
    
    $values['first_image_html'] = $values['items'][0]['prepared.thumb_html'];

    unset($value);
  }
];