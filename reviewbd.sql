-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2015 at 10:01 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reviewbd`
--
CREATE DATABASE IF NOT EXISTS `reviewbd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `reviewbd`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `comments` text,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `name`, `mail`, `comments`, `comment_time`) VALUES
(1, 19, 'Ashik Kabir', 'ashik@mashik.com', 'মুভিটা ভাল।', '2015-06-24 18:16:22'),
(2, 19, 'Ashik Kabir', 'ashik@mashik.com', 'মুভিটা ভাল।', '2015-06-24 18:16:22'),
(3, 19, 'Ashik Kabir', 'ashik@mashik.com', 'মুভিটা ভাল।', '2015-06-24 18:16:22'),
(8, 22, 'Ashik Kabir', 'ashik@yahoo.com', 'পিডাইয়া পাগল বানালামু হালা।', '2015-06-24 19:14:47'),
(9, 21, 'Suzon', 'suzon@zis.com', 'আশিক পিডামু।', '2015-06-24 19:28:01'),
(10, 18, 'Pagla Dasu', 'pagla@dasu.com', 'Pagoler songe jabi pagol hobi bujhbi seshe. ', '2015-06-24 19:33:12'),
(20, 22, 'Zahidul Islam', 'suzon@zis.com', 'ভাল মুভি এইটা অনেক।', '2015-06-24 23:34:25'),
(21, 22, 'Zahidul Islam', 'suzon@zis.com', 'মুভিটা দেখসি। ', '2015-06-25 18:01:37'),
(22, 28, 'Zahidul Islam', 'suzon@zis.com', 'Good course by FM Sir', '2015-07-07 04:49:34'),
(23, 77, 'Zahidul Islam', 'suzon@zis.com', 'I wont go there anymore! ', '2015-07-25 14:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `post_title` varchar(400) NOT NULL,
  `category` varchar(255) CHARACTER SET latin1 NOT NULL,
  `post` text NOT NULL,
  `tags` text CHARACTER SET latin1 NOT NULL,
  `pic` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `email`, `name`, `post_title`, `category`, `post`, `tags`, `pic`, `time`) VALUES
