<?php
return [
  'title' => 'Prezentacja: Obraz',
  'icon' => 'fa fa-camera',
  'order' => '205',

  'show_in_templates' => [ 43 ],

  'templates' => [
    'owner' => '@CHUNK pb-tpl-presentation-image'
  ],

  'fields' => [
    'image' => [
      'caption' => 'Obraz',
      'type'    => 'image'
    ],
    'image_caption' => [
      'caption' => 'Opis widoczny pod obrazem (skrócony)',
      'type'    => 'richtext',
      'theme'   => 'mini2',
      'options' => [
        'height' => 50
      ]
    ],
    'image_caption_full' => [
      'caption' => 'Opis widoczny pod obrazem (pełny)',
      'type'    => 'richtext',
      'theme'   => 'mini2',
      'options' => [
        'height' => 50
      ]
    ],
    'fullscreen' => [
      'caption'  => '',
      'type'     => 'checkbox',
      'elements' => 'Wypełnij cały ekran==1',
      'default'  => ''
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

    $random_id = rand(1000, 9999);
    $values['random_id'] = $random_id;
    $iteration = $values['iteration'];

    if ($values['image_caption_full']) 
    {
      $values['prepared.figcaption_html'] = '
      <figcaption class="m-presentation__caption m-presentation__caption--absolute _has-more visible-lg">
        
        <div class="m-presentation__caption-short">
          '.$values['image_caption'].'
        </div>
        
        <a role="button" class="m-presentation__caption-btn-collapse" data-toggle="collapse" href="#collapseCaption' . $random_id . '" aria-expanded="false" aria-controls="collapseCaption' . $random_id . '"></a>
        
        <div class="collapse" id="collapseCaption' . $random_id . '">
          <div class="collapse-inner">
            '.$values['image_caption_full'].'
          </div>
        </div>
        
      </figcaption>';
    }
    else
    {
      if ($values['image_caption']) 
      {
        $values['prepared.figcaption_html'] = '
        <figcaption class="m-presentation__caption m-presentation__caption--absolute visible-lg">
        
          <div class="m-presentation__caption-short">
            '.$values['image_caption'].'
          </div>
          
        </figcaption>
        ';
      }
    }
    
    if ($values['image_caption_full']) {
		$values['prepared.modal_html'] = '
		
		<figcaption class="m-presentation__caption m-presentation__caption--absolute _has-more hidden-lg">
        
        <div class="m-presentation__caption-short">
          '.$values['image_caption'].'
          <a type="button" class="m-presentation__caption-btn-collapse" data-toggle="modal" data-backdrop="'.$values['bgc'].'" data-target="#modal'.$random_id.'">
        </a>
        </div>
        
        
        
       
      </figcaption>
      
		
			  
		


		<div class="modal fade presentation-modal" tabindex="-1" role="dialog" id="modal'.$random_id.'">
		
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-header">
				
				<h4 class="modal-title">'.$values['image_caption'].'</h4>
			  </div>
			  <div class="modal-body">
				'.$values['image_caption_full'].'<a class="m-presentation__caption-btn-collapse " data-dismiss="modal" aria-label="Close"></a>
			  </div>
			</div>
		  </div>
		</div>
		';
    } else {
    $values['prepared.modal_html'] = '
		
		<figcaption class="m-presentation__caption m-presentation__caption--absolute _has-more hidden-lg">
        
        <div class="m-presentation__caption-short">
          '.$values['image_caption'].'
        </a>
        </div>
        
        
        
       
      </figcaption>';
    }

    if ($values['gif']) 
    {
      $values['prepared.image_html'] = '<img src="'.$values['image'].'" alt="">';
    }
    else 
    {
      if ($values['fullscreen']) 
      {
        //$values['prepared.wrapper_begin'] = '<section class="fullpage-section" data-anchor="[+iteration+]"><div class="m-presentation m-presentation--full-image"><figure>';
        //$values['prepared.wrapper_end']   = '</figure></div></section>';
        $values['prepared.image_html'] = $modx->runSnippet('srcset', [
          'input'       => $values['image'], 
          'sizes'       => '100vw',
          'srcset'      => '360,640,768,1024,1280,1920',
          'defaultSize' => '1920',
          'quality'     => '80',
          'attrAlt'     => ''
        ]);
      }
      else 
      {
        //$values['prepared.wrapper_begin'] = '<section class="fullpage-section fullpage-section--bgc-white" data-anchor="[+iteration+]"><div class="m-presentation m-presentation--image"><div class="m-presentation__outer"><div class="m-presentation__inner"><div class="container-fluid u-typo"><figure>';
        //$values['prepared.wrapper_end']   = '</figure></div></div></div></div></section>';
        $values['prepared.image'] = $modx->runSnippet('phpthumb', [
          'input'   => $values['image'], 
          'options' => 'h=720'
        ]);
        $values['prepared.image_html'] = '<img src="'.$values['prepared.image'].'" alt="">';
      }

    }

    //unset($value);
  }
];