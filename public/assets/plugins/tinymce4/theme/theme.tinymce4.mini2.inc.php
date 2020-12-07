<?php
/*
 * All available config-params of TinyMCE4
 * https://www.tinymce.com/docs/configure/
 *
 * Belows default configuration setup assures all editor-params have a fallback-value, and type per key is known
 * $this->set( $editorParam, $value, $type, $emptyAllowed=false )
 *
 * $editorParam     = param to set
 * $value           = value to set
 * $type            = string, number, bool, json (array or string)
 * $emptyAllowed    = true, false (allows param:'' instead of falling back to default)
 * If $editorParam is empty and $emptyAllowed is true, $defaultValue will be ignored
 *
 * $this->modxParams holds an array of actual Modx- / user-settings
 *
 * */

// @todo: clean plugins for mini

$this->set('plugins', 'advlist autolink lists link image anchor wordcount visualchars table code fullscreen nonbreaking save contextmenu paste textcolor  textpattern modxlink', 'string');
$this->set('toolbar1', 'undo redo | bold italic underline strikethrough subscript superscript | link unlink | bullist numlist | fullscreen code', 'string');
$this->set('toolbar2', NULL);
$this->set('toolbar3', NULL);
$this->set('toolbar4', NULL);

// Hide bars
$this->set('menubar',   false, 'bool' ); // https://www.tinymce.com/docs/configure/editor-appearance/#menubar
$this->set('statusbar', false, 'bool' ); // https://www.tinymce.com/docs/get-started/customize-ui/#hidingthestatusbar

// Will be overwritten by force() within plugin-code anyhow
$this->set('height', '200px', 'string' );
$this->set('width',  '100%',  'string' );