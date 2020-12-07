<?php
return [
  'title' => 'Audio',
  'icon' => 'fa fa-volume-up',
  'order' => '202',
  'show_in_templates' => [ 4,17 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-content-audio',
    'pdf' => [
      'owner' => '@CHUNK pb-tpl-content-audio'
    ]
  ],
  
  'fields' => [
    'audio_file' => [
      'caption' => 'Plik audio (MP3)',
      'type'    => 'file'
    ],
    
    'audio_caption' => [
      'caption' => 'Opis widoczny pod odtwarzaczem',
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
    ]
  ],

  'prepare' => function($options, &$values) {
    global $modx;

    if ($values['audio_caption']) 
    {
      $values['prepared.caption_html'] = '<div class="c-article-audio__caption">'.$values['audio_caption'].'</div>';
    }

    // pull right
    if ($values['pull_right']) 
    {
      $values['prepared.class_modifier'] = 'm-page-content--audio-right';
    }
    else 
    {
      $values['prepared.class_modifier'] = 'm-page-content--audio-default';
    }

    //unset($value);
  }
];