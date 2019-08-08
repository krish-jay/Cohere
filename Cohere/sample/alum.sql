-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 03:51 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alum`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `comments` text NOT NULL,
  `anonymous` int(11) NOT NULL,
  `type` int(1) NOT NULL COMMENT '0 = updates, 1 = posts, 2 = snapshots, 3 = openletters',
  `commentType` varchar(22) NOT NULL,
  `timestamp` varchar(22) NOT NULL,
  `amount` int(11) NOT NULL,
  `is_viewed` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `itemID`, `userID`, `comments`, `anonymous`, `type`, `commentType`, `timestamp`, `amount`, `is_viewed`) VALUES
(1, 2, 1, '@joker', 0, 0, '2', '1551708919', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(22) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `messages` text NOT NULL,
  `timestamp` varchar(22) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '0 = unread'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `rowID` int(22) NOT NULL,
  `userID` int(22) NOT NULL,
  `is_following` int(22) NOT NULL,
  `timestamp` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`rowID`, `userID`, `is_following`, `timestamp`) VALUES
(1, 1, 19, '1550847350');

-- --------------------------------------------------------

--
-- Table structure for table `friendships`
--

CREATE TABLE `friendships` (
  `rowID` int(22) NOT NULL,
  `fromID` int(22) NOT NULL,
  `toID` int(22) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 = request, 1 = accepted, 2 = banned',
  `timestamp` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friendships`
--

