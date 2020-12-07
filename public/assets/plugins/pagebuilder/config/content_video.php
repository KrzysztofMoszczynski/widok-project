<?php
return [
  'title' => 'Wideo',
  'icon' => 'fa fa-film',
  'order' => '201',
  'show_in_templates' => [ 4,17 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-content-video',
    'pdf' => [
      'owner' => '@CHUNK pb-tpl-content-video-pdf'
    ]
  ],
  'fields' => [
    'url' => [
      'caption' => 'Adres URL filmu',
      'type'    => 'text'
    ],
    'service' => [
      'caption'  => 'Wybierz dostawcę',
      'type'     => 'dropdown',
      'elements' => 'YouTube==youtube||Vimeo==vimeo',
      'default'  => 'youtube'
    ],
    'video_caption' => [
      'caption' => 'Opis widoczny pod wideo',
      'type'    => 'richtext',
      'theme'   => 'mini2',
      'options' => [
        'height' => 50
      ]
    ],
    'pull_right' => [
      'caption'  => '',
      'type'     => 'checkbox',
      'elements' => 'Oblane==1',
      'default'  => ''
    ],
    'vertical' => [
      'caption'  => '',
      'type'     => 'checkbox',
      'elements' => 'Pionowe==1',
      'default'  => ''
    ],
    'cover_image' => [
      'caption'  => 'Zdjęcie do PDF (w przypadku Vimeo)',
      'type'     => 'image',
      'default'  => ''
    ]
  ],

  'prepare' => function($options, &$values) {
    global $modx;

    if ($values['video_caption']) 
    {
      $values['prepared.caption_html'] = '<div class="c-article-video__caption">'.$values['video_caption'].'</div>';
    }
    
    if ($values['vertical']) 
    {
      $values['prepared.aspect_class_modifier'] = 'embed-responsive-9by16';
    } else {
      $values['prepared.aspect_class_modifier'] = 'embed-responsive-16by9';
    }

    // service
    if ( $values['service'] == 'vimeo') 
    {
      $values['prepared.video_id']  = $modx->runSnippet('getVimeoId', ['url' => $values['url']]);
      $values['prepared.video_src'] = 'https://player.vimeo.com/video/'.$values['prepared.video_id'].'?title=0&byline=0&portrait=0';

      //$data = file_get_contents("http://vimeo.com/api/v2/video/".$values['prepared.video_id'].".json");
      
      //$data = json_decode($data);
       //$values['prepared.video_image_src'] =  $data[0]->thumbnail_medium;
       $values['prepared.video_image_src'] = $values['cover_image'];
    }
    else
    {
      $values['prepared.video_id']  = $modx->runSnippet('getYouTubeId', ['url' => $values['url']]);
      $values['prepared.video_src'] = 'https://www.youtube.com/embed/'.$values['prepared.video_id'].'?rel=0';
      $values['prepared.video_image_src'] = 'https://img.youtube.com/vi/'.$values['prepared.video_id'].'/hqdefault.jpg';
      
    }

    // pull right
    if ($values['pull_right']) 
    {
      $values['prepared.class_modifier'] = 'm-page-content--video-right';
      $values['prepared.pdf_class'] = 'c-article-figure c-article-figure--right';

    }
    else 
    {
      $values['prepared.class_modifier'] = 'm-page-content--video-default';
      $values['prepared.pdf_class'] = 'c-article-figure';
    }

    //unset($value);
  }
];