(4, 'rezwanul@ewu.com', 'Rezwanul', 'Hadoop', 'Bigdata', 'Hadoop is most famous platform for bigdata. You need to know JAVA as well. ', 'NOSQL', '', '0000-00-00 00:00:00'),
(12, 'suzon@zis.com', 'Zahidul Islam', 'Testing SUBSTR()', 'Study', 'Note: Sorry for adding a space between “gz” and “compress” or “uncompress” words. This is due to security purposes, I guess. My hosting doesn’t want to parse it properly. If you’ll copy the code above, please remove the space between “gz” and “compress” or “uncompress” as you execute the code above.\r\n\r\nSo there you have it. I hope you got something out of this. If you have any questions, feel free to comment below.\r\n\r\nI know it’s just a string and it doesn’t affect much my bandwidth, but I always consider everything in my web applications to make sure that it will be as lite as possible even though I only get 1% or even close to zero improvement. For me, little is still significant thing in terms of building my PHP applications. ;)', '', NULL, '0000-00-00 00:00:00'),
(18, 'ashik@yahoo.com', 'Ashik Kabir', 'ক্ল্যাশ ওফ ক্ল্যানস', 'Computer', 'Clash of Clans is an online multiplayer game in which players build a community, train troops, and attack other players to earn gold and elixir, and Dark Elixir, which can be used to build defenses that protect the player from other players'' attacks, and to train and upgrade troops.[5] The game also features a pseudo-single player campaign in which the player must attack a series of fortified goblin villages.[5]\r\nTroops\r\n\r\nTroops are divided into Tier 1, Tier 2, Tier 3, Dark Elixir Troops, and Heroes.\r\n\r\n    Tier #1 - Consists of Barbarians, Archers, and Goblins.\r\n\r\nBarbarians- Barbarians are elixir troops that are the fastest to create (20 seconds) in the barracks. Barbarians also known as Barbs in CoC. Barbarians have decent hit points for the amount of elixir that they take to create.\r\n\r\nArchers- Archers are elixir troops that are fairly quick (30 seconds) to make in a barracks and are the second troop to become available once a barracks has been upgraded to level two.\r\n\r\nGoblins- Goblins are useful for looting bases at lower levels. They have double hit points on resource type buildings including both gold and elixir storage and gold mines and elixir collectors. Goblins are made using elixir and are created in 30 seconds.\r\n\r\n    Tier #2 - Consists of Giants, Wall Breakers, that carry bombs), Balloons, (Wall Breakers in hot air balloons that drop bombs), and Wizards.\r\n\r\n    Tier #3 - Consists of Dragons, Healers, and P.E.K.K.As (heavily armored sword-wielding warriors whose exact identity is unconfirmed).\r\n\r\n    Dark Elixir Troops - Consists of Minions, Hog Riders, Valkyries, Golems, Witches, and Lava Hounds (a group of flying fiery hound-like golems that target air defenses). These troops are created by using "dark elixir", a special type of elixir that is only available at higher levels, and are also trained in their own "dark barracks".\r\n\r\n    Heroes - Consists of the Barbarian King and the Archer Queen. Heroes are immortal and are only trained once. They are summoned by an altar rather than being trained in the barracks (or dark barracks) like the other troops. They are trained and upgraded exclusively with dark elixir.\r\n', '', '/images/postimgs/11493558ac4672669e.jpg', '2015-06-24 14:53:27'),
(22, 'ashik@yahoo.com', 'Ashik Kabir', 'Goodfellas (1990)', 'Movie', 'IMDB Rating  ৮.৮\r\n\r\nমুভিটি একটি অস্কার পেয়েছে। মুভিটি অনেক ভায়োলেন্স সমৃদ্ধ। একটা লোক কিভাবে ছোট থেকেই অনৈতিক পরিবেশে বড় হয়ে একসময় বিভিন্ন অপরাধ করে এবং তার শেষ পরিনতি কি হয়, সকল কিছুই খুবই সুন্দর করে মুভিতে তুলে ধরা হয়েছে।\r\n\r\nহেনরি হিল একজন গ্যাংস্টার যে বিভিন্ন সময় তার বন্ধু টমি ও জেমির সাথে মিলে রোবারি করে। এক সময় তারা একটি বড় রোবারি করে এবং অনেক টাকা পায় কিন্তু বিবাদ বাদে সেখানেই রোবারি অংশগ্রহণকারীরা এক এক করে হত্যা হতে থাকে তাদেরই দুইজন উচ্চ প্রদস্থ গ্যাংস্টার থেকে, অবশেষে টমি অথবা জেমি বেঁচে থাকবে কি?\r\n\r\nআমার কাছে এই বায়োগ্রাফি মূলক ড্রামা ছবিটি দারুন লেগেছে। না দেখে থাকলে দেখে ফেলুন       ', '', './images/postimgs/12756558af38d7cfe1.jpg', '2015-06-24 18:14:37'),
(24, 'suzon@zis.com', 'Zahidul Islam', ' লেনোভো আইডিয়াপ্যাড জি৪০-৩০', 'Computer', 'গ্লোবাল ব্রান্ড বাংলাদেশ লিমিটেড আমদানীকৃত ‘লেনোভো আইডিয়াপ্যাড জি৪০-৩০’ মূল্য নির্ধারন করা হয়েছে ৩৪,১০০ টাকা। এর কনফিগারেশন এ আছে ইন্টেল এর ২.৫৮ গিগাহার্য পেন্টিয়াম কোয়াডকোর প্রোসেসর, ৪ জিবি র‍্যাম, ১ টেরাবাইট হার্ডডিস্ক, ১৪ ইঞ্চি এলইডি ডিসপ্লে, এইচডি ওয়েবক্যাম এবং ডিভিডি অপটিক্যাল ড্রাইভ। ল্যাপটপটিতে থাকছে ৪সেল ব্যাটারী যা ৬ ঘন্টা ব্যাকআপ দিতে সক্ষম। ', '', './images/postimgs/10792558c5832b591c.jpg', '2015-06-25 19:36:18'),
(25, 'suzon@zis.com', 'Zahidul Islam', 'শর্মা হাউজে বাজে অভিজ্ঞতা', 'Food', 'জিন্দিগিতে আর শর্মা হাউজে যামু না-_-\r\nকাহিনীঃ ধানমন্ডি এনাম র‌্যাংগসের শর্মা হাউজে চিকেন পাস্তা দুই তিন চামুচ খাওয়ার পর আবিষ্কার করলাম ইহারে মধ্যে তেলাপোকার ঠ্যাং আছে (পুরা পাস্তা খাইলে মনে হয় তেলাপোকা পাইতাম ) নগদে ওয়েটার স্যারদের ডাক দিলাম তাদের একজন ইহা রসুন বলিয়া আবিষ্কার করগ মনটা কইছে ঘুরাইয়া একটা দেই তারে জিগাইলাম আপনি কি শিউর এটা রসুন উনি শিউর কইল ... পরে উঠলাম আসে পাশে মানুষদের দেখাইলাম তারও এটা তেলাপোকার ঠ্যাং বলিয়া আবিষ্কার করিল তারপর গেলাম জনাব ম্যানেজারের কাছে উনি এটার ওদিক পর্যবেক্ষণ করিয়া বলিল এটা তেলাপোকার ঠ্যাং ... পাশ থেকে আর এক ওয়েটার স্যার গোলা উচাইয়া কয় স্যার এগুলা ব্যাপার না এমন সব জাগায় হয় তারা এবার আমারে ঘুষ দেয়ার চেস্টায় লিপ্ত হইল এটাই তাদের ভুল ছিল তারা আমাকে আর একটা পাস্তা দিবে কিন্তু বিল লাগবে না\r\n\r\n... জিগাইলাম কেন আর একটা দিবেন কিন্তু বিল নিবেন না কেন ম্যানেজার সাব একটু হাসিয়া কয় স্যার এটার চেঞ্জ এন্ড ভুল যেহেতু হল আমাদের তাই\r\nআর একজন স্যার কয় স্যার ছবি তুলছেন ??? একটু কষ্ট করে যদি ডিলেট করে দিতেন\r\n( আবে হালায় কয় কি )\r\nউত্তর দিলা ছবিও তুল্লাম তেলাপোকাও খাইলাম ... এখন গেলাম একটু পরে দেখা হচ্ছে\r\n\r\nপরে যাইয়া দেখি ওস্তাদ জীরা নাই চলিয়া গেছে ', '', './images/postimgs/9912558c5d7b53a5f.jpg', '2015-06-25 19:58:51'),
(26, 'pritom@vondo.com', 'Imtiaz Jahan', 'Samsung Grand 2', 'Mobile', 'Samsung was one of the first companies to really run with the idea of big-screen phones. Others had tried before and failed, but Samsung managed to turn its original Galaxy Note into a massive success. Big screens have since percolated down to the more budget-oriented phones, but these usually have lower resolutions and weaker processors, negating many of the advantages phones that size. Samsung''s own Galaxy Grand was meant to appeal to people who wanted a big screen just for the sake of having a big screen, without paying flagship-level prices.\r\n\r\nThe original Galaxy Note had a 5.3-inch 800x1280-pixel screen, which was pretty cutting-edge in 2011. Today, you can get full-HD 1080x1920-pixel screens in phones that cost a quarter of what Samsung''s late-2011 flagship did at the time of its launch. The company''s latest budget big-screen offering, the 5.25-inch Galaxy Grand 2, actually matches the original Note in terms of screen size and resolution. It''s only 0.05 inches smaller, and runs at the 16:9 resolution of 720x1280 which is just as tall but a little bit narrower.\r\n\r\nIn fact, the Galaxy Grand 2 is the perfect example of how far technology has progressed in the past few years. You''re getting specifications that match or exceed a flagship that''s just a few years old at roughly half its price.\r\n\r\nBut that fact alone doesn''t make the Galaxy Grand 2 a winner. The competitive landscape is full of oversized phones from budget as well as premium multinational brands in the same price range. Some of them offer full-HD screens while others offer octa-core processors. Our detailed analysis of the Galaxy Grand 2''s features, specifications and performance will determine whether or not it''s good enough to beat them.\r\n\r\nLook and Feel\r\nAt first glance, the Galaxy Grand 2 is rather striking. Its front face is totally consistent with the rest of Samsung''s lineup; a look that hasn''t changed much in years. Compared to its predecessor, the Grand 2 is a little more squared off, but is otherwise pretty much the same. There''s a shiny chrome-finished ring around its edges, with a similarly shiny earpiece and Samsung and Duos logos above the screen. There''s even a matching ring around the home button, just for good measure. The glass front panel is slightly sunken, which makes the metallic elements seem to rise through and around it. Beneath the glass is a white plastic layer with a very subtle honeycomb pattern for texture. It''s the sort of thing you only notice if you look at the phone very closely.\r\n\r\nFlanking the slightly raised Home button are the usual Back and Menu buttons, but these are of the capacitive touch variety. Their icons light up when you''re using the phone, but are otherwise completely hidden. You can tap them whether or not they''re lit up, and at least they''re in their standard positions.\r\n\r\nAround the back, we can see the faux-leather texture that has become a signature Samsung flourish, complete with fake stitching around the edges. This design was first seen in the Galaxy Note 3 and has recently popped up again on the Galaxy S4 and S4 Mini black editions. Apple might have moved away from mimicking real-world textures and materials, but Samsung seems to be jumping on this trend whole-heartedly. It does give the phone a good grip, but we personally don''t like it at all, and feel it makes the phone look a lot cheaper from the back than it does from the front.', '', './images/postimgs/21313558c5f73c48cb.jpg', '2015-06-25 20:07:15'),
(27, 'pritom@vondo.com', 'Imtiaz Jahan', 'সিনেমার নাম - Mad Max: Fury Road (2015) ', 'Movie', ' মানবজীবন তথা একজন মানুষের "সিনেমাজীবন" দুইটা কারণে ব্যর্থ হয়-\r\n১- কিছু নির্দিষ্ট মাস্টারপিস সিনেমা না দেখলে।\r\n২- কিছু নির্দিষ্ট মাস্টারপিস সিনেমা "হলে" গিয়ে না দেখলে।\r\n\r\nম্যাড ম্যাক্স এর ক্ষেত্রে এক নাম্বার পয়েন্টটা যতটা যায়, তাঁর চেয়ে একটু বেশী যায় দুই নাম্বার পয়েন্টটা।\r\n\r\nভবিষ্যৎ পৃথিবী। পারমাণবিক যুদ্ধ আর দুর্যোগে প্রকৃতি প্রায় বিলীন হওয়ার পথে।মানুষ আর পশুপাখির মিউটেশন হয়ে তাদের মাঝেও বেশ অদ্ভুত পরিবর্তন দেখা শুরু হয়েছে। যেদিকে তাকানো যায়, সেদিকেই ধু ধু মরুভূমি, গাছের নামগন্ধ নাই। এই সময়ে পৃথিবীতে অঞ্চলভিত্তিক কিছু "লর্ড" টাইপ লোক আছেন যারা সেই এলাকার পানি ও জ্বালানী নিয়ন্ত্রণ করেন কারণ এই পানীয় আর জ্বালানীও তখন অনেক দুষ্প্রাপ্য। এরকম একজন লর্ড হলেন “ইম্মরটান জো”। নিজের অন্ধ অনুসারীদের নিয়ে সে একটা দল গঠন করেছে যাদের মাঝে ছোট অনেক বালক ও শিশু আছে যাদেরকে ছোটবেলা থেকে সে বুঝিয়েছে যে তাঁর জন্য নিজের প্রাণ ত্যাগ করলে মৃত্যুর পরে তারা স্বর্গসুখ লাভ করবে। এই ছোট ছেলেরা যখন যুবকে পরিণত হয় তখন তাদেরকে বলে "ওয়ারবয়"। এদের অনেকেই নন মিউটেটেড ব্রিডারস (ওয়াইভস) দের সন্তান যাদেরকে ইম্মরটান জো বিভিন্ন যায়গা থেকে কিডন্যাপ করে নিজের স্ত্রী হিসেবে ঘোষণা করে এবং তাদেরকে নিজের সম্পদের মত যেভাবে ইচ্ছা সেভাবে ব্যবহার করেন, "মানুষ" হিসেবে যাদের মূল্য তাঁর কাছে একেবারেই নেই। এদিকে ম্যাক্স (টম হার্ডি) ইম্মরটান জো এর একটি দলের হাতে ধরা পড়ে। জো তাকে তার একজন অসুস্থ ওয়ারবয় নাক্স(নিকোলাস হল্ট) এর ব্লাড ব্যাগ হিসেবে ব্যাবহারের আদেশ দেয়। কিন্তু এদিকে ইম্পেরেটর ফিউরিওসা(শার্ল‌িজ থেরন) জোর স্ত্রীদেরকে তাদের দুর্দশা থেকে মুক্তি দেবার জন্য জো এর সবচেয়ে শক্তিশালী ওয়াররিগ নিয়ে পালিয়ে যায়। এটি জানতে পেরে জো তার সব ওয়ারবয়দেরকে নিয়ে ফিউরিওসাকে তাড়া করতে শুরু করে। এই তাড়া যে শেষমেশ কোথায় যায়- সেটা দেখাই আপনার দায়িত্ব।\r\n\r\nআপনার দায়িত্ব আপনি কতটুকু ভাল করে করবেন সেটা আমি না জানলেও, এটা জানি যে এই সিনেমার সাথে জড়িত সবাই তাঁর দায়িত্ব ১০০% নয়, ১১০% করেছেন। এই সিনেমার নায়ক হলেন ডিরেক্টর জর্জ মিলার- ওহ মাই গড! what a direction and what a making! মুভির প্রথম শট থেকে শুরু করে শেষ শটটি পর্যন্ত প্রত্যেকটা সিন যেন এক একটা মাস্টারপিস। থ্রি সিক্সটি, ট্র্যাকিং, টপ ভিউ , ওয়াইড এঙ্গেল, মাস্টার শট, এস্ট্যাবলিশমেন্ট শট- প্রতিটা শট এতটাই দক্ষতার সাথে নেয়া হয়েছে যে আপনার মুখ অটোম্যাটিক হ্যাঁ হয়ে যেতে বাধ্য। জর্জ মুভিটির সিনেমাটোগ্রাফির জন্য অস্কার উইনার জন সিল কে অবসর থেকে ফেরত আনেন- এবং সেটার ফলাফল অসাধারণ! সিনেমার ৯৫% অংশ রাস্তায় ধারণ করা- এরপরেও ক্যারেকটার ডেভালপমেন্ট এ কোন ঘাটতি ছিল না। সংলাপ ছিল অনেক কম, কিন্তু কম সংলাপেও কীভাবে ক্যারেকটার এতটা দারুণভাবে ফুটিয়ে তোলা যায় সেটা ম্যাড ম্যাক্স দেখলে বুঝবেন। এই স্টাইল কে “মিনিমালিস্ট” অ্যাপ্রোচ বলা হয় যেখানে ডায়লগ একেবারেই কম কিন্তু সিন ডিটেলস বেশি। জর্জ মিলার এক সাক্ষাৎকারে বলেন-আমি এই সিনেমায় এমন একটি পৃথিবীর (পোস্ট এপোক্যালিপ্টিক) কথা বলতে চেয়েছি যেখানে মানুষ খুব কম কথা বলে। আর আমি একটা বিশাল আকারের চেজ দেখাতে চেয়েছি যেখানে দর্শক রাস্তাতেই ক্যারেক্টারদের সাথে পরিচিত হতে পারবে।”\r\n\r\nমুভিটির প্রধান চরিত্র হচ্ছে ফিউরিওসা। আর শার্ল‌িজ থেরন এই ক্যারেক্টারটিতে পুরো ফাটিয়ে দিয়েছেন! মেকাপ, ছোট চুল, চোখের দৃষ্টি- সবকিছুতে টেন অন টেন। নারী চরিত্রের প্রাধান্য বেশী এই সিনেমাতে এই কারনেই এই সিনেমাকে নারীবাদী সিনেমা বলা হচ্ছে এবং সেটা নিয়ে বেশ আলোচনা আর সমালোচনাও হচ্ছে। টম হার্ডির দিকে তাকানোর সুযোগ থাকবে না থেরন এর জন্য, যদিও টম ও বেশ ভাল করেছেন।( ডার্ক নাইট রাইজেজ এর পরে আবারো তাঁর মুখে মুখোশ!\r\n) মজার ব্যাপার হল, ম্যাড ম্যাক্স এর ১৯৭৯ সালের ভার্সনে মেল গিবসন যেই ধরনের জ্যাকেট পড়েছিলেন, টম ও ঠিক সেই ধরনের জ্যাকেট পড়েছেন। এছাড়া এই সিনেমার মত ফার্স্ট ম্যাড ম্যাক্স এর প্রধান ভিলেইন টো-কাটার ক্যারেক্টারটিও করেন Hugh Keays-Byrne এবং তিনি দুর্দান্ত কাজ করেছেন। যাকে নিয়ে কিছু না বললেই নয় সেটি হচ্ছে গিটারিস্ট এর ক্যারেকটার। গিটারিস্ট ইলেকট্রিক গিটারে স্ট্রামিং করলেই আগুনের স্ফুলিংগ বের হয় এর মাথা থেকে- এই দৃশ্য যতবার হলে বসে দেখেছি, ততবার রক্ত গরম হয়ে গেছে আনন্দে আর বিস্ময়ে!\r\n\r\nগল্পের কিছু জায়গায় গাঁথুনি আরেকটু শক্ত হলে ভাল লাগত। এছাড়া বাকি সব দিক থেকে ম্যাড ম্যাক্স ইজ অ্যা ট্রিট টু ওয়াচ। প্রি প্রোডাকশন আর পোস্ট প্রোডাকশন এ যে কি পরিমান শ্রম গিয়েছে সেটা এক একটা গাড়ির ডিজাইন আর একশন দৃশ্যের সৌন্দর্য দেখলে বোঝা যায়। সিনেমার ভাল প্রিন্ট চলে এসেছে, কিন্তু আমি ডাউনলোড লিঙ্ক দিব না। কারণ এই সিনেমা হলে না দেখলে- সিরিয়াসলি "সিনেমাজীবন" বৃথা! পুরা সিনেমাটাই যেন একটা ট্রেলার- প্রতিটা সেকেন্ডে উত্তেজনা। ম্যাড ম্যাক্স ইজ অনলি অ্যাবাউট ম্যাডনেস। সিনেমার পোস্টারে একটি সংলাপ লেখা- what a lovely day! সিনেমা শেষে আপনার মুখ দিয়েও অটোম্যাটিকলি বের হয়ে যাবে- what a lovely CINEMA!\r\n\r\n(রেডিওর চাকরির প্রচণ্ড ব্যস্ততার কারণে অনেকদিন লেখা হয় না। ইনবক্সে যারা লেখার অনুরোধ জানিয়েছেন তাদেরকে ধন্যবাদ দিয়ে খাটো করলাম না\r\nআগের মত হয়ত এত লিখতে পারব না, তবে লেখালেখি ছাড়ব না, প্রমিজ\r\n\r\n)', '', './images/postimgs/24762558c636382dcb.jpg', '2015-06-25 20:24:03'),
(28, 'suzon@zis.com', 'Zahidul Islam', 'GEN225', 'Study', 'Gen225 is based on population and statistics. We just gave our 2nd mid on it. Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla', '', NULL, '2015-07-07 04:48:49'),
(29, 'rezwanul@ewu.com', 'Rezwanul Huq', 'ওয়ারফেজ এর নতুন এ্যালবাম', 'Music', 'ওয়ারফেজ সত্য নামের নতুন একটা অ্যালবাম বের করসে। গানগুলা দারুন। \r\nসারাদিন বসে বসে শুনি।\r\nগানের নামগুলাঃ \r\n১। সত্য\r\n২। পূর্ণতা \r\n\r\nব্লা ব্লা ব্লা \r\nব্লা ব্লা ব্লা\r\n\r\nব্লা ব্লা ব্লা', '', NULL, '2015-07-24 15:45:33'),
(30, 'rezwanul@ewu.com', 'Rezwanul Huq', 'Testing', 'Study', 'I am posting this post to test if the new code on mine works. the new code is it will first insert value to the posts table then a query will select the post_id of the posts then with the post_id all the sub categories input will insert into the subcategories table. GOOD LUCK!', '', NULL, '2015-07-24 16:40:48'),
(48, 'rezwanul@ewu.com', 'Rezwanul Huq', 'Test 2 ', 'Study', 'this is 2nd time test for the subcategories!', '', NULL, '2015-07-24 17:15:29'),
(68, 'rezwanul@ewu.com', 'Rezwanul Huq', '3rd test', 'Study', 'I am seriously fastructed by these >:(', '', NULL, '2015-07-24 20:24:57'),
(69, 'rezwanul@ewu.com', 'Rezwanul Huq', '4th test', 'Tourism', 'test korte korte moirai jamu ajke >:(', '', NULL, '2015-07-24 20:27:40'),
(77, 'rezwanul@ewu.com', 'Rezwanul Huq', 'Seafood night at Westin', 'Food', 'We found hair in our food multiple times. They changed it right away but they were very slow at everything else. I understand that it is a buffet but I had to constantly call the waiter for water. I''m a fan of shrimp but almost all the dishes were cold or left out for too long. It lacked the freshness. It wasn''t bland but not really authentic in the same way. The deserts however were excellent 10/10!', '', './images/postimgs/1920955b2a869eba17.jpg', '2015-07-24 21:04:42'),
(79, 'rezwanul@ewu.com', 'Rezwanul Huq', '400 টাকায় ৪ এম্বি', 'Services', 'রুপ্নগরে অনেকদিন ধরে ভাল একটা ইন্টারনেট সারভিস এর অভাব ফিল করতেসিলাম। অবশেষে ফাস্ট নেট এর লাইন নিলাম।\r\n\r\nএখন পরযন্ত ভালই চলতেসে। আমি হ্যাপি। ', '', NULL, '2015-07-24 21:11:46'),
(80, 'rezwanul@ewu.com', 'Rezwanul Huq', 'Green Day New Album', 'Music', 'Tell the truth: did anybody think Green Day would still be around in 2004? Ten years ago, when they blew up into the hot summer band of 1994, they were snotty little Berkeley, California, punk kids who sounded ready to pogo off the face of the earth in three-chord tantrums such as "Basket Case." Between Billie Joe Armstrong''s adenoidal snarl and Tre Cool''s maniac drums, Green Day seemed like a Saturday-morning-cartoon version of The Young Ones, three cheeky monkeys who came to raid the bar and disappear. But here they are with American Idiot: a fifty-seven-minute politically charged epic depicting a character named Jesus of Suburbia as he suffers through the decline and fall of the American dream. And all this from the boys who brought you Dookie.\r\n\r\nAmerican Idiot is the kind of old-school rock opera that went out of style when Keith Moon still had a valid driver''s license, in the tradition of the Who''s Tommy, Yes'' Relayer or Styx''s Kilroy Was Here. Since Green Day are punk rockers, they obviously have a specific model in mind: Husker Du''s 1984 Zen Arcade, which showed how a street-level hardcore band could play around with storytelling without diluting the primal anger of the music. On American Idiot, the thirteen tracks segue together, expanding into piano balladry and acoustic country shuffles. The big statement "Jesus of Suburbia" is a nine-minute five-part suite, with Roman-numeral chapters including "City of the Damned," "Dearly Beloved" and "Tales of Another Broken Home."\r\n\r\nAmerican Idiot could have been a mess; in fact, it is a mess. The plot has characters with names such as St. Jimmy and Whatsername, young rebels who end up on the "Boulevard of Broken Dreams." But the individual tunes are tough and punchy enough to work on their own. You can guess who the "American Idiot" is in the bang-up title tune, as Armstrong rages against the "subliminal mind-fuck America" of the George W. Bush era: "Welcome to a new kind of tension/All across the alien nation." Green Day have always swiped licks from the Clash, even back when they were still singing about high school shrinks and whores, so it makes sense for them to come on like Joe Strummer. The other Clash flashback is "Are We the Waiting," a grandiose ballad evoking Side Three of London Calling. "Wake Me Up When September Ends" is an acoustic power ballad, a sadder, more adult sequel to "Good Riddance (Time of Your Life)." Even better, there are punk ravers such as "Give Me Novocaine," "Extraordinary Girl" and "Letterbomb," which bites off a big juicy chunk of the Cheap Trick oldie "She''s Tight."\r\n\r\nSince rock operas are self-conscious and pompous beasts by definition, Green Day obligingly cram all their bad ideas into one monstrously awful track, the nine-minute "Homecoming," which sounds like the Who''s "A Quick One While He''s Away" without any of the funny parts. But aside from that, Idiot doesa fine job of revving up the basic Green Dayconceit, adding emotional flavor to top-shelf Armstrong songs. They don''t skimp on basic tunefulness — not even in the other big nine-minute track, "Jesus of Suburbia," which packs in punk thrash, naked piano, glockenspiel, Beach Boys harmonies and a Springsteen-style production number about a 7-Eleven parking lot where there are some mystical goings-down indeed. Against all odds, Green Day have found a way to hit their thirties without either betraying their original spirit or falling on their faces. Good Charlotte, you better be taking notes.\r\n\r\nRead more: http://www.rollingstone.com/music/albumreviews/american-idiot-20040930#ixzz3gqVsCbqz\r\nFollow us: @rollingstone on Twitter | RollingStone on Facebook\r\n', '', './images/postimgs/1671755b2ab9920905.png', '2015-07-24 21:18:17'),
(82, 'kahinibaz@yahoo.com', 'Kahini Baz', 'Glazed Donuts', 'Food', 'Its good to eat. They also provide discount. I love it. ', '', './images/postimgs/3062855b3ddfa64f6b.jpg', '2015-07-25 19:05:30'),
(83, 'kahinibaz@yahoo.com', 'Kahini Baz', 'বিকাশ এ একাউন্ট খোলা! ', 'Services', 'এই নিয়া তিনবার বিকাশের একাউন্ট খুলতে গেসি। প্রতিবারি ঝামেলা। একবার আইডি কারড এর ফটোকপি সাদাকালো হইতে হবে। একবার এখন করা যাবে না। \r\nএত হাবি জাবি হইলে কেমনে কি! ', '', './images/postimgs/2045155b3e60699c4f.jpg', '2015-07-25 19:39:50'),
(84, 'kahinibaz@yahoo.com', 'Kahini Baz', 'Help Need for Tour', 'Tourism', 'একটু সাহায্য দরকার ছিল.....\r\nপুরান ঢাকার ঐতিহাসিক স্থান ছোট কাটরা, বড় কাটরা, হোসেনি দালাল এই স্থাপনাগুলোর ঠিক আশে পাশে যদি আর কোন ঐতিহাসিক স্থাপনা থেকে থাকে তাহলে একটু বলবেন। এবং এই স্থান গুলো কিভাবে কোনটার পর কোনটা ঘুরলে সহজ হবে সেটাও একটু দয়া করে বলবেন। আর আমার অবস্থান ঢাকার হাজারীবাগে। ধন্যবাদ। ', '', NULL, '2015-07-25 19:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(20) CHARACTER SET latin1 NOT NULL,
  `division` varchar(20) CHARACTER SET latin1 NOT NULL,
  `propic` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `password`, `gender`, `division`, `propic`) VALUES