INSERT INTO `friendships` (`rowID`, `fromID`, `toID`, `status`, `timestamp`) VALUES
(2, 1, 19, 0, '1551246364');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` text CHARACTER SET latin1 NOT NULL,
  `english` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'timeline', 'Timeline'),
(2, 'posts', 'Posts'),
(3, 'snapshot', 'Snapshots'),
(4, 'type_keywords', 'Type keywords'),
(5, 'notifications', 'Notifications'),
(6, 'view_all_notifications', 'View all notifications'),
(7, 'go_admin', 'Go Admin'),
(8, 'translate', 'Translate'),
(9, 'articles', 'Articles'),
(10, 'snapshots', 'Snapshots'),
(11, 'edit_profile', 'Edit Profile'),
(12, 'logout', 'Logout'),
(13, 'search', 'Search'),
(14, 'latest_quiries', 'Latest Quiries'),
(15, 'latest_news', 'Latest News'),
(16, 'meet_our_office', 'Meet Our Office'),
(17, 'language', 'Language'),
(18, 'sure_to_delete', 'Are sure want to delete?'),
(19, 'this_action_cannot_be_undone', 'This action cannot be undone!'),
(20, 'continue', 'Continue'),
(21, 'cancel', 'Cancel'),
(22, 'default_language', 'Default Language'),
(23, 'search_article_or_hashtag', 'Search article or hashtag'),
(24, 'type_keywords_and_hit_search', 'Type keywords and hit search'),
(25, 'dashboard', 'Dashboard'),
(26, 'orders', 'Orders'),
(27, 'invoices', 'Invoices'),
(28, 'payments', 'Payments'),
(29, 'wall', 'Wall'),
(30, 'friends', 'Friends'),
(31, 'followers', 'Followers'),
(32, 'following', 'Following'),
(33, 'male', 'Male'),
(34, 'years', 'Years'),
(35, 'whats_on_your_mind', 'What\'s on your mind?'),
(36, 'upload_a_snapshot', 'Upload Snapshot'),
(37, 'write_new_article', 'Write an Article'),
(38, 'update', 'Update'),
(39, 'top_contributors', 'Top Contributors'),
(40, 'trending', 'Trending'),
(41, 'new_snapshot', 'New Snapshot'),
(42, 'contributors', 'Contributors'),
(43, 'most_commented', 'Most Commented'),
(44, 'categories', 'Categories'),
(45, 'latest_articles', 'Latest Articles'),
(46, 'trending_hashtags', 'Trending Hashtag'),
(47, 'about_this_snapshot', 'About this snapshot'),
(48, 'write_snapshot_descriptions', 'Write snapshot descriptions'),
(49, 'save', 'Save'),
(50, 'edit', 'Edit'),
(51, 'remove', 'Remove'),
(52, 'uploading_a_snapshot', 'Uploading a snapshot'),
(53, 'year', 'Year'),
(54, 'month', 'Month'),
(55, 'week', 'Week'),
(56, 'day', 'Day'),
(57, 'hour', 'Hour'),
(58, 'minute', 'Minute'),
(59, 'just_now', 'Just now'),
(60, 'comments', 'Comments'),
(61, 'likes', 'Likes'),
(62, 'reposts', 'Reposts'),
(63, 'new_post', 'New Post'),
(64, 'title', 'Title'),
(65, 'date_created', 'Date Created'),
(66, 'action', 'Action'),
(67, 'title_and_content', 'Title and Content'),
(68, 'post_title', 'Post Title'),
(69, 'write_article_here', 'Write complete article'),
(70, 'tags', 'Tags'),
(71, 'post_category', 'Post Category'),
(72, 'product_descriptions', 'Product Descriptions'),
(73, 's', 's'),
(74, 'write_comments', 'Write a comment and hit &quot;Enter&quot; to submit...'),
(75, 'view_order', 'View Orders'),
(76, 'writing_an_article', 'Writing an article'),
(77, 'category', 'Category'),
(78, 'login', 'Sign In'),
(79, 'dashboard_access', 'Dashboard Access'),
(80, 'register', 'Register'),
(81, 'username_or_email', 'Username / Email'),
(82, 'type_your_password', 'Your Password'),
(83, 'login_description', 'Type your username or email and password to login. Or you can simply using your Facebook account.'),
(84, 'password', 'Password'),
(85, 'hash', 'Hash'),
(86, 'edit_article', 'Edit Article'),
(87, 'save_changes', 'Save Changes'),
(88, 'read_more', 'Read More'),
(89, 'previous', 'Previous'),
(90, 'next', 'Next'),
(91, 'oops_page_not_found', 'Oops... Page not found!'),
(92, 'the_page_is_currently_not_available', 'The page you trying to access is currently unavailable.'),
(93, 'access_forbidden', 'Access forbidden!'),
(94, 'access_forbidden', 'Access forbidden!'),
(95, 'you_have_no_power_here', 'You have no power here :p'),
(96, 'close', 'Close'),
(97, 'female', 'Female'),
(98, 'website_and_traffic_analytics', 'Website and Visitors Analytics'),
(99, 'fri', 'Fri'),
(100, 'sat', 'Sat'),
(101, 'sun', 'Sun'),
(102, 'hit_units', 'Hit Units'),
(103, 'hits', 'Hits'),
(104, 'posts_stalker', 'Post\'s Stalker'),
(105, 'article_comments', 'Article\'s Comments'),
(106, 'snapshot_comments', 'Snaphot\'s Comments'),
(107, 'article_likes', 'Article\'s Like'),
(108, 'snapshot_likes', 'Snapshot\'s Like'),
(109, 'edit_a_snapshot', 'Edit a Snapshot'),
(110, 'basic_info', 'Basic Information'),
(111, 'full_name', 'Full Name'),
(112, 'gender', 'Gender'),
(113, 'select_gender', 'Select Gender'),
(114, 'man', 'Man'),
(115, 'woman', 'Woman'),
(116, 'age', 'Age'),
(117, 'photo', 'Photo'),
(118, 'contact_info', 'Contact Information'),
(119, 'phone_number', 'Phone Number'),
(120, 'address', 'Address'),
(121, 'account_info', 'Account Info'),
(122, 'email', 'Email'),
(123, 'update_profile', 'Update Profile'),
(124, 'write_an_article', 'Write an Article'),
(125, 'translation', 'Translation'),
(126, 'options', 'Options'),
(127, 'edit_phrase', 'Edit Phrase'),
(128, 'delete_translation', 'Deleter Translation'),
(129, 'back', 'Back'),
(130, 'update_phrase', 'Update Phrase'),
(131, 'commenting_on', 'Commenting on'),
(132, 'article', 'article'),
(133, 'reply', 'Reply'),
(134, 'report', 'Report'),
(135, 'commented_on', 'Commented on'),
(136, 'headline_news', 'Headline News'),
(137, 'update_content', 'Update Content'),
(138, 'visibility', 'Visibility'),
(139, 'updating_status', 'Updating status'),
(140, 'home', 'Home'),
(141, 'settings_updated', 'Setting\'s Updated'),
(142, 'news_title', 'News Title'),
(143, 'user', 'User'),
(144, 'act', 'Act'),
(145, 'show', 'Show'),
(146, 'keywords', 'Keywords'),
(147, 'showing', 'Showing'),
(148, 'results_for_keywords', 'result for keywords'),
(149, 'register_new_account', 'Register New Account'),
(150, 'register_hint', 'All fields is required. Please fill all fields based your profile information to register.'),
(151, 'username', 'Username'),
(152, 'retype_password', 'Retype Password'),
(153, 'mobile', 'Mobile'),
(154, 'email_address', 'Email Address'),
(155, 'profile_updated_successfully', 'Profile was updated successfully!'),
(156, 'confirmation_password', 'Confirmation password'),
(157, 'biography', 'Biography'),
(158, 'liking_on', 'likin on'),
(159, 'login_error', 'Your email or username and password doesn\'t match!'),
(160, 'coming_soon', 'Coming soon'),
(161, 'open_letter', 'Open Letters'),
(162, 'petition', 'Petitions'),
(163, 'welcome', 'Welcome'),
(164, 'account_details', 'Account Details'),
(165, 'is_following_you', 'Is following you'),
(166, 'mon', 'Mon'),
(167, 'photo_changed', 'Photo changed'),
(168, 'cover_changed', 'Cover changed'),
(169, 'tue', 'Tue'),
(170, 'photo_changed_successfully', 'Your profile picture was changed successfully!'),
(171, 'alert', 'Alert'),
(172, 'cover_changed_successfully', 'Your profile cover was changed successfully!'),
(173, 'welcome_back', 'Welcome Back'),
(174, 'greeting_messages', 'Everyone have a choice to publish their own reportation. Here you can writing article or uploading snapshot and share through worldwide!'),
(175, 'write_article', 'Write an Article'),
(176, 'upload_snapshot', 'Upload a Snapshot'),
(177, 'more_than', 'More than'),
(178, 'people_became_reporter', 'people became reporters'),
(179, 'stalker', 'Stalker'),
(180, 'clear_notifications', 'Clear Notifications'),
(181, 'descriptions', 'Descriptions'),
(182, 'time', 'Time'),
(183, 'view', 'View'),
(184, 'you_do_not_have_any_notification', 'You do not have any notification'),
(185, 'wed', 'Wed'),
(186, 'thu', 'Thu'),
(187, 'edit_post', 'Edit Post'),
(188, 'show_what_you_have_take_with_your_cam', 'Show what you have take with your camera'),
(189, 'headline', 'Headline'),
(190, 'content', 'Content'),
(191, 'snapshots', 'Snapshots'),
(192, 'snapshot_added_successfully', 'Snapshot was uploaded successfully!'),
(193, 'open_letters', 'Open Letters'),
(194, 'petitions', 'Petitions'),
(195, 'new_letter', 'New Letter'),
(196, 'target', 'Target'),
(197, 'letter_headline', 'Letter Headline'),
(198, 'aimed_to', 'Aimmed To'),
(199, 'target_details', 'Target Details'),
(200, 'write_complete_letter_here', 'Write complete letter here'),
(201, 'submit_new_open_letter', 'Submit Open Letter'),
(202, 'letter_content', 'Letter Content'),
(203, 'open_letter_added_successfully', 'Open Letter was added successfully!'),
(204, 'open_letter_updated_successfully', 'Open Letter was updated successfully!'),
(205, 'sincerely', 'Sincerely'),
(206, 'read_letter', 'Read Letter'),
(207, 'response_to_this_letter', 'Response to this letter'),
(208, 'messages', 'Messages'),
(209, 'repost_this_update', 'Repost this update'),
(210, 'say_something', 'Say something'),
(211, 'repost', 'Repost'),
(212, 'repost_this_article', 'Repost this article'),
(213, 'repost_this_letter', 'Repost this letter'),
(214, 'writing_an_open_letter', 'Writing an open letter'),
(215, 'openletters', 'Open Letters'),
(216, 'write_letter_and_remind_others', 'Write letter and remind others'),
(217, 'page_not_found', 'Page Not Found!'),
(218, 'whatever_you_writing_for_is_a_reportations', 'Whatever you writing for is a reportations'),
(219, 'share_everything_you_take_by_camera', 'Share everything you take by your camera'),
(220, 'write_letter_for_justice', 'Write letter for justice'),
(221, 'page_not_found_descriptions', 'The page you trying to access is currently unavailable'),
(222, 'does_not_have_any_follower', 'Does not have any follower'),
(223, 'does_not_have_any_friend', 'Does not have friend'),
(224, 'does_not_follow_any_user', 'Does not follow any user'),
(225, 'images', 'Images'),
(226, 'add_post', 'Add Post'),
(227, 'category_id', 'Category ID'),
(228, 'tags_contain_unsupported_characters', 'Tags contain unsupported character. You can separate tags by commas.'),
(229, 'post_added_successfully', 'Post was added successfully'),
(230, 'image', 'Snapshot'),
(231, 'about_this_image', 'About this snapshot'),
(232, 'snapshot_updated_successfully', 'Snapshot was updated successfully'),
(233, 'repost_success', 'Repost success!'),
(234, 'repost_this_image', 'Repost this Snapshot'),
(235, 'repost_this_snapshot', 'Repostthis Snapshot'),
(236, 'became_translator', 'Became Translator'),
(237, 'requesting_friendship_to_you', 'Requesting friendship to you'),
(238, 'letter', 'Letter'),
(239, 'views', 'Views'),
(240, 'post_updated_successfully', 'Post was updated successfully'),
(241, 'the_page_was_not_found', 'The page was not found'),
(242, 'search_title_tags_or_everything', 'Search title, tags or everything'),
(243, 'users', 'Users'),
(244, 'global_settings', 'Global Settings'),
(245, 'sitetitle', 'Site Title'),
(246, 'sitedescription', 'Site Descriptions'),
(247, 'sitetheme', 'Site Theme'),
(248, 'sitelang', 'Default Language'),
(249, 'sitephone', 'Site Phone'),
(250, 'on', 'on'),
(251, 'facebook_login', 'Facebook Login'),
(252, 'complete_your_account', 'Complete Your Account'),
(253, 'choose_username', 'Choose username'),
(254, 'instant_login', 'Using Facebook'),
(255, 'add_snapshots', 'Upload a Snaphot'),
(256, 'are_you_have_a_reports', 'Do you have reports today?'),
(257, 'do_you_have_any_reports_today', 'Do you have reports today?'),
(258, 'administration', 'Administation'),
(259, 'post_categories', 'Post Categories'),
(260, 'register_since', 'Register Since'),
(261, 'last_login', 'Last Login'),
(262, 'level', 'Level'),
(263, 'contributor', 'Contributor'),
(264, 'administrator', 'Administrator'),
(265, 'new_category', 'New Category'),
(266, 'category_title', 'Category Title'),
(267, 'posts_total', 'Post Total'),
(268, 'category_descriptions', 'Category Descriptions'),
(269, 'category_updated_successfully', 'Category was updated successfully'),
(270, 'does_not_have_any_update', 'Does not have any update'),
(271, 'manage_category', 'Manage Category'),
(272, 'manage_user', 'Manage Users'),
(273, 'add_new_category', 'Add New Category'),
(274, 'category_added_successfully', 'Category was added successfully!'),
(275, 'add_category', 'Add Category'),
(276, 'visitors', 'Visitors'),
(277, 'liking_own_snapshot', 'Liking own snapshot'),
(278, 'liking_own_article', 'Liking own article'),
(279, 'commenting_own_article', 'Comenting own article'),
(280, 'accepted_your_friend_request', 'Accepted your friend request'),
(281, 'update_info', 'Update Profile'),
(282, 'unfollow', 'Unfollow'),
(283, 'waiting_approval', 'Waiting Approval'),
(284, 'follow', 'Follow'),
(285, 'confirm_request', 'Confirm Request'),
(286, 'please_login_to_comment', 'Please login to comment'),
(287, 'add_friend', 'Add Friend'),
(288, 'unfriend', 'Unfriend'),
(289, 'do_you_have_any_snapshot_in_your_camera', 'Do you have any snapshot in your camera?'),
(290, 'momment_have_been_documented', 'momment have been documented'),
(291, 'do_you_write_letter_for_better_changes', 'Do you write letter for better changes?'),
(292, 'write_letter', 'Write Letter'),
(293, 'letter_have_been_responded', 'letter have been responded'),
(294, 'most_views', 'Most Views'),
(295, 'write_new_letter', 'Write a Letter'),
(296, 'connect_to_facebook', 'Connect to Facebook'),
(297, 'account_connected_to_facebook', 'Your account was linked to Facebook!'),
(298, 'do_not_connect_to_facebook', 'Disconnect Facebook'),
(299, 'letter_added_successfully', 'Your letter was submitted successfully!'),
(300, 'please_login_to_upload', 'Please login to upload!'),
(301, 'sharing_is_caring', 'Sharing is Caring!'),
(302, 'sharing_is_caring_post_desc', 'Share this post to get more readers. Click button below to share this article to your friends in social media:'),
(303, 'sharing_is_caring_snapshot_desc', 'Share this snapshot to get more readers. Click button below to share this image to your friends in social media:'),
(304, 'registration_successfull', 'Registration successfull!'),
(305, 'tv_channels', 'TV Channels'),
(306, 'do_you_have_channel_to_publish', 'Do you have private or favorites channel to publish your own reportage?'),
(307, 'publish_channel', 'Publish Channel'),
(308, 'online_tv_streaming_on_demand', 'Online TV Streaming on Demand'),
(309, 'tv', 'TV'),
(310, 'tv_channel', 'TV Channels'),
(311, 'new_channel', 'New Channel'),
(312, 'url', 'Channel URL'),
(313, 'edit_tv_channel', 'Edit TV Channel'),
(314, 'channel_title', 'Channel Title'),
(315, 'channel_url', 'Channel URL'),
(316, 'channel_url_notes', 'You must have valid m3u8 URL to publish your channel!'),
(317, 'about_this_channel', 'About this Channel'),
(318, 'write_channel_descriptions', 'Write channel descriptions'),
(319, 'edit_channel', 'Edit Channel'),
(320, 'add_new_tv_channel', 'Add New TV Channel'),
(321, 'add_channel', 'Add Channel'),
(322, 'add_tv_channel', 'Add TV Channel'),
(323, 'channel_descriptions', 'Channel Description'),
(324, 'channel_logo', 'Cannel Logo'),
(325, 'hash_incorrect', 'Token was incorrected!'),
(326, 'watch', 'Watch'),
(327, 'sharing_is_caring_desc', 'Share this post to get more readers. Click button below to share this image to your friends in social media:'),
(328, 'channel_added_successfully', 'Channel was added successfully!'),
(329, 'channel_updated_successfully', 'Channel was updated successfully!'),
(330, 'sharing_is_caring_channel_desc', 'Share this channel to get more viewers. Click button below to share this image to your friends in social media:'),
(331, 'feedback', 'Feedback'),
(332, 'updated_on', 'Updated on'),
(333, 'manage_pages', 'Manage Pages'),
(334, 'pages', 'Pages'),
(335, 'new_page', 'New Page'),
(336, 'visits_count', 'Visits Count'),
(337, 'edit_page', 'Edit Page'),
(338, 'page_title', 'Page Title'),
(339, 'select_language', 'Select Language'),
(340, 'write_page_content_here', 'Write complete page content here'),
(341, 'page_updated_successfully', 'Page was updated successfully!'),
(342, 'contact_us', 'Contact Us'),
(343, 'enter_full_name', 'Enter Fullname'),
(344, 'enter_email', 'Enter Email'),
(345, 'enter_phone_number', 'Enter Phone Number'),
(346, 'write_messages', 'Write Your Messages'),
(347, 'also_send_to_me', 'Also copy to me'),
(348, 'submit', 'Submit'),
(349, 'phone', 'Phone'),
(350, 'fax', 'Fax'),
(351, 'messenger', 'Messenger'),
(352, 'bbm_pin', 'BBM PIN'),
(353, 'website', 'Website'),
(354, 'edit_user', 'Edit User'),
(355, 'see_all', 'See All'),
(356, 'copy_email', 'Also send to me'),
(357, 'thank_you', 'Thank you'),
(358, 'your_messages_were_submitted', 'Your message was successfully received and being reviewed by our team.'),
(359, 'here_is_your_message_copies', 'Here is your message copies'),
(360, 'submitted_date', 'Date Submitted'),
(361, 'thanks_for_your_attention', 'Thank\'s for your attentions'),
(362, 'contact_messages_submitted', 'Your message was successfully received and being reviewed by our team.'),
(363, 'subjects', 'Subjects'),
(364, 'enter_subject_of_messages', 'Enter your messages subject'),
(365, 'subject', 'Subject'),
(366, 'no_content', ''),
(367, 'other', ''),
(368, 'edit_letter', ''),
(369, 'choose_available_translation_above_to_set_your_language', ''),
(370, 'editor_choice', ''),
(371, 'editor_choices', ''),
(372, 'add_new_letter', ''),
(373, 'main_menu', ''),
(374, 'my_account', ''),
(375, 'add_page', ''),
(376, 'created_pages', ''),
(377, 'readers', ''),
(378, 'repost_this_channel', ''),
(379, 'please_login_to_repost', ''),
(380, 'edit_open_letter', ''),
(381, 'letter_updated_successfully', ''),
(382, 'new_from_snapshots', ''),
(383, 'enter_your_age', ''),
(384, 'enter_mobile_number', ''),
(385, 'enter_full_address', ''),
(386, 'select_username', ''),
(387, 'enter_password', ''),
(388, 'last_users', ''),
(389, 'view_all', ''),
(390, 'new_from_open_letters', ''),
(391, 'by', ''),
(392, 'updates_stream', ''),
(393, 'people_are_watching', ''),
(394, 'search_user', ''),
(395, 'searching', ''),
(396, 'navigation', ''),
(397, 'add_new_page', ''),
(398, 'unable_to_submit_inquiry', ''),
(399, 'notification', ''),
(400, 'send_something', ''),
(401, 'post_something', ''),
(402, 'send_snapshot', ''),
(403, 'submit_open_letter', ''),
(404, 'submit_tv_channel', ''),
(405, 'choose_what_is_in_your_mind_right_now', ''),
(406, 'update_snapshot', ''),
(407, 'updating', ''),
(408, 'unable_to_update_snapshot', ''),
(409, 'edit_snapshot', ''),
(410, 'unable_to_update_article', ''),
(411, 'unable_to_update_settings', ''),
(412, 'update_configuration', ''),
(413, 'be_first_to_comment', ''),
(414, 'info', ''),
(415, 'bio', ''),
(416, 'public', ''),
(417, 'post', ''),
(418, 'signing_in', ''),
(419, 'sign_in', ''),
(420, 'unable_to_signing_in', ''),
(421, 'another_articles', ''),
(422, 'unable_to_update_profile', ''),
(423, 'profile_was_updated_successfully', ''),
(424, 'welcome_to_user_control_panel', ''),
(425, 'another_open_letters', ''),
(426, 'unable_to_update_letter', ''),
(427, 'another_channels', ''),
(428, 'username_or_password_did_not_match', ''),
(429, 'add_translation', ''),
(430, 'leave_page_confirm', ''),
(431, 'you_have_not_submitted_your_changes', ''),
(432, 'do_you_want_to_leave_page_without_changes', ''),
(433, 'leave_page', ''),
(434, 'stay_here', ''),
(435, 'unable_to_update_translation', ''),
(436, 'number_of_phrase', ''),
(437, 'translation_was_updated_successfully', ''),
(438, 'saving', ''),
(439, 'unable_to_save_snapshot', ''),
(440, 'add_snapshot', ''),
(441, 'choose_photo', ''),
(442, 'copyright_credits', ''),
(443, 'credit_about_this_photo', ''),
(444, 'please_provide_copyright_credits_if_it_is_not_your_own_photo', ''),
(445, 'snapshot_was_successfully_submitted', ''),
(446, 'credits_to', ''),
(447, 'another_snapshots', ''),
(448, 'registering', ''),
(449, 'unable_to_register', ''),
(450, 'your_account_was_created', ''),
(451, 'share', ''),
(452, 'article_was_updated_successfully', ''),
(453, 'oops', ''),
(454, 'unable_to_update_channel', ''),
(455, 'add_article', ''),
(456, 'unable_to_add_article', ''),
(457, 'find_us', ''),
(458, 'send_feedback', ''),
(459, 'send', ''),
(460, 'sending', ''),
(461, 'unable_to_send_your_messages', ''),
(462, 'from', ''),
(463, 'add_open_letter', ''),
(464, 'unable_to_save_letter', ''),
(465, 'unable_to_save_category', ''),
(466, 'edit_category', ''),
(467, 'unable_to_update_category', ''),
(468, 'unable_to_add_page', ''),
(469, 'unable_to_update_page', ''),
(470, 'unable_to_save_channel', ''),
(471, 'unable_to_update_user_information', ''),
(472, 'basic_information', ''),
(473, 'unable_to_update_your_profile', ''),
(474, 'submit_channel', ''),
(475, 'another_awesome_build_with', ''),
(476, 'and', ''),
(477, 'hosted_by_sponsor_server', ''),
(478, 'configuration_saved', ''),
(479, 'has_no_friend', ''),
(480, 'has_no_follower', ''),
(481, 'read_another_articles', ''),
(482, 'view_another_snapshots', ''),
(483, 'read_another_openletter', ''),
(484, 'watch_another_tv', ''),
(485, 'action_success', ''),
(486, 'are_you_sure_want_to_continue', ''),
(487, 'success', ''),
(488, 'remove_comment', ''),
(489, 'delete_this_updates', ''),
(490, 'updates', ''),
(491, 'liking_own_updates', ''),
(492, 'i_do_not_want_to_see_this', ''),
(493, 'delete_this_snapshot', ''),
(494, 'reposting_own_snapshot', ''),
(495, 'submitting_a_tv_channel', ''),
(496, 'delete_this_tv', ''),
(497, 'commenting_own_opdates', ''),
(498, 'commenting_own_snapshot', ''),
(499, 'commenting_own_updates', ''),
(500, 'commenting_own_post', ''),
(501, 'article_was_submitted_successfully', ''),
(502, 'openletter', ''),
(503, 'submitting_an_open_letter', ''),
(504, 'in', ''),
(505, 'unable_to_delete_this_likes', ''),
(506, 'online', ''),
(507, 'delete_this_openletter', ''),
(508, 'unable_to_proccess_your_request', ''),
(509, 'your_internet_was_disconnected', ''),
(510, 'please_enter_some_text_to_submit', ''),
(511, 'july', ''),
(512, 'june', ''),
(513, 'may', ''),
(514, 'april', ''),
(515, 'march', ''),
(516, 'february', ''),
(517, 'january', ''),
(518, 'december', ''),
(519, 'november', ''),
(520, 'october', ''),
(521, 'september', ''),
(522, 'august', ''),
(523, 'reposting', ''),
(524, 'unable_to_repost_this_snapshot', ''),
(525, 'comments_was_successfully_removed', ''),
(526, 'accept', ''),
(527, 'unable_to_repost_this_update', ''),
(528, 'updates_was_successfully_reported', ''),
(529, 'hide_this_feed', ''),
(530, 'unable_to_repost_this_post', ''),
(531, 'commenting_user_post', 'commented on &lt;a href=&quot;base_url/%1&quot; class=&quot;ajaxLoad hoverCard&quot;&gt;%2&lt;/a&gt; article'),
(532, 'liking_user_snapshot', 'liked on &lt;a href=&quot;base_url/%1&quot; class=&quot;ajaxLoad hoverCard&quot;&gt;%2&lt;/a&gt; snapshot'),
(533, 'reposting_user_post', 'reposting &lt;a href=&quot;base_url/%1&quot; class=&quot;ajaxLoad hoverCard&quot;&gt;%2&lt;/a&gt; article'),
(534, 'reposting_user_updates', 'reposting &lt;a href=&quot;base_url/%1&quot; class=&quot;ajaxLoad hoverCard&quot;&gt;%2&lt;/a&gt; updates'),
(535, 'commenting_user_snapshot', 'commented on &lt;a href=&quot;base_url/%1&quot; class=&quot;ajaxLoad hoverCard&quot;&gt;%2&lt;/a&gt; snapshot'),
(536, 'commenting_user_updates', 'commented on &lt;a href=&quot;base_url/%1&quot; class=&quot;ajaxLoad hoverCard&quot;&gt;%2&lt;/a&gt; updates'),
(537, 'liking_own_openletter', ''),
(538, 'liking_user_post', 'liked on &lt;a href=&quot;base_url/%1&quot; class=&quot;ajaxLoad hoverCard&quot;&gt;%2&lt;/a&gt; article'),
(539, 'commenting_user_openletter', 'commented on &lt;a href=&quot;base_url/%1&quot; class=&quot;ajaxLoad hoverCard&quot;&gt;%2&lt;/a&gt; letter'),
(540, 'liking_on_snapshot', ''),
(541, 'commented_on_snapshot', ''),
(542, 'commented_on_pembaruan', ''),
(543, 'commented_on_artikel', ''),
(544, 'reposting_updates', ''),
(545, 'commented_on_updates', ''),
(546, 'commented_on_article', ''),
(547, 'liking_user_openletter', 'liking &lt;a href=&quot;base_url/%1&quot; class=&quot;ajaxLoad hoverCard&quot;&gt;%2&lt;/a&gt; openletter'),
(548, 'update_user_profile', ''),
(549, 'site_information', ''),
(550, 'website_name', ''),
(551, 'company_or_business_name', ''),
(552, 'website_description', ''),
(553, 'company_slogan_and_showcase', ''),
(554, 'website_footer', ''),
(555, 'footer_notes', ''),
(556, 'theme', ''),
(557, 'contact_information', ''),
(558, 'settings_address', ''),
(559, 'type_company_address', ''),
(560, 'settings_phone', ''),
(561, 'type_company_phone', ''),
(562, 'settings_fax', ''),
(563, 'type_company_fax', ''),
(564, 'settings_email', ''),
(565, 'type_company_email', ''),
(566, 'yahoo_messenger', ''),
(567, 'add', ''),
(568, 'ym_username_or_email', ''),
(569, 'parent_cannot_removed', ''),
(570, 'child_removed_or_not_exist.', ''),
(571, 'settings_image_error', ''),
(572, 'update_page', ''),
(573, 'profile', 'Profile'),
(574, 'profile', 'Profile'),
(575, 'category_was_successfully_submitted', ''),
(576, 'developed_in', ''),
(577, 'all_rights_reserved', ''),
(578, 'menu', ''),
(579, 'blog', ''),
(580, 'we_will_update_more_languages_soon...', ''),
(581, 'let_your_enlightment_to_all', ''),
(582, 'read_another_blogs', ''),
(583, 'new_from_blogs', ''),
(584, '_blog', ''),
(585, '_blog', ''),
(586, '_blog', ''),
(587, '_blog', ''),
(588, '_blog', ''),
(589, '_blog', ''),
(590, '_blog', ''),
(591, '_blog', ''),
(592, 'blogs', ''),
(593, '_blog', ''),
(594, '_blog', ''),
(595, '_blog', ''),
(596, '_blog', ''),
(597, '_blog', ''),
(598, '_blog', ''),
(599, '_blog', ''),
(600, '_blog', ''),
(601, '_blog', ''),
(602, '_blog', ''),
(603, '_blog', ''),
(604, '_blog', ''),
(605, '_blog', ''),
(606, '_blog', ''),
(607, '_blog', ''),
(608, 'letter_was_successfully_submitted', ''),
(609, '_blog', ''),
(610, '_blog', ''),
(611, '_blog', ''),
(612, '_blog', ''),
(613, '_blog', ''),
(614, '_blog', ''),
(615, '_blog', ''),
(616, '_blog', ''),
(617, '_blog', ''),
(618, '_blog', ''),
(619, '_blog', ''),
(620, '_blog', ''),
(621, '_blog', ''),
(622, '_blog', ''),
(623, '_blog', ''),
(624, '_blog', ''),
(625, '_blog', ''),
(626, '_blog', ''),
(627, '_blog', ''),
(628, '_blog', ''),
(629, '_blog', ''),
(630, '_blog', ''),
(631, '_blog', ''),
(632, '_blog', ''),
(633, '_blog', ''),
(634, '_blog', ''),
(635, '_blog', ''),
(636, '_blog', ''),
(637, '_blog', ''),
(638, '_blog', ''),
(639, '_blog', ''),
(640, '_blog', ''),
(641, '_blog', ''),
(642, '_blog', ''),
(643, '_blog', ''),
(644, '_blog', ''),
(645, '_blog', ''),
(646, '_blog', ''),
(647, '_blog', ''),
(648, '_blog', ''),
(649, '_blog', ''),
(650, '_blog', ''),
(651, '_blog', ''),
(652, '_blog', ''),
(653, '_blog', ''),
(654, '_blog', ''),
(655, '_blog', ''),
(656, '_blog', ''),
(657, '_blog', ''),
(658, '_blog', ''),
(659, '_blog', ''),
(660, '_blog', ''),
(661, '_blog', ''),
(662, '_blog', ''),
(663, '_blog', ''),
(664, '_blog', ''),
(665, '_blog', ''),
(666, '_blog', ''),
(667, '_blog', ''),
(668, '_blog', ''),
(669, '_blog', ''),
(670, '_blog', ''),
(671, '_blog', ''),
(672, '_blog', ''),
(673, '_blog', ''),
(674, '_blog', ''),
(675, '_blog', ''),
(676, '_blog', ''),
(677, '_blog', ''),
(678, '_blog', ''),
(679, '_blog', ''),
(680, '_blog', ''),
(681, '_blog', ''),
(682, '_blog', ''),
(683, 'update_open_letter', ''),
(684, '_blog', ''),
(685, '_blog', ''),
(686, '_blog', ''),
(687, '_blog', ''),
(688, '_blog', ''),
(689, '_blog', ''),
(690, '_blog', ''),
(691, '_blog', ''),
(692, '_blog', ''),
(693, '_blog', ''),
(694, '_blog', ''),
(695, '_blog', ''),
(696, '_blog', ''),
(697, '_blog', ''),
(698, '_blog', ''),
(699, '_blog', ''),
(700, '_blog', ''),
(701, '_blog', ''),
(702, '_blog', ''),
(703, '_blog', ''),
(704, '_blog', ''),
(705, '_blog', ''),
(706, '_blog', ''),
(707, '_blog', ''),
(708, '_blog', ''),
(709, '_blog', ''),
(710, '_blog', ''),
(711, '_blog', ''),
(712, '_blog', ''),
(713, '_blog', ''),
(714, '_blog', ''),
(715, '_blog', ''),
(716, '_blog', ''),
(717, 'there_are_some_posts_still_use_this_category', ''),
(718, '_blog', ''),
(719, '_blog', ''),
(720, '_blog', ''),
(721, '_blog', ''),
(722, '_blog', ''),
(723, '_blog', ''),
(724, '_blog', ''),
(725, '_blog', ''),
(726, '_blog', ''),
(727, '_blog', ''),
(728, '_blog', ''),
(729, '_blog', ''),
(730, '_blog', ''),
(731, '_blog', ''),
(732, '_blog', ''),
(733, '_blog', ''),
(734, '_blog', ''),
(735, '_blog', ''),
(736, '_blog', ''),
(737, '_blog', ''),
(738, '_blog', ''),
(739, '_blog', ''),
(740, '_blog', ''),
(741, '_blog', ''),
(742, '_blog', ''),
(743, '_blog', ''),
(744, '_blog', ''),
(745, '_blog', ''),
(746, '_blog', ''),
(747, '_blog', ''),
(748, '_blog', ''),
(749, '_blog', ''),
(750, '_blog', ''),
(751, '_blog', ''),
(752, '_blog', ''),
(753, '_blog', ''),
(754, '_blog', ''),
(755, '_blog', ''),
(756, '_blog', ''),
(757, '_blog', ''),
(758, '_blog', ''),
(759, '_blog', ''),
(760, '_blog', ''),
(761, '_blog', ''),
(762, '_blog', ''),
(763, '_blog', ''),
(764, '_blog', ''),
(765, '_blog', ''),
(766, '_blog', ''),
(767, '_blog', ''),
(768, '_blog', ''),
(769, '_blog', ''),
(770, '_blog', ''),
(771, '_blog', ''),
(772, '_blog', ''),
(773, '_blog', ''),
(774, '_blog', ''),
(775, '_blog', ''),
(776, '_blog', ''),
(777, '_blog', ''),
(778, '_blog', ''),
(779, '_blog', ''),
(780, '_blog', ''),
(781, '_blog', ''),
(782, '_blog', ''),
(783, '_blog', ''),
(784, '_blog', ''),
(785, '_blog', ''),
(786, '_blog', ''),
(787, '_blog', ''),
(788, '_blog', ''),
(789, '_blog', ''),
(790, '_blog', ''),
(791, '_blog', ''),
(792, '_blog', ''),
(793, '_blog', ''),
(794, '_blog', ''),
(795, '_blog', ''),
(796, '_blog', ''),
(797, '_blog', ''),
(798, '_blog', ''),
(799, '_blog', ''),
(800, '_blog', ''),
(801, '_blog', ''),
(802, '_blog', ''),
(803, '_blog', ''),
(804, '_blog', ''),
(805, '_blog', ''),
(806, '_blog', ''),
(807, '_blog', ''),
(808, '_blog', ''),
(809, '_blog', ''),
(810, '_blog', ''),
(811, '_blog', ''),
(812, '_blog', ''),
(813, '_blog', ''),
(814, '_blog', ''),
(815, '_blog', ''),
(816, '_blog', ''),
(817, '_blog', ''),
(818, '_blog', ''),
(819, '_blog', ''),
(820, '_blog', ''),
(821, '_blog', ''),
(822, '_blog', ''),
(823, '_blog', ''),
(824, '_blog', ''),
(825, '_blog', ''),
(826, '_blog', ''),
(827, '_blog', ''),
(828, '_blog', ''),
(829, '_blog', ''),
(830, '_blog', ''),
(831, '_blog', ''),
(832, '_blog', ''),
(833, '_blog', ''),
(834, '_blog', ''),
(835, '_blog', ''),
(836, '_blog', ''),
(837, '_blog', ''),
(838, '_blog', ''),
(839, '_blog', ''),
(840, '_blog', ''),
(841, 'comments_was_successfully_reported', ''),
(842, '_blog', ''),
(843, 'forget_password', ''),
(844, '_blog', ''),
(845, '_blog', ''),
(846, '_blog', ''),
(847, '_blog', ''),
(848, '_blog', '');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likeID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `like` int(22) NOT NULL,
  `dislike` int(22) NOT NULL,
  `likeType` int(1) NOT NULL COMMENT '0 = updates, 1 = posts, 2 = snapshots, 3 = openletters',
  `date` int(22) NOT NULL,
  `timestamp` int(22) NOT NULL,
  `is_viewed` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`likeID`, `itemID`, `userID`, `like`, `dislike`, `likeType`, `date`, `timestamp`, `is_viewed`) VALUES
(1, 18, 1, 0, 1, 2, 0, 1550587694, NULL),
(2, 2, 18, 0, 1, 0, 0, 1550817076, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notifyID` int(11) NOT NULL,
  `fromID` int(11) NOT NULL,
  `toID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `commentID` int(11) NOT NULL,
  `repostID` int(11) NOT NULL,
  `notificationType` int(2) NOT NULL COMMENT '0 = updates, 1 = posts, 2 = snapshots, 3 = likes, 3 = comments, 4 = repost',
  `targetURL` varchar(500) NOT NULL,
  `type` varchar(22) NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 = unseen, 1 = seen',
  `alert` int(1) NOT NULL COMMENT '0 = active, 1 = openned',
  `timestamp` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notifyID`, `fromID`, `toID`, `itemID`, `commentID`, `repostID`, `notificationType`, `targetURL`, `type`, `description`, `status`, `alert`, `timestamp`) VALUES
