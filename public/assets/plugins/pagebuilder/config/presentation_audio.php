<?php
return [
  'title' => 'Prezentacja: Audio',
  'icon' => 'fa fa-volume-up',
  'order' => '401',

  'show_in_templates' => [ 43 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-presentation-audio'
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
    'bgc' => [
      'caption'  => 'Kolor tła',
      'type'     => 'dropdown',
      'elements' => 'Kolor numeru==issue||Biały==white',
      'default'  => 'issue'
    ]
  ],

  'prepare' => function($options, &$values) {
    global $modx;

    if ($values['audio_caption']) 
    {
      $values['prepared.caption_html'] = '<div class="m-presentation__caption m-presentation__caption--absolute">'.$values['audio_caption'].'</div>';
    }
    
    $player_id = rand(1000, 9999);
    $values['audio_player_id'] = $player_id;
    
    $modx->regClientHTMLBlock('
      <script>
        $(document).ready(function () {
          $("#jplayer_'.$player_id.'").jPlayer({
            ready: function () {
              $(this).jPlayer("setMedia", {
                title: $(this).attr(\'data-title\'),
                mp3: $(this).attr(\'data-file\')
              });
            },
            play: true,
            swfPath: "assets/templates/widok_tpl/js/vendor/",
            supplied: "mp3",
            useStateClassSkin: true,
            autoBlur: false,
            smoothPlayBar: true,
            keyEnabled: true,
            remainingDuration: true,
            toggleDuration: true,
            cssSelectorAncestor: \'#jp_container_'.$player_id.'\'
          });

          $("#jplayer_'.$player_id.'").bind($.jPlayer.event.ended, function(event) {
            $(".audioplayer-control-play").removeClass("active");
          });
        });
      </script>
    ');

    //unset($value);
  }
];