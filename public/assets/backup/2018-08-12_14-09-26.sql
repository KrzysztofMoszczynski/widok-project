#
# Widok. Teorie i Praktyki Kultury Wizualnej Database Dump
# MODX Version:1.4.5
# 
# Host: 
# Generation Time: 12-08-2018 14:09:26
# Server version: 10.1.31-MariaDB-cll-lve
# PHP Version: 7.1.20
# Database: `pismowid_evo`
# Description: 
#

# --------------------------------------------------------

#
# Table structure for table `widok_evo_active_user_locks`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_active_user_locks`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_active_user_locks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `elementType` int(1) NOT NULL DEFAULT '0',
  `elementId` int(10) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';

#
# Dumping data for table `widok_evo_active_user_locks`
#

INSERT INTO `widok_evo_active_user_locks` VALUES ('163','a4ab17de2b53d02581472a123b072d37','1','3','13','1534068379');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_active_user_sessions`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_active_user_sessions`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about valid user sessions.';

#
# Dumping data for table `widok_evo_active_user_sessions`
#

INSERT INTO `widok_evo_active_user_sessions` VALUES ('a4ab17de2b53d02581472a123b072d37','1','1534075766','91.215.3.212');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_active_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_active_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL,
  PRIMARY KEY (`sid`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about last user action.';

#
# Dumping data for table `widok_evo_active_users`
#

INSERT INTO `widok_evo_active_users` VALUES ('62c0cd266954cc73040fbd6bb37cc818','1','p.matysiak','1533996901','8',NULL);

INSERT INTO `widok_evo_active_users` VALUES ('a4ab17de2b53d02581472a123b072d37','1','p.matysiak','1534075766','93',NULL);


# --------------------------------------------------------

#
# Table structure for table `widok_evo_categories`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_categories`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `widok_evo_categories`
#

INSERT INTO `widok_evo_categories` VALUES ('1','General','45');

INSERT INTO `widok_evo_categories` VALUES ('3','Template','56');

INSERT INTO `widok_evo_categories` VALUES ('4','ManagerAndAdmin','48');

INSERT INTO `widok_evo_categories` VALUES ('5','Galeria','42');

INSERT INTO `widok_evo_categories` VALUES ('6','Login','47');

INSERT INTO `widok_evo_categories` VALUES ('7','Forms','43');

INSERT INTO `widok_evo_categories` VALUES ('8','Wayfinder','57');

INSERT INTO `widok_evo_categories` VALUES ('70','Manager and Admin','0');

INSERT INTO `widok_evo_categories` VALUES ('10','Search','54');

INSERT INTO `widok_evo_categories` VALUES ('11','Navigation','50');

INSERT INTO `widok_evo_categories` VALUES ('12','RunSnippet','53');

INSERT INTO `widok_evo_categories` VALUES ('13','Additional','38');

INSERT INTO `widok_evo_categories` VALUES ('14','Content','27');

INSERT INTO `widok_evo_categories` VALUES ('15','InternalResources','52');

INSERT INTO `widok_evo_categories` VALUES ('16','SystemResponse','46');

INSERT INTO `widok_evo_categories` VALUES ('17','Gallery','44');

INSERT INTO `widok_evo_categories` VALUES ('18','Slides','58');

INSERT INTO `widok_evo_categories` VALUES ('19','SEO','59');

INSERT INTO `widok_evo_categories` VALUES ('20','Blog','39');

INSERT INTO `widok_evo_categories` VALUES ('21','Maps','49');

INSERT INTO `widok_evo_categories` VALUES ('22','Miscellaneous','51');

INSERT INTO `widok_evo_categories` VALUES ('23','DemoContent','40');

INSERT INTO `widok_evo_categories` VALUES ('24','Security','55');

INSERT INTO `widok_evo_categories` VALUES ('25','Categories','37');

INSERT INTO `widok_evo_categories` VALUES ('26','Cookies','31');

INSERT INTO `widok_evo_categories` VALUES ('27','Dashboard','32');

INSERT INTO `widok_evo_categories` VALUES ('28','Core','33');

INSERT INTO `widok_evo_categories` VALUES ('29','Facebook','34');

INSERT INTO `widok_evo_categories` VALUES ('30','Images','28');

INSERT INTO `widok_evo_categories` VALUES ('31','PHxModifiers','36');

INSERT INTO `widok_evo_categories` VALUES ('32','Manager','35');

INSERT INTO `widok_evo_categories` VALUES ('33','multiTV','29');

INSERT INTO `widok_evo_categories` VALUES ('34','TemplateSelect','30');

INSERT INTO `widok_evo_categories` VALUES ('36','Documents','16');

INSERT INTO `widok_evo_categories` VALUES ('37','System','21');

INSERT INTO `widok_evo_categories` VALUES ('39','Blocks','9');

INSERT INTO `widok_evo_categories` VALUES ('40','TemplateVariableFiller','23');

INSERT INTO `widok_evo_categories` VALUES ('41','Tools','24');

INSERT INTO `widok_evo_categories` VALUES ('48','DocLister','14');

INSERT INTO `widok_evo_categories` VALUES ('44','Tree','25');

INSERT INTO `widok_evo_categories` VALUES ('49','DocListerPagination','15');

INSERT INTO `widok_evo_categories` VALUES ('47','PageBuilder','19');

INSERT INTO `widok_evo_categories` VALUES ('53','User','26');

INSERT INTO `widok_evo_categories` VALUES ('54','Shared','20');

INSERT INTO `widok_evo_categories` VALUES ('55','Taxonomy','22');

INSERT INTO `widok_evo_categories` VALUES ('56','API','8');

INSERT INTO `widok_evo_categories` VALUES ('57','Filters','17');

INSERT INTO `widok_evo_categories` VALUES ('58','Context','10');

INSERT INTO `widok_evo_categories` VALUES ('60','Sitemap','60');

INSERT INTO `widok_evo_categories` VALUES ('61','Wydanie','4');

INSERT INTO `widok_evo_categories` VALUES ('62','META','6');

INSERT INTO `widok_evo_categories` VALUES ('68','Autor','0');

INSERT INTO `widok_evo_categories` VALUES ('63','Przypisy','7');

INSERT INTO `widok_evo_categories` VALUES ('65','Kategorie','2');

INSERT INTO `widok_evo_categories` VALUES ('64','Artykuł','5');

INSERT INTO `widok_evo_categories` VALUES ('66','Tagi','3');

INSERT INTO `widok_evo_categories` VALUES ('67','Tłumaczenie','1');

INSERT INTO `widok_evo_categories` VALUES ('69','CustomProjectCode','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_document_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_document_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_dg_id` (`document_group`,`document`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `widok_evo_document_groups`
#

INSERT INTO `widok_evo_document_groups` VALUES ('1','1','3');

INSERT INTO `widok_evo_document_groups` VALUES ('2','1','4');

INSERT INTO `widok_evo_document_groups` VALUES ('3','1','5');

INSERT INTO `widok_evo_document_groups` VALUES ('104','1','39');

INSERT INTO `widok_evo_document_groups` VALUES ('122','1','99');

INSERT INTO `widok_evo_document_groups` VALUES ('130','1','206');

INSERT INTO `widok_evo_document_groups` VALUES ('144','1','279');

INSERT INTO `widok_evo_document_groups` VALUES ('145','1','280');

INSERT INTO `widok_evo_document_groups` VALUES ('120','1','250');

INSERT INTO `widok_evo_document_groups` VALUES ('121','1','256');

INSERT INTO `widok_evo_document_groups` VALUES ('131','1','263');

INSERT INTO `widok_evo_document_groups` VALUES ('136','1','264');

INSERT INTO `widok_evo_document_groups` VALUES ('137','1','265');

INSERT INTO `widok_evo_document_groups` VALUES ('143','1','278');

INSERT INTO `widok_evo_document_groups` VALUES ('142','1','277');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_documentgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_documentgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `widok_evo_documentgroup_names`
#

INSERT INTO `widok_evo_documentgroup_names` VALUES ('1','managerdocs_administrators','1','0');

INSERT INTO `widok_evo_documentgroup_names` VALUES ('2','managerdocs_clients','1','0');

INSERT INTO `widok_evo_documentgroup_names` VALUES ('3','webdocs_registered','0','1');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_event_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_event_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `widok_evo_event_log`
#

INSERT INTO `widok_evo_event_log` VALUES ('1','0','1528471999','3','0','1','Snippet - run_doclister_issue / `307,302,306,311,3','<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><h3 style=\"color:red\">`307,302,306,311,304,301,309,310,308,305` is not numeric and may not be passed to makeUrl()</h3>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>run_doclister_issue</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://www.widok.stronazen.pl/pl/archiwum/nr-1-2013-widzialnosc-rzeczy</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[299] <a href=\"http://www.widok.stronazen.pl/pl/archiwum/nr-1-2013-widzialnosc-rzeczy\" target=\"_blank\">Nr 1 (2013): Widzialność rzeczy</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://www.widok.stronazen.pl/pl/archiwum</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>91.215.3.212</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-06-08 17:33:19</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0,0222 s (29 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0,0904 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0,1126 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1,6462173461914 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2825</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2934</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2676</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 1989</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2077</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1926</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'DocLister\', array $var2)<br />manager/includes/document.parser.class.inc.php(1926) : eval()\'d code on line 82</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4244</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1926</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1926) : eval()\'d code on line 1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocLister->render</strong>()<br />assets/snippets/DocLister/snippet.DocLister.php on line 39</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>site_contentDocLister->_render</strong>(\'dl-issueArticle\')<br />assets/snippets/DocLister/core/DocLister.abstract.php on line 615</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>extDocLister->init</strong>(site_contentDocLister $var1, array $var2)<br />assets/snippets/DocLister/core/controller/site_content.php on line 179</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>prepare_DL_Extender->run</strong>()<br />assets/snippets/DocLister/core/extDocLister.abstract.php on line 78</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>prepare_DL_Extender->callPrepare</strong>(Closure $var1, array $var2)<br />assets/snippets/DocLister/core/extender/prepare.extender.inc on line 53</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->{closure}</strong>(array $var1, DocumentParser $var2, site_contentDocLister $var3, prepare_DL_Extender $var4)<br />assets/snippets/DocLister/core/extender/prepare.extender.inc on line 92</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->makeUrl</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1926) : eval()\'d code on line 43</td>\n	</tr>\n</table>\n');

INSERT INTO `widok_evo_event_log` VALUES ('2','0','1533990420','3','0','1','Snippet - siteConfig / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : filemtime(): stat failed for /home/pismowid/domains/widok.stronazen.pl/public_html/assets/templates/default_tpl/js/vendor/modernizr-custom.js</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/pismowid/domains/widok.stronazen.pl/public_html/assets/snippets/cssjs/snippet.js.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>  $v[$key] =  filemtime($file);\n</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current Snippet</td>\n		<td>siteConfig</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://www.widok.stronazen.pl/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[59] <a href=\"http://www.widok.stronazen.pl/\" target=\"_blank\">Start</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://www.widok.stronazen.pl/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>91.215.3.212</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-08-11 14:27:00</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0099 s (10 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0305 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0404 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.64697265625 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2971</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2713</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'siteConfig\')<br />manager/includes/document.parser.class.inc.php on line 2025</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2113</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1962</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->runSnippet</strong>(\'MinifyJS\', array $var2)<br />manager/includes/document.parser.class.inc.php(1962) : eval()\'d code on line 89</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 4292</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1962</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>require</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1962) : eval()\'d code on line 27</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>filemtime</strong>(string $var1)<br />assets/snippets/cssjs/snippet.js.php on line 15</td>\n	</tr>\n</table>\n');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_keyword_xref`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_keyword_xref`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';

#
# Dumping data for table `widok_evo_keyword_xref`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_manager_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_manager_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1425 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `widok_evo_manager_log`
#

INSERT INTO `widok_evo_manager_log` VALUES ('1','1528451559','1','p.matysiak','54','-','widok_evo_manager_log','Optimizing a table','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('2','1528451560','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('3','1528451573','1','p.matysiak','54','-','widok_evo_event_log','Optimizing a table','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('4','1528451573','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('5','1528451625','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('6','1528455300','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('7','1528455359','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('8','1528455483','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('9','1528455498','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('10','1528455548','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('11','1528455562','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('12','1528455570','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('13','1528455762','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('14','1528455814','1','p.matysiak','27','282','Zespół redakcyjny','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('15','1528455881','1','p.matysiak','56','300','-','Refresh resource tree','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('16','1528455910','1','p.matysiak','22','123','tvSelectResources','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('17','1528455940','1','p.matysiak','301','60','Autor','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('18','1528455977','1','p.matysiak','3','211','Numer 1: Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('19','1528455978','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('20','1528455998','1','p.matysiak','302','60','Autor','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('21','1528455998','1','p.matysiak','301','60','Autor','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('22','1528456000','1','p.matysiak','3','211','Numer 1: Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('23','1528456002','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('24','1528456044','1','p.matysiak','304','60','issueArticleAuthor Kopia','Duplicate Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('25','1528456044','1','p.matysiak','301','65','Autor Duplicate','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('26','1528456115','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('27','1528456136','1','p.matysiak','302','65','Redaktorzy','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('28','1528456136','1','p.matysiak','301','65','Redaktorzy','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('29','1528456144','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('30','1528456228','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('31','1528456240','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('32','1528456248','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('33','1528456250','1','p.matysiak','117','40','-','Editing tv rank','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('34','1528456265','1','p.matysiak','117','40','-','Editing tv rank','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('35','1528456415','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('36','1528456438','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('37','1528456477','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('38','1528456483','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('39','1528456485','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('40','1528456531','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('41','1528456531','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('42','1528456552','1','p.matysiak','24','128','siteLexicon_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('43','1528456552','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('44','1528456576','1','p.matysiak','24','129','siteLexicon_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('45','1528456576','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('46','1528456590','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('47','1528456591','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('48','1528456620','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('49','1528456620','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('50','1528456647','1','p.matysiak','78','128','block-pagetitle','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('51','1528456653','1','p.matysiak','79','128','block-pagetitle','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('52','1528456653','1','p.matysiak','78','128','block-pagetitle','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('53','1528456656','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('54','1528456664','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('55','1528456664','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('56','1528456665','1','p.matysiak','78','1','block-foot','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('57','1528456672','1','p.matysiak','79','1','block-foot','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('58','1528456672','1','p.matysiak','78','1','block-foot','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('59','1528456691','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('60','1528456691','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('61','1528456692','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('62','1528456701','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('63','1528456701','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('64','1528456702','1','p.matysiak','22','148','run_doclister_archiveSearch','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('65','1528456771','1','p.matysiak','16','8','SearchTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('66','1528456782','1','p.matysiak','20','8','SearchTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('67','1528456782','1','p.matysiak','16','8','SearchTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('68','1528456795','1','p.matysiak','78','109','pb-tpl-content-image','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('69','1528456806','1','p.matysiak','79','109','pb-tpl-content-image','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('70','1528456806','1','p.matysiak','78','109','pb-tpl-content-image','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('71','1528456808','1','p.matysiak','78','111','pb-tpl-content-lead','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('72','1528456813','1','p.matysiak','79','111','pb-tpl-content-lead','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('73','1528456813','1','p.matysiak','78','111','pb-tpl-content-lead','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('74','1528456814','1','p.matysiak','78','112','pb-tpl-content-quote','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('75','1528456823','1','p.matysiak','79','112','pb-tpl-content-quote','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('76','1528456823','1','p.matysiak','78','112','pb-tpl-content-quote','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('77','1528456832','1','p.matysiak','78','113','pb-tpl-content-text','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('78','1528456842','1','p.matysiak','79','113','pb-tpl-content-text','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('79','1528456842','1','p.matysiak','78','113','pb-tpl-content-text','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('80','1528456846','1','p.matysiak','78','119','pb-tpl-content-youtube','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('81','1528456861','1','p.matysiak','79','119','pb-tpl-content-youtube','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('82','1528456861','1','p.matysiak','78','119','pb-tpl-content-youtube','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('83','1528456866','1','p.matysiak','78','133','pb-tpl-profiles','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('84','1528456872','1','p.matysiak','79','133','pb-tpl-profiles','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('85','1528456872','1','p.matysiak','78','133','pb-tpl-profiles','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('86','1528456874','1','p.matysiak','78','134','pb-tpl-profiles__item','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('87','1528456967','1','p.matysiak','27','314','Adam Lipszyc','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('88','1528457895','1','p.matysiak','300','-','Nowa zmienna szablonu','Create Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('89','1528458013','1','p.matysiak','302','-','Opis','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('90','1528458013','1','p.matysiak','301','66','Opis','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('91','1528458032','1','p.matysiak','27','314','Adam Lipszyc','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('92','1528458066','1','p.matysiak','78','134','pb-tpl-profiles__item','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('93','1528458077','1','p.matysiak','304','66','authorDescription Kopia','Duplicate Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('94','1528458078','1','p.matysiak','301','67','Opis Duplicate','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('95','1528458101','1','p.matysiak','302','67','Uczelnia','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('96','1528458101','1','p.matysiak','301','67','Uczelnia','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('97','1528458109','1','p.matysiak','27','307','Adam Mazur','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('98','1528458283','1','p.matysiak','3','307','Adam Mazur','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('99','1528458288','1','p.matysiak','301','66','Opis','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('100','1528458292','1','p.matysiak','302','66','Opis','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('101','1528458293','1','p.matysiak','301','66','Opis','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('102','1528458298','1','p.matysiak','27','307','Adam Mazur','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('103','1528458324','1','p.matysiak','304','67','authorUniversity Kopia','Duplicate Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('104','1528458325','1','p.matysiak','301','68','Uczelnia Duplicate','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('105','1528458339','1','p.matysiak','302','68','WWW','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('106','1528458339','1','p.matysiak','301','68','WWW','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('107','1528458341','1','p.matysiak','3','307','Adam Mazur','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('108','1528458342','1','p.matysiak','27','307','Adam Mazur','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('109','1528458383','1','p.matysiak','301','66','Opis','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('110','1528458387','1','p.matysiak','302','66','Opis','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('111','1528458387','1','p.matysiak','301','66','Opis','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('112','1528458396','1','p.matysiak','27','309','Magda Szcześniak','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('113','1528458427','1','p.matysiak','5','309','Magda Szcześniak','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('114','1528458427','1','p.matysiak','27','309','Magda Szcześniak','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('115','1528458439','1','p.matysiak','27','314','Adam Lipszyc','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('116','1528458455','1','p.matysiak','5','314','Adam Lipszyc','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('117','1528458455','1','p.matysiak','27','314','Adam Lipszyc','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('118','1528458479','1','p.matysiak','16','41','_author','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('119','1528458514','1','p.matysiak','16','4','BasicPageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('120','1528458530','1','p.matysiak','20','41','_author','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('121','1528458530','1','p.matysiak','16','41','_author','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('122','1528458534','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('123','1528458599','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('124','1528458600','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('125','1528458613','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('126','1528458613','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('127','1528458629','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('128','1528458629','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('129','1528458644','1','p.matysiak','27','300','Autorzy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('130','1528458649','1','p.matysiak','5','300','Autorzy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('131','1528458649','1','p.matysiak','27','300','Autorzy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('132','1528458697','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('133','1528458699','1','p.matysiak','97','13','block-head Kopia','Duplicate Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('134','1528458699','1','p.matysiak','78','135','block-head Kopia','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('135','1528458729','1','p.matysiak','80','135','block-head Kopia','Deleting Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('136','1528458729','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('137','1528458793','1','p.matysiak','20','41','_author','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('138','1528458793','1','p.matysiak','16','41','_author','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('139','1528458825','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('140','1528459377','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('141','1528469131','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('142','1528469141','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('143','1528469151','1','p.matysiak','5','211','Numer 1: Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('144','1528469151','1','p.matysiak','3','211','Numer 1: Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('145','1528469262','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('146','1528469296','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('147','1528469296','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('148','1528469322','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('149','1528469343','1','p.matysiak','77','-','Nowy chunk','Creating a new Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('150','1528469366','1','p.matysiak','79','-','dl-issue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('151','1528469367','1','p.matysiak','78','136','dl-issue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('152','1528469378','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('153','1528469378','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('154','1528469415','1','p.matysiak','79','136','dl-issue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('155','1528469416','1','p.matysiak','78','136','dl-issue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('156','1528469438','1','p.matysiak','97','136','dl-issue Kopia','Duplicate Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('157','1528469439','1','p.matysiak','78','137','dl-issue Kopia','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('158','1528469456','1','p.matysiak','79','137','dl-article','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('159','1528469456','1','p.matysiak','78','137','dl-article','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('160','1528469461','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('161','1528469472','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('162','1528469472','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('163','1528469510','1','p.matysiak','79','137','dl-article','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('164','1528469510','1','p.matysiak','78','137','dl-article','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('165','1528469610','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('166','1528469610','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('167','1528469632','1','p.matysiak','79','137','dl-article','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('168','1528469633','1','p.matysiak','78','137','dl-article','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('169','1528469640','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('170','1528469641','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('171','1528469672','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('172','1528469672','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('173','1528469732','1','p.matysiak','79','137','dl-issueArticle','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('174','1528469732','1','p.matysiak','78','137','dl-issueArticle','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('175','1528469744','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('176','1528469744','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('177','1528469892','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('178','1528469892','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('179','1528469895','1','p.matysiak','78','136','dl-issue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('180','1528469897','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('181','1528469897','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('182','1528469983','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('183','1528469984','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('184','1528469986','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('185','1528470132','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('186','1528470132','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('187','1528470151','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('188','1528470152','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('189','1528470190','1','p.matysiak','301','65','Redaktorzy','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('190','1528470206','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('191','1528470206','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('192','1528470226','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('193','1528470226','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('194','1528470294','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('195','1528470294','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('196','1528470300','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('197','1528470300','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('198','1528470490','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('199','1528470491','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('200','1528470522','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('201','1528470522','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('202','1528470545','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('203','1528470545','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('204','1528470574','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('205','1528470574','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('206','1528470589','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('207','1528470589','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('208','1528470595','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('209','1528470596','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('210','1528470604','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('211','1528470604','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('212','1528470619','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('213','1528470619','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('214','1528470629','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('215','1528470629','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('216','1528470652','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('217','1528470652','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('218','1528470686','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('219','1528470686','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('220','1528470703','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('221','1528470703','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('222','1528470736','1','p.matysiak','24','129','siteLexicon_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('223','1528470736','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('224','1528470741','1','p.matysiak','24','128','siteLexicon_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('225','1528470741','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('226','1528470752','1','p.matysiak','24','129','siteLexicon_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('227','1528470752','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('228','1528470777','1','p.matysiak','24','128','siteLexicon_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('229','1528470777','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('230','1528470780','1','p.matysiak','24','129','siteLexicon_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('231','1528470780','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('232','1528470803','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('233','1528470803','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('234','1528470841','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('235','1528470841','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('236','1528470859','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('237','1528470859','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('238','1528470873','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('239','1528470874','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('240','1528470907','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('241','1528470908','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('242','1528470957','1','p.matysiak','24','129','siteLexicon_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('243','1528470957','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('244','1528470959','1','p.matysiak','24','128','siteLexicon_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('245','1528470959','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('246','1528470989','1','p.matysiak','301','59','Praca na okładce','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('247','1528470998','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('248','1528470999','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('249','1528471010','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('250','1528471010','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('251','1528471040','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('252','1528471047','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('253','1528471097','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('254','1528471097','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('255','1528471153','1','p.matysiak','98','107','run_doclister_archive Kopia','Duplicate Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('256','1528471153','1','p.matysiak','22','155','run_doclister_archive Kopia','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('257','1528471287','1','p.matysiak','24','155','getAuthors','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('258','1528471287','1','p.matysiak','22','155','getAuthors','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('259','1528471312','1','p.matysiak','24','155','getEditors','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('260','1528471312','1','p.matysiak','22','155','getEditors','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('261','1528471392','1','p.matysiak','24','155','getEditors','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('262','1528471392','1','p.matysiak','22','155','getEditors','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('263','1528471433','1','p.matysiak','24','155','getEditors','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('264','1528471433','1','p.matysiak','22','155','getEditors','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('265','1528471456','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('266','1528471456','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('267','1528471682','1','p.matysiak','24','155','getAuthors','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('268','1528471682','1','p.matysiak','22','155','getAuthors','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('269','1528471715','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('270','1528471715','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('271','1528471737','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('272','1528471737','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('273','1528471785','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('274','1528471804','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('275','1528471804','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('276','1528471811','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('277','1528471811','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('278','1528471837','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('279','1528471837','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('280','1528471851','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('281','1528471852','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('282','1528471859','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('283','1528471859','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('284','1528471898','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('285','1528471927','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('286','1528471996','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('287','1528471996','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('288','1528472012','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('289','1528472013','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('290','1528472043','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('291','1528472043','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('292','1528472149','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('293','1528472149','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('294','1528472159','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('295','1528472159','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('296','1528472163','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('297','1528472163','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('298','1528472208','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('299','1528472209','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('300','1528472249','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('301','1528472249','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('302','1528472310','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('303','1528472311','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('304','1528472454','1','p.matysiak','24','155','getAuthors','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('305','1528472454','1','p.matysiak','22','155','getAuthors','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('306','1528472531','1','p.matysiak','24','155','getAuthors','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('307','1528472531','1','p.matysiak','22','155','getAuthors','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('308','1528472806','1','p.matysiak','24','155','getAuthors','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('309','1528472806','1','p.matysiak','22','155','getAuthors','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('310','1528472826','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('311','1528472826','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('312','1528472829','1','p.matysiak','24','155','simpleDocs','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('313','1528472830','1','p.matysiak','22','155','simpleDocs','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('314','1528472958','1','p.matysiak','24','155','simpleDocs','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('315','1528472959','1','p.matysiak','22','155','simpleDocs','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('316','1528472961','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('317','1528472972','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('318','1528472973','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('319','1528472982','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('320','1528472982','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('321','1528472987','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('322','1528472987','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('323','1528473008','1','p.matysiak','24','147','run_doclister_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('324','1528473009','1','p.matysiak','22','147','run_doclister_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('325','1528473018','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('326','1528473018','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('327','1528473047','1','p.matysiak','24','107','run_doclister_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('328','1528473047','1','p.matysiak','22','107','run_doclister_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('329','1528473257','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('330','1528473280','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('331','1528473280','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('332','1528473297','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('333','1528473297','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('334','1528473309','1','p.matysiak','24','147','run_dl_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('335','1528473309','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('336','1528473314','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('337','1528473315','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('338','1528473325','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('339','1528473325','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('340','1528473331','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('341','1528473335','1','p.matysiak','20','16','ArchiveTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('342','1528473336','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('343','1528473357','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('344','1528473357','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('345','1528473509','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('346','1528473509','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('347','1528473550','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('348','1528473550','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('349','1528473564','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('350','1528473569','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('351','1528473569','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('352','1528473586','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('353','1528473586','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('354','1528473603','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('355','1528473603','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('356','1528473620','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('357','1528473620','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('358','1528473642','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('359','1528473642','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('360','1528473676','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('361','1528473773','1','p.matysiak','24','147','run_dl_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('362','1528473773','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('363','1528473840','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('364','1528473849','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('365','1528489625','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('366','1528489630','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('367','1528489640','1','p.matysiak','106','-','-','Viewing Modules','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('368','1528489647','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('369','1528489651','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('370','1528489656','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('371','1528494698','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('372','1528494777','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('373','1528494778','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('374','1528494846','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('375','1528494851','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('376','1528494860','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('377','1528494864','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('378','1528494909','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('379','1528494914','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('380','1528495194','1','p.matysiak','120','-','-','Idle (unknown)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('381','1528495210','1','p.matysiak','99','-','-','Manage Web Users','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('382','1528495213','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('383','1528495219','1','p.matysiak','12','1','p.matysiak','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('384','1528495233','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('385','1528495301','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('386','1528495309','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('387','1528495314','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('388','1528495317','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('389','1528544548','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('390','1528544550','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('391','1528544557','1','p.matysiak','22','148','run_doclister_archiveSearch','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('392','1528544568','1','p.matysiak','24','148','run_dl_archiveSearch','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('393','1528544568','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('394','1528544571','1','p.matysiak','16','8','SearchTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('395','1528544583','1','p.matysiak','20','8','SearchTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('396','1528544583','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('397','1528544589','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('398','1528544860','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('399','1528547607','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('400','1528547614','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('401','1528547622','1','p.matysiak','78','137','dl-issueArticle','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('402','1528547642','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('403','1528547794','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('404','1528547827','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('405','1528554161','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('406','1528554164','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('407','1528554174','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('408','1528554191','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('409','1528554199','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('410','1528554236','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('411','1528555074','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('412','1528555096','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('413','1528575903','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('414','1528575926','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('415','1528575974','1','p.matysiak','112','2','Doc Finder','Execute module','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('416','1528576333','1','p.matysiak','27','285','Dla autorów','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('417','1528576353','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('418','1528577210','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('419','1528577215','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('420','1528577219','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('421','1528577230','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('422','1528720975','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('423','1528720980','1','p.matysiak','11','-','Nowy użytkownik Menedżera','Creating a user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('424','1528720999','1','p.matysiak','32','-','a.sujka','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('425','1528721519','1','p.matysiak','3','244','Galerie','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('426','1528721526','1','p.matysiak','27','321','Issue 1. Visibility of Things.','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('427','1528721529','1','p.matysiak','27','291','Journal profile','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('428','1528721544','1','p.matysiak','3','244','Galerie','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('429','1528721544','1','p.matysiak','62','244','Galerie','Un-publishing a resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('430','1528721544','1','p.matysiak','3','257','_shared','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('431','1528721549','1','p.matysiak','27','291','Journal profile','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('432','1528721556','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('433','1528721558','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('434','1528721604','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('435','1528721625','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('436','1528721644','1','p.matysiak','71','-','-','Searching','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('437','1528721648','1','p.matysiak','27','322','You. Me. Things. „World as an Archive. Critical Modes of Historicity”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('438','1528721732','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('439','1528721752','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('440','1528721829','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('441','1528721847','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('442','1528721873','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('443','1528721876','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('444','1528721943','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('445','1528721945','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('446','1528721952','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('447','1528721952','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('448','1528721955','1','p.matysiak','71','-','-','Searching','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('449','1528721959','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('450','1528721979','1','p.matysiak','71','-','-','Searching','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('451','1528722215','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('452','1528722218','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('453','1528722226','1','p.matysiak','102','111','TreeExpand','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('454','1528722239','1','p.matysiak','103','111','TreeExpand','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('455','1528722239','1','p.matysiak','102','111','TreeExpand','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('456','1528722242','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('457','1528722244','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('458','1528722379','1','p.matysiak','27','1','EN','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('459','1528723143','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('460','1528723353','10','a.sujka','58','-','MODX','Logged in','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('461','1528723366','10','a.sujka','27','287','Fundacja','Editing resource','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('462','1528724251','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('463','1528724295','1','p.matysiak','71','-','-','Searching','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('464','1528724300','1','p.matysiak','71','-','-','Searching','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('465','1528724318','1','p.matysiak','13','-','-','Viewing logging','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('466','1528724366','1','p.matysiak','27','298','Foundation','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('467','1528724380','1','p.matysiak','3','298','Foundation','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('468','1528724386','1','p.matysiak','27','298','Foundation','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('469','1528724539','1','p.matysiak','78','133','pb-tpl-profiles','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('470','1528724540','1','p.matysiak','78','134','pb-tpl-profiles__item','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('471','1528724564','1','p.matysiak','112','12','Extras','Execute module','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('472','1528725185','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('473','1528735242','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('474','1528735254','1','p.matysiak','27','287','Fundacja','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('475','1528735265','1','p.matysiak','27','287','Fundacja','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('476','1528735429','1','p.matysiak','3','287','Fundacja','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('477','1528735432','1','p.matysiak','27','287','Fundacja','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('478','1528735441','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('479','1528745258','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('480','1528745284','1','p.matysiak','301','17','Galeria: widoczność','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('481','1528745301','1','p.matysiak','302','17','Galeria: widoczność','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('482','1528745301','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('483','1528745305','1','p.matysiak','301','17','Galeria: widoczność','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('484','1528745308','1','p.matysiak','302','17','Galeria: widoczność','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('485','1528745309','1','p.matysiak','301','17','Galeria: widoczność','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('486','1528745313','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('487','1528745323','1','p.matysiak','302','17','Galeria: widoczność','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('488','1528745324','1','p.matysiak','301','17','Galeria: widoczność','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('489','1528745327','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('490','1528745329','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('491','1528745343','1','p.matysiak','301','15','Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('492','1528745436','1','p.matysiak','16','25','Sitemap','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('493','1528745492','1','p.matysiak','302','15','Sitemap (ignoruj)','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('494','1528745493','1','p.matysiak','301','15','Sitemap (ignoruj)','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('495','1528745496','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('496','1528745498','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('497','1528745526','1','p.matysiak','4','-','Nowy dokument','Creating a resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('498','1528745782','1','p.matysiak','302','15','Pomiń w Sitemap','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('499','1528745782','1','p.matysiak','301','15','Pomiń w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('500','1528745784','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('501','1528745785','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('502','1528745799','1','p.matysiak','301','16','Sitemap priority','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('503','1528745828','1','p.matysiak','302','16','Priorytet w Sitemap','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('504','1528745829','1','p.matysiak','301','16','Priorytet w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('505','1528745832','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('506','1528745835','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('507','1528745930','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('508','1528745931','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('509','1528745936','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('510','1528745936','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('511','1528745942','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('512','1528745942','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('513','1528745946','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('514','1528745946','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('515','1528745962','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('516','1528745964','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('517','1528745970','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('518','1528745975','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('519','1528745975','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('520','1528746006','1','p.matysiak','301','15','Pomiń w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('521','1528746019','1','p.matysiak','302','15','Pomiń w Sitemap','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('522','1528746019','1','p.matysiak','301','15','Pomiń w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('523','1528746023','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('524','1528746024','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('525','1528746029','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('526','1528746029','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('527','1528746035','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('528','1528746036','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('529','1528746046','1','p.matysiak','301','17','Galeria: widoczność','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('530','1528746049','1','p.matysiak','302','17','Galeria: widoczność','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('531','1528746049','1','p.matysiak','301','17','Galeria: widoczność','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('532','1528746059','1','p.matysiak','4','-','Nowy dokument','Creating a resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('533','1528746266','1','p.matysiak','302','15','Pomiń w Sitemap','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('534','1528746266','1','p.matysiak','301','15','Pomiń w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('535','1528746276','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('536','1528746276','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('537','1528746279','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('538','1528746280','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('539','1528746283','1','p.matysiak','5','281','Profil pisma','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('540','1528746283','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('541','1528746381','1','p.matysiak','16','25','Sitemap','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('542','1528746408','1','p.matysiak','22','47','Sitemap','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('543','1528746834','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('544','1528746836','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('545','1528746847','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('546','1528746946','1','p.matysiak','20','25','Sitemap','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('547','1528746946','1','p.matysiak','16','25','Sitemap','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('548','1528747031','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('549','1528747103','1','p.matysiak','4','-','Nowy dokument','Creating a resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('550','1528747904','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('551','1528747906','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('552','1528748002','1','p.matysiak','301','16','Priorytet w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('553','1528748008','1','p.matysiak','302','16','Priorytet w Sitemap','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('554','1528748008','1','p.matysiak','301','16','Priorytet w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('555','1528753170','1','p.matysiak','101','-','Nowa wtyczka','Create new plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('556','1528753210','1','p.matysiak','103','-','managerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('557','1528753210','1','p.matysiak','102','113','managerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('558','1528753230','1','p.matysiak','120','-','-','Idle (unknown)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('559','1528753237','1','p.matysiak','120','-','-','Idle (unknown)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('560','1528753250','1','p.matysiak','120','-','-','Idle (unknown)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('561','1528753253','1','p.matysiak','120','-','-','Idle (unknown)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('562','1528753256','1','p.matysiak','120','-','-','Idle (unknown)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('563','1528753272','1','p.matysiak','120','-','-','Idle (unknown)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('564','1528753281','1','p.matysiak','103','113','managerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('565','1528753282','1','p.matysiak','102','113','managerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('566','1528753290','1','p.matysiak','103','113','managerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('567','1528753290','1','p.matysiak','102','113','managerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('568','1528753293','1','p.matysiak','102','113','managerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('569','1528753302','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('570','1528753304','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('571','1528754405','1','p.matysiak','102','113','managerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('572','1528754416','1','p.matysiak','103','113','ManagerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('573','1528754416','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('574','1528754420','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('575','1528754441','1','p.matysiak','102','111','TreeExpand','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('576','1528754617','1','p.matysiak','103','113','ManagerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('577','1528754618','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('578','1528754706','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('579','1528754709','1','p.matysiak','103','113','ManagerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('580','1528754709','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('581','1528754750','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('582','1528792063','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('583','1528792074','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('584','1528792128','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('585','1528792140','1','p.matysiak','27','82','O nas','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('586','1528792148','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('587','1528796345','1','p.matysiak','22','47','Sitemap','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('588','1528796354','1','p.matysiak','24','47','Sitemap','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('589','1528796354','1','p.matysiak','22','47','Sitemap','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('590','1528796959','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('591','1528798701','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('592','1528798714','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('593','1528798909','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('594','1528798911','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('595','1528798918','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('596','1528798939','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('597','1528798942','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('598','1528798949','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('599','1528798955','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('600','1528798962','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('601','1528799020','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('602','1528799023','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('603','1528799066','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('604','1528799083','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('605','1528799090','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('606','1528799124','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('607','1528799137','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('608','1528799142','1','p.matysiak','103','113','ManagerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('609','1528799142','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('610','1528799147','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('611','1528799163','1','p.matysiak','27','257','_shared','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('612','1528799171','1','p.matysiak','5','257','Shared','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('613','1528799171','1','p.matysiak','27','257','Shared','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('614','1528799180','1','p.matysiak','27','256','_taxonomy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('615','1528799183','1','p.matysiak','5','256','Taxonomy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('616','1528799183','1','p.matysiak','27','256','Taxonomy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('617','1528799185','1','p.matysiak','27','250','_system','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('618','1528799189','1','p.matysiak','5','250','System','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('619','1528799189','1','p.matysiak','27','250','System','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('620','1528799269','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('621','1528799273','1','p.matysiak','103','113','ManagerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('622','1528799273','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('623','1528799276','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('624','1528799299','1','p.matysiak','103','113','ManagerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('625','1528799299','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('626','1528799302','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('627','1528799311','1','p.matysiak','103','113','ManagerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('628','1528799311','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('629','1528799313','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('630','1528799388','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('631','1528799391','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('632','1528799414','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('633','1528799440','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('634','1528799447','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('635','1528884201','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('636','1528884208','1','p.matysiak','16','25','Sitemap','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('637','1528884236','1','p.matysiak','301','15','Pomiń w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('638','1528884244','1','p.matysiak','302','15','Pomiń w Sitemap','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('639','1528884244','1','p.matysiak','301','15','Pomiń w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('640','1528884425','1','p.matysiak','302','15','Uwzględnij w Sitemap','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('641','1528884425','1','p.matysiak','301','15','Uwzględnij w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('642','1528884493','1','p.matysiak','20','25','Sitemap','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('643','1528884494','1','p.matysiak','16','25','Sitemap','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('644','1528884518','1','p.matysiak','112','1','Doc Manager','Execute module','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('645','1528884578','1','p.matysiak','27','288','CFP','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('646','1528884585','1','p.matysiak','112','1','Doc Manager','Menedżer dokumentów: zmienne szablonu zmienione.','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('647','1528884585','1','p.matysiak','112','1','Doc Manager','Execute module','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('648','1528884593','1','p.matysiak','27','288','CFP','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('649','1528884598','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('650','1528884625','1','p.matysiak','27','253','Archiwum','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('651','1528884630','1','p.matysiak','5','253','Archiwum','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('652','1528884630','1','p.matysiak','3','253','Archiwum','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('653','1528884635','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('654','1528884640','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('655','1528884640','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('656','1528884646','1','p.matysiak','27','99','Szukaj','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('657','1528884651','1','p.matysiak','5','99','Szukaj','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('658','1528884651','1','p.matysiak','3','99','Szukaj','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('659','1528884655','1','p.matysiak','27','254','Archive','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('660','1528884656','1','p.matysiak','27','320','No 1 (2013): The Visibility of Things','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('661','1528884657','1','p.matysiak','27','39','Search','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('662','1528884659','1','p.matysiak','5','39','Search','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('663','1528884659','1','p.matysiak','3','39','Search','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('664','1528884670','1','p.matysiak','5','320','No 1 (2013): The Visibility of Things','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('665','1528884670','1','p.matysiak','3','320','No 1 (2013): The Visibility of Things','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('666','1528884673','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('667','1528884677','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('668','1528884678','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('669','1528884695','1','p.matysiak','16','25','Sitemap','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('670','1528884707','1','p.matysiak','20','25','Sitemap','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('671','1528884708','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('672','1528884714','1','p.matysiak','16','17','IssueArticleTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('673','1528884729','1','p.matysiak','20','17','IssueArticleTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('674','1528884729','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('675','1528884734','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('676','1528884763','1','p.matysiak','301','17','Galeria: widoczność','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('677','1528884781','1','p.matysiak','301','15','Uwzględnij w Sitemap','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('678','1528884808','1','p.matysiak','16','25','Sitemap','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('679','1528884817','1','p.matysiak','27','58','PL','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('680','1528884822','1','p.matysiak','27','2','Home','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('681','1528884825','1','p.matysiak','5','2','Home','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('682','1528884825','1','p.matysiak','3','2','Home','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('683','1528884827','1','p.matysiak','27','59','Start','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('684','1528884829','1','p.matysiak','5','59','Start','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('685','1528884829','1','p.matysiak','3','59','Start','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('686','1528884836','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('687','1528931521','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('688','1528931524','1','p.matysiak','27','287','Fundacja','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('689','1528931539','1','p.matysiak','16','25','Sitemap','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('690','1528931558','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('691','1529005641','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('692','1529005672','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('693','1529098396','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('694','1529098410','1','p.matysiak','22','92','evoSystemInfo','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('695','1529098423','1','p.matysiak','24','92','evoSystemInfo','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('696','1529098423','1','p.matysiak','22','92','evoSystemInfo','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('697','1529098441','1','p.matysiak','78','1','block-foot','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('698','1529098450','1','p.matysiak','79','1','block-foot','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('699','1529098451','1','p.matysiak','78','1','block-foot','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('700','1529098476','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('701','1529262909','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('702','1529262914','1','p.matysiak','27','58','PL','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('703','1529262918','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('704','1529577375','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('705','1529577385','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('706','1529577395','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('707','1529577435','1','p.matysiak','78','137','dl-issueArticle','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('708','1529577438','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('709','1529577450','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('710','1529932542','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('711','1529932548','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('712','1529932725','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('713','1529932768','1','p.matysiak','16','8','SearchTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('714','1529932793','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('715','1530514738','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('716','1530514745','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('717','1530514840','1','p.matysiak','12','10','a.sujka','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('718','1530514873','1','p.matysiak','12','10','a.sujka','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('719','1530514882','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('720','1530514950','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('721','1530515055','1','p.matysiak','4','-','Nowy dokument','Creating a resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('722','1530515074','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('723','1530515121','1','p.matysiak','4','-','Nowy dokument','Creating a resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('724','1530515129','1','p.matysiak','4','-','Nowy dokument','Creating a resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('725','1530516235','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('726','1530516266','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('727','1530516326','1','p.matysiak','16','25','Sitemap','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('728','1530516373','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('729','1530516391','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('730','1530516592','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('731','1530519066','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('732','1530519075','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('733','1530519505','1','p.matysiak','3','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('734','1530519513','1','p.matysiak','11','-','Nowy użytkownik Menedżera','Creating a user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('735','1530519519','1','p.matysiak','12','10','a.sujka','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('736','1530519689','1','p.matysiak','32','-','k.pijarski','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('737','1530519716','1','p.matysiak','32','10','a.sujka','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('738','1530519721','1','p.matysiak','12','10','a.sujka','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('739','1530519722','11','k.pijarski','58','-','MODX','Logged in','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('740','1530519731','1','p.matysiak','32','10','a.sujka','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('741','1530519764','11','k.pijarski','12','10','a.sujka','Editing user','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('742','1530519782','11','k.pijarski','58','-','MODX','Logged in','188.146.39.117','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('743','1530519783','11','k.pijarski','8','-','-','Logged out','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('744','1530519797','10','a.sujka','58','-','MODX','Logged in','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('745','1530519802','10','a.sujka','28','-','-','Changing password','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('746','1530519809','11','k.pijarski','27','297','CFP','Editing resource','188.146.39.117','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('747','1530519816','10','a.sujka','34','-','-','Saving new password','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('748','1530519824','10','a.sujka','8','-','-','Logged out','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('749','1530519826','11','k.pijarski','27','211','Numer 1: Widzialność rzeczy','Editing resource','188.146.39.117','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('750','1530519828','10','a.sujka','58','-','MODX','Logged in','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('751','1530519836','11','k.pijarski','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','188.146.39.117','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('752','1530519846','10','a.sujka','27','292','Editorial Team','Editing resource','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('753','1530519863','10','a.sujka','27','291','Journal profile','Editing resource','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('754','1530519880','10','a.sujka','27','321','Issue 1. Visibility of Things.','Editing resource','83.144.118.229','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('755','1530519888','1','p.matysiak','27','322','You. Me. Things. „World as an Archive. Critical Modes of Historicity”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('756','1530520115','1','p.matysiak','27','311','Katarzyna Bojarska','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('757','1530521869','1','p.matysiak','27','289','About','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('758','1530521874','1','p.matysiak','27','293','Editorial Board','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('759','1530521917','1','p.matysiak','27','294','Reviewers','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('760','1530521935','11','k.pijarski','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','188.146.39.117','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('761','1530521995','11','k.pijarski','27','211','Numer 1: Widzialność rzeczy','Editing resource','188.146.39.117','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('762','1530522001','11','k.pijarski','27','298','Foundation','Editing resource','188.146.39.117','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('763','1530522016','1','p.matysiak','27','284','Recenzenci','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('764','1530522039','1','p.matysiak','3','284','Recenzenci','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('765','1530522120','1','p.matysiak','27','293','Editorial Board','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('766','1530522130','1','p.matysiak','3','293','Editorial Board','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('767','1530522524','1','p.matysiak','27','289','About','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('768','1530522531','1','p.matysiak','3','289','About','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('769','1530522719','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('770','1530526663','11','k.pijarski','27','298','Foundation','Editing resource','188.146.172.116','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('771','1530556569','11','k.pijarski','3','253','Archiwum','Viewing data for resource','188.146.172.116','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('772','1530556574','11','k.pijarski','27','288','CFP','Editing resource','188.146.172.116','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('773','1530564737','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('774','1530564772','1','p.matysiak','11','-','Nowy użytkownik Menedżera','Creating a user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('775','1530564869','1','p.matysiak','106','-','-','Viewing Modules','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('776','1530564874','1','p.matysiak','108','12','Extras','Edit module','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('777','1530564953','1','p.matysiak','32','-','t.glowacki','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('778','1530565051','1','p.matysiak','12','11','k.pijarski','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('779','1530565059','1','p.matysiak','32','11','k.pijarski','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('780','1530565059','1','p.matysiak','12','11','k.pijarski','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('781','1530565062','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('782','1530565066','1','p.matysiak','12','12','t.glowacki','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('783','1530565085','1','p.matysiak','32','12','t.glowacki','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('784','1530565085','1','p.matysiak','12','12','t.glowacki','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('785','1530565089','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('786','1530565096','1','p.matysiak','12','1','p.matysiak','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('787','1530565107','1','p.matysiak','32','1','p.matysiak','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('788','1530565107','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('789','1530565120','1','p.matysiak','12','1','p.matysiak','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('790','1530565129','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('791','1530565231','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('792','1530600161','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('793','1530600180','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('794','1530600185','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('795','1530600194','1','p.matysiak','12','11','k.pijarski','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('796','1530600206','1','p.matysiak','32','11','k.pijarski','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('797','1530600206','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('798','1530600208','1','p.matysiak','12','12','t.glowacki','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('799','1530600213','1','p.matysiak','32','12','t.glowacki','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('800','1530600213','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('801','1530600230','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('802','1530600233','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('803','1530605129','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('804','1530605141','1','p.matysiak','12','11','k.pijarski','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('805','1530605184','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('806','1530605192','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('807','1530605207','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('808','1530605216','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('809','1530605218','1','p.matysiak','12','11','k.pijarski','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('810','1530605222','1','p.matysiak','32','11','k.pijarski','Saving user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('811','1530605222','1','p.matysiak','12','11','k.pijarski','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('812','1530605228','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('813','1530605236','1','p.matysiak','86','-','-','Role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('814','1530605238','1','p.matysiak','35','6','Preview','Editing role','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('815','1530605241','1','p.matysiak','37','6','Preview','Deleting role','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('816','1530605241','1','p.matysiak','86','-','-','Role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('817','1530605246','1','p.matysiak','35','4','Web Designer','Editing role','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('818','1530605248','1','p.matysiak','37','4','Web Designer','Deleting role','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('819','1530605249','1','p.matysiak','86','-','-','Role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('820','1530605250','1','p.matysiak','35','5','Web Developer','Editing role','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('821','1530605252','1','p.matysiak','37','5','Web Developer','Deleting role','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('822','1530605252','1','p.matysiak','86','-','-','Role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('823','1530605256','1','p.matysiak','35','3','Publisher','Editing role','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('824','1530605263','1','p.matysiak','36','3','Publisher','Saving role','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('825','1530605263','1','p.matysiak','86','-','-','Role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('826','1530605265','1','p.matysiak','35','3','Publisher','Editing role','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('827','1530605282','1','p.matysiak','102','94','ElementsInTree','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('828','1530605376','12','t.glowacki','58','-','MODX','Logged in','89.64.20.118','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('829','1530605412','1','p.matysiak','13','-','-','Viewing logging','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('830','1530605413','11','k.pijarski','58','-','MODX','Logged in','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('831','1530605429','12','t.glowacki','3','320','No 1 (2013): The Visibility of Things','Viewing data for resource','89.64.20.118','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');

INSERT INTO `widok_evo_manager_log` VALUES ('832','1530605455','11','k.pijarski','27','314','Adam Lipszyc','Editing resource','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('833','1530605457','1','p.matysiak','27','256','Taxonomy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('834','1530605465','11','k.pijarski','27','315','Ernst van Alphen','Editing resource','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('835','1530605477','11','k.pijarski','27','313','Bill Brown','Editing resource','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('836','1530605500','11','k.pijarski','27','307','Adam Mazur','Editing resource','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('837','1530605515','11','k.pijarski','112','1','Doc Manager','Execute module','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('838','1530605524','1','p.matysiak','40','-','-','Editing Access Permissions','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('839','1530605538','1','p.matysiak','12','12','t.glowacki','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('840','1530605541','11','k.pijarski','27','300','Autorzy','Editing resource','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('841','1530605547','11','k.pijarski','27','302','Justyna Jaworska','Editing resource','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('842','1530605549','11','k.pijarski','27','311','Katarzyna Bojarska','Editing resource','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('843','1530605564','1','p.matysiak','12','11','k.pijarski','Editing user','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('844','1530605612','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('845','1530605678','11','k.pijarski','27','311','Katarzyna Bojarska','Editing resource','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('846','1530606173','11','k.pijarski','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','188.146.172.116','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('847','1530920008','11','k.pijarski','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','188.146.235.240','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0');

INSERT INTO `widok_evo_manager_log` VALUES ('848','1531137062','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('849','1531137075','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('850','1531137515','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('851','1531137551','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('852','1531220677','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('853','1531220690','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('854','1531220761','1','p.matysiak','102','78','PageBuilder','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('855','1531220767','1','p.matysiak','103','78','PageBuilder','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('856','1531220768','1','p.matysiak','102','78','PageBuilder','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('857','1531220770','1','p.matysiak','3','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('858','1531220772','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('859','1531220826','1','p.matysiak','301','60','Autor','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('860','1531220986','1','p.matysiak','3','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('861','1531220987','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('862','1531221003','1','p.matysiak','103','78','PageBuilder','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('863','1531221003','1','p.matysiak','102','78','PageBuilder','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('864','1531221006','1','p.matysiak','3','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('865','1531221008','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('866','1531221034','1','p.matysiak','102','78','PageBuilder','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('867','1531221038','1','p.matysiak','103','78','PageBuilder','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('868','1531221038','1','p.matysiak','102','78','PageBuilder','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('869','1531221041','1','p.matysiak','3','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('870','1531221042','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('871','1531221280','1','p.matysiak','302','60','Autor','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('872','1531221280','1','p.matysiak','301','60','Autor','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('873','1531221285','1','p.matysiak','301','63','Tłumaczenie','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('874','1531221385','1','p.matysiak','304','63','translationSelector Kopia','Duplicate Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('875','1531221385','1','p.matysiak','301','69','Tłumaczenie Duplicate','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('876','1531221421','1','p.matysiak','302','60','Autor','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('877','1531221421','1','p.matysiak','301','60','Autor','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('878','1531221425','1','p.matysiak','302','69','Autor','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('879','1531221425','1','p.matysiak','301','69','Autor','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('880','1531221437','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('881','1531221515','1','p.matysiak','5','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('882','1531221515','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('883','1531221550','1','p.matysiak','27','322','You. Me. Things. „World as an Archive. Critical Modes of Historicity”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('884','1531221551','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('885','1531221611','1','p.matysiak','5','322','You. Me. Things. „World as an Archive. Critical Modes of Historicity”','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('886','1531221612','1','p.matysiak','27','322','You. Me. Things. „World as an Archive. Critical Modes of Historicity”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('887','1531221619','1','p.matysiak','16','17','IssueArticleTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('888','1531221628','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('889','1531221637','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('890','1531221678','1','p.matysiak','24','147','run_dl_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('891','1531221678','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('892','1531221707','1','p.matysiak','5','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('893','1531221707','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('894','1531221721','1','p.matysiak','5','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('895','1531221722','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('896','1531221733','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('897','1531221821','1','p.matysiak','24','147','run_dl_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('898','1531221821','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('899','1531221830','1','p.matysiak','302','69','Autor','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('900','1531221830','1','p.matysiak','301','69','Autor','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('901','1531221899','1','p.matysiak','302','69','Autor','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('902','1531221899','1','p.matysiak','301','69','Autor','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('903','1531221902','1','p.matysiak','3','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('904','1531221903','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('905','1531221921','1','p.matysiak','24','147','run_dl_issue','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('906','1531221921','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('907','1531222024','1','p.matysiak','304','69','issueArticleAuthorSelector Kopia','Duplicate Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('908','1531222024','1','p.matysiak','301','70','Autor Duplicate','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('909','1531222041','1','p.matysiak','301','65','Redaktorzy','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('910','1531222066','1','p.matysiak','302','70','Redaktorzy','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('911','1531222066','1','p.matysiak','301','70','Redaktorzy','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('912','1531222087','1','p.matysiak','302','70','Redaktorzy','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('913','1531222087','1','p.matysiak','301','70','Redaktorzy','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('914','1531222090','1','p.matysiak','302','65','Redaktorzy','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('915','1531222091','1','p.matysiak','301','65','Redaktorzy','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('916','1531222135','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('917','1531222174','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('918','1531222202','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('919','1531222202','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('920','1531222216','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('921','1531222227','1','p.matysiak','117','16','-','Editing tv rank','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('922','1531222240','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('923','1531222241','1','p.matysiak','117','40','-','Editing tv rank','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('924','1531222248','1','p.matysiak','117','40','-','Editing tv rank','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('925','1531222250','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('926','1531222251','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('927','1531222309','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('928','1531222310','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('929','1531222320','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('930','1531222324','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('931','1531222324','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('932','1531222327','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('933','1531222328','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('934','1531222352','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('935','1531222382','1','p.matysiak','22','155','simpleDocs','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('936','1531222400','1','p.matysiak','24','155','simpleDocs','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('937','1531222400','1','p.matysiak','22','155','simpleDocs','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('938','1531222404','1','p.matysiak','22','155','simpleDocs','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('939','1531222419','1','p.matysiak','27','320','No 1 (2013): The Visibility of Things','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('940','1531222428','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('941','1531222441','1','p.matysiak','5','320','No 1 (2013): The Visibility of Things','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('942','1531222442','1','p.matysiak','27','320','No 1 (2013): The Visibility of Things','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('943','1531222492','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('944','1531222501','1','p.matysiak','16','17','IssueArticleTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('945','1531222506','1','p.matysiak','117','17','-','Editing tv rank','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('946','1531222517','1','p.matysiak','117','17','-','Editing tv rank','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('947','1531222520','1','p.matysiak','16','17','IssueArticleTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('948','1531222526','1','p.matysiak','20','17','IssueArticleTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('949','1531222527','1','p.matysiak','16','17','IssueArticleTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('950','1531222529','1','p.matysiak','3','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('951','1531222531','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('952','1531222571','1','p.matysiak','4','-','Nowy dokument','Creating a resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('953','1531223335','1','p.matysiak','3','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('954','1531223337','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('955','1531223345','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('956','1531223369','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('957','1531227778','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('958','1531227785','1','p.matysiak','27','320','No 1 (2013): The Visibility of Things','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('959','1531227798','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('960','1531227840','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('961','1531303446','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('962','1531304443','1','p.matysiak','3','244','Galerie','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('963','1531304451','1','p.matysiak','27','245','Gallery example 1','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('964','1531304467','1','p.matysiak','6','244','Galerie','Deleting resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('965','1531304467','1','p.matysiak','3','257','Shared','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('966','1531304471','1','p.matysiak','102','71','TreeCollections','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('967','1531304550','1','p.matysiak','71','-','-','Searching','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('968','1531304584','1','p.matysiak','103','71','TreeCollections','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('969','1531304584','1','p.matysiak','102','71','TreeCollections','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('970','1531304595','1','p.matysiak','64','-','-','Removing deleted content','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('971','1531304623','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('972','1531304674','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('973','1531304674','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('974','1531304871','1','p.matysiak','27','282','Zespół redakcyjny','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('975','1531304906','1','p.matysiak','27','301','Krzysztof Pijarski','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('976','1531304951','1','p.matysiak','27','301','Krzysztof Pijarski','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('977','1531304988','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('978','1531305002','1','p.matysiak','103','113','ManagerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('979','1531305003','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('980','1531305008','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('981','1531305033','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('982','1531305035','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('983','1531305072','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('984','1531305078','1','p.matysiak','103','113','ManagerCss','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('985','1531305078','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('986','1531305085','1','p.matysiak','102','113','ManagerCss','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('987','1531305120','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('988','1531307113','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('989','1531307132','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('990','1531307137','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('991','1531307153','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('992','1531307568','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('993','1531307596','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('994','1531307606','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('995','1531307611','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('996','1531727772','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('997','1531727876','1','p.matysiak','27','285','Dla autorów','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('998','1531727898','1','p.matysiak','78','2','mm_rules','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('999','1531727916','1','p.matysiak','79','2','mm_rules','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1000','1531727916','1','p.matysiak','78','2','mm_rules','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1001','1531727919','1','p.matysiak','27','285','Dla autorów','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1002','1531728052','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1003','1531728126','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1004','1531824526','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1005','1531824531','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1006','1531838737','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1007','1531838745','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1008','1531850440','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1009','1531850445','1','p.matysiak','27','82','O nas','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1010','1531850448','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1011','1531850554','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1012','1531850556','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1013','1531850567','1','p.matysiak','3','281','Profil pisma','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1014','1531850591','1','p.matysiak','27','283','Rada Naukowa','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1015','1531850597','1','p.matysiak','27','283','Rada Naukowa','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1016','1531850625','1','p.matysiak','3','283','Rada Naukowa','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1017','1531850629','1','p.matysiak','27','285','Dla autorów','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1018','1531850699','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1019','1531850715','1','p.matysiak','102','78','PageBuilder','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1020','1531851199','1','p.matysiak','103','78','PageBuilder','Saving plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1021','1531851199','1','p.matysiak','102','78','PageBuilder','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1022','1531851206','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1023','1531851218','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1024','1531916570','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1025','1531916576','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1026','1532004590','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1027','1532004612','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1028','1532422256','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1029','1532422261','1','p.matysiak','102','42','TransAlias','Edit plugin','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1030','1532422329','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1031','1532445132','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1032','1532445137','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1033','1532599424','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1034','1532599440','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1035','1532601063','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1036','1533025106','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1037','1533025110','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1038','1533025177','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1039','1533025205','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1040','1533031652','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1041','1533031661','1','p.matysiak','301','54','Okładka numeru','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1042','1533031664','1','p.matysiak','304','54','issueCoverImage Kopia','Duplicate Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1043','1533031664','1','p.matysiak','301','71','Okładka numeru Duplicate','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1044','1533031752','1','p.matysiak','302','71','Kolor numeru','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1045','1533031752','1','p.matysiak','301','71','Kolor numeru','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1046','1533031757','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1047','1533031922','1','p.matysiak','302','71','Kolor numeru','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1048','1533031922','1','p.matysiak','301','71','Kolor numeru','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1049','1533031960','1','p.matysiak','302','71','Kolor numeru','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1050','1533031960','1','p.matysiak','301','71','Kolor numeru','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1051','1533031965','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1052','1533031980','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1053','1533032061','1','p.matysiak','20','40','IssueTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1054','1533032061','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1055','1533032156','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1056','1533116231','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1057','1533119817','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1058','1533202619','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1059','1533202631','1','p.matysiak','27','314','Adam Lipszyc','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1060','1533202688','1','p.matysiak','75','-','-','User/ role management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1061','1533202720','1','p.matysiak','27','287','Fundacja','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1062','1533202736','1','p.matysiak','3','287','Fundacja','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1063','1533206114','1','p.matysiak','3','99','Szukaj','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1064','1533206119','1','p.matysiak','27','99','Szukaj','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1065','1533305327','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1066','1533305330','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1067','1533305335','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1068','1533305358','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1069','1533501714','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1070','1533501726','1','p.matysiak','301','71','Kolor numeru','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1071','1533501736','1','p.matysiak','302','71','Kolor numeru','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1072','1533501736','1','p.matysiak','301','71','Kolor numeru','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1073','1533501742','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1074','1533501769','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1075','1533501772','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1076','1533501794','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1077','1533501799','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1078','1533501812','1','p.matysiak','301','71','Kolor numeru','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1079','1533501862','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1080','1533501895','1','p.matysiak','16','40','IssueTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1081','1533501921','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1082','1533501932','1','p.matysiak','302','71','Kolor numeru','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1083','1533501932','1','p.matysiak','301','71','Kolor numeru','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1084','1533501935','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1085','1533501937','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1086','1533501950','1','p.matysiak','27','320','No 1 (2013): The Visibility of Things','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1087','1533501969','1','p.matysiak','302','71','Kolor numeru','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1088','1533501969','1','p.matysiak','301','71','Kolor numeru','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1089','1533501985','1','p.matysiak','3','299','Nr 1 (2013): Widzialność rzeczy','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1090','1533501989','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1091','1533502005','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1092','1533502005','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1093','1533502247','1','p.matysiak','301','52','Google Preview','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1094','1533502382','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1095','1533586785','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1096','1533637739','1','p.matysiak','27','211','Numer 1: Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1097','1533637741','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1098','1533646548','1','p.matysiak','3','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1099','1533646552','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1100','1533646554','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1101','1533647237','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1102','1533647241','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1103','1533647250','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1104','1533647329','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1105','1533647760','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1106','1533647761','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1107','1533647764','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1108','1533647781','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1109','1533647784','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1110','1533647785','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1111','1533647791','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1112','1533647864','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1113','1533647899','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1114','1533647907','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1115','1533647913','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1116','1533647948','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1117','1533723148','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1118','1533723155','1','p.matysiak','27','303','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1119','1533982021','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1120','1533982428','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1121','1533982429','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1122','1533982469','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1123','1533982494','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1124','1533982505','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1125','1533982624','1','p.matysiak','24','153','siteContext_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1126','1533982625','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1127','1533982666','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1128','1533982666','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1129','1533982677','1','p.matysiak','78','1','block-foot','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1130','1533989927','1','p.matysiak','24','11','siteConfig','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1131','1533989927','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1132','1533990016','1','p.matysiak','79','1','block-foot','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1133','1533990016','1','p.matysiak','78','1','block-foot','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1134','1533990042','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1135','1533990043','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1136','1533990408','1','p.matysiak','24','11','siteConfig','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1137','1533990408','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1138','1533990461','1','p.matysiak','24','11','siteConfig','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1139','1533990462','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1140','1533990492','1','p.matysiak','27','99','Szukaj','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1141','1533990505','1','p.matysiak','5','99','Szukaj','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1142','1533990505','1','p.matysiak','3','99','Szukaj','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1143','1533990507','1','p.matysiak','27','39','Search','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1144','1533990511','1','p.matysiak','5','39','Search','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1145','1533990511','1','p.matysiak','3','39','Search','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1146','1533990541','1','p.matysiak','17','-','-','Editing settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1147','1533990553','1','p.matysiak','30','-','-','Saving settings','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1148','1533990617','1','p.matysiak','27','82','O nas','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1149','1533991100','1','p.matysiak','78','1','block-foot','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1150','1533991104','1','p.matysiak','97','1','block-foot Kopia','Duplicate Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1151','1533991104','1','p.matysiak','78','138','block-foot Kopia','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1152','1533991127','1','p.matysiak','79','138','block-subnav','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1153','1533991127','1','p.matysiak','78','138','block-subnav','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1154','1533991171','1','p.matysiak','79','138','block-subnav','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1155','1533991171','1','p.matysiak','78','138','block-subnav','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1156','1533991213','1','p.matysiak','16','4','BasicPageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1157','1533991228','1','p.matysiak','20','4','BasicPageTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1158','1533991228','1','p.matysiak','16','4','BasicPageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1159','1533991325','1','p.matysiak','27','82','O nas','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1160','1533991465','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1161','1533991472','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1162','1533991473','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1163','1533991636','1','p.matysiak','20','4','BasicPageTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1164','1533991636','1','p.matysiak','16','4','BasicPageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1165','1533991696','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1166','1533991759','1','p.matysiak','78','128','block-pagetitle','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1167','1533991781','1','p.matysiak','79','128','block-pagetitle','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1168','1533991782','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1169','1533991783','1','p.matysiak','20','4','BasicPageTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1170','1533991783','1','p.matysiak','16','4','BasicPageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1171','1533991880','1','p.matysiak','20','4','BasicPageTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1172','1533991880','1','p.matysiak','16','4','BasicPageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1173','1533991977','1','p.matysiak','78','138','block-subnav','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1174','1533991981','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1175','1533992035','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1176','1533992067','1','p.matysiak','79','138','block-subnav','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1177','1533992067','1','p.matysiak','78','138','block-subnav','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1178','1533992090','1','p.matysiak','79','138','block-subnav','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1179','1533992090','1','p.matysiak','78','138','block-subnav','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1180','1533992093','1','p.matysiak','78','14','wf-row-li','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1181','1533992095','1','p.matysiak','97','14','wf-row-li Kopia','Duplicate Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1182','1533992095','1','p.matysiak','78','139','wf-row-li Kopia','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1183','1533992119','1','p.matysiak','79','139','wf-row-lisubnav','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1184','1533992119','1','p.matysiak','78','139','wf-row-lisubnav','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1185','1533992129','1','p.matysiak','79','139','wf-row-li-subnav','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1186','1533992129','1','p.matysiak','78','139','wf-row-li-subnav','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1187','1533992809','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1188','1533992809','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1189','1533992822','1','p.matysiak','24','11','siteConfig','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1190','1533992822','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1191','1533992843','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1192','1533992884','1','p.matysiak','27','282','Zespół redakcyjny','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1193','1533992899','1','p.matysiak','16','4','BasicPageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1194','1533992903','1','p.matysiak','20','4','BasicPageTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1195','1533992904','1','p.matysiak','16','4','BasicPageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1196','1533992938','1','p.matysiak','78','133','pb-tpl-profiles','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1197','1533992945','1','p.matysiak','79','133','pb-tpl-profiles','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1198','1533992946','1','p.matysiak','78','133','pb-tpl-profiles','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1199','1533992966','1','p.matysiak','78','134','pb-tpl-profiles__item','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1200','1533993077','1','p.matysiak','79','134','pb-tpl-profiles__item','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1201','1533993077','1','p.matysiak','78','134','pb-tpl-profiles__item','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1202','1533993161','1','p.matysiak','97','134','pb-tpl-profiles__item Kopia','Duplicate Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1203','1533993161','1','p.matysiak','78','140','pb-tpl-profiles__item Kopia','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1204','1533993196','1','p.matysiak','79','140','pb-tpl-profiles__item-simple','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1205','1533993196','1','p.matysiak','78','140','pb-tpl-profiles__item-simple','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1206','1533993215','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1207','1533993226','1','p.matysiak','78','140','pb-tpl-profiles__item-simple','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1208','1533993274','1','p.matysiak','27','283','Rada Naukowa','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1209','1533993301','1','p.matysiak','3','283','Rada Naukowa','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1210','1533993305','1','p.matysiak','27','283','Rada Naukowa','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1211','1533993323','1','p.matysiak','5','283','Rada Naukowa','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1212','1533993323','1','p.matysiak','27','283','Rada Naukowa','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1213','1533993336','1','p.matysiak','27','284','Recenzenci','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1214','1533993409','1','p.matysiak','27','287','Fundacja','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1215','1533993418','1','p.matysiak','27','281','Profil pisma','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1216','1533993731','1','p.matysiak','16','4','BasicPageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1217','1533993732','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1218','1533993789','1','p.matysiak','20','16','ArchiveTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1219','1533993789','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1220','1533993796','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1221','1533993903','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1222','1533993903','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1223','1533993939','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1224','1533993953','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1225','1533993953','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1226','1533993965','1','p.matysiak','22','147','run_dl_issue','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1227','1533993976','1','p.matysiak','22','148','run_dl_archiveSearch','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1228','1533993997','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1229','1533993997','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1230','1533995303','1','p.matysiak','20','16','ArchiveTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1231','1533995303','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1232','1533995363','1','p.matysiak','20','16','ArchiveTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1233','1533995363','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1234','1533995406','1','p.matysiak','20','16','ArchiveTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1235','1533995406','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1236','1533995411','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1237','1533995411','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1238','1533995769','1','p.matysiak','20','16','ArchiveTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1239','1533995769','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1240','1533995812','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1241','1533995812','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1242','1533995816','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1243','1533995816','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1244','1533995833','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1245','1533995833','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1246','1533995863','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1247','1533995863','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1248','1533995872','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1249','1533995872','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1250','1533995943','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1251','1533995943','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1252','1533995953','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1253','1533995954','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1254','1533995993','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1255','1533995993','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1256','1533996003','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1257','1533996004','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1258','1533996027','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1259','1533996027','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1260','1533996044','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1261','1533996044','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1262','1533996146','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1263','1533996146','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1264','1533996152','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1265','1533996153','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1266','1533996158','1','p.matysiak','79','136','dl-archiveIssue','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1267','1533996158','1','p.matysiak','78','136','dl-archiveIssue','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1268','1533996176','1','p.matysiak','20','16','ArchiveTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1269','1533996176','1','p.matysiak','16','16','ArchiveTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1270','1533996291','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1271','1533996293','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1272','1533996324','1','p.matysiak','24','128','siteLexicon_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1273','1533996324','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1274','1533996470','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1275','1533996682','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1276','1533996685','1','p.matysiak','24','107','run_dl_archive','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1277','1533996685','1','p.matysiak','22','107','run_dl_archive','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1278','1533996728','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1279','1533996869','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1280','1533996896','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1281','1533996901','1','p.matysiak','8','-','-','Logged out','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1282','1534064177','1','p.matysiak','58','-','MODX','Logged in','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1283','1534064189','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1284','1534064197','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1285','1534064204','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1286','1534064204','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1287','1534064233','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1288','1534064233','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1289','1534064255','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1290','1534064255','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1291','1534064353','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1292','1534064353','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1293','1534064385','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1294','1534064385','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1295','1534064415','1','p.matysiak','16','8','SearchTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1296','1534064483','1','p.matysiak','20','8','SearchTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1297','1534064484','1','p.matysiak','16','8','SearchTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1298','1534064961','1','p.matysiak','20','8','SearchTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1299','1534064961','1','p.matysiak','16','8','SearchTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1300','1534065037','1','p.matysiak','27','99','Szukaj','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1301','1534065126','1','p.matysiak','27','59','Start','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1302','1534065641','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1303','1534065770','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1304','1534065830','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1305','1534065866','1','p.matysiak','24','11','siteConfig','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1306','1534065866','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1307','1534065870','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1308','1534065893','1','p.matysiak','24','11','siteConfig','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1309','1534065893','1','p.matysiak','22','11','siteConfig','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1310','1534066238','1','p.matysiak','301','70','Redaktorzy','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1311','1534066240','1','p.matysiak','304','70','issueEditorSelector Kopia','Duplicate Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1312','1534066241','1','p.matysiak','301','72','Redaktorzy Duplicate','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1313','1534066308','1','p.matysiak','302','72','Najnowszy numer','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1314','1534066308','1','p.matysiak','301','72','Najnowszy numer','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1315','1534066313','1','p.matysiak','3','59','Start','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1316','1534066324','1','p.matysiak','27','59','Start','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1317','1534066397','1','p.matysiak','3','59','Start','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1318','1534066400','1','p.matysiak','27','59','Start','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1319','1534066476','1','p.matysiak','3','59','Start','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1320','1534066477','1','p.matysiak','27','59','Start','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1321','1534066769','1','p.matysiak','27','59','Start','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1322','1534066816','1','p.matysiak','27','59','Start','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1323','1534066824','1','p.matysiak','5','59','Start','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1324','1534066825','1','p.matysiak','3','59','Start','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1325','1534066826','1','p.matysiak','27','2','Home','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1326','1534066831','1','p.matysiak','5','2','Home','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1327','1534066831','1','p.matysiak','3','2','Home','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1328','1534066857','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1329','1534066859','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1330','1534067008','1','p.matysiak','22','14','tv','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1331','1534067097','1','p.matysiak','27','58','PL','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1332','1534067122','1','p.matysiak','301','72','Najnowszy numer','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1333','1534067133','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1334','1534067136','1','p.matysiak','27','59','Start','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1335','1534067137','1','p.matysiak','27','2','Home','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1336','1534067147','1','p.matysiak','5','2','Home','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1337','1534067147','1','p.matysiak','3','2','Home','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1338','1534067153','1','p.matysiak','5','59','Start','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1339','1534067153','1','p.matysiak','3','59','Start','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1340','1534067163','1','p.matysiak','301','49','Gallery','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1341','1534067168','1','p.matysiak','301','72','Najnowszy numer','Edit Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1342','1534067176','1','p.matysiak','302','72','Najnowszy numer','Save Template Variable','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1343','1534067176','1','p.matysiak','76','-','-','Element management','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1344','1534067184','1','p.matysiak','3','58','PL','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1345','1534067186','1','p.matysiak','27','59','Start','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1346','1534067189','1','p.matysiak','27','58','PL','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1347','1534067206','1','p.matysiak','5','58','PL','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1348','1534067206','1','p.matysiak','3','58','PL','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1349','1534067208','1','p.matysiak','27','1','EN','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1350','1534067212','1','p.matysiak','5','1','EN','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1351','1534067212','1','p.matysiak','3','1','EN','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1352','1534067279','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1353','1534067280','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1354','1534067292','1','p.matysiak','24','153','siteContext_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1355','1534067292','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1356','1534067429','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1357','1534067429','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1358','1534067447','1','p.matysiak','24','153','siteContext_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1359','1534067447','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1360','1534067489','1','p.matysiak','24','153','siteContext_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1361','1534067489','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1362','1534067496','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1363','1534067496','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1364','1534067507','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1365','1534067553','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1366','1534067557','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1367','1534067575','1','p.matysiak','24','128','siteLexicon_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1368','1534067575','1','p.matysiak','22','128','siteLexicon_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1369','1534067588','1','p.matysiak','24','129','siteLexicon_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1370','1534067588','1','p.matysiak','22','129','siteLexicon_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1371','1534067594','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1372','1534067594','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1373','1534067603','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1374','1534067603','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1375','1534067608','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1376','1534067608','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1377','1534067611','1','p.matysiak','24','153','siteContext_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1378','1534067611','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1379','1534067632','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1380','1534067636','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1381','1534067636','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1382','1534067644','1','p.matysiak','5','299','Nr 1 (2013): Widzialność rzeczy','Saving resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1383','1534067644','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1384','1534067658','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1385','1534067987','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1386','1534068016','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1387','1534068033','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1388','1534068034','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1389','1534068037','1','p.matysiak','24','153','siteContext_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1390','1534068037','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1391','1534068085','1','p.matysiak','24','153','siteContext_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1392','1534068085','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1393','1534068101','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1394','1534068101','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1395','1534068129','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1396','1534068129','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1397','1534068187','1','p.matysiak','24','153','siteContext_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1398','1534068187','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1399','1534068190','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1400','1534068191','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1401','1534068211','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1402','1534068211','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1403','1534068244','1','p.matysiak','26','-','-','Refreshing site','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1404','1534068302','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1405','1534068302','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1406','1534068379','1','p.matysiak','79','13','block-head','Saving Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1407','1534068379','1','p.matysiak','78','13','block-head','Editing Chunk (HTML Snippet)','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1408','1534068412','1','p.matysiak','16','3','HomePageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1409','1534068480','1','p.matysiak','20','3','HomePageTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1410','1534068480','1','p.matysiak','16','3','HomePageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1411','1534075401','1','p.matysiak','16','3','HomePageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1412','1534075431','1','p.matysiak','27','299','Nr 1 (2013): Widzialność rzeczy','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1413','1534075451','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1414','1534075453','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1415','1534075508','1','p.matysiak','24','154','siteContext_pl','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1416','1534075508','1','p.matysiak','22','154','siteContext_pl','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1417','1534075537','1','p.matysiak','24','153','siteContext_en','Saving Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1418','1534075537','1','p.matysiak','22','153','siteContext_en','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1419','1534075562','1','p.matysiak','22','142','srcset','Editing Snippet','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1420','1534075725','1','p.matysiak','20','3','HomePageTpl','Saving template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1421','1534075726','1','p.matysiak','16','3','HomePageTpl','Editing template','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1422','1534075747','1','p.matysiak','27','58','PL','Editing resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1423','1534075757','1','p.matysiak','3','58','PL','Viewing data for resource','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');

INSERT INTO `widok_evo_manager_log` VALUES ('1424','1534075764','1','p.matysiak','93','-','-','Backup Manager','91.215.3.212','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_manager_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_manager_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `widok_evo_manager_users`
#

INSERT INTO `widok_evo_manager_users` VALUES ('1','p.matysiak','$P$BAj.yeIEj2T6ngtChHinpUpGYVylgO.');

INSERT INTO `widok_evo_manager_users` VALUES ('10','a.sujka','$P$BdTHFIIf7vps3bKkvv4RzVGT14ijMR1');

INSERT INTO `widok_evo_manager_users` VALUES ('11','k.pijarski','$P$B5u9sQy7OemGAe8nx3bwcGIA7EAN2E1');

INSERT INTO `widok_evo_manager_users` VALUES ('12','t.glowacki','$P$B/9V7HOgWk.EHDIoXySECT1NKYdNig/');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_member_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_member_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `widok_evo_member_groups`
#

INSERT INTO `widok_evo_member_groups` VALUES ('46','1','1');

INSERT INTO `widok_evo_member_groups` VALUES ('42','1','10');

INSERT INTO `widok_evo_member_groups` VALUES ('49','2','11');

INSERT INTO `widok_evo_member_groups` VALUES ('48','2','12');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_membergroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_membergroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `widok_evo_membergroup_access`
#

INSERT INTO `widok_evo_membergroup_access` VALUES ('1','1','1');

INSERT INTO `widok_evo_membergroup_access` VALUES ('2','2','2');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_membergroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_membergroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `widok_evo_membergroup_names`
#

INSERT INTO `widok_evo_membergroup_names` VALUES ('1','managerusers_administrators');

INSERT INTO `widok_evo_membergroup_names` VALUES ('2','managerusers_clients');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_pagebuilder`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_pagebuilder`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_pagebuilder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` int(10) unsigned NOT NULL,
  `container` varchar(255) DEFAULT NULL,
  `instance` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `config` varchar(255) NOT NULL,
  `values` mediumtext NOT NULL,
  `visible` tinyint(1) unsigned DEFAULT '1',
  `index` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`,`container`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

#
# Dumping data for table `widok_evo_pagebuilder`
#

INSERT INTO `widok_evo_pagebuilder` VALUES ('172','82','default',NULL,'','content_lead','{\"lead\":\"Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquacilisi.\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('174','82','default',NULL,'','content_image','{\"image\":\"assets/images/_example/0902-150944-2.jpg\",\"image_caption\":\"\"}','1','2');

INSERT INTO `widok_evo_pagebuilder` VALUES ('176','82','default',NULL,'','content_text','{\"richtext\":\"<p>Etiam qwerty aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquacilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. lla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Fusce auctor lacus vel ligula malesuada dictum.</p>\\n<p>lla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquFusce auctor lacus vel ligula malesuad dictum. Nulla flla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquacilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. lla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Fusce auctor lacus vel ligula malesuada dictum.</p>\\n<p>Nulla facilisi. Etiam aliquFusce auctor lacus vel ligula malesuad dictum. Nulla flla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquacilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id.Phasellus eget purus eget neque luctus dictum.</p>\"}','1','1');

INSERT INTO `widok_evo_pagebuilder` VALUES ('181','211','default',NULL,'','content_text','{\"richtext\":\"<p>W pierwszym numerze &bdquo;Widoku&rdquo; patrzymy na rzeczy: na to, co najbliżej, choć niekiedy najdalej doświadczenia wizualnego, na to, co najbardziej widzialne, a czasem dotkliwie przeoczane, na to, co znajome i swojskie, a co niekiedy staje się niesamowite i obce. Pytamy więc o ramy teoretyczne tej dialektyki widzialności / niewidzialności przedmiot&oacute;w. Rozważamy w ujęciu historycznym sposoby widzenia rzeczy, praktyki ich postrzegania.</p>\\n<p>Perspektywę na te kwestie otwiera projekt artystyczno-badawczy Tomasza Szerszenia, &bdquo;Ty. Ja. Rzeczy&rdquo;. W towarzyszącej projektowi dyskusji przecinają się r&oacute;żne wątki związane z narodzinami krytyki życia codziennego, refleksją nad materialnością, fenomenologią bycia pośr&oacute;d rzeczy i fantazjami na temat sekretnego życia przedmiot&oacute;w. Do rzeczy zbliżamy się poprzez r&oacute;żne ujęcia i za pomocą r&oacute;żnych narzędzi: grzebiemy w ideach szkoły lefebvre&rsquo;owskiej, sięgamy do amerykańskiej poezji modernistycznej, prześwietlamy polskie wzorce konsumeryzmu oraz przed- i poprzełomową chęć posiadania.</p>\\n<p>W panoramicznym ujęciu umieszczamy refleksję nad pismami fotograficznymi doby poodwilżowej w kontekście sporu o abstrakcję, uwagi o fascynacji zabawkami, kt&oacute;rej Walter Benjamin uległ w Moskwie, dyskusję nad znaczeniem przedmiotu i przedmiotowości w sztuce i fotografii po minimalizmie, oraz przegląd spis&oacute;w rzeczy i ich relacji z pamięcią w tekstach Georges&rsquo;a Pereca i pracach Sophie Calle.</p>\\n<p>W punkcie widokowym prezentujemy to, jak modele krytyki kultury wizualnej i materialnej funkcjonują w praktyce: w zestawieniach wypowiedzi artyst&oacute;w i interpretacji krytyk&oacute;w, w zestawieniach obraz&oacute;w i komentarzy. Całość zamykają migawki, w kt&oacute;rych kierujemy wzrok ku wybranym wypowiedziom i przedstawieniom &ndash; tekstowym i wizualnym.</p>\\n<p>Skupienie na rzeczach i ich nieoczywistości pozwala wyraźniej dostrzec nasze sposoby patrzenia &ndash; patrzenia na same przedmioty, ich układy i relacje, w kt&oacute;re wchodzą, ale r&oacute;wnież na innych ludzi, a wreszcie - na samych siebie. To ujęcie wciąż nie dość przyswojone tak w refleksji humanistycznej, jak w życiu codziennym. Powszechność rzeczy nie zawsze oznacza ich niewidzialność, ich użyteczność nie musi prowadzić do znużenia, ich milczenie nie oznacza niemoty. Może więc jednak &bdquo;żadnych pojęć poza tymi, co w rzeczach&rdquo;?</p>\\n<p><a href=\\\"[~282~]\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Zesp&oacute;ł redakcyjny</a></p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('182','212','default',NULL,'','content_text','{\"richtext\":\"<p>Vivamus faucibus dui ut ligula tristique commodo. Morbi mattis lobortis interdum. Donec pulvinar viverra imperdiet. Praesent sodales pharetra est, ac faucibus nulla vehicula eu. Integer vulputate purus sit amet est tristique volutpat. Sed quis dui mi, sit amet ultrices massa. Integer id dolor a nisl accumsan fringilla et in augue. Etiam dignissim enim ac nunc sodales non pulvinar arcu sollicitudin.</p>\\n<p>Etiam venenatis fringilla elit sed tincidunt. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Vestibulum urna nunc, sagittis id dignissim in, elementum quis turpis. Mauris pellentesque varius sem a vestibulum. Mauris id dui enim, et rutrum tortor. Suspendisse potenti. Curabitur imperdiet blandit gravida.</p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('183','213','default',NULL,'','content_text','{\"richtext\":\"<p>Etiam venenatis fringilla elit sed tincidunt. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Vestibulum urna nunc, sagittis id dignissim in, elementum quis turpis. Mauris pellentesque varius sem a vestibulum. Mauris id dui enim, et rutrum tortor. Suspendisse potenti. Curabitur imperdiet blandit gravida. Etiam venenatis fringilla elit sed tincidunt. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Vestibulum urna nunc, sagittis id dignissim in, elementum quis turpis. Mauris pellentesque varius sem a vestibulum. Mauris id dui enim, et rutrum tortor. Suspendisse potenti. Curabitur imperdiet blandit gravida.</p>\\n<p>Etiam venenatis fringilla elit sed tincidunt. FuscWpurus eget neque luctus dictum. Vestibulum urna nunc, sagittis id dignissim in, elementum quis turpis. Mauris pellentesque varius sem a vestibulum. Mauris id dui enim, et rutrum tortor. Suspendisse potenti. Curabitur imperdiet blandit gravida.</p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('184','274','default',NULL,'','content_text','{\"richtext\":\"<p>Dziękujemy! Postaramy się odpowiedzieć jak najszybciej.</p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('189','235','default',NULL,'','content_text','{\"richtext\":\"<p>Vivamus faucibus dui ut ligula tristique commodo. Morbi mattis lobortis interdum. Donec pulvinar viverra imperdiet. Praesent sodales pharetra est, ac faucibus nulla vehicula eu. Integer vulputate purus sit amet est tristique volutpat. Sed quis dui mi, sit amet ultrices massa. Integer id dolor a nisl accumsan fringilla et in augue. Etiam dignissim enim ac nunc sodales non pulvinar arcu sollicitudin.</p>\\n<p>Etiam venenatis fringilla elit sed tincidunt. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Vestibulum urna nunc, sagittis id dignissim in, elementum quis turpis. Mauris pellentesque varius sem a vestibulum. Mauris id dui enim, et rutrum tortor. Suspendisse potenti. Curabitur imperdiet blandit gravida.</p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('190','236','default',NULL,'','content_text','{\"richtext\":\"<p>Etiam venenatis fringilla elit sed tincidunt. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Vestibulum urna nunc, sagittis id dignissim in, elementum quis turpis. Mauris pellentesque varius sem a vestibulum. Mauris id dui enim, et rutrum tortor. Suspendisse potenti. Curabitur imperdiet blandit gravida. Etiam venenatis fringilla elit sed tincidunt. Fusce auctor lacus vel ligula malesuada dictum. Nulla facilisi. Etiam aliquet facilisis nisi, egestas tempus risus semper id. Phasellus eget purus eget neque luctus dictum. Vestibulum urna nunc, sagittis id dignissim in, elementum quis turpis. Mauris pellentesque varius sem a vestibulum. Mauris id dui enim, et rutrum tortor. Suspendisse potenti. Curabitur imperdiet blandit gravida.</p>\\n<p>Etiam venenatis fringilla elit sed tincidunt. FuscWpurus eget neque luctus dictum. Vestibulum urna nunc, sagittis id dignissim in, elementum quis turpis. Mauris pellentesque varius sem a vestibulum. Mauris id dui enim, et rutrum tortor. Suspendisse potenti. Curabitur imperdiet blandit gravida.</p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('191','303','default',NULL,'','content_text','{\"richtext\":\"<p>O&nbsp;wystawie <a href=\\\"http://www.archeologiafotografii.pl/pl/node/2239\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\"><b>Tomasza Szerszenia </b></a><i><b><a href=\\\"http://www.archeologiafotografii.pl/pl/node/2239\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Ty. Ja. Rzeczy</a></b></i> (Fundacja Archeologia Fotografii, 25 maja&ndash;20 czerwca 2012) rozmawiali: Katarzyna Bojarska (IBL PAN), Klara Czerniewska (&bdquo;Dwutygodnik.com&rdquo;), Justyna Jaworska (IKP UW), Karolina Lewandowska (Fundacja Archeologia Fotografii), Adam Mazur (CSW), Paweł Mościcki (IBL PAN), Krzysztof Pijarski (IHS UW), Magda Szcześniak (IKP UW), Tomasz Szerszeń (IS PAN), Marek Zaleski (IBL PAN).</p>\\n<p><b>Katarzyna Bojarska (KB)</b>: Na wstępie chcę podkreślić, że bardzo ważne jest dla nas &ndash; jako grupy badawczej &ndash; rozpoczęcie prezentacji wynik&oacute;w projektu &bdquo;Świat jako archiwum. Krytyczne modele historyczności&rdquo;<sup><a href=\\\"http://pismowidok.org/index.php/one/article/view/24/12#sdfootnote1sym\\\" name=\\\"sdfootnote1anc\\\">1</a></sup> od artystyczno-badawczej propozycji Tomasza Szerszenia. W&nbsp;naszych założeniach podstawową rolę odgrywa łączenie refleksji teoretycznej, praktyk interpretacyjnych i&nbsp;działalności tw&oacute;rczej. Interesuje nas poszerzanie pola nauki, uprawianie humanistyki wszelkimi dostępnymi środkami. Wystawa Tomasza stanowi w&nbsp;moim przekonaniu doskonały przykład realizacji tej &bdquo;poszerzonej&rdquo; postawy badawczej, wyjścia poza wąskie parametry dziedzin akademickich i&nbsp;styl&oacute;w artystycznych.</p>\\n<p><b>Tomasz Szerszeń (TS)</b>: Sw&oacute;j komentarz do wystawy zacznę od tego &ndash; co od początku wydało mi się interesujące &ndash; że postulaty miesięcznika &bdquo;Ty i&nbsp;Ja&rdquo; były w&nbsp;latach 60., w&nbsp;rzeczywistości PRL, niemożliwe do realizacji. Pismo przedrukowywało na przykład całe cykle zdjęciowe pochodzące z&nbsp;prasy zagranicznej &ndash; sesje mody z&nbsp;&bdquo;Vogue\'a&rdquo;, zdjęcia Richarda Avedona, Jeanloupa Sieffa, Guy Bourdina... Brano materiał wizualny z&nbsp;<i>lifestyle\'owych</i> zachodnich pism &ndash; a&nbsp;wraz z&nbsp;nim pewną wizję codzienności, będącą jednocześnie wizją świata &ndash; kt&oacute;re kompletnie nie przystawały do rzeczywistości PRL. Drugie, co mnie uderzyło: materiał ten przejmowany był zwykle w&nbsp;spos&oacute;b bezkrytyczny. Nie chodzi mi tu o&nbsp;strategie graficzne, czyli w&nbsp;jaki spos&oacute;b to było &bdquo;wklejane&rdquo; do &bdquo;Ty i&nbsp;Ja&rdquo; &ndash; pod tym względem jest to robione mistrzowsko &ndash; lecz o&nbsp;brak pytania, co się za tą oszałamiającą estetyką kryje (to oczywiście trochę utopijny postulat, ponieważ trudno oczekiwać od <i>lifestyle\'owego</i> pisma, by prowadziło krytykę estetyzacji...). &bdquo;Ty i&nbsp;Ja&rdquo; jest dla mnie r&oacute;wnież rodzajem archiwum (osobną kwestią do dyskusji pozostaje to, na ile można to określenie stosować do gazety, kt&oacute;ra w&nbsp;tym ujęciu byłaby rodzajem &bdquo;archiwum efemerycznego&rdquo;). Jest to archiwum rzeczy, przedmiot&oacute;w, rozumianych zar&oacute;wno dosłownie &ndash; piękne przedmioty, przedmioty codziennego użytku, wyposażenie mieszkania &ndash; jak i&nbsp;metaforycznie. W&nbsp;tej drugiej perspektywie mamy kilka poziom&oacute;w uprzedmiotowienia: od wizji kobiety &ndash; urzeczowionej w&nbsp;pozie modelki, &bdquo;pięknego przedmiotu do patrzenia&rdquo; &ndash; po język niekt&oacute;rych artykuł&oacute;w, kt&oacute;ry przedstawiał świat jako zbi&oacute;r rzeczy właśnie i&nbsp;kt&oacute;ry rozbudzał pragnienia.</p>\\n<p>Oczywiście, nie chodziło mi tylko o&nbsp;krytykę &bdquo;Ty i&nbsp;Ja&rdquo;. To pismo, przynajmniej przez pierwszych kilka lat istnienia, było czymś fantastycznym, przede wszystkim pod względem wizualnym, grafiki i&nbsp;zdjęć, ale znalazłem tam r&oacute;wnież ciekawe teksty. Absolutnie nie chciałbym tego negować. Jednocześnie wydaje mi się oczywiste, że nasze własne podejście do estetyki lat 60. i&nbsp;&oacute;wczesnego designu jest bardzo bezkrytyczne &ndash; zachwycamy się estetyką, zapominając, że już w&oacute;wczas pojawiały się mocne głosy ujawniające społeczne konsekwencje konsumeryzmu i&nbsp;podejmujące krytykę &bdquo;rzeczy&rdquo;.</p>\\n<p>&bdquo;Ty i&nbsp;Ja&rdquo; wydaje się rodzajem archiwum (pozostańmy przy tym słowie) niemożliwych do spełnienia marzeń i&nbsp;fantazji Polak&oacute;w (choć przecież nie tylko, bo wiele m&oacute;wiło przecież o&nbsp;fantazjach i&nbsp;marzeniach mieszkańc&oacute;w Europy Zachodniej). Pojawia się tu pytanie: czy wyznaczało to przestrzeń wolności, czy może, wręcz przeciwnie, alienowało jeszcze bardziej &ndash; pozostawmy to do dalszej dyskusji.</p>\\n<p>Taki jest punkt wyjścia zabiegu, kt&oacute;ry przeprowadzam: zderzenie &bdquo;Ty i&nbsp;Ja&rdquo; z&nbsp;<i>Rzeczami </i>Georges&rsquo;a&nbsp;Pereca (a&nbsp;właściwie z&nbsp;ich fragmentem). Zależało mi na pokazaniu dw&oacute;ch stron tego samego zjawiska: to, co w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo; jest przyjmowane za dobrą monetę (zachodni styl życia i&nbsp;świat przedmiot&oacute;w jako siła wyzwalająca), u&nbsp;Pereca poddane zostaje krytyce. Zarazem sytuacja jest w&nbsp;jakimś sensie podobna &ndash; chodzi o&nbsp;pragnienie i&nbsp;patrzenie. Na Zachodzie mamy w&oacute;wczas do czynienia z&nbsp;nadmiarem rzeczy, kt&oacute;ry prowadzi do niezaspokojonego, niemożliwego do spełnienia pragnienia &ndash; do tzw. <i>lache-vitrine</i>, &bdquo;lizania witryny&rdquo;, pojęcia związanego zwyczajowo z&nbsp;wielkomiejskim nadmiarem bodźc&oacute;w. W&nbsp;Polsce tymczasem istnieje &bdquo;Ty i&nbsp;Ja&rdquo;; pragnienia są te same, lecz rzeczy jak gdyby brak. Mamy tu zatem wątek rzeczy i&nbsp;wątek mieszkaniowy (jak sobie pięknie urządzić mieszkanie). Przypomnę, że <i>Rzeczy</i> Pereca zaczynają się właśnie niezwykle szczeg&oacute;łowym opisem mieszkania, tyle tylko, że jest to mieszkanie wymarzone, kt&oacute;re bohaterowie chcieliby mieć i&nbsp;kt&oacute;rego pożądają. I&nbsp;kt&oacute;rego, ostatecznie, nie mogą mieć (choć r&oacute;wnocześnie znają je na pamięć). Ten trzecioosobowy język jest tu bardzo ważny. Temat ten zainteresował mnie z&nbsp;jeszcze jednego powodu &ndash; osobistego. Kwestia urządzania mieszkania (a&nbsp;w&nbsp;związku z&nbsp;tym rzeczy) jest mi dziś bardzo bliska, a&nbsp;osobiste ożywianie archiw&oacute;w, wprowadzanie do projektu badawczego zaszyfrowanego poziomu kryptoautobiograficznego to coś, co żywo mnie interesuje.</p>\\n<p>Sama wystawa opiera się na zasadzie kolażu, zderzenia bardzo r&oacute;żnych element&oacute;w. Wydaje mi się to o&nbsp;tyle uprawomocnione, że r&oacute;wnież Roman Cieślewicz wybrał kolaż jako gł&oacute;wną strategię organizującą &bdquo;Ty i&nbsp;Ja&rdquo;. Nie chodzi tylko o&nbsp;&bdquo;estetykę kolażu&rdquo;, ale r&oacute;wnież o&nbsp;spos&oacute;b użycia sesji mody i&nbsp;fragment&oacute;w zdjęć z&nbsp;zagranicznej prasy, umieszczanych w&nbsp;kontekście polskim. Jest to motyw przewodni zar&oacute;wno w&nbsp;sensie dosłownym &ndash; mamy tu serię kolaży &ndash; jak i&nbsp;metaforycznym &ndash; strategii zestawienia ze sobą r&oacute;żnych element&oacute;w. Pojawia się zatem nagranie, zderzone z&nbsp;cyklem kolaży, zostaje zasugerowana &bdquo;scenografia&rdquo; &ndash; stolik z&nbsp;lat 60., numery pisma, jest wreszcie wyklejanka z&nbsp;wypisami z&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;.</p>\\n<p>Warto sobie uświadomić tę strategię, obraną przez redaktor&oacute;w &bdquo;Ty i&nbsp;Ja&rdquo; &ndash; ta kwestia jest zresztą silnie obecna w&nbsp;opublikowanej w&nbsp;&bdquo;Dwutygodniku&rdquo; rozmowie Klary Czerniewskiej z&nbsp;Teresą Kuczyńską<sup><a href=\\\"http://pismowidok.org/index.php/one/article/view/24/12#sdfootnote2sym\\\" name=\\\"sdfootnote2anc\\\">2</a></sup>. Na pytanie, jak te sesje i&nbsp;zdjęcia były zdobywane, Kuczyńska odpowiada wprost, że były po prostu przefotografowywane, ale nigdy 1:1 &ndash; zawsze zmieniano trochę tło i&nbsp;kontekst. Starałem się działać podobnie: wychwycić pewne motywy, kt&oacute;re się pojawiają w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;, i&nbsp;wyciąć je, przesuwając jednak akcenty, zmieniając kontekst i zarazem sens. Najlepszym terminem do opisania tej metody jest pojęcie Guy Deborda: &bdquo;przechwycenie&rdquo; (<i>d&eacute;tournement</i>). Debordowi chodziło o&nbsp;wymknięcie się językowi spektaklu, ożywienie dzięki przejęciu sens&oacute;w i&nbsp;idei, ale r&oacute;wnocześnie o&nbsp;ucieczkę od uprzedmiotowienia przez spektakl. Rzecz jasna, z&nbsp;zachowaniem proporcji, celem tych kolaży było utrzymanie pewnej stylistyki przy r&oacute;wnoczesnym &bdquo;przechwyceniu&rdquo; tych sens&oacute;w, przeobrażeniu kontekstu. Przeniesienie pewnych wątk&oacute;w przy jednoczesnym ich skondensowaniu. Nacisk położony zostaje na wątek mieszkaniowy oraz na grę między kobietą i&nbsp;mężczyzną (&bdquo;ty i&nbsp;ja&rdquo;).</p>\\n<p>Ważnym elementem jest nagranie fragmentu pierwszego rozdziału <i>Rzeczy </i>Pereca. Został on przeze mnie pocięty, wyczyszczony (niekt&oacute;re kwestie &ndash; zbyt długie, by je przeczytać na jednym oddechu &ndash; zostały wyrzucone); to była trochę taka robota adaptacyjna, jak w&nbsp;teatrze. Zasadnicza r&oacute;żnica polega na tym, że rozbiłem to na głos kobiecy i&nbsp;męski &ndash; na Ty i&nbsp;Ja: u&nbsp;Pereca bohaterami są właśnie młoda kobieta i&nbsp;młody mężczyzna, para. Nadal pozostaje obecna tu trzecia osoba, ten uprzedmiatawiający ton; zostaje ona jednak ożywiona w&nbsp;efekcie napięcia między dwoma głosami &ndash; kobiecym i&nbsp;męskim. Zależało mi na tej formie komentarza, ponieważ jest to stały motyw nowofalowy, czy też &bdquo;debordowski&rdquo;: to komentarz, kt&oacute;ry nie koresponduje w&nbsp;bezpośredni spos&oacute;b z&nbsp;obrazami, nadając im, tym samym, kolejny wymiar. Taki zabieg można spotkać i&nbsp;u&nbsp;Godarda, i&nbsp;w&nbsp;filmowej wersji <i>Społeczeństwa spektaklu</i>, i&nbsp;w&nbsp;wielu innych filmach z&nbsp;lat 60. Głosy w&nbsp;nagraniu to ja i&nbsp;Julia Holewińska. Zależało mi, by nagranie nadawało wystawie teatralny wymiar, by rozciągało ją w&nbsp;czasie i&nbsp;w&nbsp;przestrzeni. Także wypisy i&nbsp;stolik mają zasugerować teatralność tej sytuacji.</p>\\n<p>Jeszcze słowo o&nbsp;<i>Twiggy</i>. To zdjęcie Avedona z&nbsp;sesji mody dla &bdquo;Vogue\'a&rdquo; z&nbsp;1967 roku, kt&oacute;ra w&nbsp;tym samym roku została przedrukowana w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;. To centralny punkt wystawy. Gdziekolwiek byśmy nie patrzyli, napotkamy jej spojrzenie. Reprodukcji towarzyszy podpis: &bdquo;W&nbsp;moim M&ndash;3 mam zdjęcie Avedona. To portret Twiggy. Dokleiłem jej na czole czerwoną kropkę&rdquo;. Chodzi tu o&nbsp;dwie sprawy. Sprawa pierwsza, ciekawa być może dla socjologa wizualności, dotyczy tego, że każdy czytelnik &bdquo;Ty i&nbsp;Ja&rdquo; m&oacute;gł sobie w&nbsp;1967 roku wyciąć to zdjęcie i&nbsp;powiesić na ścianie. A&nbsp;także wykonywać na nim jakieś działania. Sprawa druga, dość istotna, wiąże się z&nbsp;tym, że Twiggy uchodzi &ndash; podobnie zresztą jak Avedon &ndash; za ikonę lat 60. Widzimy zatem rodzaj ołtarzyka, bądź pseudoołtarzyka, ponieważ wydźwięk tej pracy jest dość ironiczny wobec mody polegającej na &bdquo;przechwytywaniu&rdquo; estetyki lat 60., jednak tylko jako estetyki &ndash; co to za Twiggy, kt&oacute;ra ma czerwoną kropkę na czole, i&nbsp;co to za zdjęcie Avedona, kt&oacute;re zostało zepsute? Ołtarzyk staje się zatem r&oacute;wnocześnie antyołtarzykiem &ndash; to centralne miejsce wystawy, kt&oacute;re kryje w&nbsp;sobie zarazem ten fałsz. Zależało mi na tym, by był to punkt centralny, a&nbsp;jednocześnie &bdquo;znak pusty&rdquo;.</p>\\n<p><b>Klara Czerniewska (KCZ)</b>: Zasugerowałeś pewną bezrefleksyjność autor&oacute;w pisma, ale z&nbsp;drugiej strony jest ta całkowicie refleksyjna jego strona wizualna. Pisząc o&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;, podkreślałam to, że można je traktować jako archiwum. Przygotowałam taki fragment z&nbsp;Michela Foucaulta:</p>\\n<blockquote>To archiwum sprawia, że rzeczy powiedziane nie uciekają w&nbsp;przeszłość w&nbsp;ten sam spos&oacute;b co czas, albowiem są takie, kt&oacute;re choć świecą silniej niż najbliższe gwiazdy, w&nbsp;rzeczywistości przybywają do nas z&nbsp;bardzo daleka, podczas gdy inne, całkiem wsp&oacute;łczesne już zupełnie pobladły<sup><a href=\\\"http://pismowidok.org/index.php/one/article/view/24/12#sdfootnote3sym\\\" name=\\\"sdfootnote3anc\\\">3</a></sup>.</blockquote>\\n<p>To jest właśnie estetyka lat 60., kt&oacute;ra jest dla nas ciągle ważnym punktem odniesienia. Nie m&oacute;wi się tyle o&nbsp;kulturze wizualnej następnych dekad, zapewne dlatego, że nastała już w&oacute;wczas krytyka konsumeryzmu. Jednak &bdquo;fałszywy ołtarzyk&rdquo; Twiggy nie miałby racji bytu, gdyby był jedynie bezrefleksyjnie &bdquo;przeklejony&rdquo; na zasadzie <i>copy-paste</i>. Dodając jej czerwoną kropkę i&nbsp;komentarz, Tomasz Szerszeń dodaje jej własne sensy, jednak ktoś, kto, tak jak ja, przeglądał inne numery magazynu, uzna ten zabieg za powt&oacute;rzenie tego, co robił Cieślewicz z&nbsp;sesjami mody. W&nbsp;moim odczuciu zatem dokonuje się tutaj podtrzymanie tradycji. Dla mnie Twiggy jest też nieświadomym nawiązaniem do innych zdjęć Avedona, reprodukowanych na wewnętrznych stronach okładki w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo; &ndash; portret&oacute;w Beatles&oacute;w dla magazynu &bdquo;Stern&rdquo; w&nbsp;1967 roku. Czerwona kropka na czole modelki kojarzy się z&nbsp;hinduskim bindi, a&nbsp;George Harrison został przez Avedona sportretowany jak hinduistyczne b&oacute;stwo...</p>\\n<p><a name=\\\"tu\\\"></a><b>Krzysztof Pijarski (KP):</b> Klara Czerniewska zaczęła od Foucaulta. Bardzo się cieszę, cały czas bowiem rozmawiamy tutaj o&nbsp;archiwum jako o&nbsp;pewnej metaforze. &bdquo;Ty i&nbsp;Ja&rdquo; dosłownym archiwum nie jest. To hasło, pod kt&oacute;rym się tu spotykamy, jest r&oacute;wnież pewną metaforą &ndash; pytanie, na ile nośną.</p>\\n<p><b>Justyna Jaworska (JJ)</b>: Po raz pierwszy zwr&oacute;ciłam uwagę na ten problem, czytając artykuł Małgorzaty Tkacz-Janik z&nbsp;&bdquo;Kultury Popularnej&rdquo; z&nbsp;2002 roku, zatytułowany właśnie Z&nbsp;<i>archiwum polskiego konsumeryzmu</i>. <i>Magazyn ilustrowany &bdquo;Ty i&nbsp;Ja&rdquo;</i>. To jest dokładnie ta perspektywa.</p>\\n<p><b>Adam Mazur (AM)</b>: Co ciekawe, prawdziwe (czyli nie traktowane jako metafora) archiwum fotograficzne pisma &bdquo;Ty i&nbsp;Ja&rdquo; i&nbsp;pracujących dla niego fotograf&oacute;w r&oacute;wnież było przedmiotem poszukiwania, ale nie udało się go odnaleźć. W&nbsp;swoim czasie pr&oacute;bowałem o&nbsp;to pytać autor&oacute;w zdjęć do &bdquo;Ty i&nbsp;Ja&rdquo;. Przede wszystkim Krzysztofa Gierałtowskiego, kt&oacute;ry miał z&nbsp;tym archiwum do czynienia. Jego zdaniem to wszystko gdzieś przepadło, zostało wyrzucone na śmietnik. Prowadziliśmy poszukiwania z&nbsp;Rafałem Lewandowskim, ale bezskutecznie. Pozostaje nam zatem istotnie traktować to archiwum jedynie metaforycznie.</p>\\n<p><b>TS</b>: Warto też zwr&oacute;cić uwagę, że do tej pory nie m&oacute;wiło się o&nbsp;tym piśmie w&nbsp;kontekście sztuki. M&oacute;wiło się o&nbsp;konkretnych osobach, o&nbsp;ich pracach, ale nie o&nbsp;pewnej całości.</p>\\n<p><b>KCz</b>: To prawda &ndash; nie powstała jeszcze żadna publikacja o&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;, kt&oacute;ra poruszałaby inne tematy niż tylko jego strona wizualna. Szymon Bojko pisał dużo o&nbsp;nim w&nbsp;kontekście koncepcji graficznej, w&nbsp;&bdquo;Piktogramie&rdquo; przedrukowano liczne awangardowe reklamy &ndash; i&nbsp;to wszystko. Ani słowa o&nbsp;roli obyczajowej, kulturotw&oacute;rczej, o&nbsp;funkcji pisma przeznaczonego dla elit, mimo wszystko jakoś obytych z&nbsp;Zachodem, &bdquo;opatrzonych&rdquo;.</p>\\n<p>Wracając do wcześniejszego wątku, zaznaczę jednak, że język (postulatywny, konsumerystyczny) był wsp&oacute;lny i&nbsp;dla Zachodu, i&nbsp;dla Wschodu. Gorzej było z&nbsp;rzeczywistością po obu stronach, nieprzystawalną &ndash; Tomek wspomniał o&nbsp;tym na początku. &bdquo;Ty i&nbsp;Ja&rdquo; można było wcielić do świata sztuki (historii sztuki czy designu), ponieważ istnienie pisma to ledwie dekada z&nbsp;kawałkiem, okres, kt&oacute;ry skupiał jak w&nbsp;soczewce stylistykę lat 60. Z&nbsp;kolei dla Cieślewicza to był jedynie epizod &ndash; przepustka do dalszej kariery.</p>\\n<p><b>TS</b>: Sprawa Cieślewicza jest interesująca. On się przyjaźnił z&nbsp;Peterem Knappem, kt&oacute;ry znał &bdquo;Ty i&nbsp;Ja&rdquo; i&nbsp;zaprosił go do pracy we Francji. Na Zachodzie istniała więc świadomość, że coś takiego powstaje.</p>\\n<p><b>KCz</b>: Powstawało coś wyjątkowego, dlatego możemy o&nbsp;tym m&oacute;wić w&nbsp;kontekście sztuki i&nbsp;designu, nie tylko obyczajowości.</p>\\n<p><b>TS</b>: Chodziło mi o&nbsp;to, że do tej pory pismo nie było tak rozpatrywane.</p>\\n<p><b>JJ</b>: W&nbsp;1965 roku, kiedy ukazują się <i>Rzeczy</i> Pereca, &bdquo;Ty i&nbsp;Ja&rdquo; wychodzi już od pięciu lat, kosztuje 12 złotych (to bardzo dużo), wcale nie jest łatwo je kupić i&nbsp;jest dość &bdquo;niszowe&rdquo;. Zadawałam sobie pytanie o&nbsp;projektowanego czytelnika, o&nbsp;adresata pisma, bo to nie jest fenomen &bdquo;Przekroju&rdquo; &ndash; połączenia bardzo r&oacute;żnych klas społecznych, od profesora do sprzątaczki, jakby chciał jego redaktor Marian Eile &ndash; tylko jednak dość elitarna propozycja i, tak jak powiedział Tomek, mocno zawieszona w&nbsp;pr&oacute;żni: konsumeryzm bez konsumpcji. Strasznie się cieszę, że powstała ta wystawa &ndash; jej pomysł, można powiedzieć, wisiał w&nbsp;powietrzu.</p>\\n<p>To rzeczywiście było w&nbsp;jakimś sensie bardzo dziwne pismo. Gdybym miała dla niego wskazać genealogię historyczną, to byłaby to słynna zimnowojenna &bdquo;debata kuchenna&rdquo; między Nixonem a&nbsp;Chruszczowem, kt&oacute;ra odbyła się w&nbsp;Moskwie w&nbsp;1959 roku, podczas wielkiej wystawy wzornictwa amerykańskiego. Amerykanie pokazali Rosjanom otoczenie zwykłej amerykańskiej rodziny. Największą, wstrząsającą atrakcją była kuchnia: piękna, lśniąca, ze sprzętami kuchennymi, kt&oacute;rych Rosjanie nigdy nie widzieli. To był przełom. Po &bdquo;debacie kuchennej&rdquo; państwa komunistyczne zaczęły produkować lod&oacute;wki, pralki etc. Front zbrojeń przeni&oacute;sł się w&nbsp;pewnym sensie na teren gospodarstwa domowego i&nbsp;życia codziennego. Można już było &ndash; od początku lat 60. &ndash; wydawać takie pismo jak &bdquo;Ty i&nbsp;Ja&rdquo; (kt&oacute;re spokojnie możemy nazwać pierwszym polskim pismem <i>lifestyle\'owym</i>, choć termin <i>lifestyle</i> w&nbsp;odniesieniu do tamtej rzeczywistości wydaje się dość abstrakcyjny).</p>\\n<p>To ma związek z&nbsp;językiem gomułkowskiej &bdquo;małej stabilizacji&rdquo; &ndash; ostrożnej, kulawej, ale jednak konsumpcji. Przypomnijmy sobie <i>Niewinnych czarodziei</i> Wajdy (1961) &ndash; małe mieszkanko, kawalerka, sprzęty ubogie, ale jednak z&nbsp;pretensją do pewnego stylu, inteligenckiego blichtru&hellip; Następuje wielkie poodwilżowe przywr&oacute;cenie do łask codzienności. Pojawiają się nowe tematy, odradza się poezja liryczna, można wreszcie m&oacute;wić o&nbsp;chłopakach i&nbsp;dziewczynach, o&nbsp;szczęściu we&nbsp;dwoje. Pęka socrealistyczny kod &ndash; i&nbsp;tak powstaje miejsce dla takiego pisma.</p>\\n<p>Naprawdę było ono pod wieloma względami cudowne, ale i&nbsp;śmieszne. Weźmy taką rubrykę jak <i>Wybraliśmy dla Ciebie</i>, przedstawiającą po prostu przedmioty &ndash; to bardzo w&nbsp;duchu Pereca &ndash; i&nbsp;to wcale nie przedmioty designerskie czy drogie, tylko takie codziennego użytku (popielniczki, otwieracze do puszek itd.). Oczywiście, można powiedzieć, że były to początki polskiego designu, ale sam pomysł, by przedstawiać rzeczy jako rzeczy, oznaczał niezwykły zwrot w&nbsp;myśleniu o&nbsp;tym, co jest możliwe do pokazania.</p>\\n<p><b>KP</b>: Dzisiaj, gdy widzimy w&nbsp;kolorowych pismach reprodukcje rzeczy, to są one przeważnie bardzo drogie, jakby stworzone do &bdquo;lizania witryny&rdquo;&hellip;</p>\\n<p><b>Karolina Lewandowska (KL):</b> M&oacute;j ulubiony artykuł z&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo; poświęcony jest torbom &ndash; na eksport oczywiście. W&nbsp;pierwszym zdaniu pojawia się informacja, że mowa o&nbsp;odrzutach z&nbsp;eksportu, dzięki czemu można je w&nbsp;og&oacute;le kupić i&nbsp;o&nbsp;nich pisać. Była to zatem bardzo szczeg&oacute;lna dostępność&hellip;</p>\\n<p><b>JJ</b>: Mogę wam przeczytać tekst pierwszej reklamy, kt&oacute;ry znalazłam w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;, z&nbsp;1960 roku. Coś dla fotograf&oacute;w właśnie &ndash; reklama aparatu, z&nbsp;tekstem:</p>\\n<blockquote>W&nbsp;pełni sezonu najlepszą nagrodą za świadectwo, najbardziej wychowawczym prezentem wakacyjnym, najbardziej upragnionym sprzętem wycieczkowym jest dla młodzieży Druh &ndash; popularny aparat fotograficzny dla dzieci i&nbsp;młodzieży i&nbsp;początkujących amator&oacute;w. Druh dostępny jest dla każdego, kosztuje zaledwie 150 złotych.</blockquote>\\n<p>Co to jest za retoryka? Dydaktyczna, kompletnie niekomercyjna. Przedmiot jest wychowawczy i&nbsp;w&nbsp;założeniu dostępny dla każdego &ndash; staramy się usprawiedliwić wystawienie go na sprzedaż. Każdy przecież powinien mieć Druha, Partia powinna go każdemu wręczać w&nbsp;nagrodę za dobre świadectwo. To przejście od świata, w&nbsp;kt&oacute;rym reklama była w&nbsp;og&oacute;le nie do pomyślenia, do świata raczkującego konsumeryzmu było retorycznie dość dziwaczne &ndash; warto to złapać.</p>\\n<p><b>Magda Szcześniak (MSz):</b> Pociągnęłabym myśl Klary, że mimo wszystko języki Wschodu i&nbsp;Zachodu są jednak trochę do siebie podobne. Przeglądając reklamy Kodaka z&nbsp;pierwszej połowy XX wieku, by pozostać w&nbsp;tej samej poetyce, widzimy to podobieństwo: instruują one użytkownik&oacute;w aparatu, co mogą z&nbsp;nim zrobić, w&nbsp;jaki spos&oacute;b wykorzystać itd. W&nbsp;og&oacute;le mamy tu do czynienia z&nbsp;innym językiem reklamy &ndash; niezależnie od&nbsp;tego, czy i&nbsp;dla kogo te produkty były dostępne lub nie. Reklama w&nbsp;latach 50. r&oacute;wnież na Zachodzie posługuje się innym językiem niż dziś.</p>\\n<p><b>JJ</b>: Przepraszam, znalazłam tekst jeszcze jednej reklamy. Wyobraźcie sobie: w&nbsp;tarczę pomarańczowego słońca z&nbsp;tr&oacute;jkątnymi promieniami wmontowany zostaje tr&oacute;jkąt namiotu turystycznego. Wszystko pięknie graficznie zakomponowane. Towarzyszy temu buńczuczny podpis: &bdquo;Polski sprzęt turystyczny nie ustępuje zachodniemu jakością i&nbsp;ceną&rdquo;. Na sąsiedniej stronie, na pomarańczowym tle pokazane są biwakowe akcesoria: bidon, materac dmuchany, płetwy, aluminiowa puszka, plastikowy talerz&hellip; Po prostu rzeczy. Pokazane tak, jakby samo to, że można je kupić, że one są, wystarczało za cały gest prezentacji.</p>\\n<p><b>KCz</b>: Z&nbsp;tym wiąże się też kontekst powojennego postępu technologicznego: wkraczamy tu w&nbsp;historię designu.</p>\\n<p><b>JJ</b>: Naturalnie. To moment, kiedy prezentacja przedmiot&oacute;w nie potrzebuje metafory, lecz posługuje się czystą enumeracją &ndash; po prostu pokazujemy. To się zaczyna p&oacute;źniej przetwarzać i&nbsp;w&nbsp;drugiej połowie lat 60. reklamy w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo; stają się bardziej złożone, często operują kolażem &ndash; Tomasz Szerszeń robi na tej wystawie kolaż z&nbsp;kolaży &ndash; naprawdę wznosząc się na bardzo wysoki poziom skr&oacute;tu i&nbsp;wyrafinowania. Jest w&nbsp;tym wszystkim jednak r&oacute;wnież nutka resentymentu: pytanie, czy to jest rzeczywiście krytyka czy fascynacja? W&nbsp;tym samym 1965 roku, r&oacute;wnocześnie z&nbsp;Perekiem, w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo; ukazuje się fragment opowiadania Ewy Berberyusz <i>Ucałuj pieniądze</i>. To historia o&nbsp;dziewczynie, kt&oacute;ra pracuje &ndash; zajmuje się domem, sprząta &ndash; u&nbsp;zamożnej amerykańskiej rodziny mieszkającej w&nbsp;Paryżu; pan domu jest generałem NATO. Z&nbsp;jednej strony zachowuje moralną wyższość nad swoim &bdquo;państwem&rdquo;, ale z&nbsp;drugiej strony jest tam scena, w&nbsp;kt&oacute;rej bohaterka przestawia czy też odkurza flakony perfum na toaletce pani domu &ndash; w&nbsp;tym geście jest wszystko... Mimo warstwy antyburżuazyjnego potępienia (zapewne koniecznej) tekst musiał być absolutnie fascynujący dla większości czytelniczek &ndash; marzyły one o&nbsp;Elisabeth Arden, czy też o&nbsp;tym, co tam stało&hellip; Był to rodzaj podw&oacute;jnego kodu, swoista subwersja. Tytuł &bdquo;Ty i&nbsp;Ja&rdquo; czytamy przede wszystkim jako &bdquo;kobieta&rdquo; i&nbsp;&bdquo;mężczyzna&rdquo;, ale możemy go r&oacute;wnież czytać jako &bdquo;tam&rdquo; i&nbsp;&bdquo;tu&rdquo;, jako &bdquo;Zach&oacute;d&rdquo; &ndash; &bdquo;my&rdquo;. Byłaby to pr&oacute;ba zbudowania pewnego pomostu.</p>\\n<p><b>TS</b>: Jest jeszcze jeden bardzo osobisty aspekt, kt&oacute;ry pojawia się w&nbsp;przywołanej rozmowie Klary z&nbsp;&bdquo;Dwutygodnika&rdquo;: &bdquo;Ty i&nbsp;Ja&rdquo; to Teresa Kuczyńska i&nbsp;Roman Juryś.</p>\\n<p><b>KCz</b>: Kuczyńska nie chce jednak o&nbsp;tym m&oacute;wić. Juryś wyemigrował potem do Paryża, miał drugą rodzinę, a&nbsp;ona już do końca życia pozostała sama&hellip;</p>\\n<p>Przywołana metafora została przedstawiona r&oacute;wnież graficznie. W&nbsp;każdej wypowiedzi pojawia się ten dualizm: z&nbsp;jednej strony mamy zachodnią literaturę, z&nbsp;drugiej &ndash; rzeczy, z&nbsp;jednej strony idee, z&nbsp;drugiej &ndash; przedmioty.</p>\\n<p><b>Marek Zaleski (MZ)</b>: Chciałbym zacząć od osobistego wspomnienia: w&nbsp;1965 roku miałem 13 lat i&nbsp;nie czytywałem oczywiście Pereca. Zresztą powieść <i>Rzeczy </i>nie była wtedy przełożona na polski; przeczytałem ją wiele lat p&oacute;źniej. Miałem za to dostęp do pisma &bdquo;Ty i&nbsp;Ja&rdquo; &ndash; czytali je moi rodzice, moi znajomi, znajomi rodzic&oacute;w. Potem, kiedy byłem trochę starszy, poznałem kogoś, kto pracował w&nbsp;redakcji tego pisma. Ten świat nie był mi zatem obcy. Budzi m&oacute;j sprzeciw używanie takich pojęć, jak &bdquo;archiwum&rdquo; czy &bdquo;konsumeryzm&rdquo; w&nbsp;stosunku do &bdquo;Ty i&nbsp;Ja&rdquo;. Archiwum kojarzy mi się z&nbsp;czymś, co jest zbiorem dokument&oacute;w posiadających stempel autentyzmu. Natomiast &bdquo;Ty i&nbsp;Ja&rdquo; to była witryna, aranżacja rzeczywistości sfabrykowanej, a&nbsp;nie dokument realnie istniejącej. Reguły, według kt&oacute;rych była ona fabrykowana, nie były regułami &bdquo;gry konsumerystycznej&rdquo;, a&nbsp;na pewno nie przede wszystkim &ndash; to była przede wszystkim gra w&nbsp;imię estetyzacji rzeczywistości. &bdquo;Ty i&nbsp;Ja&rdquo; pamiętam jako niewinne, idylliczne pismo, kt&oacute;re starało się stworzyć rodzaj &bdquo;nadrzeczywistości&rdquo; w&nbsp;rzeczywistości siermiężnego PRL-u. Było ono witryną liryczno-surrealnego socjalizmu, białym pi&oacute;ropuszem epoki stabilizacji. &bdquo;Ty i&nbsp;Ja&rdquo; było nieocenione, bo proponowało chwilę oddechu: na pokazywane tam rzeczy nie patrzyło się jak na realne propozycje (nie były dostępne jako towary!) &ndash; to było nasze <i>mus&eacute;e imaginaire</i>, &bdquo;kolaż&rdquo; obrazk&oacute;w i&nbsp;pragnień. Pamiętajmy, że można było bezkarnie uprawiać rodzaj &bdquo;brikolerki&rdquo; (cynicznej, bo nie płaciło się za prawa autorskie) i&nbsp;trochę sobie upiększać rzeczywistość. Niewiele więcej można było robić, chcąc pozostać w&nbsp;Partii Umiarkowanego Postępu (w&nbsp;Granicach Prawa).</p>\\n<p><b>KCz</b>: Sama Kuczyńska, pytana przez dziennikarki, czy &bdquo;Ty i&nbsp;Ja&rdquo; było w&nbsp;jakiś spos&oacute;b polemiczne wobec systemu socjalistycznego, nie była w&nbsp;stanie odpowiedzieć twierdząco. Zapewne z&nbsp;powodu tej właśnie idylliczności, o&nbsp;kt&oacute;rej m&oacute;wi Marek Zaleski.</p>\\n<p><b>KB</b>: Myślę, że wszyscy zgodzimy się, że nie traktujemy &bdquo;Ty i&nbsp;Ja&rdquo; &ndash; struktury tego pisma &ndash; jako struktury archiwalnej, tylko jako swoiste &bdquo;archiwum&rdquo; wyobrażeń, doświadczenia wizualnego tamtego czasu w&nbsp;Polsce, ale też jako soczewkę, przez kt&oacute;rą można spojrzeć na epokę, a&nbsp;także na problemy całkowicie wsp&oacute;łczesne. &bdquo;Ty i&nbsp;Ja&rdquo; nie jest zbiorem dokument&oacute;w, ale jest autentykiem &ndash; świadectwem czasu &ndash; a&nbsp;w&nbsp;rękach Tomasza staje się źr&oacute;dłem krytycznego namysłu nad &oacute;wczesnym obrazem i&nbsp;sposobem mitologizowania lat 60. Jednocześnie stanowi świetny kontekst dla wypowiedzi autokrytycznej czy autotematycznej. Tak się rzeczywiście składa, że w&nbsp;ciągu ostatnich dw&oacute;ch lat wszyscy członkowie naszej grupy badawczej kupowali mieszkania, meble, przechodzili &bdquo;na swoje&rdquo;, urządzali się. To pozornie banalne odniesienie pociąga za sobą &ndash; będę się upierać &ndash; pewną szczeg&oacute;lną refleksję nad stosunkiem do otoczenia, do rzeczy, nad relacją z&nbsp;drugą osobą, etc.</p>\\n<p><b>AM</b>: Warto tu przywołać &bdquo;Przekr&oacute;j&rdquo; i&nbsp;niedawne spotkanie z&nbsp;Wojciechem Plewińskim w&nbsp;Galerii Asymetria (w&nbsp;dyskusji brała udział r&oacute;wnież Justyna Jaworska)<sup><a href=\\\"http://pismowidok.org/index.php/one/article/view/24/12#sdfootnote4sym\\\" name=\\\"sdfootnote4anc\\\">4</a></sup>. Należy zdać sobie sprawę, że ludzie pracujący w&nbsp;magazynach, o&nbsp;kt&oacute;rych m&oacute;wimy, to była elita doświadczająca szeregu przyjemności w&nbsp;dość okropnej jednak rzeczywistości PRL. Opowieści czy też przepełnione nostalgią wspomnienia Plewińskiego są momentami dość zaskakujące pod tym względem i&nbsp;można je streścić w&nbsp;wyliczance: jazz, narty, skutery, dziewczyny, alkohol. Wszystko to jednak bez siermięgi, nawet bez stylowego, graniczącego z&nbsp;ub&oacute;stwem minimalu <i>Niewinnych czarodziej&oacute;w</i>. W&nbsp;tym sensie te pisma ilustrują też styl życia establishmentu tamtych czas&oacute;w, beneficjent&oacute;w PRL, kt&oacute;rzy mieli dostęp do rzeczy z&nbsp;Zachodu. Świetnie to wydobyły choćby ostatnie publikacje Klary Czerniewskiej i&nbsp;Maksa Cegielskiego, poświęcone Hannie i&nbsp;Gabrieli Rechowiczom<sup><a href=\\\"http://pismowidok.org/index.php/one/article/view/24/12#sdfootnote5sym\\\" name=\\\"sdfootnote5anc\\\">5</a></sup>. A&nbsp;przecież &bdquo;Ty i&nbsp;Ja&rdquo; było w&nbsp;tej hierarchii wyżej niż &bdquo;Przekr&oacute;j&rdquo;&hellip; Ta sytuacja nie jest zatem neutralna.</p>\\n<p>Całkowicie się z&nbsp;zgadzam z&nbsp;profesorem Zaleskim w&nbsp;kwestii &bdquo;zapożyczeń&rdquo;. Mam problem z&nbsp;tego rodzaju cynicznym manipulowaniem materiałem wizualnym i&nbsp;prezentowaniem go polskiej widowni. Starałem się wyobrazić sobie, co ludzie pracujący w&nbsp;redakcji właściwie o&nbsp;tym wszystkim myśleli, przeklejając i&nbsp;przefotografowując zachodnie żurnale. Znajduje to ciekawą kontynuację wsp&oacute;łcześnie: wiele os&oacute;b &ndash; choćby wspomniany Krzysztof Gierałtowski &ndash; kt&oacute;re w&nbsp;PRL zaczynało swoją fascynację fotografią i&nbsp;podobnymi magazynami, tworzyło potem system reklamy w&nbsp;III RP. Część z&nbsp;ludzi zaangażowanych w&nbsp;media PRL wyjechało i&nbsp;wr&oacute;ciło do Polski, np.&nbsp;Tadeusz Rolke, kt&oacute;ry jeździł za granicę podglądać tych samych fotograf&oacute;w, kt&oacute;rych zdjęcia były w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo; &bdquo;kradzione&rdquo;, przefotografowywane, przemontowywane. Rolke emigruje, zaś po powrocie funkcjonuje jako guru od estetyki lat 60., niemal jako polski Avedon. Jednak jego gwiazda w&nbsp;znacznej mierze świeci światłem odbitym. Osobnej analizy wymagałoby zjawisko wsp&oacute;łczesnej, często bezkrytycznej fascynacji estetyką &bdquo;małej stabilizacji&rdquo;, czemu dają wyraz choćby wystawy w&nbsp;Zachęcie (<i>Szare w&nbsp;kolorze</i>) i&nbsp;Muzeum Narodowym (<i>Chcemy być nowocześni</i>).</p>\\n<p><b>KCz</b>: Dość wspomnieć, że Felicja Uniechowska, kt&oacute;ra redagowała cykl <i>Moje hobby to mieszkanie</i>, chodziła gł&oacute;wnie po mieszkaniach znajomych &ndash; przedstawicieli, jakbyśmy dziś powiedzieli, klasy kreatywnej (aktor&oacute;w, architekt&oacute;w, artyst&oacute;w, ale zapewne też i&nbsp;politycznych notabli, kt&oacute;rych żony zajmowały się urządzaniem domu). Sam redaktor naczelny &bdquo;Ty i&nbsp;Ja&rdquo;, czyli Roman Juryś, miał świetne partyjne koneksje &ndash; zanim stał się &bdquo;naczelnym rewizjonistą&rdquo;, pracował dla &bdquo;Trybuny Ludu&rdquo;...</p>\\n<p>Ale związek ze wsp&oacute;łczesnością ma jeszcze jedną stronę: dzięki tym przedrukom łatwiej było potem zachodnim pismom wkroczyć na rynek III RP.</p>\\n<p><b>AM</b>: To chyba trafna intuicja. R&oacute;wnie ciekawa jest kwestia powstałego w&oacute;wczas i&nbsp;do dziś dnia pokutującego podziału sztuka &ndash; komercja (wbrew temu, co Katarzyna Bojarska powiedziała o&nbsp;&bdquo;kulturze wizualnej&rdquo;, kt&oacute;ra funkcjonuje raczej w&nbsp;dyskursie akademickim, kulturoznawczym). Właśnie w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;, ale także w&nbsp;magazynie &bdquo;Polska&rdquo; i&nbsp;w&nbsp;innych magazynach eksportowych, wielu artyst&oacute;w miało tzw. fuchy, zdjęcia czy prace traktowane przez tych wybitnych tw&oacute;rc&oacute;w jako dobrze płatne zlecenia komercyjne. Dla nas często one są dziś najciekawsze, choć z&nbsp;ich punktu widzenia mogą być nieistotne wobec tworzonej przez nich r&oacute;wnolegle sztuki. Oni (nie tylko fotografowie, jak Rolke, Kossakowski czy Dłubak, ale r&oacute;wnież artyści, jak Edward Krasiński czy nawet wspomniany Roman Cieślewicz) tego nie traktowali w&nbsp;kategoriach &bdquo;sztuki&rdquo; &ndash; wręcz się od tej działalności odżegnywali. Wsp&oacute;łcześnie mamy do czynienia z&nbsp;czytaniem kultury wizualnej PRL, kt&oacute;re znosi ten podział, akceptowany przez samych autor&oacute;w prac. Jednocześnie trudno jest dotrzeć do prac komercyjnych, bo część z&nbsp;nich po prostu została wyrzucona po użyciu na śmietnik, uznana za niezbyt wartościowe wyrobnictwo.</p>\\n<p>Przychodzi mi na myśl jeszcze jeden, ciekawy chyba, wątek, kt&oacute;ry porusza wystawa Tomka. To nie jest pierwsza prezentacja &bdquo;ożywiająca archiwa&rdquo; &ndash; mamy tu zatem do czynienia z&nbsp;grą z&nbsp;poprzednikami, kt&oacute;rych prace były prezentowane w&nbsp;Fundacji Archeologia Fotografii w&nbsp;cyklu <i>Żywe archiwa</i>, ale także z&nbsp;artystami niezwiązanymi z&nbsp;Fundacją, jak Paulina Ołowska, kt&oacute;rą fascynowały rzeczy, o&nbsp;kt&oacute;rych tu m&oacute;wimy, czemu dała wyraz w&nbsp;pracach malarskich, kolażach i&nbsp;wystawie &bdquo;Ameryka&rdquo;. Te wystawy organizowane były r&oacute;wnież na dawnym &bdquo;Zachodzie&rdquo;, co wydaje mi się szczeg&oacute;lnie perwersyjne. Warto przypomnieć: &bdquo;Ameryka&rdquo; było to pismo wydawane przez ambasadę Stan&oacute;w Zjednoczonych, propagujące amerykański styl życia w&nbsp;PRL, co wydaje się kompletnym nonsensem, ale r&oacute;wnocześnie jest totalnym nonsensem z&nbsp;punktu widzenia Ameryki lat 60. To, co pokazywane w&nbsp;tym piśmie, było tak kuriozalne i&nbsp;dziwaczne, że kiedy oglądają to osoby pamiętające &oacute;wczesne USA, doznają szoku poznawczego. Mamy tu do czynienia z&nbsp;całą serią pomyłek poznawczych. Magazyn &bdquo;Polska&rdquo; w&nbsp;wersji radzieckiej jest czymś innym niż w&nbsp;wersji anglojęzycznej i&nbsp;innych wersjach językowych &ndash; zawsze jednak promuje Polskę, kt&oacute;rej nie ma. &bdquo;Ameryka&rdquo; promuje Amerykę, kt&oacute;rej nie ma. A&nbsp;w&nbsp;tym wszystkim jest jeszcze &bdquo;Ty i&nbsp;Ja&rdquo;, kt&oacute;re gdzieś szuka swego miejsca pomiędzy, pr&oacute;bując dać czytelnikom, kt&oacute;rzy nie są żadnymi Perekowskimi konsumentami, namiastkę&hellip; &ndash; właściwie czego? Wystawy te mają zatem nie tylko sens osobisty czy wnętrzarski, ale &ndash; jak wspomniał Tomek &ndash; r&oacute;wnież krytyczny. Ten potencjał być może lepiej widać, kiedy pokazuje się tego typu ekspozycje za granicą, ponieważ w&nbsp;Polsce zbyt łatwo o&nbsp;tkliwą nostalgię za &bdquo;małą stabilizacją&rdquo; oraz za młodością naszych rodzic&oacute;w i&nbsp;dziadk&oacute;w.</p>\\n<p>Podejmując wątek krytyczny, chciałbym otworzyć pole do dyskusji dotyczącej traktowania archiw&oacute;w. Miałem nadzieję, że będzie tutaj Andrzej Leśniak, autor bardzo ciekawego artykułu <i>Gorączka archiwum w&nbsp;sztuce wsp&oacute;łczesnej. Symptomy choroby i&nbsp;propozycja terapii</i><sup><a href=\\\"http://pismowidok.org/index.php/one/article/view/24/12#sdfootnote6sym\\\" name=\\\"sdfootnote6anc\\\">6</a></sup>, na temat estetyzacji archiw&oacute;w &ndash; formy, kt&oacute;ra staje się konwencją. To jest moim zdaniem uzasadniona diagnoza &bdquo;choroby&rdquo;. Wydaje mi się, że nastał dobry moment, by przemyśleć ten problem już na chłodno, bez gorączkowych ekscytacji. Wiemy, że możemy dość skutecznie &ndash; &bdquo;efektywnie i&nbsp;efektownie&rdquo;, jak pisze Leśniak &ndash; ożywiać archiwa, ale niekoniecznie nas to prowadzi &ndash; i&nbsp;niekoniecznie musi prowadzić &ndash; w&nbsp;stronę refleksji krytycznej. Warto tę obawę rozważyć w&nbsp;kontekście przyszłych prac Fundacji.</p>\\n<p>Podam jeszcze przykład osoby, kt&oacute;ra eksploatuje estetykę PRL-owskich pism <i>lifestyle&rsquo;owych.</i> Myślę o&nbsp;Sławomirze Elsnerze, kt&oacute;ry chyba z&nbsp;racji rodzinnych korzeni bardzo lubi &bdquo;Panoramę&rdquo; i&nbsp;inne regionalne magazyny śląskie z&nbsp;tamtych lat. Elsner często w&nbsp;swojej sztuce, hiperrealistycznym malarstwie, rysunku, fotografii, posługuje się wycinkami prasowymi, kt&oacute;re przetwarza. Element krytyczny &ndash; kt&oacute;ry u&nbsp;Tomka Szerszenia pojawia się za sprawą Pereca, choć jest on słabo wyczuwalny, zdominowany przez fascynację &ndash; w&nbsp;og&oacute;le się tam nie pojawia, nawet w&nbsp;warstwie komentarza odautorskiego. W&nbsp;tym sensie &bdquo;krytyczny potencjał&rdquo; nie musi być uzasadnieniem dla tego typu prac i&nbsp;wystaw. Mam wrażenie, że Elsner, Ołowska, ale także i&nbsp;Tomek Szerszeń, nie są zainteresowani krytyką tego tematu i&nbsp;estetyki, lecz są nimi autentycznie zafascynowani.</p>\\n<p><b>KCz</b>: Interesuje mnie krytyczny wydźwięk samego nagrania. Słuchając go, miałam wrażenie dużego kontrastu między kultem nowoczesności a&nbsp;tym nagromadzeniem rzeczy: ta wyliczanka trąci myszką &ndash; tu jest kolejny rozdźwięk&hellip;</p>\\n<p><b>KL</b>: Zgadzam się, że krytyka Andrzeja Leśniaka jest trafiona. Oczywiście rozumiem też, że denerwująca jest sytuacja, w&nbsp;kt&oacute;rej pojawia się zjawisko dość powszechne. To jednak z&nbsp;czegoś wynika, to nie jest tylko kwestia mody, że bardzo wielu artyst&oacute;w odnosi się do historii, do materiał&oacute;w mniej lub bardziej archiwalnych bez ortodoksyjnego pojmowania archiwum. Jedni robią to lepiej, drudzy gorzej, ale to znak naszych czas&oacute;w. Żyjemy w&nbsp;takim momencie, w&nbsp;kt&oacute;rym dla wielu os&oacute;b historia jest ważna.</p>\\n<p><b>JJ</b>: W&nbsp;teatrze jest podobnie...</p>\\n<p><b>KL</b>: Tę trzecią falę &bdquo;archiwalnej gorączki&rdquo;, o&nbsp;kt&oacute;rej m&oacute;wimy od jakiegoś czasu, możemy r&oacute;żnie oceniać, ale ona musi wybrzmieć. Tym bardziej ciekawa w&nbsp;tym kontekście jest interdyscyplinarność, to przemieszanie, o&nbsp;kt&oacute;rym była już mowa. Było to bardzo wyraźne podczas zeszłorocznej sesji <i>Archiwum jako projekt</i>, podobnie zresztą jak na sesji z&nbsp;2009 roku, <i>Archiwalna gorączka. Archiwa wsp&oacute;łczesnej historii i&nbsp;sztuki w&nbsp;Polsce po 1989 roku, </i>kt&oacute;rą zrobiłyśmy z&nbsp;Luizą Nader. Pr&oacute;ba przemieszania r&oacute;żnych perspektyw, pr&oacute;ba wciągnięcia trochę kostycznych archiwist&oacute;w w&nbsp;interakcję z&nbsp;artystami i&nbsp;szeroko pojmowaną humanistyką, wzbogaca spos&oacute;b myślenia o&nbsp;archiwach i&nbsp;ich dzisiejszym funkcjonowaniu, czyli wspomaga odczytywanie historii. To rodzaj eksperymentu, czegoś &bdquo;w&nbsp;ruchu&rdquo;. Być może celem &bdquo;trzeciej fali&rdquo; nie jest krytyka, tylko właśnie pobudzenie do ruchu. Tak jest w&nbsp;przypadku cyklu <i>Żywe archiwa</i>, do kt&oacute;rego ja sama, w&nbsp;drugim roku jego trwania, jestem dość krytycznie nastawiona (planujemy w&nbsp;przyszłym roku już zakończenie go już w&nbsp;nieco zmienionej formie). W&nbsp;tym sensie być może <i>Żywe archiwa</i> powinny się nazywać <i>Archiwa w&nbsp;ruchu</i>&hellip; Zaproszenie artysty do pracy nad archiwami ma sprowokować dyskusję, stworzyć możliwość refleksji i&nbsp;spojrzenia na temat w&nbsp;inny spos&oacute;b &ndash; niekoniecznie historyczny, ale też nie na siłę krytyczny. Nie mam wrażenia, że praca Tomka jest krytyczna, ale nie wiem, czy jest to potrzebne. Te kolaże nam się podobają, bo są estetyczne i&nbsp;niech tak będzie &ndash; miejmy trochę przyjemności!</p>\\n<p><b>TS</b>: Broniłbym jednak wymiaru krytycznego. Przede wszystkim w&nbsp;kontekście wybranych przeze mnie wypis&oacute;w, kt&oacute;re są &ndash; moim zdaniem &ndash; miażdżące. W&nbsp;pozostałej części wystawy rzeczywiście możemy m&oacute;wić o&nbsp;pewnej oscylacji między fascynacją a&nbsp;intencją krytyczną. Ta nieokreśloność ma, moim zdaniem, swe dobre strony.</p>\\n<p><b>KB</b>: Nie ma krytyki bez fascynacji: by coś żywo skrytykować, trzeba dać się temu uwieść. Pomyślmy na chwilę o&nbsp;książce Pereca. <i>Rzeczy </i>są w&nbsp;istocie autosatyrą, to portret pokolenia &ndash; ale i&nbsp;autoportret. Dużo w&nbsp;tej narracji złośliwości, satyra bywa niekiedy bardzo ostra, ale jest tam też pewna, powiedziałabym, czułość. Książkę tę, obok <i>Blanche ou l\'oubli </i>Louisa Aragona, uważa się za wariację na temat <i>Szkoły uczuć </i>Gustava Flauberta (ze szczeg&oacute;lnym uwzględnieniem wątku iluzji).</p>\\n<p><b>KL</b>: Chciałabym odnieść się do &bdquo;przechwycenia&rdquo; i&nbsp;namiastkowości, kt&oacute;ra się z&nbsp;tym łączy. Rozumiemy wszyscy, że czasopisma nie są archiwami, ale jest jedna kwestia, kt&oacute;ra wydaje mi się bardzo istotna. Można je traktować jako zbi&oacute;r &bdquo;dokument&oacute;w&rdquo;, kt&oacute;re same w&nbsp;sobie są obiektem badawczym, jednocześnie jednak coś o&nbsp;tej rzeczywistości m&oacute;wią. Są oczywiście bardzo namiastkowe. Pamiętajmy jednak, że archiwa profesjonalne, państwowe, r&oacute;wnież są nieprawdopodobnie namiastkowe. Z&nbsp;założenia są holistyczne, jednak ich użytkownik nie jest w&nbsp;stanie dotrzeć do całościowej wiedzy na temat wybranego fragmentu przeszłości. Paradoksalnie, czasopismo, kt&oacute;re jest pewnym wyborem &ndash; uwarunkowanym przez r&oacute;żne kwestie, wyrywkowym, nier&oacute;wnym &ndash; może nam więcej powiedzieć o&nbsp;przeszłości niż archiwum z&nbsp;całą swą instytucjonalną strukturą. W&nbsp;Fundacji tworzymy archiwa na podstawie spuścizn po fotografach. Z&nbsp;przerażeniem zorientowałam się, że w&nbsp;tym, co można zobaczyć w&nbsp;naszej bazie danych &ndash; kt&oacute;ra ma być właśnie całościowa, dokładna, metodologiczna &ndash; użytkownik zewnętrzny może się kompletnie pogubić. Informacja, kt&oacute;rą uzyska, nijak się ma do rzeczywistości &ndash; nie jest w&nbsp;stanie na tej podstawie odtworzyć odpowiedniego porządku rzeczy, bo wszystkie elementy są w&nbsp;takim archiwum r&oacute;wnoważne, a&nbsp;w&nbsp;rzeczywistości nigdy tak nie jest.</p>\\n<p><b>AM</b>: To jest temat, kt&oacute;ry Karolina Lewandowska porusza też w&nbsp;swojej pracy doktorskiej. Wielokrotnie rozmawialiśmy o&nbsp;tym na seminariach, jak można czytać z&nbsp;bazy danych tak, by nie otrzymać skrzywionego czy też zakłamanego obrazu rzeczywistości. Skądinąd &ndash; np.&nbsp;z&nbsp;rozm&oacute;w z&nbsp;Dłubakiem &ndash; znamy przecież praktykę codzienną redaktora gazety w&nbsp;realiach PRL. Dobrze wiedział, że pewne rzeczy, tematy i&nbsp;obrazy musiały wypaść z&nbsp;magazynu, po prostu nie mogły publicznie zaistnieć. W&nbsp;magazynie &bdquo;Press&rdquo;<sup><a href=\\\"http://pismowidok.org/index.php/one/article/view/24/12#sdfootnote7sym\\\" name=\\\"sdfootnote7anc\\\">7</a></sup> jest wstrząsający artykuł o&nbsp;tym, jak ta spuścizna r&oacute;żnych redakcji (czyli to &bdquo;prawdziwe&rdquo;, materialne archiwum) jest traktowana. Dotyczy to nawet największych PRL-owskich gazet, jak &bdquo;Trybuna Ludu&rdquo;, &bdquo;Życie Warszawy&rdquo; czy &bdquo;Exspress Wieczorny&rdquo;. Ich archiwa gdzieś przepadły lub są w&nbsp;stanie większego, lub mniejszego rozproszenia. Niekiedy magazynuje się je, ale w&nbsp;spos&oacute;b daleki od standard&oacute;w archiwalnych; czasem przekazywano je do odpowiednich instytucji, jednak leżą tam odłogiem. Dziennikarze i&nbsp;redaktorzy, kt&oacute;rzy pracowali w&nbsp;tych tytułach, zwracają uwagę na szczeg&oacute;lny porządek tych archiw&oacute;w z&nbsp;epoki przedkomputerowej. Zauważają, że przede wszystkim utracony został klucz, kt&oacute;ry pozwalał się po tych zbiorach poruszać. Pewien sp&oacute;jny system zamienił się &ndash; nawet jeśli została zachowana masa dokumentalna &ndash; w&nbsp;przypadkowy zbi&oacute;r. Nie wiadomo już dlaczego tak, a&nbsp;nie inaczej systematyzowano materiał, dlaczego właśnie te materiały, a&nbsp;nie inne archiwizowano i&nbsp;czemu to służyło. Odszyfrowanie tego jest pracą dużo bardziej żmudną niż ratowanie wycink&oacute;w. Być może ktoś podejmie się tego w&nbsp;przyszłości. My jesteśmy dziś w&nbsp;innym punkcie. W&nbsp;tym sensie nie cofam mojej krytyki wystawy i&nbsp;działań Fundacji, ale m&oacute;głbym spr&oacute;bować ją przeformułować: wiemy już jak &bdquo;ożywić&rdquo; na moment archiwa, ale nie wiemy, co z&nbsp;nimi zrobić po tym ożywieniu &ndash; przytłoczeni perspektywą systematycznej pracy z&nbsp;archiwami rozumianymi mniej metaforycznie, bardziej dosłownie.</p>\\n<p><b>MZ</b>: W&nbsp;tej perspektywie &bdquo;Ty i&nbsp;Ja&rdquo; może być czytane jako archiwum &bdquo;małej stabilizacji&rdquo;. To temat dla historyka idei, świetny dokument pr&oacute;by zainstalowania się w&nbsp;&bdquo;nierzeczywistości&rdquo;, w&nbsp;&bdquo;świecie bardziej atrakcyjnym&rdquo; lizanym przez szybę. Służyć może też oczywiście jako archiwum, dla kogoś piszącego o&nbsp;wt&oacute;rności, imitacyjności kultury polskiej: przy całej inwencji i&nbsp;wspaniałości ludzi, kt&oacute;rzy tam pracowali, jednak szli oni całkiem na skr&oacute;ty, bezkarnie i&nbsp;beztrosko używali materiału, aranżując go w&nbsp;taki spos&oacute;b, w&nbsp;jaki tylko mieli ochotę. Wrażenie imitacyjności czy też wt&oacute;rności jest z&nbsp;pewnością bardzo mocne, kiedy patrzymy na przykład na kolaże i&nbsp;plakaty Sawki, na brytyjskie prace pop-artowe i&nbsp;psychodeliczne, animacje z&nbsp;<i>Yellow Submarine</i>, okładki płyt, plakaty film&oacute;w Terry\'ego Gilliama, czyli Monty Pythona. Co nie znaczy, oczywiście, że &bdquo;Ty i&nbsp;Ja&rdquo; nie miało swojej wartości i&nbsp;znaczenia. Miało ogromne!</p>\\n<p><b>AM</b>: Podkreśliłbym też jednak tę przedziwną hybrydyczność tego pisma i&nbsp;podobnych do niego tytuł&oacute;w. Świetnie to wydobyła właśnie Paulina Ołowska, umiejętnie grając z&nbsp;ideą peryferyjności tej estetyki&hellip;</p>\\n<p><b>KCz</b>: To przywilej niebycia w&nbsp;centrum&hellip;</p>\\n<p><b>MSz</b>: Chciałabym podjąć inny wątek &ndash; ponieważ pierwszy kontekst teoretyczny, kt&oacute;ry przyszedł mi na myśl w&nbsp;kontekście wystawy Tomka Szerszenia, ale też samego pisma &bdquo;Ty i&nbsp;Ja&rdquo;, to badania nad kulturą materialną, w&nbsp;Polsce nazywane r&oacute;wnież antropologią rzeczy. Tę perspektywę sformułowano po raz pierwszy pod koniec lat 80.; czerpie ona oczywiście pełnymi garściami z&nbsp;Marksa i&nbsp;Benjamina. W&nbsp;1986 roku ukazał się tom <i>The Social Life of Things. Commodities in Cultural Perspective</i> pod redakcją Arjuna Appaduraia. Proponuje on zajęcie się życiem rzeczy &ndash; badaniem mechanizm&oacute;w produkcji, dystrybucji i&nbsp;konsumpcji określonych przedmiot&oacute;w, proces&oacute;w nadawania wartości rzeczom, ich fetyszyzowania, a&nbsp;także sposobu konstruowania tożsamości (społecznej, etnicznej, klasowej) za pośrednictwem przedmiot&oacute;w. To podejście stosuje dziś wielu badaczy. Ciekawym obrazem teoretycznym wydaje mi się propozycja amerykańskiego badacza Billa Browna, kt&oacute;ry w&nbsp;jednej ze swoich książek<sup><a href=\\\"http://pismowidok.org/index.php/one/article/view/24/12#sdfootnote8sym\\\" name=\\\"sdfootnote8anc\\\">8</a></sup> przywołuje rozpowszechniony w&nbsp;kulturze motyw dziecka rozkręcającego zabawkę w&nbsp;poszukiwaniu istoty rzeczy. Z&nbsp;perspektywy dorosłych, dzieci, kt&oacute;re rozkładają przedmioty na części i&nbsp;w&nbsp;nich grzebią, zachowują się irracjonalnie &ndash; racjonalny dorosły człowiek wie, że przedmiot służy czemuś określonemu, że jest raczej funkcjonalną &bdquo;powierzchnią&rdquo; niż czymś do rozgrzebania. Brown proponuje jednak, żeby p&oacute;jść za tą irracjonalnością, za tym dziecięcym gestem. Podpowiada serię pytań badawczych, kt&oacute;re można zadawać, zajmując się materialnością: źr&oacute;dłem jakich fantazji są przedmioty; jakie pragnienia w&nbsp;nas budzą; jakie są mechanizmy nadawania im wartości; dlaczego rozmawiamy ze swoimi przedmiotami; czy nasza skłonność do nadawania im sprawczości wynika z&nbsp;chęci zrzucenia odpowiedzialności na świat materialny...</p>\\n<p>Ta perspektywa wydaje mi się ciekawa, ale &ndash; jak wynika z&nbsp;tej dyskusji &ndash; jest ona niewystarczająca, na przykład do badania pisma &bdquo;Ty i&nbsp;Ja&rdquo;. Tutaj można zatem uruchomić perspektywę kultury wizualnej: w&nbsp;pewnym sensie przedmioty w&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;, ale też w&nbsp;świecie czytelnik&oacute;w &bdquo;Ty i&nbsp;Ja&rdquo;, funkcjonują jedynie jako obrazy. Można oczywiście dyskutować o&nbsp;tym, w&nbsp;jakim stopniu te towary były dostępne, ale wydaje się, że najbardziej luksusowe z&nbsp;nich &ndash; te, o&nbsp;kt&oacute;rych pisze Perec w&nbsp;<i>Rzeczach</i>, te, kt&oacute;re Tomek reprodukuje na swoich kolażach &ndash; były zasadniczo niedostępne i&nbsp;funkcjonowały jak niemal idealne fetysze. Ciekawi mnie, czy te obrazy prowokowały pragnienia konsumpcyjne, czy raczej wypełniały pewną istniejącą pustkę. Jakiego rodzaju to są pragnienia &ndash; czy dotyczyły tych konkretnych towar&oacute;w, czy raczej było to pragnienie samej konsumpcji?</p>\\n<p>Przygotowuję teraz rozdział doktoratu poświęcony transformacji, a&nbsp;konkretnie nowym wzorom wizualizowania dostatku i&nbsp;luksusu w&nbsp;Polsce lat 90. W&nbsp;tym sensie cenna była dla mnie ta wystawa i&nbsp;wywiad Klary Czerniewskiej z&nbsp;Teresą Kuczyńską: wydaje mi się, że badając &bdquo;Ty i&nbsp;Ja&rdquo;, ale też bardziej og&oacute;lnie &ndash; obieg obraz&oacute;w przedstawiających towary i&nbsp;r&oacute;żne modele konsumpcji &ndash; możemy pokusić się o&nbsp;napisanie swoistej &bdquo;historii pragnień konsumpcyjnych&rdquo;. To nie jest tak, że w&nbsp;latach 90. rzeczy, kt&oacute;re zaczynają napływać bardzo intensywnie, trafiają w&nbsp;pr&oacute;żnię: one trafiają na już przygotowany grunt. Przygotowały go r&oacute;wnież inne pisma &ndash; w&nbsp;tym sensie warto zastanowić się nad pytaniem Justyny Jaworskiej o&nbsp;to, kto te pisma czytał, w&nbsp;jakim stopniu były one dostępne. Przygotowały go też obrazy takie jak <i>Dynastia</i>, emitowana przez TVP od 1990 roku, pewnie dostępna wcześniej w&nbsp;obiegu VHS, ale też telenowele latynoamerykańskie... Te przedstawienia kształtują pewne wyobrażenia o&nbsp;tym, jak powinny urzeczywistniać się takie abstrakcyjne pojęcia jak luksus, dostatek itd.</p>\\n<p><b>KB:</b> Pozostaje niezwykle istotne pytanie: czy m&oacute;wimy tu o&nbsp;pragnieniu rzeczy czy o&nbsp;pragnieniu obraz&oacute;w rzeczy? Czy dzisiaj kupujemy &bdquo;kolorowe pisma&rdquo; po to, żeby je oglądać, bo samo oglądanie to już niejako branie w&nbsp;posiadanie? Co oznacza decyzja, by te &bdquo;piękne&rdquo; bardziej niż użytkowe przedmioty umieścić w&nbsp;naszym otoczeniu? Tu niesłychanie istotna wydaje się relacja między użytecznością przedmiot&oacute;w a&nbsp;ich rolą jako obiekt&oacute;w wizualnych czy estetycznych.</p>\\n<p>Na koniec chciałabym powr&oacute;cić do kilku wątk&oacute;w, kt&oacute;re pojawiły się w&nbsp;dyskusji i&nbsp;połączyć je. Chodzi mi przede wszystkim o&nbsp;dwie kwestie: kiedy to, co jest elementem kultury wizualnej, przenika do sztuki i&nbsp;na jakich prawach, a&nbsp;także o&nbsp;to, za pomocą jakich narzędzi możemy opisywać powszechną dziś praktykę artystyczną polegającą na sięganiu do dzieł artyst&oacute;w z&nbsp;przeszłości i&nbsp;do zasob&oacute;w kultury wizualnej w&nbsp;og&oacute;le &ndash; jakie są warunki takich praktyk, ich wymiar etyczny, polityczny, a&nbsp;także z&nbsp;jakimi innymi procesami kulturowymi można tę praktykę połączyć.</p>\\n<p><b>JJ</b>: Nie traciłabym z&nbsp;widoku aspektu środowiskowego. Świetnym przykładem jest wspomniana rubryka z&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;, zatytułowana <i>Moje hobby to mieszkanie</i>, prezentująca mieszkania warszawskiej inteligencji, gł&oacute;wnie artyst&oacute;w z&nbsp;kręg&oacute;w towarzyskich autorki rubryki. Te mieszkania były do siebie zaskakująco podobne, przy pretensji do artystycznej &bdquo;atmosfery&rdquo; &ndash; dość jednak ubogie. Zastanawiałam się, czy oni nie wyczerpią możliwości środowiska, czy starczy im mieszkań do pokazania... Ten swoisty solipsyzm &bdquo;Ty i&nbsp;Ja&rdquo; staje się tu widoczny.</p>\\n<p><b>MSz</b>: Projekt Tomka wydał mi się o&nbsp;tyle krytyczny, o&nbsp;ile pokazuje pewną fałszywą opozycję między Wschodem i&nbsp;Zachodem &ndash; zestawiając Pereca z&nbsp;&bdquo;Ty i&nbsp;Ja&rdquo;, flirtując z&nbsp;tym zestawieniem, wydobywa coś istotnego, pewne og&oacute;lne mechanizmy funkcjonowania produkt&oacute;w jako fetyszy.</p>\\n<p><b>KB</b>: Jeśli rzeczywiście jest tak, jak sugerował Marek Zaleski, że &bdquo;Ty i&nbsp;Ja&rdquo; tworzyło taką sztuczną nad-rzeczywistość, świat niedostępny, to mamy w&nbsp;takim razie do czynienia z&nbsp;jeszcze silniejszym, &bdquo;doskonałym&rdquo; niejako pragnieniem &ndash; skierowanym w&nbsp;absolutną niemożność.</p>\\n<p><b>KCz</b>: Jeszcze taka uwaga: w&nbsp;pierwszych &bdquo;Ty i&nbsp;Ja&rdquo; była rubryka <i>Zr&oacute;b sobie sama</i> &ndash; pierwsze lekcje szycia, wykroje, dopiero p&oacute;źniej pojawiły się przedruki zagranicznych sesji modowych.</p>\\n<p><b>JJ</b>: Były też porady seksuologiczne &ndash; to miało pewien wymiar emancypacyjny.</p>\\n<p><b>MZ</b>: Ale dotyczyło to &bdquo;warszawki&rdquo;&hellip;</p>\\n<p><b>KB</b>: Nie poruszyliśmy zupełnie kwestii tego, jak dziś wygląda nasz stosunek do lat 60.: czy rzeczywiście jest on nostalgiczny? Warto pamiętać, że końc&oacute;wka tego okresu była naprawdę mroczna.</p>\\n<p><b>TS</b>: Zresztą po 1968 roku to pismo całkowicie siada.</p>\\n<p><b>KCz</b>: A&nbsp;może nam się wydaje, że ono siada, ponieważ jesteśmy pod wielkim wpływem atrakcyjności lat 60. i&nbsp;właściwej im estetyki? Tymczasem ona się kończy, ale zaczyna się coś nowego, r&oacute;wnie fascynującego.</p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('192','281','default',NULL,'','content_text','{\"richtext\":\"<h2>Cel i zakres tematyczny czasopisma</h2>\\n<p>&bdquo;Widok&rdquo; z pozoru brzmi neutralnie. Jest lub zjawia się przed oczami, gdziekolwiek się zwr&oacute;cą, niekiedy wymaga jedynie skupienia uwagi. W pierwszym znaczeniu definicji podanej w <em>Uniwersalnym słowniku języka polskiego</em> (2003, t. 4, s. 415) łączy się ze sobą &bdquo;widziana przestrzeń&rdquo; i &bdquo;krajobraz&rdquo;, w drugim &ndash; &bdquo;obraz, wygląd czyjś lub czegoś&rdquo; z &bdquo;widzeniem kogoś lub czegoś&rdquo;. Przywoływane są także użycia metaforyczne (&bdquo;mieć widoki na coś&rdquo;) lub wskazujące na celowe działania związane z widzeniem (&bdquo;wystawić coś na widok&rdquo;, &bdquo;punkt widokowy&rdquo;). Ten normatywny zapis ujawnia zatem splot charakterystyczny dla myślenia o praktykach wizualnych: złudzenie bezwiednego widzenia nakłada się na widzenie rozumiane jako aktywność, świadoma praktyka patrzenia; &bdquo;widok&rdquo; jako przestrzeń obejmowana wzrokiem, spotyka się z &bdquo;obrazem&rdquo; opisującym przestrzeń wyr&oacute;żnioną ramą i obarczoną &bdquo;r&oacute;żnicą ikoniczną&rdquo;, czyli naddatkiem znaczenia; <span style=\\\"font-family: Times New Roman,serif;\\\">&bdquo;</span>widok<span style=\\\"font-family: Times New Roman,serif;\\\">&rdquo;</span> jako niezdefiniowany dystans, dopełniany jest przez <span style=\\\"font-family: Times New Roman,serif;\\\">&bdquo;</span>widok<span style=\\\"font-family: Times New Roman,serif;\\\">&rdquo;</span>, kt&oacute;rego elementem sami możemy się stać; <span style=\\\"font-family: Times New Roman,serif;\\\">&bdquo;</span>widok<span style=\\\"font-family: Times New Roman,serif;\\\">&rdquo;</span> jako ustanawiane za pomocą wzroku miejsce skupienia w każdej chwili zmienić się może w przestrzeń błądzenia i nieostrości.</p>\\n<p>Tworząc pismo zatytułowane &bdquo;Widok&rdquo; chcemy zająć się właśnie tym splotem, jego rozwikływaniem, wyciąganiem z niego pojedynczych wątk&oacute;w i motyw&oacute;w, ale też dostrzeganiem całej jego złożoności. Chcemy podejmować refleksję jednocześnie nad tym, jak widzenie problematyzowane jest we wsp&oacute;łczesnej teorii i badaniach humanistycznych, jak i nad tym, jak aktualizowane jest w r&oacute;żnego rodzaju praktykach, zar&oacute;wno codziennych, jak i artystycznych. Wreszcie, pisząc o obrazach, pamiętamy, że ich sensy dopełniają lub podkreślają zwykle słowa, że słowa i obrazy przeglądają się w sobie, a także o tym, że literatura i słowo pisane nie tylko służą refleksji o widzeniu, ale same są jego ekspresją i zapisem, a kategoria spojrzenia jest podstawowa dla struktury także literackiej narracji.</p>\\n<p>Mamy za sobą studia w dziedzinie filologii polskiej, kulturoznawstwa, filozofii, historii sztuki, a także studia artystyczne. Jako przestrzeń uzgodnienia &ndash; czy raczej uzgadniania &ndash; stanowisk wskazujemy &bdquo;kulturę wizualną&rdquo;. Pojęcie to rozumiane jest przez nas po pierwsze w ujęciu antropologicznym, po drugie &ndash; takim, kt&oacute;re nie tyle uprzywilejowuje wzrok, ile wybiera perspektywę wizualności jako istotną i inspirującą. Nie ma bowiem, jak sądzimy, żadnego punktu, z kt&oacute;rego roztacza się panorama jakiejś całości kulturowej &ndash; widok zawsze wynika z patrzenia pod kątem.</p>\\n<p>Zesp&oacute;ł Redakcyjny</p>\\n<h2>Projekty / Źr&oacute;dła finansowania</h2>\\n<p>\\\"Widok\\\" realizuje swoje cele dzięki wsparciu następujących instytucji a także dzięki projektom badawczym realizowanym przez członk&oacute;w zespołu redakcyjnego:</p>\\n<h3>Instytucje</h3>\\n<ul>\\n<li>Rektor Uniwersytetu Warszawskiego i Dziekan Wydziału Polonistyki UW</li>\\n<li><a href=\\\"http://pismowidok.org/index.php/one/pages/view/CHC\\\" target=\\\"_self\\\">Centrum Humanistyki Cyfrowej Instytutu Badań Literackich PAN</a></li>\\n</ul>\\n<h3>Projekty badawcze</h3>\\n<ul>\\n<li><a href=\\\"http://pismowidok.org/index.php/one/pages/view/SJA\\\" target=\\\"_self\\\">Świat jako archiwum (NPRH, 2012-2014)</a></li>\\n<li><a href=\\\"http://pismowidok.org/index.php/one/pages/view/ZA1989\\\" target=\\\"_self\\\">Zwrot Afektywny po 1989 (NCN, 2012-2015)</a></li>\\n<li><a title=\\\"Kultura wizualna w Polsce\\\" href=\\\"http://pismowidok.org/index.php/one/pages/view/KWwP\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Kultura wizualna w Polsce: języki, pojęcia, metaobrazy (NCN, 2013&ndash;2016)</a></li>\\n</ul>\\n<h2>Zasady etyczne</h2>\\n<p>Redakcja dokłada wszelkich starań, aby proces wydawniczy przebiegał zgodnie z najwyższymi standardami etycznymi. W przypadku podejrzenia lub ujawnienia nieetycznego zachowania &ndash; jak między innymi plagiat, fałszowanie danych czy ponowna publikacja wydanej uprzednio pracy bądź jej części &ndash; Redakcja zwr&oacute;ci się z prośbą o wyjaśnienia i podejmie odpowiednie kroki przewidziane w takich sytuacjach, co może oznaczać odrzucenie artykułu, odmowę publikacji innych tekst&oacute;w autora, zawiadomienie jednostki naukowej autora/autorki.</p>\\n<p>Za naruszenie etyki Redakcja uznaje także przypadki <em>ghostwriting</em> i <em>guest authorship</em>, a więc sytuacje, kiedy osoba będąca autorem/autorką lub wsp&oacute;łautorem/wsp&oacute;łautorką publikacji nie została w niej uwzględniona lub kiedy jako autora/autorkę wymieniono osobę nie mającą rzeczywistego wkładu w jej powstanie.</p>\\n<p>Recenzenci artykuł&oacute;w publikowanych w &bdquo;Widoku&rdquo; powinni niezwłocznie powiadomić Redakcję w przypadku zaistnienia konfliktu interes&oacute;w.</p>\\n<h2>Działy</h2>\\n<h3>Perspektywy</h3>\\n<p>Dział zawiera dyskusję redakcji i zaproszonych gości i/lub wywiady albo też komentarze wok&oacute;ł tematu numeru.</p>\\n<table class=\\\"plain\\\" width=\\\"100%\\\">\\n<tbody>\\n<tr>\\n<td width=\\\"33%\\\">&nbsp;</td>\\n<td width=\\\"33%\\\">Zindeksowane</td>\\n<td width=\\\"34%\\\">&nbsp;</td>\\n</tr>\\n</tbody>\\n</table>\\n<h3>Zbliżenie</h3>\\n<p>Dział zawiera artykuły związane z tematem numeru</p>\\n<table class=\\\"plain\\\" width=\\\"100%\\\">\\n<tbody>\\n<tr>\\n<td width=\\\"33%\\\">Przesyłanie tekst&oacute;w aktywne</td>\\n<td width=\\\"33%\\\">Zindeksowane</td>\\n<td width=\\\"34%\\\">Recenzowane</td>\\n</tr>\\n</tbody>\\n</table>\\n<h3>Panorama</h3>\\n<p>Dział zawiera artykuły niekoniecznie związane z tematem numeru. Jeśli akurat nie publikujemy numeru tematycznego, \\\"Panorama\\\" staje się działem gł&oacute;wnym.</p>\\n<table class=\\\"plain\\\" width=\\\"100%\\\">\\n<tbody>\\n<tr>\\n<td width=\\\"33%\\\">Przesyłanie tekst&oacute;w aktywne</td>\\n<td width=\\\"33%\\\">Zindeksowane</td>\\n<td width=\\\"34%\\\">Recenzowane</td>\\n</tr>\\n</tbody>\\n</table>\\n<h3>Punkt widokowy</h3>\\n<p>Dział zawiera materiały audiowizualne, przeważnie prezentacje projekt&oacute;w artystycznych, kt&oacute;re wydają się redakcji interesujące w kontekście danego numeru.</p>\\n<table class=\\\"plain\\\" width=\\\"100%\\\">\\n<tbody>\\n<tr>\\n<td width=\\\"33%\\\">&nbsp;</td>\\n<td width=\\\"33%\\\">Zindeksowane</td>\\n<td width=\\\"34%\\\">&nbsp;</td>\\n</tr>\\n</tbody>\\n</table>\\n<h3>Migawki</h3>\\n<p>Dział prezentujący recenzje i om&oacute;wienia książek, wystaw, spektakli etc.</p>\\n<table class=\\\"plain\\\" width=\\\"100%\\\">\\n<tbody>\\n<tr>\\n<td width=\\\"33%\\\">Przesyłanie tekst&oacute;w aktywne</td>\\n<td width=\\\"33%\\\">Zindeksowane</td>\\n<td width=\\\"34%\\\">&nbsp;</td>\\n</tr>\\n</tbody>\\n</table>\\n<h4>Proces recenzji</h4>\\n<p>Recenzowane są artykuły w działach &bdquo;Zbliżenie&rdquo; i &bdquo;Panorama&rdquo;, będących gł&oacute;wnymi działami pisma (od 30 do 50% liczby artykuł&oacute;w, ok. 50% objętości pisma). Każdy artykuł oceniany jest przez dw&oacute;jkę recenzent&oacute;w. System informatyczny, na kt&oacute;rym opiera się cały proces redakcji pisma, zarządzania nim i publikacji, zapewnia pełną anonimowość recenzentom i autorom recenzowanych artykuł&oacute;w. Wśr&oacute;d <a href=\\\"http://pismowidok.org/index.php/one/about/history\\\">recenzent&oacute;w</a> są polscy i zagraniczni uczeni, wybitni specjaliści w r&oacute;żnych domenach badania kultury wizualnej. Gwarantem merytorycznej jakości kwartalnika jest także <a href=\\\"http://pismowidok.org/index.php/one/about/index\\\">Rada Naukowa</a>, do kt&oacute;rej przyjęli zaproszenie znakomici badacze z Polski i ze świata.</p>\\n<p>Artykuły zgłaszane do publikacji powinny być zgodne z zakresem tematycznym pisma podanym powyżej, a także spełniać&nbsp;<a href=\\\"http://pismowidok.org/index.php/one/about/submissions\\\">wymagania formalne</a>. Kryteria oceny artykułu są sformułowane w formularzu recenzyjnym o następującej strukturze:</p>\\n<ul>\\n<li>Czy tekst wnosi nową jakość do badań nad opisywanym zjawiskiem?\\n<ul>\\n<li>pod względem metodologicznym</li>\\n<li>W wyborze pola badwczego</li>\\n<li>w sposobie prezentacji problemu</li>\\n<li>w proponowanej interpretacji</li>\\n<li>pod względem metodologicznym</li>\\n<li>z innych względ&oacute;w (proszę wymienić poniżej)</li>\\n</ul>\\n</li>\\n<li>Jakie są walory tekstu?</li>\\n<li>Jakie są wady tekstu?</li>\\n<li>Czy tekst jest dobrze skonstruowany? Czy jest poprawny pod względem językowym i stylistycznym?</li>\\n<li>Czy artykuł dobrze wykorzystuje literaturę przedmiotu?</li>\\n<li>Czy tekst m&oacute;głby zostać skr&oacute;cony bez szkody dla wywodu? Jeśli tak, to w kt&oacute;rych partiach?</li>\\n<li>Czy materiał ilustracyjny (jeśli takowy występuje) jest trafnie dobrany i wykorzystany?</li>\\n<li>Dalsze uwagi</li>\\n</ul>\\n<p>Redakcja zastrzega sobie prawo odrzucenia artykuł&oacute;w bez przekazania ich do recenzji (<em>desk reject</em>).</p>\\n<h2>Polityka Open Access</h2>\\n<p>Pismo to udostępnia swoją zawartość na zasadach wolnego dostępu, wychodząc z założenia, że upowszechnianie wynik&oacute;w badań naukowych szerokiej publiczności umożliwia i ułatwia nieskrępowaną i nieograniczoną wymianę wiedzy.</p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('193','282','default',NULL,'','content_profiles','{\"name\":\"Redakcja\",\"item\":[{\"image\":\"assets/images/profile-redakcja/profileImage-6.jpg\",\"name\":\"dr Katarzyna Bojarska\",\"url\":\"http://ibl.waw.pl/pl/o-instytucie/pracownicy/bojarska-katarzyna\",\"university\":\"Instytut Badań Literackich, Polska Akademia Nauk\",\"content\":\"<p>Ur. 1981. Adiunkt w Instytucie Badań Literackich PAN, w Zespole do Badań nad Literaturą i Kulturą P&oacute;źnej Nowoczesności, członkini Uniwersytetu Muri im. Franza Kafki. Autorka tekst&oacute;w i przekład&oacute;w zainteresowana relacjami sztuki, literatury, historii i psychoanalizy, tłumaczka m.in. książki&nbsp;Michaela Rothberga <em>Pamięć wielokierunkowa. Pamiętanie Zagłady w epoce dekolonizacji</em>. Autorka książki <em>Wydarzenia po Wydarzeniu: Białoszewski &ndash; Richter &ndash; Spiegelman</em> (Warszawa 2012). W latach 2011-2014 w zespole redakcyjnym \\\"Tekst&oacute;w Drugich\\\"</p>\"},{\"image\":\"assets/images/profile-redakcja/profileImage-7.jpg\",\"name\":\"dr hab. Iwona Kurz\",\"url\":\"http://uw.academia.edu/IwonaKurz\",\"university\":\"Instytut Kultury Polskiej, Uniwersytet Warszawski\",\"content\":\"<p>Ur. 1972. Wykładowczyni w Instytucie Kultury Polskiej na Uniwersytecie Warszawskim. Zajmuje się historią nowoczesnej kultury polskiej w perspektywie obrazu, antropologią kultury wizualnej oraz problematyką ciała i gender. Autorka książki <em>Twarze w tłumie</em> (2005, Nominacja do Nagrody Nike, Nagroda im. Michałka za najlepszą książkę filmoznawczą), wsp&oacute;łautorka książek <em>Obyczaje polskie. Wiek XX w kr&oacute;tkich hasłach </em>(2008), <em>Ślady Holokaustu w imaginarium kultury polskiej</em> (2017), <em>Ekspozycje nowoczesności.</em> <em>Wystawy a doświadczanie proces&oacute;w modernizacyjnych w Polsce 1821&ndash;1929 </em>(2017) oraz <em>Kultura wizualna w Polsce</em> (2017, dwa tomy), redaktorka tomu<em> Film i historia </em>(2008), wsp&oacute;łredaktorka <em>Antropologii ciała </em>(2008) oraz <em>Antropologii kultury wizualnej </em>(2012). Więcej: http://ikp.uw.edu.pl/dr-hab-iwona-kurz/</p>\"},{\"image\":\"assets/images/profile-redakcja/profileImage-10.jpg\",\"name\":\"dr Paweł Mościcki\",\"url\":\"http://ibl.waw.pl/pl/o-instytucie/pracownicy/moscicki-pawel\",\"university\":\"Instytut Badań Literackich, Polska Akademia Nauk\",\"content\":\"<p>Ur. 1981. Filozof, eseista i tłumacz, adiunkt w Instytucie Badań Literackich PAN, członek Uniwersytetu Muri im. Franza Kafki. Interesuje się wsp&oacute;łczesną filozofią, r&oacute;żnymi dziedzinami sztuki (literatura, teatr, kino, sztuki wizualne) a także krytycznymi dyskursami politycznymi. Redaktor tomu <em>Maurice Blanchot. Literatura ekstremalna</em> (2007) oraz autor książek: <em>Polityka teatru. Eseje o sztuce angażującej</em> (2008), <em>Godard. Pasaże</em> (2010) i <em>Idea potencjalności. Możliwość filozofii według Giorgio Agambena</em> (2013), <em>My też mamy już przeszłość. Guy Debord i historia jako pole bitwy</em> (2015), <em>Foto-konstelacje. Wok&oacute;ł Marka Piaseckiego </em>(2016), <em>Migawki z tradycji uciśnionych </em>(2017), <em>Chaplin. Przewidywanie teraźniejszości </em>(2017).</p>\"},{\"image\":\"assets/images/profile-redakcja/profileImage-5.jpg\",\"name\":\"dr Krzysztof Pijarski\",\"url\":\"http://pijarski.art.pl/\",\"university\":\"Państwowa Wyższa Szkoła Filmowa, Telewizyjna i Teatralna im. Leona Schillera w Łodzi\",\"content\":\"<p>Ur. 1980. Historyk sztuki, artysta posługujący się medium fotografii, tłumacz. Adiunkt w ł&oacute;dzkiej Szkole Filmowej. Stypendysta Fulbrighta na Johns Hopkins University w Baltimore (2009-2010), Ministra Kultury i Dziedzictwa Narodowego oraz Shpilman Institute of Photography. Interesuje go sztuka wsp&oacute;łczesna, teoria i historia fotografii i afektywna oraz polityczna moc obraz&oacute;w. Jako artysta &ndash; zajmują go przede wszystkim losy obraz&oacute;w i obiekt&oacute;w w (po)nowoczesnym świecie &ndash; tworzy wizualne archeologie muze&oacute;w, archiw&oacute;w, krajobraz&oacute;w, przestrzeni miejskich i innych &bdquo;machin reprezentacji&rdquo;. Redaktor tomu <a><em>Archiwum jako projekt</em></a> (2011) oraz autor książki <em>(Po)Nowoczesne losy obraz&oacute;w. Allan Sekula / Thomas Struth</em> (Warszawa 2013). W roku 2010 nakładem Wydawnictwa Uniwersytetu Warszawskiego ukazała się antologia tekst&oacute;w Allana Sekuli w jego przekładzie. Publikował w &bdquo;Camera Austria&ldquo;, &bdquo;Tekstach Drugich&ldquo;, &bdquo;Kulturze Wsp&oacute;łczesnej&ldquo;, &bdquo;Obiegu&ldquo;. Uczestnik PLAT(T)FORM 2012 w Fotomuseum Winterthur. Jego projekt <em>Żywoty nieświętych</em> został zaprezentowany w C/O Berlin.</p>\"},{\"image\":\"assets/images/profile-redakcja/profileImage-14.jpg\",\"name\":\"dr Magda Szcześniak\",\"url\":\"http://uw.academia.edu/MagdaSzcze%C5%9Bniak\",\"university\":\"Instytut Kultury Polskiej UW\",\"content\":\"<p>Ur. 1985. W kwietniu 2015 roku w&nbsp;Instytucie Kultury Polskiej UW obroniła doktorat \\\"Wizualne konstruowanie tożsamości w polskiej przestrzeni publicznej po 1989 roku\\\". Publikowała m.in. w &bdquo;Dialogu&rdquo;, &bdquo;Kontekstach&rdquo;, &bdquo;Krytyce Politycznej&rdquo;, &bdquo;Kwartalniku Filmowym&rdquo;, &bdquo;Kulturze Wsp&oacute;łczesnej&rdquo;, &bdquo;Tekstach Drugich&rdquo; i na \\\"Dwutygodnik.com\\\". Stypendystka Fundacji Fulbrighta (2010/11, University of Rochester, Graduate Program in Visual and Cultural Studies), Narodowego Centrum Nauki (grant Preludium w latach 2013-2015 oraz Sonata w latach 2018-2021) oraz stypendium Ministerstwa Nauki i Szkolnictwa Wyższego dla wybitnych młodych naukowc&oacute;w 2017-2020. Laureatka Nagrody Naukowej \\\"Polityki\\\" 2017. Autorka książki <em>Normy widzialności. Tożsamość w czasach transformacji</em> (Fundacja Bęc Zmiana 2016). Interesuje się kulturą wizualną, teorią queer, polską transformacją ustrojową po 1989 roku, polityką tożsamościową, teoriami marksistowskimi.</p>\"},{\"image\":\"assets/images/profile-redakcja/profileImage-13.jpg\",\"name\":\"dr Łukasz Zaremba\",\"url\":\"http://uw.academia.edu/%C5%81ukaszZaremba\",\"university\":\"Instytut Kultury Polskiej UW\",\"content\":\"<p>Ur. 1983. Badacz wizualności, tłumacz. Wykładowca w Instytucie Kultury Polskiej Uniwersytetu Warszawskiego. Interesuje się teoriami kultury wizualnej i metodologią badań wizualnych. Publikował w &bdquo;Kontekstach&rdquo;, &bdquo;Kulturze Wsp&oacute;łczesnej&rdquo;, &bdquo;Invisible Culture\\\", &bdquo;Dialogu&rdquo;, &bdquo;Kulturze Popularnej&rdquo; i na &bdquo;Dwutygodnik.com&rdquo;. Laureat Stypendium FNP START 2012 i START 2013 i stypendium Ministerstwa Nauki i Szkolnictwa Wyższego dla wybitnych młodych naukowc&oacute;w 2016 - 2019. Wsp&oacute;łtłumacz książki Jonathana Crary&rsquo;ego <em>Zawieszenia percepcji</em> (2009), tłumacz książki W.J.T. Mitchella <em>Czego chcą obrazy?</em> (2013) i Nicholasa Mirzoeffa, <em>Jak zobaczyć świat</em>(2016) oraz&nbsp;wielu innych tekst&oacute;w z kultury wizualnej. Wsp&oacute;łredaktor podręcznika akademickiego <em>Antropologia kultury wizualnej </em>(2012). Zrealizował grant NCN Preludium &bdquo;Wsp&oacute;łczesne oblicza ikonoklazmu&rdquo;. Jego książka \\\"Obrazy wychodzą na ulice\\\" ukaże się wkr&oacute;tce nakładem wyd. Bęc Zmiana w serii wsp&oacute;łtworzonej z IKP UW.</p>\"},{\"image\":\"assets/images/profile-redakcja/profileImage-291.png\",\"name\":\"Agata Zborowska\",\"url\":\"https://uw.academia.edu/AgataZborowska\",\"university\":\"Instytut Kultury Polskiej UW\",\"content\":\"<p>Ur. 1986. Kulturoznawczyni, doktorantka w Zakładzie Filmu i Kultury Wizualnej w Instytucie Kultury Polskiej UW. Pisze rozprawę doktorską o życiu rzeczy w powojennej Polsce (1944&ndash;1949). Publikowała m.in. w &bdquo;Kontekstach&rdquo;, &bdquo;Kulturze Wsp&oacute;łczesnej&rdquo;, &bdquo;Kulturze Popularnej&rdquo;, &bdquo;Kwartalniku Filmowym&rdquo;, &bdquo;Czasie Kultury&rdquo;, &bdquo;Fashion Theory&rdquo;, &bdquo;Critical Studies in Fashion and Beauty&rdquo;. Realizuje indywidualne granty naukowe PRELUDIUM i ETIUDA Narodowego Centrum Nauki. Interesuje się teorią rzeczy, antropologią kultury wizualnej, teorią krytyczną, historią kultury polskiej XX wieku.</p>\"}]}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('194','282','default',NULL,'','content_profiles','{\"name\":\"Korekta\",\"item\":[{\"image\":\"assets/images/profile-korekta/profileImage-152.jpg\",\"name\":\"dr Katarzyna Bartoszyńska\",\"url\":\"http://www.bilkent.edu.tr/~cci/CCI/Dr._Katarzyna_Bartoszynska.html\",\"university\":\" Bilkent University \",\"content\":\"\"},{\"image\":\"assets/images/profile-korekta/profileImage-43.jpg\",\"name\":\"Daniel Malone\",\"url\":\"\",\"university\":\"\",\"content\":\"<p>Ur. 1970. Artysta, korektor / redaktor. Absolwent historii sztuki i sztuk plastycznych, Uniwersytet w Auckland, Nowa Zelandia.</p>\"},{\"image\":\"assets/images/profile-korekta/profileImage-16.jpg\",\"name\":\"Julia Odnous\",\"url\":\"\",\"university\":\"\",\"content\":\"<p>Ur. 1985. Redaktorka i korektorka, koordynatorka projekt&oacute;w. Absolwentka Instytutu Kultury Polskiej UW. Wsp&oacute;łpracuje z instytucjami kultury i organizacjami pozarządowymi.</p>\"}]}','1','1');

INSERT INTO `widok_evo_pagebuilder` VALUES ('197','285','default',NULL,'','content_text','{\"richtext\":\"<h2>Przesyłanie tekst&oacute;w</h2>\\n<p>Posiadasz nazwę użytkownika oraz hasło do zalogowania się na stronie czasopisma Widok. Teorie i praktyki kultury wizualnej?<br> <a class=\\\"action\\\" href=\\\"http://pismowidok.org/index.php/one/login\\\">Przejdź do logowania</a></p>\\n<p>Nie posiadasz nazwy użytkownika oraz hasła<br> <a class=\\\"action\\\" href=\\\"http://pismowidok.org/index.php/one/user/register\\\">Przejdź do rejestracji</a></p>\\n<p>Rejestracja oraz logowanie są niezbędne do wysyłania tekst&oacute;w oraz sprawdzania ich aktualnego statusu.</p>\\n<h2>Wytyczne dla autor&oacute;w</h2>\\n<p>Zapraszamy do zgłaszania artykuł&oacute;w zgodnych z&nbsp;<a href=\\\"http://pismowidok.org/index.php/one/about/editorialPolicies\\\">profilem pisma</a>.</p>\\n<p>Zgłoszenia artykułu w&nbsp;formacie .odt lub .doc lub .docx należy dokonać za pośrednictwem <a href=\\\"http://pismowidok.org/\\\">strony pisma</a>. W&nbsp;tym celu należy założyć sobie konto w&nbsp;systemie: <a href=\\\"http://pismowidok.org/index.php/one/login/signIn\\\">link</a>.</p>\\n<p>Artykuły przesłane w&nbsp;inny spos&oacute;b lub niezgodne z&nbsp;opisaną niżej konwencją redakcyjną nie będą przyjmowane.</p>\\n<p><strong>Ilustracje</strong></p>\\n<p>Przyjęliśmy, że odpowiedzialność za zdobycie praw do publikacji materiał&oacute;w wizualnych leży po stronie autor&oacute;w. Jeśli z jakichś powod&oacute;w okazało się to niemożliwe, prosimy o notkę informującą <span class=\\\"autogrow-textarea\\\">kto posiada prawa do rzeczonych materiał&oacute;w, z jakimi kosztamy należy sie liczyć oraz jaka jest procedura ich pozyskania. Jednocześnie informujemy, że niemożność pozyskania praw do ilustracji może przesądzić o nieopublikowaniu tekstu przyjętego w toku recenzji.</span></p>\\n<p><strong>Redakcja tekstu</strong></p>\\n<p>Przyjmujemy artykuły o&nbsp;objętości od 0,5 do 1 arkusza (arkusz: 40 tys. znak&oacute;w ze spacjami). W&nbsp;przypadku recenzji (dział &bdquo;Migawki&rdquo;) długość tekstu nie powinna przekraczać 0,5 arkusza.</p>\\n<p>W swoim profilu (&bdquo;Moje konto&rdquo; &rarr; &bdquo;Zarządzaj stroną&rdquo; &rarr; &bdquo;Edytuj m&oacute;j profil&rdquo;) należy uzupełnić następujące informacje:</p>\\n<ul>\\n<li>\\n<p>imię i&nbsp;nazwisko autora/autor&oacute;w</p>\\n</li>\\n<li>\\n<p>adres e-mail</p>\\n</li>\\n<li>\\n<p>stopień naukowy (w rubryce &bdquo;forma grzecznościowa&rdquo;)</p>\\n</li>\\n<li>\\n<p>miejsce zatrudnienia / afiliację</p>\\n</li>\\n<li>notę biograficzną zawierającą zainteresowania badawcze, najnowsze publikacje książkowe (max. 30 sł&oacute;w)</li>\\n</ul>\\n<p>Przesyłając tekst do opublikowania (&bdquo;Moje konto&rdquo; &rarr; &bdquo;Zarządzaj stroną&rdquo; &rarr; &bdquo;Prześlij tekst do opublikowania&rdquo;), proszę uzupełnić następujące informacje:</p>\\n<ul>\\n<li>\\n<p>streszczenie artykułu po polsku i&nbsp;po angielsku (max. 100 sł&oacute;w), zawierające og&oacute;lny opis problematyki poruszanej w&nbsp;tekście, przyjętą metodologię badań i&nbsp;najważniejsze tezy</p>\\n</li>\\n<li>\\n<p>słowa kluczowe artykułu (do 7 sł&oacute;w kluczowych)</p>\\n</li>\\n</ul>\\n<p><strong>Aby zapewnić anonimowość recenzji, teksty nadsyłane do dział&oacute;w recenzowanych nie powinny zawierać żadnych danych autora / autorki! </strong></p>\\n<p><strong>Format</strong> tekstu: czcionka Times New Roman, 12 pkt., interlinia 1,5 pkt., justowanie obustronne.</p>\\n<p><strong>Tytuły</strong> film&oacute;w i&nbsp;tekst&oacute;w należy zaznaczyć kursywą. Wyjątkiem są tytuły czasopism: druk prosty, w&nbsp;cudzysłowie.</p>\\n<p>Wyrażenia obcojęzyczne powinny być zapisane kursywą, a&nbsp;podkreślenia &ndash; drukiem rozstrzelonym (3 pkt.).</p>\\n<p>W <strong>datach</strong> nazwy miesięcy powinny być podane słowami (np. 23 stycznia 2013), dziesiątki lat oznaczane cyframi z&nbsp;kropką (np. lata 60. XX wieku).</p>\\n<p>Kr&oacute;tkie<strong> cytaty</strong> (do 250 znak&oacute;w) powinny być włączone w&nbsp;tekst i&nbsp;wyodrębnione za pomocą cudzysłowu (bez kursywy). Dłuższe cytaty, stanowiące autonomiczny fragment, należy wyodrębnić, tworząc osobny akapit, bez cudzysłowu, czcionką 11 pkt. z&nbsp;pojedynczą interlinią.</p>\\n<p><strong>Ilustracje</strong> powinny być podpisane według wzoru: William Hernett, <em>List artysty</em>, 1879. Olej na pł&oacute;tnie. The Metropolitan Museum of Art, New York</p>\\n<p><strong>Przypisy</strong>, numerowane kolejnymi cyframi arabskimi, należy umieścić na dole strony.</p>\\n<p>Obowiązująca konwencja:</p>\\n<ul>\\n<li>\\n<p>pełne imię i&nbsp;nazwisko autora/autor&oacute;w, inicjał imienia redaktora, tłumacza, autora wstępu itp.;</p>\\n</li>\\n<li>\\n<p>pełny tytuł;</p>\\n</li>\\n<li>\\n<p>podajemy zar&oacute;wno pełną nazwę wydawnictwa, jak i&nbsp;miejsce wydania;</p>\\n</li>\\n<li>\\n<p>tytuł od śr&oacute;dtytułu oddziela kropka;</p>\\n</li>\\n<li>\\n<p>w odesłaniach do utwor&oacute;w cytowanych następujących po sobie stosujemy formę łacińską &bdquo;Ibidem&rdquo;.</p>\\n</li>\\n<li>\\n<p>w odniesieniach do utwor&oacute;w cytowanych, oddzielonych innymi przypisami, stosujemy wielokropek.</p>\\n</li>\\n</ul>\\n<p>Przykłady:</p>\\n<p>- publikacja zwarta:</p>\\n<p>Enrico Fubini, <em>Historia estetyki muzycznej</em>, przeł. Z. Skowron, Musica Iagellonica, Krak&oacute;w 2002, s.&nbsp;35.</p>\\n<p>- artykuł, rozdział w&nbsp;książce:</p>\\n<p>Maria Janion, Maria Żmigrodzka, <em>Doktor Faust &ndash; prawda i&nbsp;zmyślenie</em>, w: eaedem, <em>Romantyzm i&nbsp;egzystencja. Fragmenty niedokończonego dzieła</em>, słowo/obraz terytoria, Gdańsk 2004, s.&nbsp;119&ndash;126.</p>\\n<p>Justin London, <em>Leitmotifs and Musical Reference in the Classical Film Score</em>, w: <em>Music and Cinema</em>, red. J. Buhler, C. Flinn, D. Neumayer, Wesleyan University Press, Hanover&ndash;London 2000, s.&nbsp;91.</p>\\n<p>- artykuł w&nbsp;czasopiśmie:</p>\\n<p>B&oslash;rge Trolle, <em>Świat Carla Dreyera</em>, przeł. W. Wertenstein, &bdquo;Film na Świecie&rdquo; 1956, nr&nbsp;6, s.&nbsp;12&ndash;18.</p>\\n<p>Dorota Jarecka, <em>Chopin od przodu i&nbsp;z&nbsp;boku</em>, &bdquo;Gazeta Wyborcza&rdquo; z&nbsp;10 marca 2010, s.&nbsp;9.</p>\\n<p>- odesłanie do źr&oacute;dła internetowego wymaga podania autora, tytułu tekstu, nazwy strony / tytułu &bdquo;portalu&rdquo; (wg konwencji &ndash; wszystkie jej części dużą literą), daty aktualizacji, adresu dostępu oraz daty dostępu.</p>\\n<p>Dorota Jarecka, <em>Chopin od przodu i&nbsp;z&nbsp;boku</em>, &bdquo;Gazeta Wyborcza&rdquo; z&nbsp;10 marca 2010, http://wyborcza.pl/1,75475,7643997,Chopin_od_przodu_i_z_boku.html, dostęp 11 grudnia 2012.</p>\\n<p>W przypadku dzieł już cytowanych:</p>\\n<p>- rozdzielonych innymi przypisami</p>\\n<p>Justin London, <em>Leitmotifs and Musical Reference...,</em> s.&nbsp;98.</p>\\n<p>- następujących po sobie:</p>\\n<p>Ibidem, s.&nbsp;102.</p>\\n<h2>Sprawdzenie tekstu przed wysłaniem</h2>\\n<p>Autorzy proszeni są o sprawdzenie czy tekst spełnia poniższe kryteria. Teksty, kt&oacute;re nie spełniają wymagań redakcyjnych mogą zostać odrzucone.</p>\\n<ol>\\n<li>Artykuł nie był wcześniej publikowany ani uprzednio zgłoszony do innego pisma.</li>\\n<li>Zgłoszony artykuł został zapisany w jednym z poniższych format&oacute;w: OpenOffice lub Microsoft Word.</li>\\n<li>Gdzie to możliwe, proszę o podanie link&oacute;w URL.</li>\\n<li>Interlinia tekstu 1,5, czcionka Times New Roman 12 pkt, justowanie obustronne, rozstrzelenie zamiast kursywy, wszystkie ilustracje, tabele, etc umieszczone są we właściwych miejscach w tekście.</li>\\n<li>Tekst stosuje się do wskaz&oacute;wej dla autor&oacute;w wymienionych powyżej.</li>\\n<li>Jeśli artykuł przeznaczony jest to działu recenzowanego, proszę upewnić się, że nie zawiera danych osobowych autora/autorki.</li>\\n</ol>\\n<h2>Prawa autorskie</h2>\\n<p>Wszystkie prawa do tekst&oacute;w pozostają przy autorach. Wysyłając tekst do publikacji, autorka lub autor udziela redakcji pisma &bdquo;Widok. Teorie i praktyki kultury wizualnej&rdquo; jednorazowej, niewyłącznej licencji do publikacji tegoż tekstu na stronie internetowej pisma oraz do sporządzenia i opublikowania jego przekładu na język angielski na tejże stronie. Jeśli artykuł zostanie opublikowany w piśmie &bdquo;Widok&rdquo;, autorka lub autor udziela redakcji zgodę na jednorazową publikację artykułu w ewentualnej antologii tekst&oacute;w pisma.</p>\\n<p>Jeśli artykuł został opublikowany po raz pierwszy w &bdquo;Widoku&rdquo;, autorka lub autor zobowiązuje się umieszczać informację o pierwotnym miejscu publikacji przy okazji każdego kolejnego upublicznienia tekstu.</p>\\n<p>Jednocześnie zachęcamy wszystkich autor&oacute;w do publikowania swoich tekst&oacute;w na jednej z licencji <a href=\\\"http://creativecommons.pl/poznaj-licencje-creative-commons/\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">&bdquo;Creative Commons&rdquo;</a>.</p>\\n<h2>Polityka prywatności</h2>\\n<p>Dane osobowe i adresy poczty elektronicznej wprowadzone do bazy pisma będą wykorzystywane wyłącznie w obrębie jego działalności i nie będą udostępniane żadnym innym podmiotom.</p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('198','248','default',NULL,'','content_text','{\"richtext\":\"<p><strong>Redakcja / Editorial board</strong></p>\\n<p>Widok. Teorie i praktyki kultury wizualnej</p>\\n<p>\\\"Widok\\\". Fundacja Kultury Wizualnej<br>Jagiellońska 54/99<br>03-463 Warszawa</p>\\n<p>Email: <a href=\\\"mailto:redakcja@pismowidok.org\\\">redakcja@pismowidok.org</a></p>\\n<p><strong>Wsparcie techniczne / Technical assistance</strong><br> Email: <a href=\\\"mailto:pomoc@pismowidok.org\\\">pomoc@pismowidok.org</a></p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('199','286','default',NULL,'','content_text','{\"richtext\":\"<p><img src=\\\"assets/images/page-wydawca/Widok-ikona-wyd.png\\\" alt=\\\"ikona fundacji Widok\\\" width=\\\"117\\\" height=\\\"144\\\"></p>\\n<p><a title=\\\"Widok. Fundacja Kultury Wizualnej\\\" href=\\\"[~287~]\\\" rel=\\\"noopener\\\">\\\"Widok. Fundacja Kultury Wizualnej\\\"</a></p>\\n<p>&nbsp;</p>\\n<h3>Afiliowane przy:</h3>\\n<p><a href=\\\"http://ikp.uw.edu.pl/en/\\\" target=\\\"_blank\\\" rel=\\\"IKP noopener\\\"><img style=\\\"border-width: 0px;\\\" src=\\\"assets/images/page-wydawca/ikp_pl_pl_poziom_black.png\\\" alt=\\\"logo IKP UW\\\" width=\\\"144\\\" height=\\\"64\\\"></a><br><br><a href=\\\"http://ikp.uw.edu.pl/en/\\\" target=\\\"_blank\\\" rel=\\\"IKP noopener\\\">Instytut Kultury Polskiej</a> Uniwersytetu Warszawskiego.</p>\\n<p>&nbsp;</p>\\n<p><a href=\\\"http://ibl.waw.pl\\\" target=\\\"_blank\\\" rel=\\\"IBL noopener\\\"><img src=\\\"assets/images/page-wydawca/IBL-czysty.png\\\" alt=\\\"logo IBL PAN\\\" width=\\\"90\\\" height=\\\"80\\\"></a><br><br><a href=\\\"http://ibl.waw.pl\\\" target=\\\"_blank\\\" rel=\\\"IBL noopener\\\">Instytut Badań Literackich</a> Polskiej Akademii Nauk.</p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('200','284','default',NULL,'','content_profilesSimple','{\"name\":\"\",\"item\":[{\"name\":\"dr Alexandra Alisauskas\",\"url\":\"https://ubc.academia.edu/AlexandraAlisauskas\",\"university\":\"School of Library, Archival and Information Studies, University of British Columbia\"},{\"name\":\"dr Torsten Andreasen\",\"url\":\"http://kunstogkulturvidenskab.ku.dk/ansatte/litt/?pure=da/persons/193598\",\"university\":\"Department of Art and Cultural Studies, University of Copenhagen\"},{\"name\":\"dr Magdalena Barbaruk\",\"url\":\"http://www.etnologia.uj.edu.pl/magdalena-barbaruk\",\"university\":\"Instytut Etnologii i Antropologii Kulturowej Uniwersytet Jagielloński\"},{\"name\":\"dr Katarzyna Bartoszyńska\",\"url\":\"http://www.bilkent.edu.tr/~cci/CCI/Dr._Katarzyna_Bartoszynska.html\",\"university\":\"Bilkent University\"},{\"name\":\"dr Tomasz Bilczewski\",\"url\":\"http://www.cash.polonistyka.uj.edu.pl/biogram.php?b=bilczewski\",\"university\":\"Katedra Międzynarodowych Studiów Polonistycznych, Wydział Polonistyki, Uniwersytet Jagielloński\"},{\"name\":\"dr Łukasz Biskupski\",\"url\":\"https://swps.academia.edu/LukaszBiskupski\",\"university\":\"Narodowe Centrum Kultury Filmowej\"},{\"name\":\"Dr. Svea Braeunert\",\"url\":\"http://www.artsci.uc.edu/departments/german/people/fac_staff.html?eid=braeunss&thecomp=uce\",\"university\":\"Graduate Research Program \\\"Visibility and Visualization: Hybrid Forms of Pictorial Knowledge\\\", Universität Potsdam\"},{\"name\":\"dr Katarzyna Bojarska\",\"url\":\"http://ibl.waw.pl/pl/o-instytucie/pracownicy/bojarska-katarzyna\",\"university\":\"Instytut Badań Literackich, Polska Akademia Nauk\"},{\"name\":\"dr Brianne Cohen\",\"url\":\"https://www.amherst.edu/people/facstaff/bcohen\",\"university\":\"Amherst College\"},{\"name\":\"prof. dr hab. Przemysław Czapliński\",\"url\":\"https://amu.edu.pl/szybkie-linki/mediow/be/lista-wg-nazwisk/prof.-przemysaw-czapliski,-wyd\",\"university\":\"Wydział Filologii Polskiej i Klasycznej, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"prof. dr hab. Rafał Drozdowski\",\"url\":\"http://socjologia.amu.edu.pl/isoc/profile.php?lookup=22\",\"university\":\"Instytut Socjologii, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"dr Tomasz Ferenc\",\"url\":\"http://www.eksoc.uni.lodz.pl/is/ferenc.html\",\"university\":\"Instytut Socjologii, Uniwersytet Łódzki\"},{\"name\":\"dr hab. Mirosław Filiciak\",\"url\":\"http://www.centrumprasowe.swps.pl/kulturoznawstwo/dr-miroslaw-filiciak\",\"university\":\"Szkoła Wyższa Psychologii Społecznej\"},{\"name\":\"dr hab. Beata Frydryczak\",\"url\":\"http://www.ceg.amu.edu.pl/index.php/lista-pracownikow/119-menu-modulu-dla-pracownika/lista-pracownikow/142-dr-hab-beata-frydryczak-prof-uam\",\"university\":\"Instytut Kultury Europejskiej, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"dr hab. Maciej Gdula\",\"url\":\"http://www.krytykapolityczna.pl/users/mgdula\",\"university\":\"Instytut Socjologii, Uniwersytet Warszawski\"},{\"name\":\"dr Amanda Graham\",\"url\":\"http://www.hws.edu/academics/mediaandsociety/facultyProfile.aspx?facultyID=1582\",\"university\":\"Media and Society Program, Hobart and William Smith Colleges\"},{\"name\":\"dr Magdalena Grenda\",\"url\":\"http://kulturoznawstwo.amu.edu.pl/portfolio/dr-magdalena-grenda/\",\"university\":\"Instytut Kulturoznawstwa, Uniwersytet Adama Mickiewicza w Poznaniu\"},{\"name\":\"prof. Ewa Guderian-Czaplińska\",\"url\":\"http://wot-wp.home.amu.edu.pl/pracownicy/prof-ewa-guderian-czaplinska/\",\"university\":\"Katedra Teatru, Dramatu i Widowisk, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"Professor Rachel Haidu\",\"url\":\"http://rochester.edu/college/aah/people/haidu.html\",\"university\":\"Graduate Program in Visual and Cultural Studies, University of Rochester\"},{\"name\":\"Maciej Jakubowiak\",\"url\":\"http://www.antropologia.polonistyka.uj.edu.pl/maciej-jakubowiak\",\"university\":\"Katedra Antropologii Literatury i Badań Kulturowych Uniwersytetu Jagiellońskiego\"},{\"name\":\"prof. dr hab. Agata Jakubowska\",\"url\":\"http://arthist.amu.edu.pl/osoba/prof-uam-dr-hab-agata-jakubowska/\",\"university\":\"Instytut Historii Sztuki, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"dr Dobrochna Kałwa\",\"url\":\"http://www.ihuw.pl/instytut/o-instytucie/pracownicy/dr-dobrochna-kalwa\",\"university\":\"Instytut Historyczny, Uniwersytet Warszawski\"},{\"name\":\"dr Lidia Klein\",\"url\":\"https://aahvs.duke.edu/people/profile/lidia-klein\",\"university\":\"Art, Art History and Visual Studies Department, Duke University\"},{\"name\":\"dr Konrad Klejsa\",\"url\":\"http://www.kulturoznawstwo.uni.lodz.pl/index.php?id=73&option=content&task=view\",\"university\":\"Instytut Kultury Współczesnej, Uniwersytet Łódzki\"},{\"name\":\"dr Ewa Klekot\",\"url\":\"http://www.etnologia.uw.edu.pl/www/pracownicy/ewa-klekot\",\"university\":\"Instytut Etnologii i Antropologii Kulturowej, Uniwersytet Warszawski, School of Form, Poznań\"},{\"name\":\"dr Karolina Kosińska\",\"url\":\"http://www.ispan.pl/pl/o-instytucie-sztuki-pan/biogramy-pracownikow/dr-karolina-kosinska\",\"university\":\"Instytut Sztuki, Polska Akademia Nauk\"},{\"name\":\"prof. dr hab. Dariusz Kosiński\",\"url\":\"http://www.polonistyka.uj.edu.pl/katedra-performatyki\",\"university\":\"Katedra Performatyki, Wydział Polonistyki, Uniwersytet Jagielloński\"},{\"name\":\"prof. dr hab. Marek Krajewski\",\"url\":\"http://www.socjologia.amu.edu.pl/isoc/aboutme.php?user_id=23\",\"university\":\"Instytut Socjologii, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"prof.dr hab. Izabela Kowalczyk\",\"url\":\"http://uap.edu.pl/uczelnia/kadra/kowalczyk-izabela/\",\"university\":\"Uniwersytet Artystyczny w Poznaniu\"},{\"name\":\"dr hab. Joanna Krakowska\",\"url\":\"http://www.ispan.pl/pl/o-instytucie-sztuki-pan/biogramy-pracownikow/joanna-krakowska\",\"university\":\"Instytut Sztuki, Polska Akademia Nauk\"},{\"name\":\"prof. Olaf Krysowski\",\"url\":\"http://ilp.uw.edu.pl/olaf-krysowski/\",\"university\":\"Instytut Literatury Polskiej, Wydział Polonistyki, Uniwersytet Warszawski\"},{\"name\":\"dr Robert Kusek\",\"url\":\"http://www.ifa.filg.uj.edu.pl/robert-kusek\",\"university\":\"Instytut Filologii Angielskiej, Uniwersytet Jagielloński\"},{\"name\":\"dr hab. Iwona Kurz\",\"url\":\"http://uw.academia.edu/IwonaKurz\",\"university\":\"Instytut Kultury Polskiej, Uniwersytet Warszawski\"},{\"name\":\"dr Paulina Kwiatkowska\",\"url\":\"http://ikp.uw.edu.pl/en/zaklad-filmu-i-kultury-wizualnej\",\"university\":\"Instytut Kultury Polskiej, Uniwersytet Warszawski\"},{\"name\":\"dr hab. Michał Kuziak\",\"url\":\"http://ilp.uw.edu.pl/michal-kuziak/\",\"university\":\"Instytut Literatury Polskiej, Uniwersytet Warszawski\"},{\"name\":\"dr Bartosz Kwieciński\",\"url\":\"http://www.holocaust.uj.edu.pl/centrum/zespol/wykladowcy\",\"university\":\"Centrum Badań Holokaustu, Uniwersytet Jagielloński\"},{\"name\":\"dr hab. Andrzej Leśniak\",\"url\":\"http://www.kulturamiejsca.asp.waw.pl/\",\"university\":\"Wydzał Zarządzania Kulturą Wizualną, Akademia Sztuk Pięknych w Warszawie\"},{\"name\":\"prof. Marta Leśniakowska\",\"url\":\"http://www.ispan.pl/pl/o-instytucie-sztuki-pan/biogramy-pracownikow-naukowych/prof.-nadzw.\",\"university\":\"Instytut Sztuki, Polska Akademia Nauk\"},{\"name\":\"dr Godfre Leung\",\"url\":\"https://www.stcloudstate.edu/art/who/faculty.asp\",\"university\":\"Department of Art, St. Cloud State University\"},{\"name\":\"dr Agata Marta Lubowicka\",\"url\":\"https://fil.ug.edu.pl/st-tyt_nauk/38070/agata_marta_lubowicka\",\"university\":\"Wydział Filologiczny, Uniwersytet Gdański\"},{\"name\":\"dr Filip Lipiński\",\"url\":\"http://arthist.amu.edu.pl/osoba/zaklad-historii-sztuki-nowoczesnej/dr-filip-lipinski/\",\"university\":\"Instytut Historii Sztuki Uniwersytet im. Adama Mickiewicza\"},{\"name\":\"dr hab. Adam Lipszyc\",\"url\":\"http://www.ifispan.waw.pl/index.php?lang=pl\",\"university\":\"Instytut Filozofii i Socjologii, Polska Akademia Nauk\"},{\"name\":\"dr Małgorzata Litwinowcz-Droździel\",\"url\":\"http://ikp.uw.edu.pl/en/zaklad-historii-kultury\",\"university\":\"Instytut Kultury Polskiej, Uniwersytet Warszawski\"},{\"name\":\"dr Dorota Łuczak\",\"url\":\"https://one.academia.edu/DorotaLuczak\",\"university\":\"Instytut Historii Sztuki, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"prof. dr hab. Zbigniew Majchrowski\",\"url\":\"https://fil.ug.edu.pl/strona/14909/prof_dr_hab_zbigniew_majchrowski\",\"university\":\"Instytut Filologii Polskiej, Uniwersytet Gdański\"},{\"name\":\"dr Ewa Majewska\",\"url\":\"https://www.ici-berlin.org/de/profil/majewska/\",\"university\":\"Wydział Artes Liberales, Uniwersytet Warszawski\"},{\"name\":\"dr hab. Tomasz Majewski\",\"url\":\"http://www.antropologia.polonistyka.uj.edu.pl/katedra/pracownicy/dr-hab.-prof.-uj-tomasz-m\",\"university\":\"Katedra Antropologii Literatury i Badań Kulturowych, Uniwersytet Jagielloński\"},{\"name\":\"prof. dr hab. Anna Markowska\",\"url\":\"http://historiasztuki.uni.wroc.pl/sklad/am/am.html\",\"university\":\"Instytut Historii Sztuki, Uniwersytet Wrocławski\"},{\"name\":\"dr Andrzej Marzec\",\"url\":\"http://filozofia.amu.edu.pl/struktura-instytutu/zaklad-filozofii-kultury/andrzej-marzec/\",\"university\":\"Instytut Filozofii, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"dr Nicolas Maslowski\",\"url\":\"http://www.okf.uw.edu.pl/multimedia/zespol.html\",\"university\":\"Ośrodek Kultury Francuskiej, Uniwersytet Warszawski\"},{\"name\":\"dr Adam Mazur\",\"url\":\"http://www.akademiafotografii.pl/warszawa/adam_mazur\",\"university\":\"Akademia Fotografii w Warszawie\"},{\"name\":\"dr hab. Marianna Michałowska\",\"url\":\"http://www.staff.amu.edu.pl/~instkult/index.php?option=com_content&view=article&id=93:mich\",\"university\":\"Instytut Kulturoznawstwa, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"dr hab. Wojciech Michera\",\"url\":\"http://ikp.uw.edu.pl/en/zaklad-filmu-i-kultury-wizualnej\",\"university\":\"Instytut Kultury Polskiej, Uniwersytet Warszawski\"},{\"name\":\"dr Kuba Mikurda\",\"url\":\"https://www.filmschool.lodz.pl/en/szkola/interdyscyplinarne-centrum-badawcze\",\"university\":\"Państwowa Wyższa Szkoła Filmowa, Telewizyjna i Teatralna im. Leona Schillera w Łodzi\"},{\"name\":\"dr hab. Jakub Momro\",\"url\":\"http://www.antropologia.polonistyka.uj.edu.pl/dr-jakub-momro\",\"university\":\"Katedra Antropologii i Badań Kulturowych, Uniwersytet Jagielloński\"},{\"name\":\"dr Paweł Mościcki\",\"url\":\"http://ibl.waw.pl/pl/o-instytucie/pracownicy/moscicki-pawel\",\"university\":\"Instytut Badań Literackich, Polska Akademia Nauk\"},{\"name\":\"dr Agnieszka Mrozik\",\"url\":\"http://ibl.waw.pl/pl/o-instytucie/pracownicy/mrozik-agnieszka\",\"university\":\"Instytut Badań Literackich, Polska Akademia Nauk\"},{\"name\":\"dr Monika Murawska\",\"url\":\"https://ws.asp.waw.pl/dr-monika-murawska/\",\"university\":\"Wydział Scenografii, Akademia Sztuk Pięknych w Warszawie\"},{\"name\":\"dr hab. Ewa Partyga\",\"url\":\"http://www.ispan.pl/pl/o-instytucie-sztuki-pan/biogramy-pracownikow/dr-ewa-partyga\",\"university\":\"Instytut Sztuki, Polska Akademia Nauk\"},{\"name\":\"prof. dr hab. Grzegorz Niziołek\",\"url\":\"http://www.katedrateatru.polonistyka.uj.edu.pl/pracownicy/grzegorz-niziolek\",\"university\":\"Katedra Teatru i Dramatu, Uniwersytet Jagielloński\"},{\"name\":\"prof. dr hab. Ryszard Nycz\",\"url\":\"http://www.antropologia.polonistyka.uj.edu.pl/katedra/pracownicy/prof.-nycz\",\"university\":\"Katedra Antropologii Literatury i Badań Kulturowych, Uniwersytet Jagielloński\"},{\"name\":\"dr Krzysztof Pijarski\",\"url\":\"http://pijarski.art.pl\",\"university\":\"Państwowa Wyższa Szkoła Filmowa, Telewizyjna i Teatralna im. Leona Schillera w Łodzi\"},{\"name\":\"prof. dr hab. Piotr Piotrowski\",\"url\":\"http://www.staff.amu.edu.pl/~piotrpio/\",\"university\":\"Instytut Historii Sztuki, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"prof. dr hab. Magdalena Popiel\",\"url\":\"http://www.antropologia.polonistyka.uj.edu.pl/katedra/pracownicy/prof.popiel\",\"university\":\"Katedra Antropologii Literatury i Badań Kulturowych, Uniwersytet Jagielloński\"},{\"name\":\"prof. dr hab. Maria Poprzęcka\",\"url\":\"http://al.uw.edu.pl/kadra/poprzecka-maria/\",\"university\":\"Wydział „Artes Liberales”, Uniwersytet Warszawski\"},{\"name\":\"dr hab. Magdalena Radkowska-Walkowicz\",\"url\":\"https://www.etnologia.uw.edu.pl/en/about-us/people/academic-and-non-academic/magdalena-rad\",\"university\":\"Instytut Etnologii i Antropologii Kulturowej, Uniwersytet Warszawski\"},{\"name\":\"dr hab. Dorota Sajewska\",\"url\":\"http://ikp.uw.edu.pl/dr-hab-dorota-sajewska/\",\"university\":\"Instytut Kultury Polskiej, Uniwersytet Warszawski\"},{\"name\":\"dr hab. Mateusz Salwa\",\"url\":\"http://www.filozofia.uw.edu.pl/instytut/zaklady-i-pracownie/zaklad-estetyki/\",\"university\":\"Instytut Filozofii, Uniwersytet Warszawski\"},{\"name\":\"dr hab. Magdalena Saryusz-Wolska\",\"url\":\"http://www.dhi.waw.pl/institut/personal/wissenschaft/magdalena-saryusz-wolska.html\",\"university\":\"Centrum Badań Historycznych, Polska Akademia Nauk w Berlinie, Instytut Kultury Współczesnej, Uniwersytet Łódzki\"},{\"name\":\"dr hab. Roma Sendyka\",\"url\":\"http://www.antropologia.polonistyka.uj.edu.pl/katedra/pracownicy/dr-roma-sendyka\",\"university\":\"Katedra Antropologii Literatury i Badań Kulturowych, Uniwersytet Jagielloński\"},{\"name\":\"dr hab. Sławomir Sikora\",\"url\":\"http://slawomir-sikora.net\",\"university\":\"Instytut Etnologii i Antropologii Kulturowej, Uniwersytet Warszawski\"},{\"name\":\"dr Dorota Sosnowska\",\"url\":\"http://ikp.uw.edu.pl/dr-dorota-sosnowska/\",\"university\":\"Instytut Kultury Polskiej, Uniwersytet Warszawski\"},{\"name\":\"dr hab. Jan Sowa\",\"url\":\"https://independentresearcher.academia.edu/JanSowa\",\"university\":\"Niezależny badacz\"},{\"name\":\"dr Weronika Szczawińska\",\"url\":\"http://culture.pl/en/artist/weronika-szczawinska\",\"university\":\"Niezależna reżyserka i dramaturżka\"},{\"name\":\"dr Tomasz Szerszeń\",\"url\":\"http://tomaszszerszen.com/\",\"university\":\"Instytut Sztuki, Polska Akademia Nauk\"},{\"name\":\"dr Matylda Szewczyk\",\"url\":\"http://ikp.uw.edu.pl/dr-matylda-szewczyk/\",\"university\":\"Instytut Kultury Polskiej, Uniwersytet Warszawski\"},{\"name\":\"dr Paweł Sztarbowski\",\"url\":\"https://www.powszechny.com/zespol/pawel-sztarbowski,p856.html?ref_page=controller,index,ac\",\"university\":\"Teatr Powszechny w Warszawie\"},{\"name\":\"dr hab. Agnieszka Szymańska\",\"url\":\"http://www.media.uj.edu.pl/agnieszka-szymanska\",\"university\":\"Instytut Dziennikarstwa, Mediów i Komunikacji Społecznej, Uniwersytet Jagielloński\"},{\"name\":\"dr Wojciech Szymański\",\"url\":\"http://www.ihs.uw.edu.pl/spis-pracownikow/wojciech-szymanski/\",\"university\":\"Instytut Historii Sztuki, Uniwersytet Warszawski\"},{\"name\":\"dr Mikołaj Wiśniewski\",\"url\":\"https://www.swps.pl/313-nauka/wykladowcy-podyplomowe/14863-wisniewski-mikolaj\",\"university\":\"Katedra Anglistyki, SWPS Uniwersytet Humanistycznospołeczny\"},{\"name\":\"prof. dr hab. Wojciech Tomasik\",\"url\":\"http://www.ukw.edu.pl/pracownicy/strona/wojciech_tomasik/\",\"university\":\"Instytut Filologii Polskiej i Kulturoznawstwa, Uniwersytet Kazimierza Wielkiego w Bydgoszczy\"},{\"name\":\"dr Krzysztof Wolański\",\"url\":\"http://machinamysli.org/author/krzysztof-wolanski/\",\"university\":\"Wielokulturowe Liceum Humanistyczne im. Jacka Kuronia\"},{\"name\":\"prof. dr hab. Marek Zaleski\",\"url\":\"http://ibl.waw.pl/pl/o-instytucie/pracownicy/zaleski-marek\",\"university\":\"Instytut Badań Literackich, Polska Akademia Nauk\"},{\"name\":\"dr Tomasz Załuski\",\"url\":\"https://lodz.academia.edu/TomaszZa%C5%82uski\",\"university\":\"Instytut Kultury Współczesnej, Uniwersytet Łódzki\"},{\"name\":\"dr Tomasz Żaglewski\",\"url\":\"http://kulturoznawstwo.amu.edu.pl\",\"university\":\"Instytut Kulturoznawstwa, Uniwersytet Adama Mickiewicza w Poznaniu\"}]}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('201','321','default',NULL,'','content_text','{\"richtext\":\"<p>In the first issue of &ldquo;View,&rdquo; we look at things: our companions which remain so close and yet at times seem so removed from our visual experience, which are hyper-visible, yet tend to be overlooked, which seem familiar and homely, but are still able to haunt us and surprise us with their uncanniness. Thus we want to inquire not only about the theoretical framing of the dialectic of the visibility and invisibility of objects, but also about historically specific practices of looking at and perceiving them.</p>\\n<p>The perspectives on these questions are first introduced in a&nbsp;panel discussion about Tomasz Szerszeń&rsquo;s art-research project titled &ldquo;You. Me. Things&rdquo; which comprises a&nbsp;number of issues&mdash;the history of the critique of everyday life, contemplations about materiality, the phenomenology of living among things, and fantasies about the secret life of things. We approach objects in a&nbsp;series of close-ups that employ different theories and critical tools. We rummage through Lefebvrian concepts (Paweł Mościcki), analyze American modernist poetry and its &ldquo;ideas of things&rdquo; (Polish translation of an excerpt from Bill Brown&rsquo;s <i>A Sense of Things</i>), and survey Polish consumer practices in the 60&rsquo;s (Iwona Kurz), as well as the post-1989 desire to own and accumulate commodities (Magda Szcześniak).</p>\\n<p>This vast panorama invites the readers to ponder photographic journals in the context of the dispute over abstraction during the cultural thaw of the late 50&rsquo;s and 60&rsquo;s in Poland (Karolina Lewandowska), to discover Walter Benjamin&rsquo;s obsession with toys (Adam Lipszyc), to become familiar with the discussion about object and objecthood in art and photography after minimalism (Krzysztof Pijarski), and to read about lists and their relations to memory in the texts of Georges Perec and works by Sophie Calle (Ernst van Alphen).</p>\\n<p>The \\\"viewpoint\\\" presents artistic works that take up critiques of visual and material culture (Tomasz Szerszeń, Daniel Malone), and proposes critical commentaries to these works (Justyna Jaworska, Krzysztof Pijarski). Our first issue ends with a&nbsp;series of critical snapshots, in which we turn our attention to several important texts and artworks, including Mateusz Salwa on Daniel Arrase&rsquo;s <i>On n\'y voit rien. Descriptions</i>, Łukasz Zaremba on Nicholas Mirzoeff&rsquo;s <i>The Right to Look, </i>and Paula Kaniewska on Katarzyna Mirczak&rsquo;s exhibition <i>ether</i>.</p>\\n<p>The focus on &ldquo;things&rdquo; and their ambiguous character allows us to acknowledge our own ways of seeing&mdash;not only looking at things, at their constellations and relations, but also at our relations with other people, relations that are often mediated through things, and ultimately, looking at ourselves. Such an approach still seems depreciated both within the humanities and in everyday life. The ubiquity of things need not lead to their invisibility, their utility to weariness. Their silence does not have to equal their muteness. How about, in the end, &ldquo;no ideas but in things&rdquo;?</p>\\n<p><a href=\\\"[~292~]\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Editorial Team</a></p>\"}','1','0');

INSERT INTO `widok_evo_pagebuilder` VALUES ('202','283','default',NULL,'','content_profilesSimple','{\"name\":\"\",\"item\":[{\"name\":\"Ariella Azoulay\",\"url\":\"http://cargocollective.com/ariellaazoulay\",\"university\":\"Brown University\"},{\"name\":\"Ernst van Alphen\",\"url\":\"http://www.hum.leiden.edu/lucas/organisation/members/alphenejvan.html\",\"university\":\"Universiteit Leiden\"},{\"name\":\"dr hab. Waldemar Baraniewski\",\"url\":\"http://www.ihs.uw.edu.pl/instytut-2/struktura-instytutu/prof-uw-waldemar-baraniewski/\",\"university\":\"Instytut Historii Sztuki, Uniwersytet Warszawski\"},{\"name\":\"Georges Didi-Huberman\",\"url\":\"http://cral.ehess.fr/index.php?353\",\"university\":\"l’Ecole des hautes études en sciences sociales\"},{\"name\":\"Professor Rachel Haidu\",\"url\":\"http://rochester.edu/college/aah/people/haidu.html\",\"university\":\"Graduate Program in Visual and Cultural Studies, University of Rochester\"},{\"name\":\"Maryla Hopfinger-Amsterdamska\",\"url\":\"http://ibl.waw.pl/pl/o-instytucie/pracownicy/hopfingeramsterdamska-maryla\",\"university\":\"Instytut Badań Literackich, PAN\"},{\"name\":\"prof. dr hab. Anna Markowska\",\"url\":\"http://historiasztuki.uni.wroc.pl/sklad/am/am.html\",\"university\":\"Instytut Historii Sztuki, Uniwersytet Wrocławski\"},{\"name\":\"W.J.T. Mitchell\",\"url\":\"http://humanities.uchicago.edu/faculty/mitchell/cv.htm\",\"university\":\"University of Chicago\"},{\"name\":\"prof. dr hab. Grzegorz Niziołek\",\"url\":\"http://www.katedrateatru.polonistyka.uj.edu.pl/pracownicy/grzegorz-niziolek\",\"university\":\"Katedra Teatru i Dramatu, Uniwersytet Jagielloński\"},{\"name\":\"Helen Petrovsky\",\"url\":\"http://eng.iph.ras.ru/aesthetics.htm\",\"university\":\"Rosyjska Akademia Nauk\"},{\"name\":\"prof. dr hab. Piotr Piotrowski\",\"url\":\"http://www.staff.amu.edu.pl/~piotrpio/\",\"university\":\"Instytut Historii Sztuki, Uniwersytet im. Adama Mickiewicza w Poznaniu\"},{\"name\":\"Małgorzata Radkiewicz\",\"url\":\"http://www.film.uj.edu.pl/dr-hab.-malgorzata-radkiewicz\",\"university\":\"Instytut Sztuk Audiowizualnych, Uniwersytet Jagielloński\"},{\"name\":\"John Tagg\",\"url\":\"http://www2.binghamton.edu/art-history/faculty/jtagg/index.html\",\"university\":\"Binghamton University\"},{\"name\":\"prof. dr hab. Marek Zaleski\",\"url\":\"http://ibl.waw.pl/pl/o-instytucie/pracownicy/zaleski-marek\",\"university\":\"Instytut Badań Literackich, Polska Akademia Nauk\"}]}','1','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_sg_images`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_sg_images`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_sg_images` (
  `sg_id` int(10) NOT NULL AUTO_INCREMENT,
  `sg_image` text NOT NULL,
  `sg_title` varchar(255) NOT NULL DEFAULT '',
  `sg_description` text NOT NULL,
  `sg_properties` text NOT NULL,
  `sg_add` text NOT NULL,
  `sg_isactive` int(1) NOT NULL DEFAULT '1',
  `sg_rid` int(10) DEFAULT NULL,
  `sg_index` int(10) NOT NULL DEFAULT '0',
  `sg_createdon` datetime NOT NULL,
  PRIMARY KEY (`sg_id`),
  KEY `sg_rid` (`sg_rid`),
  KEY `sg_index` (`sg_index`),
  KEY `sg_isactive` (`sg_isactive`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Datatable for SimpleGallery plugin.';

#
# Dumping data for table `widok_evo_sg_images`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_content`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_content`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=323 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `widok_evo_site_content`
#

INSERT INTO `widok_evo_site_content` VALUES ('1','document','text/html','EN','','','en','','1','0','0','0','1','','','0','39','1','0','1','1','1130304721','1','1534067211','0','0','0','1130304721','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('2','document','text/html','Home','Home page','','index','','1','0','0','1','0','','','1','3','0','0','1','1','1354179040','1','1534067147','0','0','0','1354179040','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('3','document','text/html','Page 401','Access forbidden','','401','','1','0','0','250','0','','','0','13','4','0','1','1','1354179261','1','1426846119','0','0','0','1354179261','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('4','document','text/html','Page 404','Page not found','','404','','1','0','0','250','0','','','0','14','5','0','0','1','1354179333','1','1426846123','0','0','0','1354179333','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('5','document','text/html','Page 503','Site offline','','503','','1','0','0','250','0','','','0','15','6','0','1','1','1354179768','1','1426846128','0','0','0','1354179768','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('308','document','text/html','Paweł Mościcki','','','pawel-moscicki','','1','0','0','300','0','','','1','41','16','0','1','1','1527505080','1','1527505122','0','0','0','1527505080','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('206','document','text/xml','Sitemap','','','sitemap.xml','','1','0','0','250','0','','','0','25','0','0','1','1','1369224256','1','1505335996','0','0','0','1369224256','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('58','document','text/html','PL','','','pl','','1','0','0','0','1','','','0','39','0','0','1','1','1355299347','1','1534067206','0','0','0','1355299569','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('59','document','text/html','Start','Strona główna','','index','','1','0','0','58','0','','','1','3','0','1','1','1','1355299347','1','1534067153','0','0','0','1355355314','2','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('39','document','text/html','Search','','','search','','1','0','0','1','0','','','0','8','5','0','1','1','1354264982','1','1533990511','0','0','0','1354264982','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('82','document','text/html','O nas','','','o-nas','','1','0','0','58','1','','','1','26','1','1','1','1','1355299347','1','1527240282','0','0','0','1355299569','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('99','document','text/html','Szukaj','','','szukaj','','1','0','0','58','0','','','0','8','5','0','1','1','1355299347','1','1533990505','0','0','0','1355299569','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('320','document','text/html','No 1 (2013): The Visibility of Things','','','no-1-2013-the-visibility-of-things','','1','0','0','254','1','','','1','40','0','1','1','1','1528103936','1','1531222441','0','0','0','1528104847','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('315','document','text/html','Ernst van Alphen','','','ernst-van-alphen','','1','0','0','300','0','','','1','41','4','0','1','1','1527505154','1','1527505154','0','0','0','1527505154','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('311','document','text/html','Katarzyna Bojarska','','','katarzyna-bojarska','','1','0','0','300','0','','','1','41','8','0','1','1','1527505101','1','1527505101','0','0','0','1527505101','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('211','document','text/html','Numer 1: Widzialność rzeczy','','','numer-1-widzialnosc-rzeczy','','1','1407872100','0','299','0','','','1','17','1','1','1','1','1375619873','1','1528469151','0','0','0','1407872100','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('293','document','text/html','Editorial Board','','','editorial-board','','1','0','0','289','0','','','1','4','2','1','1','1','1527241571','1','1528103893','0','0','0','1527241658','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('281','document','text/html','Profil pisma','','','profil-pisma','','1','0','0','82','0','','','1','4','0','1','1','1','1527240462','1','1528746283','0','0','0','1527240462','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('282','document','text/html','Zespół redakcyjny','','','zespol-redakcyjny','','1','0','0','82','0','','','1','4','1','1','1','1','1527240675','1','1528103762','0','0','0','1527240675','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('283','document','text/html','Rada Naukowa','','','rada-naukowa','','1','0','0','82','0','','','1','4','2','1','1','1','1527240692','1','1533993323','0','0','0','1527240692','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('284','document','text/html','Recenzenci','','','recenzenci','','1','0','0','82','0','','','1','4','3','1','1','1','1527240702','1','1528103742','0','0','0','1527240702','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('285','document','text/html','Dla autorów','','','dla-autorow','','1','0','0','82','0','','','1','4','4','1','1','1','1527240746','1','1528103734','0','0','0','1527240746','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('286','document','text/html','Wydawca','','','wydawca','','1','0','0','82','0','','','1','4','6','1','1','1','1527240824','1','1528103714','0','0','0','1527240824','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('287','document','text/html','Fundacja','','','fundacja','','1','0','0','58','0','','','1','4','2','1','1','1','1527241215','1','1528103808','0','0','0','1527241215','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('288','document','text/html','CFP','','','cfp','','1','0','0','58','0','','','1','4','4','1','1','1','1527241321','1','1528103786','0','0','0','1527241321','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('280','document','text/html','Wstęp do numeru','','','wstep-do-numeru','','1','0','0','263','0','','','1','35','0','0','1','1','1527239130','1','1527239130','0','0','0','1527239130','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('278','document','text/html','Punkt widokowy','','','punkt-widokowy','','1','0','0','263','0','','','1','35','4','0','1','1','1527237490','1','1527237536','0','0','0','1527237536','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('277','document','text/html','Perspektywy','','','perspektywy','','1','0','0','263','0','','','1','35','3','0','1','1','1527237392','1','1527237450','0','0','0','1527237392','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('279','document','text/html','Migawki','','','migawki','','1','0','0','263','0','','','1','35','5','0','1','1','1527237511','1','1527237511','0','0','0','1527237511','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('294','document','text/html','Reviewers','','','reviewers','','1','0','0','289','0','','','1','4','3','1','1','1','1527241571','1','1528103884','0','0','0','1527241716','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('295','document','text/html','Submissions','','','submissions','','1','0','0','289','0','','','1','4','4','1','1','1','1527241571','1','1528103876','0','0','0','1527241692','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('296','document','text/html','Publisher','','','publisher','','1','0','0','289','0','','','1','4','6','1','1','1','1527241571','1','1528103860','0','0','0','1527241708','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('298','document','text/html','Foundation','','','foundation','','1','0','0','1','0','','','1','4','2','1','1','1','1527242017','1','1528103855','0','0','0','1527242053','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('299','document','text/html','Nr 1 (2013): Widzialność rzeczy','','','nr-1-2013-widzialnosc-rzeczy','','1','1527247527','0','253','1','','','1','40','1','1','1','1','1527247647','1','1534067644','0','0','0','1527247527','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('300','document','text/html','Autorzy','','','author','','1','0','0','257','1','','','1','0','1','0','1','1','1527251368','1','1528458649','0','0','0','1527251368','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('301','document','text/html','Krzysztof Pijarski','','','krzysztof-pijarski','','1','0','0','300','0','','','1','41','10','0','1','1','1527251535','1','1527251535','0','0','0','1527251535','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('302','document','text/html','Justyna Jaworska','','','justyna-jaworska','','1','0','0','300','0','','','1','41','6','0','1','1','1527251800','1','1527251800','0','0','0','1527251800','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('303','document','text/html','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”','Ty. Ja. Rzeczy. „Świat jako archiwum. Krytyczne modele historyczności”, seminarium pierwsze, 18 czerwca 2012','','ty-ja-rzeczy-swiat-jako-archiwum-krytyczne-modele-historycznosci','','1','1527504933','0','299','0','','','1','17','1','1','1','1','1527505013','1','1531221721','0','0','0','1527504933','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('304','document','text/html','Klara Czerniewska','','','klara-czerniewska','','1','0','0','300','0','','','1','41','9','0','1','1','1527505044','1','1527505044','0','0','0','1527505044','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('305','document','text/html','Tomasz Szerszeń','','','tomasz-szerszen','','1','0','0','300','0','','','1','41','17','0','1','1','1527505053','1','1527505053','0','0','0','1527505053','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('306','document','text/html','Karolina Ziębińska-Lewandowska','','','karolina-lewandowska','','1','0','0','300','0','','','1','41','7','0','1','1','1527505063','1','1527505189','0','0','0','1527505063','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('307','document','text/html','Adam Mazur','','','adam-mazur','','1','0','0','300','0','','','1','41','1','0','1','1','1527505071','1','1527505071','0','0','0','1527505071','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('314','document','text/html','Adam Lipszyc','','','adam-lipszyc','','1','0','0','300','0','','','1','41','0','0','1','1','1527505149','1','1528458455','0','0','0','1527505149','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('248','document','text/html','Kontakt','','','kontakt','','1','0','0','82','0','','','1','4','5','1','1','1','1393846835','1','1528103721','0','0','0','1393846835','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('249','document','text/html','Contact','','','contact','','1','0','0','289','0','','','1','24','5','1','1','1','1393846841','1','1528103866','0','0','0','1393846853','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('250','document','text/html','System','','','_system','','1','0','0','0','1','','','1','0','4','0','0','1','1426846107','1','1528799189','0','0','0','1426846107','1','','0','0','0','0','1','0','1','0');

INSERT INTO `widok_evo_site_content` VALUES ('318','document','text/html','Łukasz Zaremba','','','lukasz-zaremba','','1','0','0','300','0','','','1','41','11','0','1','1','1527505235','1','1527505235','0','0','0','1527505235','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('317','document','text/html','Mateusz Salwa','','','mateusz-salwa','','1','0','0','300','0','','','1','41','14','0','1','1','1527505220','1','1527505220','0','0','0','1527505220','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('253','document','text/html','Archiwum','','','archiwum','','1','0','0','58','1','','','1','16','3','1','1','1','1501070260','1','1528884630','0','0','0','1501070260','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('254','document','text/html','Archive','','','archive','','1','0','0','1','1','','','1','16','3','1','1','1','1501070289','1','1528103845','0','0','0','1501070289','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('256','document','text/html','Taxonomy','','','_taxonomy','','1','0','0','0','1','','','0','0','3','1','1','1','1502098948','1','1528799183','0','0','0','1502098948','1','','0','0','0','0','1','0','1','0');

INSERT INTO `widok_evo_site_content` VALUES ('257','document','text/html','Shared','','','_shared','','1','0','0','0','1','','','0','0','2','1','1','1','1502099084','1','1528799171','0','0','0','1502099084','1','','0','0','0','0','0','0','1','0');

INSERT INTO `widok_evo_site_content` VALUES ('313','document','text/html','Bill Brown','','','bill-brown','','1','0','0','300','0','','','1','41','2','0','1','1','1527505142','1','1527505142','0','0','0','1527505142','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('312','document','text/html','Iwona Kurz','','','iwona-kurz','','1','0','0','300','0','','','1','41','5','0','1','1','1527505115','1','1527505115','0','0','0','1527505115','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('263','document','text/html','issue: sections','','','filter-filter-example-1','','1','0','0','256','1','','','1','35','1','1','1','1','1507108381','1','1527675322','0','0','0','1507108381','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('264','document','text/html','Zbliżenie','','','option-1','','1','0','0','263','0','','','1','35','1','0','1','1','1507108418','1','1527237461','0','0','0','1507108418','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('265','document','text/html','Panorama','','','option-2','','1','0','0','263','0','','','1','35','2','0','1','1','1507108436','1','1527237458','0','0','0','1507108436','1','','0','0','0','0','1','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('322','document','text/html','You. Me. Things. „World as an Archive. Critical Modes of Historicity”','You. Me. Things. „World as an Archive. Critical Modes of Historicity” – Seminar 1','','you-me-things-world-as-an-archive-critical-modes-of-historicity','','1','0','0','320','0','','','1','17','1','1','1','1','1528103937','1','1531221611','0','0','0','1528105479','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('319','document','text/html','Paula Kaniewska','','','paula-kaniewska','','1','0','0','300','0','','','1','41','15','0','1','1','1527505249','1','1527505249','0','0','0','1527505249','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('309','document','text/html','Magda Szcześniak','','','magda-szczesniak','','1','0','0','300','0','','','1','41','12','0','1','1','1527505088','1','1528458427','0','0','0','1527505088','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('310','document','text/html','Marek Zaleski','','','marek-zaleski','','1','0','0','300','0','','','1','41','13','0','1','1','1527505094','1','1527505094','0','0','0','1527505094','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('292','document','text/html','Editorial Team','','','editorial-team','','1','0','0','289','0','','','1','4','1','1','1','1','1527241571','1','1528103898','0','0','0','1527241648','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('289','document','text/html','About','','','about','','1','0','0','1','1','','','1','26','1','1','1','1','1527241571','1','1527241592','0','0','0','1527241592','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('297','document','text/html','CFP','','','cfp','','1','0','0','1','0','','','1','4','4','1','1','1','1527241983','1','1528103837','0','0','0','1527241996','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('291','document','text/html','Journal profile','','','journal-profile','','1','0','0','289','0','','','1','4','0','1','1','1','1527241571','1','1528103904','0','0','0','1527241615','1','','0','0','0','0','0','0','0','1');

INSERT INTO `widok_evo_site_content` VALUES ('321','document','text/html','Issue 1. Visibility of Things.','','','issue-1-visibility-of-things','','1','0','0','320','0','','','1','17','1','1','1','1','1528103937','1','1528206964','0','0','0','1528105296','1','','0','0','0','0','0','0','1','1');

INSERT INTO `widok_evo_site_content` VALUES ('316','document','text/html','Daniel Malone','','','daniel-malone','','1','0','0','300','0','','','1','41','3','0','1','1','1527505208','1','1527505208','0','0','0','1527505208','1','','0','0','0','0','0','0','1','1');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_content_metatags`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_content_metatags`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `metatag_id` (`metatag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';

#
# Dumping data for table `widok_evo_site_content_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_htmlsnippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_htmlsnippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `widok_evo_site_htmlsnippets`
#

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('1','block-foot','','2','none','39','0','</main>\n\n[!evoSystemInfo?&theme=`dark`!]\n\n<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\" integrity=\"sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=\" crossorigin=\"anonymous\"></script>\n<script>window.jQuery || document.write(\'<script src=\"[+cfg_tpl_path+]js/vendor/jquery-1.12.4.min.js\"><\\/script>\')</script>\n\n</body>\n</html>','0','0','1533990016','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('140','pb-tpl-profiles__item-simple','PageBuilder block tpl','2','none','47','0','<div class=\"c-team c-team--basic\">\n	<div class=\"c-team__desc\">\n		<h3 class=\"c-team__title\">[+name+]</h3>\n		<p class=\"c-team__meta\">\n			[[if? &separator=`||` &is=`[+university+]||notempty` &then=`<span><a href=\"[[addHttp?&url=`[+url+]`]]\" target=\"_blank\">[+url+]</a></span>`]]\n			[[if? &separator=`||` &is=`[+url+]||notempty` &then=`<span>[+university+]</span>`]]\n		</p>\n		<div class=\"u-typo\">\n			[+content+]\n		</div>\n	</div>\n</div>','0','0','1533993196','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('2','mm_rules','Default ManagerManager rules. Should be modified for your own sites.','2','none','4','0','// hide fields\n\nmm_hideFields(\'content\');\nmm_hideFields(\'description\');\nmm_hideFields(\'introtext\');\nmm_hideFields(\'menutitle\');\n\n// new weblink condition\n\nif (is_array($content) && $content[\'type\'] != \'reference\') {\n	mm_hideFields(\'link_attributes\');\n	mm_hideFields(\'longtitle\',\'\',\'22,35,39,40,41\');\n} \nelse {\n	mm_hideFields(\'longtitle\');\n  //mm_hideFields(\'content\');\n}\n\n// new document condition\n\nif (is_array($content) && $content[\'template\'] == \'22\') {\n	mm_hideFields(\'alias\');\n	mm_hideFields(\'link_attributes\');\n	mm_hideFields(\'menuindex\');\n	mm_hideFields(\'pagetitle\');\n	mm_hideFields(\'parent\');\n	mm_hideFields(\'show_in_menu\');\n  //mm_hideFields(\'content\');\n	mm_hideTabs(\'access,settings\');\n} \nelse {\n  mm_moveFieldsToTab(\'show_in_menu\', \'settings\');\n  mm_moveFieldsToTab(\'menuindex\', \'settings\');\n  //mm_moveFieldsToTab(\'parent\', \'settings\');\n  mm_moveFieldsToTab(\'alias\', \'settings\');\n  //mm_moveFieldsToTab(\'template\', \'settings\');\n  mm_moveFieldsToTab(\'published\', \'general\');\n  //mm_moveFieldsToTab(\'content\', \'settings\');\n  //mm_moveFieldsToTab(\'content\', \'general\');\n}\n\n// rename field\n\nmm_renameField(\'alias\',\'Alias URL\');\nmm_renameField(\'template\',\'Szablon\');\n\n// default field value\n\nmm_default(\'searchable\',\'0\',\'\',\'8,35,41\');\nmm_default(\'show_in_menu\',\'0\',\'\',\'17,35,41\');\nmm_default(\'pub_date\',\'\',\'\',\'6,17\');\n\n// required fields\n\n//mm_requireFields(\'meta_description\');\n\n// hide templates\n\nmm_hideTemplates(\'3,8,13,14,15,16,25\',\'2,3\');\n\n// widgets\n\nmm_widget_showimagetvs(\'\',250,250); // Always give a preview of Image TVs\nmm_ddMaxLength(\'pagetitle\', \'\', \'\', 70);\n//mm_ddMaxLength(\'article_summary\', \'\', \'\', 150);\nmm_ddMaxLength(\'meta_custom_title\', \'\', \'\', 70);\nmm_ddMaxLength(\'meta_description\', \'\', \'\', 320);\n\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\nif($modx->db->getValue(\"SELECT COUNT(id) FROM \" . $modx->getFullTableName(\'site_tmplvars\') . \" WHERE name=\'documentTags\'\")) {\n    mm_widget_tags(\'documentTags\',\',\'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\n','1','0','1531727916','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('133','pb-tpl-profiles','PageBuilder block tpl','2','none','47','0','<h2><span>[+name+]</span></h2>\n[+item+]','0','0','1533992945','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('134','pb-tpl-profiles__item','PageBuilder block tpl','2','none','47','0','<div class=\"c-team\">\n	[[if? &is=`[+image+]:notempty` &then=`\n	<div class=\"c-team__image\">\n		<img src=\"[+image+]\" alt=\"\">\n	</div>\n	`]]\n	<div class=\"c-team__desc\">\n		<h3 class=\"c-team__title\">[+name+]</h3>\n		<p class=\"c-team__meta\">\n			[[if? &separator=`||` &is=`[+university+]||notempty` &then=`<span><a href=\"[[addHttp?&url=`[+url+]`]]\" target=\"_blank\">[+url+]</a></span>`]]\n			[[if? &separator=`||` &is=`[+url+]||notempty` &then=`<span>[+university+]</span>`]]\n		</p>\n		<div class=\"u-typo\">\n			[+content+]\n		</div>\n	</div>\n</div>','0','0','1533993076','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('8','wf-outer-ul','','2','none','8','0','<ul>\n[+wf.wrapper+]\n</ul>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('13','block-head','','2','none','39','0','[[siteConfig]]<!DOCTYPE html>\n<!--[if lt IE 7 ]><html dir=\"ltr\" lang=\"[+cfg_lang+]\" class=\"ie ie6 lte7 lte8 lte9\"><![endif]-->\n<!--[if IE 7 ]><html dir=\"ltr\" lang=\"[+cfg_lang+]\" class=\"ie ie7 lte8 lte9\"><![endif]-->\n<!--[if IE 8 ]><html dir=\"ltr\" lang=\"[+cfg_lang+]\" class=\"ie ie8 lte9\"><![endif]-->\n<!--[if IE 9 ]><html dir=\"ltr\" lang=\"[+cfg_lang+]\" class=\"ie ie9\"><![endif]-->\n<!--[if (gt IE 9)|!(IE)]><!--><html dir=\"ltr\" lang=\"[+cfg_lang+]\"> <!--<![endif]-->\n	<head>\n		<base href=\"[+cfg_url_base+]\">\n\n		<meta charset=\"utf-8\">\n\n		<title>[[if? &is=`[*meta_custom_title*]:notempty` &then=`[*meta_custom_title*]` &else=`[[if? &is=`[*template*]:not:3` &then=`[*pagetitle*] | `]][(site_name)]`]]</title>\n\n		<meta name=\"description\" content=\"[*meta_description:notags:strip:esc*]\">\n		<meta name=\"subject\" content=\"company\">\n		<meta name=\"copyright\" content=\"[(site_name)]\">\n		<meta name=\"author\" content=\"[(site_name)]\">\n		<meta name=\"robots\" content=\"index,follow\">\n		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n\n		<link rel=\"canonical\" href=\"[+cfg_url_base+][[if? &is=`[*template*]:not:3` &then=`[~[*id*]~]`]]\">\n		<link rel=\"alternate\" href=\"[+cfg_url_base+]\" hreflang=\"pl\">\n		<link rel=\"alternate\" href=\"[+cfg_url_base+]en\" hreflang=\"en\">\n\n		<!-- Schema.org markup for Google+ -->\n		<meta itemprop=\"name\" content=\"[[if? &is=`[*meta_custom_title*]:notempty` &then=`[*meta_custom_title:esc*]` &else=`[[if? &is=`[*template*]:not:3` &then=`[*pagetitle:esc*] | `]][(site_name)]`]]\">\n		<meta itemprop=\"description\" content=\"[*meta_description:notags:strip:esc*]\">\n		<meta itemprop=\"image\" content=\"[+cfg_meta_img+]\">\n\n		<!-- Twitter Card -->\n		<meta name=\"twitter:card\" value=\"summary\">\n		<meta name=\"twitter:title\" content=\"[[if? &is=`[*meta_custom_title*]:notempty` &then=`[*meta_custom_title:esc*]` &else=`[[if? &is=`[*template*]:not:3` &then=`[*pagetitle:esc*] | `]][(site_name)]`]]\">\n		<meta name=\"twitter:description\" content=\"[*meta_description:notags:strip:esc*]\">\n		<meta name=\"twitter:image:src\" content=\"[+cfg_meta_img+]\">\n\n		<!-- Open Graph -->\n		<meta property=\"og:url\" content=\"[+cfg_url_base+][[if? &is=`[*template*]:not:3` &then=`[~[*id*]~]`]]\">\n		<meta property=\"og:site_name\" content=\"[(site_name)]\">\n		<meta property=\"og:title\" content=\"[[if? &is=`[*meta_custom_title*]:notempty` &then=`[*meta_custom_title:esc*]` &else=`[[if? &is=`[*template*]:not:3` &then=`[*pagetitle:esc*] | `]][(site_name)]`]]\">\n		<meta property=\"og:description\" content=\"[*meta_description:notags:strip:esc*]\">\n		<meta property=\"og:image\" content=\"[+cfg_meta_img+]\">\n		<meta property=\"og:image:type\" content=\"image/jpeg\">\n		<meta property=\"og:image:width\" content=\"1200\">\n		<meta property=\"og:image:height\" content=\"630\">\n		\n		<style>\n			/* issue color */\n			.tpl-17 #header,\n			.tpl-40 #header {\n				background-color: [+cfg_latestIssue_color+] !important;\n			}\n			.c-issue-toc__section-title,\n			.c-issue-toc__article:before,\n			.c-issue-toc__article-authors,\n			.c-article-meta__author,\n			.u-typo figcaption,\n			.u-typo a,\n			.u-typo a:hover,\n			.u-typo h1,\n			.u-typo h2,\n			.u-typo h3,\n			.u-typo h4,\n			.c-footnotes__item {\n				color: [+cfg_latestIssue_color+];\n			}\n		</style>\n\n	</head>\n	<body class=\"tpl-[*template*] page-id-[*id*] parent-id-[*parent*]\">\n    \n    <div id=\"preloader\"></div>\n		\n		<header id=\"header\">\n     \n      <div class=\"c-navbar\">\n        <a class=\"c-sitelogo\" href=\"[+cfg_url_home+]\">\n          <span class=\"c-sitelogo__icon\"><img src=\"[+cfg_tpl_path+]img/logo.svg\" alt=\"[(site_name)]\"></span>\n          <span class=\"c-sitelogo__full u-underline-border\">[(site_name)]</span>\n        </a>\n        <div class=\"c-headertools\">\n          <ul>\n            <li class=\"c-headertools__lang\">\n              <a class=\"c-headertools__lang-link u-underline-border\" href=\"[+cfg_switchLang_link+]\">[+cfg_switchLang_text+]</a>\n            </li>\n            <li class=\"c-headertools__nav\">\n              <button type=\"button\" class=\"c-headertools__nav-button js-toggle-nav\">\n                <span></span>\n              </button>\n            </li>\n            <li class=\"c-headertools__search\">\n              <a href=\"[~[+cfg_id_search+]~]\">\n                <svg class=\"c-headertools__search-icon\" version=\"1.0\"\n                     xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:a=\"http://ns.adobe.com/AdobeSVGViewerExtensions/3.0/\"\n                     x=\"0px\" y=\"0px\" width=\"28px\" height=\"28px\" viewBox=\"-0.399 -0.399 28 28\"\n                     overflow=\"visible\" enable-background=\"new -0.399 -0.399 28 28\" xml:space=\"preserve\">\n                  <defs>\n                  </defs>\n                  <g>\n                    <circle fill=\"none\" stroke=\"#000000\" stroke-width=\"2\" cx=\"12\" cy=\"12\" r=\"11\"/>\n                    <line fill=\"none\" stroke=\"#000000\" stroke-width=\"2\" x1=\"20.467\" y1=\"20.467\" x2=\"26.496\" y2=\"26.495\"/>\n                  </g>\n                </svg>\n              </a>\n            </li>\n          </ul>\n        </div>\n        <div class=\"c-headerissue\">\n          <span class=\"c-headerissue__title\">[+lexicon.numberShort+]</span>\n          <span class=\"c-headerissue__number\">[+cfg_latestIssue_number+]</span>\n        </div>\n      </div>\n      \n      <nav class=\"c-sitenav\">\n        <div class=\"c-sitenav__main\">\n          <ul>\n            <li class=\"c-sitenav__search\">\n              <svg version=\"1.0\"\n                   xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:a=\"http://ns.adobe.com/AdobeSVGViewerExtensions/3.0/\"\n                   x=\"0px\" y=\"0px\" width=\"28px\" height=\"28px\" viewBox=\"-0.399 -0.399 28 28\"\n                   overflow=\"visible\" enable-background=\"new -0.399 -0.399 28 28\" xml:space=\"preserve\">\n                <defs>\n                </defs>\n                <g>\n                  <circle fill=\"none\" stroke=\"#000000\" stroke-width=\"2\" cx=\"12\" cy=\"12\" r=\"11\"/>\n                  <line fill=\"none\" stroke=\"#000000\" stroke-width=\"2\" x1=\"20.467\" y1=\"20.467\" x2=\"26.496\" y2=\"26.495\"/>\n                </g>\n              </svg>\n              <a href=\"[~[+cfg_id_search+]~]\">Wyszukaj</a>\n            </li>\n            [[Wayfinder? \n						&startId=`[+cfg_root+]` \n						&level=`1` \n						&hereClass=`active` \n						&outerTpl=`wf-outer-empty` \n						&rowTpl=`wf-row-li` \n						&titleOfLinks=`pagetitle`\n						&textOfLinks=`pagetitle`\n						]]\n          </ul>\n        </div>\n      </nav>\n      \n    </header>\n    \n    <main id=\"main\">\n			','0','0','1534068379','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('138','block-subnav','','2','none','39','0','<section class=\"m-subnav\">\n	<div class=\"container-fluid\">\n		<div class=\"content-canvas\">\n			<div class=\"c-subnav clearfix\">\n				[[Wayfinder? \n				&startId=`[+cfg_root_lvl_2+]` \n				&level=`1` \n				&hereClass=`active` \n				&outerTpl=`wf-outer-ul` \n				&rowTpl=`wf-row-li-subnav` \n				&titleOfLinks=`pagetitle`\n				&textOfLinks=`pagetitle`\n				]]\n			</div>\n		</div>\n	</div>\n</section>','0','0','1533992090','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('14','wf-row-li','','2','none','8','0','<li[+wf.classes+]>\n	<a href=\"[+wf.link+]\" title=\"[+wf.title+]\" [+wf.attributes+]>[+wf.linktext+]</a>[+wf.wrapper+]\n</li>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('16','wf-inner-ul','','2','none','8','0','<ul[+wf.classes+]>\n[+wf.wrapper+]\n</ul>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('20','as-tpl-grpresult','','0','none','10','0','[+as.grpResultsDef:is=`1`:then=`\n<div id=\"[+as.grpResultId+]\" class=\"ajaxSearch_grpResult\">\n[+as.headerGrpResult+]\n[+as.footerGrpResult+]\n[+as.listResults+]\n[+as.footerGrpResult+]\n</div>\n`:else=`\n<!-- <div class=\"ajaxSearch_grpResultName\">[+as.grpResultNameShow:is=`1`:then=`[+as.grpResultName+]`+]\n<span class=\"ajaxSearch_grpResultsDisplayed\">[+as.grpResultsDisplayedText+]</span></div> -->\n`+]','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('21','as-tpl-results','','0','none','10','0','[+as.noResults:is=`1`:then=`\n<p>[+as.noResultText+]<p>\n`:else=`\n<p>[+as.resultsFoundText+] <!-- [+as.resultsDisplayedText+] --></p>\n  [+as.listGrpResults+]\n`+]','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('22','as-tpl-result','','2','none','10','0','<div class=\"search-item\">\n	<h3><a href=\"[+as.resultLink+]\" title=\"[+as.longtitle+]\">[+as.pagetitle+]</a></h3>\n	<p>[+as.extract+]</p>\n	\n	<!-- \n<a href=\"[+as.resultLink+]\" title=\"[+as.longtitle+]\">[+as.resultLink+]</a>\n[+as.descriptionShow:is=`1`:then=`<p>[+as.description+]</p>`+]\n[+as.extractShow:is=`1`:then=`<p>[+as.extract+]</p>`+] -->\n</div>\n','0','0','1520797759','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('23','as-tpl-input','','0','none','10','0','[+as.showInputForm:is=`1`:then=`\n<form id=\"[+as.formId+]\" name=\"[+as.formId+]\" action=\"[+as.formAction+]\" method=\"get\">\n  <fieldset>\n    [+as.showAsId:is=`1`:then=`<input type=\"hidden\" name=\"[+as.asName+]\" value=\"[+as.asId+]\" />`+]\n    <!-- <input type=\"hidden\" name=\"advsearch\" value=\"[+as.advSearch+]\" /> -->\n    <input id=\"[+as.inputId+]\" type=\"text\" name=\"search\" placeholder=\"Wpisz szukane wyrażenie...\" value=\"[+as.inputValue+]\"[+as.inputOptions+] />\n    <input type=\"submit\" value=\"Go\" />\n  </fieldset>\n</form>\n`+]','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('43','wf-outer-empty','','2','none','8','0','[+wf.wrapper+]','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('47','wf-row-li-parent','','2','none','8','0','<li class=\"[+wf.classnames+] dropdown\">\n	<a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\" title=\"[+wf.title+]\">[+wf.linktext+]</a>[+wf.wrapper+]\n</li>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('63','as-tpl-paging0','','0','none','10','0','[+as.tpl:is=`paging`:then=`\n	<nav class=\"pagination-wrapper\">\n		<ul class=\"pagination pagination-lg\">\n			[+as.pagingLinks+]\n		</ul>\n	</nav>\n`+]\n[+as.tpl:is=`pagingLinks`:then=`\n	<li><a href=\"[+as.pagingLink+]\">[+as.pagingText+]</a></li>\n`+]\n[+as.tpl:is=`pagingLinksCurrent`:then=`\n	<li class=\"active\"><span class=\"ajaxSearch_currentPage\">[+as.pagingText+]</span></li>\n`+]','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('76','block-article-img','','2','none','39','0','<div class=\"container\">\n	<p>\n		[[srcset? \n		&input=`[*article_img_fitv*]` \n		&sizes=`(min-width: 1200px) 1140px, \n		(min-width: 992px) 940px, \n		(min-width: 768px) 720px, \n		calc(100vw - 30px)` \n		&srcset=`330,546,720,940,1140,1440,1880`\n		&defaultSize=`1140`\n		&quality=`60`\n		&attrAlt=`Image alt text`\n		&attrClass=`img-responsive`\n		&attrStyle=`display: inline-block`\n		&attrCustom=`data-test=\"success\"`\n		]]\n	</p>\n</div>','0','0','1523623390','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('82','doclister-pagesTpl-wrap','','2','none','49','0','<ul class=\"[+class+]\">[+wrap+]</ul>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('83','doclister-pagesTpl-page','','2','none','49','0','<li><a href=\"[+link+]\">[+num+]</a></li>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('84','doclister-pagesTpl-current','','2','none','49','0','<li class=\"active\"><span>[+num+]</span></li>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('85','doclister-pagesTpl-dots','','2','none','49','0','...','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('86','doclister-pagesTpl-next','','2','none','49','0','<li><a href=\"[+link+]\">&raquo;</a></li>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('87','doclister-pagesTpl-prev','','2','none','49','0','<li><a href=\"[+link+]\">&laquo;</a></li>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('88','doclister-pagesTpl-next-off','','2','none','49','0','<li class=\"disabled\"><span>&raquo;</span></li>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('89','doclister-pagesTpl-prev-off','','2','none','49','0','<li class=\"disabled\"><span>&laquo;</span></li>','0','0','0','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('103','block-gallery','SimpleGallery','2','none','39','0','<div class=\"m-gallery lightbox-group\">\n	<div class=\"container\">\n		<h2 class=\"c-gallery-title\">SimpleGallery</h2>\n		[[sgLister?\n		&parents=`[*gallerySelector*]`\n		&thumbSnippet=`sgThumb`\n		&thumbOptions=`{\n		\"default\":\"thumb\",\n		\"zoom\":\"zoom\"\n		}`\n		&display=`1000`\n		&ownerTPL=`sg-wrap`\n		&tpl=`sg-item`\n		]]\n	</div>\n</div>','0','0','1522313643','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('104','sg-wrap','SimpleGallery','2','none','17','0','<ul>[+dl.wrap+]</ul>','0','0','1503951279','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('105','sg-item','SimpleGallery','2','none','17','0','<a class=\"lightbox-item\" data-group=\"gallery_[+sg_rid+]\" href=\"[+thumb_zoom.sg_image+]\"><img src=\"[+thumb.sg_image+]\" alt=\"[+e.sg_title+]\"></a>','0','0','1521294181','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('109','pb-tpl-content-image','PageBuilder block tpl','2','none','47','0','<div class=\"u-typo\">\n	<figure>\n		[[srcset? \n		&input=`[+image+]` \n		&sizes=`(min-width: 1600px) 1020px, (min-width: 1200px) 930px, (min-width: 992px) 910px, (min-width: 768px) 678px, calc(100vw - 30px)` \n		&srcset=`330,678,705,934,1024,1280,1356,1868`\n		&defaultSize=`1024`\n		&quality=`80`\n		]]\n		[[if? &separator=`||` &is=`[+image_caption+]||!empty` &then=`<figcaption>[+image_caption+]</figcaption>`]]\n	</figure>\n</div>','0','0','1528456806','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('111','pb-tpl-content-lead','PageBuilder block tpl','2','none','47','0','<p class=\"lead\">[+lead+]</p>','0','0','1528456813','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('112','pb-tpl-content-quote','PageBuilder block tpl','2','none','47','0','<blockquote>\n	<p>[+quotecontent+]</p>\n	[[if? &is=`[+quoteauthor+]:notempty` &then=`<footer>[+quoteauthor+]</footer>`]]\n</blockquote>','0','0','1528456823','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('113','pb-tpl-content-text','PageBuilder block tpl','2','none','47','0','<div class=\"u-typo\">\n	[+richtext+]\n</div>','0','0','1528456842','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('119','pb-tpl-content-youtube','PageBuilder block tpl','2','none','47','0','<div class=\"embed-responsive embed-responsive-16by9\" style=\"margin-bottom: 2em;\">\n	<iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/[+youtube_url:youtube_id+]?rel=0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n</div>','0','0','1528456861','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('123','fl-contact-form-pl','FormLister tpl','2','none','7','0','<h3>Formularz kontaktowy</h3>\n\n[+form.messages+]\n\n<form method=\"post\" enctype=\"multipart/form-data\">\n\n	<input type=\"hidden\" name=\"formid\" value=\"flContactForm\">\n\n	<div class=\"form-group [+name.classname+]\">\n		<label for=\"inputName\">Imię i nazwisko *</label>\n		<input class=\"form-control\" id=\"inputName\" name=\"name\" type=\"text\" value=\"[+name.value+]\">\n		[+name.error+]\n	</div>\n\n	<div class=\"form-group [+email.classname+]\">\n		<label for=\"inputEmail\">Adres e-mail *</label>\n		<input class=\"form-control\" id=\"inputEmail\" name=\"email\" type=\"text\" value=\"[+email.value+]\">\n		[+email.error+]\n	</div>\n\n	<div class=\"form-group [+phone.classname+]\">\n		<label for=\"inputPhone\">Telefon</label>\n		<input class=\"form-control\" id=\"inputPhone\" name=\"phone\" type=\"text\" value=\"[+phone.value+]\">\n		[+phone.error+]\n	</div>\n\n	<div class=\"form-group [+subject.classname+]\">\n		<label for=\"inputSubject\">Temat</label>\n		<input class=\"form-control\" id=\"inputSubject\" name=\"subject\" type=\"text\" value=\"[+subject.value+]\">\n		[+subject.error+]\n	</div>\n\n	<div class=\"form-group [+subject2.classname+]\">\n		<label for=\"inputSubject\">Area of Interest: *</label>\n			<select class=\"form-control\" id=\"inputSubject\" name=\"subject2\" type=\"text\">\n				<option value=\"\"></option>\n				<option value=\"General Inquiries\" [+s.subject2.General Inquiries+]>General Inquiries</option>\n				<option value=\"Press or Interview Request\" [+s.subject2.Press or Interview Request+]>Press or Interview Request</option>\n				<option value=\"Partnership Opportunities\" [+s.subject2.Partnership Opportunities+]>Partnership Opportunities</option>\n			</select>\n			[+subject2.error+]\n	</div>\n\n	<div class=\"form-group [+message.classname+]\">\n		<label for=\"inputMessage\">Treść zapytania *</label>\n		<textarea class=\"form-control\" id=\"inputMessage\" name=\"message\" rows=\"6\">[+message.value+]</textarea>\n		[+message.error+]\n	</div>\n\n	<div class=\"form-group [+attachment.classname+]\">\n		<label for=\"inputFile\">Załącznik</label>\n		<input id=\"inputFile\" name=\"attachment\" type=\"file\">\n		[+attachment.error+]\n	</div>\n\n	<div class=\"form-group [+vericode.classname+]\">\n		<label for=\"inputVericode\">Kod weryfikacyjny *</label>\n		<input class=\"form-control\" type=\"text\" id=\"inputVericode\" name=\"vericode\" maxlength=\"100\" value=\"\" style=\"margin: 0;\">\n		<img src=\"[+captcha+]\" alt=\"Captcha Code\">\n		[+vericode.error+]\n	</div>\n                    \n	<p>* - pola wymagane</p>\n\n	<div class=\"form-group\">\n		<button type=\"submit\" class=\"btn btn-primary\">Wyślij wiadomość</button>\n	</div>\n\n</form>','0','0','1521158557','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('124','fl-contact-report','FormLister Report tpl','2','none','7','0','<table>\n<tr valign=\"top\"><td>Temat:</td><td>[+subject+]</td></tr>\n<tr valign=\"top\"><td>Nadawca:</td><td>[+name+]</td></tr>\n<tr valign=\"top\"><td>E-mail:</td><td>[+email+]</td></tr>\n<tr valign=\"top\"><td>Telefon:</td><td>[+phone+]</td></tr>\n<tr valign=\"top\"><td>Treść:</td><td>[+message:nl2br+]</td></tr>\n</table>','0','0','1516993774','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('136','dl-archiveIssue','','2','none','48','0','<div class=\"c-issue-meta\">\n  <a href=\"[+url+]\"><img class=\"c-issue-meta__img\" src=\"[+tv.issueCoverImage+]\" alt=\"[+tv.issueCoverInfo:esc+]\"></a>\n  <div class=\"c-issue-meta__info\">\n    <h3 class=\"c-issue-meta__title\"><a href=\"[+url+]\"><span class=\"combined\"><span class=\"number\"></span> <span class=\"title\">[+pagetitle+]</span></span></a></h3>\n    <p>\n      <span>[+lexicon.issueEditors+]: [+prepared.editors+]</span>\n      <span>[+lexicon.coverArtwork+]: [+tv.issueCoverInfo+]</span>\n    </p>\n  </div>\n  <div class=\"clearfix\"></div>\n</div>','0','1528469366','1533996158','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('137','dl-issueArticle','','2','none','48','0','<li>\n	<a href=\"[+url+]\"><b>[+pagetitle+]</b></a>\n	[+prepared.authors+]\n	[+prepared.link+]\n	[+prepared.translationLink+]\n</li>','0','0','1528469732','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('139','wf-row-li-subnav','','2','none','8','0','<li[+wf.classes+]>\n	<a href=\"[+wf.link+]\" title=\"[+wf.title+]\" [+wf.attributes+]><span>[+wf.linktext+]</span></a>[+wf.wrapper+]\n</li>','0','0','1533992129','0');

INSERT INTO `widok_evo_site_htmlsnippets` VALUES ('128','block-pagetitle','','2','none','39','0','<h1><span>[*longtitle:ifempty=`[*pagetitle*]`*]</span></h1>','0','1522313754','1533991781','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_keywords`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_keywords`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site keyword list';

#
# Dumping data for table `widok_evo_site_keywords`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_metatags`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_metatags`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_metatags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags';

#
# Dumping data for table `widok_evo_site_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_module_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_module_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `widok_evo_site_module_access`
#

INSERT INTO `widok_evo_site_module_access` VALUES ('76','2','1');

INSERT INTO `widok_evo_site_module_access` VALUES ('79','1','1');

INSERT INTO `widok_evo_site_module_access` VALUES ('80','12','1');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_module_depobj`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_module_depobj`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `widok_evo_site_module_depobj`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_modules`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_modules`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `widok_evo_site_modules`
#

INSERT INTO `widok_evo_site_modules` VALUES ('1','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','36','0','0','','0','','0','0','','1','',' \n/**\n * Doc Manager\n * \n * Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions\n * \n * @category	module\n * @version 	1.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@guid docman435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/docmanager/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  09/04/2016\n */\n\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');

INSERT INTO `widok_evo_site_modules` VALUES ('2','Doc Finder','<b>1.7</b> Doc Finder. Find document.','0','0','36','0','0','','0','','0','0','','0','','include_once(MODX_BASE_PATH . \'assets/modules/docfinder/docfinder.module.php\');');

INSERT INTO `widok_evo_site_modules` VALUES ('12','Extras','<strong>0.1.3</strong> first repository for Evolution CMS','0','0','4','0','0','','0','','0','0','store435243542tf542t5t','1','',' \n/**\n * Extras\n * \n * first repository for Evolution CMS\n * \n * @category	module\n * @version 	0.1.3\n * @internal	@properties\n * @internal	@guid store435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/store/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  25/11/2016\n */\n\n//AUTHORS: Bumkaka & Dmi3yy \ninclude_once(\'../assets/modules/store/core.php\');');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_plugin_events`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_plugin_events`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `widok_evo_site_plugin_events`
#

INSERT INTO `widok_evo_site_plugin_events` VALUES ('7','31','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('20','42','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('20','41','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('20','40','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('20','36','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('20','35','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('20','34','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('36','201','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('36','202','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('36','203','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('36','89','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('36','206','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('37','202','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('37','203','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('37','201','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('38','203','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('38','201','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('38','202','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('40','202','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('40','203','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('40','201','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('42','100','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('78','31','3');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('78','29','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('69','3','6');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('70','202','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('71','212','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('72','202','3');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('83','29','2');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('82','1040','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('82','1042','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('82','1041','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('81','202','2');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('83','98','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('82','1001','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('78','205','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('78','97','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','25','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','27','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','37','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','39','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','43','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','45','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','49','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','51','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','55','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','57','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','75','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','77','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','206','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','210','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('94','211','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('97','202','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('99','28','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('99','29','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('99','30','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('99','31','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('99','35','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('99','53','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('99','205','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('101','93','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('101','81','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('101','80','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('102','92','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('102','91','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('102','88','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('102','87','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('102','85','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('102','20','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('102','3','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('105','1000','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('105','202','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('105','70','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('106','88','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('106','73','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('106','47','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('106','41','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('106','35','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('106','29','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('106','23','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('109','89','2');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('109','31','4');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('109','205','2');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('109','98','2');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('111','207','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('113','206','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('113','215','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('113','210','1');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('114','4','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('114','79','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('114','90','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('114','1000','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('115','3','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('115','13','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('115','28','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('115','31','0');

INSERT INTO `widok_evo_site_plugin_events` VALUES ('115','92','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_plugins`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_plugins`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `widok_evo_site_plugins`
#

INSERT INTO `widok_evo_site_plugins` VALUES ('7','CustomAlias','','0','4','0','// Get the relevant dates and other desired fields\n$edited    = time();\n$published = $_POST[\'pub_date\'];\n$created   = $_POST[\'createdon\'];\n$template  = $_POST[\'template\'];\n\n// Set which date value to use\n//if ($published != \'\') {$date = $published;} \nif ($created != \'\') {\n	$date = $created;\n} \nelse {\n	$date = $edited;\n}\n\n// Set the date formatting\n//$dateFormatString = \'%Y-%m-%d\';\n$dateFormatString = \'%Y-%m\';\n$date = strftime($dateFormatString, $date);\n\n// Get the ID of the document, if you want to use it in your alias\n$id = $modx->event->params[\'id\'];\n\n// *****************************************************************\n// EDIT HERE:\n// *****************************************************************\n\nswitch($template){\n	case \'9999\' :  $alias_new = $_POST[\'pagetitle\'].\'-\'.$id; break; // blog article\n	default   :  $alias_new = $_POST[\'pagetitle\']; break;\n}\n\n// *****************************************************************\n// YOU CAN STOP EDITING HERE.\n// *****************************************************************\n\ninclude_once MODX_BASE_PATH . \'assets/plugins/customalias/customalias.inc.php\';','1','','0',' ','0','1527513073');

INSERT INTO `widok_evo_site_plugins` VALUES ('20','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','4','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','','0','0');

INSERT INTO `widok_evo_site_plugins` VALUES ('42','TransAlias','<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides','0','4','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"common\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"utf8lowercase\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"legal characters\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','1',' ','0','1524524144');

INSERT INTO `widok_evo_site_plugins` VALUES ('113','ManagerCss','Customize Evo Manager look','0','4','0','$e = & $modx->Event;\n\nif ( $e->name == \" OnManagerTopPrerender\" ) {\n	\n}\n\nif ( $e->name == \"OnManagerTreePrerender\" ) {\n	$html = \'\n	<style>\n		#treeRoot > div:nth-child(-n+\'.$contextHowMany.\') > .node {\n			padding-top:    5px;\n			padding-bottom: 5px;\n			background-color: rgba(0,0,0,0.03) !important;\n		}\n		#treeRoot > div:nth-child(-n+\'.$contextHowMany.\') > div {\n			padding-top:    5px;\n			padding-bottom: 5px;\n		}\n		.dark #treeRoot > div:nth-child(-n+\'.$contextHowMany.\') > .node,\n		.darkness #treeRoot > div:nth-child(-n+\'.$contextHowMany.\') > .node {\n			background-color: rgba(255,255,255,0.05) !important;\n		}\n	</style>\n	\';\n	$e->output($html);\n}\n\nif ( $e->name == \"OnManagerMainFrameHeaderHTMLBlock\" ) {\n	\n}','1','{\n  \"contextHowMany\": [\n    {\n      \"label\": \"Number of contexts\",\n      \"type\": \"text\",\n      \"value\": \"6\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','1528753210','1531305078');

INSERT INTO `widok_evo_site_plugins` VALUES ('115','Quick Manager+','<strong>1.5.10</strong> Enables QuickManager+ front end content editing support','0','70','0','\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.10\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;false &noconflictjq=jQuery noConflict mode in front-end;list;true,false;false &loadfa=Load Font Awesome css in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &position= Toolbar position;list;top,right,bottom,left,before;top &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv &removeBg=Remove toolbar background;list;yes,no;no &buttonStyle=QuickManager buttons CSS stylesheet;list;actionButtons,navButtons;navButtons  \n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr, Nicola1971.\n * @lastupdate  02/02/2018 \n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadfa, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $position, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass, $buttonStyle, $removeBg);\n}\n','0','{\"jqpath\":[{\"label\":\"Path to jQuery\",\"type\":\"text\",\"value\":\"assets\\/js\\/jquery.min.js\",\"default\":\"assets\\/js\\/jquery.min.js\",\"desc\":\"\"}],\"loadmanagerjq\":[{\"label\":\"Load jQuery in manager\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfrontendjq\":[{\"label\":\"Load jQuery in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"noconflictjq\":[{\"label\":\"jQuery noConflict mode in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfa\":[{\"label\":\"Load Font Awesome css in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"loadtb\":[{\"label\":\"Load modal box in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tbwidth\":[{\"label\":\"Modal box window width\",\"type\":\"text\",\"value\":\"80%\",\"default\":\"80%\",\"desc\":\"\"}],\"tbheight\":[{\"label\":\"Modal box window height\",\"type\":\"text\",\"value\":\"90%\",\"default\":\"90%\",\"desc\":\"\"}],\"hidefields\":[{\"label\":\"Hide document fields from front-end editors\",\"type\":\"text\",\"value\":\"parent\",\"default\":\"parent\",\"desc\":\"\"}],\"hidetabs\":[{\"label\":\"Hide document tabs from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"hidesections\":[{\"label\":\"Hide document sections from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"addbutton\":[{\"label\":\"Show add document here button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tpltype\":[{\"label\":\"New document template type\",\"type\":\"list\",\"value\":\"parent\",\"options\":\"parent,id,selected\",\"default\":\"parent\",\"desc\":\"\"}],\"tplid\":[{\"label\":\"New document template id\",\"type\":\"int\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"custombutton\":[{\"label\":\"Custom buttons\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"managerbutton\":[{\"label\":\"Show go to manager button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"logout\":[{\"label\":\"Logout to\",\"type\":\"list\",\"value\":\"manager\",\"options\":\"manager,front-end\",\"default\":\"manager\",\"desc\":\"\"}],\"disabled\":[{\"label\":\"Plugin disabled on documents\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"autohide\":[{\"label\":\"Autohide toolbar\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"position\":[{\"label\":\"Toolbar position\",\"type\":\"list\",\"value\":\"top\",\"options\":\"top,right,bottom,left,before\",\"default\":\"top\",\"desc\":\"\"}],\"editbuttons\":[{\"label\":\"Inline edit buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"editbclass\":[{\"label\":\"Edit button CSS class\",\"type\":\"text\",\"value\":\"qm-edit\",\"default\":\"qm-edit\",\"desc\":\"\"}],\"newbuttons\":[{\"label\":\"Inline new resource buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"newbclass\":[{\"label\":\"New resource button CSS class\",\"type\":\"text\",\"value\":\"qm-new\",\"default\":\"qm-new\",\"desc\":\"\"}],\"tvbuttons\":[{\"label\":\"Inline template variable buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"tvbclass\":[{\"label\":\"Template variable button CSS class\",\"type\":\"text\",\"value\":\"qm-tv\",\"default\":\"qm-tv\",\"desc\":\"\"}],\"removeBg\":[{\"label\":\"Remove toolbar background\",\"type\":\"list\",\"value\":\"no\",\"options\":\"yes,no\",\"default\":\"no\",\"desc\":\"\"}],\"buttonStyle\":[{\"label\":\"QuickManager buttons CSS stylesheet\",\"type\":\"list\",\"value\":\"navButtons\",\"options\":\"actionButtons,navButtons\",\"default\":\"navButtons\",\"desc\":\"\"}]}','1','','0','0');

INSERT INTO `widok_evo_site_plugins` VALUES ('101','Forgot Manager Login','<strong>1.1.7</strong> Resets your manager login when you forget your password via email confirmation','0','4','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0',' ','0','1521500607');

INSERT INTO `widok_evo_site_plugins` VALUES ('102','TinyMCE4','<strong>4.7.4</strong> Javascript rich text editor','0','4','0','\n/**\n * TinyMCE4\n *\n * Javascript rich text editor\n *\n * @category    plugin\n * @version     4.7.4\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal    @properties &styleFormats=Custom Style Formats <b>RAW</b><br/><br/><ul><li>leave empty to use below block/inline formats</li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2</i></li><li>Also accepts full JSON-config as per TinyMCE4 docs / configure / content-formating / style_formats</li></ul>;textarea; &styleFormats_inline=Custom Style Formats <b>INLINE</b><br/><br/><ul><li>will wrap selected text with span-tag + css-class</li><li>simple-format only</li></ul>;textarea;InlineTitle,cssClass1|InlineTitle2,cssClass2 &styleFormats_block=Custom Style Formats <b>BLOCK</b><br/><br/><ul><li>will add css-class to selected block-element</li><li>simple-format only</li></ul>;textarea;BlockTitle,cssClass3|BlockTitle2,cssClass4 &customParams=Custom Parameters<br/><b>(Be careful or leave empty!)</b>;textarea; &entityEncoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &pathOptions=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &resizing=Advanced Resizing;list;true,false;false &disabledButtons=Disabled Buttons;text; &webTheme=Web Theme;test;webuser &webPlugins=Web Plugins;text; &webButtons1=Web Buttons 1;text;bold italic underline strikethrough removeformat alignleft aligncenter alignright &webButtons2=Web Buttons 2;text;link unlink image undo redo &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400px &introtextRte=<b>Introtext RTE</b><br/>add richtext-features to \"introtext\";list;enabled,disabled;disabled &inlineMode=<b>Inline-Mode</b>;list;enabled,disabled;disabled &inlineTheme=<b>Inline-Mode</b><br/>Theme;text;inline &browser_spellcheck=<b>Browser Spellcheck</b><br/>At least one dictionary must be installed inside your browser;list;enabled,disabled;disabled &paste_as_text=<b>Force Paste as Text</b>;list;enabled,disabled;disabled\n * @internal    @events OnLoadWebDocument,OnParseDocument,OnWebPagePrerender,OnLoadWebPageCache,OnRichTextEditorRegister,OnRichTextEditorInit,OnInterfaceSettingsRender\n * @internal    @modx_category Manager and Admin\n * @internal    @legacy_names TinyMCE Rich Text Editor\n * @internal    @installset base\n * @logo        /assets/plugins/tinymce4/tinymce/logo.png\n * @reportissues https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Plugin docs https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Official TinyMCE4-docs https://www.tinymce.com/docs/\n * @author      Deesen\n * @lastupdate  2018-01-17\n */\nif (!defined(\'MODX_BASE_PATH\')) { die(\'What are you doing? Get out of here!\'); }\n\nrequire(MODX_BASE_PATH.\"assets/plugins/tinymce4/plugin.tinymce.inc.php\");','0','{\"styleFormats\":[{\"label\":\"Custom Style Formats <b>RAW<\\/b><br\\/><br\\/><ul><li>leave empty to use below block\\/inline formats<\\/li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2<\\/i><\\/li><li>Also accepts full JSON-config as per TinyMCE4 docs \\/ configure \\/ content-formating \\/ style_formats<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"styleFormats_inline\":[{\"label\":\"Custom Style Formats <b>INLINE<\\/b><br\\/><br\\/><ul><li>will wrap selected text with span-tag + css-class<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"default\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"desc\":\"\"}],\"styleFormats_block\":[{\"label\":\"Custom Style Formats <b>BLOCK<\\/b><br\\/><br\\/><ul><li>will add css-class to selected block-element<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"default\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"desc\":\"\"}],\"customParams\":[{\"label\":\"Custom Parameters<br\\/><b>(Be careful or leave empty!)<\\/b>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"entityEncoding\":[{\"label\":\"Entity Encoding\",\"type\":\"list\",\"value\":\"named\",\"options\":\"named,numeric,raw\",\"default\":\"named\",\"desc\":\"\"}],\"entities\":[{\"label\":\"Entities\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pathOptions\":[{\"label\":\"Path Options\",\"type\":\"list\",\"value\":\"Site config\",\"options\":\"Site config,Absolute path,Root relative,URL,No convert\",\"default\":\"Site config\",\"desc\":\"\"}],\"resizing\":[{\"label\":\"Advanced Resizing\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"disabledButtons\":[{\"label\":\"Disabled Buttons\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webTheme\":[{\"label\":\"Web Theme\",\"type\":\"test\",\"value\":\"webuser\",\"default\":\"webuser\",\"desc\":\"\"}],\"webPlugins\":[{\"label\":\"Web Plugins\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons1\":[{\"label\":\"Web Buttons 1\",\"type\":\"text\",\"value\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"default\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"desc\":\"\"}],\"webButtons2\":[{\"label\":\"Web Buttons 2\",\"type\":\"text\",\"value\":\"link unlink image undo redo\",\"default\":\"link unlink image undo redo\",\"desc\":\"\"}],\"webButtons3\":[{\"label\":\"Web Buttons 3\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons4\":[{\"label\":\"Web Buttons 4\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webAlign\":[{\"label\":\"Web Toolbar Alignment\",\"type\":\"list\",\"value\":\"ltr\",\"options\":\"ltr,rtl\",\"default\":\"ltr\",\"desc\":\"\"}],\"width\":[{\"label\":\"Width\",\"type\":\"text\",\"value\":\"100%\",\"default\":\"100%\",\"desc\":\"\"}],\"height\":[{\"label\":\"Height\",\"type\":\"text\",\"value\":\"400px\",\"default\":\"400px\",\"desc\":\"\"}],\"introtextRte\":[{\"label\":\"<b>Introtext RTE<\\/b><br\\/>add richtext-features to \\\"introtext\\\"\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineMode\":[{\"label\":\"<b>Inline-Mode<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineTheme\":[{\"label\":\"<b>Inline-Mode<\\/b><br\\/>Theme\",\"type\":\"text\",\"value\":\"inline\",\"default\":\"inline\",\"desc\":\"\"}],\"browser_spellcheck\":[{\"label\":\"<b>Browser Spellcheck<\\/b><br\\/>At least one dictionary must be installed inside your browser\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"paste_as_text\":[{\"label\":\"<b>Force Paste as Text<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}]}','0',' ','0','1521838898');

INSERT INTO `widok_evo_site_plugins` VALUES ('105','Updater','<strong>0.8.4</strong> show message about outdated CMS version','0','4','0','require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';\n\n\n','0','{\"version\":[{\"label\":\"Version:\",\"type\":\"text\",\"value\":\"evolution-cms\\/evolution\",\"default\":\"evolution-cms\\/evolution\",\"desc\":\"\"}],\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Show only to this role id:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Show only to this username:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"showButton\":[{\"label\":\"Show Update Button:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"show,hide,AdminOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"type\":[{\"label\":\"Type:\",\"type\":\"menu\",\"value\":\"tags\",\"options\":\"tags,releases,commits\",\"default\":\"tags\",\"desc\":\"\"}],\"branch\":[{\"label\":\"Commit branch:\",\"type\":\"text\",\"value\":\"develop\",\"default\":\"develop\",\"desc\":\"\"}]}','0',' ','0','1520370523');

INSERT INTO `widok_evo_site_plugins` VALUES ('106','CodeMirror','<strong>1.5</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)','0','4','0','\n/**\n * CodeMirror\n *\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)\n *\n * @category    plugin\n * @version     1.5\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\n * @internal    @modx_category Manager and Admin\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\n * @internal    @installset base\n * @reportissues https://github.com/evolution-cms/evolution/issues/\n * @documentation Official docs https://codemirror.net/doc/manual.html\n * @author      hansek from http://www.modxcms.cz\n * @author      update Mihanik71\n * @author      update Deesen\n * @author      update 64j\n * @lastupdate  08-01-2018\n */\n\n$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');','0','{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"12\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"2\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"2\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}','0',' ','0','1525780820');

INSERT INTO `widok_evo_site_plugins` VALUES ('82','sgThumb','<b>1.2.2</b> Plugin to create thumbnails for SimpleGallery images','0','14','0','/**\n * sgThumb\n * \n * Plugin to create thumbnails for SimpleGallery images\n *\n * @category 	plugin\n * @version 	1.2.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @author      Pathologic (m@xim.name)\n * @internal	@properties &tconfig=Thumbnails Configuration;textarea;See plugin code for details &keepOriginal=Keep original images;list;No,Yes;No &originalFolder=Folder for original images;text;original\n * @internal	@events OnFileBrowserUpload,OnSimpleGalleryRefresh,OnSimpleGalleryDelete,OnSimpleGalleryMove\n * @internal    @installset base\n */\n\nrequire MODX_BASE_PATH.\'assets/plugins/simplegallery/plugin.sgthumb.php\';','0','{\n  \"tconfig\": [\n    {\n      \"label\": \"Thumbnails Configuration\",\n      \"type\": \"textarea\",\n      \"value\": \"[\\n{\\\"template\\\":21,\\\"options\\\":\\\"w=250&h=250&zc=1&f=jpg&q=80\\\",\\\"folder\\\":\\\"thumb\\\"},\\n{\\\"template\\\":21,\\\"options\\\":\\\"w=1600&h=1600&f=jpg&q=80\\\",\\\"folder\\\":\\\"zoom\\\"}\\n]\",\n      \"default\": \"See plugin code for details\",\n      \"desc\": \"\"\n    }\n  ],\n  \"keepOriginal\": [\n    {\n      \"label\": \"Keep original images\",\n      \"type\": \"list\",\n      \"value\": \"No\",\n      \"options\": \"No,Yes\",\n      \"default\": \"No\",\n      \"desc\": \"\"\n    }\n  ],\n  \"originalFolder\": [\n    {\n      \"label\": \"Folder for original images\",\n      \"type\": \"text\",\n      \"value\": \"original\",\n      \"default\": \"original\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','1503945941','1521296346');

INSERT INTO `widok_evo_site_plugins` VALUES ('83','SimpleGallery','<b>1.2.2</b> Plugin to create image galleries','0','14','0','/**\n * SimpleGallery\n * \n * Plugin to create image galleries\n *\n * @category 	plugin\n * @version 	1.2.2\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @author      Pathologic (m@xim.name)\n * @internal	@properties &tabName=Tab name;text;SimpleGallery &controller=Controller class;text; &templates=Templates;text; &documents=Documents;text; &ignoreDoc=Ignore Documents;text; &role=Roles;text; &folder=Galleries folder;text;assets/galleries/ &thumbsCache=Thumbs cache folder;text;assets/.sgThumbs/ &w=Thumbs width;text;140 &h=Thumbs height;text;105 &customThumbOptions=Custom thumb options;text; &clientResize=Client Resize;list;No,Yes;No &jpegQuality=Jpeg quality;text;0.93 &skipPHPThumb=Skip PHPThumb;list;No,Yes;No \n * @internal	@events OnDocFormRender,OnEmptyTrash\n * @internal    @installset base\n */\n\nrequire MODX_BASE_PATH.\'assets/plugins/simplegallery/plugin.simplegallery.php\';\n','0','{\n  \"tabName\": [\n    {\n      \"label\": \"Tab name\",\n      \"type\": \"text\",\n      \"value\": \"Gallery\",\n      \"default\": \"SimpleGallery\",\n      \"desc\": \"\"\n    }\n  ],\n  \"controller\": [\n    {\n      \"label\": \"Controller class\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"templates\": [\n    {\n      \"label\": \"Templates\",\n      \"type\": \"text\",\n      \"value\": \"21\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"documents\": [\n    {\n      \"label\": \"Documents\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"ignoreDoc\": [\n    {\n      \"label\": \"Ignore Documents\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"role\": [\n    {\n      \"label\": \"Roles\",\n      \"type\": \"text\",\n      \"value\": \"\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"folder\": [\n    {\n      \"label\": \"Galleries folder\",\n      \"type\": \"text\",\n      \"value\": \"assets/galleries/sg/\",\n      \"default\": \"assets/galleries/\",\n      \"desc\": \"\"\n    }\n  ],\n  \"thumbsCache\": [\n    {\n      \"label\": \"Thumbs cache folder\",\n      \"type\": \"text\",\n      \"value\": \"assets/galleries/sg/_thumbs/\",\n      \"default\": \"assets/.sgThumbs/\",\n      \"desc\": \"\"\n    }\n  ],\n  \"w\": [\n    {\n      \"label\": \"Thumbs width\",\n      \"type\": \"text\",\n      \"value\": \"150\",\n      \"default\": \"140\",\n      \"desc\": \"\"\n    }\n  ],\n  \"h\": [\n    {\n      \"label\": \"Thumbs height\",\n      \"type\": \"text\",\n      \"value\": \"150\",\n      \"default\": \"105\",\n      \"desc\": \"\"\n    }\n  ],\n  \"customThumbOptions\": [\n    {\n      \"label\": \"Custom thumb options\",\n      \"type\": \"text\",\n      \"value\": \"wl=[+w+]&hp=[+h+]&zc=1&f=jpg\",\n      \"default\": \"\",\n      \"desc\": \"\"\n    }\n  ],\n  \"clientResize\": [\n    {\n      \"label\": \"Client Resize\",\n      \"type\": \"list\",\n      \"value\": \"No\",\n      \"options\": \"No,Yes\",\n      \"default\": \"No\",\n      \"desc\": \"\"\n    }\n  ],\n  \"jpegQuality\": [\n    {\n      \"label\": \"Jpeg quality\",\n      \"type\": \"text\",\n      \"value\": \"0.80\",\n      \"default\": \"0.93\",\n      \"desc\": \"\"\n    }\n  ],\n  \"skipPHPThumb\": [\n    {\n      \"label\": \"Skip PHPThumb\",\n      \"type\": \"list\",\n      \"value\": \"Yes\",\n      \"options\": \"No,Yes\",\n      \"default\": \"No\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','1503945964','1521296234');

INSERT INTO `widok_evo_site_plugins` VALUES ('81','DashboardBlog','','0','27','0','$e = &$modx->Event;\nswitch($e->name){\n	case \'OnManagerWelcomeHome\':\n		\n		$table_head = \'<div class=\"table-responsive\"><table class=\"table data\"><!-- <thead><tr><th>Tytuł</th></tr></thead> --><tbody>\';\n		$table_foot = \'</tbody></table></div>\';\n		\n    $params[\'depth\'] = \'3\';\n    $params[\'total\'] = \'10\';\n    $params[\'hideFolders\'] = \'1\';\n    $params[\'showInMenuOnly\'] = \'0\';\n    $params[\'showPublishedOnly\'] = \'0\';\n    $params[\'tpl\'] = \'@CODE: <tr><td><a target=\"main\" href=\"index.php?a=3&id=[+id+]&tab=0\" title=\"Edytuj\">[+pagetitle+]</a></td></tr>\';\n    $params[\'orderBy\'] = \'createdon DESC\';\n		\n		$params[\'id\'] = \'tabBlogPL\';\n    $params[\'parents\'] = \'253\';\n    $output = $modx->runSnippet(\'DocLister\', $params);\n		$widgets[\'blogPL\'] = array(\n			\'menuindex\' =>\'20\',\n			\'id\' => \'blogPL\',\n			\'cols\' => \'col-sm-6\',\n			\'icon\' => \'fa-pencil\',\n			\'title\' => \'Blog PL\',\n			\'body\' => $table_head.$output.$table_foot\n		);\n		\n		$params[\'id\'] = \'tabBlogEN\';\n    $params[\'parents\'] = \'254\';\n    $output = $modx->runSnippet(\'DocLister\', $params);\n		$widgets[\'blogEN\'] = array(\n			\'menuindex\' =>\'21\',\n			\'id\' => \'blogEN\',\n			\'cols\' => \'col-sm-6\',\n			\'icon\' => \'fa-pencil\',\n			\'title\' => \'Blog EN\',\n			\'body\' => $table_head.$output.$table_foot\n		);\n		\n		$e->output(serialize($widgets));\n		break;\n}','0','{}','1',' ','0','1527155930');

INSERT INTO `widok_evo_site_plugins` VALUES ('78','PageBuilder','<b>1.3.0</b> Creates form for manage content sections','0','4','0','/**\n * PageBuilder\n * \n * Creates form for manage content sections\n *\n * @category    plugin\n * @version     1.3.0\n * @author      mnoskov\n * @internal    @properties &tabName=Tab name;text;Page Builder &addType=Add type;menu;dropdown,icons,images;dropdown &placement=Placement;menu;content,tab;tab\n * @internal    @events OnWebPageInit,OnManagerPageInit,OnDocFormRender,OnDocFormSave,OnBeforeEmptyTrash,OnDocDuplicate \n * @internal    @modx_category Manager and Admin\n * @internal    @installset base,sample\n */\n\ninclude_once MODX_BASE_PATH . \'assets/plugins/pagebuilder/pagebuilder.php\';\n\n$e = &$modx->event;\n\nswitch ($e->name) {\n    case \'OnWebPageInit\':\n    case \'OnManagerPageInit\': {\n        $modx->db->query(\"DELETE FROM \" . $modx->getFullTableName(\'site_plugin_events\') . \"\n            WHERE pluginid IN (\n               SELECT id\n               FROM \" . $modx->getFullTableName(\'site_plugins\') . \"\n               WHERE name = \'\" . $e->activePlugin . \"\'\n               AND disabled = 0\n            )\n            AND evtid IN (\n               SELECT id\n               FROM \" . $modx->getFullTableName(\'system_eventnames\') . \"\n               WHERE name IN (\'OnWebPageInit\', \'OnManagerPageInit\')\n            )\");\n\n        $modx->clearCache(\'full\');\n\n        (new PageBuilder($modx))->install();\n\n        return;\n    }\n\n    case \'OnDocFormRender\': {\n        $e->output((new PageBuilder($modx))->renderForm());\n        return;\n    }\n\n    case \'OnDocFormSave\': {\n        (new PageBuilder($modx))->save();\n        return;\n    }\n\n    case \'OnBeforeEmptyTrash\': {\n        (new PageBuilder($modx))->delete();\n        return;\n    }\n\n    case \'OnDocDuplicate\': {\n        (new PageBuilder($modx))->duplicate();\n        return;\n    }\n}\n\n\n','1','{\n  \"tabName\": [\n    {\n      \"label\": \"Tab name\",\n      \"type\": \"text\",\n      \"value\": \"Page Builder\",\n      \"default\": \"Page Builder\",\n      \"desc\": \"\"\n    }\n  ],\n  \"addType\": [\n    {\n      \"label\": \"Add type\",\n      \"type\": \"menu\",\n      \"value\": \"icons\",\n      \"options\": \"dropdown,icons,images\",\n      \"default\": \"dropdown\",\n      \"desc\": \"\"\n    }\n  ],\n  \"placement\": [\n    {\n      \"label\": \"Placement\",\n      \"type\": \"menu\",\n      \"value\": \"content\",\n      \"options\": \"content,tab\",\n      \"default\": \"tab\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','0','1531851199');

INSERT INTO `widok_evo_site_plugins` VALUES ('69','minifyHtml','<b>1.1</b> HtmlInLine plugin for MODX Evo','0','14','0','/** \n * HtmlInLine \n * \n * HtmlInLine plugin for MODX Evo\n *\n * @category    plugin \n * @version     1.1 \n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL) \n * @internal    @properties \n * @internal    @events OnWebPagePrerender \n * @internal    @modx_category Core \n * @internal    @legacy_names HtmlInLine\n * @internal    @installset base\n */\n//author Borisov Evgeniy aka Agel Nash (agel-nash@xaker.ru)\n\n$e =&$modx->event;\nswitch ($e->name) {\n    case \"OnWebPagePrerender\":{\n        if($modx->documentObject[\'searchable\']==1){\n            $content = $modx->documentOutput;\n            $content= preg_replace(\'|\\s+|\', \' \', $content);\n            $modx->documentOutput = $content;\n        }\n        break;\n    }\n}','0','{}','1',' ','0','1520370580');

INSERT INTO `widok_evo_site_plugins` VALUES ('70','DashboardQuickActions','For EVO 1.3.0 and up','0','27','0','$e = &$modx->Event;\nswitch($e->name){\n	case \'OnManagerWelcomeHome\':\n		//if($_SESSION[\'mgrRole\']!==\'2\') return;\n		$widgets[\'quickActions\'] = array(\n			\'menuindex\' =>\'2\',\n			\'id\' => \'quickActions\',\n			\'cols\' => \'col-sm-12\',\n			\'icon\' => \'fa-pencil\',\n			\'title\' => \'Quick Actions\',\n			\'body\' => \'<div class=\"card-body\">\n				Simple example of Dashboard widget created as a System Plugin.<br>\n    			<a target=\"main\" href=\"index.php?a=4&pid=253\">Create Blog Article</a><br>\n    			<a target=\"main\" href=\"index.php?a=3&id=253&tab=1\">View All Blog Articles</a>\n			</div>\'\n		);\n		$e->output(serialize($widgets));\n		break;\n}','0','{}','1',' ','0','1527155941');

INSERT INTO `widok_evo_site_plugins` VALUES ('71','TreeCollections','For EVO 1.3.0 and up','0','4','0','$e = &$modx->Event;\nswitch($e->name){\n	case \'OnManagerNodePrerender\':\n		\n		/*\n		// change icon for catalogs\n		if(\n			$ph[\'template\'] == \'9999\'\n		) {\n			$ph[\'icon\'] = \"<i class=\'fa fa-bars\'></i>\";\n			$ph[\'icon_folder_open\'] = \"<i class=\'fa fa-bars\'></i>\";\n			$ph[\'icon_folder_close\'] = \"<i class=\'fa fa-bars\'></i>\";\n		}\n		\n		// change icon for archive\n		if(\n			$ph[\'template\'] == \'9999\'\n		) {\n			$ph[\'icon\'] = \"<i class=\'fa fa-book\'></i>\";\n			$ph[\'icon_folder_open\'] = \"<i class=\'fa fa-book\'></i>\";\n			$ph[\'icon_folder_close\'] = \"<i class=\'fa fa-book\'></i>\";\n		}\n		\n		// change icon for issues\n		if(\n			$ph[\'template\'] == \'9999\'\n		) {\n			$ph[\'icon\'] = \"<i class=\'fa fa-newspaper-o\'></i>\";\n			$ph[\'icon_folder_open\'] = \"<i class=\'fa fa-newspaper-o\'></i>\";\n			$ph[\'icon_folder_close\'] = \"<i class=\'fa fa-newspaper-o\'></i>\";\n		}\n		\n		// change icon for galleries\n		if (\n			$ph[\'template\'] == \'9999\'\n		) {\n			$ph[\'icon\'] = \"<i class=\'fa fa-camera\'></i>\";\n			$ph[\'icon_folder_open\'] = \"<i class=\'fa fa-camera\'></i>\";\n			$ph[\'icon_folder_close\'] = \"<i class=\'fa fa-camera\'></i>\";\n		}\n		*/\n		\n		// change icon for authors\n		if (\n			$ph[\'id\'] == \'300\'\n		) {\n			$ph[\'icon\'] = \"<i class=\'fa fa-group\'></i>\";\n			$ph[\'icon_folder_open\'] = \"<i class=\'fa fa-group\'></i>\";\n			$ph[\'icon_folder_close\'] = \"<i class=\'fa fa-group\'></i>\";\n		}\n		\n		// change icon for context\n		if (\n			$ph[\'template\'] == \'39\' \n		) {\n			$ph[\'icon\'] = \"<i class=\'fa fa-globe\'></i>\";\n			$ph[\'icon_folder_open\'] = \"<i class=\'fa fa-globe\'></i>\";\n			$ph[\'icon_folder_close\'] = \"<i class=\'fa fa-globe\'></i>\";\n		}\n		\n		// hide child documents and open list on click\n		/*\n		if(\n			$ph[\'id\'] == \'244\'\n		) {\n			$ph[\'showChildren\'] = \'0\';\n			$ph[\'tree_page_click\'] = \'index.php?a=3&id=\'.$ph[\'id\'].\'&tab=1\';\n		}\n		*/\n		\n		$e->output(serialize($ph));\n		\n		break;\n}','1','{}','0',' ','0','1531304584');

INSERT INTO `widok_evo_site_plugins` VALUES ('72','DashboardModifyDefault','For EVO 1.3.0 and up','0','27','0','$e = &$modx->Event;\nswitch($e->name){\n	case \'OnManagerWelcomeHome\':\n\n		if($_SESSION[\'mgrRole\']!==\'1\') {\n			$widgets[\'onlineinfo\'][\'hide\']=\'1\';\n		}\n		//$widgets[\'recentinfo\'][\'hide\']=\'1\';\n		$widgets[\'welcome\'][\'hide\']=\'1\';\n		$widgets[\'news\'][\'hide\']=\'1\';\n		$widgets[\'security\'][\'hide\']=\'1\';\n		\n		$widgets[\'recentinfo\'][\'menuindex\']=\'100\';\n		$widgets[\'onlineinfo\'][\'menuindex\']=\'101\';\n\n		$widgets[\'onlineinfo\'][\'cols\']=\'col-sm-12\';\n\n		$e->output(serialize($widgets));\n		break;\n}','0','{}','0',' ','0','1520699977');

INSERT INTO `widok_evo_site_plugins` VALUES ('94','ElementsInTree','<strong>1.5.9</strong> Get access to all Elements and Modules inside Manager sidebar','0','4','0','require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';\n','0','{\"adminRoleOnly\":[{\"label\":\"Administrators only\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}],\"treeButtonsInTab\":[{\"label\":\"Tree buttons in tab\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `widok_evo_site_plugins` VALUES ('97','OutdatedExtrasCheck','<strong>1.4.0</strong> Check for Outdated critical extras not compatible with EVO 1.4.0','0','4','0','/**\n * OutdatedExtrasCheck\n *\n * Check for Outdated critical extras not compatible with EVO 1.4.0\n *\n * @category	plugin\n * @version     1.4.0 \n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @author      Author: Nicola Lambathakis\n * @internal    @events OnManagerWelcomeHome\n * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;All &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username) &DittoVersion=Min Ditto version:;string;2.1.3 &EformVersion=Min eForm version:;string;1.4.9 &AjaxSearchVersion=Min AjaxSearch version:;string;1.11.0 &WayfinderVersion=Min Wayfinder version:;string;2.0.5 &WebLoginVersion=Min WebLogin version:;string;1.2 &WebSignupVersion=Min WebSignup version:;string;1.1.2 &WebChangePwdVersion=Min WebChangePwd version:;string;1.1.2 &BreadcrumbsVersion=Min Breadcrumbs version:;string;1.0.5 &ReflectVersion=Min Reflect version:;string;2.2 &JotVersion=Min Jot version:;string;1.1.5 &MtvVersion=Min multiTV version:;string;2.0.13 &badthemes=Outdated Manager Themes:;string;MODxRE2_DropdownMenu,MODxRE2,MODxRE,MODxCarbon,D3X,MODxFLAT,wMOD,ScienceStyle\n * @internal    @modx_category Manager and Admin\n * @internal    @installset base\n * @internal    @disabled 0\n */\n\n// get manager role check\n$internalKey = $modx->getLoginUserID();\n$sid = $modx->sid;\n$role = $_SESSION[\'mgrRole\'];\n$user = $_SESSION[\'mgrShortname\'];\n// show widget only to Admin role 1\nif(($role!=1) AND ($wdgVisibility == \'AdminOnly\')) {}\n// show widget to all manager users excluded Admin role 1\nelse if(($role==1) AND ($wdgVisibility == \'AdminExcluded\')) {}\n// show widget only to \"this\" role id\nelse if(($role!=$ThisRole) AND ($wdgVisibility == \'ThisRoleOnly\')) {}\n// show widget only to \"this\" username\nelse if(($user!=$ThisUser) AND ($wdgVisibility == \'ThisUserOnly\')) {}\nelse {\n// get plugin id and setting button\n$result = $modx->db->select(\'id\', $this->getFullTableName(\"site_plugins\"), \"name=\'{$modx->event->activePlugin}\' AND disabled=0\");\n$pluginid = $modx->db->getValue($result);\nif($modx->hasPermission(\'edit_plugin\')) {\n$button_pl_config = \'<a data-toggle=\"tooltip\" href=\"javascript:;\" title=\"\' . $_lang[\"settings_config\"] . \'\" class=\"text-muted pull-right\" onclick=\"parent.modx.popup({url:\\\'\'. MODX_MANAGER_URL.\'?a=102&id=\'.$pluginid.\'&tab=1\\\',title1:\\\'\' . $_lang[\"settings_config\"] . \'\\\',icon:\\\'fa-cog\\\',iframe:\\\'iframe\\\',selector2:\\\'#tabConfig\\\',position:\\\'center center\\\',width:\\\'80%\\\',height:\\\'80%\\\',hide:0,hover:0,overlay:1,overlayclose:1})\" ><i class=\"fa fa-cog fa-spin-hover\" style=\"color:#FFFFFF;\"></i> </a>\';\n}\n$modx->setPlaceholder(\'button_pl_config\', $button_pl_config);\n//plugin lang\n$_oec_lang = array();\n$plugin_path = $modx->config[\'base_path\'] . \"assets/plugins/extrascheck/\";\ninclude($plugin_path . \'lang/english.php\');\nif (file_exists($plugin_path . \'lang/\' . $modx->config[\'manager_language\'] . \'.php\')) {\ninclude($plugin_path . \'lang/\' . $modx->config[\'manager_language\'] . \'.php\');\n}\n//run the plugin\n// get globals\nglobal $modx,$_lang;\n//function to extract snippet version from description <strong></strong> tags \nif (!function_exists(\'getver\')) {\nfunction getver($string, $tag)\n{\n$content =\"/<$tag>(.*?)<\\/$tag>/\";\npreg_match($content, $string, $text);\nreturn $text[1];\n	}\n}\n$e = &$modx->Event;\n$EVOversion = $modx->config[\'settings_version\'];\n$output = \'\';\n//get extras module id for the link\n$modtable = $modx->getFullTableName(\'site_modules\');\n$getExtra = $modx->db->select( \"id, name\", $modtable, \"name=\'Extras\'\" );\nwhile( $row = $modx->db->getRow( $getExtra ) ) {\n$ExtrasID = $row[\'id\'];\n}\n//check outdated files\n//ajax index\n$indexajax = \"../index-ajax.php\";\nif (file_exists($indexajax)){\n    $output .= \'<div class=\"widget-wrapper alert alert-danger\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>index-ajax.php</b> \'.$_oec_lang[\'not_used\'].\' <b>Evolution \'.$EVOversion.\'</b>.  \'.$_oec_lang[\'if_dont_use\'].\', \'.$_oec_lang[\'please_delete\'].\'.</div>\';\n}\n//check outdated default manager themes\n$oldthemes = explode(\",\",\"$badthemes\");\nforeach ($oldthemes as $oldtheme){\n	if (file_exists(\'media/style/\'.$oldtheme)){\n    $output .= \'<div class=\"widget-wrapper alert alert-danger\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\'.$oldtheme.\'</b> \'.$_lang[\"manager_theme\"].\',  \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>.   \'.$_oec_lang[\'please_delete\'].\' \'.$_oec_lang[\'from_folder\'].\' \' . MODX_MANAGER_PATH . \'media/style/.</div>\';\n}\n}	\n//get site snippets table\n$table = $modx->getFullTableName(\'site_snippets\');\n//check ditto\n//get min version from config\n$minDittoVersion = $DittoVersion;\n//search the snippet by name\n$CheckDitto = $modx->db->select( \"id, name, description\", $table, \"name=\'Ditto\'\" );\nif($CheckDitto != \'\'){\nwhile( $row = $modx->db->getRow( $CheckDitto ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_ditto_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_ditto_version,$minDittoVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_ditto_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minDittoVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>DocLister</b></div>\';\n		}\n	}\n} \n//end check ditto\n\n//check eform\n//get min version from config\n$minEformVersion = $EformVersion;\n//search the snippet by name\n$CheckEform = $modx->db->select( \"id, name, description\", $table, \"name=\'eForm\'\" );\nif($CheckEform != \'\'){\nwhile( $row = $modx->db->getRow( $CheckEform ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Eform_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Eform_version,$minEformVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Eform_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minEformVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check eform\n	\n//check AjaxSearch\n//get min version from config\n$minAjaxSearchVersion = $AjaxSearchVersion;\n//search the snippet by name\n$CheckAjaxSearch = $modx->db->select( \"id, name, description\", $table, \"name=\'AjaxSearch\'\" );\nif($CheckAjaxSearch != \'\'){\nwhile( $row = $modx->db->getRow( $CheckAjaxSearch ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_AjaxSearch_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_AjaxSearch_version,$minAjaxSearchVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_AjaxSearch_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minAjaxSearchVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check AjaxSearch	\n	\n//check Wayfinder\n//get min version from config\n$minWayfinderVersion = $WayfinderVersion;\n//search the snippet by name\n$CheckWayfinder = $modx->db->select( \"id, name, description\", $table, \"name=\'Wayfinder\'\" );\nif($CheckWayfinder != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWayfinder ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Wayfinder_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Wayfinder_version,$minWayfinderVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Wayfinder_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWayfinderVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Wayfinder\n	\n//check WebLogin\n//get min version from config\n$minWebLoginVersion = $WebLoginVersion;\n//search the snippet by name\n$CheckWebLogin = $modx->db->select( \"id, name, description\", $table, \"name=\'WebLogin\'\" );\nif($CheckWebLogin != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWebLogin ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_WebLogin_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_WebLogin_version,$minWebLoginVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_WebLogin_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWebLoginVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check WebLogin\n\n//check WebChangePwd\n//get min version from config\n$minWebChangePwdVersion = $WebChangePwdVersion;\n//search the snippet by name\n$CheckWebChangePwd = $modx->db->select( \"id, name, description\", $table, \"name=\'WebChangePwd\'\" );\nif($CheckWebLogin != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWebChangePwd ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_WebChangePwd_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_WebChangePwd_version,$minWebChangePwdVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_WebChangePwd_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWebChangePwdVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check WebChangePwd\n	\n//check WebSignup\n//get min version from config\n$minWebSignupVersion = $WebSignupVersion;\n//search the snippet by name\n$CheckWebSignup = $modx->db->select( \"id, name, description\", $table, \"name=\'WebSignup\'\" );\nif($CheckWebSignup != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWebSignup ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_WebSignup_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_WebSignup_version,$minWebSignupVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_WebSignup_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWebSignupVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check WebSignup\n\n//check Breadcrumbs\n//get min version from config\n$minBreadcrumbsVersion = $BreadcrumbsVersion;\n//search the snippet by name\n$CheckBreadcrumbs = $modx->db->select( \"id, name, description\", $table, \"name=\'Breadcrumbs\'\" );\nif($CheckBreadcrumbs != \'\'){\nwhile( $row = $modx->db->getRow( $CheckBreadcrumbs ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Breadcrumbs_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Breadcrumbs_version,$minBreadcrumbsVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Breadcrumbs_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minBreadcrumbsVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Breadcrumbs\n\n//check Reflect\n//get min version from config\n$minReflectVersion = $ReflectVersion;\n//search the snippet by name\n$CheckReflect = $modx->db->select( \"id, name, description\", $table, \"name=\'Reflect\'\" );\nif($CheckReflect != \'\'){\nwhile( $row = $modx->db->getRow( $CheckReflect ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Reflect_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Reflect_version,$minReflectVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Reflect_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minReflectVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Reflect\n\n//check Jot\n//get min version from config\n$minJotVersion = $JotVersion;\n//search the snippet by name\n$CheckJot = $modx->db->select( \"id, name, description\", $table, \"name=\'Jot\'\" );\nif($CheckJot != \'\'){\nwhile( $row = $modx->db->getRow( $CheckJot ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Jot_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Jot_version,$minJotVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Jot_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minJotVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Jot\n	\n//check Multitv\n//get min version from config\n$minMtvVersion = $MtvVersion;\n//search the snippet by name\n$CheckMtv = $modx->db->select( \"id, name, description\", $table, \"name=\'multiTV\'\" );\nif($CheckMtv != \'\'){\nwhile( $row = $modx->db->getRow( $CheckMtv ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_mtv_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_mtv_version,$minMtvVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_mtv_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minMtvVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a></div>\';\n		}\n	}\n} \n//end check Multitv\n\nif($output != \'\'){\nif($e->name == \'OnManagerWelcomeHome\') {\n$out = $output;\n$wdgTitle = \'EVO \'.$EVOversion.\' - \'.$_oec_lang[\'title\'].\'\';\n$widgets[\'xtraCheck\'] = array(\n				\'menuindex\' =>\'0\',\n				\'id\' => \'xtraCheck\'.$pluginid.\'\',\n				\'cols\' => \'col-12\',\n                \'headAttr\' => \'style=\"background-color:#B60205; color:#FFFFFF;\"\',\n				\'bodyAttr\' => \'\',\n				\'icon\' => \'fa-warning\',\n				\'title\' => \'\'.$wdgTitle.\' \'.$button_pl_config.\'\',\n				\'body\' => \'<div class=\"card-body\">\'.$out.\'</div>\',\n				\'hide\' => \'0\'\n			);	\n            $e->output(serialize($widgets));\nreturn;\n		}\n	}\n}','0','{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Run only for this role:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Run only for this user:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"DittoVersion\":[{\"label\":\"Min Ditto version:\",\"type\":\"string\",\"value\":\"2.1.3\",\"default\":\"2.1.3\",\"desc\":\"\"}],\"EformVersion\":[{\"label\":\"Min eForm version:\",\"type\":\"string\",\"value\":\"1.4.9\",\"default\":\"1.4.9\",\"desc\":\"\"}],\"AjaxSearchVersion\":[{\"label\":\"Min AjaxSearch version:\",\"type\":\"string\",\"value\":\"1.11.0\",\"default\":\"1.11.0\",\"desc\":\"\"}],\"WayfinderVersion\":[{\"label\":\"Min Wayfinder version:\",\"type\":\"string\",\"value\":\"2.0.5\",\"default\":\"2.0.5\",\"desc\":\"\"}],\"WebLoginVersion\":[{\"label\":\"Min WebLogin version:\",\"type\":\"string\",\"value\":\"1.2\",\"default\":\"1.2\",\"desc\":\"\"}],\"WebSignupVersion\":[{\"label\":\"Min WebSignup version:\",\"type\":\"string\",\"value\":\"1.1.2\",\"default\":\"1.1.2\",\"desc\":\"\"}],\"WebChangePwdVersion\":[{\"label\":\"Min WebChangePwd version:\",\"type\":\"string\",\"value\":\"1.1.2\",\"default\":\"1.1.2\",\"desc\":\"\"}],\"BreadcrumbsVersion\":[{\"label\":\"Min Breadcrumbs version:\",\"type\":\"string\",\"value\":\"1.0.5\",\"default\":\"1.0.5\",\"desc\":\"\"}],\"ReflectVersion\":[{\"label\":\"Min Reflect version:\",\"type\":\"string\",\"value\":\"2.2\",\"default\":\"2.2\",\"desc\":\"\"}],\"JotVersion\":[{\"label\":\"Min Jot version:\",\"type\":\"string\",\"value\":\"1.1.5\",\"default\":\"1.1.5\",\"desc\":\"\"}],\"MtvVersion\":[{\"label\":\"Min multiTV version:\",\"type\":\"string\",\"value\":\"2.0.12\",\"default\":\"2.0.12\",\"desc\":\"\"}],\"badthemes\":[{\"label\":\"Outdated Manager Themes:\",\"type\":\"string\",\"value\":\"MODxRE2_DropdownMenu,MODxRE2,MODxRE,MODxCarbon,D3X,MODxFLAT,wMOD,ScienceStyle\",\"default\":\"MODxRE2_DropdownMenu,MODxRE2,MODxRE,MODxCarbon,D3X,MODxFLAT,wMOD,ScienceStyle\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `widok_evo_site_plugins` VALUES ('99','ManagerManager','<strong>0.6.3</strong> Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.','0','4','0','\n/**\n * ManagerManager\n *\n * Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.3\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  22/01/2018\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');\n','0','{\"remove_deprecated_tv_types_pref\":[{\"label\":\"Remove deprecated TV types\",\"type\":\"list\",\"value\":\"no\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}],\"config_chunk\":[{\"label\":\"Configuration Chunk\",\"type\":\"text\",\"value\":\"mm_rules\",\"default\":\"mm_rules\",\"desc\":\"\"}]}','0',' ','0','1524914668');

INSERT INTO `widok_evo_site_plugins` VALUES ('109','FastImage','<b>0.9</b> FastImageTV Helper','0','14','0','/**\n * FastImage\n * \n * FastImageTV Helper\n *\n * @category    plugin\n * @version     0.9\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @author      Pathologic (m@xim.name)\n * @internal    @properties &keepLost=Сколько часов хранить непривязанные файлы;text;24\n * @internal    @events OnManagerPageInit,OnDocFormSave,OnDocDuplicate,OnEmptyTrash\n * @internal    @installset base\n */\n\nrequire MODX_BASE_PATH.\'assets/tvs/FastImage/plugin.FastImage.php\';\n','0','{\n  \"keepLost\": [\n    {\n      \"label\": \"How many hours to keep not used files\",\n      \"type\": \"text\",\n      \"value\": \"1\",\n      \"default\": \"24\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','1523619460','1523630493');

INSERT INTO `widok_evo_site_plugins` VALUES ('111','TreeExpand','Expands selected containers by default','0','4','0','// TreeExpand\n// Expands selected containers by default\n// Author: 64j https://github.com/64j\n\n$e = &$modx->Event;\nif ($e->name == \'OnManagerPreFrameLoader\') {\n  if (empty($_SESSION[\'mgrUsrConfigSet\'][\'openedArray\'])) {\n    $_SESSION[\'openedArray\'] .= \'|\' . $treeExpandItems;\n    $_SESSION[\'mgrUsrConfigSet\'][\'openedArray\'] = $_SESSION[\'openedArray\'];\n  }\n}','0','{\n  \"treeExpandItems\": [\n    {\n      \"label\": \"Conteiners to expand\",\n      \"type\": \"text\",\n      \"value\": \"1|58\",\n      \"default\": \"\",\n      \"desc\": \"Pipe | separated list of containers IDs to be expanded by default\"\n    }\n  ]\n}','0',' ','1524684175','1528722238');

INSERT INTO `widok_evo_site_plugins` VALUES ('114','userHelper','<strong>1.7.21</strong> addition to FormLister','0','14','0','\n/**\n * userHelper\n * \n * addition to FormLister\n * \n * @category    plugin\n * @version     1.7.21\n * @internal    @properties &logoutKey=Request key;text;logout &cookieName=Cookie Name;text;WebLoginPE &cookieLifetime=Cookie Lifetime, seconds;text;157680000 &maxFails=Max failed logins;text;3 &blockTime=Block for, seconds;text;3600 &trackWebUserActivity=Track web user activity;list;No,Yes;No\n * @internal    @events OnWebAuthentication,OnWebPageInit,OnPageNotFound,OnWebLogin\n * @internal    @modx_category Content\n * @internal    @disabled 1\n**/\n\nrequire MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n','0','{\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}],\"trackWebUserActivity\":[{\"label\":\"Track web user activity\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}]}','1','','0','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_snippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_snippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `widok_evo_site_snippets`
#

INSERT INTO `widok_evo_site_snippets` VALUES ('2','UltimateParent','<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent','0','11','0','return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('54','if','<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','41','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','{\"\":[{\"label\":\"\",\"type\":\"\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}',' ','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('72','meta_image','META image for crawlers and sharing services','0','14','0','\n$default_image = \'og-image-1200x1200.jpg\';\n$content_image = \'[[if? &is=`[*meta_img*]:notempty` &then=`[[phpthumb? &input=`[*meta_img*]` &options=`w=1200,h=1200,zc=1,q=80,f=jpg,aol=1`]]` &else=`\'.$default_image.\'`]]\';\n\n$output = $content_image;\n\nreturn $output;','0','{}',' ','0','1521156479','1');

INSERT INTO `widok_evo_site_snippets` VALUES ('11','siteConfig','Placeholders with config options','0','28','0','\n/*\n *  Core\n */\n	\n$hostname = \'widok.stronazen.pl\'; // should be manualy updated when moving site\n$base_url = \'http://www.\'.$hostname.\'/\';\n$tplPath  = \'assets/templates/widok_tpl/\';\n\n/*\n *  Placeholders\n */\n\n// Prepare data for placeholders\n\n$currentDocId = $modx->documentIdentifier;\n$root         = $modx->runSnippet(\'UltimateParent\');\n$root_lvl_2   = $modx->runSnippet(\'UltimateParent\',array(\'topLevel\' => \'2\'));\n$root_lvl_3   = $modx->runSnippet(\'UltimateParent\',array(\'topLevel\' => \'3\'));\n$level        = $modx->runSnippet(\'Level\');\n$template     = $modx->runSnippet(\'tv\',[\'tv\' => \'template\', \'id\' => $currentDocId]);\n$meta_img     = $modx->runSnippet(\'tv\',[\'tv\' => \'meta_img_fitv\', \'id\' => $currentDocId]);\n\nif ( empty($meta_img) ) {\n	$meta_img = \'og-image-1200x630.jpg\';\n}\nelse {\n	$meta_img = $modx->runSnippet(\'phpthumb\',[\n		\'input\' => $meta_img, \n		\'options\' => \'w=1200,h=630,zc=1,q=90,f=jpg,aol=1\'\n	]);\n}\n\n// Set placeholders based on above\n\n$modx->setPlaceholder(\'cfg_host\',$hostname);\n$modx->setPlaceholder(\'cfg_tpl_path\',$tplPath);\n$modx->setPlaceholder(\'cfg_url_base\',$base_url);\n$modx->setPlaceholder(\'cfg_root\',$root);\n$modx->setPlaceholder(\'cfg_root_lvl_2\',$root_lvl_2);\n$modx->setPlaceholder(\'cfg_root_lvl_3\',$root_lvl_3);\n$modx->setPlaceholder(\'cfg_level\',$level);\n$modx->setPlaceholder(\'cfg_meta_img\',$base_url.$meta_img);\n\n// Taxonomy\n\n$modx->setPlaceholder(\'cfg_id_taxonomy_issue_sections\',\'263\');\n\n/*\n *  Contexts\n */\n\n$context = $modx->getPageInfo($root);\n$context = $context[\'alias\'];\n$modx->setPlaceholder(\'context\',$context);\n$modx->setPlaceholder(\'cfg_lang\',$context);\n$modx->runSnippet(\'siteContext_\'.$context, [\'context\' => $context, \'base_url\' => $base_url]); // context settings\n$modx->runSnippet(\'siteLexicon_\'.$context); // context lexicon\n\n/*\n *  Minify CSS and JS files\n */\n\n$modx->runSnippet(\'MinifyCSS\',array(\n	\'files\'  => \n	  $tplPath.\'css/styles.css\',\n	\'folder\' => $tplPath.\'minifyx/\',\n	\'minify\' => \'1\'\n));\n\n$modx->runSnippet(\'MinifyJS\',array(\n	\'files\'  => \n  $tplPath.\'js/vendor/modernizr-custom.js,\'.\n  $tplPath.\'js/vendor/bootstrap/transition.js,\'.\n  $tplPath.\'js/vendor/bootstrap/collapse.js,\'.\n  $tplPath.\'js/vendor/bootstrap/dropdown.js,\'.\n  $tplPath.\'js/vendor/ofi.browser.js,\'.\n  $tplPath.\'js/vendor/picturefill.js,\'.\n  $tplPath.\'js/vendor/debouncedresize.js,\'.\n  $tplPath.\'js/vendor/owl.carousel.js,\'.\n  $tplPath.\'js/vendor/simple-lightbox.js,\'.\n  $tplPath.\'js/app/app.js,\'.\n  $tplPath.\'js/app/app-preloader.js,\'.\n  $tplPath.\'js/app/app-siteHeader.js,\'.\n  $tplPath.\'js/app/app-objectFitPolyfill.js,\'.\n  $tplPath.\'js/app/app-simple-lightbox.js\',\n  $tplPath.\'js/app/app-owl.js,\',\n  //$tplPath.\'js/bundle.js,\'.\n	//\'assets/plugins/emo/emo.js\',\n	\'folder\' => $tplPath.\'minifyx/\',\n	\'minify\' => \'1\'\n));\n\n/*\n *  Register CSS, JS and HTML\n */\n\n$modx->runSnippet(\'siteRegClient\',array(\n	\'tplPath\' => $tplPath,\n	\'docTpl\'  => $template,\n	\'context\' => $context\n));\n\nreturn;','1','{\n  \"snippetConfig\": {}\n}',' ','0','1534065893','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('150','filter_options_years','','0','57','0','\n/*\n[[filter_options_years?\n&id=`filter_years`\n&parents=`[+cfg_id_news+]`\n&filterTv=`documentDate`\n&active_option=`[[GET?&v=`year`]]`\n]]\n*/\n	\n$params[\'id\']=$id;\n$params[\'parents\']=$parents;\n$params[\'showParent\']=\'0\';\n$params[\'showNoPublish\']=\'0\';\n$params[\'depth\']=\'2\';\n$params[\'orderBy\']=$filterTv.\' DESC\';\n$params[\'dateSource\']=\'tv.\'.$filterTv;\n$params[\'dateFormat\']=\'%Y\';\n$params[\'tvList\']=$filterTv;\n$params[\'renderTV\'] = $filterTv;\n$params[\'tvSortType\']=\'TVDATETIME\';\n$params[\'customLang\']=\'polish-utf8\';\n\n// content templates\n\n$params[\'tpl\']=\'@CODE:[+date+],\';\n$params[\'tplLast\']=\'@CODE:[+date+]\';\n\n// generate list\n\n$output = $modx->runSnippet(\'DocLister\',$params);\n$itemsArray = array_unique(explode(\',\', $output));\n\n$output = \'\';\n\nwhile(list($key,$val)=each($itemsArray)){\n	$active = \'\';\n	if($val != \'\'){\n		if($active_option == $val){\n			$active = \' selected=\"selected\"\';\n		}\n		$output .= \'<option value=\"\'.$val.\'\"\'.$active.\'>\'.$val.\'</option>\';\n	}\n}\n\nreturn $output;','0','{}',' ','0','1528206908','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('42','page_401','','0','28','0','\n$output = $_SERVER[\'REQUEST_URI\'];\n\n$lng_en = strpos($output, \'/en/\');\n$lng_pl = strpos($output, \'/pl/\');\n\nif($lng_en){\n  $output = \'<h1>Unauthorized access</h1><p>You are <strong>unauthorized</strong> to view this page.<br /><a href=\"[~165~]\">Click here</a> to login.</p>\';\n}\nelse{\n  $output = \'<h1>Brak dostępu</h1><p>Musisz być <strong>zalogowany</strong> aby zobaczyć tę stronę.<br /><a href=\"[~177~]\">Kliknij tutaj</a> aby się zalogować.</p>\';\n}\n\nreturn $output;','1','{}',' ','0','1505603099','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('14','tv','Displaying any document TV on page','0','41','0','\n// Displaying any document TV on page\n// Usage example: [[tv?tv=`yourTV`&id=`yourDocID`]]\n// By: Piotr Matysiak / pm-fx.com\n\nif($idSource==\'get\'){$id= $_GET[\'id\'];} // &idSource is an optional parameter that replaces &id parameter\n$output = $modx->getTemplateVarOutput(array(\"$tv\"),$docid=\"$id\",$published=1);\n$output = $output[$tv];\nreturn $output ;','0','{}',' ','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('57','phpthumb','<strong>1.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','14','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('22','AjaxSearch','<strong>1.11.0</strong> Ajax and non-Ajax search that supports results highlighting','0','10','0','return require MODX_BASE_PATH.\'assets/snippets/ajaxSearch/snippet.ajaxSearch.php\';','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('23','FirstChildRedirect','<strong>2.0</strong> Automatically redirects to the first child of a Container Resource','0','11','0','return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('66','ph','Setting placeholder with any document TV on page','0','41','0','\n// ph\n// Setting custom placeholder. Optionaly with other document TV value.\n// Usage example: [[ph? &name=`placeholder_name` &value=`My value`]]\n// Usage example (get TV):  [[ph? &tv=`pagetitle` &id=`26` &name=`placeholder_name`]]\n// Author: Piotr Matysiak webready.pl\n\nif($idMethod==\'get\'){\n	$id = $_GET[\'id\'];\n}\n\nif($tv){\n	$output = $modx->getTemplateVarOutput(array(\"$tv\"),$docid=\"$id\",$published=1);\n	$output = $output[$tv];\n}\n\nelse{\n	$output = $value;\n}\n\n$modx->setPlaceholder($name, $output);\nreturn;','0','{}',' ','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('26','Wayfinder','<strong>2.0.5</strong> Completely template-driven and highly flexible menu builder','0','11','0','return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';\n','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('29','Level','Get level of the document','0','41','0','\n$id = $modx->documentIdentifier;\n$output = count($modx->getParentIds($id));\nreturn $output;','1','{}',' ','0','1528450925','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('35','GET','','0','41','0','\n// Getting variable from _GET\n// Usage example: [[GET?v=`yourGetVariable`]]\n// By: Piotr Matysiak / pm-fx.com\n\nif ( !empty($_GET[$v]) ) {\n	$output = $modx->db->escape($_GET[$v]);\n}\nelse {\n	$output = \'\';\n}\n\nreturn $output;','1','{}',' ','0','1528450906','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('36','run_breadcrumbs','','0','12','0','\n//$params[\'templateSet\']=\'defaultList\';\n//$params[\'currentAsLink\']=\'1\';\n//$params[\'showHomeCrumb\']=\'0\';\n//$params[\'showCrumbsAtHome\']=\'0\';\n//$params[\'showCurrentCrumb\']=\'1\';\n//$params[\'ignoreIds\']=\'\';\n//$params[\'homeId\']=$root;\n//$params[\'homeCrumbTitle\']=$lng_home;\n//$output = $modx->runSnippet(\'Breadcrumbs\',$params);\n\n//$params[\'hideMain\']    = \'1\';\n$params[\'showCurrent\'] = \'1\';\n$params[\'filters\']     = \'AND(content:c.id:!=:\'.$root.\')\';\n$params[\'tpl\']         = \'@CODE:<li><a href=\"[+url+]\">[+title+]</a></li>\';\n$params[\'tplCurrent\']  = \'@CODE:<li class=\"active\">[+title+]</li>\';\n$params[\'ownerTPL\']    = \'@CODE:<div class=\"c-breadcrumbs\"><ol class=\"breadcrumb\">[+crumbs.wrap+]</ol></div>\';\n\n$output = $modx->runSnippet(\'DLCrumbs\',$params);\nreturn $output;','0','{}',' ','0','1516098233','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('45','page_404','','0','28','0','\n$request = $_SERVER[\'REQUEST_URI\'];\n\n$lng_en = stripos($request, \'/en/\');\n$lng_pl = stripos($request, \'/pl/\');\n\nif($lng_en !== false){\n  $output = \'<h1>Not found</h1><p>We are sorry but the page you looking for doesn\\\'t exist.</p>\';\n}\nelse{\n  $output = \'<h1>Nie znaleziono</h1><p>Przepraszamy, ale strona której szukasz nie istnieje.</p>\';\n}\n\nreturn $output;','1','{}',' ','0','1505603105','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('46','page_503','','0','28','0','\n$output = $_SERVER[\'REQUEST_URI\'];\n\n$lng_en = strpos($output, \'/en/\');\n$lng_pl = strpos($output, \'/pl/\');\n\nif($lng_en){\n  $output = \'<h1>Site is offline</h1><p>We are sorry but the site is offline right now due to maintance.</p>\';\n}\nelse{\n  $output = \'<h1>Strona chwilowo wyłączona</h1><p>Przepraszamy, ale trwają prace nad stroną.</p>\';\n}\n\nreturn $output;','1','{}',' ','0','1505603110','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('47','Sitemap','<b>1.1</b> Outputs a machine readable site map for search engines and robots.','0','11','0','\nif(!defined(\'MODX_BASE_PATH\'))exit(\'-\');\nini_set(\'max_execution_time\', 0);\nini_set(\'memory_limit\', \'-1\');\n/**\n * Sitemap\n * \n * Outputs a machine readable site map for search engines and robots.\n *\n * @category snippet\n * @version 1.1 (2017-08-18)\n * @license LGPL\n * @author Grzegorz Adamiak [grad], ncrossland, DivanDesign (http://www.DivanDesign.biz)\n * @internal @modx_category Navigation\n * \n * @param startid {integer} - Id of the \'root\' document from which the sitemap starts. Default: 0.\n * @param format {string} - Which format of sitemap to use: sp (Sitemap Protocol used by Google), txt (text file with list of URLs), ror (Resource Of Resources). Default: sp.\n * @param seeThruUnpub {0; 1} - See through unpublished documents. Default: 1.\n * @param priority {string} - Name of TV which sets the relative priority of the document. If there is no such TV, this parameter will not be used. Default: \'sitemap_priority\'.\n * @param changefreq {string} - Name of TV which sets the change frequency. If there is no such TV this parameter will not be used. Default: \'sitemap_changefreq\'.\n * @param excludeTemplates {comma separated string} - Documents based on which templates should not be included in the sitemap. Comma separated list with names of templates. Default: \'\'.\n * @param excludeTV {string} - Name of TV (boolean type) which sets document exclusion form sitemap. If there is no such TV this parameter will not be used. Default: \'sitemap_exclude\'.\n * @param xsl {string; integer} - URL to the XSL style sheet or doc ID of the XSL style sheet. Default: \'\'.\n * @param excludeWeblinks {0; 1} - Should weblinks be excluded? You may not want to include links to external sites in your sitemap, and Google gives warnings about multiple redirects to pages within your site. Default: 0.\n */\n \n \n/*\nSupports the following formats:\n\n- Sitemap Protocol used by Google Sitemaps\n  (http://www.google.com/webmasters/sitemaps/)\n\n- URL list in text format\n  (e.g. Yahoo! submission)\n\n*/\n\n/* Parameters */\nif(!isset($startid))          $startid = 0;\nif(!isset($priority))         $priority = \'sitemap_priority\';\nif(!isset($changefreq))       $changefreq = \'sitemap_changefreq\';\nif(!isset($excludeTemplates)) $excludeTemplates = array();\nif(!isset($excludeTV))        $excludeTV = \'sitemap_exclude\';\nif(!isset($xsl))              $xsl = \'\';\nif(!isset($excludeWeblinks))  $excludeWeblinks = 1;\n\n$seeThruUnpub = (isset($seeThruUnpub) && $seeThruUnpub == \'0\') ? false : true;\n$format       = (isset($format) && ($format != \'ror\')) ? $format : \'sp\';\nif (is_numeric($xsl)) $xsl = $modx->makeUrl($xsl);\n\n/* End parameters */\n\n// get list of documents\n$docs = getDocs($modx, $startid, $priority, $changefreq, $excludeTV, $seeThruUnpub);\n\n\n// filter out documents by template or TV\n// ---------------------------------------------\n// get all templates\n$select = $modx->db->select(\'id, templatename\', \'[+prefix+]site_templates\');\nwhile ($query = $modx->db->getRow($select)){\n    $allTemplates[$query[\'id\']] = $query[\'templatename\'];\n}\n\n$remainingTemplates = $allTemplates;\n\n// get templates to exclude, and remove them from the all templates list\nif (!empty ($excludeTemplates)){\n    \n    $excludeTemplates = explode(\',\', $excludeTemplates);\n    \n    // Loop through each template we want to exclude\n    foreach ($excludeTemplates as $template){\n        $template = trim($template);\n        \n        // If it\'s numeric, assume it\'s an ID, and remove directly from the $allTemplates array\n        if (is_numeric($template) && isset($remainingTemplates[$template])){\n            unset($remainingTemplates[$template]);\n        }elseif (trim($template) && in_array($template, $remainingTemplates)){ // If it\'s text, and not empty, assume it\'s a template name\n            unset($remainingTemplates[array_search($template, $remainingTemplates)]);\n        }\n    }\n}\n\n$_ = array();\n// filter out documents which shouldn\'t be included\nforeach ($docs as $doc){\n    \n    $docid = $doc[\'id\'];\n    \n    //by template, excludeTV, published, searchable\n    if(!isset($remainingTemplates[$doc[\'template\']])) continue;\n    if($doc[$excludeTV])                              continue;\n    if($doc[$changefreq]==\'exclude\')                  continue;\n    if(!$doc[\'published\'])                            continue;\n    if(!$doc[\'template\'])                             continue;\n    if(!$doc[\'searchable\'])                           continue;\n    if($excludeWeblinks && $doc[\'type\']==\'reference\') continue;\n    if($docid==$modx->documentIdentifier)             continue;\n    \n    $_[$docid] = $doc;\n}\n$docs = $_;\nunset ($_, $allTemplates, $excludeTemplates);\n\n$site_editedon = get_site_editedon();\nif($site_editedon) {\n    $docs[$modx->config[\'site_start\']][\'editedon\'] = $site_editedon;\n}\n\n// build sitemap in specified format\n// ---------------------------------------------\n\n$output = array();\nswitch ($format){\n    // Next case added in version 1.0.4\n    case \'ulli\': // UL List\n        $output[] = \'<ul class=\"sitemap\">\';\n        // TODO: Sort the array on Menu Index\n        // TODO: Make a nested ul-li based on the levels in the document tree.\n        foreach ($docs as $doc){\n            $s  = \'  <li class=\"sitemap\">\';\n            $s .= \'<a href=\"\'.$doc[\'url\'].\'\" class=\"sitemap\">\' . $doc[\'pagetitle\'] . \'</a>\';\n            $s .= \'</li>\';\n            $output[] = $s;\n        }\n        \n        $output[] = \'</ul>\';\n    break;\n        \n    case \'txt\': // plain text list of URLs\n\n        foreach ($docs as $doc){\n            $output[] = $doc[\'url\'];\n        }\n        \n    break;\n\n    case \'ror\': // TODO\n    default: // Sitemap Protocol\n        $output[] = \'<?xml version=\"1.0\" encoding=\"\'.$modx->config[\"modx_charset\"].\'\"?>\';\n        if ($xsl) $output[] =\'<?xml-stylesheet type=\"text/xsl\" href=\"\'.$xsl.\'\"?>\';\n        \n        $output[] =\'<urlset xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd\" xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\';\n\n        foreach ($docs as $doc) {\n            $output[] = \'    <url>\';\n            $output[] = \'        <loc>\'.htmlentities($doc[\'url\']).\'</loc>\';\n            if($doc[\'editedon\'])\n                $output[] = \'        <lastmod>\'.date(\'Y-m-d\', $doc[\'editedon\']).\'</lastmod>\';\n            $output[] = \'        <priority>\'.$doc[$priority].\'</priority>\';\n            $output[] = \'        <changefreq>\'.$doc[$changefreq].\'</changefreq>\';\n            $output[] = \'    </url>\';\n        }\n        \n        $output[] = \'</urlset>\';\n\n}\n\nreturn join(\"\\n\",$output);\n\n// functions\n// ---------------------------------------------\n\n// gets (inherited) value of templat e variable\n//TODO: wtf? In MODx 0.9.2.1 O_o Is this actually?\nfunction getTV($modx, $docid, $doctv){\n    $output = \'\';\n    while ($pid = $modx->getDocument($docid, \'parent\')){\n        $tv = $modx->getTemplateVar($doctv,\'*\',$docid);\n        if (($tv[\'value\'] && substr($tv[\'value\'],0,8) != \'@INHERIT\') || !$tv[\'value\']){ // tv default value is overriden (including empty)\n            $output = $tv[\'value\'];\n            break;\n        }else{ // there is no parent with default value overriden \n            $output = trim(substr($tv[\'value\'],8));\n        }\n        \n        // move up one document in document tree\n        $docid = $pid[\'parent\'];\n    }\n    \n    return $output;\n}\n\n// gets list of published documents with properties\nfunction getDocs($modx, $startid=0, $priority, $changefreq, $excludeTV, $seeThruUnpub){\n    $fields = \"id,editedon,template,published,searchable,pagetitle,type,isfolder,parent,publishedon,content LIKE \'%<img%\' as hasImage\";\n    //If need to see through unpublished\n    if ($seeThruUnpub) $docs = getAllChildren($startid, $fields);\n    else               $docs = getActiveChildren($startid, $fields);\n    \n    $rs = $modx->db->select(\'name\',\'[+prefix+]site_tmplvars\',sprintf(\"name=\'%s\'\",$modx->db->escape($priority)));\n    $priority_exists = $modx->db->getRecordCount($rs) ? 1 : 0;\n    $rs = $modx->db->select(\'name\',\'[+prefix+]site_tmplvars\',sprintf(\"name=\'%s\'\",$modx->db->escape($changefreq)));\n    $changefreq_exists = $modx->db->getRecordCount($rs) ? 1 : 0;\n    $rs = $modx->db->select(\'name\',\'[+prefix+]site_tmplvars\',sprintf(\"name=\'%s\'\",$modx->db->escape($excludeTV)));\n    $excludeTV_exists  = $modx->db->getRecordCount($rs) ? 1 : 0;\n    \n    // add sub-children to the list\n    foreach ($docs as $i => $doc){\n        $id = $doc[\'id\'];\n        if(!$doc[\'editedon\']) $doc[\'editedon\'] = $doc[\'publishedon\'];\n        if($id==$modx->config[\'site_start\']) $docs[$i][\'url\'] = $modx->config[\'site_url\'];\n        else                                 $docs[$i][\'url\'] = trim($modx->makeUrl($id,\'\',\'\',\'full\'));\n        \n        $date_diff = round(($_SERVER[\'REQUEST_TIME\']-(int)$doc[\'editedon\'])/86400);\n        \n        if($priority_exists)                     $docs[$i][$priority] = getTV($modx, $id, $priority); // add priority property\n        elseif($id==$modx->config[\'site_start\']) $docs[$i][$priority] = \'1.0\';\n        elseif($date_diff<7)                     $docs[$i][$priority] = \'0.9\';\n        elseif($date_diff<14)                    $docs[$i][$priority] = \'0.8\';\n        elseif($doc[\'parent\']==0)                $docs[$i][$priority] = \'0.6\';\n        elseif($doc[\'isfolder\'])                 $docs[$i][$priority] = \'0.4\';\n        elseif(1000<$date_diff) {\n            if($doc[\'hasImage\'])                 $docs[$i][$priority] = \'0.4\';\n            else                                 $docs[$i][$priority] = \'0.3\';\n        }\n        else                                     $docs[$i][$priority] = \'0.5\';\n        \n        if($changefreq_exists)                   $docs[$i][$changefreq] = getTV($modx, $id, $changefreq); // add changefreq property\n        elseif($id==$modx->config[\'site_start\']) $docs[$i][$changefreq] = \'always\';\n        elseif($doc[\'isfolder\'])                 $docs[$i][$changefreq] = \'always\';\n        elseif(365<$date_diff)                   $docs[$i][$changefreq] = \'never\';\n        elseif(180<$date_diff)                   $docs[$i][$changefreq] = \'yearly\';\n        elseif(60<$date_diff)                    $docs[$i][$changefreq] = \'monthly\';\n        elseif(14<$date_diff)                    $docs[$i][$changefreq] = \'weekly\';\n        elseif($date_diff)                       $docs[$i][$changefreq] = \'daily\';\n        else                                     $docs[$i][$changefreq] = \'never\';\n        \n        if($excludeTV_exists) $docs[$i][$excludeTV] = getTV($modx, $id, $excludeTV); // add excludeTV property\n        else                  $docs[$i][$excludeTV] = false;\n        \n        //TODO: $modx->getAllChildren & $modx->getActiveChildren always return the array\n//         if ($modx->getAllChildren($id)){\n            $children = getDocs($modx, $id, $priority, $changefreq, $excludeTV, $seeThruUnpub);\n            if($children) {\n                $_ = array();\n                foreach($children as $child) {\n                    $_[] = $child[\'editedon\'];\n                }\n                $docs[$i][\'editedon\'] = max($_);\n            }\n            $docs = array_merge($docs, $children);\n//         }\n\n    }\n    return $docs;\n}\n\nfunction get_site_editedon() {\n    global $modx;\n    \n    $where = \'privateweb=0 AND published=1 AND deleted=0\';\n    $rs = $modx->db->select(\'editedon\',\'[+prefix+]site_content\', $where, \'editedon DESC\', 1);\n    return $modx->db->getValue($rs);\n}\n\nfunction getAllChildren($id= 0, $fields= \'id, pagetitle, description, parent, alias, menutitle\') {\n    global $modx;\n    \n    $where = \"parent=\'{$id}\' AND deleted=0 AND privateweb=0\";\n    $rs= $modx->db->select($fields,\'[+prefix+]site_content\', $where, \'menuindex ASC\');\n    $docs= array ();\n    while ($row = $modx->db->getRow($rs))\n    {\n        $docs[] = $row;\n    }\n    return $docs;\n}\n\nfunction getActiveChildren($id= 0, $fields= \'id, pagetitle, description, parent, alias, menutitle\') {\n    global $modx;\n    \n    $where = \"parent=\'{$id}\' AND published=1 AND deleted=0 AND privateweb=0\";\n    $rs= $modx->db->select($fields,\'[+prefix+]site_content\', $where, \'menuindex ASC\');\n    $docs= array ();\n    while ($row = $modx->db->getRow($rs))\n    {\n        $docs[] = $row;\n    }\n    return $docs;\n}','0','{}',' ','0','1528796353','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('48','makeUrl','','0','41','0','\nreturn $modx->makeUrl($modx->documentIdentifier, \'\', \'\', \'full\');','0','{}',' ','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('49','replace','','0','41','0','\n// [[replace?from=`dogs`&into=`cats`&in=`I like dogs.`]]\n$output = str_replace($from, $into, $in);\nreturn $output;','0','{}',' ','0','1506068624','1');

INSERT INTO `widok_evo_site_snippets` VALUES ('80','multiTV','<strong>2.0.13</strong> Custom Template Variabe containing a sortable multi item list or a datatable','0','14','0','return require MODX_BASE_PATH . \'assets/tvs/multitv/multitv.snippet.php\';\n','0','{\"\":[{\"label\":\"\",\"type\":\"\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}',' ','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('87','DocLister','<strong>2.3.15</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView','0','14','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';\n','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('89','siteRegClient','regClientCSS regClientScript. Launched inside siteConfig snippet.','0','28','0','\n// Launched inside siteConfig snippet\n	\n/*\n * Register CSS files\n */\n\n// Uncompressed CSS\n// $modx->regClientCSS($tplPath.\'css/styles.css\');\n\n// Minified CSS\n//$modx->regClientCSS($tplPath.\'minifyx/minifyx.v\'.$minifyxVersion.\'.css\');\n\n/*\n * Register JS files at the end of <body>\n */\n\n//$modx->regClientScript($tplPath.\'minifyx/minifyx.v\'.$minifyxVersion.\'.js\');\n\n/*\n * Register HTML code at the end of <body>\n */\n\n//$modx->regClientHTMLBlock(\'\');\n\n/*\n * Register JS files in <head>\n */\n\n//$modx->regClientStartupScript($tplPath.\'js/scripts.min.js\');\n\n/*\n * Register HTML code in <head>\n */\n\n// Quick Manager plugin restyle\n//$modx->regClientStartupHTMLBlock(\'\');\n\nreturn;','1','{}',' ','0','1507840565','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('92','evoSystemInfo','Snippet displaying EVO system info and some actions on the frontend','0','28','0','\n// evoSystemInfo 1.2\n// Snippet displaying EVO system info and some actions on the frontend.\n// Call it uncached [!evoSystemInfo!] before </body> tag in your template.\n// Dark theme: [!evoSystemInfo? &theme=`dark`!] (EVO 1.4.4 or later required)\n// author: Piotr Matysiak webready.pl\n	\nif ( isset($_SESSION[\'mgrValidated\']) ) {\n	$docId = $modx->documentIdentifier;\n	\n	$docEditedon = $modx->getDocumentObject(\'id\',$docId);\n	$docEditedon = $docEditedon[\'editedon\'];\n	$docEditedon = strftime(\'%y.%m.%d %H:%M:%S\',$docEditedon);\n	\n	$docEditedby = $modx->getDocumentObject(\'id\',$docId);\n	$docEditedby = $docEditedby[\'editedby\'];\n	$docEditedby = $modx->getUserInfo($docEditedby);\n	$docEditedby = $docEditedby[\'username\'];\n	\n	if ($theme == \'dark\') {\n		$logo = \'logo-navbar-left-white.png\';\n	} else {\n		$logo = \'logo.png\';\n	}\n	\n	$css = \'\n	<style>\n		body {\n			padding-bottom: 52px !important;\n		}\n		.evo-system-section {\n			position: fixed;\n			bottom: 0;\n			left: 0;\n			right: 0;\n			z-index: 1000;\n			margin-top: 15px;\n			padding-top: 12px;\n			padding-bottom: 12px;\n			padding-left: 50px;\n			color: #aaa;\n			border-style: solid;\n			border-color: #ddd;\n			border-width: 1px 0;\n			background-color: #fafafa;\n			box-shadow: 0 0 5px 0 rgba(0,0,0,0.1);\n			font-size: 11px;\n			font-family: Helvetica,Arial,sans-serif;\n			text-transform: uppercase;\n		}\n		.evo-system-section__container {\n			margin-right: auto;\n			margin-left: auto;\n			padding-left: 15px;\n			padding-right: 15px;\n		}\n		.evo-system-section__logo {\n			position: absolute;\n			top: 9px;\n			left: 15px;\n			width: 35px;\n		}\n		.evo-system-section__actions {\n			display: inline-block;\n			margin-right: 15px;\n		}\n		.evo-system-section__action {\n			display: inline-block;\n			margin-right: 5px;\n			font-size: 13px;\n			font-weight: bold;\n			color: #777;\n			border: 1px solid #ddd !important;\n			border-radius: 3px;\n			padding: 4px 8px;\n			background-color: #fff !important;\n		}\n		.evo-system-section__action:hover,\n		.evo-system-section__action:active,\n		.evo-system-section__action:focus {\n			text-decoration: none;\n		}\n		.evo-system-section__action:hover {\n			color: #333 !important;\n			background-color: rgba(0,0,0,0.025) !important;\n		}\n		.evo-system-section__list {\n			display: inline-block;\n			list-style: none;\n			margin: 0;\n			float: right;\n			padding: 0;\n			padding-top: 7px;\n		}\n		.evo-system-section__item {\n			display: inline-block;\n			margin-right: 10px;\n		}\n		.evo-system-section__item,\n		.evo-system-section__item .type,\n		.evo-system-section__item .value {\n\n		}\n		.evo-system-section__item .value,\n		.evo-system-section__item .value a {\n			color: #777;\n		}\n		\n		/* theme: dark */\n		\n		.evo-system-section.dark {\n			border-width: 0;\n			background-color: #343944;\n		}\n		.evo-system-section.dark,\n		.evo-system-section.dark .evo-system-section__action {\n			color: #c9c9c9 !important;\n		}\n		.evo-system-section.dark .evo-system-section__action {\n			border-color: rgba(255,255,255,0.4) !important;\n			background-color: rgba(255,255,255,0.1) !important;\n		}\n		.evo-system-section.dark .evo-system-section__action:hover {\n			color: #ddd !important;\n			background-color: rgba(255,255,255,0.2) !important;\n		}\n		.evo-system-section.dark .evo-system-section__item .value, \n		.evo-system-section.dark .evo-system-section__item .value a {\n			color: #aaa;\n		}\n	</style>\n	\';\n\n	$html = \'\n	<div class=\"evo-system-section \'.$theme.\'\">\n		<div class=\"evo-system-section__container\">\n			<img class=\"evo-system-section__logo\" src=\"[(site_url)]manager/media/style/default/images/misc/\'.$logo.\'\" alt=\"EVO\">\n			<div class=\"evo-system-section__actions\">\n				<a class=\"evo-system-section__action\" target=\"_blank\" href=\"[(site_url)]manager/index.php?a=27&id=[*id*]\">Edit page</a>\n				<a class=\"evo-system-section__action\" target=\"_blank\" href=\"[(site_url)]manager/\">Manager</a>\n				<a class=\"evo-system-section__action\" href=\"[(site_url)]manager/index.php?a=8\">Logout</a>\n			</div>\n			<ul class=\"evo-system-section__list\">\n				<li class=\"evo-system-section__item\"><span class=\"type\">ID:</span> <span class=\"value\">[*id*]</span></li>\n				<li class=\"evo-system-section__item\"><span class=\"type\">Edited:</span> <span class=\"value\"><a target=\"_blank\" href=\"[(site_url)]manager/index.php?a=3&id=[*id*]&tab=0\" title=\"Last edited by \'.$docEditedby.\'\">\'.$docEditedon.\'</a></span></li>\n				<li class=\"evo-system-section__item\"><span class=\"type\">Source:</span>   <span class=\"value\">[^s^]</span></li>\n				<li class=\"evo-system-section__item\"><span class=\"type\">Queries:</span>  <span class=\"value\">[^q^]</span></li>\n				<li class=\"evo-system-section__item\"><span class=\"type\">Query T:</span>  <span class=\"value\">[^qt^]</span></li>\n				<li class=\"evo-system-section__item\"><span class=\"type\">Parse T:</span>  <span class=\"value\">[^p^]</span></li>\n				<li class=\"evo-system-section__item\"><span class=\"type\">Total T:</span>  <span class=\"value\">[^t^]</span></li>\n			</ul>\n		</div>\n	</div>\n	\';\n\n	$output = $css.$html;\n\n	return $output;\n}','1','{}',' ','0','1529098422','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('98','DLBuildMenu','<strong>1.3</strong> DLBuildMenu','0','11','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLBuildMenu.php\';\n','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('99','FormLister','<strong>1.7.21</strong> Form processor','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/FormLister/snippet.FormLister.php\';\n','0','',' ','0','1517518107','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('100','DLMenu','<strong>1.4.0</strong> Snippet to build menu with DocLister','0','11','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLMenu.php\';\n','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('101','DocInfo','<strong>1</strong> Take any field from any document (fewer requests than GetField)','0','41','0','return require MODX_BASE_PATH.\'assets/snippets/docinfo/snippet.docinfo.php\';\n','0','',' ','0','1503670266','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('102','DLCrumbs','<strong>1.2</strong> DLCrumbs','0','11','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLCrumbs.php\';','0','',' ','0','1512682237','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('103','PageBuilder','<b>1.3.0</b> output content sections for current page','0','14','0','\n/**\n * PageBuilder\n * \n * output content sections for current page\n * \n * @version     1.3.0\n * @author      mnoskov\n * @category    snippet\n * @internal    @properties\n * @internal    @modx_category Content\n * @internal    @installset base,sample\n */\n \ninclude_once MODX_BASE_PATH . \'assets/plugins/pagebuilder/pagebuilder.php\';\nreturn (new PageBuilder($modx))->render($params);','1','{}',' ','0','1521297692','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('104','srcsetinline','Image srcset with phpthumb','0','14','0','\n$options = \'w=\'.$w;\n\nif($h) {\n	$options .= \',h=\'.$h;\n}\n\nif($zc) {\n	$options .= \',zc=\'.$zc;\n}\n\nif($q) {\n	$options .= \',q=\'.$q;\n}\nelse {\n	$options .= \',q=80\';\n}\n\n$params[\'input\']   = $input;\n$params[\'options\'] = $options.\',f=jpg\';\n\n$path = $modx->runSnippet(\'phpthumb\',$params);\n\nif($mode == \'src\') {\n	$output = $path;\n}\n\nelseif($mode == \'set\') {\n	$output = $path.\' \'.$w.\'w\' ;\n}\n\nreturn $output;','0','{}',' ','0','1520336603','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('147','run_dl_issue','','0','12','0','\n// custom prepare\n	\n$sectionTitle = $modx->getTemplateVar(\'name_context_\' . $context, \'*\', $issueSection);\n$sectionTitle = $sectionTitle[\'value\'];\n\n// parameters\n\n$params[\'parents\'] = $modx->documentIdentifier;\n$params[\'showParent\'] = \'0\';\n$params[\'showNoPublish\'] = \'0\';\n$params[\'depth\'] = \'0\';\n$params[\'orderBy\'] = \'menuindex ASC\';\n$params[\'tvList\'] = \'issueArticleAuthorSelector,issueArticleSection,translationSelector\';\n$params[\'renderTV\'] = \'issueArticleAuthor\';\n$params[\'filters\'] = \'AND(tv:issueArticleSection:=:\'.$issueSection.\')\';\n\n// templates\n\n$params[\'ownerTPL\'] = \'@CODE: <h3>\'.$sectionTitle.\'</h3><ul>[+dl.wrap+]</ul>\';\n$params[\'tpl\']      = \'dl-issueArticle\';\n$params[\'noneTPL\']  = \'@CODE: \';\n$params[\'noneWrapOuter\'] = \'0\';\n\n// prepare\n\n$params[\'prepare\'] = function($data, $modx) {\n	// get context\n	$context = $modx->runSnippet(\'UltimateParent\',[ \'id\' => $data[\'id\'] ]);\n	$context = $modx->getPageInfo($context);\n	$context = $context[\'alias\'];\n	\n	// authors\n	$authors = $data[\'tv.issueArticleAuthorSelector\'];\n	if ( !empty($authors) ) {\n		$data[\'prepared.authors\'] = \'<br>\'.$modx->runSnippet(\'simpleDocs\', [\'docs\' => $authors, \'renderAs\' => \'links\']);\n	}\n	\n	// render link\n	$linkTextPL = \'Czytaj (PL)\';\n	$linkTextEN = \'Read (EN)\';\n	switch ($context) {\n		case \'pl\' : $linkText = $linkTextPL; break;\n		case \'en\' : $linkText = $linkTextEN; break;\n	}\n	$linkUrl = $modx->makeUrl($data[\'id\']);\n	$data[\'prepared.link\'] = \'<br><a href=\"\'.$linkUrl.\'\">\'.$linkText.\'</a>\';\n	\n	// render link to translation\n	$translationId = $data[\'tv.translationSelector\'];\n	if ( !empty($translationId) ) {\n		switch ($context) {\n			case \'pl\' : $translationLinkText = $linkTextEN; $translationContext = \'en\'; break;\n			case \'en\' : $translationLinkText = $linkTextPL; $translationContext = \'pl\'; break;\n		}\n		$translationUrl = $modx->makeUrl($translationId);\n		$data[\'prepared.translationLink\'] = \'<a hreflang=\"\'.$translationContext.\'\" href=\"\'.$translationUrl.\'\">\'.$translationLinkText.\'</a>\';\n	}\n	\n	return $data;\n};\n\n// output\n\n$output = $modx->runSnippet(\'DocLister\',$params);\n\nreturn $output;','0','{}',' ','0','1531221920','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('148','run_dl_archiveSearch','','0','12','0','\nif ( $_GET[\'search\'] == \'true\' ) {\n\n	// reset placeholders\n\n	$modx->setPlaceholder(\'context\',$context);\n\n	// parameters\n\n	$params[\'id\']=$id;\n	$params[\'parents\']=$parents;\n	$params[\'showParent\']=\'0\';\n	$params[\'depth\']=\'2\';\n	$params[\'tvList\']=\'issueArticleAuthor,issueArticleDate\';\n	$params[\'renderTV\'] = \'issueArticleDate\';\n	$params[\'orderBy\']=\'pagetitle ASC\';\n	$params[\'debug\']=\'0\';\n	$params[\'customLang\']=\'polish-utf8\';\n\n	// content templates\n\n	$params[\'ownerTPL\'] = \'@CODE: <p>Znalezione artykuły:</p><ul>[+dl.wrap+]</ul>\';\n	$params[\'tpl\']      = \'@CODE: <li><a href=\"[+url+]\">[+pagetitle+]</a></li>\';\n	$params[\'noneTPL\']  = \'@CODE: <p>Nic tu nie ma!</p>\';\n	$params[\'noneWrapOuter\'] = \'0\';\n\n	// filters\n\n	$filters  = \'\';\n\n	// remove issues (containers)\n	//$filters .= \'content:c.template:!=:40;content:c.isfolder:!=:1\';\n	if ( !empty($_GET[\'title\']) )  $filters .= (empty($filters) ? \'\' : \';\') . \'content:c.pagetitle:%:\'.$modx->db->escape($_GET[\'title\']);\n	if ( !empty($_GET[\'author\']) ) $filters .= (empty($filters) ? \'\' : \';\') . \'tv:issueArticleAuthor:containsOne:\'.$modx->db->escape($_GET[\'author\']);\n	\n	// dateFrom\n	if ( !empty($_GET[\'dateFromYear\']) ) {\n		$dateFromYear  = $modx->db->escape($_GET[\'dateFromYear\']);\n		$dateFromMonth = $modx->db->escape($_GET[\'dateFromMonth\']);\n		$dateFromDay   = $modx->db->escape($_GET[\'dateFromDay\']);\n		if ( empty($_GET[\'dateFromMonth\']) ) {\n			$dateFromMonth = \'01\';\n		}\n		if ( empty($_GET[\'dateFromDay\']) ) {\n			$dateFromDay = \'01\';\n		}\n		$dateFrom = $dateFromYear.\'-\'.$dateFromMonth.\'-\'.$dateFromDay;\n		$filters .= (empty($filters) ? \'\' : \';\') . \'tvdate:issueArticleDate:>:\'.$dateFrom;\n	}\n	// dateTo\n	if ( !empty($_GET[\'dateToYear\']) ) {\n		$dateToYear  = $modx->db->escape($_GET[\'dateToYear\']);\n		$dateToMonth = $modx->db->escape($_GET[\'dateToMonth\']);\n		$dateToDay   = $modx->db->escape($_GET[\'dateToDay\']);\n		if ( empty($_GET[\'dateToMonth\']) ) {\n			$dateToMonth = \'01\';\n		}\n		if ( empty($_GET[\'dateToDay\']) ) {\n			$dateToDay = \'01\';\n		}\n		$dateTo = $dateToYear.\'-\'.$dateToMonth.\'-\'.$dateToDay;\n		$filters .= (empty($filters) ? \'\' : \';\') . \'tvdate:issueArticleDate:<:\'.$dateTo;\n	}\n	\n	$params[\'filters\'] = \'AND(\'.$filters.\')\';\n\n	// begin output\n\n	$output = \'\';\n\n	// generate list\n\n	$output .= $modx->runSnippet(\'DocLister\',$params);\n\n	return $output;\n}','0','{}',' ','0','1528544568','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('107','run_dl_archive','','0','12','0','\n// parameters\n\n$params[\'id\']=$id;\n$params[\'parents\']=$parents;\n$params[\'showParent\']=\'0\';\n$params[\'showNoPublish\']=\'0\';\n$params[\'depth\']=\'0\';\n$params[\'orderBy\']=\'createdon DESC\';\n$params[\'tvList\']=\'issueCoverImage,issueCoverInfo,issueEditorSelector\';\n$params[\'renderTV\'] = \'issueEditors\';\n$params[\'customLang\']=\'polish-utf8\';\n\n// content templates\n\n$params[\'ownerTPL\'] = \'@CODE: [+dl.wrap+]\';\n$params[\'tpl\']      = \'dl-archiveIssue\';\n$params[\'noneTPL\']  = \'@CODE: <p>Nic tu nie ma!</p>\';\n$params[\'noneWrapOuter\'] = \'0\';\n\n$params[\'prepare\'] = function($data, $modx) {\n	$editors = $data[\'tv.issueEditorSelector\'];\n	$data[\'prepared.editors\'] = $modx->runSnippet(\'simpleDocs\', [\'docs\' => $editors]);\n	$data[\'lexicon.issueEditors\'] = $modx->getPlaceholder(\'lexicon.issueEditors\');\n	$data[\'lexicon.coverArtwork\'] = $modx->getPlaceholder(\'lexicon.coverArtwork\');\n	return $data;\n};\n\n// generate list\n\n$output = $modx->runSnippet(\'DocLister\',$params);\n\nreturn $output;','0','{}',' ','0','1533996685','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('149','filter_options','','0','57','0','\n/*\n[[filter_options?\n&id=`filter_example_1`\n&parents=`[+cfg_id_taxonomy_filter_example_1+]`\n&ignoreIds=`1,2,3`\n&optionTextSource=`context`\n&includeEmptyOption=`true`\n&active_option=`[[GET?&v=`filter_example_1`]]`\n&context=`[+context+]`\n]]\n*/\n\n$params[\'id\']=$id;\n$params[\'parents\']=$parents;\n$params[\'depth\']=\'1\';\n$params[\'tvList\']=\'name_context_pl,name_context_en\';\n$params[\'showPublishedOnly\']=\'1\';\n$params[\'hideFolders\']=\'1\';\n$params[\'paginate\']=\'0\';\n$params[\'orderBy\']=\'menuindex ASC\';\n\n// ignore ids\n\nif (!empty($ignoreIds)) {$params[\'filters\'] = \'AND(content:c.id:notin:\'.$ignoreIds.\')\';}\n\n// option text method\n\nif ($optionTextSource == \'context\') {$optionTextSourceValue = \'[+tv.name_context_\'.$context.\'+]\';}\nelse {$optionTextSourceValue = \'[+pagetitle+]\';}\n\n// active option\n	\nif ($active_option) {$active_option = $modx->db->escape($active_option);}\nelse {$active_option = \'\';}\n\nif ( $includeEmptyOption == \'true\' ) {$emptyOptionTpl  = \'<option value=\"\"></option>\';}\nelse {$emptyOptionTpl = \'\';}\n\n// template\n\n$itemTpl = \'<option value=\"[+id+]\"[+id:eq=`\'.$active_option.\'`:then=` selected`+]>\'.$optionTextSourceValue.\'</option>\';\n$params[\'tplFirst\']=\'@CODE:\'.$emptyOptionTpl.$itemTpl;\n$params[\'tpl\']=\'@CODE:\'.$itemTpl;\n\n// output\n\n$output  = \'\';\n$output .= $modx->runSnippet(\'DocLister\',$params);\n\nreturn $output;','0','{}',' ','1528199300','1528200717','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('108','DLSitemap','<strong>1.0.1</strong> Snippet to build XML sitemap','0','11','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLSitemap.php\';\n','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('109','summary','<strong>2.0.2</strong> Truncates the string to the specified length','0','14','0','return require MODX_BASE_PATH.\'assets/snippets/summary/snippet.summary.php\';','0','','','0','0','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('112','sgController','<b>1.2.1</b> use sg_site_content controller for DocLister','0','17','0','\n/**\n * sgController\n *\n * use sg_site_content controller for DocLister\n *\n * @category 	snippet\n * @version 	1.2.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @author      Pathologic (m@xim.name)\n */\n\nreturn require MODX_BASE_PATH.\'assets/snippets/simplegallery/sgController.php\';','0','{}',' ','1503946006','1503946058','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('113','sgLister','<b>1.2.1</b> DocLister wrapper for SimpleGallery table','0','17','0','\n/**\n * sgLister\n *\n * DocLister wrapper for SimpleGallery table\n *\n * @category 	snippet\n * @version 	1.2.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @author      Pathologic (m@xim.name)\n */\n\nreturn require MODX_BASE_PATH.\'assets/snippets/simplegallery/sgLister.php\';','0','{}',' ','1503946022','1503946064','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('114','sgThumb','<b>1.2.1</b> Snippet for get thumbnails for SimpleGallery','0','17','0','\n/**\n * sgThumb\n *\n * Snippet for get thumbnails for SimpleGallery\n *\n * @category 	snippet\n * @version 	1.2.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@modx_category Content\n * @author      Pathologic (m@xim.name)\n */\n\nreturn require MODX_BASE_PATH.\'assets/snippets/simplegallery/sgThumb.php\';','0','{}',' ','1503946043','1503946048','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('116','sgGetFirst','Get first picture path from SimpleGallery','0','17','0','\n$output = \'\';\n\n$table = $modx->getFullTableName( \'sg_images\' );\n$query = $modx->db->query(\'SELECT sg_rid,sg_image,sg_index FROM \'.$table.\' WHERE sg_rid=\'.$id.\' ORDER BY sg_index DESC LIMIT 0,1\');\n$row = $modx->db->getRow($query);\n\n$gal_id = $row[\'sg_rid\'];\n$gal_filename = $row[\'sg_image\'];\n\nif (!$row) {$output = \'\';}\nelse {$output = $gal_filename;}\n\nreturn $output;','0','{}',' ','0','1505592879','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('134','selectorLister','','0','14','0','\n$output = \'\';\n\nif ($docs != \'\') {\n	$output .= \'<ul class=\"\'.$cssListClass.\'\">\';\n	$docsArray = explode(\',\', $docs);\n	$i = 0;\n	$len = count($tagsArray);\n	while(list($key,$val)=each($docsArray)){\n		//$pagetitle = $modx->getTemplateVarOutput(array(\'pagetitle\'),$docid=\"$val\",$published=1);\n		//$template  = $modx->getTemplateVarOutput(array(\'template\'), $docid=\"$val\",$published=1);\n		$document  = $modx->getDocument($val);\n		$pagetitle = $document[\'pagetitle\'];\n		$template  = $document[\'template\'];\n		$prefix = \'\';\n		$suffix = \'\';\n		if ($template == 47) {\n			$suffix = \' (galeria)\';\n		}\n		$output .= \'<li><a href=\"[~\'.$val.\'~]\">\'.$prefix.$pagetitle.$suffix.\'</a></li>\';\n		$i++;\n	}\n	$output .= \'</ul>\';\n}\n\nreturn $output;','0','{}',' ','1516971571','1522913138','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('151','filter_options_months','','0','57','0','\n/*\n[[filter_options_months?\n&id=`filter_months`\n&parents=`[+cfg_id_news+]`\n&date_tv=`documentDate`\n&active_option=`[[GET?&v=`month`]]`\n]]\n*/\n	\n$params[\'id\']=$id;\n$params[\'parents\']=$parents;\n$params[\'showParent\']=\'0\';\n$params[\'showNoPublish\']=\'0\';\n$params[\'depth\']=\'2\';\n$params[\'orderBy\']=$date_tv.\' ASC\';\n$params[\'dateSource\']=\'tv.\'.$date_tv;\n$params[\'dateFormat\']=\'%m\';\n$params[\'tvList\']=$date_tv;\n$params[\'renderTV\'] = $date_tv;\n$params[\'tvSortType\']=\'TVDATETIME\';\n$params[\'customLang\']=\'polish-utf8\';\n\n// content templates\n$params[\'tpl\']=\'@CODE:[+date+],\';\n$params[\'tplLast\']=\'@CODE:[+date+]\';\n\n// generate list\n$output = $modx->runSnippet(\'DocLister\',$params);\n\n$months_array = array_unique(explode(\',\', $output));\n\n/*\n$months_array = array();\n$months_array[1]  = \'01\';\n$months_array[2]  = \'02\';\n$months_array[3]  = \'03\';\n$months_array[4]  = \'04\';\n$months_array[5]  = \'05\';\n$months_array[6]  = \'06\';\n$months_array[7]  = \'07\';\n$months_array[8]  = \'08\';\n$months_array[9]  = \'09\';\n$months_array[10] = \'10\';\n$months_array[11] = \'11\';\n$months_array[12] = \'12\';\n\n$months_names_array = array();\n$months_names_array[1]  = \'Styczeń\';\n$months_names_array[2]  = \'Luty\';\n$months_names_array[3]  = \'Marzec\';\n$months_names_array[4]  = \'Kwiecień\';\n$months_names_array[5]  = \'Maj\';\n$months_names_array[6]  = \'Czerwiec\';\n$months_names_array[7]  = \'Lipiec\';\n$months_names_array[8]  = \'Sierpień\';\n$months_names_array[9]  = \'Wrzesień\';\n$months_names_array[10] = \'Październik\';\n$months_names_array[11] = \'Listopad\';\n$months_names_array[12] = \'Grudzień\';\n*/\n\n$output = \'\';\n\nwhile(list($key,$val)=each($months_array)){\n	$active = \'\';\n	if($val != \'\'){\n		if($active_option == $val){\n			$active = \' selected=\"selected\"\';\n		}\n		$output .= \'<option value=\"\'.$val.\'\"\'.$active.\'>\'.$months_array[$key].\'</option>\';\n		// $output .= \'<option value=\"\'.$val.\'\"\'.$active.\'>\'.$months_names_array[$key].\'</option>\';\n	}\n}\n\nreturn $output;','0','{}',' ','0','1528206932','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('152','filter_options_days','','0','57','0','\n/*\n[[filter_options_days?\n&id=`filter_days`\n&parents=`[+cfg_id_news+]`\n&date_tv=`documentDate`\n&active_option=`[[GET?&v=`day`]]`\n]]\n*/\n	\n$params[\'id\']=$id;\n$params[\'parents\']=$parents;\n$params[\'showParent\']=\'0\';\n$params[\'showNoPublish\']=\'0\';\n$params[\'depth\']=\'2\';\n$params[\'orderBy\']=$date_tv.\' ASC\';\n$params[\'dateSource\']=\'tv.\'.$date_tv;\n$params[\'dateFormat\']=\'%d\';\n$params[\'tvList\']=$date_tv;\n$params[\'renderTV\'] = $date_tv;\n$params[\'tvSortType\']=\'TVDATETIME\';\n$params[\'customLang\']=\'polish-utf8\';\n\n// content templates\n$params[\'tpl\']=\'@CODE:[+date+],\';\n$params[\'tplLast\']=\'@CODE:[+date+]\';\n\n// generate list\n//$output = $modx->runSnippet(\'DocLister\',$params);\n\n//$months_array = array_unique(explode(\',\', $output));\n\n$days_array = array();\n$days_array[1]  = \'01\';\n$days_array[2]  = \'02\';\n$days_array[3]  = \'03\';\n$days_array[4]  = \'04\';\n$days_array[5]  = \'05\';\n$days_array[6]  = \'06\';\n$days_array[7]  = \'07\';\n$days_array[8]  = \'08\';\n$days_array[9]  = \'09\';\n$days_array[10] = \'10\';\n$days_array[11] = \'11\';\n$days_array[12] = \'12\';\n$days_array[13] = \'13\';\n$days_array[14] = \'14\';\n$days_array[15] = \'15\';\n$days_array[16] = \'16\';\n$days_array[17] = \'17\';\n$days_array[18] = \'18\';\n$days_array[19] = \'19\';\n$days_array[20] = \'20\';\n$days_array[21] = \'21\';\n$days_array[22] = \'22\';\n$days_array[23] = \'23\';\n$days_array[24] = \'24\';\n$days_array[25] = \'25\';\n$days_array[26] = \'26\';\n$days_array[27] = \'27\';\n$days_array[28] = \'28\';\n$days_array[29] = \'29\';\n$days_array[30] = \'30\';\n$days_array[31] = \'31\';\n\n$output = \'\';\n\nwhile(list($key,$val)=each($days_array)){\n	$active = \'\';\n	if($val != \'\'){\n		if($active_option == $val){\n			$active = \' selected=\"selected\"\';\n		}\n		$output .= \'<option value=\"\'.$val.\'\"\'.$active.\'>\'.$days_array[$key].\'</option>\';\n	}\n}\n\nreturn $output;','0','{}',' ','0','1528207638','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('123','tvSelectResources','','0','40','0','\n$params[\'parents\']=$parents;\n$params[\'depth\']=\'1\';\n$params[\'showNoPublish\']=\'0\';\n$params[\'showParent\']=\'0\';\n$params[\'tpl\']=\'@CODE:[+pagetitle+]==[+id+]||\';\n$params[\'tplLast\']=\'@CODE:[+pagetitle+]==[+id+]\';\n$params[\'orderBy\']=\'menuindex ASC\';\n\nif ( $orderBy ) {\n  $params[\'orderBy\']=$orderBy;\n}\n\n$output  = \'\';\n\nif ( $includeEmptyOption == \'true\' ) {\n  $output  = \'Wybierz== ||\';\n}\n\n$output .= $modx->runSnippet(\'DocLister\',$params);\n\nreturn $output;','0','{}',' ','0','1527251716','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('125','MinifyCSS','<b>1.0</b> Cache and Minify CSS','0','28','0','\n/**\n * css\n * \n * Cache and Minify CSS\n *\n * @category  snippet\n * @version   1.0\n * @license   http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal  @properties \n * @internal  @legacy_names MinifyX\n * @internal  @modx_category Content\n * @internal  @installset base, sample\n */\n	\n	/* https://github.com/dmi3yy/CssJs\n	 * Example\n		[!MinifyCSS?\n		&files=`\n		[+cfg_tpl_path+]css/bootstrap.min.css,\n		[+cfg_tpl_path+]css/styles.css\n		`\n		&folder=`[+cfg_tpl_path+]minifyx/`\n		&minify=`1`\n		!]\n	*/\n\nreturn require MODX_BASE_PATH.\'assets/snippets/cssjs/snippet.css.php\';','1','{}',' ','1507809309','1507839338','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('126','MinifyJS','<b>1.0</b> Cache and Minify JS','0','28','0','\n/**\n * js\n * \n * Cache and Minify JS \n *\n * @category  snippet\n * @version   1.0\n * @license   http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal  @properties \n * @internal  @legacy_names MinifyX\n * @internal  @modx_category Content\n * @internal  @installset base, sample\n */\n\n	/* https://github.com/dmi3yy/CssJs\n	 * Example\n		[!MinifyJS?\n		&files=`\n		[+cfg_tpl_path+]js/bootstrap.js,\n		[+cfg_tpl_path+]js/app.js\n		`\n		&folder=`[+cfg_tpl_path+]minifyx/`\n		&minify=`1`\n		!]\n	*/\n	\nreturn require MODX_BASE_PATH.\'assets/snippets/cssjs/snippet.js.php\';','1','{}',' ','1507809368','1507839393','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('127','nl2li','','0','41','0','\n$output = \'<li>\'.str_replace(array(\"\\r\",\"\\n\\n\",\"\\n\"),array(\'\',\"\\n\",\"</li>\\n<li>\"),trim($content,\"\\n\\r\")).\'</li>\';\nreturn $output;','0','{}',' ','1510579402','1510579402','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('128','siteLexicon_pl','Polish lexicon','0','28','0','\n// For quicker editing, please keep lexicon ordered by key name ASC.\n	\n$modx->setPlaceholder(\'lexicon.coverArtwork\',\'Fotografia na okładce\');\n$modx->setPlaceholder(\'lexicon.homePage\',\'Strona główna\');\n$modx->setPlaceholder(\'lexicon.issueEditors\',\'Redaktorzy\');\n$modx->setPlaceholder(\'lexicon.more\',\'Więcej\');\n$modx->setPlaceholder(\'lexicon.numberShort\',\'Nr\');\n$modx->setPlaceholder(\'lexicon.publishedOn\',\'Data publikacji\');\n$modx->setPlaceholder(\'lexicon.toc\',\'Spis treści\');\n$modx->setPlaceholder(\'lexicon.youAreHere\',\'Jesteś tu:\');\n\nreturn;','1','{}',' ','1511382252','1534067575','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('129','siteLexicon_en','English lexicon','0','28','0','\n// For quicker editing, please keep lexicon ordered by key name ASC.\n	\n$modx->setPlaceholder(\'lexicon.coverArtwork\',\'Cover artwork\');\n$modx->setPlaceholder(\'lexicon.homePage\',\'Home page\');\n$modx->setPlaceholder(\'lexicon.issueEditors\',\'Managing editors\');\n$modx->setPlaceholder(\'lexicon.more\',\'More\');\n$modx->setPlaceholder(\'lexicon.numberShort\',\'No\');\n$modx->setPlaceholder(\'lexicon.publishedOn\',\'Published on\');\n$modx->setPlaceholder(\'lexicon.toc\',\'Table of Contents\');\n$modx->setPlaceholder(\'lexicon.youAreHere\',\'You’re here:\');\n\nreturn;','1','{}',' ','0','1534067588','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('155','simpleDocs','','0','69','0','\n// [[simpleDocs? &docs=`1,2,3` &renderAs=`links`]]\n\nif ( !empty($docs) ) {\n\n	$docs = explode(\',\', $docs);\n	$i = 0;\n	$len = count($docs);\n	$output = \'\';\n  \n	while (list($key,$val)=each($docs)) {\n		\n		$docTitle = $modx->getPageInfo($val);\n		$docTitle = $docTitle[\'pagetitle\'];\n		$docUrl   = $modx->makeUrl($val);\n		\n		switch ($renderAs) {\n			case \'links\' : $tpl = \'<a href=\"\'.$docUrl.\'\">\'.$docTitle.\'</a>\'; break;\n			default : $tpl = $docTitle;\n		}\n		\n		if ($i == $len - 1) {\n			$output .= $tpl;\n		} else {\n			$output .= $tpl.\', \';\n		}\n		\n		$i++;\n		\n	}\n\n	return $output;\n}','0','{}',' ','0','1531222400','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('132','preConvert','','0','41','0','\n$content = str_replace(\'<\', \'&lt;\', $content);\n$content = str_replace(\'>\', \'&gt;\', $content);\n//$content = nl2br($content);\nreturn $content;','0','{}',' ','0','1513529868','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('133','sgCounter','Count SimpleGallery images','0','17','0','\n$output=\'0\';\nif($id){\n	$table  = $modx->getFullTableName( \'sg_images\' );\n	$query  = $modx->db->query(\'SELECT sg_rid FROM \'.$table.\' WHERE sg_rid=\'.$id.\' ORDER BY sg_index ASC\');\n	$output = $modx->db->getRecordCount($query);\n}\nreturn $output;','0','{}',' ','0','1516724343','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('153','siteContext_en','English context','0','28','0','\n// Context seetings\n	\n$modx->setPlaceholder(\'cfg_lang_long\',\'english\');\n\n// urls\n$modx->setPlaceholder(\'cfg_url_home\',$base_url.$context);\n\n// resources id\n$modx->setPlaceholder(\'cfg_id_home\',\'2\');\n$modx->setPlaceholder(\'cfg_id_about\',\'289\');\n$modx->setPlaceholder(\'cfg_id_foundation\',\'298\');\n$modx->setPlaceholder(\'cfg_id_archive\',\'254\');\n$modx->setPlaceholder(\'cfg_id_cfp\',\'297\');\n$modx->setPlaceholder(\'cfg_id_search\',\'39\');\n\n// switchLang\n$modx->setPlaceholder(\'cfg_switchLang_link\',$base_url);\n$modx->setPlaceholder(\'cfg_switchLang_text\',\'PL\');\n\n// latest issue\n$latestIssueId     = $modx->runSnippet(\'tv\',[\'tv\' => \'issueLatestSelector\', \'id\' => \'1\']);\n$latestIssueNumber = $modx->runSnippet(\'tv\',[\'tv\' => \'issueNumber\', \'id\' => $latestIssueId]);\n$latestIssueColor  = $modx->runSnippet(\'tv\',[\'tv\' => \'issueColor\', \'id\' => $latestIssueId]);\n$latestIssueCover  = $modx->runSnippet(\'tv\',[\'tv\' => \'issueCoverImage\', \'id\' => $latestIssueId]);\n$modx->setPlaceholder(\'cfg_latestIssue_id\',$latestIssueId);\n$modx->setPlaceholder(\'cfg_latestIssue_number\',$latestIssueNumber);\n$modx->setPlaceholder(\'cfg_latestIssue_color\',$latestIssueColor);\n$modx->setPlaceholder(\'cfg_latestIssue_cover\',$latestIssueCover);\n\nreturn;','1','{}',' ','0','1534075537','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('154','siteContext_pl','Polish context','0','28','0','\n// Context seetings\n	\n$modx->setPlaceholder(\'cfg_lang_long\',\'polish\');\n\n// urls\n$modx->setPlaceholder(\'cfg_url_home\',$base_url);\n\n// resources id\n$modx->setPlaceholder(\'cfg_id_home\',\'59\');\n$modx->setPlaceholder(\'cfg_id_about\',\'82\');\n$modx->setPlaceholder(\'cfg_id_foundation\',\'287\');\n$modx->setPlaceholder(\'cfg_id_archive\',\'253\');\n$modx->setPlaceholder(\'cfg_id_cfp\',\'288\');\n$modx->setPlaceholder(\'cfg_id_search\',\'99\');\n\n// switchLang\n$modx->setPlaceholder(\'cfg_switchLang_link\',$base_url.\'en\');\n$modx->setPlaceholder(\'cfg_switchLang_text\',\'EN\');\n\n// latest issue\n$latestIssueId     = $modx->runSnippet(\'tv\',[\'tv\' => \'issueLatestSelector\', \'id\' => \'58\']);\n$latestIssueNumber = $modx->runSnippet(\'tv\',[\'tv\' => \'issueNumber\', \'id\' => $latestIssueId]);\n$latestIssueColor  = $modx->runSnippet(\'tv\',[\'tv\' => \'issueColor\', \'id\' => $latestIssueId]);\n$latestIssueCover  = $modx->runSnippet(\'tv\',[\'tv\' => \'issueCoverImage\', \'id\' => $latestIssueId]);\n$modx->setPlaceholder(\'cfg_latestIssue_id\',$latestIssueId);\n$modx->setPlaceholder(\'cfg_latestIssue_number\',$latestIssueNumber);\n$modx->setPlaceholder(\'cfg_latestIssue_color\',$latestIssueColor);\n$modx->setPlaceholder(\'cfg_latestIssue_cover\',$latestIssueCover);\n\nreturn;','1','{}',' ','0','1534075508','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('136','FormLister_set_replyTo','Set replyTo value','0','7','0','\n//$FormLister->setField(\'replyTo\',$data[\'email\']);\n//$FormLister->setPlaceholder(\'prepared.replyTo\',$data[\'email\']);\n//$FormLister->config->setConfig(array(\n//	\'replyTo\'=>$data[\'email\']\n//));\n//$FormLister->config->setConfig(array(\n//	\'replyTo\' => $FormLister->getField(\'email\')\n//));\n$FormLister->mailConfig[\'replyTo\'] = $FormLister->getField(\'email\');','0','{}',' ','0','1517562145','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('142','srcset','<b>1.0.1</b> Simple img srcset generator snippet for Evolution CMS','0','14','0','\n//<?php\n/**\n * srcset\n * \n * Simple img srcset generator snippet for Evolution CMS\n *\n * @version      1.0.1\n * @author       Piotr Matysiak (pmfx)\n * @category     snippet\n * @internal     @properties \n * @internal     @modx_category Content\n * @internal     @installset base,sample\n * @lastupdate   06/03/2018\n * @link         https://github.com/pmfx/evo-srcset\n * @reportissues https://github.com/pmfx/evo-srcset/issues\n */\n\nreturn require MODX_BASE_PATH.\'assets/snippets/srcset/snippet.srcset.php\';','0','{}',' ','1520342274','1520417665','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('143','addHttp','','0','41','0','\n// [[addHttp?&url=`[*www*]`]]\nif (!preg_match(\"~^(?:f|ht)tps?://~i\", $url)) {\n	$url = \"http://\" . $url;\n}\nreturn $url;','0','{}',' ','0','1523027817','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('144','getYoutubeId','Returns YouTube movie ID from given URL','0','41','0','\n$url_parts = parse_url($url);\nparse_str($url_parts[\'query\']);\n\nif (isset($v)) {\n  return $v;    \n}','0','{}',' ','0','1523045721','0');

INSERT INTO `widok_evo_site_snippets` VALUES ('145','getVimeoId','Returns Vimeo movie ID from given URL','0','41','0','\n$output = \'\';\nif(preg_match(\"/(https?:\\/\\/)?(www\\.)?(player\\.)?vimeo\\.com\\/([a-z]*\\/)*([0-9]{6,11})[?]?.*/\", $url, $output_array)) {\n	$output = $output_array[5];\n}\nreturn $output;','0','{}',' ','0','1523045709','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '1',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `widok_evo_site_templates`
#

INSERT INTO `widok_evo_site_templates` VALUES ('3','HomePageTpl','','0','1','','0','{{block-head}}\n\n<div class=\"c-jump2issue\">\n  <a href=\"[~[+cfg_latestIssue_id+]~]\" class=\"c-jump2issue__circle\"></a>\n</div>\n\n<div class=\"c-heroholder--fullpage\">\n  <div class=\"c-hero c-hero--v5 c-hero--img\">\n    <div class=\"c-hero__img-holder\">\n			[[srcset? \n			&input=`[+cfg_latestIssue_cover+]` \n			&sizes=`100vw` \n			&srcset=`480,768,1024,1280,1920`\n			&defaultSize=`1920`\n			&quality=`80`\n			&attrAlt=`Issue cover`\n			]]\n    </div>\n  </div>\n</div>\n\n{{block-foot}}','0','1','1534075725','0');

INSERT INTO `widok_evo_site_templates` VALUES ('4','BasicPageTpl','','0','1','','0','{{block-head}}\n\n{{block-subnav}}\n\n<section>\n	<div class=\"container-fluid\">\n		<div class=\"content-canvas content-canvas--small\">\n			<div class=\"content-canvas__inner\">\n				[[PageBuilder]]\n			</div>\n		</div>\n	</div>\n</section>\n\n{{block-foot}}','0','1','1533992903','0');

INSERT INTO `widok_evo_site_templates` VALUES ('40','IssueTpl','','0','1','','0','{{block-head}}\n\n{{block-pagetitle}}\n\n<style>\n  /* issue color */\n  #header {\n    background-color: [*issueColor*] !important;\n  }\n  .c-issue-toc__section-title,\n  .c-issue-toc__article:before,\n  .c-issue-toc__article-authors {\n    color: [*issueColor*];\n  }\n</style>\n\n<p>\n	<img src=\"[*issueCoverImage*]\" alt=\"[*issueCoverInfo:esc*]\">\n</p>\n\n<p>\n	[+lexicon.issueEditors+]: [[simpleDocs?&docs=`[*issueEditorSelector*]`]]<br>\n	[+lexicon.coverArtwork+]: [*issueCoverInfo*]\n</p>\n\n<h2>[+lexicon.toc+]</h2>\n\n[[run_dl_issue? &issueSection=`280` &context=`[+context+]`]]\n[[run_dl_issue? &issueSection=`264` &context=`[+context+]`]]\n[[run_dl_issue? &issueSection=`265` &context=`[+context+]`]]\n[[run_dl_issue? &issueSection=`277` &context=`[+context+]`]]\n[[run_dl_issue? &issueSection=`278` &context=`[+context+]`]]\n[[run_dl_issue? &issueSection=`279` &context=`[+context+]`]]\n\n{{block-foot}}','0','1','1533032061','0');

INSERT INTO `widok_evo_site_templates` VALUES ('41','_author','','0','54','','0','{{block-pagetitle}}\n\n[*authorDescription*]','0','1','1528458793','0');

INSERT INTO `widok_evo_site_templates` VALUES ('8','SearchTpl','','0','1','','0','{{block-head}}\n\n<div class=\"container-fluid\">\n	<div class=\"content-canvas content-canvas--small\">\n		<div class=\"content-canvas__inner\">\n			<div class=\"m-search\">\n\n				<form action=\"\" method=\"get\">\n\n					<input type=\"hidden\" name=\"search\" value=\"true\">\n\n					<fieldset>\n						<div class=\"form-group\">\n							<label class=\"c-search-label c-search-label--big\"><span>Przeszukaj wszystkie kategorie</span></label>\n							<input type=\"text\" class=\"form-control\" name=\"all\" value=\"[[$_GET[\'all\']]]\">\n						</div>\n					</fieldset>\n\n					<fieldset>\n						<label class=\"c-search-label c-search-label--big\"><span>Przeszukaj pola</span></label>\n						<div class=\"inner-fieldset\">\n							<div class=\"form-group\">\n								<label class=\"c-search-label c-search-label--default\">Autor</label>\n								<select id=\"search_author\" class=\"form-control\" name=\"author\">\n									[[filter_options?\n									&id=`search_author`\n									&parents=`300`\n									&ignoreIds=``\n									&optionTextSource=`pagetitle`\n									&includeEmptyOption=`true`\n									&active_option=`[[GET?&v=`author`]]`\n									&context=`[+context+]`\n									]]\n								</select>\n							</div>\n							<div class=\"form-group\">\n								<label class=\"c-search-label c-search-label--default\">Tytuł</label>\n								<input type=\"text\" class=\"form-control\" name=\"title\" value=\"[[$_GET[\'title\']]]\">\n							</div>\n							<div class=\"form-group\">\n								<label class=\"c-search-label c-search-label--default\">Pełny tekst</label>\n								<input type=\"text\" class=\"form-control\" name=\"content\" value=\"[[$_GET[\'content\']]]\">\n							</div>\n						</div>\n					</fieldset>\n\n					<fieldset>\n						<label class=\"c-search-label c-search-label--big\"><span>Data</span></label>\n						<div class=\"inner-fieldset\">\n							<div class=\"form-group form-group--inline\">\n								<label class=\"c-search-label c-search-label--default\">Od</label>\n								<div class=\"form-inline\">\n									<select name=\"dateFromYear\" class=\"form-control\">\n										<option value=\"\"></option>\n										[[filter_options_years?\n										&id=`filter_years`\n										&parents=`[+cfg_id_archive+]`\n										&filterTv=`issueArticleDate`\n										&active_option=`[[GET?&v=`dateFromYear`]]`\n										]]\n									</select>\n									<select name=\"dateFromMonth\" class=\"form-control\">\n										<option value=\"\"></option>\n										[[filter_options_months?\n										&id=`filter_months`\n										&parents=`[+cfg_id_archive+]`\n										&date_tv=`issueArticleDate`\n										&active_option=`[[GET?&v=`dateFromMonth`]]`\n										]]\n									</select>\n									<select name=\"dateFromDay\" class=\"form-control\">\n										<option value=\"\"></option>\n										[[filter_options_days?\n										&id=`filter_days`\n										&parents=`[+cfg_id_archive+]`\n										&date_tv=`issueArticleDate`\n										&active_option=`[[GET?&v=`dateFromDay`]]`\n										]]\n									</select>\n								</div>\n							</div>\n							<div class=\"form-group form-group--inline\">\n								<label class=\"c-search-label c-search-label--default\">Do</label>\n								<div class=\"form-inline\">\n									<select name=\"dateFromYear\" class=\"form-control\">\n										<option value=\"\"></option>\n										[[filter_options_years?\n										&id=`filter_years_to`\n										&parents=`[+cfg_id_archive+]`\n										&filterTv=`issueArticleDate`\n										&active_option=`[[GET?&v=`dateToYear`]]`\n										]]\n									</select>\n									<select name=\"dateFromMonth\" class=\"form-control\">\n										<option value=\"\"></option>\n										[[filter_options_months?\n										&id=`filter_months_to`\n										&parents=`[+cfg_id_archive+]`\n										&date_tv=`issueArticleDate`\n										&active_option=`[[GET?&v=`dateToMonth`]]`\n										]]\n									</select>\n									<select name=\"dateFromDay\" class=\"form-control\">\n										<option value=\"\"></option>\n										[[filter_options_days?\n										&id=`filter_days_to`\n										&parents=`[+cfg_id_archive+]`\n										&date_tv=`issueArticleDate`\n										&active_option=`[[GET?&v=`dateToDay`]]`\n										]]\n									</select>\n								</div>\n							</div>\n						</div>\n					</fieldset>\n\n					<div class=\"form-group form-group--actions\">\n						<button class=\"btn btn-primary\" type=\"submit\">Szukaj</button>\n					</div>\n				</form>\n\n				[!run_dl_archiveSearch?\n				&id=`search`\n				&context=`[+context+]`\n				&parents=`[+cfg_id_archive+]`\n				!]\n\n			</div>\n		</div>\n	</div>\n</div>\n\n{{block-foot}}','0','1','1534064961','0');

INSERT INTO `widok_evo_site_templates` VALUES ('13','Response_401','','0','37','','0','{{block-head}}\n\n[!page_401!]\n\n{{block-foot}}','0','1','0','0');

INSERT INTO `widok_evo_site_templates` VALUES ('14','Response_404','','0','37','','0','{{block-head}}\n\n[!page_404!]\n\n{{block-foot}}','0','1','0','0');

INSERT INTO `widok_evo_site_templates` VALUES ('15','Response_503','','0','37','','0','[!page_503!]','0','1','0','0');

INSERT INTO `widok_evo_site_templates` VALUES ('16','ArchiveTpl','','0','1','','0','{{block-head}}\n\n<div class=\"container-fluid\">\n	<div class=\"content-canvas content-canvas--small\">\n		<div class=\"content-canvas__inner\">\n			<article class=\"m-archive\">\n				[[run_dl_archive?\n				&id=`archive` \n				&parents=`[*id*]`\n				]]\n			</article>\n		</div>\n	</div>\n</div>\n\n{{block-foot}}','0','1','1533996176','0');

INSERT INTO `widok_evo_site_templates` VALUES ('17','IssueArticleTpl','','0','1','','0','{{block-head}}\n\n{{block-pagetitle}}\n\n[[PageBuilder]]\n\n{{block-foot}}','0','1','1531222526','0');

INSERT INTO `widok_evo_site_templates` VALUES ('21','_gallery','','0','54','','0','','0','1','1527251314','0');

INSERT INTO `widok_evo_site_templates` VALUES ('22','SelectTemplate','','0','0','','0','','0','1','0','0');

INSERT INTO `widok_evo_site_templates` VALUES ('24','ContactTpl','','0','1','','0','{{block-head}}\n\n{{block-pagetitle}}\n\n{{block-content}}\n\n{{block-foot}}','0','1','1527241473','0');

INSERT INTO `widok_evo_site_templates` VALUES ('25','Sitemap','','0','37','','0','[[DocLister?\n	&id=`sitemap`\n	&idType=`parents`\n	&parents=`1,58`\n	&depth=`5`\n	&showParent=`1`\n	&urlScheme=`full`\n	&dateSource=`editedon` \n	&dateFormat=`%Y-%m-%d`\n	&tvList=`sitemapInclude,sitemapPriority`\n	&orderBy=`parent ASC, menuindex ASC, pagetitle ASC` \n	&filters=`AND(\n		tv:sitemapInclude:is:1;\n		content:c.template:notin:17,21,22,35,39,41;\n	)`\n	&ownerTPL=`@CODE:<?xml version=\"1.0\" encoding=\"UTF-8\"?><urlset xmlns=\"https://www.sitemaps.org/schemas/sitemap/0.9\">[+dl.wrap+]</urlset>`\n	&tpl=`@CODE:\n	<url>\n		<loc>[+url+]</loc>\n		<lastmod>[+date+]</lastmod>\n		<priority>[+tv.sitemapPriority+]</priority>\n	</url>`\n]]','0','1','1528884707','0');

INSERT INTO `widok_evo_site_templates` VALUES ('26','RedirectToChild','','0','22','','0','[[FirstChildRedirect? &responseCode=`302`]]','0','1','1504533917','0');

INSERT INTO `widok_evo_site_templates` VALUES ('35','_taxonomyFilter','','0','55','','0','','0','1','1507105519','0');

INSERT INTO `widok_evo_site_templates` VALUES ('39','Context','','0','37','','0','[[FirstChildRedirect? &responseCode=`302`]]','0','1','1528362781','1511384589');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_tmplvar_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_tmplvar_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `widok_evo_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_tmplvar_contentvalues`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_tmplvar_contentvalues`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=1535 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `widok_evo_site_tmplvar_contentvalues`
#

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('48','15','82','0');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('49','16','82','1.0');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1340','53','254','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1339','16','254','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('715','19','254','Archive');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1525','15','39','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('92','15','248','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('809','19','285','Przesyłanie tekstów, wytyczne dla autorów, sprawdzenie tekstu przed wysłaniem, prawa autorskie.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1302','53','284','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('815','19','286','Informacje o wydawcy pisma \"Widok. Teorie i praktyki kultury wizualnej\"');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1169','15','285','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1294','63','285','295');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1295','16','285','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1301','52','284','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1044','61','211','assets/files/article-pdf/issue-1/30-1828-1-PB.pdf');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('729','49','211','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('730','54','211','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('979','44','211','280');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('747','43','277','Perspectives');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('748','42','278','Punkt widokowy');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('746','42','277','Perspektywy');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1504','37','211','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1505','53','211','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1446','63','321','211');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1508','65','299','311||301');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1324','63','253','254');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('142','15','59','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1056','62','303','{\"fieldValue\":[{\"fieldTab\":\"\",\"footnote\":\"<p>\\u201e\\u015awiat jako archiwum. Krytyczne modele historyczno\\u015bci\\u201d, projekt badawczy realizowany w IBL PAN przez zesp\\u00f3\\u0142: Katarzyna Bojarska, Pawe\\u0142 Mo\\u015bcicki, Krzysztof Pijarski, Tomasz Szersze\\u0144, finansowany z programu Ministra Nauki i Szkolnictwa Wy\\u017cszego \\u201eNarodowy Program Rozwoju Humanistyki\\u201d w latach 2012\\u20132014.<\\/p>\",\"mtvRenderFootnote\":\"\\u201e\\u015awiat jako archiwum. Krytyczne modele historyczno\\u015bci\\u201d, projekt badawczy...\"},{\"fieldTab\":\"\",\"footnote\":\"<p>Por. Teresa Kuczy\\u0144ska, <i>Pragnienie rzeczy (rozmawia Klara Czerniewska)<\\/i>, \\u201eDwutygodnik.com\\u201d 202, nr 84, <a href=\\\"http:\\/\\/www.dwutygodnik.com\\/artykul\\/3649-pragnienie-rzeczy.html\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">http:\\/\\/www.dwutygodnik.com\\/artykul\\/3649-pragnienie-rzeczy.html<\\/a>, data dost\\u0119pu: 18 stycznia 2013.<\\/p>\",\"mtvRenderFootnote\":\"Por. Teresa Kuczy\\u0144ska, Pragnienie rzeczy (rozmawia Klara Czerniewska),...\"},{\"fieldTab\":\"\",\"footnote\":\"<p>Michel Foucault, <i>Archeologia wiedzy<\\/i>, prze\\u0142. A. Siemek, Pa\\u0144stwowy Instytut Wydawniczy, Warszawa 1977, s.\\u00a0165.<\\/p>\",\"mtvRenderFootnote\":\"Michel Foucault, Archeologia wiedzy, prze\\u0142. A. Siemek, Pa\\u0144stwowy...\"},{\"fieldTab\":\"\",\"footnote\":\"<p>Panel dyskusyjny towarzysz\\u0105cy wystawie \\u201eKulisy \\u00abPrzekroju\\u00bb\\u201d w warszawskiej Galerii Asymetria, 11 pa\\u017adziernika 2011.<\\/p>\",\"mtvRenderFootnote\":\"Panel dyskusyjny towarzysz\\u0105cy wystawie \\u201eKulisy \\u00abPrzekroju\\u00bb\\u201d w warszawskiej...\"},{\"fieldTab\":\"\",\"footnote\":\"<p>Por. Max Cegielski, <i>Mozaika. \\u015aladami Rechowicz\\u00f3w<\\/i>, Wydawnictwo WAB, Warszawa 2011; Klara Czerniewska, <i>Gaber i\\u00a0Pani Fantazja. Surrealizm stosowany<\\/i>, Wydawnictwo 40 000 Malarzy, Warszawa 2011.<\\/p>\",\"mtvRenderFootnote\":\"Por. Max Cegielski, Mozaika. \\u015aladami Rechowicz\\u00f3w, Wydawnictwo WAB,...\"},{\"fieldTab\":\"\",\"footnote\":\"<p>Andrzej Le\\u015bniak, <i>Gor\\u0105czka archiwum w\\u00a0sztuce wsp\\u00f3\\u0142czesnej. Symptomy choroby i\\u00a0propozycja terapii<\\/i>, \\u201eKultura Wsp\\u00f3\\u0142czesna\\u201d 2011, nr\\u00a04 (70).<\\/p>\",\"mtvRenderFootnote\":\"Andrzej Le\\u015bniak, Gor\\u0105czka archiwum w\\u00a0sztuce wsp\\u00f3\\u0142czesnej. Symptomy choroby...\"},{\"fieldTab\":\"\",\"footnote\":\"<p>Jerzy Sadecki, <i>Roztrwoniona pami\\u0119\\u0107 prasy<\\/i>, \\u201ePress\\u201d 2012, nr\\u00a06, s.\\u00a052\\u201354.<\\/p>\",\"mtvRenderFootnote\":\"Jerzy Sadecki, Roztrwoniona pami\\u0119\\u0107 prasy, \\u201ePress\\u201d 2012, nr\\u00a06,...\"},{\"fieldTab\":\"\",\"footnote\":\"<p>Por. Bill Brown, <i>A\\u00a0Sense of Things: The Object Matter of American Literature<\\/i>, University of Chicago Press, Chicago 2004. Zob. <u>t\\u0142umaczenie wst\\u0119pu ksi\\u0105\\u017cki<\\/u> w\\u00a0tym numerze \\u201eWidoku\\u201d (2013, nr\\u00a01).<\\/p>\",\"mtvRenderFootnote\":\"Por. Bill Brown, A\\u00a0Sense of Things: The Object...\"}],\"fieldSettings\":{\"autoincrement\":1}}');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1041','37','303','Zapis dyskusji seminaryjnej wokół projektu fotograficzno-teoretycznego dr Tomasza Szerszenia Ty. Ja. Rzeczy z udziałem badaczy i artystów zainteresowanych kulturą wizualną, designem, fotografią, literaturą, kulturą popularną. Dyskusja skupia się na rozumienie archiwum jako przedmiotu badań i jako praktyki badawczej i artystycznej, omawiane są kwestie związane z kulturą materialną, kulturą wizualną PRL, spuścizną estetyki i krytyki kulturowej lat 60., relacjami między Wschodem a Zachodem, pragnieniami, kulturą mieszczańską, kultem rzeczy.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('153','3','211','tag test 1,tag test 2');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1300','16','284','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1299','63','284','294');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('711','19','253','Archiwum');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1296','52','285','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1073','62','211','[]');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('779','54','281','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('770','49','281','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('247','42','264','Zbliżenie');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('248','43','264','Close-up');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('249','42','265','Panorama');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('250','43','265','Panorama');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1347','63','296','286');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1348','16','296','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1284','63','286','296');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('857','55','289','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('858','54','289','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('859','49','289','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('860','52','289','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('861','53','289','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('856','19','289','test');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('855','16','289','1.0');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1322','53','288','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('943','15','253','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('947','15','254','0');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1338','63','254','253');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('854','15','289','0');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1321','52','288','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1320','16','288','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1319','63','288','297');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('262','19','82','test');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('767','19','281','Cel i zakres tematyczny czasopisma');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('766','55','82','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('765','54','82','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('762','49','82','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('763','52','82','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('764','53','82','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('956','19','297','CFP');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('957','15','297','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('749','43','278','Viewpoint');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1333','63','297','288');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1006','55','299','assets/resource_images/299/meta_1527254419_cover_issue_1_pl_PL.jpg');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1423','63','299','320');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1014','19','303','Zapis dyskusji seminaryjnej wokół projektu fotograficzno-teoretycznego dr Tomasza Szerszenia Ty. Ja. Rzeczy z udziałem badaczy i artystów zainteresowanych kulturą wizualną, designem, fotografią, literaturą, kulturą popularną.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1016','44','303','277');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1040','61','303','assets/files/article-pdf/issue-1/24-1830-1-PB.pdf');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1028','60','303','307||302||306||311||304||301||309||310||308||305');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('838','15','288','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('837','19','288','CFP');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1331','53','287','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1330','52','287','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1329','16','287','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1328','63','287','298');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('832','15','287','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('280','19','211','W pierwszym numerze „Widoku” patrzymy na rzeczy: na to, co najbliżej, choć niekiedy najdalej doświadczenia wizualnego, na to, co najbardziej widzialne, a czasem dotkliwie przeoczane, na to, co znajome i swojskie, a co niekiedy staje się niesamowite i obce.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('803','19','284','Recenzenci');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1533','72','58','299');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1311','52','282','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1312','53','282','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('797','19','283','Rada Naukowa');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1159','15','283','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1304','63','283','293');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1334','16','297','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('821','19','287','Fundację Widok powołaliśmy wiosną 2015 roku. Naszym celem jest działanie na rzecz kultury wizualnej – za sprawą jej badania naukowego, podejmowania działalności edukacyjnej i popularyzacyjnej w tej dziedzinie oraz wspierania twórczości artystycznej.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1287','53','286','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1286','52','286','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1285','16','286','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1310','16','282','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1309','63','282','292');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1149','15','282','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('791','19','282','Zespół redakcyjny');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1314','63','281','291');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('940','15','249','0');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1353','16','249','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1354','53','249','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1336','53','297','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1335','52','297','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1379','53','291','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1279','63','59','2');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1530','71','299','#87dc6c');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('752','42','280','Wstęp do numeru');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('753','43','280','Introduction to the issue');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1188','15','286','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('751','43','279','Snapshots');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('750','42','279','Migawki');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1523','15','281','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('939','19','249','Contact');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('866','54','291','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('867','49','291','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('909','15','291','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('869','19','291','Cel i zakres tematyczny czasopisma');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1377','16','291','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1378','52','291','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1374','53','292','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('914','15','292','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('879','19','292','Zespół redakcyjny');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1369','53','293','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('883','19','293','Rada Naukowa');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1368','52','293','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('919','15','293','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1364','53','294','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('924','15','294','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('891','19','294','Reviewers');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('892','19','295','Przesyłanie tekstów, wytyczne dla autorów, sprawdzenie tekstu przed wysłaniem, prawa autorskie.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1359','53','295','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('929','15','295','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('898','19','296','Informacje o wydawcy pisma \"Widok. Teorie i praktyki kultury wizualnej\"');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1349','52','296','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('934','15','296','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('973','19','299','Numer sfinansowany w ramach programu Ministra Nauki i Szkolnictwa Wyższego, pod nazwą \"Narodowy Program Rozwoju Humanistyki\" w latach 2012-2014');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1344','52','298','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('967','19','298','The foundation was established in Spring of 2015. Our aim is to work for the benefit of visual culture – by means of academic and artistic research, education and publication.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('968','15','298','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1343','16','298','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('983','57','299','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('989','58','299','Numer sfinansowany w ramach programu Ministra Nauki i Szkolnictwa Wyższego, pod nazwą \"Narodowy Program Rozwoju Humanistyki\" w latach 2012-2014');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('990','59','299','Tomasz Szerszeń');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1001','54','299','assets/resource_images/299/cover_1527254415_cover_issue_1_pl_PL.jpg');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1468','64','303','23-04-2018 15:33:00');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1193','15','284','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1174','19','248','Znajdziesz tutaj dane kontaktowe.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1376','63','291','281');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1371','63','292','282');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1292','53','248','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1291','52','248','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1290','16','248','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1289','63','248','249');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1352','63','249','248');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1358','52','295','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1357','16','295','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1356','63','295','285');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1363','52','294','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1362','16','294','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1361','63','294','284');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1367','16','293','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1366','63','293','283');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1373','52','292','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1372','16','292','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1438','63','211','321');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1342','63','298','287');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1382','15','2','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1381','63','2','59');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1529','70','320','311,301');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1288','55','286','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1293','55','248','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1297','53','285','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1298','55','285','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1303','55','284','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1534','72','1','320');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1313','55','282','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1323','55','288','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1524','15','99','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1332','55','287','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1337','55','297','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1341','55','254','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1345','53','298','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1346','55','298','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1350','53','296','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1351','55','296','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1355','55','249','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1360','55','295','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1365','55','294','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1370','55','293','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1375','55','292','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1380','55','291','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1387','55','320','assets/resource_images/320/meta_1527254419_cover_issue_1_pl_PL.jpg');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1419','63','320','299');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1392','19','320','Numer sfinansowany w ramach programu Ministra Nauki i Szkolnictwa Wyższego, pod nazwą \"Narodowy Program Rozwoju Humanistyki\" w latach 2012-2014');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1393','57','320','1');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1394','58','320','Numer sfinansowany w ramach programu Ministra Nauki i Szkolnictwa Wyższego, pod nazwą \"Narodowy Program Rozwoju Humanistyki\" w latach 2012-2014');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1395','59','320','Tomasz Szerszeń');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1396','54','320','assets/resource_images/320/cover_1527254415_cover_issue_1_pl_PL.jpg');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1398','61','321','assets/files/article-pdf/issue-1/30-1828-1-PB.pdf');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1399','49','321','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1400','54','321','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1401','44','321','280');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1402','3','321','tag test 1,tag test 2');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1403','62','321','[]');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1404','19','321','W pierwszym numerze „Widoku” patrzymy na rzeczy: na to, co najbliżej, choć niekiedy najdalej doświadczenia wizualnego, na to, co najbardziej widzialne, a czasem dotkliwie przeoczane, na to, co znajome i swojskie, a co niekiedy staje się niesamowite i obce.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1478','63','303','322');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1526','69','303','307,302,306,311,304,301,309,310,308,305');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1527','69','322','307,302,306,311,304,301,309,310,308,305');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1506','55','211','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1507','64','211','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1494','37','321','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1495','53','321','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1496','55','321','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1497','64','321','');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1500','66','309','<p>Magda Szcześniak &ndash; absolwentka Kolegium MISH UW, doktorantka w Zakładzie Filmu i Kultury Wizualnej Instytutu Kultury Polskiej UW. Publikowała m.in. w &bdquo;Dialogu&rdquo;, &bdquo;Dwutygodniku.com&rdquo;, &bdquo;Invisible Culture&rdquo;, &bdquo;Krytyce Politycznej&rdquo;, &bdquo;Kwartalniku Filmowym&rdquo;, &bdquo;Kulturze Wsp&oacute;łczesnej&rdquo; i &bdquo;Tekstach Drugich&rdquo;. Stypendystka Fundacji Fulbrighta (University of Rochester, Graduate Program in Visual and Cultural Studies, 2010/11). Realizuje indywidualny grant Narodowego Centrum Nauki p.t. &bdquo;Przestrzenie widzialności. Wizualne konstrukcje tożsamości w Polsce po 1989 roku&rdquo;. Interesuje się kulturą wizualną, polityką tożsamościową, studiami post-zależnościowymi. Przygotowuje doktorat na temat wizualnego konstruowania tożsamości w kulturze polskiej po 1989 roku.</p>');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1501','67','309','Instytut Kultury Polskiej, Uniwersytet Warszawski');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1502','66','314','<p>Filozof, eseista i tłumacz, pracuje w Instytucie Filozofii i Socjologii PAN, uczy w Collegium Civitas i na Uniwersytecie Muri im. Franza Kafki. Autor książek <em>Międzyludzie. Koncepcja podmiotowości w pismach Harolda Blooma</em> (2005), <em>Ślad judaizmu w filozofii XX wieku</em> (2009), <em>Rewizja procesu J&oacute;zefiny K. i inne lektury od zera</em> (2011) i <em>Sprawiedliwość na końcu języka. Czytanie Waltera Benjamina</em> (2012). Laureat nagrody <em>Literatury na świecie</em> im. Andrzeja Siemka i nagrody Allianz Kulturstiftung.</p>');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1503','67','314','Instytut Filozofii i Socjologii PAN');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1409','37','322','The transcript of a seminar discussion around the photographic and research project of Tomasz Szerszeń, You. Me. Things with participation of researchers and artists interested in visual culture, design, photography, literature and popular culture. The discussion concentrates on the topic of the archive understood both as a subject of research and as an artistic and academic practice. The participants exchange opinions on the material and visual culture of postwar Poland, the heritage of the aesthetics and the cultural critique of the 60s., relations between East and West in the field of consumer culture, needs and desires, of bourgeois culture and the cult of things.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1410','19','322','Zapis dyskusji seminaryjnej wokół projektu fotograficzno-teoretycznego dr Tomasza Szerszenia Ty. Ja. Rzeczy z udziałem badaczy i artystów zainteresowanych kulturą wizualną, designem, fotografią, literaturą, kulturą popularną.');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1411','44','322','277');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1528','70','299','311,301');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1413','60','322','307||302||306||311||304||301||309||310||308||305');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1467','62','322','[]');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1458','63','322','303');

INSERT INTO `widok_evo_site_tmplvar_contentvalues` VALUES ('1472','64','322','23-04-2018 15:33:00');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_tmplvar_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_tmplvar_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `widok_evo_site_tmplvar_templates`
#

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('63','16','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('71','40','4');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('63','24','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('16','40','12');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('16','16','4');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('16','3','4');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('55','17','10');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','4','4');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','24','2');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('16','24','3');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','40','11');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('55','3','1');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('53','17','9');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('52','40','10');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('63','3','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('19','17','8');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('53','16','1');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('55','40','9');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('19','16','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('19','4','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('53','40','8');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('16','4','5');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('63','4','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('19','40','7');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('19','24','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('42','35','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('43','35','1');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('19','3','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','16','3');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('66','41','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('67','41','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('68','41','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('62','17','7');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('61','17','6');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('58','40','6');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('64','17','5');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','3','3');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('59','40','5');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('52','4','3');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('53','4','1');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('52','3','2');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('53','24','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('54','40','4');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('37','17','4');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('55','4','2');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('63','17','3');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('55','24','1');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('55','16','2');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('70','40','3');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('57','40','1');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','8','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','26','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','13','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','14','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','15','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('15','25','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('63','40','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('69','17','2');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('44','17','0');

INSERT INTO `widok_evo_site_tmplvar_templates` VALUES ('72','39','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_site_tmplvars`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_site_tmplvars`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  `editedon` int(11) NOT NULL DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `widok_evo_site_tmplvars`
#

INSERT INTO `widok_evo_site_tmplvars` VALUES ('3','text','documentTags','Tags','Comma delimited tags','0','66','0','','0','','','','1527677518','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('66','richtext','authorDescription','Opis','Informacje o autorze','0','68','0','','0','','','','1528458387','1528458013');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('37','textareamini','issueArticleSummary','Podsumowanie artykułu','Podsumowanie widoczne na liście','0','64','0','','0','','','','1527507457','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('15','custom_tv:switch','sitemapInclude','Uwzględnij w Sitemap','Uwzględnij stronę w pliku Sitemap','0','60','0','','3','','','','1528884425','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('16','option','sitemapPriority','Priorytet w Sitemap','Priorytet w pliku sitemap.xml','0','60','0',' 1.00==1.0||\n0.75==0.75||\n0.50==0.5||\n0.25==0.25||\n0.00==0.0','4','','','0.5','1528748008','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('42','text','name_context_pl','Nazwa (PL)','Nazwa w docelowym context','0','58','0','','0','','','','1508317958','1507105480');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('17','custom_tv:switch','galleryShow','Galeria: widoczność','Pokazać galerię?','0','5','0','','0','','','','1528746049','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('19','text','meta_description','META Description','Short description for search engines','0','19','0','','0','','','','1527236674','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('61','file','issueArticlePdf','PDF','Plik z katalogu \"article-pdf/issue-1/\"','0','64','0','','0','','','','1527504865','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('60','checkbox','issueArticleAuthor','Autor','Autor artykułu','0','62','0','@EVAL return $modx->runSnippet(\'tvSelectResources\',[\n\'parents\' => \'300\',\n\'includeEmptyOption\' => \'false\',\n\'orderBy\' => \'menuindex ASC\'\n]);','0','delim','&format=,','','1531221421','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('59','text','issueCoverInfo','Praca na okładce','Informacje o pracy na okładce','0','61','0','','0','','','','1527247964','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('62','custom_tv:multitv','issueArticleFootnotes','Przypisy','Przypisy artykułu','0','63','0','','0','','','','1527507094','1527506168');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('63','custom_tv:selector','translationSelector','Tłumaczenie','Wpisz aby wyszukać dokument będący tłumaczeniem','0','67','0','','0','','','','1528103277','1528103270');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('64','date','issueArticleDate','Data artykułu','Data ukazania się artykułu','0','64','0','','0','unixtime','','','1528205576','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('43','text','name_context_en','Nazwa (EN)','Nazwa w docelowym context','0','58','0','','0','','','','1508317952','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('44','option','issueArticleSection','Dział','Wybierz dział pisma','0','62','0','@EVAL return $modx->runSnippet(\'tvSelectResources\',[\n\'parents\' => \'263\',\n\'includeEmptyOption\' => \'false\'\n]);','0','','','','1527507079','1507108880');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('57','text','issueNumber','Numer wydania','Przykład: 5','0','61','0','','0','','','','1527247815','1527247815');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('58','textareamini','issueSummary','Podsumowanie wydania','Tekst podsumowujący wydanie','0','61','0','','0','','','','1528054345','1527247908');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('49','custom_tv:selector','gallerySelector','Gallery','Wpisz aby wyszukać i wybrać utworzony wcześniej zasób galerii','0','5','0','','20','','','','1527677450','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('65','checkbox','issueEditor','Redaktorzy','Redaktorzy numeru','0','61','0','@EVAL return $modx->runSnippet(\'tvSelectResources\',[\n\'parents\' => \'300\',\n\'includeEmptyOption\' => \'false\',\n\'orderBy\' => \'menuindex ASC\'\n]);','0','delim','&format=,','','1531222090','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('52','custom_tv','GooglePreview','Google Preview','To see a complete preview, document must be published.','0','19','0','@INCLUDE/assets/tvs/googlepreview/googlepreview.customtv.php','10','','','','1522529825','1522525722');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('53','text','meta_custom_title','META Custom title','Custom page title for search engines.','0','19','0','','0','','','','1527241855','1522529962');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('54','custom_tv:FastImage','issueCoverImage','Okładka numeru','Wybierz obraz okładki','0','61','0','','0','','','','1527253347','1523619760');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('55','custom_tv:FastImage','meta_img_fitv','META Image','Obraz widoczny przy udostępnianiu treści np. na Facebook','0','19','0','','2','','','','1523637138','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('67','text','authorUniversity','Uczelnia','Nazwa uczelni','0','68','0','','0','','','','1528458101','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('68','text','authorWebsite','WWW','Strona WWW','0','68','0','','0','','','','1528458339','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('69','custom_tv:selector','issueArticleAuthorSelector','Autor','Autor artykułu','0','62','0','','0','','','','1531221899','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('70','custom_tv:selector','issueEditorSelector','Redaktorzy','Redaktorzy numeru','0','61','0','','0','','','','1531222087','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('71','custom_tv:colorpicke','issueColor','Kolor numeru','Podaj kolor numeru np. #FF5239','0','61','0','','0','','&format=,&tagname=div&align=none','','1533501969','0');

INSERT INTO `widok_evo_site_tmplvars` VALUES ('72','custom_tv:selector','issueLatestSelector','Najnowszy numer','Wybierz najnowszy numer','0','61','0','','0','','','','1534067176','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_system_eventnames`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_system_eventnames`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1045 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `widok_evo_system_eventnames`
#

INSERT INTO `widok_evo_system_eventnames` VALUES ('1','OnDocPublished','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('2','OnDocUnPublished','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('4','OnWebLogin','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('6','OnWebLogout','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('7','OnWebSaveUser','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('9','OnWebChangePassword','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('11','OnManagerLogin','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('13','OnManagerLogout','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('19','OnCacheUpdate','4','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');

INSERT INTO `widok_evo_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');

INSERT INTO `widok_evo_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');

INSERT INTO `widok_evo_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');

INSERT INTO `widok_evo_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');

INSERT INTO `widok_evo_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');

INSERT INTO `widok_evo_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');

INSERT INTO `widok_evo_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');

INSERT INTO `widok_evo_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');

INSERT INTO `widok_evo_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');

INSERT INTO `widok_evo_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');

INSERT INTO `widok_evo_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');

INSERT INTO `widok_evo_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');

INSERT INTO `widok_evo_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');

INSERT INTO `widok_evo_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');

INSERT INTO `widok_evo_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');

INSERT INTO `widok_evo_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');

INSERT INTO `widok_evo_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');

INSERT INTO `widok_evo_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');

INSERT INTO `widok_evo_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');

INSERT INTO `widok_evo_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');

INSERT INTO `widok_evo_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');

INSERT INTO `widok_evo_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');

INSERT INTO `widok_evo_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');

INSERT INTO `widok_evo_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');

INSERT INTO `widok_evo_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');

INSERT INTO `widok_evo_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');

INSERT INTO `widok_evo_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');

INSERT INTO `widok_evo_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');

INSERT INTO `widok_evo_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');

INSERT INTO `widok_evo_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');

INSERT INTO `widok_evo_system_eventnames` VALUES ('70','OnSiteRefresh','1','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');

INSERT INTO `widok_evo_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');

INSERT INTO `widok_evo_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');

INSERT INTO `widok_evo_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');

INSERT INTO `widok_evo_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');

INSERT INTO `widok_evo_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');

INSERT INTO `widok_evo_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('79','OnWebAuthentication','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');

INSERT INTO `widok_evo_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');

INSERT INTO `widok_evo_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');

INSERT INTO `widok_evo_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');

INSERT INTO `widok_evo_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');

INSERT INTO `widok_evo_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');

INSERT INTO `widok_evo_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');

INSERT INTO `widok_evo_system_eventnames` VALUES ('89','OnManagerPageInit','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('90','OnWebPageInit','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('92','OnParseDocument','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('94','OnWebPageComplete','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('95','OnLogPageHit','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1000','OnPageNotFound','1','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1001','OnFileBrowserUpload','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1002','OnBeforeFileBrowserUpload','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1003','OnFileBrowserDelete','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('107','OnMakePageCacheKey','4','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1033','OnDocFormUnDelete','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1034','onBeforeMoveDocument','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1035','onAfterMoveDocument','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('104','OnBeforeLoadDocumentObject','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('105','OnAfterLoadDocumentObject','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('106','OnParseProperties','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('102','OnMakeDocUrl','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('103','OnBeforeLoadExtension','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('214','OnManagerMenuPrerender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('224','OnDocFormTemplateRender','1','Documents');

INSERT INTO `widok_evo_system_eventnames` VALUES ('215','OnManagerTopPrerender','2','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('108','OnBeforeParseParams','5','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1036','OnBeforeWebSaveUser','3','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1037','OnBeforeSimpleGallerySave','6','SimpleGallery Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1038','OnSimpleGallerySave','6','SimpleGallery Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1039','OnBeforeSimpleGalleryDelete','6','SimpleGallery Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1040','OnSimpleGalleryDelete','6','SimpleGallery Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1041','OnSimpleGalleryMove','6','SimpleGallery Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1042','OnSimpleGalleryRefresh','6','SimpleGallery Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1043','OnPBContainerRender','6','PageBuilder');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1044','OnPBFieldRender','6','PageBuilder');

INSERT INTO `widok_evo_system_eventnames` VALUES ('109','OnSecuritySettingsRender','1','System Settings');

INSERT INTO `widok_evo_system_eventnames` VALUES ('110','OnFileManagerSettingsRender','1','System Settings');

INSERT INTO `widok_evo_system_eventnames` VALUES ('225','OnBeforeMinifyCss','1','');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1004','OnBeforeFileBrowserDelete','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1005','OnFileBrowserInit','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1006','OnFileBrowserMove','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1007','OnBeforeFileBrowserMove','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1008','OnFileBrowserCopy','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1009','OnBeforeFileBrowserCopy','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1010','OnBeforeFileBrowserRename','1','File Browser Events');

INSERT INTO `widok_evo_system_eventnames` VALUES ('1011','OnFileBrowserRename','1','File Browser Events');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_system_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_system_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `widok_evo_system_settings`
#

INSERT INTO `widok_evo_system_settings` VALUES ('manager_theme','default');

INSERT INTO `widok_evo_system_settings` VALUES ('settings_version','1.4.5');

INSERT INTO `widok_evo_system_settings` VALUES ('show_meta','0');

INSERT INTO `widok_evo_system_settings` VALUES ('server_offset_time','0');

INSERT INTO `widok_evo_system_settings` VALUES ('server_protocol','http');

INSERT INTO `widok_evo_system_settings` VALUES ('manager_language','polish-utf8');

INSERT INTO `widok_evo_system_settings` VALUES ('modx_charset','UTF-8');

INSERT INTO `widok_evo_system_settings` VALUES ('site_name','Widok. Teorie i Praktyki Kultury Wizualnej');

INSERT INTO `widok_evo_system_settings` VALUES ('site_start','59');

INSERT INTO `widok_evo_system_settings` VALUES ('error_page','4');

INSERT INTO `widok_evo_system_settings` VALUES ('unauthorized_page','3');

INSERT INTO `widok_evo_system_settings` VALUES ('site_status','0');

INSERT INTO `widok_evo_system_settings` VALUES ('site_unavailable_message','The site is currently unavailable');

INSERT INTO `widok_evo_system_settings` VALUES ('track_visitors','0');

INSERT INTO `widok_evo_system_settings` VALUES ('top_howmany','10');

INSERT INTO `widok_evo_system_settings` VALUES ('auto_template_logic','sibling');

INSERT INTO `widok_evo_system_settings` VALUES ('default_template','22');

INSERT INTO `widok_evo_system_settings` VALUES ('old_template','22');

INSERT INTO `widok_evo_system_settings` VALUES ('publish_default','0');

INSERT INTO `widok_evo_system_settings` VALUES ('cache_default','1');

INSERT INTO `widok_evo_system_settings` VALUES ('search_default','1');

INSERT INTO `widok_evo_system_settings` VALUES ('friendly_urls','1');

INSERT INTO `widok_evo_system_settings` VALUES ('friendly_url_prefix','');

INSERT INTO `widok_evo_system_settings` VALUES ('friendly_url_suffix','');

INSERT INTO `widok_evo_system_settings` VALUES ('friendly_alias_urls','1');

INSERT INTO `widok_evo_system_settings` VALUES ('use_alias_path','1');

INSERT INTO `widok_evo_system_settings` VALUES ('use_udperms','1');

INSERT INTO `widok_evo_system_settings` VALUES ('udperms_allowroot','0');

INSERT INTO `widok_evo_system_settings` VALUES ('failed_login_attempts','5');

INSERT INTO `widok_evo_system_settings` VALUES ('blocked_minutes','60');

INSERT INTO `widok_evo_system_settings` VALUES ('use_captcha','0');

INSERT INTO `widok_evo_system_settings` VALUES ('captcha_words','abg,dvb,mod');

INSERT INTO `widok_evo_system_settings` VALUES ('emailsender','redakcja@pismowidok.org');

INSERT INTO `widok_evo_system_settings` VALUES ('emailsubject','Informacje o założonym koncie użytkownika');

INSERT INTO `widok_evo_system_settings` VALUES ('number_of_logs','100');

INSERT INTO `widok_evo_system_settings` VALUES ('number_of_messages','30');

INSERT INTO `widok_evo_system_settings` VALUES ('number_of_results','50');

INSERT INTO `widok_evo_system_settings` VALUES ('use_editor','1');

INSERT INTO `widok_evo_system_settings` VALUES ('use_browser','1');

INSERT INTO `widok_evo_system_settings` VALUES ('rb_base_dir','/home/pismowid/domains/widok.stronazen.pl/public_html/assets/');

INSERT INTO `widok_evo_system_settings` VALUES ('rb_base_url','assets/');

INSERT INTO `widok_evo_system_settings` VALUES ('which_editor','TinyMCE4');

INSERT INTO `widok_evo_system_settings` VALUES ('fe_editor_lang','polish-utf8');

INSERT INTO `widok_evo_system_settings` VALUES ('fck_editor_toolbar','standard');

INSERT INTO `widok_evo_system_settings` VALUES ('fck_editor_autolang','0');

INSERT INTO `widok_evo_system_settings` VALUES ('editor_css_path','');

INSERT INTO `widok_evo_system_settings` VALUES ('editor_css_selectors','Obraz po lewej=img-l;Obraz po prawej=img-r;Link Colorbox=cbox');

INSERT INTO `widok_evo_system_settings` VALUES ('strip_image_paths','1');

INSERT INTO `widok_evo_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff');

INSERT INTO `widok_evo_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');

INSERT INTO `widok_evo_system_settings` VALUES ('upload_flash','fla,flv,swf');

INSERT INTO `widok_evo_system_settings` VALUES ('upload_files','aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip');

INSERT INTO `widok_evo_system_settings` VALUES ('upload_maxsize','64000000');

INSERT INTO `widok_evo_system_settings` VALUES ('new_file_permissions','0644');

INSERT INTO `widok_evo_system_settings` VALUES ('new_folder_permissions','0755');

INSERT INTO `widok_evo_system_settings` VALUES ('filemanager_path','/home/pismowid/domains/widok.stronazen.pl/public_html/');

INSERT INTO `widok_evo_system_settings` VALUES ('theme_refresher','');

INSERT INTO `widok_evo_system_settings` VALUES ('manager_layout','4');

INSERT INTO `widok_evo_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');

INSERT INTO `widok_evo_system_settings` VALUES ('auto_menuindex','1');

INSERT INTO `widok_evo_system_settings` VALUES ('session.cookie.lifetime','604800');

INSERT INTO `widok_evo_system_settings` VALUES ('mail_check_timeperiod','60');

INSERT INTO `widok_evo_system_settings` VALUES ('manager_direction','ltr');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce_editor_theme','custom');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce_custom_plugins','style,advimage,advlink,searchreplace,print,contextmenu,paste,fullscreen,nonbreaking,xhtmlxtras,visualchars,media,table,inlinepopups,visualblocks,autolink');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce_custom_buttons1','undo,redo,|,styleselect,formatselect,bold,italic,underline,strikethrough,sub,sup,forecolor,|,bullist,numlist,outdent,indent,|,pastetext,fullscreen,code');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce_custom_buttons2','link,unlink,anchor,|,hr,image,media,table,charmap,tablecontrols');

INSERT INTO `widok_evo_system_settings` VALUES ('tree_show_protected','0');

INSERT INTO `widok_evo_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/evocms-release-news');

INSERT INTO `widok_evo_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/evocms-security-news');

INSERT INTO `widok_evo_system_settings` VALUES ('validate_referer','1');

INSERT INTO `widok_evo_system_settings` VALUES ('datepicker_offset','-10');

INSERT INTO `widok_evo_system_settings` VALUES ('xhtml_urls','1');

INSERT INTO `widok_evo_system_settings` VALUES ('allow_duplicate_alias','1');

INSERT INTO `widok_evo_system_settings` VALUES ('automatic_alias','1');

INSERT INTO `widok_evo_system_settings` VALUES ('datetime_format','dd-mm-YYYY');

INSERT INTO `widok_evo_system_settings` VALUES ('warning_visibility','0');

INSERT INTO `widok_evo_system_settings` VALUES ('remember_last_tab','1');

INSERT INTO `widok_evo_system_settings` VALUES ('site_id','5b699b8bb5145');

INSERT INTO `widok_evo_system_settings` VALUES ('site_unavailable_page','5');

INSERT INTO `widok_evo_system_settings` VALUES ('reload_site_unavailable','');

INSERT INTO `widok_evo_system_settings` VALUES ('siteunavailable_message_default','Strona jest aktualnie niedostępna.');

INSERT INTO `widok_evo_system_settings` VALUES ('reload_captcha_words','');

INSERT INTO `widok_evo_system_settings` VALUES ('captcha_words_default','EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `widok_evo_system_settings` VALUES ('reload_emailsubject','');

INSERT INTO `widok_evo_system_settings` VALUES ('emailsubject_default','Informacje o założonym koncie użytkownika');

INSERT INTO `widok_evo_system_settings` VALUES ('reload_signupemail_message','');

INSERT INTO `widok_evo_system_settings` VALUES ('signupemail_message','Witaj [+uid+]\n\nPoniżej znajdują się szczegóły logowania do Panelu Administracji [+sname+] :\n\nLogin: [+uid+]\nHasło: [+pwd+]\n\nPo zalogowaniu do Panelu Administracji ([+surl+]), możesz zmienić swoje hasło.\n\nPozdrawiam,\nAdministrator witryny');

INSERT INTO `widok_evo_system_settings` VALUES ('system_email_signup_default','<!doctype html>\n<html>\nWitaj [+uid+] \n\nPoniżej znajdziesz dane logowania do systemu zarządzania treścią serwisu [+sname+]:\n\nLogin: [+uid+]\nHasło: [+pwd+]\n\nHasło możesz zmienić po zalogowaniu do systemu ([+surl+]).\n\nPozdrawiam,\nAdministrator witryny\n</html>');

INSERT INTO `widok_evo_system_settings` VALUES ('reload_websignupemail_message','');

INSERT INTO `widok_evo_system_settings` VALUES ('websignupemail_message','Witaj [+uid+]\n\nPoniżej znajdują się szczegóły logowania do strony [+sname+]:\n\nLogin: [+uid+]\nHasło: [+pwd+]\n\nPo zalogowaniu do [+sname+] ([+surl+]), możesz zmienić swoje hasło.\n\nPozdrawiam,\nAdministrator witryny');

INSERT INTO `widok_evo_system_settings` VALUES ('system_email_websignup_default','Witaj [+uid+]\n\nPoniżej znajdują się szczegóły logowania do strony [+sname+]:\n\nLogin: [+uid+]\nHasło: [+pwd+]\n\nPo zalogowaniu do [+sname+] ([+surl+]), możesz zmienić swoje hasło.\n\nPozdrawiam,\nAdministrator witryny');

INSERT INTO `widok_evo_system_settings` VALUES ('reload_system_email_webreminder_message','');

INSERT INTO `widok_evo_system_settings` VALUES ('webpwdreminder_message','Witaj [+uid+]\n\nAby uaktywnić nowe hasło kliknij na poniższy link:\n\n[+surl+]\n\nPo zakończeniu możesz użyć następującego hasła do zalogowania się:\n\nHasło:[+pwd+]\n\neśli nie zgłaszałeś zmiany hasła zignoruj ten e-mail.\n\nPozdrawiam,\nAdministrator witryny');

INSERT INTO `widok_evo_system_settings` VALUES ('system_email_webreminder_default','Witaj [+uid+]\n\nAby uaktywnić nowe hasło kliknij na poniższy link:\n\n[+surl+]\n\nPo zakończeniu możesz użyć następującego hasła do zalogowania się:\n\nHasło: [+pwd+]\n\nJeśli nie zgłaszałeś zmiany hasła zignoruj ten e-mail.\n\nPozdrawiam,\nAdministrator witryny');

INSERT INTO `widok_evo_system_settings` VALUES ('tree_page_click','27');

INSERT INTO `widok_evo_system_settings` VALUES ('rb_webuser','0');

INSERT INTO `widok_evo_system_settings` VALUES ('clean_uploaded_filename','1');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce_custom_buttons3','');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce_custom_buttons4','');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce_css_selectors','Wstęp=emphasis;Tekst do lewej=text-left;Tekst wyśrodkowany=text-center;Tekst wyrównany=text-justify;Tekst do prawej=text-right;Element do lewej=pull-left;Element do prawej=pull-right');

INSERT INTO `widok_evo_system_settings` VALUES ('enable_bindings','1');

INSERT INTO `widok_evo_system_settings` VALUES ('make_folders','0');

INSERT INTO `widok_evo_system_settings` VALUES ('check_files_onlogin','index.php\nmanager/index.php');

INSERT INTO `widok_evo_system_settings` VALUES ('error_reporting','0');

INSERT INTO `widok_evo_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');

INSERT INTO `widok_evo_system_settings` VALUES ('mce_editor_skin','default');

INSERT INTO `widok_evo_system_settings` VALUES ('mce_template_docs','');

INSERT INTO `widok_evo_system_settings` VALUES ('mce_template_chunks','');

INSERT INTO `widok_evo_system_settings` VALUES ('mce_entermode','p');

INSERT INTO `widok_evo_system_settings` VALUES ('mce_element_format','html');

INSERT INTO `widok_evo_system_settings` VALUES ('mce_schema','html5');

INSERT INTO `widok_evo_system_settings` VALUES ('sys_files_checksum','a:2:{s:63:\"/home/pismowid/domains/widok.stronazen.pl/public_html/index.php\";s:32:\"2f6a89952c4b21dd233f0dcb2408d3e7\";s:71:\"/home/pismowid/domains/widok.stronazen.pl/public_html/manager/index.php\";s:32:\"89262755b0e2b7ca727e59ba268f0c33\";}');

INSERT INTO `widok_evo_system_settings` VALUES ('email_method','mail');

INSERT INTO `widok_evo_system_settings` VALUES ('smtp_auth','0');

INSERT INTO `widok_evo_system_settings` VALUES ('smtp_host','');

INSERT INTO `widok_evo_system_settings` VALUES ('smtp_port','25');

INSERT INTO `widok_evo_system_settings` VALUES ('smtp_username','');

INSERT INTO `widok_evo_system_settings` VALUES ('seostrict','0');

INSERT INTO `widok_evo_system_settings` VALUES ('cache_type','2');

INSERT INTO `widok_evo_system_settings` VALUES ('maxImageWidth','1920');

INSERT INTO `widok_evo_system_settings` VALUES ('maxImageHeight','1920');

INSERT INTO `widok_evo_system_settings` VALUES ('thumbWidth','200');

INSERT INTO `widok_evo_system_settings` VALUES ('thumbHeight','200');

INSERT INTO `widok_evo_system_settings` VALUES ('thumbsDir','thumbs');

INSERT INTO `widok_evo_system_settings` VALUES ('jpegQuality','90');

INSERT INTO `widok_evo_system_settings` VALUES ('denyZipDownload','0');

INSERT INTO `widok_evo_system_settings` VALUES ('denyExtensionRename','0');

INSERT INTO `widok_evo_system_settings` VALUES ('showHiddenFiles','0');

INSERT INTO `widok_evo_system_settings` VALUES ('docid_incrmnt_method','0');

INSERT INTO `widok_evo_system_settings` VALUES ('send_errormail','0');

INSERT INTO `widok_evo_system_settings` VALUES ('resource_tree_node_name','pagetitle');

INSERT INTO `widok_evo_system_settings` VALUES ('smtp_secure','none');

INSERT INTO `widok_evo_system_settings` VALUES ('aliaslistingfolder','0');

INSERT INTO `widok_evo_system_settings` VALUES ('use_breadcrumbs','1');

INSERT INTO `widok_evo_system_settings` VALUES ('which_browser','mcpuk');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_theme','custom');

INSERT INTO `widok_evo_system_settings` VALUES ('_hide_configcheck_validate_referer','1');

INSERT INTO `widok_evo_system_settings` VALUES ('enable_filter','1');

INSERT INTO `widok_evo_system_settings` VALUES ('minifyphp_incache','0');

INSERT INTO `widok_evo_system_settings` VALUES ('session_timeout','15');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_skin','lightgray');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_template_docs','');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_template_chunks','');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_entermode','p');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_element_format','html');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_schema','html5');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_custom_buttons1','undo redo | bold italic underline strikethrough | alignleft aligncenter alignright | bullist numlist outdent indent blockquote');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_custom_buttons2','formatselect | link unlink image media table | hr removeformat | subscript superscript charmap | fullscreen code');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_custom_buttons3','');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_custom_buttons4','');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_blockFormats','Paragraph=p;Header 2=h2;Header 3=h3;Header 4=h4');

INSERT INTO `widok_evo_system_settings` VALUES ('allow_eval','with_scan');

INSERT INTO `widok_evo_system_settings` VALUES ('safe_functions_at_eval','time,date,strtotime,strftime');

INSERT INTO `widok_evo_system_settings` VALUES ('lang_code','pl');

INSERT INTO `widok_evo_system_settings` VALUES ('enable_cache','1');

INSERT INTO `widok_evo_system_settings` VALUES ('group_tvs','3');

INSERT INTO `widok_evo_system_settings` VALUES ('show_picker','0');

INSERT INTO `widok_evo_system_settings` VALUES ('show_newresource_btn','0');

INSERT INTO `widok_evo_system_settings` VALUES ('show_fullscreen_btn','0');

INSERT INTO `widok_evo_system_settings` VALUES ('enable_at_syntax','0');

INSERT INTO `widok_evo_system_settings` VALUES ('global_tabs','1');

INSERT INTO `widok_evo_system_settings` VALUES ('tinymce4_skintheme','inlite');

INSERT INTO `widok_evo_system_settings` VALUES ('email_sender_method','1');

INSERT INTO `widok_evo_system_settings` VALUES ('manager_theme_mode','2');

INSERT INTO `widok_evo_system_settings` VALUES ('login_logo','assets/images/manager-login-page/login-logo-white.png');

INSERT INTO `widok_evo_system_settings` VALUES ('login_bg','');

INSERT INTO `widok_evo_system_settings` VALUES ('login_form_position','left');

INSERT INTO `widok_evo_system_settings` VALUES ('manager_menu_position','top');

INSERT INTO `widok_evo_system_settings` VALUES ('clientResize','0');

INSERT INTO `widok_evo_system_settings` VALUES ('noThumbnailsRecreation','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  `editedon` int(11) NOT NULL DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

#
# Dumping data for table `widok_evo_user_attributes`
#

INSERT INTO `widok_evo_user_attributes` VALUES ('1','1','Piotr Matysiak','1','piotr@webready.pl','','','0','0','0','1488','1533723148','1534064177','0','a4ab17de2b53d02581472a123b072d37','0','0','','','','','','','','','0','0');

INSERT INTO `widok_evo_user_attributes` VALUES ('10','10','Adam Sujka','1','adam@platypus.pl','','','0','0','0','3','1530519797','1530519828','0','4fd2d11687f7d52c12784c6c326647ca','0','0','','','','','','','','','0','0');

INSERT INTO `widok_evo_user_attributes` VALUES ('11','11','Krzysztof Pijarski','1','kpijarski@gmail.com','','','0','0','0','3','1530519782','1530605413','0','76caa5cfceaabb4a08bae4d3b22e51dc','0','0','','','','','','','','','0','0');

INSERT INTO `widok_evo_user_attributes` VALUES ('12','12','Tomasz Głowacki','3','pantomekglowacki@gmail.com','','','0','0','0','1','0','1530605376','0','7b3cbea78415c63cfaf1683c486a17b8','0','0','','','','','','','','','0','0');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_user_files`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_user_files`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_user_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent` int(10) NOT NULL DEFAULT '0',
  `class` varchar(100) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `file` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `owner` varchar(50) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdby` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `path` (`parent`),
  KEY `file` (`file`),
  KEY `class` (`class`),
  KEY `createdon` (`createdon`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Datatable for User Files.';

#
# Dumping data for table `widok_evo_user_files`
#

INSERT INTO `widok_evo_user_files` VALUES ('1','299','issueCoverImage','assets/resource_images/299/','cover_1527254415_cover_issue_1_pl_PL.jpg','image','manager','245029','2018-05-25 15:20:15','1');

INSERT INTO `widok_evo_user_files` VALUES ('2','299','meta_img_fitv','assets/resource_images/299/','meta_1527254419_cover_issue_1_pl_PL.jpg','image','manager','245029','2018-05-25 15:20:19','1');

INSERT INTO `widok_evo_user_files` VALUES ('3','320','issueCoverImage','assets/resource_images/320/','cover_1527254415_cover_issue_1_pl_PL.jpg','image','manager','245029','2018-05-25 15:20:15','1');

INSERT INTO `widok_evo_user_files` VALUES ('4','320','meta_img_fitv','assets/resource_images/320/','meta_1527254419_cover_issue_1_pl_PL.jpg','image','manager','245029','2018-05-25 15:20:19','1');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_user_messages`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_user_messages`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

#
# Dumping data for table `widok_evo_user_messages`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_user_roles`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_user_roles`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `category_manager` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `assets_files` int(1) NOT NULL DEFAULT '1',
  `assets_images` int(1) NOT NULL DEFAULT '1',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  `display_locks` int(1) NOT NULL DEFAULT '0',
  `change_resourcetype` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

#
# Dumping data for table `widok_evo_user_roles`
#

INSERT INTO `widok_evo_user_roles` VALUES ('2','Editor','Konto z podstawowymi uprawnieniami edytorskimi.','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','1','1','1','1','1','0','0','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0');

INSERT INTO `widok_evo_user_roles` VALUES ('3','Publisher','Edycja + trwałe kasowanie dokumentów, audyt, zarządzanie użytkownikami.','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','1','1','1','1','1','0','0','1','1','1','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','1','1','1','1','0','1','0','0','1','0','0');

INSERT INTO `widok_evo_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','0','0','1','1','1','1','1','1','1','1','1','1','1');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `widok_evo_user_settings`
#

INSERT INTO `widok_evo_user_settings` VALUES ('11','tinymce4_custom_buttons_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('1','tinymce4_blockFormats_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('1','tinymce4_blockFormats','Paragraph=p;Header 2=h2;Header 3=h3;Header 4=h4');

INSERT INTO `widok_evo_user_settings` VALUES ('1','tinymce4_custom_buttons_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('1','tinymce4_custom_buttons2','formatselect | link unlink image media table | hr removeformat | subscript superscript charmap | fullscreen code');

INSERT INTO `widok_evo_user_settings` VALUES ('1','tinymce4_custom_buttons1','undo redo | bold italic underline strikethrough | alignleft aligncenter alignright | bullist numlist outdent indent blockquote');

INSERT INTO `widok_evo_user_settings` VALUES ('1','tinymce4_custom_plugins_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('1','tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `widok_evo_user_settings` VALUES ('1','which_browser','default');

INSERT INTO `widok_evo_user_settings` VALUES ('1','manager_theme_mode','2');

INSERT INTO `widok_evo_user_settings` VALUES ('1','allow_manager_access','1');

INSERT INTO `widok_evo_user_settings` VALUES ('10','tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect');

INSERT INTO `widok_evo_user_settings` VALUES ('10','tinymce4_custom_buttons_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('10','tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

INSERT INTO `widok_evo_user_settings` VALUES ('10','tinymce4_custom_plugins_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('10','tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect');

INSERT INTO `widok_evo_user_settings` VALUES ('11','tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

INSERT INTO `widok_evo_user_settings` VALUES ('11','tinymce4_custom_plugins_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('11','tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect');

INSERT INTO `widok_evo_user_settings` VALUES ('11','tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect');

INSERT INTO `widok_evo_user_settings` VALUES ('11','manager_theme_mode','2');

INSERT INTO `widok_evo_user_settings` VALUES ('11','which_browser','default');

INSERT INTO `widok_evo_user_settings` VALUES ('11','tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `widok_evo_user_settings` VALUES ('10','tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `widok_evo_user_settings` VALUES ('10','manager_theme_mode','2');

INSERT INTO `widok_evo_user_settings` VALUES ('10','which_browser','default');

INSERT INTO `widok_evo_user_settings` VALUES ('10','allow_manager_access','1');

INSERT INTO `widok_evo_user_settings` VALUES ('10','tinymce4_blockFormats_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('12','tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect');

INSERT INTO `widok_evo_user_settings` VALUES ('12','tinymce4_custom_buttons_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('12','tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

INSERT INTO `widok_evo_user_settings` VALUES ('12','tinymce4_custom_plugins_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('12','manager_theme_mode','2');

INSERT INTO `widok_evo_user_settings` VALUES ('12','which_browser','default');

INSERT INTO `widok_evo_user_settings` VALUES ('12','tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `widok_evo_user_settings` VALUES ('12','allow_manager_access','1');

INSERT INTO `widok_evo_user_settings` VALUES ('11','tinymce4_blockFormats_useglobal','1');

INSERT INTO `widok_evo_user_settings` VALUES ('11','allow_manager_access','1');

INSERT INTO `widok_evo_user_settings` VALUES ('12','tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect');

INSERT INTO `widok_evo_user_settings` VALUES ('12','tinymce4_blockFormats_useglobal','1');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_web_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_web_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `widok_evo_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_web_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_web_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  `editedon` int(11) NOT NULL DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `widok_evo_web_user_attributes`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_web_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_web_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `widok_evo_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_web_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_web_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table `widok_evo_web_users`
#


# --------------------------------------------------------

#
# Table structure for table `widok_evo_webgroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_webgroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `widok_evo_webgroup_access`
#

INSERT INTO `widok_evo_webgroup_access` VALUES ('1','1','3');


# --------------------------------------------------------

#
# Table structure for table `widok_evo_webgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `widok_evo_webgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `widok_evo_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `widok_evo_webgroup_names`
#

INSERT INTO `widok_evo_webgroup_names` VALUES ('1','webusers_registered');
