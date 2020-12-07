<?php namespace Selector;
include_once(MODX_BASE_PATH.'assets/tvs/selector/lib/controller.class.php');
class IssueLatestSelectorController extends SelectorController {
  public function __construct($modx) {
    parent::__construct($modx);
    $this->dlParams['parents'] = '253,254';
    $this->dlParams['depth'] = 1;
    $this->dlParams['showParent'] = '0';
    $this->dlParams['orderBy'] = 'id DESC';
    //$this->dlParams['parents'] = '253,254';
    //$this->dlParams['addWhereList'] = 'c.published = 1 AND c.isfolder = 0';
  }
}