(1, 19, 1, 0, 0, 0, 0, 'http://localhost/mod/joker', 'friendship', '', 0, 1, 1550846624),
(2, 1, 19, 0, 0, 0, 0, 'http://localhost/mod/admin', 'confirmed', '', 0, 1, 1550847338),
(3, 1, 19, 0, 0, 0, 0, 'http://localhost/mod/admin', 'following', '', 0, 1, 1550847350),
(4, 1, 19, 0, 0, 0, 0, 'http://localhost/mod/admin', 'friendship', '', 0, 1, 1551246364),
(5, 1, 19, 2, 1, 0, 2, 'http://localhost/mod/snapshots/9feb62587eedfd4cd69fc8933262bf67/#comment1', 'comment', '@joker', 0, 1, 1551708919);

-- --------------------------------------------------------

--
-- Table structure for table `openletters`
--

CREATE TABLE `openletters` (
  `letterID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `contributor` int(11) NOT NULL,
  `targetName` varchar(255) NOT NULL,
  `targetDetails` text NOT NULL,
  `headline` varchar(1) DEFAULT 'N',
  `language` varchar(30) NOT NULL DEFAULT 'indonesia',
  `timestamp` varchar(22) NOT NULL,
  `visits_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pageID` int(11) NOT NULL,
  `contributor` int(11) NOT NULL,
  `pageSlug` varchar(255) NOT NULL,
  `pageTitle` text NOT NULL,
  `pageExcerpt` text NOT NULL,
  `pageContent` text NOT NULL,
  `language` varchar(30) NOT NULL DEFAULT 'indonesia',
  `timestamp` int(22) NOT NULL,
  `visits_count` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pageID`, `contributor`, `pageSlug`, `pageTitle`, `pageExcerpt`, `pageContent`, `language`, `timestamp`, `visits_count`) VALUES