(22, 'Zahidul Islam', 'suzon@zis.com', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'Dhaka', './images/pp/32440557ee4749250e.jpg'),
(23, 'Ashik Kabir', 'Ashik@yahoo.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'male', 'Dhaka', './images/pp/10473557ee4e7c7bfa.jpg'),
(24, 'Imtiaz Jahan', 'pritom@vondo.com', '202cb962ac59075b964b07152d234b70', 'female', 'Dhaka', './images/pp/15505558c5e5d4228a.jpg'),
(25, 'Rezwanul Huq', 'rezwanul@ewu.com', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'Dhaka', './images/pp/25926557ee59be2974.jpg'),
(26, 'Mamun Hossain', 'mamun@mamun.com', '202cb962ac59075b964b07152d234b70', 'male', 'Dhaka', './images/pp/30978557fe17b12282.jpg'),
(27, 'Md. Mohibul Hasan', 'peash@pops.com', '827ccb0eea8a706c4c34a16891f84e7b', 'male', 'Dhaka', './images/pp/182605589bcd26b429.jpg'),
(28, 'Kahini Baz', 'Kahinibaz@yahoo.com', '202cb962ac59075b964b07152d234b70', 'male', 'Dhaka', './images/pp/1967155b3ca11a8587.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `post_id` int(255) DEFAULT NULL,
  `food_price` text,
  `food_restaurant` text,
  `food_taste` text,
  `food_item` text,
  `food_service` text,
  `food_environment` text,
  `food_overall` text,
  `service_type` text,
  `service_company_name` text,
  `service_satisfaction_level` text,
  `tourism_country` text,
  `tourism_place_name` text,
  `study_education_level` text,
  `music_album_name` text,
  `music_track_name` text,
  `music_artist` text,
  `music_genre` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category`, `post_id`, `food_price`, `food_restaurant`, `food_taste`, `food_item`, `food_service`, `food_environment`, `food_overall`, `service_type`, `service_company_name`, `service_satisfaction_level`, `tourism_country`, `tourism_place_name`, `study_education_level`, `music_album_name`, `music_track_name`, `music_artist`, `music_genre`) VALUES
(1, 'Music', 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'সত্য', 'পূর্ণতা', 'Warfaze', 'Metal'),
(2, 'Study', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSC', NULL, NULL, NULL, NULL),
(3, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'xxxxxxxxxxxx', NULL, NULL, NULL, NULL),
(4, 'Music', 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL),
(5, 'Food', 78, '5k', 'Westin', '5/10', 'Seafood', '4/10 ', ' 10/10', '5', NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL),
(6, 'Services', 79, '', '', '', '', '', '', '', 'Internet ', 'Fastnet', '8/10', '', '', '', NULL, NULL, NULL, NULL),
(7, 'Music', 80, '', '', '', '', '', '', '', '', '', '', '', '', '', 'American Idiot', '', 'Green Day', 'Punk Metal'),
(8, 'Choose', 81, '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0'),
(9, 'Food', 82, ' 9/10', 'Glazed Donuts', '10/10', ' Donuts', ' 8/10', ' 9/10', ' i liked it...Dhakar vitor best donuts...', '', '', '', '', '', '', '0', '0', '0', '0'),
(10, 'Food', 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Services', 83, '', '', '', '', '', '', '', 'ব্যাংকিং', 'ব্রাক ব্যাঙ্ক', 'নাই', '', '', '', '0', '0', '0', '0'),
(14, 'Tourism', 84, '', '', '', '', '', '', '', '', '', '', 'Bangladesh', 'Need Suggestion', '', '0', '0', '0', '0'),
(16, 'Study', 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Higher Study', NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
