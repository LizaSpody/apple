# WordPress MySQL database migration
#
# Generated: Saturday 8. May 2021 11:07 UTC
# Hostname: localhost
# Database: `apple`
# URL: //kardanets.fkinart.com
# Path: D:\\Programs\\Academy\\OpenServer\\domains\\apple.loc
# Tables: wp_actionscheduler_actions, wp_actionscheduler_claims, wp_actionscheduler_groups, wp_actionscheduler_logs, wp_admin_columns, wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_wpmailsmtp_tasks_meta, wp_yoast_indexable, wp_yoast_indexable_hierarchy, wp_yoast_migrations, wp_yoast_primary_term, wp_yoast_seo_links
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, attachment, customize_changeset, nav_menu_item, page, post, team, wpcf7_contact_form
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_actionscheduler_actions`
#

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;


#
# Table structure of table `wp_actionscheduler_actions`
#

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_actionscheduler_actions`
#
INSERT INTO `wp_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(112, 'action_scheduler/migration_hook', 'complete', '2021-05-07 17:12:06', '2021-05-07 17:12:06', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1620407526;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1620407526;s:19:"scheduled_timestamp";i:1620407526;s:9:"timestamp";i:1620407526;}', 1, 1, '2021-05-07 17:12:19', '2021-05-07 17:12:19', 0, NULL),
(113, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[1]', 'O:28:"ActionScheduler_NullSchedule":0:{}', 2, 1, '2021-05-07 17:14:08', '2021-05-07 17:14:08', 0, NULL),
(114, 'action_scheduler/migration_hook', 'complete', '2021-05-07 17:36:26', '2021-05-07 17:36:26', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1620408986;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1620408986;s:19:"scheduled_timestamp";i:1620408986;s:9:"timestamp";i:1620408986;}', 1, 1, '2021-05-07 17:37:15', '2021-05-07 17:37:15', 0, NULL) ;

#
# End of data contents of table `wp_actionscheduler_actions`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_claims`
#

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;


#
# Table structure of table `wp_actionscheduler_claims`
#

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_actionscheduler_claims`
#

#
# End of data contents of table `wp_actionscheduler_claims`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_groups`
#

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;


#
# Table structure of table `wp_actionscheduler_groups`
#

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_actionscheduler_groups`
#
INSERT INTO `wp_actionscheduler_groups` ( `group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp') ;

#
# End of data contents of table `wp_actionscheduler_groups`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_logs`
#

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;


