/*global $, jQuery, alert*/

function getSelectedIssueData(data) {
  if ($('#js-selected-issue').length) {
    var result = $('#js-selected-issue').attr('data-selected-issue-' + data);
    if (result.length > 0) {
      return result;
    } else {
      return;
    }
  } else {
    return;
  }
}

function setSelectedIssueData() {
  setCookie( 'selected_issue_id',    getSelectedIssueData('id') );
  setCookie( 'selected_issue_color', getSelectedIssueData('color') );
}

function resetSelectedIssueData() {
  setCookie( 'selected_issue_id',    '',  '-1');
  setCookie( 'selected_issue_color', '',  '-1');
}

(function($) {
  $(document).ready(function () {

    var check_tpl_home         = $('body').hasClass('tpl-3'),
        check_tpl_issue        = $('body').hasClass('tpl-40'),
        check_tpl_article      = $('body').hasClass('tpl-17'),
        check_tpl_presentation = $('body').hasClass('tpl-43'),
        cookie_gsid_id         = getCookie('selected_issue_id'),
        cookie_gsid_color      = getCookie('selected_issue_color');

    // delete cookies when visiting home page
    if (check_tpl_home) {
      resetSelectedIssueData(); 
    }

    // set stored issue data
    // when visiting issue (40), issue article (17) or issue presentation (43) page
    if (check_tpl_issue || check_tpl_article || check_tpl_presentation) {
      setSelectedIssueData();
    }

  });
})(jQuery);