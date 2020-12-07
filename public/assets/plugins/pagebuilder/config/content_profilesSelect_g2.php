<?php
global $modx;

$params['parents']       = 300;
$params['depth']         = '1';
$params['showNoPublish'] = '0';
$params['showParent']    = '0';
$params['orderBy']       = 'alias ASC';
$params['tpl']           = '@CODE:[+pagetitle+]==[+id+]||';
$params['tplLast']       = '@CODE:[+pagetitle+]==[+id+]';
$params['tvList']        = 'authorGroup';
$params['filters']       = 'AND(tv:authorGroup:containsOne:2)';

$output  = 'Wybierz...== ||';
$output .= $modx->runSnippet('DocLister',$params);

return [
  'title' => 'Profile (recenzenci)',
  'icon' => 'fa fa-group',
  'order' => '403',
  'show_in_templates' => [ 4 ],
  
  'templates' => [
    'owner'    => '@CHUNK pb-tpl-profiles',
    'profiles' => '@CHUNK pb-tpl-profiles__item'
  ],
  
  'fields' => [
    'name' => [
      'caption' => 'Tytuł grupy',
      'type'    => 'text'
    ],
    'collapse' => [
      'caption'  => 'Rozwijanie',
      'type'     => 'dropdown',
      'elements' => 'Nie==0||Tak==1',
      'default'  => '0'
    ],
    'layout' => [
      'caption'  => 'Wygląd elementów',
      'type'     => 'dropdown',
      'elements' => 'Pełny==full||Prosty==basic||Prosty + zdjęcie==basic-image',
      'default'  => 'full'
    ],
    'profiles' => [
      'caption' => 'Profile',
      'type'    => 'group',
      'fields'  => [
        'profile' => [
          'caption' => 'Wybierz',
          'type'    => 'dropdown',
          'elements' => $output
        ]
      ]
    ]
  ],

  'prepare' => function($options, &$values) {
    global $modx;

    $context = $modx->getPlaceholder('context');
    
    foreach ($values['profiles'] as &$value) {
      $get_name  = $modx->runSnippet('tv', [
        'tv' => 'pagetitle',
        'id' => $value['profile'] 
      ]);
      $get_image = $modx->runSnippet('tv', [
        'tv' => 'authorPicture',
        'id' => $value['profile'] 
      ]);
      $get_desc  = $modx->runSnippet('tv', [
        'tv' => 'authorDescription_' . $context,
        'id' => $value['profile'] 
      ]);
      $get_affil = $modx->runSnippet('multiTV', [
        'tvName'    => 'authorAffiliation_' . $context . '_mtv', 
        'docid'     => $value['profile'], 
        'outerTpl'  => 'mtv-profileMeta-wrap', 
        'rowTpl'    => 'mtv-profileMeta-item' 
      ]);
      
      /*
      $get_links = $modx->runSnippet('multiTV', [
        'tvName'    => 'authorLinks_mtv', 
        'docid'     => $value['profile'], 
        'outerTpl'  => 'mtv-profileMeta-wrap', 
        'rowTpl'    => 'mtv-profileMeta-item-link' 
      ]);
      */

      $value['prepared.name']        = $get_name;
      $value['prepared.content']     = $get_desc;
      $value['prepared.affiliation'] = $get_affil;
      // $value['prepared.links']       = $get_links;
      $value['prepared.image']       = $get_image;

      if ($value['prepared.image']) 
      {
        $value['prepared.image_html'] = '
          <div class="c-team__image">
		    <img src="'.$value['prepared.image'].'" alt="">
          </div>
        ';
      }
    }
    unset($value);
  }
];

unset($output);
unset($params);