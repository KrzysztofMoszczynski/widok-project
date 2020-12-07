<?php
return [
  'title' => 'Prezentacja: Wideo (embed)',
  'icon' => 'fa fa-film',
  'order' => '207',

  'show_in_templates' => [ 43 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-presentation-video'
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
    'bgc' => [
      'caption'  => 'Kolor tła',
      'type'     => 'dropdown',
      'elements' => 'Czarny==black||Biały==white||Kolor numeru==issue',
      'default'  => 'black'
    ]
  ],

  'prepare' => function($options, &$values) {
    global $modx;

    if ($values['video_caption']) 
    {
      $values['prepared.caption_html'] = '<div class="m-presentation__caption m-presentation__caption--absolute">'.$values['video_caption'].'</div>';
    }

    // service
    if ( $values['service'] == 'vimeo') 
    {
      $values['prepared.video_id']  = $modx->runSnippet('getVimeoId', ['url' => $values['url']]);
      $values['prepared.video_src'] = 'https://player.vimeo.com/video/'.$values['prepared.video_id'].'?title=0&byline=0&portrait=0';
    }
    else
    {
      $values['prepared.video_id']  = $modx->runSnippet('getYouTubeId', ['url' => $values['url']]);
      $values['prepared.video_src'] = 'https://www.youtube.com/embed/'.$values['prepared.video_id'].'?rel=0';
    }

    //unset($value);
  }
];