(6, 1, 'privacy-policy', 'Privacy Policy', 'This is privacy policy page in English', '<p>This is privacy policy page in English</p>', 'english', 1454234616, 63),
(7, 1, 'terms-and-conditions', 'Terms and Conditions', 'Terms and conditions', '<p>Terms and conditions</p>', 'english', 1454234663, 8),
(8, 1, 'about-us', 'About Us', 'About Us', '<p>About Us</p>', 'english', 1454234685, 7),
(9, 1, 'help-center', 'Help Center', 'Knows about all features provided in this site', '<p>Knows about all features provided in this site</p>', 'english', 1454234828, 10),
(11, 1, 'investor', 'Investor', 'Para investor yang turut serta memberikan kontribusi untuk Dwitri', '<p>Para investor yang turut serta memberikan kontribusi untuk Dwitri</p>', 'indonesia', 1468869148, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `contributor` int(11) NOT NULL,
  `postSlug` varchar(255) NOT NULL,
  `postTitle` text NOT NULL,
  `postExcerpt` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `postContent` text NOT NULL,
  `categoryID` text NOT NULL,
  `postHeadline` varchar(1) NOT NULL DEFAULT 'N',
  `language` varchar(30) NOT NULL DEFAULT 'indonesia',
  `timestamp` int(22) NOT NULL,
  `visits_count` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `contributor`, `postSlug`, `postTitle`, `postExcerpt`, `tags`, `postContent`, `categoryID`, `postHeadline`, `language`, `timestamp`, `visits_count`) VALUES
