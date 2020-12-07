<?php
return array(
    'maxElements'        => 1,
    'nbDropdownElements' => 5,
    'searchMaxLength'    => 30,
    'searchMinLength'    => 0,
    'textField'          => 'text',
    'valueField'         => 'id',
    'htmlField'          => 'html',
    'tokenConfig'        => array(
        'tpl' => '@CODE: <option value="[+id+]" selected>[+id+]. [+pagetitle+]</option>'
    )
);