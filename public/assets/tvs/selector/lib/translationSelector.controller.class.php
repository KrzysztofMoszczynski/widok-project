<?php namespace Selector;
include_once(MODX_BASE_PATH.'assets/tvs/selector/lib/controller.class.php');
class TranslationSelectorController extends SelectorController {
  public function __construct($modx) {
    parent::__construct($modx);
    $this->dlParams['parents'] = '1,58';
    $this->dlParams['showNoPublish'] = 1;
    $this->dlParams['addWhereList'] = '';
  }
}