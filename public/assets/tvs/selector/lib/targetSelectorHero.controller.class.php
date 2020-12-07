<?php namespace Selector;
include_once(MODX_BASE_PATH.'assets/tvs/selector/lib/controller.class.php');
class TargetSelectorHeroController extends SelectorController {
  public function __construct($modx) {
    parent::__construct($modx);
    $this->dlParams['parents'] = '58,351,387,423';
    $this->dlParams['sortBy']  = 'pagetitle';
    $this->dlParams['sortDir'] = 'asc';
    $this->dlParams['addWhereList'] = 'c.published = 1';
  }
}