#
# Table structure of table `wp_actionscheduler_logs`
#

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_actionscheduler_logs`
#
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 112, 'action created', '2021-05-07 17:11:06', '2021-05-07 17:11:06'),
(2, 112, 'action started via WP Cron', '2021-05-07 17:12:18', '2021-05-07 17:12:18'),
(3, 112, 'action complete via WP Cron', '2021-05-07 17:12:18', '2021-05-07 17:12:18'),
(4, 113, 'action created', '2021-05-07 17:14:07', '2021-05-07 17:14:07'),
(5, 113, 'action started via Async Request', '2021-05-07 17:14:07', '2021-05-07 17:14:07'),
(6, 113, 'action complete via Async Request', '2021-05-07 17:14:08', '2021-05-07 17:14:08'),
(7, 114, 'action created', '2021-05-07 17:35:26', '2021-05-07 17:35:26'),
(8, 114, 'action started via WP Cron', '2021-05-07 17:37:15', '2021-05-07 17:37:15'),
(9, 114, 'action complete via WP Cron', '2021-05-07 17:37:15', '2021-05-07 17:37:15') ;

#
# End of data contents of table `wp_actionscheduler_logs`
# --------------------------------------------------------



#
# Delete any existing table `wp_admin_columns`
#

DROP TABLE IF EXISTS `wp_admin_columns`;


#
# Table structure of table `wp_admin_columns`
#

CREATE TABLE `wp_admin_columns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `columns` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `list_id` (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_admin_columns`
#
INSERT INTO `wp_admin_columns` ( `id`, `list_id`, `list_key`, `title`, `columns`, `settings`, `date_created`, `date_modified`) VALUES
(1, '608c3bf0e5c6e', 'team', 'Team', 'a:12:{s:13:"608c3c8ea4438";a:7:{s:4:"type";s:21:"column-featured_image";s:5:"label";s:14:"Featured Image";s:5:"width";s:2:"80";s:10:"width_unit";s:2:"px";s:10:"image_size";s:11:"cpac-custom";s:12:"image_size_w";s:2:"60";s:12:"image_size_h";s:2:"60";}s:5:"title";a:4:{s:4:"type";s:5:"title";s:5:"label";s:5:"Title";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";}s:13:"608c3c8ea443c";a:7:{s:4:"type";s:15:"column-taxonomy";s:5:"label";s:11:"Departments";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";s:8:"taxonomy";s:11:"departments";s:12:"term_link_to";s:6:"filter";s:15:"number_of_items";s:2:"10";}s:13:"608c3c8ea443d";a:7:{s:4:"type";s:15:"column-taxonomy";s:5:"label";s:9:"Locations";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";s:8:"taxonomy";s:9:"locations";s:12:"term_link_to";s:6:"filter";s:15:"number_of_items";s:2:"10";}s:4:"date";a:4:{s:4:"type";s:4:"date";s:5:"label";s:4:"Date";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";}s:11:"wpseo-score";a:4:{s:4:"type";s:11:"wpseo-score";s:5:"label";s:217:"<span class="yoast-tooltip yoast-tooltip-n yoast-tooltip-alt" data-label="SEO score"><span class="yoast-column-seo-score yoast-column-header-has-tooltip"><span class="screen-reader-text">SEO score</span></span></span>";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";}s:23:"wpseo-score-readability";a:4:{s:4:"type";s:23:"wpseo-score-readability";s:5:"label";s:235:"<span class="yoast-tooltip yoast-tooltip-n yoast-tooltip-alt" data-label="Readability score"><span class="yoast-column-readability yoast-column-header-has-tooltip"><span class="screen-reader-text">Readability score</span></span></span>";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";}s:11:"wpseo-title";a:4:{s:4:"type";s:11:"wpseo-title";s:5:"label";s:9:"SEO Title";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";}s:14:"wpseo-metadesc";a:4:{s:4:"type";s:14:"wpseo-metadesc";s:5:"label";s:10:"Meta Desc.";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";}s:13:"wpseo-focuskw";a:4:{s:4:"type";s:13:"wpseo-focuskw";s:5:"label";s:9:"Keyphrase";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";}s:11:"wpseo-links";a:4:{s:4:"type";s:11:"wpseo-links";s:5:"label";s:256:"<span class="yoast-linked-to yoast-column-header-has-tooltip" data-tooltip-text="Number of outgoing internal links in this post. See "Yoast Columns" text in the help tab for more info."><span class="screen-reader-text">Outgoing internal links</span></span>";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";}s:12:"wpseo-linked";a:4:{s:4:"type";s:12:"wpseo-linked";s:5:"label";s:257:"<span class="yoast-linked-from yoast-column-header-has-tooltip" data-tooltip-text="Number of internal links linking to this post. See "Yoast Columns" text in the help tab for more info."><span class="screen-reader-text">Received internal links</span></span>";s:5:"width";s:0:"";s:10:"width_unit";s:1:"%";}}', NULL, '2021-04-30 17:19:56', '2021-04-30 17:21:18') ;

#
# End of data contents of table `wp_admin_columns`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-19 16:36:04', '2021-04-19 16:36:04', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0),
(7, 12, 'Max', 'test@test.loc', '', '127.0.0.1', '2021-05-06 16:11:54', '2021-05-06 16:11:54', 'test comment 1', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'comment', 0, 0),
(8, 12, 'Max', 'test@test.loc', '', '127.0.0.1', '2021-05-06 16:12:19', '2021-05-06 16:12:19', 'test comment 2', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'comment', 0, 0),
(9, 12, 'Max', 'test@test.loc', '', '127.0.0.1', '2021-05-06 16:13:10', '2021-05-06 16:13:10', 'test comment 3', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'comment', 0, 0),
(10, 12, 'Max', 'test@test.loc', '', '127.0.0.1', '2021-05-06 16:13:49', '2021-05-06 16:13:49', 'answer on comment 2', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'comment', 0, 0),
(11, 12, 'Max', 'test@test.loc', '', '127.0.0.1', '2021-05-06 16:16:08', '2021-05-06 16:16:08', 'answer on comment 2', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'comment', 8, 0),
(12, 12, 'Max', 'test@test.loc', '', '127.0.0.1', '2021-05-06 16:18:25', '2021-05-06 16:18:25', 'test', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'comment', 11, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://kardanets.fkinart.com', 'yes'),
(2, 'home', 'http://kardanets.fkinart.com', 'yes'),
(3, 'blogname', 'Apple', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'max.kardanets@beetroot.se', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:51:"codepress-admin-columns/codepress-admin-columns.php";i:2;s:54:"contact-form-7-mailchimp-extension/chimpmatic-lite.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:5;s:39:"disable-gutenberg/disable-gutenberg.php";i:6;s:21:"megamenu/megamenu.php";i:7;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:8;s:27:"svg-support/svg-support.php";i:9;s:24:"wordpress-seo/wp-seo.php";i:10;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:11;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'apple', 'yes'),
(41, 'stylesheet', 'apple', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '3', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:10:"Categories";s:5:"count";i:1;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:4:"text";s:68:"[footer-logo]\r\n[footer-description]\r\n[footer-phone]\r\n[footer-social]";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '52', 'yes'),
(82, 'page_on_front', '16', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1634402162', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:20:"wpseo_manage_options";b:1;s:20:"manage_admin_columns";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:38:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;s:23:"view_site_health_checks";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:6:"Search";}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(102, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:11:"Recent Post";s:6:"number";i:4;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:5:{i:0;s:8:"search-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:7:"sidebar";a:4:{i:0;s:8:"search-3";i:1;s:12:"categories-3";i:2;s:14:"recent-posts-2";i:3;s:11:"tag_cloud-2";}s:12:"footer-col-1";a:1:{i:0;s:6:"text-2";}s:12:"footer-col-2";a:1:{i:0;s:10:"nav_menu-2";}s:12:"footer-col-3";a:0:{}s:12:"footer-col-4";a:0:{}s:9:"mega-menu";a:2:{i:0;s:13:"custom_html-2";i:1;s:13:"custom_html-3";}s:13:"array_version";i:3;}', 'yes'),
(107, 'cron', 'a:12:{i:1620472085;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"0d04ed39571b55704c122d726248bbac";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:1:{i:0;s:7:"WP Cron";}s:8:"interval";i:60;}}}i:1620473765;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1620491764;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620491765;a:4:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1620491774;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620491775;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620492651;a:2:{s:13:"wpseo-reindex";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:31:"wpseo_permalink_structure_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620495361;a:1:{s:20:"mce_12hours_cron_job";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"12hours";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1620750965;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1620754561;a:1:{s:18:"mce_4days_cron_job";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"4days";s:4:"args";a:0:{}s:8:"interval";i:345600;}}}i:1621011052;a:1:{s:16:"wpseo_ryte_fetch";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:"title";s:4:"Tags";s:5:"count";i:0;s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:11:"Information";s:8:"nav_menu";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:3:{i:2;a:5:{s:5:"title";s:0:"";s:7:"content";s:145:"<a href="single-product.html" class="zoom-in overflow-hidden"><img src="/wp-content/themes/apple/junno/assets/img/mega-menu/1.jpg" alt="img"></a>";s:17:"mega_menu_columns";i:6;s:24:"mega_menu_parent_menu_id";i:64;s:15:"mega_menu_order";a:1:{i:64;i:5;}}i:3;a:5:{s:5:"title";s:0:"";s:7:"content";s:161:"<a href="single-product.html" class="zoom-in overflow-hidden"><img src="//localhost:3000/wp-content/themes/apple/junno/assets/img/mega-menu/1.jpg" alt="img"></a>";s:17:"mega_menu_columns";i:6;s:24:"mega_menu_parent_menu_id";i:64;s:15:"mega_menu_order";a:1:{i:64;i:6;}}s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1618850723;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:"ssl_verification_failed";a:1:{i:0;s:24:"SSL verification failed.";}}', 'yes'),
(135, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(149, 'current_theme', 'Apple', 'yes'),
(150, 'theme_mods_apple', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main_menu";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1619370129;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(184, 'category_children', 'a:0:{}', 'yes'),
(212, 'theme_mods_molla', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1619176996;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(272, 'yoast_migrations_free', 'a:1:{s:7:"version";s:6:"16.1.1";}', 'yes'),
(273, 'wpseo', 'a:44:{s:8:"tracking";b:0;s:22:"license_server_version";b:0;s:15:"ms_defaults_set";b:0;s:40:"ignore_search_engines_discouraged_notice";b:0;s:19:"indexing_first_time";b:1;s:16:"indexing_started";b:0;s:15:"indexing_reason";s:26:"permalink_settings_changed";s:29:"indexables_indexing_completed";b:1;s:7:"version";s:6:"16.1.1";s:16:"previous_version";s:0:"";s:20:"disableadvanced_meta";b:1;s:30:"enable_headless_rest_endpoints";b:1;s:17:"ryte_indexability";b:1;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1619196652;s:13:"myyoast-oauth";b:0;s:26:"semrush_integration_active";b:1;s:14:"semrush_tokens";a:0:{}s:20:"semrush_country_code";s:2:"us";s:19:"permalink_structure";s:12:"/%postname%/";s:8:"home_url";s:28:"http://kardanets.fkinart.com";s:18:"dynamic_permalinks";b:0;s:17:"category_base_url";s:0:"";s:12:"tag_base_url";s:0:"";s:21:"custom_taxonomy_slugs";a:2:{s:11:"departments";s:11:"departments";s:9:"locations";s:9:"locations";}s:29:"enable_enhanced_slack_sharing";b:1;s:25:"zapier_integration_active";b:0;s:19:"zapier_subscription";a:0:{}s:14:"zapier_api_key";s:0:"";s:23:"enable_metabox_insights";b:1;s:23:"enable_link_suggestions";b:1;}', 'yes'),
(274, 'wpseo_titles', 'a:76:{s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-pipe";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:23:"is-media-purge-relevant";b:0;s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:29:"breadcrumbs-display-blog-page";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:1;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:23:"<div class="sep"></div>";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:11:"person_logo";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:7:"company";s:25:"company_or_person_user_id";b:0;s:17:"stripcategorybase";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:23:"display-metabox-pt-post";b:1;s:23:"post_types-post-maintax";s:8:"category";s:21:"schema-page-type-post";s:7:"WebPage";s:24:"schema-article-type-post";s:7:"Article";s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:23:"display-metabox-pt-page";b:1;s:23:"post_types-page-maintax";s:1:"0";s:21:"schema-page-type-page";s:7:"WebPage";s:24:"schema-article-type-page";s:4:"None";s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:29:"post_types-attachment-maintax";s:1:"0";s:27:"schema-page-type-attachment";s:7:"WebPage";s:30:"schema-article-type-attachment";s:4:"None";s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;s:14:"person_logo_id";i:0;s:15:"company_logo_id";i:0;s:26:"taxonomy-category-ptparent";s:1:"0";s:26:"taxonomy-post_tag-ptparent";s:1:"0";s:29:"taxonomy-post_format-ptparent";s:1:"0";}', 'yes'),
(275, 'wpseo_social', 'a:18:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:19:"og_default_image_id";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:21:"og_frontpage_image_id";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:13:"wikipedia_url";s:0:"";}', 'yes'),
(276, 'recently_activated', 'a:1:{s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:1620408925;}', 'yes'),
(289, 'wpseo_ryte', 'a:2:{s:6:"status";i:-1;s:10:"last_fetch";i:1620406295;}', 'yes'),
(315, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1620472073;}', 'no'),
(380, 'theme_mods_liquormaster', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1619435203;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(452, 'acf_version', '5.9.5', 'yes'),
(460, 'bodhi_svgs_plugin_version', '2.3.18', 'yes'),
(462, 'options_header_logo', '38', 'no'),
(463, '_options_header_logo', 'field_6086f60ba90c2', 'no'),
(464, 'options_header_phone_phone_title', 'Call us:', 'no'),
(465, '_options_header_phone_phone_title', 'field_6086f6a0a90c4', 'no'),
(466, 'options_header_phone_phone_number', '(+123)4567890', 'no'),
(467, '_options_header_phone_phone_number', 'field_6086f6aea90c5', 'no'),
(468, 'options_header_phone', '', 'no'),
(469, '_options_header_phone', 'field_6086f678a90c3', 'no'),
(470, 'options_header', '', 'no'),
(471, '_options_header', 'field_6086f58014ccc', 'no'),
(472, 'options_footer_logo', '38', 'no'),
(473, '_options_footer_logo', 'field_6086f747c5cd0', 'no'),
(474, 'options_footer_description', 'We are a team of designers and developers that create high quality Magento, Prestashop, Opencart.', 'no'),
(475, '_options_footer_description', 'field_6086f761c5cd1', 'no'),
(476, 'options_footer_phone_phone_title', 'NEED HELP?', 'no'),
(477, '_options_footer_phone_phone_title', 'field_6086f7dbc5cd5', 'no'),
(478, 'options_footer_phone_phone_number', '(+800) 345 678', 'no'),
(479, '_options_footer_phone_phone_number', 'field_6086f7dbc5cd6', 'no'),
(480, 'options_footer_phone', '', 'no'),
(481, '_options_footer_phone', 'field_6086f7dbc5cd4', 'no'),
(482, 'options_footer_social_networks', '4', 'no'),
(483, '_options_footer_social_networks', 'field_6086f846450f7', 'no'),
(484, 'options_footer', '', 'no'),
(485, '_options_footer', 'field_6086f724c5ccf', 'no'),
(528, 'options_footer_social_networks_0_icon_class', 'icon-social-facebook', 'no'),
(529, '_options_footer_social_networks_0_icon_class', 'field_6086f87592481', 'no'),
(530, 'options_footer_social_networks_0_network_url', 'https://facebook.com', 'no'),
(531, '_options_footer_social_networks_0_network_url', 'field_6086f8af92482', 'no'),
(532, 'options_footer_social_networks_1_icon_class', 'icon-social-twitter', 'no'),
(533, '_options_footer_social_networks_1_icon_class', 'field_6086f87592481', 'no'),
(534, 'options_footer_social_networks_1_network_url', 'https://twitter.com', 'no'),
(535, '_options_footer_social_networks_1_network_url', 'field_6086f8af92482', 'no'),
(536, 'options_footer_social_networks_2_icon_class', 'icon-social-youtube', 'no'),
(537, '_options_footer_social_networks_2_icon_class', 'field_6086f87592481', 'no'),
(538, 'options_footer_social_networks_2_network_url', 'https://youtube.com', 'no'),
(539, '_options_footer_social_networks_2_network_url', 'field_6086f8af92482', 'no'),
(540, 'options_footer_social_networks_3_icon_class', 'icon-social-instagram', 'no'),
(541, '_options_footer_social_networks_3_icon_class', 'field_6086f87592481', 'no'),
(542, 'options_footer_social_networks_3_network_url', 'https://instagram.com', 'no'),
(543, '_options_footer_social_networks_3_network_url', 'field_6086f8af92482', 'no'),
(551, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(558, 'widget_maxmegamenu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(559, 'megamenu_version', '2.9.3', 'yes'),
(560, 'megamenu_initial_version', '2.9.3', 'yes'),
(561, 'megamenu_multisite_share_themes', 'false', 'yes'),
(562, 'megamenu_settings', 'a:4:{s:6:"prefix";s:8:"disabled";s:12:"descriptions";s:7:"enabled";s:12:"second_click";s:2:"go";s:9:"main_menu";a:7:{s:5:"event";s:5:"hover";s:6:"effect";s:7:"fade_up";s:12:"effect_speed";s:3:"200";s:13:"effect_mobile";s:8:"disabled";s:19:"effect_speed_mobile";s:3:"200";s:5:"theme";s:7:"default";s:7:"enabled";s:1:"1";}}', 'yes'),
(571, 'megamenu_themes', 'a:1:{s:7:"default";a:221:{s:5:"title";s:7:"Default";s:8:"arrow_up";s:9:"dash-f142";s:10:"arrow_down";s:9:"dash-f347";s:10:"arrow_left";s:9:"dash-f141";s:11:"arrow_right";s:9:"dash-f139";s:11:"line_height";s:3:"1.7";s:7:"z_index";s:3:"999";s:17:"shadow_horizontal";s:3:"0px";s:15:"shadow_vertical";s:3:"0px";s:11:"shadow_blur";s:3:"5px";s:13:"shadow_spread";s:3:"0px";s:12:"shadow_color";s:18:"rgba(0, 0, 0, 0.1)";s:21:"menu_item_link_height";s:4:"60px";s:25:"container_background_from";s:16:"rgba(0, 0, 0, 0)";s:23:"container_background_to";s:16:"rgba(0, 0, 0, 0)";s:21:"container_padding_top";s:3:"0px";s:23:"container_padding_right";s:3:"0px";s:24:"container_padding_bottom";s:3:"0px";s:22:"container_padding_left";s:3:"0px";s:32:"container_border_radius_top_left";s:3:"0px";s:33:"container_border_radius_top_right";s:3:"0px";s:36:"container_border_radius_bottom_right";s:3:"0px";s:35:"container_border_radius_bottom_left";s:3:"0px";s:15:"menu_item_align";s:4:"left";s:20:"menu_item_link_color";s:15:"rgb(29, 29, 29)";s:24:"menu_item_link_font_size";s:4:"14px";s:19:"menu_item_link_font";s:7:"inherit";s:29:"menu_item_link_text_transform";s:9:"uppercase";s:21:"menu_item_link_weight";s:4:"bold";s:30:"menu_item_link_text_decoration";s:4:"none";s:25:"menu_item_link_text_align";s:4:"left";s:26:"menu_item_link_color_hover";s:16:"rgb(243, 53, 53)";s:27:"menu_item_link_weight_hover";s:4:"bold";s:36:"menu_item_link_text_decoration_hover";s:4:"none";s:25:"menu_item_background_from";s:16:"rgba(0, 0, 0, 0)";s:23:"menu_item_background_to";s:13:"rgba(0,0,0,0)";s:31:"menu_item_background_hover_from";s:16:"rgba(0, 0, 0, 0)";s:29:"menu_item_background_hover_to";s:16:"rgba(0, 0, 0, 0)";s:17:"menu_item_spacing";s:3:"0px";s:26:"menu_item_link_padding_top";s:3:"0px";s:28:"menu_item_link_padding_right";s:4:"20px";s:29:"menu_item_link_padding_bottom";s:3:"0px";s:27:"menu_item_link_padding_left";s:4:"20px";s:22:"menu_item_border_color";s:4:"#fff";s:28:"menu_item_border_color_hover";s:4:"#fff";s:20:"menu_item_border_top";s:3:"0px";s:22:"menu_item_border_right";s:3:"0px";s:23:"menu_item_border_bottom";s:3:"0px";s:21:"menu_item_border_left";s:3:"0px";s:37:"menu_item_link_border_radius_top_left";s:3:"0px";s:38:"menu_item_link_border_radius_top_right";s:3:"0px";s:41:"menu_item_link_border_radius_bottom_right";s:3:"0px";s:40:"menu_item_link_border_radius_bottom_left";s:3:"0px";s:23:"menu_item_divider_color";s:24:"rgba(255, 255, 255, 0.1)";s:30:"menu_item_divider_glow_opacity";s:3:"0.1";s:27:"menu_item_highlight_current";s:2:"on";s:21:"panel_background_from";s:18:"rgb(255, 255, 255)";s:19:"panel_background_to";s:18:"rgb(255, 255, 255)";s:11:"panel_width";s:4:"100%";s:17:"panel_inner_width";s:4:"100%";s:17:"panel_padding_top";s:3:"0px";s:19:"panel_padding_right";s:3:"0px";s:20:"panel_padding_bottom";s:3:"0px";s:18:"panel_padding_left";s:3:"0px";s:18:"panel_border_color";s:4:"#fff";s:16:"panel_border_top";s:3:"0px";s:18:"panel_border_right";s:3:"0px";s:19:"panel_border_bottom";s:3:"0px";s:17:"panel_border_left";s:3:"0px";s:28:"panel_border_radius_top_left";s:3:"0px";s:29:"panel_border_radius_top_right";s:3:"0px";s:32:"panel_border_radius_bottom_right";s:3:"0px";s:31:"panel_border_radius_bottom_left";s:3:"0px";s:24:"panel_widget_padding_top";s:4:"15px";s:26:"panel_widget_padding_right";s:4:"15px";s:27:"panel_widget_padding_bottom";s:4:"15px";s:25:"panel_widget_padding_left";s:4:"15px";s:18:"panel_header_color";s:4:"#555";s:22:"panel_header_font_size";s:4:"16px";s:17:"panel_header_font";s:7:"inherit";s:27:"panel_header_text_transform";s:9:"uppercase";s:24:"panel_header_font_weight";s:4:"bold";s:28:"panel_header_text_decoration";s:4:"none";s:23:"panel_header_text_align";s:4:"left";s:24:"panel_header_padding_top";s:3:"0px";s:26:"panel_header_padding_right";s:3:"0px";s:27:"panel_header_padding_bottom";s:3:"5px";s:25:"panel_header_padding_left";s:3:"0px";s:23:"panel_header_margin_top";s:3:"0px";s:25:"panel_header_margin_right";s:3:"0px";s:26:"panel_header_margin_bottom";s:3:"0px";s:24:"panel_header_margin_left";s:3:"0px";s:25:"panel_header_border_color";s:13:"rgba(0,0,0,0)";s:31:"panel_header_border_color_hover";s:13:"rgba(0,0,0,0)";s:23:"panel_header_border_top";s:3:"0px";s:25:"panel_header_border_right";s:3:"0px";s:26:"panel_header_border_bottom";s:3:"0px";s:24:"panel_header_border_left";s:3:"0px";s:16:"panel_font_color";s:4:"#666";s:15:"panel_font_size";s:4:"14px";s:17:"panel_font_family";s:7:"inherit";s:29:"panel_second_level_font_color";s:4:"#555";s:28:"panel_second_level_font_size";s:4:"16px";s:23:"panel_second_level_font";s:7:"inherit";s:33:"panel_second_level_text_transform";s:9:"uppercase";s:30:"panel_second_level_font_weight";s:4:"bold";s:34:"panel_second_level_text_decoration";s:4:"none";s:29:"panel_second_level_text_align";s:4:"left";s:35:"panel_second_level_font_color_hover";s:4:"#555";s:36:"panel_second_level_font_weight_hover";s:4:"bold";s:40:"panel_second_level_text_decoration_hover";s:4:"none";s:40:"panel_second_level_background_hover_from";s:13:"rgba(0,0,0,0)";s:38:"panel_second_level_background_hover_to";s:13:"rgba(0,0,0,0)";s:30:"panel_second_level_padding_top";s:3:"0px";s:32:"panel_second_level_padding_right";s:3:"0px";s:33:"panel_second_level_padding_bottom";s:3:"0px";s:31:"panel_second_level_padding_left";s:3:"0px";s:29:"panel_second_level_margin_top";s:3:"0px";s:31:"panel_second_level_margin_right";s:3:"0px";s:32:"panel_second_level_margin_bottom";s:3:"0px";s:30:"panel_second_level_margin_left";s:3:"0px";s:31:"panel_second_level_border_color";s:13:"rgba(0,0,0,0)";s:37:"panel_second_level_border_color_hover";s:13:"rgba(0,0,0,0)";s:29:"panel_second_level_border_top";s:3:"0px";s:31:"panel_second_level_border_right";s:3:"0px";s:32:"panel_second_level_border_bottom";s:3:"0px";s:30:"panel_second_level_border_left";s:3:"0px";s:28:"panel_third_level_font_color";s:4:"#666";s:27:"panel_third_level_font_size";s:4:"14px";s:22:"panel_third_level_font";s:7:"inherit";s:32:"panel_third_level_text_transform";s:4:"none";s:29:"panel_third_level_font_weight";s:6:"normal";s:33:"panel_third_level_text_decoration";s:4:"none";s:28:"panel_third_level_text_align";s:4:"left";s:34:"panel_third_level_font_color_hover";s:4:"#666";s:35:"panel_third_level_font_weight_hover";s:6:"normal";s:39:"panel_third_level_text_decoration_hover";s:4:"none";s:39:"panel_third_level_background_hover_from";s:13:"rgba(0,0,0,0)";s:37:"panel_third_level_background_hover_to";s:13:"rgba(0,0,0,0)";s:29:"panel_third_level_padding_top";s:3:"0px";s:31:"panel_third_level_padding_right";s:3:"0px";s:32:"panel_third_level_padding_bottom";s:3:"0px";s:30:"panel_third_level_padding_left";s:3:"0px";s:28:"panel_third_level_margin_top";s:3:"0px";s:30:"panel_third_level_margin_right";s:3:"0px";s:31:"panel_third_level_margin_bottom";s:3:"0px";s:29:"panel_third_level_margin_left";s:3:"0px";s:30:"panel_third_level_border_color";s:13:"rgba(0,0,0,0)";s:36:"panel_third_level_border_color_hover";s:13:"rgba(0,0,0,0)";s:28:"panel_third_level_border_top";s:3:"0px";s:30:"panel_third_level_border_right";s:3:"0px";s:31:"panel_third_level_border_bottom";s:3:"0px";s:29:"panel_third_level_border_left";s:3:"0px";s:27:"flyout_menu_background_from";s:7:"#f1f1f1";s:25:"flyout_menu_background_to";s:7:"#f1f1f1";s:12:"flyout_width";s:5:"250px";s:18:"flyout_padding_top";s:3:"0px";s:20:"flyout_padding_right";s:3:"0px";s:21:"flyout_padding_bottom";s:3:"0px";s:19:"flyout_padding_left";s:3:"0px";s:19:"flyout_border_color";s:7:"#ffffff";s:17:"flyout_border_top";s:3:"0px";s:19:"flyout_border_right";s:3:"0px";s:20:"flyout_border_bottom";s:3:"0px";s:18:"flyout_border_left";s:3:"0px";s:29:"flyout_border_radius_top_left";s:3:"0px";s:30:"flyout_border_radius_top_right";s:3:"0px";s:33:"flyout_border_radius_bottom_right";s:3:"0px";s:32:"flyout_border_radius_bottom_left";s:3:"0px";s:22:"flyout_background_from";s:7:"#f1f1f1";s:20:"flyout_background_to";s:7:"#f1f1f1";s:28:"flyout_background_hover_from";s:7:"#dddddd";s:26:"flyout_background_hover_to";s:7:"#dddddd";s:18:"flyout_link_height";s:4:"35px";s:23:"flyout_link_padding_top";s:3:"0px";s:25:"flyout_link_padding_right";s:4:"10px";s:26:"flyout_link_padding_bottom";s:3:"0px";s:24:"flyout_link_padding_left";s:4:"10px";s:17:"flyout_link_color";s:4:"#666";s:16:"flyout_link_size";s:4:"14px";s:18:"flyout_link_family";s:7:"inherit";s:26:"flyout_link_text_transform";s:4:"none";s:18:"flyout_link_weight";s:6:"normal";s:27:"flyout_link_text_decoration";s:4:"none";s:23:"flyout_link_color_hover";s:4:"#666";s:24:"flyout_link_weight_hover";s:6:"normal";s:33:"flyout_link_text_decoration_hover";s:4:"none";s:30:"flyout_menu_item_divider_color";s:24:"rgba(255, 255, 255, 0.1)";s:21:"responsive_breakpoint";s:5:"768px";s:22:"toggle_background_from";s:4:"#222";s:20:"toggle_background_to";s:4:"#222";s:17:"toggle_bar_height";s:4:"40px";s:33:"toggle_bar_border_radius_top_left";s:3:"2px";s:34:"toggle_bar_border_radius_top_right";s:3:"2px";s:37:"toggle_bar_border_radius_bottom_right";s:3:"2px";s:36:"toggle_bar_border_radius_bottom_left";s:3:"2px";s:32:"mobile_menu_force_width_selector";s:4:"body";s:28:"mobile_menu_off_canvas_width";s:5:"300px";s:23:"mobile_menu_item_height";s:4:"40px";s:23:"mobile_menu_padding_top";s:3:"0px";s:25:"mobile_menu_padding_right";s:3:"0px";s:26:"mobile_menu_padding_bottom";s:3:"0px";s:24:"mobile_menu_padding_left";s:3:"0px";s:22:"mobile_background_from";s:4:"#222";s:20:"mobile_background_to";s:4:"#222";s:38:"mobile_menu_item_background_hover_from";s:4:"#333";s:36:"mobile_menu_item_background_hover_to";s:4:"#333";s:27:"mobile_menu_item_link_color";s:7:"#ffffff";s:31:"mobile_menu_item_link_font_size";s:4:"14px";s:32:"mobile_menu_item_link_text_align";s:4:"left";s:33:"mobile_menu_item_link_color_hover";s:7:"#ffffff";s:14:"mobile_columns";s:1:"1";s:10:"custom_css";s:116:"/** Push menu onto new line **/ \r\n#{$wrap} { \r\n	font-family: \\&#039;Gilroy-Bold \\\\261E\\&#039;;\r\n    clear: both; \r\n}";s:6:"shadow";s:3:"off";s:11:"transitions";s:3:"off";s:6:"resets";s:3:"off";s:17:"menu_item_divider";s:3:"off";s:24:"flyout_menu_item_divider";s:3:"off";s:21:"disable_mobile_toggle";s:3:"off";s:19:"mobile_menu_overlay";s:3:"off";s:23:"mobile_menu_force_width";s:3:"off";}}', 'yes'),
(572, 'megamenu_themes_last_updated', 'default', 'yes'),
(573, 'megamenu_toggle_blocks', 'a:1:{s:7:"default";a:1:{i:0;a:6:{s:4:"type";s:20:"menu_toggle_animated";s:5:"align";s:5:"right";s:5:"style";s:6:"slider";s:10:"icon_color";s:18:"rgb(221, 221, 221)";s:10:"icon_scale";s:3:"0.8";s:10:"aria_label";s:11:"Toggle Menu";}}}', 'yes'),
(648, 'options_footer_social_networks_0_social_network_name', 'icon-social-facebook', 'no'),
(649, '_options_footer_social_networks_0_social_network_name', 'field_6088437079206', 'no'),
(650, 'options_footer_social_networks_1_social_network_name', 'icon-social-twitter', 'no'),
(651, '_options_footer_social_networks_1_social_network_name', 'field_6088437079206', 'no'),
(652, 'options_footer_social_networks_2_social_network_name', 'icon-social-youtube', 'no'),
(653, '_options_footer_social_networks_2_social_network_name', 'field_6088437079206', 'no'),
(654, 'options_footer_social_networks_3_social_network_name', 'icon-social-instagram', 'no'),
(655, '_options_footer_social_networks_3_social_network_name', 'field_6088437079206', 'no'),
(676, 'disable_gutenberg_options', 'a:24:{s:11:"disable-all";i:1;s:23:"user-role_administrator";i:1;s:16:"user-role_editor";i:1;s:16:"user-role_author";i:1;s:21:"user-role_contributor";i:1;s:20:"user-role_subscriber";i:1;s:23:"user-role_wpseo_manager";i:1;s:22:"user-role_wpseo_editor";i:1;s:14:"post-type_post";i:1;s:14:"post-type_page";i:1;s:25:"post-type_acf-field-group";i:1;s:19:"post-type_acf-field";i:1;s:9:"templates";s:0:"";s:8:"post-ids";s:0:"";s:12:"whitelist-id";s:0:"";s:14:"whitelist-slug";s:0:"";s:15:"whitelist-title";s:0:"";s:11:"disable-nag";i:1;s:13:"styles-enable";i:0;s:9:"whitelist";i:0;s:9:"hide-menu";i:0;s:8:"hide-gut";i:0;s:12:"links-enable";i:0;s:10:"acf-enable";i:0;}', 'yes'),
(737, 'cptui_new_install', 'false', 'yes'),
(738, 'cptui_post_types', 'a:1:{s:4:"team";a:30:{s:4:"name";s:4:"team";s:5:"label";s:4:"Team";s:14:"singular_label";s:4:"Team";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:16:"delete_with_user";s:5:"false";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:4:"true";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:21:"dashicons-businessman";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:30:{s:9:"menu_name";s:4:"Team";s:9:"all_items";s:8:"All Team";s:7:"add_new";s:7:"Add new";s:12:"add_new_item";s:12:"Add new Team";s:9:"edit_item";s:9:"Edit Team";s:8:"new_item";s:8:"New Team";s:9:"view_item";s:9:"View Team";s:10:"view_items";s:9:"View Team";s:12:"search_items";s:11:"Search Team";s:9:"not_found";s:13:"No Team found";s:18:"not_found_in_trash";s:22:"No Team found in trash";s:6:"parent";s:12:"Parent Team:";s:14:"featured_image";s:28:"Featured image for this Team";s:18:"set_featured_image";s:32:"Set featured image for this Team";s:21:"remove_featured_image";s:35:"Remove featured image for this Team";s:18:"use_featured_image";s:35:"Use as featured image for this Team";s:8:"archives";s:13:"Team archives";s:16:"insert_into_item";s:16:"Insert into Team";s:21:"uploaded_to_this_item";s:19:"Upload to this Team";s:17:"filter_items_list";s:16:"Filter Team list";s:21:"items_list_navigation";s:20:"Team list navigation";s:10:"items_list";s:9:"Team list";s:10:"attributes";s:15:"Team attributes";s:14:"name_admin_bar";s:4:"Team";s:14:"item_published";s:14:"Team published";s:24:"item_published_privately";s:25:"Team published privately.";s:22:"item_reverted_to_draft";s:23:"Team reverted to draft.";s:14:"item_scheduled";s:14:"Team scheduled";s:12:"item_updated";s:13:"Team updated.";s:17:"parent_item_colon";s:12:"Parent Team:";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(743, 'cptui_taxonomies', 'a:2:{s:11:"departments";a:25:{s:4:"name";s:11:"departments";s:5:"label";s:11:"Departments";s:14:"singular_label";s:10:"Department";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:4:"true";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:6:"labels";a:19:{s:9:"menu_name";s:11:"Departments";s:9:"all_items";s:15:"All Departments";s:9:"edit_item";s:15:"Edit Department";s:9:"view_item";s:15:"View Department";s:11:"update_item";s:22:"Update Department name";s:12:"add_new_item";s:18:"Add new Department";s:13:"new_item_name";s:19:"New Department name";s:11:"parent_item";s:17:"Parent Department";s:17:"parent_item_colon";s:18:"Parent Department:";s:12:"search_items";s:18:"Search Departments";s:13:"popular_items";s:19:"Popular Departments";s:26:"separate_items_with_commas";s:32:"Separate Departments with commas";s:19:"add_or_remove_items";s:25:"Add or remove Departments";s:21:"choose_from_most_used";s:37:"Choose from the most used Departments";s:9:"not_found";s:20:"No Departments found";s:8:"no_terms";s:14:"No Departments";s:21:"items_list_navigation";s:27:"Departments list navigation";s:10:"items_list";s:16:"Departments list";s:13:"back_to_items";s:19:"Back to Departments";}s:11:"meta_box_cb";s:5:"false";s:12:"default_term";s:0:"";s:12:"object_types";a:1:{i:0;s:4:"team";}}s:9:"locations";a:25:{s:4:"name";s:9:"locations";s:5:"label";s:9:"Locations";s:14:"singular_label";s:8:"Location";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:4:"true";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:6:"labels";a:19:{s:9:"menu_name";s:9:"Locations";s:9:"all_items";s:13:"All Locations";s:9:"edit_item";s:13:"Edit Location";s:9:"view_item";s:13:"View Location";s:11:"update_item";s:20:"Update Location name";s:12:"add_new_item";s:16:"Add new Location";s:13:"new_item_name";s:17:"New Location name";s:11:"parent_item";s:15:"Parent Location";s:17:"parent_item_colon";s:16:"Parent Location:";s:12:"search_items";s:16:"Search Locations";s:13:"popular_items";s:17:"Popular Locations";s:26:"separate_items_with_commas";s:30:"Separate Locations with commas";s:19:"add_or_remove_items";s:23:"Add or remove Locations";s:21:"choose_from_most_used";s:35:"Choose from the most used Locations";s:9:"not_found";s:18:"No Locations found";s:8:"no_terms";s:12:"No Locations";s:21:"items_list_navigation";s:25:"Locations list navigation";s:10:"items_list";s:14:"Locations list";s:13:"back_to_items";s:17:"Back to Locations";}s:11:"meta_box_cb";s:5:"false";s:12:"default_term";s:0:"";s:12:"object_types";a:1:{i:0;s:4:"team";}}}', 'yes'),
(756, 'departments_children', 'a:0:{}', 'yes'),
(759, 'locations_children', 'a:0:{}', 'yes'),
(771, 'ac-deprecated-message-count_timestamp', '1621012708', 'no'),
(772, 'ac-deprecated-message-count', '0', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(773, 'ac_version', '4.2.5', 'no'),
(774, 'cpac_options_team__default', 'a:10:{s:2:"cb";s:25:"<input type="checkbox" />";s:5:"title";s:5:"Title";s:4:"date";s:4:"Date";s:11:"wpseo-score";s:217:"<span class="yoast-tooltip yoast-tooltip-n yoast-tooltip-alt" data-label="SEO score"><span class="yoast-column-seo-score yoast-column-header-has-tooltip"><span class="screen-reader-text">SEO score</span></span></span>";s:23:"wpseo-score-readability";s:235:"<span class="yoast-tooltip yoast-tooltip-n yoast-tooltip-alt" data-label="Readability score"><span class="yoast-column-readability yoast-column-header-has-tooltip"><span class="screen-reader-text">Readability score</span></span></span>";s:11:"wpseo-title";s:9:"SEO Title";s:14:"wpseo-metadesc";s:10:"Meta Desc.";s:13:"wpseo-focuskw";s:9:"Keyphrase";s:11:"wpseo-links";s:266:"<span class="yoast-linked-to yoast-column-header-has-tooltip" data-tooltip-text="Number of outgoing internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info."><span class="screen-reader-text">Outgoing internal links</span></span>";s:12:"wpseo-linked";s:267:"<span class="yoast-linked-from yoast-column-header-has-tooltip" data-tooltip-text="Number of internal links linking to this post. See &quot;Yoast Columns&quot; text in the help tab for more info."><span class="screen-reader-text">Received internal links</span></span>";}', 'no'),
(775, 'cpac_options_post__default', 'a:14:{s:2:"cb";s:25:"<input type="checkbox" />";s:5:"title";s:5:"Title";s:6:"author";s:6:"Author";s:10:"categories";s:10:"Categories";s:4:"tags";s:4:"Tags";s:8:"comments";s:111:"<span class="vers comment-grey-bubble" title="Comments"><span class="screen-reader-text">Comments</span></span>";s:4:"date";s:4:"Date";s:11:"wpseo-score";s:217:"<span class="yoast-tooltip yoast-tooltip-n yoast-tooltip-alt" data-label="SEO score"><span class="yoast-column-seo-score yoast-column-header-has-tooltip"><span class="screen-reader-text">SEO score</span></span></span>";s:23:"wpseo-score-readability";s:235:"<span class="yoast-tooltip yoast-tooltip-n yoast-tooltip-alt" data-label="Readability score"><span class="yoast-column-readability yoast-column-header-has-tooltip"><span class="screen-reader-text">Readability score</span></span></span>";s:11:"wpseo-title";s:9:"SEO Title";s:14:"wpseo-metadesc";s:10:"Meta Desc.";s:13:"wpseo-focuskw";s:9:"Keyphrase";s:11:"wpseo-links";s:266:"<span class="yoast-linked-to yoast-column-header-has-tooltip" data-tooltip-text="Number of outgoing internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info."><span class="screen-reader-text">Outgoing internal links</span></span>";s:12:"wpseo-linked";s:267:"<span class="yoast-linked-from yoast-column-header-has-tooltip" data-tooltip-text="Number of internal links linking to this post. See &quot;Yoast Columns&quot; text in the help tab for more info."><span class="screen-reader-text">Received internal links</span></span>";}', 'no'),
(776, 'cpac_options_page__default', 'a:12:{s:2:"cb";s:25:"<input type="checkbox" />";s:5:"title";s:5:"Title";s:6:"author";s:6:"Author";s:8:"comments";s:111:"<span class="vers comment-grey-bubble" title="Comments"><span class="screen-reader-text">Comments</span></span>";s:4:"date";s:4:"Date";s:11:"wpseo-score";s:217:"<span class="yoast-tooltip yoast-tooltip-n yoast-tooltip-alt" data-label="SEO score"><span class="yoast-column-seo-score yoast-column-header-has-tooltip"><span class="screen-reader-text">SEO score</span></span></span>";s:23:"wpseo-score-readability";s:235:"<span class="yoast-tooltip yoast-tooltip-n yoast-tooltip-alt" data-label="Readability score"><span class="yoast-column-readability yoast-column-header-has-tooltip"><span class="screen-reader-text">Readability score</span></span></span>";s:11:"wpseo-title";s:9:"SEO Title";s:14:"wpseo-metadesc";s:10:"Meta Desc.";s:13:"wpseo-focuskw";s:9:"Keyphrase";s:11:"wpseo-links";s:266:"<span class="yoast-linked-to yoast-column-header-has-tooltip" data-tooltip-text="Number of outgoing internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info."><span class="screen-reader-text">Outgoing internal links</span></span>";s:12:"wpseo-linked";s:267:"<span class="yoast-linked-from yoast-column-header-has-tooltip" data-tooltip-text="Number of internal links linking to this post. See &quot;Yoast Columns&quot; text in the help tab for more info."><span class="screen-reader-text">Received internal links</span></span>";}', 'no'),
(777, 'cpac_options_wp-media__default', 'a:6:{s:2:"cb";s:25:"<input type="checkbox" />";s:5:"title";s:4:"File";s:6:"author";s:6:"Author";s:6:"parent";s:11:"Uploaded to";s:8:"comments";s:111:"<span class="vers comment-grey-bubble" title="Comments"><span class="screen-reader-text">Comments</span></span>";s:4:"date";s:4:"Date";}', 'no'),
(778, 'cpac_options_wp-comments__default', 'a:5:{s:2:"cb";s:25:"<input type="checkbox" />";s:6:"author";s:6:"Author";s:7:"comment";s:7:"Comment";s:8:"response";s:14:"In response to";s:4:"date";s:12:"Submitted on";}', 'no'),
(779, 'cpac_options_wp-users__default', 'a:6:{s:2:"cb";s:25:"<input type="checkbox" />";s:8:"username";s:8:"Username";s:4:"name";s:4:"Name";s:5:"email";s:5:"Email";s:4:"role";s:4:"Role";s:5:"posts";s:5:"Posts";}', 'no'),
(809, 'rewrite_rules', 'a:130:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:39:"index.php?yoast-sitemap-xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:7:"team/?$";s:24:"index.php?post_type=team";s:37:"team/feed/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=team&feed=$matches[1]";s:32:"team/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=team&feed=$matches[1]";s:24:"team/page/([0-9]{1,})/?$";s:42:"index.php?post_type=team&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:52:"departments/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?departments=$matches[1]&feed=$matches[2]";s:47:"departments/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?departments=$matches[1]&feed=$matches[2]";s:28:"departments/([^/]+)/embed/?$";s:44:"index.php?departments=$matches[1]&embed=true";s:40:"departments/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?departments=$matches[1]&paged=$matches[2]";s:22:"departments/([^/]+)/?$";s:33:"index.php?departments=$matches[1]";s:50:"locations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?locations=$matches[1]&feed=$matches[2]";s:45:"locations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?locations=$matches[1]&feed=$matches[2]";s:26:"locations/([^/]+)/embed/?$";s:42:"index.php?locations=$matches[1]&embed=true";s:38:"locations/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?locations=$matches[1]&paged=$matches[2]";s:20:"locations/([^/]+)/?$";s:31:"index.php?locations=$matches[1]";s:32:"team/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"team/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"team/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"team/([^/]+)/embed/?$";s:37:"index.php?team=$matches[1]&embed=true";s:25:"team/([^/]+)/trackback/?$";s:31:"index.php?team=$matches[1]&tb=1";s:45:"team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?team=$matches[1]&feed=$matches[2]";s:40:"team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?team=$matches[1]&feed=$matches[2]";s:33:"team/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?team=$matches[1]&paged=$matches[2]";s:40:"team/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?team=$matches[1]&cpage=$matches[2]";s:29:"team/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?team=$matches[1]&page=$matches[2]";s:21:"team/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"team/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"team/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=16&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(976, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.4.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1620404982;s:7:"version";s:5:"5.4.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(983, 'secret_key', ', ?s6z(x8`C7:3HPI0#o(<pZTr2$i/oWur0|Kv~G]x(b/z$L;I|e=JJ[$1j9akW$', 'no'),
(991, 'wp_mail_smtp_initial_version', '2.8.0', 'no'),
(992, 'wp_mail_smtp_version', '2.8.0', 'no'),
(993, 'wp_mail_smtp', 'a:7:{s:4:"mail";a:6:{s:10:"from_email";s:18:"no-reply@apple.loc";s:9:"from_name";s:5:"Apple";s:6:"mailer";s:4:"mail";s:11:"return_path";b:0;s:16:"from_email_force";b:1;s:15:"from_name_force";b:1;}s:4:"smtp";a:7:{s:7:"autotls";s:3:"yes";s:4:"auth";s:3:"yes";s:4:"host";s:0:"";s:10:"encryption";s:4:"none";s:4:"port";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";}s:7:"smtpcom";a:2:{s:7:"api_key";s:0:"";s:7:"channel";s:0:"";}s:10:"sendinblue";a:2:{s:7:"api_key";s:0:"";s:6:"domain";s:0:"";}s:7:"mailgun";a:3:{s:7:"api_key";s:0:"";s:6:"domain";s:0:"";s:6:"region";s:2:"US";}s:8:"sendgrid";a:2:{s:7:"api_key";s:22:"mLK4JSO-QIqkSqmj3RuBcA";s:6:"domain";s:9:"apple.loc";}s:5:"gmail";a:2:{s:9:"client_id";s:0:"";s:13:"client_secret";s:0:"";}}', 'no'),
(994, 'wp_mail_smtp_activated_time', '1620407464', 'no'),
(995, 'wp_mail_smtp_activated', 'a:1:{s:4:"lite";i:1620407464;}', 'yes'),
(998, 'action_scheduler_hybrid_store_demarkation', '111', 'yes'),
(999, 'schema-ActionScheduler_StoreSchema', '3.0.1620407465', 'yes'),
(1000, 'schema-ActionScheduler_LoggerSchema', '2.0.1620407465', 'yes'),
(1001, 'wp_mail_smtp_migration_version', '3', 'yes'),
(1005, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(1006, 'action_scheduler_lock_async-request-runner', '1620472106', 'yes'),
(1007, 'wp_mail_smtp_review_notice', 'a:2:{s:4:"time";i:1620407477;s:9:"dismissed";b:0;}', 'yes'),
(1012, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(1013, 'wp_mail_smtp_notifications', 'a:4:{s:6:"update";i:1620407648;s:4:"feed";a:0:{}s:6:"events";a:0:{}s:9:"dismissed";a:0:{}}', 'yes'),
(1028, 'widget_mc4wp_form_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1029, 'mc4wp_version', '4.8.4', 'yes'),
(1030, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(1031, 'mc4wp', 'a:6:{s:19:"grecaptcha_site_key";s:0:"";s:21:"grecaptcha_secret_key";s:0:"";s:7:"api_key";s:37:"25c69102b318f3181d83b1855c5018d4-us20";s:20:"allow_usage_tracking";i:0;s:15:"debug_log_level";s:7:"warning";s:18:"first_activated_on";i:1620408444;}', 'yes'),
(1045, 'mc4wp_integrations', 'a:15:{s:13:"ninja-forms-2";a:0:{}s:15:"wp-comment-form";a:0:{}s:20:"wp-registration-form";a:0:{}s:10:"buddypress";a:0:{}s:11:"woocommerce";a:0:{}s:22:"easy-digital-downloads";a:0:{}s:14:"contact-form-7";a:7:{s:5:"lists";a:1:{i:1;s:10:"8cbb08577a";}s:5:"label";s:30:"Sign me up for the newsletter!";s:8:"precheck";s:1:"0";s:3:"css";s:1:"0";s:12:"double_optin";s:1:"1";s:15:"update_existing";s:1:"0";s:17:"replace_interests";s:1:"0";}s:14:"events-manager";a:0:{}s:11:"memberpress";a:0:{}s:11:"affiliatewp";a:0:{}s:4:"give";a:0:{}s:6:"custom";a:0:{}s:11:"ninja-forms";a:0:{}s:7:"wpforms";a:0:{}s:13:"gravity-forms";a:0:{}}', 'yes'),
(1053, 'mce_show_update_news', '0', 'no'),
(1055, 'mce_conten_panel_master', '<p class="about-description">Easier setup to get you up and running in no time. Please <a href="https://renzojohnson.com/contact" target="_blank" rel="noopener noreferrer">lets us know</a> what kind of features you would like to see added <a href="https://renzojohnson.com/contact" target="_blank" rel="noopener noreferrer">HERE</a>.</p>\n<div class="welcome-panel-column-container">\n<div class="welcome-panel-column">\n<h3>Get Started</h3>\n<p>Make sure it works as you expect <br /><a class="button button-primary button-hero load-customize" href="/wp-admin/admin.php?page=wpcf7">Review your settings <span alt="f111" class="dashicons dashicons-admin-generic" style="font-size: 17px;vertical-align: middle;"> </span> </a></p>\n</div>\n<div class="welcome-panel-column">\n<h3>Next Steps</h3>\n<p>Help me develop the plugin and provide support by <br /><a class="donate button button-primary button-hero load-customize" href="https://www.paypal.me/renzojohnson" target="_blank" rel="noopener noreferrer">Donating even a small sum <span alt="f524" class="dashicons dashicons-tickets-alt"> </span></a></p>\n</div>\n</div>\n', 'no'),
(1056, 'mce_conten_tittle_master', 'ChimpMatic Lite is now 0.5.28!', 'no'),
(1057, 'wpcf7-mce-post-id', '1', 'no'),
(1058, 'wpcf7-mce-post-update', '2020-10-30T14:11:29', 'no'),
(1060, 'cf7_mch_111', 'a:30:{s:3:"api";s:37:"25c69102b318f3181d83b1855c5018d4-us20";s:14:"mce_txtcomodin";s:3:"111";s:15:"mce_txtcomodin2";s:1:"1";s:4:"list";s:10:"8cbb08577a";s:5:"email";s:7:"[email]";s:4:"name";s:1:" ";s:12:"CustomValue1";s:0:"";s:10:"CustomKey1";s:0:"";s:12:"CustomValue2";s:0:"";s:10:"CustomKey2";s:0:"";s:12:"CustomValue3";s:0:"";s:10:"CustomKey3";s:0:"";s:12:"CustomValue4";s:0:"";s:10:"CustomKey4";s:0:"";s:12:"CustomValue5";s:0:"";s:10:"CustomKey5";s:0:"";s:12:"CustomValue6";s:0:"";s:10:"CustomKey6";s:0:"";s:12:"CustomValue7";s:0:"";s:10:"CustomKey7";s:0:"";s:12:"CustomValue8";s:0:"";s:10:"CustomKey8";s:0:"";s:12:"CustomValue9";s:0:"";s:10:"CustomKey9";s:0:"";s:13:"CustomValue10";s:0:"";s:11:"CustomKey10";s:0:"";s:6:"accept";s:0:"";s:14:"api-validation";i:1;s:7:"lisdata";a:4:{s:5:"lists";a:1:{i:0;a:22:{s:2:"id";s:10:"8cbb08577a";s:6:"web_id";i:39101;s:4:"name";s:16:"Рассылка";s:7:"contact";a:8:{s:7:"company";s:9:"nonprofit";s:8:"address1";s:4:"test";s:8:"address2";s:0:"";s:4:"city";s:5:"Odesa";s:5:"state";s:0:"";s:3:"zip";s:5:"65009";s:7:"country";s:2:"UA";s:5:"phone";s:0:"";}s:19:"permission_reminder";s:66:"You are receiving this email because you opted in via our website.";s:15:"use_archive_bar";b:1;s:17:"campaign_defaults";a:4:{s:9:"from_name";s:3:"Max";s:10:"from_email";s:23:"max.kardanets@gmail.com";s:7:"subject";s:39:"Ежемесячная рассылка";s:8:"language";s:2:"en";}s:19:"notify_on_subscribe";s:0:"";s:21:"notify_on_unsubscribe";s:0:"";s:12:"date_created";s:25:"2019-03-09T20:40:01+00:00";s:11:"list_rating";i:0;s:17:"email_type_option";b:0;s:19:"subscribe_url_short";s:24:"http://eepurl.com/gksJ3r";s:18:"subscribe_url_long";s:84:"https://loc.us20.list-manage.com/subscribe?u=2992faa1ec79527b1af25ecb6&id=8cbb08577a";s:14:"beamer_address";s:48:"us20-e922e4985c-0e22d6cae7@inbound.mailchimp.com";s:10:"visibility";s:3:"pub";s:12:"double_optin";b:0;s:11:"has_welcome";b:0;s:21:"marketing_permissions";b:0;s:7:"modules";a:0:{}s:5:"stats";a:16:{s:12:"member_count";i:11;s:17:"unsubscribe_count";i:0;s:13:"cleaned_count";i:0;s:23:"member_count_since_send";i:11;s:28:"unsubscribe_count_since_send";i:0;s:24:"cleaned_count_since_send";i:0;s:14:"campaign_count";i:4;s:18:"campaign_last_sent";s:0:"";s:17:"merge_field_count";i:4;s:12:"avg_sub_rate";i:0;s:14:"avg_unsub_rate";i:0;s:15:"target_sub_rate";i:0;s:9:"open_rate";i:0;s:10:"click_rate";i:0;s:13:"last_sub_date";s:25:"2019-12-18T03:47:46+00:00";s:15:"last_unsub_date";s:0:"";}s:6:"_links";a:16:{i:0;a:4:{s:3:"rel";s:4:"self";s:4:"href";s:51:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a";s:6:"method";s:3:"GET";s:12:"targetSchema";s:73:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Response.json";}i:1;a:5:{s:3:"rel";s:6:"parent";s:4:"href";s:40:"https://us20.api.mailchimp.com/3.0/lists";s:6:"method";s:3:"GET";s:12:"targetSchema";s:83:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/CollectionResponse.json";s:6:"schema";s:69:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/Collection.json";}i:2;a:5:{s:3:"rel";s:6:"update";s:4:"href";s:51:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a";s:6:"method";s:5:"PATCH";s:12:"targetSchema";s:73:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Response.json";s:6:"schema";s:70:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/PATCH.json";}i:3;a:5:{s:3:"rel";s:23:"batch-sub-unsub-members";s:4:"href";s:51:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a";s:6:"method";s:4:"POST";s:12:"targetSchema";s:83:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/BatchPOST-Response.json";s:6:"schema";s:74:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/BatchPOST.json";}i:4;a:3:{s:3:"rel";s:6:"delete";s:4:"href";s:51:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a";s:6:"method";s:6:"DELETE";}i:5;a:5:{s:3:"rel";s:13:"abuse-reports";s:4:"href";s:65:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/abuse-reports";s:6:"method";s:3:"GET";s:12:"targetSchema";s:89:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Abuse/CollectionResponse.json";s:6:"schema";s:75:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/Abuse/Collection.json";}i:6;a:4:{s:3:"rel";s:8:"activity";s:4:"href";s:60:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/activity";s:6:"method";s:3:"GET";s:12:"targetSchema";s:82:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Activity/Response.json";}i:7;a:4:{s:3:"rel";s:7:"clients";s:4:"href";s:59:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/clients";s:6:"method";s:3:"GET";s:12:"targetSchema";s:81:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Clients/Response.json";}i:8;a:5:{s:3:"rel";s:14:"growth-history";s:4:"href";s:66:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/growth-history";s:6:"method";s:3:"GET";s:12:"targetSchema";s:90:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Growth/CollectionResponse.json";s:6:"schema";s:76:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/Growth/Collection.json";}i:9;a:5:{s:3:"rel";s:19:"interest-categories";s:4:"href";s:71:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/interest-categories";s:6:"method";s:3:"GET";s:12:"targetSchema";s:102:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/InterestCategories/CollectionResponse.json";s:6:"schema";s:88:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/InterestCategories/Collection.json";}i:10;a:5:{s:3:"rel";s:7:"members";s:4:"href";s:59:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/members";s:6:"method";s:3:"GET";s:12:"targetSchema";s:91:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/CollectionResponse.json";s:6:"schema";s:77:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/Members/Collection.json";}i:11;a:5:{s:3:"rel";s:12:"merge-fields";s:4:"href";s:64:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/merge-fields";s:6:"method";s:3:"GET";s:12:"targetSchema";s:95:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/CollectionResponse.json";s:6:"schema";s:81:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/MergeFields/Collection.json";}i:12;a:5:{s:3:"rel";s:8:"segments";s:4:"href";s:60:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/segments";s:6:"method";s:3:"GET";s:12:"targetSchema";s:92:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Segments/CollectionResponse.json";s:6:"schema";s:78:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/Segments/Collection.json";}i:13;a:5:{s:3:"rel";s:8:"webhooks";s:4:"href";s:60:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/webhooks";s:6:"method";s:3:"GET";s:12:"targetSchema";s:92:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Webhooks/CollectionResponse.json";s:6:"schema";s:78:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/Webhooks/Collection.json";}i:14;a:5:{s:3:"rel";s:12:"signup-forms";s:4:"href";s:64:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/signup-forms";s:6:"method";s:3:"GET";s:12:"targetSchema";s:95:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/SignupForms/CollectionResponse.json";s:6:"schema";s:81:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/SignupForms/Collection.json";}i:15;a:5:{s:3:"rel";s:9:"locations";s:4:"href";s:61:"https://us20.api.mailchimp.com/3.0/lists/8cbb08577a/locations";s:6:"method";s:3:"GET";s:12:"targetSchema";s:93:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Locations/CollectionResponse.json";s:6:"schema";s:79:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/Locations/Collection.json";}}}}s:11:"total_items";i:1;s:11:"constraints";a:3:{s:10:"may_create";b:0;s:13:"max_instances";i:1;s:23:"current_total_instances";i:1;}s:6:"_links";a:2:{i:0;a:5:{s:3:"rel";s:4:"self";s:4:"href";s:40:"https://us20.api.mailchimp.com/3.0/lists";s:6:"method";s:3:"GET";s:12:"targetSchema";s:83:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/CollectionResponse.json";s:6:"schema";s:69:"https://us20.api.mailchimp.com/schema/3.0/Paths/Lists/Collection.json";}i:1;a:5:{s:3:"rel";s:6:"create";s:4:"href";s:40:"https://us20.api.mailchimp.com/3.0/lists";s:6:"method";s:4:"POST";s:12:"targetSchema";s:73:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/Response.json";s:6:"schema";s:69:"https://us20.api.mailchimp.com/schema/3.0/Definitions/Lists/POST.json";}}}s:9:"listatags";a:2:{i:0;O:13:"WPCF7_FormTag":10:{s:4:"type";s:5:"email";s:8:"basetype";s:5:"email";s:4:"name";s:5:"email";s:7:"options";a:2:{i:0;s:18:"class:form-control";i:1;s:11:"placeholder";}s:10:"raw_values";a:1:{i:0;s:18:"Your email address";}s:6:"values";a:1:{i:0;s:18:"Your email address";}s:5:"pipes";O:11:"WPCF7_Pipes":2:{s:18:"\0WPCF7_Pipes\0pipes";a:1:{i:0;O:10:"WPCF7_Pipe":2:{s:6:"before";s:18:"Your email address";s:5:"after";s:18:"Your email address";}}s:5:"pipes";a:1:{i:0;O:10:"WPCF7_Pipe":2:{s:6:"before";s:18:"Your email address";s:5:"after";s:18:"Your email address";}}}s:6:"labels";a:1:{i:0;s:18:"Your email address";}s:4:"attr";s:0:"";s:7:"content";s:0:"";}i:1;O:13:"WPCF7_FormTag":10:{s:4:"type";s:6:"submit";s:8:"basetype";s:6:"submit";s:4:"name";s:0:"";s:7:"options";a:3:{i:0;s:9:"class:btn";i:1;s:11:"nletter-btn";i:2;s:15:"text-capitalize";}s:10:"raw_values";a:1:{i:0;s:7:"Sign up";}s:6:"values";a:1:{i:0;s:7:"Sign up";}s:5:"pipes";O:11:"WPCF7_Pipes":2:{s:18:"\0WPCF7_Pipes\0pipes";a:1:{i:0;O:10:"WPCF7_Pipe":2:{s:6:"before";s:7:"Sign up";s:5:"after";s:7:"Sign up";}}s:5:"pipes";a:1:{i:0;O:10:"WPCF7_Pipe":2:{s:6:"before";s:7:"Sign up";s:5:"after";s:7:"Sign up";}}}s:6:"labels";a:1:{i:0;s:7:"Sign up";}s:4:"attr";s:0:"";s:7:"content";s:0:"";}}}', 'yes'),
(1061, 'mce_loyalty', 'a:11:{s:7:"seconds";i:12;s:7:"minutes";i:36;s:5:"hours";i:17;s:4:"mday";i:7;s:4:"wday";i:5;s:3:"mon";i:5;s:4:"year";i:2021;s:4:"yday";i:126;s:7:"weekday";s:6:"Friday";s:5:"month";s:3:"May";i:0;i:1620408972;}', 'no'),
(1062, 'chimpmatic-update', '0', 'no'),
(1063, 'mce_conten_panel_welcome', '', 'no'),
(1064, 'mce_conten_panel_lateralbanner', '', 'no'),
(1066, 'action_scheduler_migration_status', 'complete', 'yes'),
(1069, 'mce_sent', '5', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=703 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1618853646'),
(5, 1, '_wp_desired_post_slug', 'hello-world'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(7, 6, '_edit_lock', '1620131934:1'),
(8, 7, '_wp_attached_file', '2021/04/118111406_gettyimages-1180326620.jpg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:976;s:6:"height";i:549;s:4:"file";s:44:"2021/04/118111406_gettyimages-1180326620.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:44:"118111406_gettyimages-1180326620-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:44:"118111406_gettyimages-1180326620-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"118111406_gettyimages-1180326620-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium-large";a:4:{s:4:"file";s:44:"118111406_gettyimages-1180326620-600x338.jpg";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 6, '_thumbnail_id', '7'),
(13, 9, '_edit_lock', '1620131934:1'),
(16, 11, '_wp_attached_file', '2021/04/113832482_armchip.jpg'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:976;s:6:"height";i:549;s:4:"file";s:29:"2021/04/113832482_armchip.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:29:"113832482_armchip-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"113832482_armchip-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"113832482_armchip-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium-large";a:4:{s:4:"file";s:29:"113832482_armchip-600x338.jpg";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(20, 9, '_thumbnail_id', '11'),
(21, 12, '_edit_lock', '1620131934:1'),
(22, 13, '_wp_attached_file', '2021/04/118066542_facebookhomeworker.jpg'),
(23, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:976;s:6:"height";i:549;s:4:"file";s:40:"2021/04/118066542_facebookhomeworker.jpg";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:40:"118066542_facebookhomeworker-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:40:"118066542_facebookhomeworker-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"118066542_facebookhomeworker-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium-large";a:4:{s:4:"file";s:40:"118066542_facebookhomeworker-600x338.jpg";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(26, 12, '_thumbnail_id', '13'),
(27, 15, '_wp_trash_meta_status', 'publish'),
(28, 15, '_wp_trash_meta_time', '1618935569'),
(29, 16, '_edit_lock', '1620404599:1'),
(30, 2, '_edit_lock', '1619193056:1'),
(33, 13, '_edit_lock', '1619436178:1'),
(36, 21, '_edit_last', '1'),
(37, 21, '_edit_lock', '1620135026:1'),
(38, 38, '_wp_attached_file', '2021/04/apple-logo.svg'),
(39, 38, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:475;s:6:"height";i:475;s:4:"file";s:23:"/2021/04/apple-logo.svg";s:5:"sizes";a:7:{s:9:"thumbnail";a:5:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";s:1:"1";s:4:"file";s:14:"apple-logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:6:"medium";a:5:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";b:0;s:4:"file";s:14:"apple-logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium_large";a:5:{s:5:"width";s:3:"768";s:6:"height";s:1:"0";s:4:"crop";b:0;s:4:"file";s:14:"apple-logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:5:"large";a:5:{s:5:"width";s:4:"1024";s:6:"height";s:4:"1024";s:4:"crop";b:0;s:4:"file";s:14:"apple-logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"1536x1536";a:5:{s:5:"width";b:0;s:6:"height";b:0;s:4:"crop";b:0;s:4:"file";s:14:"apple-logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:9:"2048x2048";a:5:{s:5:"width";b:0;s:6:"height";b:0;s:4:"crop";b:0;s:4:"file";s:14:"apple-logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}s:12:"medium-large";a:5:{s:5:"width";b:0;s:6:"height";b:0;s:4:"crop";b:0;s:4:"file";s:14:"apple-logo.svg";s:9:"mime-type";s:13:"image/svg+xml";}}}'),
(41, 41, '_menu_item_type', 'custom'),
(42, 41, '_menu_item_menu_item_parent', '0'),
(43, 41, '_menu_item_object_id', '41'),
(44, 41, '_menu_item_object', 'custom'),
(45, 41, '_menu_item_target', ''),
(46, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 41, '_menu_item_xfn', ''),
(48, 41, '_menu_item_url', '#'),
(50, 42, '_menu_item_type', 'custom'),
(51, 42, '_menu_item_menu_item_parent', '0'),
(52, 42, '_menu_item_object_id', '42'),
(53, 42, '_menu_item_object', 'custom'),
(54, 42, '_menu_item_target', ''),
(55, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 42, '_menu_item_xfn', ''),
(57, 42, '_menu_item_url', '#'),
(59, 43, '_menu_item_type', 'custom'),
(60, 43, '_menu_item_menu_item_parent', '0'),
(61, 43, '_menu_item_object_id', '43'),
(62, 43, '_menu_item_object', 'custom'),
(63, 43, '_menu_item_target', ''),
(64, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 43, '_menu_item_xfn', ''),
(66, 43, '_menu_item_url', '#'),
(68, 44, '_menu_item_type', 'custom'),
(69, 44, '_menu_item_menu_item_parent', '0'),
(70, 44, '_menu_item_object_id', '44'),
(71, 44, '_menu_item_object', 'custom'),
(72, 44, '_menu_item_target', ''),
(73, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 44, '_menu_item_xfn', ''),
(75, 44, '_menu_item_url', '#'),
(77, 45, '_menu_item_type', 'custom'),
(78, 45, '_menu_item_menu_item_parent', '0'),
(79, 45, '_menu_item_object_id', '45'),
(80, 45, '_menu_item_object', 'custom'),
(81, 45, '_menu_item_target', ''),
(82, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 45, '_menu_item_xfn', ''),
(84, 45, '_menu_item_url', '#'),
(86, 46, 'inline_featured_image', '0'),
(87, 46, '_edit_lock', '1620403630:1'),
(88, 46, '_edit_last', '1'),
(89, 46, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(90, 48, 'inline_featured_image', '0'),
(91, 48, '_edit_lock', '1619800976:1'),
(92, 48, '_edit_last', '1'),
(93, 48, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(98, 52, 'inline_featured_image', '0'),
(99, 52, '_edit_lock', '1619716768:1'),
(100, 52, '_edit_last', '1'),
(101, 52, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(102, 54, '_menu_item_type', 'post_type'),
(103, 54, '_menu_item_menu_item_parent', '0'),
(104, 54, '_menu_item_object_id', '16'),
(105, 54, '_menu_item_object', 'page'),
(106, 54, '_menu_item_target', ''),
(107, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 54, '_menu_item_xfn', ''),
(109, 54, '_menu_item_url', ''),
(111, 55, '_menu_item_type', 'post_type'),
(112, 55, '_menu_item_menu_item_parent', '0'),
(113, 55, '_menu_item_object_id', '48'),
(114, 55, '_menu_item_object', 'page'),
(115, 55, '_menu_item_target', ''),
(116, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 55, '_menu_item_xfn', ''),
(118, 55, '_menu_item_url', ''),
(120, 56, '_menu_item_type', 'post_type'),
(121, 56, '_menu_item_menu_item_parent', '0'),
(122, 56, '_menu_item_object_id', '46'),
(123, 56, '_menu_item_object', 'page'),
(124, 56, '_menu_item_target', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(125, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(126, 56, '_menu_item_xfn', ''),
(127, 56, '_menu_item_url', ''),
(129, 57, '_menu_item_type', 'post_type'),
(130, 57, '_menu_item_menu_item_parent', '0'),
(131, 57, '_menu_item_object_id', '52'),
(132, 57, '_menu_item_object', 'page'),
(133, 57, '_menu_item_target', ''),
(134, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(135, 57, '_menu_item_xfn', ''),
(136, 57, '_menu_item_url', ''),
(147, 59, 'inline_featured_image', '0'),
(148, 59, '_edit_lock', '1620405081:1'),
(149, 59, '_edit_last', '1'),
(150, 59, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(151, 61, '_menu_item_type', 'post_type'),
(152, 61, '_menu_item_menu_item_parent', '0'),
(153, 61, '_menu_item_object_id', '59'),
(154, 61, '_menu_item_object', 'page'),
(155, 61, '_menu_item_target', ''),
(156, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(157, 61, '_menu_item_xfn', ''),
(158, 61, '_menu_item_url', ''),
(160, 62, 'inline_featured_image', '0'),
(161, 62, '_edit_lock', '1620327029:1'),
(162, 62, '_edit_last', '1'),
(163, 62, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(164, 64, '_menu_item_type', 'post_type'),
(165, 64, '_menu_item_menu_item_parent', '0'),
(166, 64, '_menu_item_object_id', '62'),
(167, 64, '_menu_item_object', 'page'),
(168, 64, '_menu_item_target', ''),
(169, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 64, '_menu_item_xfn', ''),
(171, 64, '_menu_item_url', ''),
(173, 65, '_menu_item_type', 'custom'),
(174, 65, '_menu_item_menu_item_parent', '64'),
(175, 65, '_menu_item_object_id', '65'),
(176, 65, '_menu_item_object', 'custom'),
(177, 65, '_menu_item_target', ''),
(178, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(179, 65, '_menu_item_xfn', ''),
(180, 65, '_menu_item_url', '#'),
(182, 66, '_menu_item_type', 'custom'),
(183, 66, '_menu_item_menu_item_parent', '64'),
(184, 66, '_menu_item_object_id', '66'),
(185, 66, '_menu_item_object', 'custom'),
(186, 66, '_menu_item_target', ''),
(187, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(188, 66, '_menu_item_xfn', ''),
(189, 66, '_menu_item_url', '#'),
(191, 67, '_menu_item_type', 'custom'),
(192, 67, '_menu_item_menu_item_parent', '64'),
(193, 67, '_menu_item_object_id', '67'),
(194, 67, '_menu_item_object', 'custom'),
(195, 67, '_menu_item_target', ''),
(196, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(197, 67, '_menu_item_xfn', ''),
(198, 67, '_menu_item_url', '#'),
(200, 68, '_menu_item_type', 'custom'),
(201, 68, '_menu_item_menu_item_parent', '64'),
(202, 68, '_menu_item_object_id', '68'),
(203, 68, '_menu_item_object', 'custom'),
(204, 68, '_menu_item_target', ''),
(205, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(206, 68, '_menu_item_xfn', ''),
(207, 68, '_menu_item_url', '#'),
(209, 69, '_menu_item_type', 'custom'),
(210, 69, '_menu_item_menu_item_parent', '65'),
(211, 69, '_menu_item_object_id', '69'),
(212, 69, '_menu_item_object', 'custom'),
(213, 69, '_menu_item_target', ''),
(214, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 69, '_menu_item_xfn', ''),
(216, 69, '_menu_item_url', '#'),
(218, 70, '_menu_item_type', 'custom'),
(219, 70, '_menu_item_menu_item_parent', '66'),
(220, 70, '_menu_item_object_id', '70'),
(221, 70, '_menu_item_object', 'custom'),
(222, 70, '_menu_item_target', ''),
(223, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(224, 70, '_menu_item_xfn', ''),
(225, 70, '_menu_item_url', '#'),
(227, 71, '_menu_item_type', 'custom'),
(228, 71, '_menu_item_menu_item_parent', '67'),
(229, 71, '_menu_item_object_id', '71'),
(230, 71, '_menu_item_object', 'custom'),
(231, 71, '_menu_item_target', ''),
(232, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(233, 71, '_menu_item_xfn', ''),
(234, 71, '_menu_item_url', '#'),
(236, 72, '_menu_item_type', 'custom'),
(237, 72, '_menu_item_menu_item_parent', '68'),
(238, 72, '_menu_item_object_id', '72'),
(239, 72, '_menu_item_object', 'custom'),
(240, 72, '_menu_item_target', ''),
(241, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(242, 72, '_menu_item_xfn', ''),
(243, 72, '_menu_item_url', '#'),
(245, 64, '_megamenu', 'a:3:{s:4:"type";s:8:"megamenu";s:13:"panel_columns";s:2:"12";s:16:"submenu_ordering";s:6:"forced";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(246, 65, '_megamenu', 'a:3:{s:17:"mega_menu_columns";i:3;s:15:"submenu_columns";s:1:"1";s:15:"mega_menu_order";a:1:{i:64;i:1;}}'),
(247, 66, '_megamenu', 'a:2:{s:17:"mega_menu_columns";i:3;s:15:"mega_menu_order";a:1:{i:64;i:2;}}'),
(248, 67, '_megamenu', 'a:2:{s:17:"mega_menu_columns";i:3;s:15:"mega_menu_order";a:1:{i:64;i:3;}}'),
(249, 68, '_megamenu', 'a:2:{s:17:"mega_menu_columns";i:3;s:15:"mega_menu_order";a:1:{i:64;i:4;}}'),
(250, 46, '_yoast_wpseo_content_score', '30'),
(251, 48, '_wp_page_template', 'page-templates/about.php'),
(252, 74, '_edit_last', '1'),
(253, 74, '_edit_lock', '1620471906:1'),
(254, 82, '_wp_attached_file', '2021/04/about_1.webp'),
(255, 83, '_wp_attached_file', '2021/04/about_2.webp'),
(256, 48, 'content_0_layout', 'txt_img'),
(257, 48, '_content_0_layout', 'field_608aeb98f8acd'),
(258, 48, 'content_0_image', '82'),
(259, 48, '_content_0_image', 'field_608aebd1f8ace'),
(260, 48, 'content_0_text', 'Мы продвигаем не сайт, а бизнес клиента. Наша цель — привести не «трафик», а будущих клиентов для вашего бизнеса. В этом кардинальное отличие нашего подхода от большинства агентств интернет-маркетинга.\r\n\r\nНаш самый ценный ресурс — это команда. Мы постоянно вкладываем в обучение и развитие наших сотрудников. Мы делаем всё, чтобы Netpeak был не просто агентством, а стилем жизни и образом мышления.'),
(261, 48, '_content_0_text', 'field_608aebe7f8acf'),
(306, 48, 'content', 'a:3:{i:0;s:16:"text_image_2_col";i:1;s:5:"stats";i:2;s:16:"text_image_2_col";}'),
(307, 48, '_content', 'field_608aeb45f8acc'),
(308, 84, 'content_0_layout', 'txt_img'),
(309, 84, '_content_0_layout', 'field_608aeb98f8acd'),
(310, 84, 'content_0_image', '82'),
(311, 84, '_content_0_image', 'field_608aebd1f8ace'),
(312, 84, 'content_0_text', 'Мы продвигаем не сайт, а бизнес клиента. Наша цель — привести не «трафик», а будущих клиентов для вашего бизнеса. В этом кардинальное отличие нашего подхода от большинства агентств интернет-маркетинга.\r\n\r\nНаш самый ценный ресурс — это команда. Мы постоянно вкладываем в обучение и развитие наших сотрудников. Мы делаем всё, чтобы Netpeak был не просто агентством, а стилем жизни и образом мышления.'),
(313, 84, '_content_0_text', 'field_608aebe7f8acf'),
(314, 84, 'content_1_statistics_0_title', '14 лет'),
(315, 84, '_content_1_statistics_0_title', 'field_608aec5ef8ad2'),
(316, 84, 'content_1_statistics_0_description', 'работы на результат'),
(317, 84, '_content_1_statistics_0_description', 'field_608aec75f8ad3'),
(318, 84, 'content_1_statistics_1_title', '3 087 проектов'),
(319, 84, '_content_1_statistics_1_title', 'field_608aec5ef8ad2'),
(320, 84, 'content_1_statistics_1_description', 'составляют наш опыт и знание всех необходимых деталей'),
(321, 84, '_content_1_statistics_1_description', 'field_608aec75f8ad3'),
(322, 84, 'content_1_statistics_2_title', '1 315 интернет-магазинов'),
(323, 84, '_content_1_statistics_2_title', 'field_608aec5ef8ad2'),
(324, 84, 'content_1_statistics_2_description', 'увеличивают свои продажи благодаря результатам нашей работы'),
(325, 84, '_content_1_statistics_2_description', 'field_608aec75f8ad3'),
(326, 84, 'content_1_statistics_3_title', '501 сотрудник'),
(327, 84, '_content_1_statistics_3_title', 'field_608aec5ef8ad2'),
(328, 84, 'content_1_statistics_3_description', 'работает на результат'),
(329, 84, '_content_1_statistics_3_description', 'field_608aec75f8ad3'),
(330, 84, 'content_1_statistics_4_title', '8 офисов в 5 странах'),
(331, 84, '_content_1_statistics_4_title', 'field_608aec5ef8ad2'),
(332, 84, 'content_1_statistics_4_description', 'Киев, Одесса, Харьков, Алматы, София, Москва, Нью-Йорк, Варна'),
(333, 84, '_content_1_statistics_4_description', 'field_608aec75f8ad3'),
(334, 84, 'content_1_statistics_5_title', '10 проведённых отраслевых конференций'),
(335, 84, '_content_1_statistics_5_title', 'field_608aec5ef8ad2'),
(336, 84, 'content_1_statistics_5_description', 'обучают и развивают рынок интернет-маркетинга с 2011 года'),
(337, 84, '_content_1_statistics_5_description', 'field_608aec75f8ad3'),
(338, 84, 'content_1_statistics_6_title', '91 отзыв'),
(339, 84, '_content_1_statistics_6_title', 'field_608aec5ef8ad2'),
(340, 84, 'content_1_statistics_6_description', 'о нашей работе'),
(341, 84, '_content_1_statistics_6_description', 'field_608aec75f8ad3'),
(342, 84, 'content_1_statistics_7_title', '25 наград'),
(343, 84, '_content_1_statistics_7_title', 'field_608aec5ef8ad2'),
(344, 84, 'content_1_statistics_7_description', 'за участие в международных рейтингах'),
(345, 84, '_content_1_statistics_7_description', 'field_608aec75f8ad3'),
(346, 84, 'content_1_statistics_8_title', '1 577 публикаций'),
(347, 84, '_content_1_statistics_8_title', 'field_608aec5ef8ad2'),
(348, 84, 'content_1_statistics_8_description', 'в блоге Netpeak про интернет-маркетинг и в тематических СМИ'),
(349, 84, '_content_1_statistics_8_description', 'field_608aec75f8ad3'),
(350, 84, 'content_1_statistics', '9'),
(351, 84, '_content_1_statistics', 'field_608aec1ff8ad1'),
(352, 84, 'content_2_layout', 'img_txt'),
(353, 84, '_content_2_layout', 'field_608aeb98f8acd'),
(354, 84, 'content_2_image', '83'),
(355, 84, '_content_2_image', 'field_608aebd1f8ace'),
(356, 84, 'content_2_text', '<h2>Миссия и ценности Netpeak</h2>\r\nNetpeak помогает развивать бизнес, используя возможности онлайн-пространства. Каждый день мы работаем и совершенствуемся, чтобы собственным примером вдохновить общество развиваться, улучшать страну/город, создавать полезные проекты и инициативы.\r\n\r\nМиссия Netpeak имеет несколько уровней. Идеи перечислены от простых к сложным — от первого уровня к пятому. Каждый сотрудник компании самостоятельно определяет, какой уровень миссии он сейчас проходит. Это может показаться чересчур пафосным или высокопарным, но мы в это верим. И последовательно к этому идём.'),
(357, 84, '_content_2_text', 'field_608aebe7f8acf'),
(358, 84, 'content', 'a:3:{i:0;s:16:"text_image_2_col";i:1;s:5:"stats";i:2;s:16:"text_image_2_col";}'),
(359, 84, '_content', 'field_608aeb45f8acc'),
(404, 85, 'content_0_layout', 'img_txt'),
(405, 85, '_content_0_layout', 'field_608aeb98f8acd'),
(406, 85, 'content_0_image', '83'),
(407, 85, '_content_0_image', 'field_608aebd1f8ace'),
(408, 85, 'content_0_text', '<h2>Миссия и ценности Netpeak</h2>\r\nNetpeak помогает развивать бизнес, используя возможности онлайн-пространства. Каждый день мы работаем и совершенствуемся, чтобы собственным примером вдохновить общество развиваться, улучшать страну/город, создавать полезные проекты и инициативы.\r\n\r\nМиссия Netpeak имеет несколько уровней. Идеи перечислены от простых к сложным — от первого уровня к пятому. Каждый сотрудник компании самостоятельно определяет, какой уровень миссии он сейчас проходит. Это может показаться чересчур пафосным или высокопарным, но мы в это верим. И последовательно к этому идём.'),
(409, 85, '_content_0_text', 'field_608aebe7f8acf'),
(410, 85, 'content', 'a:3:{i:0;s:16:"text_image_2_col";i:1;s:16:"text_image_2_col";i:2;s:5:"stats";}'),
(411, 85, '_content', 'field_608aeb45f8acc'),
(412, 85, 'content_1_layout', 'txt_img'),
(413, 85, '_content_1_layout', 'field_608aeb98f8acd'),
(414, 85, 'content_1_image', '82'),
(415, 85, '_content_1_image', 'field_608aebd1f8ace'),
(416, 85, 'content_1_text', 'Мы продвигаем не сайт, а бизнес клиента. Наша цель — привести не «трафик», а будущих клиентов для вашего бизнеса. В этом кардинальное отличие нашего подхода от большинства агентств интернет-маркетинга.\r\n\r\nНаш самый ценный ресурс — это команда. Мы постоянно вкладываем в обучение и развитие наших сотрудников. Мы делаем всё, чтобы Netpeak был не просто агентством, а стилем жизни и образом мышления.'),
(417, 85, '_content_1_text', 'field_608aebe7f8acf'),
(418, 85, 'content_2_statistics_0_title', '14 лет'),
(419, 85, '_content_2_statistics_0_title', 'field_608aec5ef8ad2'),
(420, 85, 'content_2_statistics_0_description', 'работы на результат'),
(421, 85, '_content_2_statistics_0_description', 'field_608aec75f8ad3'),
(422, 85, 'content_2_statistics_1_title', '3 087 проектов'),
(423, 85, '_content_2_statistics_1_title', 'field_608aec5ef8ad2'),
(424, 85, 'content_2_statistics_1_description', 'составляют наш опыт и знание всех необходимых деталей'),
(425, 85, '_content_2_statistics_1_description', 'field_608aec75f8ad3'),
(426, 85, 'content_2_statistics_2_title', '1 315 интернет-магазинов'),
(427, 85, '_content_2_statistics_2_title', 'field_608aec5ef8ad2'),
(428, 85, 'content_2_statistics_2_description', 'увеличивают свои продажи благодаря результатам нашей работы'),
(429, 85, '_content_2_statistics_2_description', 'field_608aec75f8ad3'),
(430, 85, 'content_2_statistics_3_title', '501 сотрудник'),
(431, 85, '_content_2_statistics_3_title', 'field_608aec5ef8ad2'),
(432, 85, 'content_2_statistics_3_description', 'работает на результат'),
(433, 85, '_content_2_statistics_3_description', 'field_608aec75f8ad3') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(434, 85, 'content_2_statistics_4_title', '8 офисов в 5 странах'),
(435, 85, '_content_2_statistics_4_title', 'field_608aec5ef8ad2'),
(436, 85, 'content_2_statistics_4_description', 'Киев, Одесса, Харьков, Алматы, София, Москва, Нью-Йорк, Варна'),
(437, 85, '_content_2_statistics_4_description', 'field_608aec75f8ad3'),
(438, 85, 'content_2_statistics_5_title', '10 проведённых отраслевых конференций'),
(439, 85, '_content_2_statistics_5_title', 'field_608aec5ef8ad2'),
(440, 85, 'content_2_statistics_5_description', 'обучают и развивают рынок интернет-маркетинга с 2011 года'),
(441, 85, '_content_2_statistics_5_description', 'field_608aec75f8ad3'),
(442, 85, 'content_2_statistics_6_title', '91 отзыв'),
(443, 85, '_content_2_statistics_6_title', 'field_608aec5ef8ad2'),
(444, 85, 'content_2_statistics_6_description', 'о нашей работе'),
(445, 85, '_content_2_statistics_6_description', 'field_608aec75f8ad3'),
(446, 85, 'content_2_statistics_7_title', '25 наград'),
(447, 85, '_content_2_statistics_7_title', 'field_608aec5ef8ad2'),
(448, 85, 'content_2_statistics_7_description', 'за участие в международных рейтингах'),
(449, 85, '_content_2_statistics_7_description', 'field_608aec75f8ad3'),
(450, 85, 'content_2_statistics_8_title', '1 577 публикаций'),
(451, 85, '_content_2_statistics_8_title', 'field_608aec5ef8ad2'),
(452, 85, 'content_2_statistics_8_description', 'в блоге Netpeak про интернет-маркетинг и в тематических СМИ'),
(453, 85, '_content_2_statistics_8_description', 'field_608aec75f8ad3'),
(454, 85, 'content_2_statistics', '9'),
(455, 85, '_content_2_statistics', 'field_608aec1ff8ad1'),
(456, 48, 'content_1_statistics_0_title', '14 лет'),
(457, 48, '_content_1_statistics_0_title', 'field_608aec5ef8ad2'),
(458, 48, 'content_1_statistics_0_description', 'работы на результат'),
(459, 48, '_content_1_statistics_0_description', 'field_608aec75f8ad3'),
(460, 48, 'content_1_statistics_1_title', '3 087 проектов'),
(461, 48, '_content_1_statistics_1_title', 'field_608aec5ef8ad2'),
(462, 48, 'content_1_statistics_1_description', 'составляют наш опыт и знание всех необходимых деталей'),
(463, 48, '_content_1_statistics_1_description', 'field_608aec75f8ad3'),
(464, 48, 'content_1_statistics_2_title', '1 315 интернет-магазинов'),
(465, 48, '_content_1_statistics_2_title', 'field_608aec5ef8ad2'),
(466, 48, 'content_1_statistics_2_description', 'увеличивают свои продажи благодаря результатам нашей работы'),
(467, 48, '_content_1_statistics_2_description', 'field_608aec75f8ad3'),
(468, 48, 'content_1_statistics_3_title', '501 сотрудник'),
(469, 48, '_content_1_statistics_3_title', 'field_608aec5ef8ad2'),
(470, 48, 'content_1_statistics_3_description', 'работает на результат'),
(471, 48, '_content_1_statistics_3_description', 'field_608aec75f8ad3'),
(472, 48, 'content_1_statistics_4_title', '8 офисов в 5 странах'),
(473, 48, '_content_1_statistics_4_title', 'field_608aec5ef8ad2'),
(474, 48, 'content_1_statistics_4_description', 'Киев, Одесса, Харьков, Алматы, София, Москва, Нью-Йорк, Варна'),
(475, 48, '_content_1_statistics_4_description', 'field_608aec75f8ad3'),
(476, 48, 'content_1_statistics_5_title', '10 проведённых отраслевых конференций'),
(477, 48, '_content_1_statistics_5_title', 'field_608aec5ef8ad2'),
(478, 48, 'content_1_statistics_5_description', 'обучают и развивают рынок интернет-маркетинга с 2011 года'),
(479, 48, '_content_1_statistics_5_description', 'field_608aec75f8ad3'),
(480, 48, 'content_1_statistics_6_title', '91 отзыв'),
(481, 48, '_content_1_statistics_6_title', 'field_608aec5ef8ad2'),
(482, 48, 'content_1_statistics_6_description', 'о нашей работе'),
(483, 48, '_content_1_statistics_6_description', 'field_608aec75f8ad3'),
(484, 48, 'content_1_statistics_7_title', '25 наград'),
(485, 48, '_content_1_statistics_7_title', 'field_608aec5ef8ad2'),
(486, 48, 'content_1_statistics_7_description', 'за участие в международных рейтингах'),
(487, 48, '_content_1_statistics_7_description', 'field_608aec75f8ad3'),
(488, 48, 'content_1_statistics_8_title', '1 577 публикаций'),
(489, 48, '_content_1_statistics_8_title', 'field_608aec5ef8ad2'),
(490, 48, 'content_1_statistics_8_description', 'в блоге Netpeak про интернет-маркетинг и в тематических СМИ'),
(491, 48, '_content_1_statistics_8_description', 'field_608aec75f8ad3'),
(492, 48, 'content_1_statistics', '9'),
(493, 48, '_content_1_statistics', 'field_608aec1ff8ad1'),
(494, 48, 'content_2_layout', 'img_txt'),
(495, 48, '_content_2_layout', 'field_608aeb98f8acd'),
(496, 48, 'content_2_image', '83'),
(497, 48, '_content_2_image', 'field_608aebd1f8ace'),
(498, 48, 'content_2_text', '<h2>Миссия и ценности Netpeak</h2>\r\nNetpeak помогает развивать бизнес, используя возможности онлайн-пространства. Каждый день мы работаем и совершенствуемся, чтобы собственным примером вдохновить общество развиваться, улучшать страну/город, создавать полезные проекты и инициативы.\r\n\r\nМиссия Netpeak имеет несколько уровней. Идеи перечислены от простых к сложным — от первого уровня к пятому. Каждый сотрудник компании самостоятельно определяет, какой уровень миссии он сейчас проходит. Это может показаться чересчур пафосным или высокопарным, но мы в это верим. И последовательно к этому идём.'),
(499, 48, '_content_2_text', 'field_608aebe7f8acf'),
(500, 86, 'content_0_layout', 'txt_img'),
(501, 86, '_content_0_layout', 'field_608aeb98f8acd'),
(502, 86, 'content_0_image', '82'),
(503, 86, '_content_0_image', 'field_608aebd1f8ace'),
(504, 86, 'content_0_text', 'Мы продвигаем не сайт, а бизнес клиента. Наша цель — привести не «трафик», а будущих клиентов для вашего бизнеса. В этом кардинальное отличие нашего подхода от большинства агентств интернет-маркетинга.\r\n\r\nНаш самый ценный ресурс — это команда. Мы постоянно вкладываем в обучение и развитие наших сотрудников. Мы делаем всё, чтобы Netpeak был не просто агентством, а стилем жизни и образом мышления.'),
(505, 86, '_content_0_text', 'field_608aebe7f8acf'),
(506, 86, 'content', 'a:3:{i:0;s:16:"text_image_2_col";i:1;s:5:"stats";i:2;s:16:"text_image_2_col";}'),
(507, 86, '_content', 'field_608aeb45f8acc'),
(508, 86, 'content_1_statistics_0_title', '14 лет'),
(509, 86, '_content_1_statistics_0_title', 'field_608aec5ef8ad2'),
(510, 86, 'content_1_statistics_0_description', 'работы на результат'),
(511, 86, '_content_1_statistics_0_description', 'field_608aec75f8ad3'),
(512, 86, 'content_1_statistics_1_title', '3 087 проектов'),
(513, 86, '_content_1_statistics_1_title', 'field_608aec5ef8ad2'),
(514, 86, 'content_1_statistics_1_description', 'составляют наш опыт и знание всех необходимых деталей'),
(515, 86, '_content_1_statistics_1_description', 'field_608aec75f8ad3'),
(516, 86, 'content_1_statistics_2_title', '1 315 интернет-магазинов'),
(517, 86, '_content_1_statistics_2_title', 'field_608aec5ef8ad2'),
(518, 86, 'content_1_statistics_2_description', 'увеличивают свои продажи благодаря результатам нашей работы'),
(519, 86, '_content_1_statistics_2_description', 'field_608aec75f8ad3'),
(520, 86, 'content_1_statistics_3_title', '501 сотрудник'),
(521, 86, '_content_1_statistics_3_title', 'field_608aec5ef8ad2'),
(522, 86, 'content_1_statistics_3_description', 'работает на результат'),
(523, 86, '_content_1_statistics_3_description', 'field_608aec75f8ad3'),
(524, 86, 'content_1_statistics_4_title', '8 офисов в 5 странах'),
(525, 86, '_content_1_statistics_4_title', 'field_608aec5ef8ad2'),
(526, 86, 'content_1_statistics_4_description', 'Киев, Одесса, Харьков, Алматы, София, Москва, Нью-Йорк, Варна'),
(527, 86, '_content_1_statistics_4_description', 'field_608aec75f8ad3'),
(528, 86, 'content_1_statistics_5_title', '10 проведённых отраслевых конференций'),
(529, 86, '_content_1_statistics_5_title', 'field_608aec5ef8ad2'),
(530, 86, 'content_1_statistics_5_description', 'обучают и развивают рынок интернет-маркетинга с 2011 года'),
(531, 86, '_content_1_statistics_5_description', 'field_608aec75f8ad3'),
(532, 86, 'content_1_statistics_6_title', '91 отзыв'),
(533, 86, '_content_1_statistics_6_title', 'field_608aec5ef8ad2') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(534, 86, 'content_1_statistics_6_description', 'о нашей работе'),
(535, 86, '_content_1_statistics_6_description', 'field_608aec75f8ad3'),
(536, 86, 'content_1_statistics_7_title', '25 наград'),
(537, 86, '_content_1_statistics_7_title', 'field_608aec5ef8ad2'),
(538, 86, 'content_1_statistics_7_description', 'за участие в международных рейтингах'),
(539, 86, '_content_1_statistics_7_description', 'field_608aec75f8ad3'),
(540, 86, 'content_1_statistics_8_title', '1 577 публикаций'),
(541, 86, '_content_1_statistics_8_title', 'field_608aec5ef8ad2'),
(542, 86, 'content_1_statistics_8_description', 'в блоге Netpeak про интернет-маркетинг и в тематических СМИ'),
(543, 86, '_content_1_statistics_8_description', 'field_608aec75f8ad3'),
(544, 86, 'content_1_statistics', '9'),
(545, 86, '_content_1_statistics', 'field_608aec1ff8ad1'),
(546, 86, 'content_2_layout', 'img_txt'),
(547, 86, '_content_2_layout', 'field_608aeb98f8acd'),
(548, 86, 'content_2_image', '83'),
(549, 86, '_content_2_image', 'field_608aebd1f8ace'),
(550, 86, 'content_2_text', '<h2>Миссия и ценности Netpeak</h2>\r\nNetpeak помогает развивать бизнес, используя возможности онлайн-пространства. Каждый день мы работаем и совершенствуемся, чтобы собственным примером вдохновить общество развиваться, улучшать страну/город, создавать полезные проекты и инициативы.\r\n\r\nМиссия Netpeak имеет несколько уровней. Идеи перечислены от простых к сложным — от первого уровня к пятому. Каждый сотрудник компании самостоятельно определяет, какой уровень миссии он сейчас проходит. Это может показаться чересчур пафосным или высокопарным, но мы в это верим. И последовательно к этому идём.'),
(551, 86, '_content_2_text', 'field_608aebe7f8acf'),
(552, 87, 'inline_featured_image', '0'),
(553, 87, '_edit_last', '1'),
(554, 87, '_edit_lock', '1619840481:1'),
(555, 87, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(556, 88, '_edit_last', '1'),
(557, 88, '_edit_lock', '1620327029:1'),
(558, 87, 'department', '4'),
(559, 87, '_department', 'field_608c379baa45c'),
(560, 87, 'location', '7'),
(561, 87, '_location', 'field_608c37f3aa45d'),
(562, 87, 'position', 'Executive Director of Growth'),
(563, 87, '_position', 'field_608c37445c13d'),
(564, 92, '_wp_attached_file', '2021/04/steveA500-1.webp'),
(565, 87, '_thumbnail_id', '92'),
(566, 87, '_yoast_wpseo_content_score', '30'),
(567, 94, 'inline_featured_image', '0'),
(568, 94, '_edit_last', '1'),
(569, 94, '_edit_lock', '1619802428:1'),
(570, 95, '_wp_attached_file', '2021/04/michelle2-1.webp'),
(571, 94, '_thumbnail_id', '95'),
(572, 94, 'department', '4'),
(573, 94, '_department', 'field_608c379baa45c'),
(574, 94, 'location', '8'),
(575, 94, '_location', 'field_608c37f3aa45d'),
(576, 94, 'position', 'Director of Technology'),
(577, 94, '_position', 'field_608c37445c13d'),
(578, 94, '_yoast_wpseo_content_score', '30'),
(579, 94, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(580, 96, 'inline_featured_image', '0'),
(581, 96, '_edit_last', '1'),
(582, 96, 'department', '6'),
(583, 96, '_department', 'field_608c379baa45c'),
(584, 96, 'location', '9'),
(585, 96, '_location', 'field_608c37f3aa45d'),
(586, 96, 'position', 'Account Coordinator'),
(587, 96, '_position', 'field_608c37445c13d'),
(588, 96, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(589, 96, '_edit_lock', '1619802562:1'),
(590, 97, 'inline_featured_image', '0'),
(591, 97, '_edit_last', '1'),
(592, 97, '_edit_lock', '1619802709:1'),
(593, 98, '_wp_attached_file', '2021/04/dave500.webp'),
(594, 97, '_thumbnail_id', '98'),
(595, 97, 'department', '6'),
(596, 97, '_department', 'field_608c379baa45c'),
(597, 97, 'location', '8'),
(598, 97, '_location', 'field_608c37f3aa45d'),
(599, 97, 'position', 'Client Success Manager'),
(600, 97, '_position', 'field_608c37445c13d'),
(601, 97, '_yoast_wpseo_content_score', '30'),
(602, 97, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(603, 99, 'inline_featured_image', '0'),
(604, 99, '_edit_last', '1'),
(605, 99, '_edit_lock', '1620327029:1'),
(606, 100, '_wp_attached_file', '2021/04/shawn500.webp'),
(607, 99, '_thumbnail_id', '100'),
(608, 99, 'department', '5'),
(609, 99, '_department', 'field_608c379baa45c'),
(610, 99, 'location', '7'),
(611, 99, '_location', 'field_608c37f3aa45d'),
(612, 99, 'position', 'Web Developer'),
(613, 99, '_position', 'field_608c37445c13d'),
(614, 99, '_yoast_wpseo_content_score', '30'),
(615, 99, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(616, 101, 'inline_featured_image', '0'),
(617, 101, '_edit_last', '1'),
(618, 101, '_edit_lock', '1620327029:1'),
(619, 102, '_wp_attached_file', '2021/04/alexs.webp'),
(620, 101, '_thumbnail_id', '102'),
(621, 101, 'department', '5'),
(622, 101, '_department', 'field_608c379baa45c'),
(623, 101, 'location', '7'),
(624, 101, '_location', 'field_608c37f3aa45d'),
(625, 101, 'position', 'DevOps Training Lead'),
(626, 101, '_position', 'field_608c37445c13d'),
(627, 101, '_yoast_wpseo_content_score', '30'),
(628, 101, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(629, 103, 'inline_featured_image', '0'),
(630, 104, 'inline_featured_image', '0'),
(631, 12, '_edit_last', '1'),
(634, 12, 'inline_featured_image', '0'),
(635, 12, '_yoast_wpseo_content_score', '30') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(636, 12, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(637, 9, '_edit_last', '1'),
(640, 9, '_yoast_wpseo_content_score', '30'),
(641, 9, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(642, 9, 'inline_featured_image', '0'),
(646, 106, '_menu_item_type', 'post_type_archive'),
(647, 106, '_menu_item_menu_item_parent', '0'),
(648, 106, '_menu_item_object_id', '-27'),
(649, 106, '_menu_item_object', 'team'),
(650, 106, '_menu_item_target', ''),
(651, 106, '_menu_item_classes', 'a:1:{i:0;s:9:"test12345";}'),
(652, 106, '_menu_item_xfn', ''),
(653, 106, '_menu_item_url', ''),
(655, 54, '_wp_old_date', '2021-04-27'),
(656, 64, '_wp_old_date', '2021-04-27'),
(657, 65, '_wp_old_date', '2021-04-27'),
(658, 69, '_wp_old_date', '2021-04-27'),
(659, 66, '_wp_old_date', '2021-04-27'),
(660, 70, '_wp_old_date', '2021-04-27'),
(661, 67, '_wp_old_date', '2021-04-27'),
(662, 71, '_wp_old_date', '2021-04-27'),
(663, 68, '_wp_old_date', '2021-04-27'),
(664, 72, '_wp_old_date', '2021-04-27'),
(665, 55, '_wp_old_date', '2021-04-27'),
(666, 56, '_wp_old_date', '2021-04-27'),
(667, 57, '_wp_old_date', '2021-04-27'),
(668, 61, '_wp_old_date', '2021-04-27'),
(677, 110, '_form', '<div class="contact-form">\n	<div class="form-group">\n		<label>Your Name <span class="required">*</span></label>\n		[text* client_name id:customername]\n	</div>\n	<div class="form-group">\n		<label>Your Email <span class="required">*</span></label>\n		[email* client_email id:customerEmail]\n	</div>\n	<div class="form-group">\n		<label>Subject</label>\n                    [text client_subject id:contactSubject]\n	</div>\n	<div class="form-group">\n		<label>Your Message</label>\n		[textarea client_message id:contactMessage class:pb-10]\n	</div>\n	<div class="form-group mb-0">\n		[submit id:submit class:btn theme-btn--dark1 btn--lg "submit"]\n	</div>\n</div>'),
(678, 110, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:48:"New feedback form from apple.loc (Contacts page)";s:6:"sender";s:34:"[_site_title] <no-reply@apple.loc>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:160:"<strong>From:</strong> [client_name] <[client_email]><br>\n<strong>Subject:</strong> [client_subject]<br>\n<br>\n<strong>Message:</strong><br>\n[client_message]<br>";s:18:"additional_headers";s:24:"Reply-To: [client_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:1;s:13:"exclude_blank";b:0;}'),
(679, 110, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:35:"[_site_title] <wordpress@apple.loc>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:105:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(680, 110, '_messages', 'a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(681, 110, '_additional_settings', ''),
(682, 110, '_locale', 'en_US'),
(683, 59, '_wp_page_template', 'page-templates/contacts.php'),
(687, 111, '_form', '<div class="form-inline position-relative">\n	[email email class:form-control placeholder "Your email address"][submit class:btn nletter-btn text-capitalize "Sign up"]\n</div>'),
(688, 111, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:2:"11";s:6:"sender";s:18:"no-reply@apple.loc";s:9:"recipient";s:18:"no-reply@apple.loc";s:4:"body";s:2:"11";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(689, 111, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:35:"[_site_title] <wordpress@apple.loc>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:105:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(690, 111, '_messages', 'a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(691, 111, '_additional_settings', 'skip_mail: on'),
(692, 111, '_locale', 'en_US') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-19 16:36:04', '2021-04-19 16:36:04', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-04-19 17:34:06', '2021-04-19 17:34:06', '', 0, 'http://kardanets.fkinart.com/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-19 16:36:04', '2021-04-19 16:36:04', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://kardanets.fkinart.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample', '', '', '2021-04-23 15:53:20', '2021-04-23 15:53:20', '', 0, 'http://kardanets.fkinart.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-19 16:36:04', '2021-04-19 16:36:04', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://kardanets.fkinart.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-04-19 16:36:04', '2021-04-19 16:36:04', '', 0, 'http://kardanets.fkinart.com/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-04-19 17:34:06', '2021-04-19 17:34:06', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-04-19 17:34:06', '2021-04-19 17:34:06', '', 1, 'http://kardanets.fkinart.com/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-04-19 17:39:48', '2021-04-19 17:39:48', '<!-- wp:paragraph -->\n<p>A report accusing Huawei of having once had "unlimited access" to phone calls made using one of the Netherlands\' leading operators, KPN, has been published by a Dutch newspaper.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The report was compiled by the CapGemini consultancy in 2010 but never released.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Those affected would have included former Prime Minister Jan Peter Balkenende.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The Chinese technology giant has completely denied the allegations.</p>\n<!-- /wp:paragraph -->', 'Huawei denies spying accusation in the Netherlands', '', 'publish', 'open', 'open', '', 'huawei-denies-spying-accusation-in-the-netherlands', '', '', '2021-04-19 17:39:48', '2021-04-19 17:39:48', '', 0, 'http://kardanets.fkinart.com/?p=6', 0, 'post', '', 0),
(7, 1, '2021-04-19 17:39:43', '2021-04-19 17:39:43', '', '_118111406_gettyimages-1180326620', '', 'inherit', 'open', 'closed', '', '_118111406_gettyimages-1180326620', '', '', '2021-04-19 17:39:43', '2021-04-19 17:39:43', '', 6, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118111406_gettyimages-1180326620.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2021-04-19 17:39:48', '2021-04-19 17:39:48', '<!-- wp:paragraph -->\n<p>A report accusing Huawei of having once had "unlimited access" to phone calls made using one of the Netherlands\' leading operators, KPN, has been published by a Dutch newspaper.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The report was compiled by the CapGemini consultancy in 2010 but never released.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Those affected would have included former Prime Minister Jan Peter Balkenende.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The Chinese technology giant has completely denied the allegations.</p>\n<!-- /wp:paragraph -->', 'Huawei denies spying accusation in the Netherlands', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-19 17:39:48', '2021-04-19 17:39:48', '', 6, 'http://kardanets.fkinart.com/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-04-19 17:40:39', '2021-04-19 17:40:39', '<!-- wp:paragraph -->\r\n<p>The UK government is to examine the sale of computer chip designer Arm Holdings to a US company on national security grounds.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Japan\'s SoftBank intended to sell the UK tech company to Nvidia for about $40bn (£29.5bn).</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>But Digital Secretary Oliver Dowden said he wanted the UK\'s competition watchdog to assess its implications.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>"Following careful consideration of the proposed takeover, I have today issued an intervention notice," he said.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>"As a next step and to help me gather the relevant information, the UK\'s independent competition authority will now prepare a report on the implications of the transaction, which will help inform any further decisions."</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nvidia takeover of chip designer Arm investigated<br />UK tech firm ARM sold to America\'s Nvidia for $40bn<br />Arm\'s technology is at the heart of most smartphones and smart devices worldwide.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>But there were concerns when the Cambridge-based designer - which licenses its tech to the likes of Apple, Samsung and Huawei - accepted the offer from Nvidia, a US graphics chip specialist.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>In January, the Competition and Markets Authority (CMA) announced it was looking into the deal amid worries it could lead Arm to withdraw, raise prices or reduce the quality of its services to Nvidia\'s rivals.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Mr Dowden has now ordered it to begin a "phase one" investigation, which will decide whether a full "phase two" investigation is needed that could lead to the deal being blocked.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>A spokesperson for Nvidia said: "We do not believe that this transaction poses any material national security issues.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>"We will continue to work closely with the British authorities, as we have done since the announcement of this deal."</p>\r\n<!-- /wp:paragraph -->', 'UK government intervenes in Nvidia takeover of chip designer Arm', '', 'publish', 'open', 'open', '', 'uk-government-intervenes-in-nvidia-takeover-of-chip-designer-arm', '', '', '2021-05-04 09:55:00', '2021-05-04 09:55:00', '', 0, 'http://kardanets.fkinart.com/?p=9', 0, 'post', '', 0),
(10, 1, '2021-04-19 17:40:39', '2021-04-19 17:40:39', '<!-- wp:paragraph -->\n<p>The UK government is to examine the sale of computer chip designer Arm Holdings to a US company on national security grounds.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Japan\'s SoftBank intended to sell the UK tech company to Nvidia for about $40bn (£29.5bn).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But Digital Secretary Oliver Dowden said he wanted the UK\'s competition watchdog to assess its implications.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>"Following careful consideration of the proposed takeover, I have today issued an intervention notice," he said.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>"As a next step and to help me gather the relevant information, the UK\'s independent competition authority will now prepare a report on the implications of the transaction, which will help inform any further decisions."</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nvidia takeover of chip designer Arm investigated<br>UK tech firm ARM sold to America\'s Nvidia for $40bn<br>Arm\'s technology is at the heart of most smartphones and smart devices worldwide.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>But there were concerns when the Cambridge-based designer - which licenses its tech to the likes of Apple, Samsung and Huawei - accepted the offer from Nvidia, a US graphics chip specialist.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In January, the Competition and Markets Authority (CMA) announced it was looking into the deal amid worries it could lead Arm to withdraw, raise prices or reduce the quality of its services to Nvidia\'s rivals.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mr Dowden has now ordered it to begin a "phase one" investigation, which will decide whether a full "phase two" investigation is needed that could lead to the deal being blocked.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A spokesperson for Nvidia said: "We do not believe that this transaction poses any material national security issues.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>"We will continue to work closely with the British authorities, as we have done since the announcement of this deal."</p>\n<!-- /wp:paragraph -->', 'UK government intervenes in Nvidia takeover of chip designer Arm', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-04-19 17:40:39', '2021-04-19 17:40:39', '', 9, 'http://kardanets.fkinart.com/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-04-19 17:41:17', '2021-04-19 17:41:17', '', '_113832482_armchip', '', 'inherit', 'open', 'closed', '', '_113832482_armchip', '', '', '2021-04-19 17:41:17', '2021-04-19 17:41:17', '', 9, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/113832482_armchip.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2021-04-19 17:42:20', '2021-04-19 17:42:20', '<!-- wp:paragraph -->\r\n<p>Cloud gaming has been called the future of video games, with all the action produced in a data centre rather than on an expensive PC or console in the home.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>The benefits include never having to download software updates and being able to play anywhere, not just in the living room - but gamers will need a good internet connection for it to work.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>BBC Click\'s Chris Fox put four cloud gaming services to the test to see how well they performed: Nvidia\'s GeForce Now, PlayStation Now, Xbox Cloud Gaming and Google\'s Stadia.</p>\r\n<!-- /wp:paragraph -->', 'Stadia, GeForce Now, Xbox and PS Now put to the test', '', 'publish', 'open', 'open', '', 'stadia-geforce-now-xbox-and-ps-now-put-to-the-test', '', '', '2021-05-04 09:54:19', '2021-05-04 09:54:19', '', 0, 'http://kardanets.fkinart.com/?p=12', 0, 'post', '', 0),
(13, 1, '2021-04-19 17:42:16', '2021-04-19 17:42:16', '', '_118066542_facebookhomeworker', '', 'inherit', 'open', 'closed', '', '_118066542_facebookhomeworker', '', '', '2021-04-19 17:42:16', '2021-04-19 17:42:16', '', 12, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118066542_facebookhomeworker.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2021-04-19 17:42:20', '2021-04-19 17:42:20', '<!-- wp:paragraph -->\n<p>Cloud gaming has been called the future of video games, with all the action produced in a data centre rather than on an expensive PC or console in the home.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The benefits include never having to download software updates and being able to play anywhere, not just in the living room - but gamers will need a good internet connection for it to work.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>BBC Click\'s Chris Fox put four cloud gaming services to the test to see how well they performed: Nvidia\'s GeForce Now, PlayStation Now, Xbox Cloud Gaming and Google\'s Stadia.</p>\n<!-- /wp:paragraph -->', 'Stadia, GeForce Now, Xbox and PS Now put to the test', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-04-19 17:42:20', '2021-04-19 17:42:20', '', 12, 'http://kardanets.fkinart.com/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-04-20 16:19:29', '2021-04-20 16:19:29', '{"blogdescription":{"value":"","type":"option","user_id":1,"date_modified_gmt":"2021-04-20 16:19:29"}}', '', '', 'trash', 'closed', 'closed', '', '27f4e23e-9f9e-4997-8a8e-113de849002d', '', '', '2021-04-20 16:19:29', '2021-04-20 16:19:29', '', 0, 'http://kardanets.fkinart.com/2021/04/20/27f4e23e-9f9e-4997-8a8e-113de849002d/', 0, 'customize_changeset', '', 0),
(16, 1, '2021-04-20 16:43:13', '2021-04-20 16:43:13', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-04-20 16:43:13', '2021-04-20 16:43:13', '', 0, 'http://kardanets.fkinart.com/?page_id=16', 0, 'page', '', 0),
(17, 1, '2021-04-20 16:43:13', '2021-04-20 16:43:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-04-20 16:43:13', '2021-04-20 16:43:13', '', 16, 'http://kardanets.fkinart.com/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-04-23 15:30:58', '2021-04-23 15:30:58', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://kardanets.fkinart.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-04-23 15:30:58', '2021-04-23 15:30:58', '', 2, 'http://kardanets.fkinart.com/?p=18', 0, 'revision', '', 0),
(21, 1, '2021-04-26 17:15:49', '2021-04-26 17:15:49', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:14:"theme-settings";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Theme Settings', 'theme-settings', 'publish', 'closed', 'closed', '', 'group_6086f5239e1ef', '', '', '2021-04-27 17:03:57', '2021-04-27 17:03:57', '', 0, 'http://kardanets.fkinart.com/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2021-04-26 17:18:32', '2021-04-26 17:18:32', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'field_6086f55914ccb', '', '', '2021-04-26 17:18:32', '2021-04-26 17:18:32', '', 21, 'http://kardanets.fkinart.com/?post_type=acf-field&p=22', 0, 'acf-field', '', 0),
(23, 1, '2021-04-26 17:18:33', '2021-04-26 17:18:33', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'field_6086f58014ccc', '', '', '2021-04-26 17:18:33', '2021-04-26 17:18:33', '', 21, 'http://kardanets.fkinart.com/?post_type=acf-field&p=23', 1, 'acf-field', '', 0),
(24, 1, '2021-04-26 17:18:33', '2021-04-26 17:18:33', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Footer', '', 'publish', 'closed', 'closed', '', 'field_6086f58c14ccd', '', '', '2021-04-26 17:22:12', '2021-04-26 17:22:12', '', 21, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=24', 2, 'acf-field', '', 0),
(25, 1, '2021-04-26 17:22:11', '2021-04-26 17:22:11', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_6086f60ba90c2', '', '', '2021-04-27 16:13:14', '2021-04-27 16:13:14', '', 23, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=25', 0, 'acf-field', '', 0),
(26, 1, '2021-04-26 17:22:11', '2021-04-26 17:22:11', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Phone', 'phone', 'publish', 'closed', 'closed', '', 'field_6086f678a90c3', '', '', '2021-04-26 17:22:11', '2021-04-26 17:22:11', '', 23, 'http://kardanets.fkinart.com/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 1, '2021-04-26 17:22:12', '2021-04-26 17:22:12', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Phone title', 'phone_title', 'publish', 'closed', 'closed', '', 'field_6086f6a0a90c4', '', '', '2021-04-26 17:23:06', '2021-04-26 17:23:06', '', 26, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=27', 0, 'acf-field', '', 0),
(28, 1, '2021-04-26 17:22:12', '2021-04-26 17:22:12', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Phone number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_6086f6aea90c5', '', '', '2021-04-26 17:23:07', '2021-04-26 17:23:07', '', 26, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=28', 1, 'acf-field', '', 0),
(29, 1, '2021-04-26 17:27:39', '2021-04-26 17:27:39', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'field_6086f724c5ccf', '', '', '2021-04-26 17:27:39', '2021-04-26 17:27:39', '', 21, 'http://kardanets.fkinart.com/?post_type=acf-field&p=29', 3, 'acf-field', '', 0),
(30, 1, '2021-04-26 17:27:39', '2021-04-26 17:27:39', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_6086f747c5cd0', '', '', '2021-04-27 16:13:15', '2021-04-27 16:13:15', '', 29, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=30', 0, 'acf-field', '', 0),
(31, 1, '2021-04-26 17:27:39', '2021-04-26 17:27:39', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Footer Description', 'description', 'publish', 'closed', 'closed', '', 'field_6086f761c5cd1', '', '', '2021-04-26 17:27:39', '2021-04-26 17:27:39', '', 29, 'http://kardanets.fkinart.com/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 1, '2021-04-26 17:27:39', '2021-04-26 17:27:39', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Phone', 'phone', 'publish', 'closed', 'closed', '', 'field_6086f7dbc5cd4', '', '', '2021-04-26 17:27:39', '2021-04-26 17:27:39', '', 29, 'http://kardanets.fkinart.com/?post_type=acf-field&p=32', 2, 'acf-field', '', 0),
(33, 1, '2021-04-26 17:27:40', '2021-04-26 17:27:40', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Phone title', 'phone_title', 'publish', 'closed', 'closed', '', 'field_6086f7dbc5cd5', '', '', '2021-04-26 17:27:40', '2021-04-26 17:27:40', '', 32, 'http://kardanets.fkinart.com/?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 1, '2021-04-26 17:27:40', '2021-04-26 17:27:40', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Phone number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_6086f7dbc5cd6', '', '', '2021-04-26 17:27:40', '2021-04-26 17:27:40', '', 32, 'http://kardanets.fkinart.com/?post_type=acf-field&p=34', 1, 'acf-field', '', 0),
(35, 1, '2021-04-26 17:29:04', '2021-04-26 17:29:04', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Social Networks', 'social_networks', 'publish', 'closed', 'closed', '', 'field_6086f846450f7', '', '', '2021-04-27 17:03:56', '2021-04-27 17:03:56', '', 29, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=35', 3, 'acf-field', '', 0),
(37, 1, '2021-04-26 17:31:35', '2021-04-26 17:31:35', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Network URL', 'network_url', 'publish', 'closed', 'closed', '', 'field_6086f8af92482', '', '', '2021-04-27 17:03:56', '2021-04-27 17:03:56', '', 35, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=37', 1, 'acf-field', '', 0),
(38, 1, '2021-04-26 17:36:04', '2021-04-26 17:36:04', '', 'apple-logo', '', 'inherit', 'open', 'closed', '', 'apple-logo', '', '', '2021-04-26 17:36:04', '2021-04-26 17:36:04', '', 0, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/apple-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(40, 1, '2021-04-27 17:03:56', '2021-04-27 17:03:56', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:4:{s:20:"icon-social-facebook";s:8:"Facebook";s:19:"icon-social-twitter";s:7:"Twitter";s:19:"icon-social-youtube";s:7:"YouTube";s:21:"icon-social-instagram";s:9:"Instagram";}s:13:"default_value";b:0;s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:13:"return_format";s:5:"value";s:4:"ajax";i:0;s:11:"placeholder";s:0:"";}', 'Social Network Name', 'social_network_name', 'publish', 'closed', 'closed', '', 'field_6088437079206', '', '', '2021-04-27 17:03:56', '2021-04-27 17:03:56', '', 35, 'http://kardanets.fkinart.com/?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2021-04-27 17:12:48', '2021-04-27 17:12:48', '', 'Delivery', '', 'publish', 'closed', 'closed', '', 'delivery', '', '', '2021-04-27 17:12:48', '2021-04-27 17:12:48', '', 0, 'http://kardanets.fkinart.com/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2021-04-27 17:12:49', '2021-04-27 17:12:49', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-04-27 17:12:49', '2021-04-27 17:12:49', '', 0, 'http://kardanets.fkinart.com/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2021-04-27 17:12:49', '2021-04-27 17:12:49', '', 'Secure payment', '', 'publish', 'closed', 'closed', '', 'secure-payment', '', '', '2021-04-27 17:12:49', '2021-04-27 17:12:49', '', 0, 'http://kardanets.fkinart.com/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2021-04-27 17:12:49', '2021-04-27 17:12:49', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-04-27 17:12:49', '2021-04-27 17:12:49', '', 0, 'http://kardanets.fkinart.com/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2021-04-27 17:12:49', '2021-04-27 17:12:49', '', 'Sitemap', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2021-04-27 17:12:49', '2021-04-27 17:12:49', '', 0, 'http://kardanets.fkinart.com/?p=45', 5, 'nav_menu_item', '', 0),
(46, 1, '2021-04-27 17:23:56', '2021-04-27 17:23:56', '<!-- wp:paragraph -->\n<p>12345</p>\n<!-- /wp:paragraph -->', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2021-04-29 16:25:20', '2021-04-29 16:25:20', '', 0, 'http://kardanets.fkinart.com/?page_id=46', 0, 'page', '', 0),
(47, 1, '2021-04-27 17:23:56', '2021-04-27 17:23:56', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2021-04-27 17:23:56', '2021-04-27 17:23:56', '', 46, 'http://kardanets.fkinart.com/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-04-27 17:24:09', '2021-04-27 17:24:09', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-04-30 16:12:39', '2021-04-30 16:12:39', '', 0, 'http://kardanets.fkinart.com/?page_id=48', 0, 'page', '', 0),
(49, 1, '2021-04-27 17:24:09', '2021-04-27 17:24:09', '', 'About us', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2021-04-27 17:24:09', '2021-04-27 17:24:09', '', 48, 'http://kardanets.fkinart.com/?p=49', 0, 'revision', '', 0),
(52, 1, '2021-04-27 17:24:40', '2021-04-27 17:24:40', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2021-04-27 17:24:41', '2021-04-27 17:24:41', '', 0, 'http://kardanets.fkinart.com/?page_id=52', 0, 'page', '', 0),
(53, 1, '2021-04-27 17:24:40', '2021-04-27 17:24:40', '', 'News', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-04-27 17:24:40', '2021-04-27 17:24:40', '', 52, 'http://kardanets.fkinart.com/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-05-06 18:15:21', '2021-04-27 17:25:30', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-05-06 18:15:21', '2021-05-06 18:15:21', '', 0, 'http://kardanets.fkinart.com/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2021-05-06 18:15:22', '2021-04-27 17:25:31', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2021-05-06 18:15:22', '2021-05-06 18:15:22', '', 0, 'http://kardanets.fkinart.com/?p=55', 11, 'nav_menu_item', '', 0),
(56, 1, '2021-05-06 18:15:22', '2021-04-27 17:25:31', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2021-05-06 18:15:22', '2021-05-06 18:15:22', '', 0, 'http://kardanets.fkinart.com/?p=56', 13, 'nav_menu_item', '', 0),
(57, 1, '2021-05-06 18:15:22', '2021-04-27 17:25:31', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2021-05-06 18:15:22', '2021-05-06 18:15:22', '', 0, 'http://kardanets.fkinart.com/?p=57', 14, 'nav_menu_item', '', 0),
(59, 1, '2021-04-27 17:25:25', '2021-04-27 17:25:25', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2021-05-07 16:31:29', '2021-05-07 16:31:29', '', 0, 'http://kardanets.fkinart.com/?page_id=59', 0, 'page', '', 0),
(60, 1, '2021-04-27 17:25:25', '2021-04-27 17:25:25', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2021-04-27 17:25:25', '2021-04-27 17:25:25', '', 59, 'http://kardanets.fkinart.com/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-05-06 18:15:22', '2021-04-27 17:25:38', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2021-05-06 18:15:22', '2021-05-06 18:15:22', '', 0, 'http://kardanets.fkinart.com/?p=61', 15, 'nav_menu_item', '', 0),
(62, 1, '2021-04-27 17:26:15', '2021-04-27 17:26:15', '', 'Catalog', '', 'publish', 'closed', 'closed', '', 'catalog', '', '', '2021-04-27 17:26:16', '2021-04-27 17:26:16', '', 0, 'http://kardanets.fkinart.com/?page_id=62', 0, 'page', '', 0),
(63, 1, '2021-04-27 17:26:15', '2021-04-27 17:26:15', '', 'Catalog', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2021-04-27 17:26:15', '2021-04-27 17:26:15', '', 62, 'http://kardanets.fkinart.com/?p=63', 0, 'revision', '', 0),
(64, 1, '2021-05-06 18:15:21', '2021-04-27 17:26:32', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2021-05-06 18:15:21', '2021-05-06 18:15:21', '', 0, 'http://kardanets.fkinart.com/?p=64', 2, 'nav_menu_item', '', 0),
(65, 1, '2021-05-06 18:15:21', '2021-04-27 17:31:02', '', 'Shop Grid', '', 'publish', 'closed', 'closed', '', 'shop-grid', '', '', '2021-05-06 18:15:21', '2021-05-06 18:15:21', '', 0, 'http://kardanets.fkinart.com/?p=65', 3, 'nav_menu_item', '', 0),
(66, 1, '2021-05-06 18:15:21', '2021-04-27 17:31:02', '', 'Shop List', '', 'publish', 'closed', 'closed', '', 'shop-list', '', '', '2021-05-06 18:15:21', '2021-05-06 18:15:21', '', 0, 'http://kardanets.fkinart.com/?p=66', 5, 'nav_menu_item', '', 0),
(67, 1, '2021-05-06 18:15:22', '2021-04-27 17:31:03', '', 'Shop Single', '', 'publish', 'closed', 'closed', '', 'shop-single', '', '', '2021-05-06 18:15:22', '2021-05-06 18:15:22', '', 0, 'http://kardanets.fkinart.com/?p=67', 7, 'nav_menu_item', '', 0),
(68, 1, '2021-05-06 18:15:22', '2021-04-27 17:31:03', '', 'other pages', '', 'publish', 'closed', 'closed', '', 'other-pages', '', '', '2021-05-06 18:15:22', '2021-05-06 18:15:22', '', 0, 'http://kardanets.fkinart.com/?p=68', 9, 'nav_menu_item', '', 0),
(69, 1, '2021-05-06 18:15:21', '2021-04-27 17:31:02', '', '111', '', 'publish', 'closed', 'closed', '', '111', '', '', '2021-05-06 18:15:21', '2021-05-06 18:15:21', '', 0, 'http://kardanets.fkinart.com/?p=69', 4, 'nav_menu_item', '', 0),
(70, 1, '2021-05-06 18:15:21', '2021-04-27 17:31:03', '', '111', '', 'publish', 'closed', 'closed', '', '111-2', '', '', '2021-05-06 18:15:21', '2021-05-06 18:15:21', '', 0, 'http://kardanets.fkinart.com/?p=70', 6, 'nav_menu_item', '', 0),
(71, 1, '2021-05-06 18:15:22', '2021-04-27 17:31:03', '', '111', '', 'publish', 'closed', 'closed', '', '111-3', '', '', '2021-05-06 18:15:22', '2021-05-06 18:15:22', '', 0, 'http://kardanets.fkinart.com/?p=71', 8, 'nav_menu_item', '', 0),
(72, 1, '2021-05-06 18:15:22', '2021-04-27 17:31:03', '', '111', '', 'publish', 'closed', 'closed', '', '111-4', '', '', '2021-05-06 18:15:22', '2021-05-06 18:15:22', '', 0, 'http://kardanets.fkinart.com/?p=72', 10, 'nav_menu_item', '', 0),
(73, 1, '2021-04-29 16:25:19', '2021-04-29 16:25:19', '<!-- wp:paragraph -->\n<p>12345</p>\n<!-- /wp:paragraph -->', 'FAQ', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2021-04-29 16:25:19', '2021-04-29 16:25:19', '', 46, 'http://kardanets.fkinart.com/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-04-29 17:18:41', '2021-04-29 17:18:41', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:24:"page-templates/about.php";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}', 'About page', 'about-page', 'publish', 'closed', 'closed', '', 'group_608aea4cec69f', '', '', '2021-04-29 17:28:08', '2021-04-29 17:28:08', '', 0, 'http://kardanets.fkinart.com/?post_type=acf-field-group&#038;p=74', 0, 'acf-field-group', '', 0),
(75, 1, '2021-04-29 17:27:40', '2021-04-29 17:27:40', 'a:9:{s:4:"type";s:16:"flexible_content";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"layouts";a:2:{s:20:"layout_608aeb5e6a5e7";a:6:{s:3:"key";s:20:"layout_608aeb5e6a5e7";s:5:"label";s:30:"Text + Image (2 columns) block";s:4:"name";s:16:"text_image_2_col";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}s:20:"layout_608aec04f8ad0";a:6:{s:3:"key";s:20:"layout_608aec04f8ad0";s:5:"label";s:11:"Stats block";s:4:"name";s:5:"stats";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}}s:12:"button_label";s:11:"Add Content";s:3:"min";s:0:"";s:3:"max";s:0:"";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_608aeb45f8acc', '', '', '2021-04-29 17:28:08', '2021-04-29 17:28:08', '', 74, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=75', 0, 'acf-field', '', 0),
(76, 1, '2021-04-29 17:27:40', '2021-04-29 17:27:40', 'a:14:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:20:"layout_608aeb5e6a5e7";s:7:"choices";a:2:{s:7:"img_txt";s:12:"Image + Text";s:7:"txt_img";s:12:"Text + Image";}s:13:"default_value";b:0;s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:13:"return_format";s:5:"value";s:4:"ajax";i:0;s:11:"placeholder";s:0:"";}', 'Layout', 'layout', 'publish', 'closed', 'closed', '', 'field_608aeb98f8acd', '', '', '2021-04-29 17:27:40', '2021-04-29 17:27:40', '', 75, 'http://kardanets.fkinart.com/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2021-04-29 17:27:40', '2021-04-29 17:27:40', 'a:16:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:20:"layout_608aeb5e6a5e7";s:13:"return_format";s:5:"array";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_608aebd1f8ace', '', '', '2021-04-29 17:27:40', '2021-04-29 17:27:40', '', 75, 'http://kardanets.fkinart.com/?post_type=acf-field&p=77', 1, 'acf-field', '', 0),
(78, 1, '2021-04-29 17:27:40', '2021-04-29 17:27:40', 'a:11:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:20:"layout_608aeb5e6a5e7";s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_608aebe7f8acf', '', '', '2021-04-29 17:27:40', '2021-04-29 17:27:40', '', 75, 'http://kardanets.fkinart.com/?post_type=acf-field&p=78', 2, 'acf-field', '', 0),
(79, 1, '2021-04-29 17:27:41', '2021-04-29 17:27:41', 'a:11:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:20:"layout_608aec04f8ad0";s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Statistics', 'statistics', 'publish', 'closed', 'closed', '', 'field_608aec1ff8ad1', '', '', '2021-04-29 17:27:41', '2021-04-29 17:27:41', '', 75, 'http://kardanets.fkinart.com/?post_type=acf-field&p=79', 0, 'acf-field', '', 0),
(80, 1, '2021-04-29 17:27:41', '2021-04-29 17:27:41', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_608aec5ef8ad2', '', '', '2021-04-29 17:27:41', '2021-04-29 17:27:41', '', 79, 'http://kardanets.fkinart.com/?post_type=acf-field&p=80', 0, 'acf-field', '', 0),
(81, 1, '2021-04-29 17:27:41', '2021-04-29 17:27:41', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_608aec75f8ad3', '', '', '2021-04-29 17:27:41', '2021-04-29 17:27:41', '', 79, 'http://kardanets.fkinart.com/?post_type=acf-field&p=81', 1, 'acf-field', '', 0),
(82, 1, '2021-04-29 17:34:07', '2021-04-29 17:34:07', '', 'about_1', '', 'inherit', 'open', 'closed', '', 'about_1', '', '', '2021-04-29 17:34:07', '2021-04-29 17:34:07', '', 48, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/about_1.webp', 0, 'attachment', 'image/webp', 0),
(83, 1, '2021-04-29 17:37:45', '2021-04-29 17:37:45', '', 'about_2', '', 'inherit', 'open', 'closed', '', 'about_2', '', '', '2021-04-29 17:37:45', '2021-04-29 17:37:45', '', 48, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/about_2.webp', 0, 'attachment', 'image/webp', 0),
(84, 1, '2021-04-29 17:38:22', '2021-04-29 17:38:22', '', 'About us', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2021-04-29 17:38:22', '2021-04-29 17:38:22', '', 48, 'http://kardanets.fkinart.com/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-04-30 16:10:27', '2021-04-30 16:10:27', '', 'About us', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2021-04-30 16:10:27', '2021-04-30 16:10:27', '', 48, 'http://kardanets.fkinart.com/?p=85', 0, 'revision', '', 0),
(86, 1, '2021-04-30 16:12:39', '2021-04-30 16:12:39', '', 'About us', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2021-04-30 16:12:39', '2021-04-30 16:12:39', '', 48, 'http://kardanets.fkinart.com/?p=86', 0, 'revision', '', 0),
(87, 1, '2021-04-30 16:56:13', '2021-04-30 16:56:13', 'Steven Paul Jobs (/dʒɒbz/; February 24, 1955 – October 5, 2011) was an American business magnate, industrial designer, investor, and media proprietor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company\'s board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the personal computer revolution of the 1970s and 1980s, along with his early business partner and fellow Apple co-founder Steve Wozniak.\r\n\r\nJobs was born in San Francisco, California, and put up for adoption. He was raised in the San Francisco Bay Area. He attended Reed College in 1972 before dropping out that same year, and traveled through India in 1974 seeking enlightenment and studying Zen Buddhism.\r\n\r\nJobs and Wozniak co-founded Apple in 1976 to sell Wozniak\'s Apple I personal computer. Together the duo gained fame and wealth a year later with the Apple II, one of the first highly successful mass-produced microcomputers. Jobs saw the commercial potential of the Xerox Alto in 1979, which was mouse-driven and had a graphical user interface (GUI). This led to the development of the unsuccessful Apple Lisa in 1983, followed by the breakthrough Macintosh in 1984, the first mass-produced computer with a GUI. The Macintosh introduced the desktop publishing industry in 1985 with the addition of the Apple LaserWriter, the first laser printer to feature vector graphics. Jobs was forced out of Apple in 1985 after a long power struggle with the company\'s board and its then-CEO John Sculley. That same year, Jobs took a few of Apple\'s members with him to found NeXT, a computer platform development company that specialized in computers for higher-education and business markets. In addition, he helped to develop the visual effects industry when he funded the computer graphics division of George Lucas\'s Lucasfilm in 1986. The new company was Pixar, which produced the first 3D computer animated feature film Toy Story (1995), and went on to become a major animation studio, producing over 20 films since then.\r\n\r\nJobs became CEO of Apple in 1997, following his company\'s acquisition of NeXT. He was largely responsible for helping revive Apple, which had been on the verge of bankruptcy. He worked closely with designer Jony Ive to develop a line of products that had larger cultural ramifications, beginning in 1997 with the "Think different" advertising campaign and leading to the iMac, iTunes, iTunes Store, Apple Store, iPod, iPhone, App Store, and the iPad. In 2001, the original Mac OS was replaced with the completely new Mac OS X (now known as macOS), based on NeXT\'s NeXTSTEP platform, giving the OS a modern Unix-based foundation for the first time. Jobs was diagnosed with a pancreatic neuroendocrine tumor in 2003. He died of respiratory arrest related to the tumor at age 56 on October 5, 2011.', 'Steve Ambuul', '', 'publish', 'closed', 'closed', '', 'steve-ambuul', '', '', '2021-04-30 17:07:08', '2021-04-30 17:07:08', '', 0, 'http://kardanets.fkinart.com/?post_type=team&#038;p=87', 0, 'team', '', 0),
(88, 1, '2021-04-30 16:58:16', '2021-04-30 16:58:16', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"team";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Team member', 'team-member', 'publish', 'closed', 'closed', '', 'group_608c37134abd4', '', '', '2021-04-30 17:03:28', '2021-04-30 17:03:28', '', 0, 'http://kardanets.fkinart.com/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2021-04-30 16:59:06', '2021-04-30 16:59:06', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"30";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Position', 'position', 'publish', 'closed', 'closed', '', 'field_608c37445c13d', '', '', '2021-04-30 17:02:23', '2021-04-30 17:02:23', '', 88, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=89', 2, 'acf-field', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(90, 1, '2021-04-30 17:02:23', '2021-04-30 17:02:23', 'a:13:{s:4:"type";s:8:"taxonomy";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"30";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:8:"taxonomy";s:11:"departments";s:10:"field_type";s:6:"select";s:10:"allow_null";i:0;s:8:"add_term";i:0;s:10:"save_terms";i:1;s:10:"load_terms";i:1;s:13:"return_format";s:2:"id";s:8:"multiple";i:0;}', 'Department', 'department', 'publish', 'closed', 'closed', '', 'field_608c379baa45c', '', '', '2021-04-30 17:03:28', '2021-04-30 17:03:28', '', 88, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=90', 0, 'acf-field', '', 0),
(91, 1, '2021-04-30 17:02:23', '2021-04-30 17:02:23', 'a:13:{s:4:"type";s:8:"taxonomy";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"30";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:8:"taxonomy";s:9:"locations";s:10:"field_type";s:6:"select";s:10:"allow_null";i:0;s:8:"add_term";i:0;s:10:"save_terms";i:1;s:10:"load_terms";i:1;s:13:"return_format";s:2:"id";s:8:"multiple";i:0;}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_608c37f3aa45d', '', '', '2021-04-30 17:03:28', '2021-04-30 17:03:28', '', 88, 'http://kardanets.fkinart.com/?post_type=acf-field&#038;p=91', 1, 'acf-field', '', 0),
(92, 1, '2021-04-30 17:06:27', '2021-04-30 17:06:27', '', 'steveA500-1', '', 'inherit', 'open', 'closed', '', 'stevea500-1', '', '', '2021-04-30 17:06:27', '2021-04-30 17:06:27', '', 87, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/steveA500-1.webp', 0, 'attachment', 'image/webp', 0),
(93, 1, '2021-04-30 17:07:06', '2021-04-30 17:07:06', 'Steven Paul Jobs (/dʒɒbz/; February 24, 1955 – October 5, 2011) was an American business magnate, industrial designer, investor, and media proprietor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company\'s board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the personal computer revolution of the 1970s and 1980s, along with his early business partner and fellow Apple co-founder Steve Wozniak.\n\nJobs was born in San Francisco, California, and put up for adoption. He was raised in the San Francisco Bay Area. He attended Reed College in 1972 before dropping out that same year, and traveled through India in 1974 seeking enlightenment and studying Zen Buddhism.\n\nJobs and Wozniak co-founded Apple in 1976 to sell Wozniak\'s Apple I personal computer. Together the duo gained fame and wealth a year later with the Apple II, one of the first highly successful mass-produced microcomputers. Jobs saw the commercial potential of the Xerox Alto in 1979, which was mouse-driven and had a graphical user interface (GUI). This led to the development of the unsuccessful Apple Lisa in 1983, followed by the breakthrough Macintosh in 1984, the first mass-produced computer with a GUI. The Macintosh introduced the desktop publishing industry in 1985 with the addition of the Apple LaserWriter, the first laser printer to feature vector graphics. Jobs was forced out of Apple in 1985 after a long power struggle with the company\'s board and its then-CEO John Sculley. That same year, Jobs took a few of Apple\'s members with him to found NeXT, a computer platform development company that specialized in computers for higher-education and business markets. In addition, he helped to develop the visual effects industry when he funded the computer graphics division of George Lucas\'s Lucasfilm in 1986. The new company was Pixar, which produced the first 3D computer animated feature film Toy Story (1995), and went on to become a major animation studio, producing over 20 films since then.\n\nJobs became CEO of Apple in 1997, following his company\'s acquisition of NeXT. He was largely responsible for helping revive Apple, which had been on the verge of bankruptcy. He worked closely with designer Jony Ive to develop a line of products that had larger cultural ramifications, beginning in 1997 with the "Think different" advertising campaign and leading to the iMac, iTunes, iTunes Store, Apple Store, iPod, iPhone, App Store, and the iPad. In 2001, the original Mac OS was replaced with the completely new Mac OS X (now known as macOS), based on NeXT\'s NeXTSTEP platform, giving the OS a modern Unix-based foundation for the first time. Jobs was diagnosed with a pancreatic neuroendocrine tumor in 2003. He died of respiratory arrest related to the tumor at age 56 on October 5, 2011.', 'Steve Ambuul', '', 'inherit', 'closed', 'closed', '', '87-autosave-v1', '', '', '2021-04-30 17:07:06', '2021-04-30 17:07:06', '', 87, 'http://kardanets.fkinart.com/?p=93', 0, 'revision', '', 0),
(94, 1, '2021-04-30 17:09:23', '2021-04-30 17:09:23', 'Steven Paul Jobs (/dʒɒbz/; February 24, 1955 – October 5, 2011) was an American business magnate, industrial designer, investor, and media proprietor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company\'s board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the personal computer revolution of the 1970s and 1980s, along with his early business partner and fellow Apple co-founder Steve Wozniak.\r\n\r\nJobs was born in San Francisco, California, and put up for adoption. He was raised in the San Francisco Bay Area. He attended Reed College in 1972 before dropping out that same year, and traveled through India in 1974 seeking enlightenment and studying Zen Buddhism.\r\n\r\nJobs and Wozniak co-founded Apple in 1976 to sell Wozniak\'s Apple I personal computer. Together the duo gained fame and wealth a year later with the Apple II, one of the first highly successful mass-produced microcomputers. Jobs saw the commercial potential of the Xerox Alto in 1979, which was mouse-driven and had a graphical user interface (GUI). This led to the development of the unsuccessful Apple Lisa in 1983, followed by the breakthrough Macintosh in 1984, the first mass-produced computer with a GUI. The Macintosh introduced the desktop publishing industry in 1985 with the addition of the Apple LaserWriter, the first laser printer to feature vector graphics. Jobs was forced out of Apple in 1985 after a long power struggle with the company\'s board and its then-CEO John Sculley. That same year, Jobs took a few of Apple\'s members with him to found NeXT, a computer platform development company that specialized in computers for higher-education and business markets. In addition, he helped to develop the visual effects industry when he funded the computer graphics division of George Lucas\'s Lucasfilm in 1986. The new company was Pixar, which produced the first 3D computer animated feature film Toy Story (1995), and went on to become a major animation studio, producing over 20 films since then.\r\n\r\nJobs became CEO of Apple in 1997, following his company\'s acquisition of NeXT. He was largely responsible for helping revive Apple, which had been on the verge of bankruptcy. He worked closely with designer Jony Ive to develop a line of products that had larger cultural ramifications, beginning in 1997 with the "Think different" advertising campaign and leading to the iMac, iTunes, iTunes Store, Apple Store, iPod, iPhone, App Store, and the iPad. In 2001, the original Mac OS was replaced with the completely new Mac OS X (now known as macOS), based on NeXT\'s NeXTSTEP platform, giving the OS a modern Unix-based foundation for the first time. Jobs was diagnosed with a pancreatic neuroendocrine tumor in 2003. He died of respiratory arrest related to the tumor at age 56 on October 5, 2011.', 'Michelle Chu', '', 'publish', 'closed', 'closed', '', 'michelle-chu', '', '', '2021-04-30 17:09:23', '2021-04-30 17:09:23', '', 0, 'http://kardanets.fkinart.com/?post_type=team&#038;p=94', 0, 'team', '', 0),
(95, 1, '2021-04-30 17:09:18', '2021-04-30 17:09:18', '', 'michelle2-1', '', 'inherit', 'open', 'closed', '', 'michelle2-1', '', '', '2021-04-30 17:09:18', '2021-04-30 17:09:18', '', 94, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/michelle2-1.webp', 0, 'attachment', 'image/webp', 0),
(96, 1, '2021-04-30 17:11:42', '2021-04-30 17:11:42', '', 'Lexie Arce', '', 'publish', 'closed', 'closed', '', 'lexie-arce', '', '', '2021-04-30 17:11:42', '2021-04-30 17:11:42', '', 0, 'http://kardanets.fkinart.com/?post_type=team&#038;p=96', 0, 'team', '', 0),
(97, 1, '2021-04-30 17:13:43', '2021-04-30 17:13:43', 'Steven Paul Jobs (/dʒɒbz/; February 24, 1955 – October 5, 2011) was an American business magnate, industrial designer, investor, and media proprietor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company\'s board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the personal computer revolution of the 1970s and 1980s, along with his early business partner and fellow Apple co-founder Steve Wozniak.\r\n\r\nJobs was born in San Francisco, California, and put up for adoption. He was raised in the San Francisco Bay Area. He attended Reed College in 1972 before dropping out that same year, and traveled through India in 1974 seeking enlightenment and studying Zen Buddhism.\r\n\r\nJobs and Wozniak co-founded Apple in 1976 to sell Wozniak\'s Apple I personal computer. Together the duo gained fame and wealth a year later with the Apple II, one of the first highly successful mass-produced microcomputers. Jobs saw the commercial potential of the Xerox Alto in 1979, which was mouse-driven and had a graphical user interface (GUI). This led to the development of the unsuccessful Apple Lisa in 1983, followed by the breakthrough Macintosh in 1984, the first mass-produced computer with a GUI. The Macintosh introduced the desktop publishing industry in 1985 with the addition of the Apple LaserWriter, the first laser printer to feature vector graphics. Jobs was forced out of Apple in 1985 after a long power struggle with the company\'s board and its then-CEO John Sculley. That same year, Jobs took a few of Apple\'s members with him to found NeXT, a computer platform development company that specialized in computers for higher-education and business markets. In addition, he helped to develop the visual effects industry when he funded the computer graphics division of George Lucas\'s Lucasfilm in 1986. The new company was Pixar, which produced the first 3D computer animated feature film Toy Story (1995), and went on to become a major animation studio, producing over 20 films since then.\r\n\r\nJobs became CEO of Apple in 1997, following his company\'s acquisition of NeXT. He was largely responsible for helping revive Apple, which had been on the verge of bankruptcy. He worked closely with designer Jony Ive to develop a line of products that had larger cultural ramifications, beginning in 1997 with the "Think different" advertising campaign and leading to the iMac, iTunes, iTunes Store, Apple Store, iPod, iPhone, App Store, and the iPad. In 2001, the original Mac OS was replaced with the completely new Mac OS X (now known as macOS), based on NeXT\'s NeXTSTEP platform, giving the OS a modern Unix-based foundation for the first time. Jobs was diagnosed with a pancreatic neuroendocrine tumor in 2003. He died of respiratory arrest related to the tumor at age 56 on October 5, 2011.', 'David Cornman', '', 'publish', 'closed', 'closed', '', 'david-cornman', '', '', '2021-04-30 17:13:43', '2021-04-30 17:13:43', '', 0, 'http://kardanets.fkinart.com/?post_type=team&#038;p=97', 0, 'team', '', 0),
(98, 1, '2021-04-30 17:13:15', '2021-04-30 17:13:15', '', 'dave500', '', 'inherit', 'open', 'closed', '', 'dave500', '', '', '2021-04-30 17:13:15', '2021-04-30 17:13:15', '', 97, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/dave500.webp', 0, 'attachment', 'image/webp', 0),
(99, 1, '2021-04-30 17:15:55', '2021-04-30 17:15:55', 'Steven Paul Jobs (/dʒɒbz/; February 24, 1955 – October 5, 2011) was an American business magnate, industrial designer, investor, and media proprietor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company\'s board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the personal computer revolution of the 1970s and 1980s, along with his early business partner and fellow Apple co-founder Steve Wozniak.\r\n\r\nJobs was born in San Francisco, California, and put up for adoption. He was raised in the San Francisco Bay Area. He attended Reed College in 1972 before dropping out that same year, and traveled through India in 1974 seeking enlightenment and studying Zen Buddhism.\r\n\r\nJobs and Wozniak co-founded Apple in 1976 to sell Wozniak\'s Apple I personal computer. Together the duo gained fame and wealth a year later with the Apple II, one of the first highly successful mass-produced microcomputers. Jobs saw the commercial potential of the Xerox Alto in 1979, which was mouse-driven and had a graphical user interface (GUI). This led to the development of the unsuccessful Apple Lisa in 1983, followed by the breakthrough Macintosh in 1984, the first mass-produced computer with a GUI. The Macintosh introduced the desktop publishing industry in 1985 with the addition of the Apple LaserWriter, the first laser printer to feature vector graphics. Jobs was forced out of Apple in 1985 after a long power struggle with the company\'s board and its then-CEO John Sculley. That same year, Jobs took a few of Apple\'s members with him to found NeXT, a computer platform development company that specialized in computers for higher-education and business markets. In addition, he helped to develop the visual effects industry when he funded the computer graphics division of George Lucas\'s Lucasfilm in 1986. The new company was Pixar, which produced the first 3D computer animated feature film Toy Story (1995), and went on to become a major animation studio, producing over 20 films since then.\r\n\r\nJobs became CEO of Apple in 1997, following his company\'s acquisition of NeXT. He was largely responsible for helping revive Apple, which had been on the verge of bankruptcy. He worked closely with designer Jony Ive to develop a line of products that had larger cultural ramifications, beginning in 1997 with the "Think different" advertising campaign and leading to the iMac, iTunes, iTunes Store, Apple Store, iPod, iPhone, App Store, and the iPad. In 2001, the original Mac OS was replaced with the completely new Mac OS X (now known as macOS), based on NeXT\'s NeXTSTEP platform, giving the OS a modern Unix-based foundation for the first time. Jobs was diagnosed with a pancreatic neuroendocrine tumor in 2003. He died of respiratory arrest related to the tumor at age 56 on October 5, 2011.', 'Shawn Romanillos', '', 'publish', 'closed', 'closed', '', 'shawn-romanillos', '', '', '2021-04-30 17:15:55', '2021-04-30 17:15:55', '', 0, 'http://kardanets.fkinart.com/?post_type=team&#038;p=99', 0, 'team', '', 0),
(100, 1, '2021-04-30 17:15:51', '2021-04-30 17:15:51', '', 'shawn500', '', 'inherit', 'open', 'closed', '', 'shawn500', '', '', '2021-04-30 17:15:51', '2021-04-30 17:15:51', '', 99, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/shawn500.webp', 0, 'attachment', 'image/webp', 0),
(101, 1, '2021-04-30 17:17:25', '2021-04-30 17:17:25', 'Steven Paul Jobs (/dʒɒbz/; February 24, 1955 – October 5, 2011) was an American business magnate, industrial designer, investor, and media proprietor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company\'s board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the personal computer revolution of the 1970s and 1980s, along with his early business partner and fellow Apple co-founder Steve Wozniak.\r\n\r\nJobs was born in San Francisco, California, and put up for adoption. He was raised in the San Francisco Bay Area. He attended Reed College in 1972 before dropping out that same year, and traveled through India in 1974 seeking enlightenment and studying Zen Buddhism.\r\n\r\nJobs and Wozniak co-founded Apple in 1976 to sell Wozniak\'s Apple I personal computer. Together the duo gained fame and wealth a year later with the Apple II, one of the first highly successful mass-produced microcomputers. Jobs saw the commercial potential of the Xerox Alto in 1979, which was mouse-driven and had a graphical user interface (GUI). This led to the development of the unsuccessful Apple Lisa in 1983, followed by the breakthrough Macintosh in 1984, the first mass-produced computer with a GUI. The Macintosh introduced the desktop publishing industry in 1985 with the addition of the Apple LaserWriter, the first laser printer to feature vector graphics. Jobs was forced out of Apple in 1985 after a long power struggle with the company\'s board and its then-CEO John Sculley. That same year, Jobs took a few of Apple\'s members with him to found NeXT, a computer platform development company that specialized in computers for higher-education and business markets. In addition, he helped to develop the visual effects industry when he funded the computer graphics division of George Lucas\'s Lucasfilm in 1986. The new company was Pixar, which produced the first 3D computer animated feature film Toy Story (1995), and went on to become a major animation studio, producing over 20 films since then.\r\n\r\nJobs became CEO of Apple in 1997, following his company\'s acquisition of NeXT. He was largely responsible for helping revive Apple, which had been on the verge of bankruptcy. He worked closely with designer Jony Ive to develop a line of products that had larger cultural ramifications, beginning in 1997 with the "Think different" advertising campaign and leading to the iMac, iTunes, iTunes Store, Apple Store, iPod, iPhone, App Store, and the iPad. In 2001, the original Mac OS was replaced with the completely new Mac OS X (now known as macOS), based on NeXT\'s NeXTSTEP platform, giving the OS a modern Unix-based foundation for the first time. Jobs was diagnosed with a pancreatic neuroendocrine tumor in 2003. He died of respiratory arrest related to the tumor at age 56 on October 5, 2011.', 'Alex Sivro', '', 'publish', 'closed', 'closed', '', 'alex-sivro', '', '', '2021-04-30 17:17:25', '2021-04-30 17:17:25', '', 0, 'http://kardanets.fkinart.com/?post_type=team&#038;p=101', 0, 'team', '', 0),
(102, 1, '2021-04-30 17:17:20', '2021-04-30 17:17:20', '', 'alexs', '', 'inherit', 'open', 'closed', '', 'alexs', '', '', '2021-04-30 17:17:20', '2021-04-30 17:17:20', '', 101, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/alexs.webp', 0, 'attachment', 'image/webp', 0),
(103, 1, '2021-05-04 09:51:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-04 09:51:53', '0000-00-00 00:00:00', '', 0, 'http://kardanets.fkinart.com/?p=103', 0, 'post', '', 0),
(104, 1, '2021-05-04 09:51:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-04 09:51:54', '0000-00-00 00:00:00', '', 0, 'http://kardanets.fkinart.com/?p=104', 0, 'post', '', 0),
(105, 1, '2021-05-04 09:55:00', '2021-05-04 09:55:00', '<!-- wp:paragraph -->\r\n<p>The UK government is to examine the sale of computer chip designer Arm Holdings to a US company on national security grounds.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Japan\'s SoftBank intended to sell the UK tech company to Nvidia for about $40bn (£29.5bn).</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>But Digital Secretary Oliver Dowden said he wanted the UK\'s competition watchdog to assess its implications.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>"Following careful consideration of the proposed takeover, I have today issued an intervention notice," he said.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>"As a next step and to help me gather the relevant information, the UK\'s independent competition authority will now prepare a report on the implications of the transaction, which will help inform any further decisions."</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Nvidia takeover of chip designer Arm investigated<br />UK tech firm ARM sold to America\'s Nvidia for $40bn<br />Arm\'s technology is at the heart of most smartphones and smart devices worldwide.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>But there were concerns when the Cambridge-based designer - which licenses its tech to the likes of Apple, Samsung and Huawei - accepted the offer from Nvidia, a US graphics chip specialist.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>In January, the Competition and Markets Authority (CMA) announced it was looking into the deal amid worries it could lead Arm to withdraw, raise prices or reduce the quality of its services to Nvidia\'s rivals.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Mr Dowden has now ordered it to begin a "phase one" investigation, which will decide whether a full "phase two" investigation is needed that could lead to the deal being blocked.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>A spokesperson for Nvidia said: "We do not believe that this transaction poses any material national security issues.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>"We will continue to work closely with the British authorities, as we have done since the announcement of this deal."</p>\r\n<!-- /wp:paragraph -->', 'UK government intervenes in Nvidia takeover of chip designer Arm', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-05-04 09:55:00', '2021-05-04 09:55:00', '', 9, 'http://kardanets.fkinart.com/?p=105', 0, 'revision', '', 0),
(106, 1, '2021-05-06 18:15:22', '2021-05-06 16:35:11', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2021-05-06 18:15:22', '2021-05-06 18:15:22', '', 0, 'http://kardanets.fkinart.com/?p=106', 12, 'nav_menu_item', '', 0),
(109, 1, '2021-05-07 16:10:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-05-07 16:10:01', '0000-00-00 00:00:00', '', 0, 'http://kardanets.fkinart.com/?post_type=acf-field-group&p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2021-05-07 16:29:41', '2021-05-07 16:29:41', '<div class="contact-form">\r\n	<div class="form-group">\r\n		<label>Your Name <span class="required">*</span></label>\r\n		[text* client_name id:customername]\r\n	</div>\r\n	<div class="form-group">\r\n		<label>Your Email <span class="required">*</span></label>\r\n		[email* client_email id:customerEmail]\r\n	</div>\r\n	<div class="form-group">\r\n		<label>Subject</label>\r\n                    [text client_subject id:contactSubject]\r\n	</div>\r\n	<div class="form-group">\r\n		<label>Your Message</label>\r\n		[textarea client_message id:contactMessage class:pb-10]\r\n	</div>\r\n	<div class="form-group mb-0">\r\n		[submit id:submit class:btn theme-btn--dark1 btn--lg "submit"]\r\n	</div>\r\n</div>\n1\nNew feedback form from apple.loc (Contacts page)\n[_site_title] <no-reply@apple.loc>\n[_site_admin_email]\n<strong>From:</strong> [client_name] <[client_email]><br>\r\n<strong>Subject:</strong> [client_subject]<br>\r\n<br>\r\n<strong>Message:</strong><br>\r\n[client_message]<br>\nReply-To: [client_email]\n\n1\n\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@apple.loc>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Feedback form (Contacts page)', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-05-07 17:01:44', '2021-05-07 17:01:44', '', 0, 'http://kardanets.fkinart.com/?post_type=wpcf7_contact_form&#038;p=110', 0, 'wpcf7_contact_form', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(111, 1, '2021-05-07 17:18:53', '2021-05-07 17:18:53', '<div class="form-inline position-relative">\r\n	[email email class:form-control placeholder "Your email address"][submit class:btn nletter-btn text-capitalize "Sign up"]\r\n</div>\n1\n11\nno-reply@apple.loc\nno-reply@apple.loc\n11\n\n\n\n\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@apple.loc>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.\nskip_mail: on', 'Subscription block (Footer)', '', 'publish', 'closed', 'closed', '', 'subscription-block-footer', '', '', '2021-05-07 17:44:51', '2021-05-07 17:44:51', '', 0, 'http://kardanets.fkinart.com/?post_type=wpcf7_contact_form&#038;p=111', 0, 'wpcf7_contact_form', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(9, 1, 0),
(9, 12, 0),
(12, 1, 0),
(12, 10, 0),
(12, 11, 0),
(41, 3, 0),
(42, 3, 0),
(43, 3, 0),
(44, 3, 0),
(45, 3, 0),
(54, 2, 0),
(55, 2, 0),
(56, 2, 0),
(57, 2, 0),
(61, 2, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(67, 2, 0),
(68, 2, 0),
(69, 2, 0),
(70, 2, 0),
(71, 2, 0),
(72, 2, 0),
(87, 4, 0),
(87, 7, 0),
(94, 4, 0),
(94, 8, 0),
(96, 6, 0),
(96, 9, 0),
(97, 6, 0),
(97, 8, 0),
(99, 5, 0),
(99, 7, 0),
(101, 5, 0),
(101, 7, 0),
(106, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 15),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'departments', '', 0, 2),
(5, 5, 'departments', '', 0, 2),
(6, 6, 'departments', '', 0, 2),
(7, 7, 'locations', '', 0, 3),
(8, 8, 'locations', '', 0, 2),
(9, 9, 'locations', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Information (footer)', 'information-footer', 0),
(4, 'Leadership', 'leadership', 0),
(5, 'Client Services', 'client-services', 0),
(6, 'Creative', 'creative', 0),
(7, 'USA', 'usa', 0),
(8, 'Australia', 'australia', 0),
(9, 'Ireland', 'ireland', 0),
(10, 'Games', 'games', 0),
(11, 'Gaming services', 'gaming-services', 0),
(12, 'Chips', 'chips', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'max'),
(2, 1, 'first_name', 'Max'),
(3, 1, 'last_name', 'Kardanets'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"23849c65854c2a2db01643ca2614ef0ab7208f40d4f7815728dec358c6eb1a00";a:4:{s:10:"expiration";i:1621513612;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36";s:5:"login";i:1620304012;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1619799025'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '104'),
(20, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(22, 1, '_yoast_wpseo_profile_updated', '1620131350'),
(23, 1, 'closedpostboxes_toplevel_page_theme-settings', 'a:1:{i:0;s:23:"acf-group_6086f5239e1ef";}'),
(24, 1, 'metaboxhidden_toplevel_page_theme-settings', 'a:0:{}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(27, 1, 'nav_menu_recently_edited', '2'),
(29, 1, 'closedpostboxes_post', 'a:0:{}'),
(30, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(31, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:"message";s:341:"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href="http://kardanets.fkinart.com/wp-admin/plugins.php">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>";s:7:"options";a:10:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-auto-update";s:4:"user";O:7:"WP_User":8:{s:4:"data";O:8:"stdClass":10:{s:2:"ID";s:1:"1";s:10:"user_login";s:3:"max";s:9:"user_pass";s:34:"$P$B7lijfwHZPxraRBgRzApFjXyWOgGrs0";s:13:"user_nicename";s:3:"max";s:10:"user_email";s:25:"max.kardanets@beetroot.se";s:8:"user_url";s:28:"http://kardanets.fkinart.com";s:15:"user_registered";s:19:"2021-04-19 16:36:04";s:19:"user_activation_key";s:0:"";s:11:"user_status";s:1:"0";s:12:"display_name";s:3:"max";}s:2:"ID";i:1;s:4:"caps";a:1:{s:13:"administrator";b:1;}s:7:"cap_key";s:15:"wp_capabilities";s:5:"roles";a:1:{i:0;s:13:"administrator";}s:7:"allcaps";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:20:"wpseo_manage_options";b:1;s:13:"administrator";b:1;}s:6:"filter";N;s:16:"\0WP_User\0site_id";i:1;}s:5:"nonce";N;s:8:"priority";d:0.8;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}}'),
(32, 1, 'closedpostboxes_page', 'a:0:{}'),
(33, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:"commentstatusdiv";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(34, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:57:"wpseo_meta,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(35, 1, 'screen_layout_page', '2'),
(36, 1, 'ac_preferences_check-review', 'a:1:{s:18:"first-login-review";i:1619803100;}'),
(37, 1, 'wp_ac_preferences_settings', 'a:1:{s:8:"list_key";s:4:"team";}'),
(38, 1, 'wp_media_library_mode', 'list'),
(39, 1, 'wp_ac_preferences_layout_table', 'a:1:{s:4:"team";s:13:"608c3bf0e5c6e";}'),
(40, 1, 'wpseo_title', ''),
(41, 1, 'wpseo_metadesc', ''),
(42, 1, 'wpseo_noindex_author', ''),
(43, 1, 'wpseo_content_analysis_disable', ''),
(44, 1, 'wpseo_keyword_analysis_disable', ''),
(45, 1, 'facebook', ''),
(46, 1, 'instagram', ''),
(47, 1, 'linkedin', ''),
(48, 1, 'myspace', ''),
(49, 1, 'pinterest', ''),
(50, 1, 'soundcloud', ''),
(51, 1, 'tumblr', ''),
(52, 1, 'twitter', ''),
(53, 1, 'youtube', ''),
(54, 1, 'wikipedia', '') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'max', '$P$B7lijfwHZPxraRBgRzApFjXyWOgGrs0', 'max', 'max.kardanets@beetroot.se', 'http://kardanets.fkinart.com', '2021-04-19 16:36:04', '', 0, 'max') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpmailsmtp_tasks_meta`
#

DROP TABLE IF EXISTS `wp_wpmailsmtp_tasks_meta`;


#
# Table structure of table `wp_wpmailsmtp_tasks_meta`
#

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_wpmailsmtp_tasks_meta`
#
INSERT INTO `wp_wpmailsmtp_tasks_meta` ( `id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2021-05-07 17:14:06') ;

#
# End of data contents of table `wp_wpmailsmtp_tasks_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_indexable`
#

DROP TABLE IF EXISTS `wp_yoast_indexable`;


#
# Table structure of table `wp_yoast_indexable`
#

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_yoast_indexable`
#
INSERT INTO `wp_yoast_indexable` ( `id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`) VALUES
(1, 'http://kardanets.fkinart.com/author/max/', '28:d4dfc4bc80fdf1fa7c2ede569b6f7d50', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 'https://0.gravatar.com/avatar/f189ca11363005faea2ac58467b77a3d?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/f189ca11363005faea2ac58467b77a3d?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2021-04-23 16:50:53', '2021-05-07 17:44:51', 1, NULL, NULL, NULL, NULL, 0, NULL),
(2, 'http://kardanets.fkinart.com/huawei-denies-spying-accusation-in-the-netherlands/', '68:1e6620ee2e45c6fe84271fb39f077c88', 6, 'post', 'post', 1, 0, NULL, NULL, 'Huawei denies spying accusation in the Netherlands', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118111406_gettyimages-1180326620.jpg', NULL, '7', 'featured-image', NULL, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118111406_gettyimages-1180326620.jpg', '7', 'featured-image', '{"width":976,"height":549,"url":"http:\\/\\/kardanets.fkinart.com\\/wp-content\\/uploads\\/2021\\/04\\/118111406_gettyimages-1180326620.jpg","path":"D:\\\\Programs\\\\Academy\\\\OpenServer\\\\domains\\\\apple.loc\\/wp-content\\/uploads\\/2021\\/04\\/118111406_gettyimages-1180326620.jpg","size":"full","id":7,"alt":"","pixels":535824,"type":"image\\/jpeg"}', 0, NULL, NULL, '2021-04-23 16:50:54', '2021-04-26 15:51:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(3, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118111406_gettyimages-1180326620.jpg', '80:86f5ab23eb422e9bc9c52c11ea192c69', 7, 'post', 'attachment', 1, 6, NULL, NULL, '_118111406_gettyimages-1180326620', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118111406_gettyimages-1180326620.jpg', NULL, '7', 'attachment-image', NULL, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118111406_gettyimages-1180326620.jpg', '7', 'attachment-image', '{"width":976,"height":549,"url":"http:\\/\\/kardanets.fkinart.com\\/wp-content\\/uploads\\/2021\\/04\\/118111406_gettyimages-1180326620.jpg","path":"D:\\\\Programs\\\\Academy\\\\OpenServer\\\\domains\\\\apple.loc\\/wp-content\\/uploads\\/2021\\/04\\/118111406_gettyimages-1180326620.jpg","size":"full","id":7,"alt":"","pixels":535824,"type":"image\\/jpeg"}', NULL, NULL, NULL, '2021-04-23 16:50:54', '2021-04-26 15:51:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(4, 'http://kardanets.fkinart.com/uk-government-intervenes-in-nvidia-takeover-of-chip-designer-arm/', '82:8bc0d34eea0d61a3ea04865f9066d97d', 9, 'post', 'post', 1, 0, NULL, NULL, 'UK government intervenes in Nvidia takeover of chip designer Arm', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/113832482_armchip.jpg', NULL, '11', 'featured-image', NULL, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/113832482_armchip.jpg', '11', 'featured-image', '{"width":976,"height":549,"url":"http:\\/\\/kardanets.fkinart.com\\/wp-content\\/uploads\\/2021\\/04\\/113832482_armchip.jpg","path":"D:\\\\Programs\\\\Academy\\\\OpenServer\\\\domains\\\\apple.loc\\/wp-content\\/uploads\\/2021\\/04\\/113832482_armchip.jpg","size":"full","id":11,"alt":"","pixels":535824,"type":"image\\/jpeg"}', 0, NULL, NULL, '2021-04-23 16:50:54', '2021-05-04 09:55:01', 1, NULL, NULL, NULL, NULL, 0, NULL),
(5, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/113832482_armchip.jpg', '65:3986a1ed16ce1f57530958e6f8ef9937', 11, 'post', 'attachment', 1, 9, NULL, NULL, '_113832482_armchip', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/113832482_armchip.jpg', NULL, '11', 'attachment-image', NULL, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/113832482_armchip.jpg', '11', 'attachment-image', '{"width":976,"height":549,"url":"http:\\/\\/kardanets.fkinart.com\\/wp-content\\/uploads\\/2021\\/04\\/113832482_armchip.jpg","path":"D:\\\\Programs\\\\Academy\\\\OpenServer\\\\domains\\\\apple.loc\\/wp-content\\/uploads\\/2021\\/04\\/113832482_armchip.jpg","size":"full","id":11,"alt":"","pixels":535824,"type":"image\\/jpeg"}', NULL, NULL, NULL, '2021-04-23 16:50:54', '2021-04-26 15:51:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(6, 'http://kardanets.fkinart.com/stadia-geforce-now-xbox-and-ps-now-put-to-the-test/', '68:a8c40fce3cd7523469ef6fc7d17d9ca0', 12, 'post', 'post', 1, 0, NULL, NULL, 'Stadia, GeForce Now, Xbox and PS Now put to the test', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118066542_facebookhomeworker.jpg', NULL, '13', 'featured-image', NULL, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118066542_facebookhomeworker.jpg', '13', 'featured-image', '{"width":976,"height":549,"url":"http:\\/\\/kardanets.fkinart.com\\/wp-content\\/uploads\\/2021\\/04\\/118066542_facebookhomeworker.jpg","path":"D:\\\\Programs\\\\Academy\\\\OpenServer\\\\domains\\\\apple.loc\\/wp-content\\/uploads\\/2021\\/04\\/118066542_facebookhomeworker.jpg","size":"full","id":13,"alt":"","pixels":535824,"type":"image\\/jpeg"}', 0, NULL, NULL, '2021-04-23 16:50:54', '2021-05-04 09:54:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(7, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118066542_facebookhomeworker.jpg', '76:c65f0818c2239e43ec688de2229797c0', 13, 'post', 'attachment', 1, 12, NULL, NULL, '_118066542_facebookhomeworker', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118066542_facebookhomeworker.jpg', NULL, '13', 'attachment-image', NULL, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/118066542_facebookhomeworker.jpg', '13', 'attachment-image', '{"width":976,"height":549,"url":"http:\\/\\/kardanets.fkinart.com\\/wp-content\\/uploads\\/2021\\/04\\/118066542_facebookhomeworker.jpg","path":"D:\\\\Programs\\\\Academy\\\\OpenServer\\\\domains\\\\apple.loc\\/wp-content\\/uploads\\/2021\\/04\\/118066542_facebookhomeworker.jpg","size":"full","id":13,"alt":"","pixels":535824,"type":"image\\/jpeg"}', NULL, NULL, NULL, '2021-04-23 16:50:54', '2021-04-26 15:51:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(8, 'http://kardanets.fkinart.com/?page_id=3', '27:7c3c2aeaa16c8dc059101422b3720da0', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-23 16:50:54', '2021-04-26 15:51:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(9, 'http://kardanets.fkinart.com/sample/', '24:bbe6a0a5627f020969110b0ce2a38e53', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2021-04-23 16:50:54', '2021-04-26 15:51:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(10, 'http://kardanets.fkinart.com/', '17:09059e60080268bb03db3056597c92f0', 16, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-23 16:50:54', '2021-04-26 15:51:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(12, 'http://kardanets.fkinart.com/?p=1', '21:ef1c476aa286683a9fc3338c1a72b1f7', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-23 16:50:54', '2021-04-26 15:51:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(13, 'http://kardanets.fkinart.com/category/uncategorized/', '40:25df88e2a8f4e45e7ab463b87f62938b', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-23 16:50:54', '2021-04-26 15:51:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(14, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-23 16:50:54', '2021-04-23 16:50:54', 1, NULL, NULL, NULL, NULL, 0, NULL),
(15, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-23 16:50:54', '2021-04-23 16:50:54', 1, NULL, NULL, NULL, NULL, 0, NULL),
(16, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-23 16:50:54', '2021-04-23 16:50:54', 1, NULL, NULL, NULL, NULL, 0, NULL),
(17, 'http://kardanets.fkinart.com/', '17:09059e60080268bb03db3056597c92f0', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2021-04-23 16:51:57', '2021-04-25 12:06:18', 1, NULL, NULL, NULL, NULL, 0, NULL),
(20, 'http://kardanets.fkinart.com/?post_type=acf-field-group&p=21', '48:810f0c9c629c8dac90e36a43ede14e7b', 21, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Theme Settings', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:15:49', '2021-04-27 17:03:57', 1, NULL, NULL, NULL, NULL, 0, NULL),
(21, 'http://kardanets.fkinart.com/?post_type=acf-field&p=22', '42:12f6826b2117cb23bbb7734b43bd06ab', 22, 'post', 'acf-field', 1, 21, NULL, NULL, 'Header', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:18:32', '2021-04-26 17:18:32', 1, NULL, NULL, NULL, NULL, 1, NULL),
(22, 'http://kardanets.fkinart.com/?post_type=acf-field&p=23', '42:efba89f541c28d7bbdb44eb7558d6276', 23, 'post', 'acf-field', 1, 21, NULL, NULL, 'Header', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:18:33', '2021-04-26 17:18:33', 1, NULL, NULL, NULL, NULL, 1, NULL),
(23, 'http://kardanets.fkinart.com/?post_type=acf-field&p=24', '42:69499eb5938ff1a3c4973806df235c6b', 24, 'post', 'acf-field', 1, 21, NULL, NULL, 'Footer', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:18:33', '2021-04-26 17:22:12', 1, NULL, NULL, NULL, NULL, 1, NULL),
(24, 'http://kardanets.fkinart.com/?post_type=acf-field&p=25', '42:a0c00dcf8c4fa9e2e575dc03bcce00c7', 25, 'post', 'acf-field', 1, 23, NULL, NULL, 'Logo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:22:11', '2021-04-27 16:13:15', 1, NULL, NULL, NULL, NULL, 1, NULL),
(25, 'http://kardanets.fkinart.com/?post_type=acf-field&p=26', '42:7d0ebde3e9b2b9141c064fff42b561a9', 26, 'post', 'acf-field', 1, 23, NULL, NULL, 'Phone', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:22:12', '2021-04-26 17:22:12', 1, NULL, NULL, NULL, NULL, 1, NULL),
(26, 'http://kardanets.fkinart.com/?post_type=acf-field&p=27', '42:6e15efcd583936f0ef723d1569cb5bed', 27, 'post', 'acf-field', 1, 26, NULL, NULL, 'Phone title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:22:12', '2021-04-26 17:23:07', 1, NULL, NULL, NULL, NULL, 1, NULL),
(27, 'http://kardanets.fkinart.com/?post_type=acf-field&p=28', '42:87f821741fdf576679094bedc11118dc', 28, 'post', 'acf-field', 1, 26, NULL, NULL, 'Phone number', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:22:12', '2021-04-26 17:23:07', 1, NULL, NULL, NULL, NULL, 1, NULL),
(28, 'http://kardanets.fkinart.com/?post_type=acf-field&p=29', '42:dd5e77ead9ebd4d9f0471e238fd55ca6', 29, 'post', 'acf-field', 1, 21, NULL, NULL, 'Footer', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:27:39', '2021-04-26 17:27:39', 1, NULL, NULL, NULL, NULL, 1, NULL),
(29, 'http://kardanets.fkinart.com/?post_type=acf-field&p=30', '42:7112272a476d6f645208d4e337a8c2ae', 30, 'post', 'acf-field', 1, 29, NULL, NULL, 'Logo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:27:39', '2021-04-27 16:13:15', 1, NULL, NULL, NULL, NULL, 1, NULL),
(30, 'http://kardanets.fkinart.com/?post_type=acf-field&p=31', '42:b964481888826bc5eb4d80cc70c7741a', 31, 'post', 'acf-field', 1, 29, NULL, NULL, 'Footer Description', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:27:39', '2021-04-26 17:27:39', 1, NULL, NULL, NULL, NULL, 1, NULL),
(31, 'http://kardanets.fkinart.com/?post_type=acf-field&p=32', '42:328d768d453f12df4e45c625ada1622b', 32, 'post', 'acf-field', 1, 29, NULL, NULL, 'Phone', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:27:39', '2021-04-26 17:27:40', 1, NULL, NULL, NULL, NULL, 1, NULL),
(32, 'http://kardanets.fkinart.com/?post_type=acf-field&p=33', '42:78b7dfed701217792b55e89b3550ec68', 33, 'post', 'acf-field', 1, 32, NULL, NULL, 'Phone title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:27:40', '2021-04-26 17:27:40', 1, NULL, NULL, NULL, NULL, 1, NULL),
(33, 'http://kardanets.fkinart.com/?post_type=acf-field&p=34', '42:48fce4a0d8d7d859723476fe54239ac1', 34, 'post', 'acf-field', 1, 32, NULL, NULL, 'Phone number', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:27:40', '2021-04-26 17:27:40', 1, NULL, NULL, NULL, NULL, 1, NULL),
(34, 'http://kardanets.fkinart.com/?post_type=acf-field&p=35', '42:16dd690b54b35f9bed20b748a16200ff', 35, 'post', 'acf-field', 1, 29, NULL, NULL, 'Social Networks', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:29:04', '2021-04-27 17:03:56', 1, NULL, NULL, NULL, NULL, 1, NULL),
(36, 'http://kardanets.fkinart.com/?post_type=acf-field&p=37', '42:8e21d159405f3e60fb65f873db0f7f02', 37, 'post', 'acf-field', 1, 35, NULL, NULL, 'Network URL', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-26 17:31:35', '2021-04-27 17:03:57', 1, NULL, NULL, NULL, NULL, 1, NULL),
(37, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/apple-logo.svg', '58:c3fdd89e3ba08a5a8037e6c181c08883', 38, 'post', 'attachment', 1, 0, NULL, NULL, 'apple-logo', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-26 17:36:04', '2021-04-26 17:36:04', 1, NULL, NULL, NULL, NULL, 0, NULL),
(39, 'http://kardanets.fkinart.com/?post_type=acf-field&p=40', '42:caf8dd1504fe17c458f3a4d6c6304252', 40, 'post', 'acf-field', 1, 35, NULL, NULL, 'Social Network Name', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:03:56', '2021-04-27 17:03:56', 1, NULL, NULL, NULL, NULL, 1, NULL),
(40, 'http://kardanets.fkinart.com/delivery/', '26:35b75d650dc0bc45ad93f056602d8ba3', 41, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Delivery', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:11:57', '2021-04-27 17:12:49', 1, NULL, NULL, NULL, NULL, 0, NULL),
(41, 'http://kardanets.fkinart.com/about-us/', '26:4e0064430f52f292ca848d4e999281dd', 42, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'About us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:12:16', '2021-04-27 17:12:49', 1, NULL, NULL, NULL, NULL, 0, NULL),
(42, 'http://kardanets.fkinart.com/secure-payment/', '32:111e14a805494063c5761a1065cc1f02', 43, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Secure payment', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:12:24', '2021-04-27 17:12:49', 1, NULL, NULL, NULL, NULL, 0, NULL),
(43, 'http://kardanets.fkinart.com/contact-us/', '28:d9d4403b1f5c2ab6bcb0751720f98e27', 44, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Contact us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:12:34', '2021-04-27 17:12:49', 1, NULL, NULL, NULL, NULL, 0, NULL),
(44, 'http://kardanets.fkinart.com/sitemap/', '25:3abbee5b4a810e520e7846fe79e1ea66', 45, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Sitemap', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:12:46', '2021-04-27 17:12:49', 1, NULL, NULL, NULL, NULL, 0, NULL),
(45, 'http://kardanets.fkinart.com/faq/', '21:4b27f536bef26950058454314c77feea', 46, 'post', 'page', 1, 0, NULL, NULL, 'FAQ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:23:56', '2021-04-29 16:25:20', 1, NULL, NULL, NULL, NULL, 0, 1),
(46, 'http://kardanets.fkinart.com/about-us/', '26:4e0064430f52f292ca848d4e999281dd', 48, 'post', 'page', 1, 0, NULL, NULL, 'About us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:24:09', '2021-04-30 16:12:40', 1, NULL, NULL, NULL, NULL, 0, NULL),
(48, 'http://kardanets.fkinart.com/news/', '22:de00a45cc90ee3a79f0df95a8436765c', 52, 'post', 'page', 1, 0, NULL, NULL, 'News', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:24:40', '2021-04-27 17:24:41', 1, NULL, NULL, NULL, NULL, 0, NULL),
(49, 'http://kardanets.fkinart.com/54/', '20:43dc0b394ae6d20f49a3ba2fba8176f1', 54, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:25:14', '2021-05-06 18:15:21', 1, NULL, NULL, NULL, NULL, 0, NULL),
(50, 'http://kardanets.fkinart.com/55/', '20:42c383d531cbf964cfd103748c91eca2', 55, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:25:14', '2021-05-06 18:15:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(51, 'http://kardanets.fkinart.com/56/', '20:d29806c042dae62702bb8afd59b63627', 56, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:25:15', '2021-05-06 18:15:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(52, 'http://kardanets.fkinart.com/57/', '20:b55b8793d3ec6e296f01fe2a441503c3', 57, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:25:15', '2021-05-06 18:15:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(54, 'http://kardanets.fkinart.com/contacts/', '26:eea94dd6075b1db74e37682ef763fb2b', 59, 'post', 'page', 1, 0, NULL, NULL, 'Contacts', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:25:25', '2021-05-07 16:31:30', 1, NULL, NULL, NULL, NULL, 0, NULL),
(55, 'http://kardanets.fkinart.com/61/', '20:14538b62cc89241009bf69c3dc6b2ed4', 61, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:25:35', '2021-05-06 18:15:23', 1, NULL, NULL, NULL, NULL, 0, NULL),
(56, 'http://kardanets.fkinart.com/catalog/', '25:bf9195c976a228a20d0a7bd4fddd3623', 62, 'post', 'page', 1, 0, NULL, NULL, 'Catalog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:26:15', '2021-04-27 17:26:16', 1, NULL, NULL, NULL, NULL, 0, NULL),
(57, 'http://kardanets.fkinart.com/64/', '20:07301e77a2a7cf5c9b9f9f187eab153d', 64, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:26:26', '2021-05-06 18:15:21', 1, NULL, NULL, NULL, NULL, 0, NULL),
(58, 'http://kardanets.fkinart.com/shop-grid/', '27:4483bc01d3354a4dd8ab3eb74a9e96db', 65, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Shop Grid', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:29:42', '2021-05-06 18:15:21', 1, NULL, NULL, NULL, NULL, 0, NULL),
(59, 'http://kardanets.fkinart.com/shop-list/', '27:ffbe5b29d44f5f72ed23e988465415cd', 66, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Shop List', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:29:58', '2021-05-06 18:15:21', 1, NULL, NULL, NULL, NULL, 0, NULL),
(60, 'http://kardanets.fkinart.com/shop-single/', '29:32343cfc25a3364d09cca7aa57cb8b66', 67, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Shop Single', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:30:11', '2021-05-06 18:15:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(61, 'http://kardanets.fkinart.com/other-pages/', '29:c998db8d42669844366aeed51f894d8e', 68, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'other pages', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:30:26', '2021-05-06 18:15:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(62, 'http://kardanets.fkinart.com/111/', '21:d4bc8f3c325e8c4ff868c5ba3bf285cf', 69, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '111', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:30:33', '2021-05-06 18:15:21', 1, NULL, NULL, NULL, NULL, 0, NULL),
(63, 'http://kardanets.fkinart.com/111-2/', '23:c7358989175d8f7345b36749fe6a9233', 70, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '111', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:30:36', '2021-05-06 18:15:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(64, 'http://kardanets.fkinart.com/111-3/', '23:2471b22e4eee43c5a19940512d662679', 71, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '111', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:30:40', '2021-05-06 18:15:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(65, 'http://kardanets.fkinart.com/111-4/', '23:3a6ede88fd14108b2d19b24d21db7dac', 72, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '111', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-27 17:30:45', '2021-05-06 18:15:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(66, 'http://kardanets.fkinart.com/?post_type=acf-field-group&p=74', '48:f28d1db8798c32f59310632428e128be', 74, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'About page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-29 17:18:42', '2021-04-29 17:28:08', 1, NULL, NULL, NULL, NULL, 0, NULL),
(67, 'http://kardanets.fkinart.com/?post_type=acf-field&p=75', '42:39f40be64bd8d8d8f0ce0cca8bd03a58', 75, 'post', 'acf-field', 1, 74, NULL, NULL, 'Content', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-29 17:27:40', '2021-04-29 17:28:08', 1, NULL, NULL, NULL, NULL, 1, NULL),
(68, 'http://kardanets.fkinart.com/?post_type=acf-field&p=76', '42:2c451c8afcccca36f600933605dc1a23', 76, 'post', 'acf-field', 1, 75, NULL, NULL, 'Layout', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-29 17:27:40', '2021-04-29 17:27:40', 1, NULL, NULL, NULL, NULL, 1, NULL),
(69, 'http://kardanets.fkinart.com/?post_type=acf-field&p=77', '42:6943434a92b725b48c4d415926054ff7', 77, 'post', 'acf-field', 1, 75, NULL, NULL, 'Image', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-29 17:27:40', '2021-04-29 17:27:40', 1, NULL, NULL, NULL, NULL, 1, NULL),
(70, 'http://kardanets.fkinart.com/?post_type=acf-field&p=78', '42:400d9319a2f4cfdc8cc96d8b3d85572d', 78, 'post', 'acf-field', 1, 75, NULL, NULL, 'Text', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-29 17:27:40', '2021-04-29 17:27:41', 1, NULL, NULL, NULL, NULL, 1, NULL),
(71, 'http://kardanets.fkinart.com/?post_type=acf-field&p=79', '42:dc24129ad3000d1f895fd33d171aca99', 79, 'post', 'acf-field', 1, 75, NULL, NULL, 'Statistics', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-29 17:27:41', '2021-04-29 17:27:41', 1, NULL, NULL, NULL, NULL, 1, NULL),
(72, 'http://kardanets.fkinart.com/?post_type=acf-field&p=80', '42:6b3f81b0d85bc69aaf4a55cb66c8cc09', 80, 'post', 'acf-field', 1, 79, NULL, NULL, 'Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-29 17:27:41', '2021-04-29 17:27:41', 1, NULL, NULL, NULL, NULL, 1, NULL),
(73, 'http://kardanets.fkinart.com/?post_type=acf-field&p=81', '42:1640abed30fe7d9bbd17258bbbf0dac9', 81, 'post', 'acf-field', 1, 79, NULL, NULL, 'Description', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-29 17:27:41', '2021-04-29 17:27:41', 1, NULL, NULL, NULL, NULL, 1, NULL),
(74, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/about_1.webp', '56:1387d9db6dc90bff800bfd98bbb1fdd0', 82, 'post', 'attachment', 1, 48, NULL, NULL, 'about_1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 17:34:07', '2021-04-29 17:34:07', 1, NULL, NULL, NULL, NULL, 0, NULL),
(75, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/about_2.webp', '56:15068980b98da497834f653251d5a70c', 83, 'post', 'attachment', 1, 48, NULL, NULL, 'about_2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-29 17:37:46', '2021-04-29 17:37:46', 1, NULL, NULL, NULL, NULL, 0, NULL),
(76, 'http://kardanets.fkinart.com/departments/leadership/', '40:546e211935b0171d9368af5d962097f0', 4, 'term', 'departments', NULL, NULL, NULL, NULL, 'Leadership', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 16:53:48', '2021-04-30 16:53:48', 1, NULL, NULL, NULL, NULL, 0, NULL),
(77, 'http://kardanets.fkinart.com/departments/client-services/', '45:898343d35722a123c837a771dcfecb7f', 5, 'term', 'departments', NULL, NULL, NULL, NULL, 'Client Services', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 16:53:55', '2021-04-30 16:53:55', 1, NULL, NULL, NULL, NULL, 0, NULL),
(78, 'http://kardanets.fkinart.com/departments/creative/', '38:b4e0ef4c88fbf9b4a538c9dec1639c19', 6, 'term', 'departments', NULL, NULL, NULL, NULL, 'Creative', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 16:54:46', '2021-04-30 16:54:46', 1, NULL, NULL, NULL, NULL, 0, NULL),
(79, 'http://kardanets.fkinart.com/locations/usa/', '31:12d9a99ba059b4e7efc31a977a4df0a4', 7, 'term', 'locations', NULL, NULL, NULL, NULL, 'USA', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 16:54:58', '2021-04-30 16:54:58', 1, NULL, NULL, NULL, NULL, 0, NULL),
(80, 'http://kardanets.fkinart.com/locations/australia/', '37:9cfc7223ccdb5fe09f8af6ccbf8c0437', 8, 'term', 'locations', NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 16:55:07', '2021-04-30 16:55:07', 1, NULL, NULL, NULL, NULL, 0, NULL),
(81, 'http://kardanets.fkinart.com/locations/ireland/', '35:e336481703fe22f0aafdf8f65513d4ea', 9, 'term', 'locations', NULL, NULL, NULL, NULL, 'Ireland', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 16:55:28', '2021-04-30 16:55:28', 1, NULL, NULL, NULL, NULL, 0, NULL),
(82, 'http://kardanets.fkinart.com/team/steve-ambuul/', '35:c7711be16eb08ab232d10cd80325cd4d', 87, 'post', 'team', 1, 0, NULL, NULL, 'Steve Ambuul', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/steveA500-1.webp', NULL, '92', 'featured-image', NULL, NULL, NULL, '92', 'featured-image', NULL, 0, NULL, NULL, '2021-04-30 16:55:56', '2021-04-30 17:07:08', 1, NULL, NULL, NULL, NULL, 0, 3),
(83, 'http://kardanets.fkinart.com/?post_type=acf-field-group&p=88', '48:038f618f94e9adbaf0b19dc5d3ba3c67', 88, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Team member', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 16:58:16', '2021-04-30 17:03:28', 1, NULL, NULL, NULL, NULL, 0, NULL),
(84, 'http://kardanets.fkinart.com/?post_type=acf-field&p=89', '42:7108537fb6b4a5370c8ac42c32049c92', 89, 'post', 'acf-field', 1, 88, NULL, NULL, 'Position', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 16:59:06', '2021-04-30 17:02:23', 1, NULL, NULL, NULL, NULL, 1, NULL),
(85, 'http://kardanets.fkinart.com/?post_type=acf-field&p=90', '42:a0a8d6563852739a52c96250d63fcab6', 90, 'post', 'acf-field', 1, 88, NULL, NULL, 'Department', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 17:02:23', '2021-04-30 17:03:28', 1, NULL, NULL, NULL, NULL, 1, NULL),
(86, 'http://kardanets.fkinart.com/?post_type=acf-field&p=91', '42:5094d5a416e6698e5f8f2ff3ff7289df', 91, 'post', 'acf-field', 1, 88, NULL, NULL, 'Location', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 17:02:23', '2021-04-30 17:03:28', 1, NULL, NULL, NULL, NULL, 1, NULL),
(87, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/steveA500-1.webp', '60:31d1c173fa4286bc9e420160658a8c55', 92, 'post', 'attachment', 1, 87, NULL, NULL, 'steveA500-1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-30 17:06:27', '2021-04-30 17:06:27', 1, NULL, NULL, NULL, NULL, 0, NULL),
(88, 'http://kardanets.fkinart.com/team/michelle-chu/', '35:393286fe84d59b523218cddaa00fd0b1', 94, 'post', 'team', 1, 0, NULL, NULL, 'Michelle Chu', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/michelle2-1.webp', NULL, '95', 'featured-image', NULL, NULL, NULL, '95', 'featured-image', NULL, 0, NULL, NULL, '2021-04-30 17:07:47', '2021-04-30 17:09:23', 1, NULL, NULL, NULL, NULL, 0, 3),
(89, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/michelle2-1.webp', '60:313eec134a90eed98eb712e1b1c0012c', 95, 'post', 'attachment', 1, 94, NULL, NULL, 'michelle2-1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-30 17:09:18', '2021-04-30 20:09:23', 1, NULL, NULL, NULL, NULL, 1, NULL),
(90, 'http://kardanets.fkinart.com/team/lexie-arce/', '33:17344d32093a3641384f6b0c325ec880', 96, 'post', 'team', 1, 0, NULL, NULL, 'Lexie Arce', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-04-30 17:11:42', '2021-04-30 17:11:42', 1, NULL, NULL, NULL, NULL, 0, NULL),
(91, 'http://kardanets.fkinart.com/team/david-cornman/', '36:7dc17a1145ac7465870139a3d0c67eed', 97, 'post', 'team', 1, 0, NULL, NULL, 'David Cornman', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/dave500.webp', NULL, '98', 'featured-image', NULL, NULL, NULL, '98', 'featured-image', NULL, 0, NULL, NULL, '2021-04-30 17:11:55', '2021-04-30 17:13:43', 1, NULL, NULL, NULL, NULL, 0, 3),
(92, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/dave500.webp', '56:f2b319b7996164b0afc8c2c6d465c500', 98, 'post', 'attachment', 1, 97, NULL, NULL, 'dave500', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-30 17:13:15', '2021-04-30 20:13:43', 1, NULL, NULL, NULL, NULL, 1, NULL),
(93, 'http://kardanets.fkinart.com/team/shawn-romanillos/', '39:6e4fc595bb763e5c2af7faf062c1cd3c', 99, 'post', 'team', 1, 0, NULL, NULL, 'Shawn Romanillos', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/shawn500.webp', NULL, '100', 'featured-image', NULL, NULL, NULL, '100', 'featured-image', NULL, 0, NULL, NULL, '2021-04-30 17:14:41', '2021-04-30 17:15:55', 1, NULL, NULL, NULL, NULL, 0, 3),
(94, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/shawn500.webp', '57:14aeaffef98be1c29b73f8c644f0994b', 100, 'post', 'attachment', 1, 99, NULL, NULL, 'shawn500', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-30 17:15:51', '2021-04-30 20:15:55', 1, NULL, NULL, NULL, NULL, 1, NULL),
(95, 'http://kardanets.fkinart.com/team/alex-sivro/', '33:bf09e19f2dedd976ce54b136658e8c52', 101, 'post', 'team', 1, 0, NULL, NULL, 'Alex Sivro', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, 0, 0, 0, 0, 0, NULL, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/alexs.webp', NULL, '102', 'featured-image', NULL, NULL, NULL, '102', 'featured-image', NULL, 0, NULL, NULL, '2021-04-30 17:16:25', '2021-04-30 17:17:26', 1, NULL, NULL, NULL, NULL, 0, 3),
(96, 'http://kardanets.fkinart.com/wp-content/uploads/2021/04/alexs.webp', '54:f593482905b367e0264763c463007e60', 102, 'post', 'attachment', 1, 101, NULL, NULL, 'alexs', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-30 17:17:20', '2021-04-30 20:17:26', 1, NULL, NULL, NULL, NULL, 1, NULL),
(97, 'http://kardanets.fkinart.com/team/', '22:2cc37a978d4a8b69132d0ca970d391b4', NULL, 'post-type-archive', 'team', NULL, NULL, '%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%', '', 'Team', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-30 17:25:28', '2021-04-30 17:25:28', 1, NULL, NULL, NULL, NULL, 0, NULL),
(98, 'http://kardanets.fkinart.com/?p=103', '23:4b6cdef7e036bacfd81868a823e9b733', 103, 'post', 'post', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-04 09:51:53', '2021-05-04 09:51:54', 1, NULL, NULL, NULL, NULL, 0, NULL),
(99, 'http://kardanets.fkinart.com/?p=104', '23:37c0ed54fcf05ebbee50acf08b9f2523', 104, 'post', 'post', 1, 0, NULL, NULL, 'Auto Draft', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-04 09:51:54', '2021-05-04 09:51:54', 1, NULL, NULL, NULL, NULL, 0, NULL),
(100, 'http://kardanets.fkinart.com/tag/games/', '27:2ef3f75552b82fa221fa81b942c86bdf', 10, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Games', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-04 09:54:19', '2021-05-04 09:54:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(101, 'http://kardanets.fkinart.com/tag/gaming-services/', '37:44e7a3d41f017a008ed6e57ae7506bb8', 11, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Gaming services', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-04 09:54:19', '2021-05-04 09:54:19', 1, NULL, NULL, NULL, NULL, 0, NULL),
(102, 'http://kardanets.fkinart.com/tag/chips/', '27:b6b82aa2a2d16701c58ca0e50a43d75e', 12, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Chips', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-04 09:55:00', '2021-05-04 09:55:00', 1, NULL, NULL, NULL, NULL, 0, NULL),
(103, 'http://kardanets.fkinart.com/team/', '22:2cc37a978d4a8b69132d0ca970d391b4', 106, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Team', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-06 16:34:52', '2021-05-06 18:15:22', 1, NULL, NULL, NULL, NULL, 0, NULL),
(106, 'http://kardanets.fkinart.com/?post_type=wpcf7_contact_form&p=110', '52:00aad88f679b3fe7bd2b1ce15f84942a', 110, 'post', 'wpcf7_contact_form', 1, 0, NULL, NULL, 'Feedback form (Contacts page)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-07 16:29:41', '2021-05-07 17:01:44', 1, NULL, NULL, NULL, NULL, 0, NULL),
(107, 'http://kardanets.fkinart.com/?post_type=wpcf7_contact_form&p=111', '52:1301b6e7089a86c3b1df88f298b8f3e0', 111, 'post', 'wpcf7_contact_form', 1, 0, NULL, NULL, 'Subscription block (Footer)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-07 17:18:53', '2021-05-07 17:44:51', 1, NULL, NULL, NULL, NULL, 0, NULL) ;

#
# End of data contents of table `wp_yoast_indexable`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_indexable_hierarchy`
#

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;


#
# Table structure of table `wp_yoast_indexable_hierarchy`
#

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_yoast_indexable_hierarchy`
#
INSERT INTO `wp_yoast_indexable_hierarchy` ( `indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(4, 13, 1, 1),
(6, 13, 1, 1),
(7, 6, 1, 1),
(7, 13, 2, 1),
(10, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(17, 0, 0, 1),
(20, 0, 0, 1),
(21, 20, 1, 1),
(22, 20, 1, 1),
(23, 20, 1, 1),
(24, 20, 2, 1),
(24, 22, 1, 1),
(25, 20, 2, 1),
(25, 22, 1, 1),
(26, 20, 3, 1),
(26, 22, 2, 1),
(26, 25, 1, 1),
(27, 20, 3, 1),
(27, 22, 2, 1),
(27, 25, 1, 1),
(28, 20, 1, 1),
(29, 20, 2, 1),
(29, 28, 1, 1),
(30, 20, 2, 1),
(30, 28, 1, 1),
(31, 20, 2, 1),
(31, 28, 1, 1),
(32, 20, 3, 1),
(32, 28, 2, 1),
(32, 31, 1, 1),
(33, 20, 3, 1),
(33, 28, 2, 1),
(33, 31, 1, 1),
(34, 20, 2, 1),
(34, 28, 1, 1),
(36, 20, 3, 1),
(36, 28, 2, 1),
(36, 34, 1, 1),
(37, 0, 0, 1),
(39, 20, 3, 1),
(39, 28, 2, 1),
(39, 34, 1, 1),
(40, 0, 0, 1),
(41, 0, 0, 1),
(42, 0, 0, 1),
(43, 0, 0, 1),
(44, 0, 0, 1),
(45, 0, 0, 1),
(46, 0, 0, 1),
(48, 0, 0, 1),
(49, 0, 0, 1),
(50, 0, 0, 1),
(51, 0, 0, 1),
(52, 0, 0, 1),
(54, 0, 0, 1),
(55, 0, 0, 1),
(56, 0, 0, 1),
(57, 0, 0, 1),
(58, 0, 0, 1),
(59, 0, 0, 1),
(60, 0, 0, 1),
(61, 0, 0, 1),
(62, 0, 0, 1),
(63, 0, 0, 1),
(64, 0, 0, 1),
(65, 0, 0, 1),
(66, 0, 0, 1),
(67, 66, 1, 1),
(68, 66, 2, 1),
(68, 67, 1, 1),
(69, 66, 2, 1),
(69, 67, 1, 1),
(70, 66, 2, 1),
(70, 67, 1, 1),
(71, 66, 2, 1),
(71, 67, 1, 1),
(72, 66, 3, 1),
(72, 67, 2, 1),
(72, 71, 1, 1),
(73, 66, 3, 1),
(73, 67, 2, 1),
(73, 71, 1, 1),
(74, 46, 1, 1),
(75, 46, 1, 1),
(76, 0, 0, 1),
(77, 0, 0, 1),
(78, 0, 0, 1),
(79, 0, 0, 1),
(80, 0, 0, 1),
(81, 0, 0, 1),
(82, 0, 0, 1),
(83, 0, 0, 1),
(84, 83, 1, 1),
(85, 83, 1, 1),
(86, 83, 1, 1),
(87, 82, 1, 1) ;
INSERT INTO `wp_yoast_indexable_hierarchy` ( `indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(88, 0, 0, 1),
(89, 88, 1, 1),
(90, 0, 0, 1),
(91, 0, 0, 1),
(92, 91, 1, 1),
(93, 0, 0, 1),
(94, 93, 1, 1),
(95, 0, 0, 1),
(96, 95, 1, 1),
(97, 0, 0, 1),
(98, 0, 0, 1),
(99, 0, 0, 1),
(100, 0, 0, 1),
(101, 0, 0, 1),
(102, 0, 0, 1),
(103, 0, 0, 1),
(106, 0, 0, 1),
(107, 0, 0, 1) ;

#
# End of data contents of table `wp_yoast_indexable_hierarchy`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_migrations`
#

DROP TABLE IF EXISTS `wp_yoast_migrations`;


#
# Table structure of table `wp_yoast_migrations`
#

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_yoast_migrations`
#
INSERT INTO `wp_yoast_migrations` ( `id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134') ;

#
# End of data contents of table `wp_yoast_migrations`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_primary_term`
#

DROP TABLE IF EXISTS `wp_yoast_primary_term`;


#
# Table structure of table `wp_yoast_primary_term`
#

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_yoast_primary_term`
#

#
# End of data contents of table `wp_yoast_primary_term`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_seo_links`
#

DROP TABLE IF EXISTS `wp_yoast_seo_links`;


#
# Table structure of table `wp_yoast_seo_links`
#

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_yoast_seo_links`
#
INSERT INTO `wp_yoast_seo_links` ( `id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://kardanets.fkinart.com/wp-admin/', 2, NULL, 'internal', 9, NULL, NULL, NULL, NULL, NULL, NULL) ;

#
# End of data contents of table `wp_yoast_seo_links`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