(1, 1, 'alumni-association', 'Alumni association', 'The purpose of education is to make an individual a unique personality so as to help the society with the vistas of new ideas. With this focus in mind and with the blessings of the Almighty, our zealous SETHU EDUCATIONAL TRUST established SETHU INSTITUTE OF TE...', 'sit,college,alumni,post,new,first,check', '<p><img src=\"http://localhost/mod/uploads/posts/abec4d35cd2df15acbedfba5356c4d5f.jpg\"></p><p>The purpose of education is to make an individual a unique personality so as to help the society with the vistas of new ideas. With this focus in mind and with the blessings of the Almighty, our zealous <strong xss=\"removed\">SETHU EDUCATIONAL TRUST</strong> established <strong xss=\"removed\">SETHU INSTITUTE OF TECHNOLOGY</strong> in the year 1995 at Pulloor-626 115, Kariapatti Taluk , Virudhunagar District with the motto of “<strong xss=\"removed\">KNOWLEDGE, SERVICE and PROGRESS</strong>”.</p><p><img src=\"https://117.232.103.67/collegen/wp-content/uploads/2017/01/History.jpg\" alt=\"\" width=\"216\" height=\"180\" xss=\"removed\"></p><p>Sethu Institute of Technology, the brainchild of our Founder & Chairman, <strong>Mr. S. Mohamed Jaleel</strong>, has been rendering its noble service since 1995 catering to the sustained growth of the educationally, industrially and economically backward rural areas. The college started with 180 students in the year 1995 with three UG Programmes has recorded a stupendous growth of expanding to the strength of 4800 students with <strong>9 UG courses</strong> and <strong>5 Post Graduate programmes</strong>.</p>', '[\"1\"]', 'Y', 'english', 1551230845, 7),
(2, 19, 'e-box-ampisoft-software-tool', 'E-box Ampisoft Software tool', 'LMS and Assessments Integrated                        E-Box platform is built with a proprietary LMS base which makes both assessment and learning management integrated. E-Box platform has numerous activity components pertaining to technology and engin...', 'sethu,sit,technology,ebox,student', '<p><img src=\"http://localhost/mod/uploads/posts/c2af0e1d9ce62b41fdc2c99f3e171ec7.png\"></p><h2>LMS and Assessments Integrated</h2>\r\n                        <p>E-Box platform is built \r\nwith a proprietary LMS base which makes both assessment and learning \r\nmanagement integrated. E-Box platform has numerous activity components \r\npertaining to technology and engineering concepts that could be used for\r\n design and analysis oriented learning. These components are also used \r\nfor assessing the design and analysis skills of candidates, apart from \r\nthe regular knowledge level testing.</p><h2>100% Fresh Content</h2><p>E-Box offers fresh question\r\n banks for every assessment and recruitment with 100% surprise factor. \r\nOur extensive portfolio of customized course contents are created in \r\nsuch a way as to describe complex technical concepts and ideas clearly, \r\ncoherently and reader friendly. E-Box also offers a wide collection of \r\nproblem sets that are themed in interesting and entertaining ways using \r\ncontexts that should be familiar and meaningful to all novice \r\nprogrammers.</p>\r\n                    \r\n                <p><a class=\"navbar-brand\" href=\"http://e-box.co.in/index.shtml\">\r\n                        \r\n                    </a></p>', '[\"1\",\"2\"]', 'N', 'english', 1551244996, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

CREATE TABLE `posts_category` (
  `categoryID` int(11) NOT NULL,
  `categoryTitle` varchar(255) NOT NULL,
  `categorySlug` varchar(255) NOT NULL,
  `categoryDescription` text NOT NULL,
  `language` varchar(30) NOT NULL DEFAULT 'indonesia',
  `timestamp` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts_category`
--

INSERT INTO `posts_category` (`categoryID`, `categoryTitle`, `categorySlug`, `categoryDescription`, `language`, `timestamp`) VALUES
(1, 'Sethu', 'sethu', 'Sethu Institute of Technology, the brainchild of our Founder & Chairman, Mr. S. Mohamed Jaleel,', 'english', 1551193458),
(2, 'Technology', 'technology', 'Technology (\"science of craft\", from Greek τέχνη, techne, \"art, skill, cunning of hand\"; and -λογία, -logia) is the collection of techniques,', 'english', 1551193543),
(3, 'Science', 'science', 'science is a systematic enterprise that builds and organizes knowledge in the form of testable explanations and predictions about the universe.', 'english', 1551193639),
(4, 'Research', 'research', 'Research comprises \"creative and systematic work undertaken to increase the stock of knowledge, including knowledge of humans, culture and society', 'english', 1551193686);

-- --------------------------------------------------------

--
-- Table structure for table `reposts`
--

CREATE TABLE `reposts` (
  `repostID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `repostType` int(11) NOT NULL COMMENT '0 = updates, 1 = posts, 2 = snapshots, 3 = openletters',
  `messages` text NOT NULL,
  `timestamp` varchar(22) NOT NULL,
  `is_viewed` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reposts`
--

INSERT INTO `reposts` (`repostID`, `userID`, `itemID`, `repostType`, `messages`, `timestamp`, `is_viewed`) VALUES
(1, 1, 23, 2, 'kj', '1550993495', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `searchID` int(22) NOT NULL,
  `query` varchar(60) NOT NULL,
  `type` varchar(22) NOT NULL,
  `language` varchar(30) NOT NULL DEFAULT 'indonesia',
  `count` int(22) NOT NULL,
  `timestamp` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`searchID`, `query`, `type`, `language`, `count`, `timestamp`) VALUES
(1, 'ebox', 'posts', 'indonesia', 0, '1551245571'),
(2, 'sethu', 'posts', 'indonesia', 1, '1551261164');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `siteID` int(11) NOT NULL,
  `siteTitle` text NOT NULL,
  `siteDescription` text NOT NULL,
  `siteLogo` text NOT NULL,
  `siteTheme` varchar(250) NOT NULL,
  `siteFooter` text NOT NULL,
  `siteLang` text NOT NULL,
  `siteAddress` text NOT NULL,
  `sitePhone` varchar(255) NOT NULL,
  `siteFax` varchar(255) NOT NULL,
  `siteEmail` varchar(255) NOT NULL,
  `siteYM` text NOT NULL,
  `siteBBM` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`siteID`, `siteTitle`, `siteDescription`, `siteLogo`, `siteTheme`, `siteFooter`, `siteLang`, `siteAddress`, `sitePhone`, `siteFax`, `siteEmail`, `siteYM`, `siteBBM`) VALUES
(0, 'Alumni', 'alumni portal', 'logo.png', 'default', 'Copyright © 2016 - Kj. All Rights Reserved', 'english', 'sit', '(021) 6543 2345', '(021) 6543 2346', '', '[{\"YM\":[\"\",\"\"]}]', '[{\"BBM\":[\"630626\"]}]');

-- --------------------------------------------------------

--
-- Table structure for table `snapshots`
--

CREATE TABLE `snapshots` (
  `snapshotID` int(11) NOT NULL,
  `contributor` int(22) NOT NULL,
  `snapshotContent` text NOT NULL,
  `snapshotFile` text NOT NULL,
  `snapshotSlug` varchar(60) NOT NULL,
  `snapshotCredits` text NOT NULL,
  `language` varchar(30) NOT NULL DEFAULT 'indonesia',
  `timestamp` int(22) NOT NULL,
  `visits_count` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `snapshots`
--

INSERT INTO `snapshots` (`snapshotID`, `contributor`, `snapshotContent`, `snapshotFile`, `snapshotSlug`, `snapshotCredits`, `language`, `timestamp`, `visits_count`) VALUES
(1, 1, 'Introducing a new Social netwoek', '9e013356a010542de2a8a4b95ec20618.jpg', '5a6b8328adab956c76a2cdd3d6eda82f', 'sit', 'english', 1551230497, 1),
(2, 19, 'event', 'ef61bbf8749813eaebb5af63ffdc9681.jpg', '9feb62587eedfd4cd69fc8933262bf67', 'sit', 'english', 1551244663, 3);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `socialName` varchar(250) NOT NULL,
  `socialLink` varchar(250) NOT NULL,
  `socialEnabled` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tv`
--

CREATE TABLE `tv` (
  `tvID` int(11) NOT NULL,
  `tvTitle` varchar(255) NOT NULL,
  `tvContent` text NOT NULL,
  `tvFile` varchar(255) NOT NULL,
  `tvURL` varchar(255) NOT NULL,
  `tvSlug` varchar(255) NOT NULL,
  `contributor` int(11) NOT NULL,
  `language` varchar(30) NOT NULL DEFAULT 'indonesia',
  `timestamp` int(22) NOT NULL,
  `last_visits` int(22) NOT NULL,
  `visits_count` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `updateID` int(22) NOT NULL,
  `userID` int(22) NOT NULL,
  `updateContent` text NOT NULL,
  `visibility` int(1) NOT NULL COMMENT '0 = public, 1 = followers, 2 = friends',
  `timestamp` varchar(22) NOT NULL,
  `visits_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`updateID`, `userID`, `updateContent`, `visibility`, `timestamp`, `visits_count`) VALUES
(1, 1, 'aefeef', 0, '1469531884', 18),
(2, 18, 'he he he', 0, '1550817063', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `facebookUID` varchar(255) DEFAULT NULL,
  `userName` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(60) NOT NULL,
  `RS` varchar(15) NOT NULL,
  `level` int(1) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `age` int(2) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `bio` text NOT NULL,
  `photo` varchar(200) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `language` varchar(22) NOT NULL,
  `register_since` varchar(22) NOT NULL,
  `last_login` varchar(22) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 = aktif, 0 = pending',
  `visits_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `facebookUID`, `userName`, `email`, `password`, `RS`, `level`, `full_name`, `gender`, `age`, `address`, `mobile`, `bio`, `photo`, `cover`, `language`, `register_since`, `last_login`, `status`, `visits_count`) VALUES
(1, '', 'admin', 'abifolio@gmail.com', '8c5c8643b2be7008b594f8bdbfba127f461d1984', 'cQdRT4hWMn6F', 1, 'Super Admin', 'l', 29, 'Bekasi Griya Asri 2 Blok J2 / 31', '085742821212', 'Hello, I am Aby. I spend most of my day talking to the people who use the computer systems in my business. I help them tell the programmers what kinds of new...', '5bf0066b52f2a0192e54fea482a30a6e.jpg', 'cae745ebbf92a1db6b6a78e7c2e1526d.jpg', 'english', '0', '2019-03-04 21:15', 0, 292),
(19, NULL, 'joker', 'jo@gmail.com', 'b6e0c45df1bc07507730ee17446a68e01cdb65f8', '', 0, 'kj', 'l', 19, '900', '90099090', '', 'e381f5ac51d36cbc4f5b83c5c5909581.png', '36205550beb1204c53da5ba1f1eaa0f7.jpg', 'english', '2019-02-22 21:43', '2019-03-04 21:15', 0, 40),
(20, NULL, 'aabid', 'aabid@mail.com', '6c5c238311b71755597ce1b6118c55dc', '', 0, 'aabid', 'l', 20, 'jkogpihpij;', '0986857848', '', '', '', 'english', '2019-02-27 13:39', '2019-02-27 13:39', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `user_agent` varchar(300) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(22) NOT NULL,
  `timestamp` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `user_agent`, `amount`, `date`, `timestamp`) VALUES
(1, '0', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 68, '1452816000', 1452879920),
(2, '0', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 414, '1452902400', 1452903182),
(3, '0', 'Opera/9.80 (J2ME/MIDP; Opera Mini/9/37.7663; U; en) Presto/2.12.423 Version/12.16', 382, '1452988800', 1452989242),
(4, '0', 'Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0', 414, '1453075200', 1453075572),
(5, '0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.2.5 (KHTML, like Gecko) Version/8.0.2 Safari/600.2.5 (Applebot/0.1; +http://www.apple.com/go/applebot)', 623, '1453161600', 1453161797),
(6, '0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 252, '1453248000', 1453248105),
(7, '0', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36', 271, '1453334400', 1453335134),
(8, '0', 'Twitterbot/1.0', 405, '1453420800', 1453420837),
(9, '0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36', 818, '1453507200', 1453508143),
(10, '0', 'Mozilla/5.0 (BlackBerry; U; BlackBerry 9220; en) AppleWebKit/534.11+ (KHTML, like Gecko) Version/7.1.0.337 Mobile Safari/534.11+', 409, '1453593600', 1453593665),
(11, '0', 'Mozilla/5.0 (compatible; MJ12bot/v1.4.5; http://www.majestic12.co.uk/bot.php?+)', 745, '1453680000', 1453680156),
(12, '0', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 640, '1453766400', 1453766754),
(13, '0', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 380, '1453852800', 1453852966),
(14, '0', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 487, '1453939200', 1453939637),
(15, '0', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 322, '1454025600', 1454027891),
(16, '0', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 193, '1454112000', 1454112596),
(17, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0', 6, '1454108400', 1454179545),
(18, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0', 11, '1454194800', 1454202571),
(19, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0', 5, '1454281200', 1454307969),
(20, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', 1, '1454346000', 1454359145),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', 1, '1454346000', 1454424215),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', 1, '1454346000', 1454424215),
(23, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', 2, '1454432400', 1454487602),
(24, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', 4, '1454518800', 1454521218),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36', 1, '1454518800', 1454586129),
(26, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 3, '1454778000', 1454823738),
(27, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:44.0) Gecko/20100101 Firefox/44.0', 1, '1457110800', 1457186023),
(28, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:44.0) Gecko/20100101 Firefox/44.0', 1, '1457197200', 1457270034),
(29, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:44.0) Gecko/20100101 Firefox/44.0', 2, '1458493200', 1458547502),
(30, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1458666000', 1458718265),
(31, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1458752400', 1458776047),
(32, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1458925200', 1458997753),
(33, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1459098000', 1459156499),
(34, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 1, '1459270800', 1459337144),
(35, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 3, '1459357200', 1459385326),
(36, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 1, '1460048400', 1460053471),
(37, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 1, '1460307600', 1460370913),
(38, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 5, '1460480400', 1460514361),
(39, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 2, '1460566800', 1460640794),
(40, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 3, '1460653200', 1460655400),
(41, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 1, '1460826000', 1460894635),
(42, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0', 3, '1460912400', 1460980710),
(43, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 2, '1461344400', 1461414642),
(44, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1461430800', 1461438240),
(45, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 2, '1461517200', 1461524438),
(46, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 8, '1461603600', 1461615396),
(47, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1461690000', 1461754425),
(48, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1461776400', 1461805892),
(49, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 2, '1462294800', 1462322279),
(50, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 2, '1462381200', 1462434674),
(51, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1462813200', 1462872971),
(52, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1463158800', 1463237170),
(53, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1463936400', 1463949779),
(54, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1, '1466960400', 1467030017),
(55, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1, '1467219600', 1467288954),
(56, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1, '1467478800', 1467548987),
(57, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1, '1467997200', 1468042402),
(58, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1, '1468170000', 1468256114),
(59, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 5, '1468256400', 1468265604),
(60, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 5, '1468342800', 1468349800),
(61, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 3, '1468429200', 1468462123),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1, '1468515600', 1468564042),
(63, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 12, '1468602000', 1468609328),
(64, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.23 Mobile Safari/537.36', 1, '1468602000', 1468652808),
(65, '::1', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.23 Mobile Safari/537.36', 3, '1468688400', 1468689914),
(66, '::1', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.23 Mobile Safari/537.36', 1, '1468774800', 1468789507),
(67, '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0', 1, '1469206800', 1469274840),
(68, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1, '1469638800', 1469666196),
(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 2, '1550509200', 1550587647),
(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 12, '1550768400', 1550816475),
(71, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 2, '1550854800', 1550925757),
(72, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 3, '1550941200', 1550945952),
(73, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 6, '1551027600', 1551102794),
(74, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 7, '1551114000', 1551156463),
(75, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 16, '1551200400', 1551229356),
(76, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 4, '1551632400', 1551708869);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`rowID`);

--
-- Indexes for table `friendships`
--
ALTER TABLE `friendships`
  ADD PRIMARY KEY (`rowID`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notifyID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pageID`),
  ADD UNIQUE KEY `pageSlug` (`pageSlug`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postSlug` (`postSlug`);

--
-- Indexes for table `posts_category`
--
ALTER TABLE `posts_category`
  ADD PRIMARY KEY (`categoryID`),
  ADD UNIQUE KEY `categorySlug` (`categorySlug`);

--
-- Indexes for table `reposts`
--
ALTER TABLE `reposts`
  ADD PRIMARY KEY (`repostID`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`searchID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`siteID`);

--
-- Indexes for table `snapshots`
--
ALTER TABLE `snapshots`
  ADD PRIMARY KEY (`snapshotID`),
  ADD UNIQUE KEY `snapshotSlug` (`snapshotSlug`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD UNIQUE KEY `socialName` (`socialName`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`updateID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userName_2` (`userName`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userName` (`userName`),
  ADD KEY `facebookUID` (`facebookUID`),
  ADD KEY `facebookUID_2` (`facebookUID`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `rowID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `friendships`
--
ALTER TABLE `friendships`
  MODIFY `rowID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=849;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notifyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts_category`
--
ALTER TABLE `posts_category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reposts`
--
ALTER TABLE `reposts`
  MODIFY `repostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `searchID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `snapshots`
--
ALTER TABLE `snapshots`
  MODIFY `snapshotID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `updateID` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
