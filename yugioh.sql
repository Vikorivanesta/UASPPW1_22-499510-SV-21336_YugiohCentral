-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 05:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yugioh`
--

-- --------------------------------------------------------

--
-- Table structure for table `archetype`
--

CREATE TABLE `archetype` (
  `archetype_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archetype`
--

INSERT INTO `archetype` (`archetype_id`, `name`) VALUES
(1, 'Naturia'),
(2, 'Ghoti'),
(3, 'Subterror'),
(4, 'Generaider'),
(5, 'Cataclysmic'),
(6, 'Icejade'),
(7, 'Plunder Patroll'),
(8, 'Stardust'),
(9, 'Synchron'),
(10, 'Fur Hire'),
(11, 'Atlantean'),
(12, 'Junk'),
(13, 'Swordsoul');

-- --------------------------------------------------------

--
-- Table structure for table `archetype_detail`
--

CREATE TABLE `archetype_detail` (
  `card_id` varchar(30) NOT NULL,
  `archetype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archetype_detail`
--

INSERT INTO `archetype_detail` (`card_id`, `archetype_id`) VALUES
('60c2b3aba0e24f2d54a52db0', 1),
('60c2b3aba0e24f2d54a52d9e', 1),
('60c2b3aba0e24f2d54a52da0', 1),
('60c2b3aba0e24f2d54a52da8', 1),
('60c2b3aba0e24f2d54a52dab', 1),
('60c2b3aba0e24f2d54a52d9d', 1),
('60c2b3aba0e24f2d54a52da4', 1),
('60c2b3aba0e24f2d54a52db9', 1),
('60c2b3aba0e24f2d54a52dba', 1),
('60c2b3aba0e24f2d54a52db1', 1),
('60c2b3aba0e24f2d54a52dad', 1),
('60c2b3aba0e24f2d54a52db2', 1),
('60c2b3aba0e24f2d54a52dc2', 1),
('60c2b3aba0e24f2d54a52da2', 1),
('60c2b3aba0e24f2d54a52db8', 1),
('60c2b3aba0e24f2d54a52da5', 1),
('60c2b3aba0e24f2d54a52da7', 1),
('60c2b3aba0e24f2d54a52da3', 1),
('60c2b3a9a0e24f2d54a51639', 1),
('60c2b3aba0e24f2d54a528fd', 1),
('60c2b3aba0e24f2d54a5295c', 1),
('60c2b3aba0e24f2d54a52da9', 1),
('60c2b3aba0e24f2d54a52dbc', 1),
('60c2b3aba0e24f2d54a52dae', 1),
('60c2b3aba0e24f2d54a52da1', 1),
('60c2b3aba0e24f2d54a52da6', 1),
('60c2b3aba0e24f2d54a52db6', 1),
('60c2b3aba0e24f2d54a52dbb', 1),
('60c2b3aba0e24f2d54a52dbe', 1),
('60c2b3aba0e24f2d54a52daa', 1),
('60c2b3aba0e24f2d54a52db3', 1),
('60c2b3aba0e24f2d54a52db7', 1),
('60c2b3aba0e24f2d54a52dbd', 1),
('60c2b3aba0e24f2d54a52d9c', 1),
('60c2b3aba0e24f2d54a52d9f', 1),
('60c2b3aba0e24f2d54a52db5', 1),
('60c2b3aba0e24f2d54a52dbf', 1),
('60c2b3aba0e24f2d54a52daf', 1),
('60c2b3aba0e24f2d54a52db4', 1),
('60c2b3aaa0e24f2d54a52086', 1),
('60c2b3aba0e24f2d54a527cf', 4),
('60c2b3aba0e24f2d54a52b39', 4),
('60c2b3aca0e24f2d54a5382a', 3),
('60c2b3aca0e24f2d54a5381f', 3),
('60c2b3aca0e24f2d54a53822', 3),
('60c2b3aba0e24f2d54a525a2', 4),
('60c2b3aba0e24f2d54a525cc', 4),
('60c2b3aca0e24f2d54a53825', 3),
('60c2b3aba0e24f2d54a529e2', 4),
('60c2b3aca0e24f2d54a5382d', 3),
('60c2b3aca0e24f2d54a53a01', 3),
('60c2b3aaa0e24f2d54a52339', 4),
('60c2b3aca0e24f2d54a53824', 3),
('60c2b3aca0e24f2d54a53821', 3),
('60c2b3aaa0e24f2d54a51e3e', 4),
('60c2b3aaa0e24f2d54a5223d', 4),
('60c2b3aca0e24f2d54a53ca4', 4),
('60c2b3aaa0e24f2d54a518c9', 5),
('60c2b3aaa0e24f2d54a518ca', 5),
('60c2b3aaa0e24f2d54a518cb', 5),
('60c2b3aaa0e24f2d54a518cc', 5),
('60c2b3aaa0e24f2d54a5233d', 4),
('60c2b3aca0e24f2d54a53829', 3),
('60c2b3aca0e24f2d54a5382e', 3),
('60c2b3aba0e24f2d54a52d95', 4),
('60c2b3aba0e24f2d54a52e1f', 4),
('60c2b3aca0e24f2d54a53826', 3),
('60c2b3aca0e24f2d54a53820', 3),
('60c2b3aca0e24f2d54a5381e', 3),
('60c2b3aca0e24f2d54a53823', 3),
('60c2b3aca0e24f2d54a5382b', 3),
('60c2b3aca0e24f2d54a5382c', 3),
('60c2b3aca0e24f2d54a53828', 3),
('60c2b3aaa0e24f2d54a5233a', 4),
('60c2b3aaa0e24f2d54a5233b', 4),
('60c2b3aca0e24f2d54a53827', 3),
('60c2b3aaa0e24f2d54a52338', 4),
('60c2b3aaa0e24f2d54a5233c', 4),
('60c2b3aca0e24f2d54a5381d', 3),
('62fc105bc9c52ba40dd3d546', 2),
('63396f1cf08769db1ff7b357', 6),
('633c3191dd8eba74887f5eaa', 7),
('6220bc60e5946838f0890c27', 8),
('63493f7446a7af52ebcfa42e', 9),
('62e02d945f0fd2a1fe36ffbb', 1),
('62de14fbe9066c4257aa8dbd', 10),
('62fc1d23c9c52ba40dd47108', 2),
('60c2b3aca0e24f2d54a537ae', 8),
('6332118c4943004b8e850ae6', 2),
('633f0c664f28d0fb9c1a3c35', 2),
('63382ffcf8334e0d4e9aecde', 13),
('60c2b3aca0e24f2d54a53134', 7),
('633f0cf9d99899cfae641374', 2),
('60c2b3a9a0e24f2d54a516a1', 10),
('62e02d945f0fd2a1fe36ffcb', 2),
('60c2b3aca0e24f2d54a534d0', 9),
('6239281592d4b8933d96d7e6', 8),
('634b9891c2dd6d7f902f8fbc', 6),
('62fc105bc9c52ba40dd3d545', 2),
('60c2b3aca0e24f2d54a537a0', 8),
('633f0b6c9787b75777d3967c', 2),
('62e02d945f0fd2a1fe36ffba', 1),
('60c2b3a9a0e24f2d54a51716', 7),
('60c2b3aca0e24f2d54a53332', 7),
('62e0316e5f0fd2a1fe373785', 10),
('62fc18e0c9c52ba40dd443db', 2),
('633f0ab39787b75777d384df', 2),
('60c2b3aba0e24f2d54a52ba4', 10),
('633f0df34f28d0fb9c1a5f84', 2),
('62e024795f0fd2a1fe3690ac', 2),
('633f0bd99787b75777d3a029', 2),
('60c2b3aaa0e24f2d54a517f0', 10),
('60c2b3a9a0e24f2d54a515d2', 11),
('60c2b3aba0e24f2d54a525d2', 10),
('60c2b3aba0e24f2d54a527e5', 12),
('60c2b3aba0e24f2d54a527e9', 12),
('60c2b3aaa0e24f2d54a51e0b', 10),
('60c2b3aca0e24f2d54a532ef', 10),
('62e02d945f0fd2a1fe36ffbc', 1),
('60c2b3aca0e24f2d54a53131', 7),
('633f0d6d4f28d0fb9c1a5473', 2),
('60c2b3aca0e24f2d54a5312f', 7),
('60c2b3aca0e24f2d54a53130', 7),
('60c2b3aca0e24f2d54a531ac', 7);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `category` varchar(30) NOT NULL,
  `content` text DEFAULT NULL,
  `date_published` date DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `title`, `category`, `content`, `date_published`, `user_id`) VALUES
(1, 'OCG - Age of Overlord: New \"Watt\" Cards!', 'news', '<p>Introducing a thrilling addition to the highly anticipated expansion set, \"Age of Overlord,\" the \"Watt\" archetype reignites the battlefield with electrifying new cards! Step into a world where voltage crackles in the air, and these powerful creatures take center stage, ready to dominate your opponent.</p>\r\n\r\n<p>Harness the raw power of electricity with the brand-new \"Watt\" cards, specifically designed to shock your adversaries and turn the tide of battle in your favor. These cutting-edge creatures pulse with energy, illuminating the field with their electrifying presence.</p>\r\n\r\n<p>Prepare to meet the \"Watt Overlord,\" the formidable leader of this electrifying faction. With unrivaled strength and an insatiable hunger for victory, this imposing Overlord reigns supreme. Its lightning-infused attacks strike fear into the hearts of even the most formidable opponents, leaving them paralyzed with awe.</p>\r\n\r\n<p>But the \"Watt\" archetype is not just about sheer might. Delve deeper into the realm of lightning-based strategy with the versatile \"Watt Dynamo.\" This cunning creature channels the energy of its surroundings, using it to empower its allies and disrupt the plans of your foes. By strategically deploying the \"Watt Dynamo,\" you can control the flow of electricity on the battlefield, ensuring your forces are always charged and ready for action.</p>\r\n\r\nFor those who prefer a more agile approach, the \"Watt Charger\" is an ideal addition to your arsenal. This nimble creature darts across the battlefield, leaving a trail of sparks in its wake. With its lightning-fast strikes, it can swiftly incapacitate opposing forces, leaving them vulnerable to your next devastating move.</p>\r\n\r\n<p>Finally, witness the true might of the \"Watt Thunderstorm,\" a spell card capable of summoning a tempest of electricity to decimate your enemy\'s defenses. Watch in awe as bolts of lightning rain down upon their forces, leaving them reeling and defenseless against your onslaught.</p>\r\n\r\n<p>Embrace the power of the \"Watt\" archetype and enter the Age of Overlord with a jolt of excitement. With these electrifying new cards at your disposal, you\'ll have the means to unleash a storm of unparalleled strength and dominate the battlefield like never before. Prepare for an electrifying experience that will leave your opponents shocked and awestruck!</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2023-06-15', 1),
(2, 'Introduction to Naturia', 'guide', '<p>Welcome to the fascinating world of Naturia, a vibrant and harmonious archetype that draws its power from the very essence of nature itself.</p>\r\n  <h2>Nature\'s Guardians</h2>\r\n  <p>Naturia cards represent the spirits and guardians of the natural world, embodying the beauty and strength of various elements found in forests, jungles, and other lush landscapes. These creatures are deeply connected to the earth, harnessing its energy to protect and defend their domain.</p>\r\n  <h2>Diverse Abilities</h2>\r\n  <p>The Naturia archetype boasts a wide array of abilities and strategies. Some creatures possess incredible defensive capabilities, shielding your forces from harm and ensuring the safety of your allies. Others excel in offense, delivering devastating blows to your opponents or disrupting their strategies.</p>\r\n  <h2>Synergistic Playstyle</h2>\r\n  <p>One of the greatest strengths of Naturia is their ability to synergize with one another. By combining the powers of different Naturia creatures, you can create powerful combos that amplify their individual strengths and overwhelm your opponents with an unstoppable force.</p>\r\n  <h2>Environmental Interaction</h2>\r\n  <p>Naturia cards often interact with the environment in unique and intriguing ways. They can manipulate the terrain, summoning vines and roots to hinder your opponent\'s movements or create advantageous positions for your own forces. This environmental synergy adds an extra layer of strategy to your gameplay.</p>\r\n  <h2>Deck Building</h2>\r\n  <p>Building a Naturia deck requires careful consideration of the diverse abilities and playstyles available. Whether you choose to focus on defensive tactics, offensive onslaughts, or a balanced approach, your deck construction will determine the flow and strength of your strategies.</p>\r\n  <h2>Embrace the Power of Nature</h2>\r\n  <p>With Naturia, you have the opportunity to commune with nature\'s spirits and wield their incredible power. Unleash the forces of the earth, summon mighty creatures, and shape the battlefield to your advantage. Embrace the harmony and strength of Naturia, and embark on a journey where nature itself becomes your most powerful ally.</p>', '2023-05-10', 2),
(3, 'Legends Anthology: Academy and Synchro Festival Announcement', 'event', '<p>We are thrilled to announce the upcoming Legends Anthology event: Academy and Synchro Festival! Prepare yourself for an extraordinary gathering of dueling legends, where the worlds of academia and synchronized strategies collide in an epic celebration of skill, knowledge, and camaraderie.</p>\r\n  <h2>The Academy Experience</h2>\r\n  <p>Embark on a journey to the renowned Duelist Academy, a prestigious institution that has produced some of the greatest duelists in history. Immerse yourself in a world of learning, where seasoned veterans and aspiring duelists gather to share their wisdom, techniques, and tactics.</p>\r\n  <p>Engage in thrilling duels with fellow students and renowned professors, honing your skills and expanding your knowledge of the game. Unlock new strategies, discover hidden combos, and uncover the secrets of successful dueling. The Academy Experience is a must for those who seek to elevate their dueling prowess to new heights.</p>\r\n  <h2>The Synchro Festival</h2>\r\n  <p>Step into the grand arena and witness the mesmerizing spectacle of the Synchro Festival. This extraordinary event showcases the artistry and synchronization of dueling strategies as duelists masterfully combine their monsters to summon incredible Synchro monsters.</p>\r\n  <p>Watch in awe as dueling titans go head-to-head, showcasing their finest Synchro summoning techniques and unleashing a barrage of devastating effects. The Synchro Festival is a celebration of precision, timing, and strategic synergy, offering a mesmerizing display of dueling mastery.</p>\r\n  <h2>Participate and Compete</h2>\r\n  <p>Legends Anthology: Academy and Synchro Festival is not only a gathering of dueling enthusiasts but also an opportunity for you to participate and showcase your own skills. Engage in thrilling tournaments, duel against formidable opponents, and rise through the ranks to claim the title of the Festival Champion.</p>\r\n  <p>Experience the exhilaration of competitive dueling, forge new friendships, and create memories that will last a lifetime. Whether you are a seasoned duelist or just starting your journey, Legends Anthology: Academy and Synchro Festival offers an unforgettable experience for all.</p>\r\n  <h2>Save the Date</h2>\r\n  <p>Mark your calendars and save the date for Legends Anthology: Academy and Synchro Festival. Join us for an immersive celebration of dueling excellence, knowledge sharing, and the beauty of synchronized strategies. Prepare to be amazed, inspired, and enthralled by the legends of the game.</p>\r\n  <p>Stay tuned for more information, including event schedules, special guests, and registration details. We can\'t wait to welcome you to this remarkable dueling extravaganza!</p>', '2023-06-09', 3),
(4, 'The Ultimate Guide to Brewing Jank', 'guide', ' <p>Prepare to embrace the unconventional and explore the realm of jank decks. In this ultimate guide, we will delve into the art of brewing jank, where creativity, surprise, and unexpected strategies reign supreme.</p>\r\n  <h2>Unleash Your Imagination</h2>\r\n  <p>Jank decks are all about thinking outside the box and pushing the boundaries of conventional deck-building. Embrace your imagination and let it run wild as you come up with quirky themes, unusual combos, and unexpected synergies.</p>\r\n  <h2>Embrace the Unexpected</h2>\r\n  <p>Jank decks thrive on surprising your opponents with unexpected cards and strategies. Whether it\'s a seemingly useless common card that turns out to be a hidden gem or a synergy that catches your opponents off guard, embrace the element of surprise and revel in the joy of pulling off the unexpected.</p>\r\n  <h2>Explore Niche Strategies</h2>\r\n  <p>One of the joys of brewing jank is exploring niche strategies that are often overlooked. Dive into lesser-known archetypes, explore underutilized mechanics, or create your own unique playstyle. The jank world is your playground, so don\'t be afraid to venture into uncharted territory.</p>\r\n  <h2>Embrace the Flavor</h2>\r\n  <p>Jank decks are an opportunity to infuse your personal style and interests into your gameplay. Whether you\'re a fan of a particular fantasy realm, a specific pop culture reference, or simply enjoy a good pun, let your deck reflect your personality and make it truly your own.</p>\r\n  <h2>Find Hidden Synergies</h2>\r\n  <p>Jank decks often hide surprising synergies beneath their unorthodox exterior. Experiment with cards that seem unrelated at first glance and discover hidden connections that can create powerful and unpredictable interactions. The joy of jank is in uncovering these unexpected synergies.</p>\r\n  <h2>Don\'t Be Discouraged by Failure</h2>\r\n  <p>Remember, not every jank deck will be a resounding success. Embrace the process of trial and error, learn from your failures, and refine your jank creations. Sometimes, the most memorable and enjoyable moments come from the decks that didn\'t quite work as intended.</p>\r\n  <h2>Join the Jank Community</h2>\r\n  <p>Connect with fellow jank enthusiasts and share your ideas, experiences, and decklists. Engage in discussions, participate in jank-themed events, and celebrate the beauty of jank with a supportive community that appreciates the creativity and uniqueness of unconventional decks.</p>\r\n  <h2>Let Your Jank Shine</h2>\r\n  <p>Armed with the knowledge and inspiration from this ultimate guide, go forth and brew your jank masterpiece. Embrace the unexpected, challenge the meta, and create decks that defy expectations. Let your jank shine brightly and bring joy, surprise, and excitement to your gaming table.</p>', '2023-04-21', 3);

-- --------------------------------------------------------

--
-- Table structure for table `article_comment`
--

CREATE TABLE `article_comment` (
  `comment_id` int(11) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `date_created` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `card_id` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `category` varchar(7) NOT NULL,
  `type` varchar(60) DEFAULT NULL,
  `attribute` varchar(10) DEFAULT NULL,
  `lvl` int(2) DEFAULT NULL,
  `atk` int(6) DEFAULT NULL,
  `def` int(6) DEFAULT NULL,
  `description` varchar(3000) NOT NULL,
  `rarity` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_id`, `name`, `category`, `type`, `attribute`, `lvl`, `atk`, `def`, `description`, `rarity`) VALUES
('60c2b3a9a0e24f2d54a515d2', 'Atlantean Attack Squad', 'Monster', 'Sea Serpent', 'WATER', 3, 1400, 0, 'This card gains 800 ATK while you control a face-up Fish, Sea Serpent, or Aqua-Type monster other than this card.', 'N'),
('60c2b3a9a0e24f2d54a51639', 'Barkion\'s Bark', 'Spell', 'Normal', '', 0, 0, 0, 'Activate only if you control a face-up \"Naturia\" monster. Your opponent cannot activate Trap Cards this turn.', 'R'),
('60c2b3a9a0e24f2d54a516a1', 'Beat, Bladesman Fur Hire', 'Monster', 'Warrior', 'EARTH', 3, 1200, 500, 'During your Main Phase: You can Special Summon 1 monster \"Fur Hire\" from your hand, except \"Beat, Bladesman Fur Hire\". If a monster \"Fur Hire\" is Special Summoned to your field while you control this monster (except during the Damage Step): You can add 1 monster \"Fur Hire\" from your Deck to your hand, except \"Beat, Bladesman Fur Hire\". You can only use each effect of \"Beat, Bladesman Fur Hire\" once per turn.', 'SR'),
('60c2b3a9a0e24f2d54a51716', 'Blackeyes, the Plunder Patroll Seaguide', 'Monster', 'Fiend', 'WATER', 4, 1000, 1000, 'You can target 1 \"Plunder Patroll\" monster in your GY, except \"Blackeyes, the Plunder Patroll Seaguide\"; Special Summon this card from your hand, and if you do, add that monster to your hand, also you cannot Special Summon for the rest of this turn, except \"Plunder Patroll\" monsters. If this card is sent from the hand or Monster Zone to the GY: You can target 1 \"Plunder Patroll\" Monster Card in your Spell & Trap Zone; Special Summon it in Defense Position. You can only use each effect of \"Blackeyes, the Plunder Patroll Seaguide\" once per turn.', 'R'),
('60c2b3aaa0e24f2d54a517f0', 'Bravo, Fighter Fur Hire', 'Monster', 'Reptile', 'FIRE', 4, 1900, 200, 'During your Main Phase: You can Special Summon 1 monster \"Fur Hire\" from your hand, except \"Bravo, Fighter Fur Hire\". If a monster \"Fur Hire\" is Special Summoned to your field while you control this monster (except during the Damage Step): You can have all monsters \"Fur Hire\" currently on the field gain 500 ATK/DEF until the end of this turn. You can only use each effect of \"Bravo, Fighter Fur Hire\" once per turn.', 'N'),
('60c2b3aaa0e24f2d54a518c9', 'Cataclysmic Circumpolar Chilblainia', 'Monster', 'Fairy', 'WATER', 8, 2600, 200, 'If a face-up WATER monster(s) you control is destroyed by battle or an opponent\'s card effect: You can Special Summon this card from your hand, then you can send 1 random card from your opponent\'s hand to the GY. You can only use this effect of \"Cataclysmic Circumpolar Chilblainia\" once per turn.', 'R'),
('60c2b3aaa0e24f2d54a518ca', 'Cataclysmic Crusted Calcifida', 'Monster', 'Fairy', 'EARTH', 8, 2600, 200, 'If a face-up EARTH monster(s) you control is destroyed by battle or an opponent\'s card effect: You can Special Summon this card from your hand, then, you can send 1 monster from your Deck to the GY. You can only use this effect of \"Cataclysmic Crusted Calcifida\" once per turn.', 'R'),
('60c2b3aaa0e24f2d54a518cb', 'Cataclysmic Cryonic Coldo', 'Monster', 'Fairy', 'WIND', 8, 2600, 200, 'If a face-up WIND monster(s) you control is destroyed by battle or an opponent\'s card effect: You can Special Summon this card from your hand, then, you can place 1 Spell/Trap from the field on top of the Deck. You can only use this effect of \"Cataclysmic Cryonic Coldo\" once per turn.', 'R'),
('60c2b3aaa0e24f2d54a518cc', 'Cataclysmic Scorching Sunburner', 'Monster', 'Fairy', 'FIRE', 8, 2600, 200, 'If a face-up FIRE monster(s) you control is destroyed by battle or an opponent\'s card effect: You can Special Summon this card from your hand, then, you can inflict damage to your opponent equal to half the ATK of 1 of those destroyed FIRE monsters in your GY. You can only use this effect of \"Cataclysmic Scorching Sunburner\" once per turn.', 'R'),
('60c2b3aaa0e24f2d54a51ca7', 'Dash Warrior', 'Monster', 'Warrior', 'WIND', 3, 600, 1200, 'If this card attacks, it gains 1200 ATK during the Damage Step only.', 'N'),
('60c2b3aaa0e24f2d54a51d68', 'Different Dimension Deepsea Trench', 'Spell', 'Continuous', '', 0, 0, 0, 'When this card resolves: Banish 1 WATER monster from your hand, Graveyard, or face-up on your field. Then, when this face-up card on the field is destroyed: Special Summon that banished monster to your side of the field.', 'N'),
('60c2b3aaa0e24f2d54a51e0b', 'Donpa, Marksman Fur Hire', 'Monster', 'Beast', 'WIND', 2, 500, 1000, 'During your Main Phase: You can Special Summon 1 monster \"Fur Hire\" from your hand, except \"Donpa, Marksman Fur Hire\". If a monster \"Fur Hire\" is Special Summoned to your field while you control this monster (except during the Damage Step): You can target 1 face-up card on the field; destroy it. You can only use each effect of \"Donpa, Marksman Fur Hire\" once per turn.', 'N'),
('60c2b3aaa0e24f2d54a51e3e', 'Dovelgus, Generaider Boss of Iron', 'Monster', 'Machine', 'EARTH', 9, 1500, 2500, 'You can only control 1 \"Dovelgus, Generaider Boss of Iron\". (Quick Effect): You can Tribute any number of \"Generaider\" monsters and/or Machine monsters; Special Summon, from your hand, in Defense Position, exactly that many \"Generaider\" monsters and/or Machine monsters, all with different names from each other and from the Tributed monsters. You can only use this effect of \"Dovelgus, Generaider Boss of Iron\" once per turn.', 'R'),
('60c2b3aaa0e24f2d54a52086', 'Exterio\'s Fang', 'Trap', 'Counter', '', 0, 0, 0, 'Activate only if you control a face-up \"Naturia\" monster and have at least 1 card in your hand. Negate the activation of an opponent\'s Spell/Trap Card and destroy it. Then, send 1 card from your hand to the Graveyard.', 'N'),
('60c2b3aaa0e24f2d54a521f2', 'Forgotten Temple of the Deep', 'Trap', 'Continuous', '', 0, 0, 0, 'While this card is on the field, this card\'s name becomes \"Umi\". Once per turn: You can target 1 Level 4 or lower Fish, Sea Serpent or Aqua-Type monster you control; banish that target. During your End Phase: Special Summon the monster(s) banished by this effect.', 'N'),
('60c2b3aaa0e24f2d54a5223d', 'Frodi, Generaider Boss of Swords', 'Monster', 'Warrior', 'WIND', 9, 2500, 2000, 'You can only control 1 \"Frodi, Generaider Boss of Swords\". (Quick Effect): You can Tribute any number of \"Generaider\" monsters and/or Warrior monsters, then target that many monsters on the field; destroy them, then your opponent can draw cards equal to the number of monsters destroyed on their field. You can only use this effect of \"Frodi, Generaider Boss of Swords\" once per turn.', 'R'),
('60c2b3aaa0e24f2d54a52338', 'Generaider Boss Bite', 'Trap', 'Normal', '', 0, 0, 0, 'Tribute any number of \"Generaider\" monsters, then target 1 face-up Xyz Monster you control; attach exactly that many \"Generaider\" monsters from your hand, field, and/or GY to it, except the monsters Tributed to activate this effect. You can only activate 1 \"Generaider Boss Bite\" per turn.', 'N'),
('60c2b3aaa0e24f2d54a52339', 'Generaider Boss Fight', 'Trap', 'Normal', '', 0, 0, 0, 'Activate 1 \"Generaider\" Field Spell directly from your Deck or GY, then your opponent draws 1 card. You can only activate 1 \"Generaider Boss Fight\" per turn.', 'SR'),
('60c2b3aaa0e24f2d54a5233a', 'Generaider Boss Loot', 'Spell', 'Continuous', '', 0, 0, 0, 'While you control a Token, your opponent\'s monsters cannot target \"Generaider\" Effect Monsters for attacks. If a \"Generaider\" Effect Monster is destroyed by battle: Your opponent draws 1 card. You can only use this effect of \"Generaider Boss Loot\" once per turn.', 'N'),
('60c2b3aaa0e24f2d54a5233b', 'Generaider Boss Quest', 'Spell', 'Normal', '', 0, 0, 0, 'Reveal 1 \"Generaider\" monster in your hand, and if you do, add up to 2 \"Generaider\" Spells/Traps with different names from each other from your Deck to your hand, except \"Generaider Boss Quest\". Then place the revealed card on the bottom of your Deck. You can only activate 1 \"Generaider Boss Quest\" per turn.', 'N'),
('60c2b3aaa0e24f2d54a5233c', 'Generaider Boss Room', 'Trap', 'Continuous', '', 0, 0, 0, 'When your opponent activates a card or effect in response to the activation of your \"Generaider\" card or effect: You can discard 1 card; your opponent\'s activated effect becomes \"each player draws 1 card\". You can only use this effect of \"Generaider Boss Room\" once per turn.', 'N'),
('60c2b3aaa0e24f2d54a5233d', 'Generaider Boss Stage', 'Spell', 'Field', '', 0, 0, 0, 'Once per turn, if a card(s) is added from the Main Deck to your opponent\'s hand (except during the Damage Step): You can Special Summon 1 \"Generaider\" monster from your Deck in Defense Position. If you Special Summon a \"Generaider\" monster(s) during your opponent\'s turn (except during the Damage Step): You can Special Summon as many \"Generaider Tokens\" (Fairy/LIGHT/Level 4/ATK 1500/DEF 1500) as possible in Attack Position, but destroy them during the End Phase (even if this card leaves the field). You can only use this effect of \"Generaider Boss Stage\" once per turn.', 'R'),
('60c2b3aba0e24f2d54a525a2', 'Harr, Generaider Boss of Storms', 'Monster', 'Spellcaster', 'DARK', 9, 3000, 3000, 'You can only control 1 \"Harr, Generaider Boss of Storms\". Once per turn, if your opponent adds a card(s) from the Deck to their hand, except during the Draw Phase (Quick Effect): You can make your opponent send 1 monster from their hand or field to the GY (their choice). When a card or effect is activated (Quick Effect): You can Tribute 2 \"Generaider\" and/or Spellcaster monsters; negate the activation, and if you do, destroy that card. You can only use this effect of \"Harr, Generaider Boss of Storms\" once per turn.', 'SR'),
('60c2b3aba0e24f2d54a525cc', 'Hela, Generaider Boss of Doom', 'Monster', 'Zombie', 'DARK', 9, 800, 2800, 'You can only control 1 \"Hela, Generaider Boss of Doom\". (Quick Effect): You can Tribute 1 \"Generaider\" monster or 1 Zombie monster, then target 1 \"Generaider\" monster or 1 Zombie monster in your GY, with a different name than the Tributed monster had on the field; Special Summon that monster in Defense Position. You can only use this effect of \"Hela, Generaider Boss of Doom\" once per turn.', 'SR'),
('60c2b3aba0e24f2d54a525d2', 'Helmer, Helmsman Fur Hire', 'Monster', 'Aqua', 'WATER', 3, 0, 2000, 'During your Main Phase: You can Special Summon 1 monster \"Fur Hire\" from your hand, except \"Helmer, Helmsman Fur Hire\". If a monster \"Fur Hire\" is Special Summoned to your field while you control this monster (except during the Damage Step): You can discard 1 card \"Fur Hire\"; draw 1 card. You can only use each effect of \"Helmer, Helmsman Fur Hire\" once per turn.', 'N'),
('60c2b3aba0e24f2d54a527cf', 'Jormungandr, Generaider Boss of Eternity', 'Monster', 'Reptile', 'EARTH', 9, 0, 0, '2+ Level 9 monsters\\r\\nYou can only control 1 \"Jormungandr, Generaider Boss of Eternity\". This card\'s original ATK/DEF become 1000 x its number of materials. (Quick Effect): You can detach 1 material from this card; each player draws 1 card, then each player that drew attaches 1 card from their hand or field to this card. You can only use this effect of \"Jormungandr, Generaider Boss of Eternity\" once per turn.', 'UR'),
('60c2b3aba0e24f2d54a527e5', 'Junk Changer', 'Monster', 'Warrior', 'EARTH', 3, 1500, 900, 'You can only use the following effect of \"Junk Changer\" once per turn. If this card is Normal or Special Summoned: You can target 1 \"Junk\" monster on the field, then activate 1 of these effects;\\n? Increase its Level by 1.\\n? Reduce its Level by 1.', 'N'),
('60c2b3aba0e24f2d54a527e9', 'Junk Defender', 'Monster', 'Warrior', 'EARTH', 3, 500, 1800, 'When an opponent\'s monster declares a direct attack: You can Special Summon this card from your hand. Once per turn, during either player\'s turn: You can have this card gain 300 DEF until the end of this turn.', 'N'),
('60c2b3aba0e24f2d54a528fd', 'Landoise\'s Luminous Moss', 'Spell', 'Normal', '', 0, 0, 0, 'Activate only if you control a face-up \"Naturia\" monster. The opponent\'s Effect Monsters cannot activate their effects this turn.', 'R'),
('60c2b3aba0e24f2d54a52957', 'Lemuria, the Forgotten City', 'Spell', 'Field', '', 0, 0, 0, 'This card\'s name is treated as \"Umi\". All WATER monsters gain 200 ATK and DEF. Once per turn, during your Main Phase: You can have all WATER monsters you currently control gain Levels equal to the number of WATER monsters you currently control, until the End Phase.', 'N'),
('60c2b3aba0e24f2d54a5295c', 'Leodrake\'s Mane', 'Spell', 'Normal', '', 0, 0, 0, 'Select 1 face-up \"Naturia\" monster you control. Its ATK becomes 3000, and its effects are negated, until the End Phase.', 'R'),
('60c2b3aba0e24f2d54a52991', 'Lightning Warrior', 'Monster', 'Warrior', 'LIGHT', 7, 2400, 1200, '1 Tuner + 1 or more non-Tuner monsters\\nIf this card destroys an opponent\'s monster by battle and sends it to the Graveyard: Inflict 300 damage to your opponent for each card in your opponent\'s hand.', 'R'),
('60c2b3aba0e24f2d54a529a4', 'Limit Overdrive', 'Spell', 'Quick-Play', '', 0, 0, 0, 'Return 1 Tuner Synchro Monster and 1 non-Tuner Synchro Monster you control to the Extra Deck; Special Summon 1 Synchro Monster from your Extra Deck that has a Level equal to the combined Levels the 2 monsters had on the field, ignoring its Summoning conditions. You can only activate 1 \"Limit Overdrive\" per turn.', 'N'),
('60c2b3aba0e24f2d54a529e2', 'Loptr, Shadow of the Generaider Bosses', 'Monster', 'Fairy', 'FIRE', 4, 1500, 1500, 'You can only control 1 \"Loptr, Shadow of the Generaider Bosses\". All \"Generaider\" monsters you control gain 1000 ATK/DEF during your opponent\'s turn only. During the Main Phase (Quick Effect): You can Tribute 1 \"Generaider\" monster; Special Summon 1 Level 9 \"Generaider\" monster with a different name from your Deck. You can only use this effect of \"Loptr, Shadow of the Generaider Bosses\" once per turn.', 'SR'),
('60c2b3aba0e24f2d54a52b39', 'Mardel, Generaider Boss of Light', 'Monster', 'Plant', 'LIGHT', 9, 2400, 2400, 'You can only control 1 \"Mardel, Generaider Boss of Light\". If this card is Normal or Special Summoned: You can add 1 \"Generaider\" card or 1 Plant monster from your Deck to your hand, except \"Mardel, Generaider Boss of Light\". You can only use this effect of \"Mardel, Generaider Boss of Light\" once per turn.', 'UR'),
('60c2b3aba0e24f2d54a52ba4', 'Mayhem Fur Hire', 'Spell', 'Quick-Play', '', 0, 0, 0, 'Target 1 monster \"Fur Hire\" in your GY; Special Summon it in Defense Position. You can only activate 1 \"Mayhem Fur Hire\" per turn.', 'R'),
('60c2b3aba0e24f2d54a52caa', 'Miracle Synchro Fusion', 'Spell', 'Normal', '', 0, 0, 0, 'Remove from play, from your side of the field or your Graveyard, the Fusion Material Monsters listed on a Fusion Monster Card that lists a Synchro Monster as a Fusion Material Monster, and Special Summon that Fusion Monster from the Extra Deck. (This Special Summon is treated as a Fusion Summon.) If this Set card is destroyed by your opponent\'s card effect and sent to the Graveyard, draw 1 card.', 'R'),
('60c2b3aba0e24f2d54a52d95', 'Naglfar, Generaider Boss of Fire', 'Monster', 'Beast-Warrior', 'FIRE', 9, 3100, 200, 'You can only control 1 \"Naglfar, Generaider Boss of Fire\". If a card(s) you control would be destroyed by battle or card effect, you can destroy 1 \"Generaider\" monster or 1 Beast-Warrior monster you control instead. You can only use this effect of \"Naglfar, Generaider Boss of Fire\" once per turn.', 'N'),
('60c2b3aba0e24f2d54a52d9c', 'Naturia Antjaw', 'Monster', 'Insect', 'EARTH', 2, 400, 200, 'When your opponent Special Summons a monster(s), you can Special Summon 1 Level 3 or lower \"Naturia\" monster from your Deck.', 'N'),
('60c2b3aba0e24f2d54a52d9d', 'Naturia Bamboo Shoot', 'Monster', 'Plant', 'EARTH', 5, 2000, 2000, 'If this card is Tribute Summoned by Tributing a \"Naturia\" monster, while this card remains face-up on the field, your opponent cannot activate Spell or Trap Cards.', 'SR'),
('60c2b3aba0e24f2d54a52d9e', 'Naturia Barkion', 'Monster', 'Dragon', 'EARTH', 6, 2500, 1800, '1 EARTH Tuner + 1 or more non-Tuner EARTH monsters \\nDuring either player\'s turn, when a Trap Card is activated: You can banish 2 cards from your Graveyard; negate the activation, and if you do, destroy it. This card must be face-up on the field to activate and to resolve this effect.', 'UR'),
('60c2b3aba0e24f2d54a52d9f', 'Naturia Beans', 'Monster', 'Plant', 'EARTH', 2, 100, 1200, 'Once per turn, this card cannot be destroyed by battle. When this face-up card is selected as an attack target, inflict 500 damage to your opponent.', 'N'),
('60c2b3aba0e24f2d54a52da0', 'Naturia Beast', 'Monster', 'Beast', 'EARTH', 5, 2200, 1700, '1 EARTH Tuner + 1+ non-Tuner EARTH monsters \\r\\nWhen a Spell Card is activated (Quick Effect): You can send the top 2 cards of your Deck to the GY; negate the activation, and if you do, destroy it. This card must be face-up on the field to activate and to resolve this effect.', 'UR'),
('60c2b3aba0e24f2d54a52da1', 'Naturia Beetle', 'Monster', 'Insect', 'EARTH', 4, 400, 1800, 'Switch the original ATK and DEF of this card each time a Spell Card is activated.', 'N'),
('60c2b3aba0e24f2d54a52da2', 'Naturia Butterfly', 'Monster', 'Insect', 'EARTH', 3, 500, 1200, 'Once per turn, when your opponent\'s monster declares an attack, you can send the top card of your Deck to the Graveyard and negate that attack.', 'R'),
('60c2b3aba0e24f2d54a52da3', 'Naturia Cherries', 'Monster', 'Plant', 'EARTH', 1, 200, 200, 'If this card is sent from the field to the Graveyard by your opponent\'s card (including by battle, card effect, or by being destroyed), you can Special Summon up to 2 \"Naturia Cherries\" from your Deck in face-down Defense Position.', 'R'),
('60c2b3aba0e24f2d54a52da4', 'Naturia Cliff', 'Monster', 'Rock', 'EARTH', 4, 1500, 1000, 'When this card is sent from the field to the Graveyard, you can Special Summon 1 Level 4 or lower \"Naturia\" monster from your Deck in face-up Attack Position.', 'SR'),
('60c2b3aba0e24f2d54a52da5', 'Naturia Cosmobeet', 'Monster', 'Plant', 'EARTH', 2, 1000, 700, 'When your opponent Normal Summons or Sets a monster, you can Special Summon this card from your hand.', 'R'),
('60c2b3aba0e24f2d54a52da6', 'Naturia Dragonfly', 'Monster', 'Insect', 'EARTH', 4, 1200, 400, 'This card cannot be destroyed by battle with a monster that has 2000 or more ATK. This card gains 200 ATK for each \"Naturia\" monster in your Graveyard.', 'N'),
('60c2b3aba0e24f2d54a52da7', 'Naturia Eggplant', 'Monster', 'Plant', 'EARTH', 2, 1000, 700, 'When this card is sent from the field to the Graveyard, you can select 1 \"Naturia\" monster in your Graveyard, except \"Naturia Eggplant\", and add it to your hand.', 'R'),
('60c2b3aba0e24f2d54a52da8', 'Naturia Exterio', 'Monster', 'Beast', 'EARTH', 10, 2800, 2400, '\"Naturia Beast\" + \"Naturia Barkion\"\\nA Fusion Summon of this card can only be conducted with the above Fusion Material Monsters. While this card is face-up on the field, you can negate the activation of a Spell/Trap Card, and destroy it, by removing from play 1 card from your Graveyard, then sending the top card of your Deck to the Graveyard.', 'SR'),
('60c2b3aba0e24f2d54a52da9', 'Naturia Forest', 'Spell', 'Field', '', 0, 0, 0, 'If you negate the activation of a card your opponent controls, you can add 1 Level 3 or lower \"Naturia\" monster from your Deck to your hand.', 'R'),
('60c2b3aba0e24f2d54a52daa', 'Naturia Fruitfly', 'Monster', 'Insect', 'EARTH', 3, 800, 1500, 'All face-up monsters your opponent controls lose 300 ATK and DEF for each face-up \"Naturia\" monster you control. Once per turn, you can select 1 face-up monster your opponent controls with 0 DEF, and take control of it until the End Phase.', 'N'),
('60c2b3aba0e24f2d54a52dab', 'Naturia Gaiastrio', 'Monster', 'Rock', 'EARTH', 10, 3200, 2100, '2 EARTH Synchro Monsters\\nDuring either player\'s turn, when a card or effect is activated that targets exactly 1 card on the field (and no other cards): You can send 1 card from your hand to the Graveyard; negate the activation, and if you do, destroy that card.', 'SR'),
('60c2b3aba0e24f2d54a52dad', 'Naturia Horneedle', 'Monster', 'Insect', 'EARTH', 4, 1800, 100, 'When your opponent Special Summons a monster, you can Tribute 1 face-up \"Naturia\" monster you control, except this card, to destroy the Special Summoned monster.', 'R'),
('60c2b3aba0e24f2d54a52dae', 'Naturia Hydrangea', 'Monster', 'Plant', 'EARTH', 5, 1900, 2000, 'If the effect of a \"Naturia\" monster you control was activated during this turn, you can Special Summon this card from your hand.', 'N'),
('60c2b3aba0e24f2d54a52daf', 'Naturia Ladybug', 'Monster', 'Insect', 'EARTH', 1, 100, 100, 'When you Synchro Summon a \"Naturia\" Synchro Monster, you can Special Summon this card from your Graveyard. During your Main Phase, you can Tribute this card to select 1 face-up \"Naturia\" monster you control. It gains 1000 ATK until the End Phase.', 'N'),
('60c2b3aba0e24f2d54a52db0', 'Naturia Landoise', 'Monster', 'Rock', 'EARTH', 7, 2350, 1600, '1 EARTH Tuner + 1 or more non-Tuner EARTH monsters\\nWhile this card is face-up on the field, you can send 1 Spell Card from your hand to the Graveyard to negate the activation of an Effect Monster\'s effect and destroy it.', 'UR'),
('60c2b3aba0e24f2d54a52db1', 'Naturia Leodrake', 'Monster', 'Beast', 'EARTH', 9, 3000, 1800, '1 EARTH Tuner + 1 or more non-Tuner EARTH monsters', 'R'),
('60c2b3aba0e24f2d54a52db2', 'Naturia Mantis', 'Monster', 'Insect', 'EARTH', 4, 1700, 1500, 'When your opponent Normal Summons a monster, you can send 1 \"Naturia\" monster from your hand to the Graveyard to destroy that monster.', 'R'),
('60c2b3aba0e24f2d54a52db3', 'Naturia Marron', 'Monster', 'Plant', 'EARTH', 3, 1200, 700, 'When this card is Normal Summoned: You can send 1 \"Naturia\" monster from your Deck to the Graveyard. Once per turn: You can target 2 \"Naturia\" monsters in your Graveyard; shuffle both those targets into the Deck, then draw 1 card.', 'N'),
('60c2b3aba0e24f2d54a52db4', 'Naturia Mosquito', 'Monster', 'Insect', 'EARTH', 1, 200, 300, 'While you control another face-up \"Naturia\" monster(s), your opponent cannot select this card as an attack target. Your opponent takes any Battle Damage you would have taken from battles involving a face-up \"Naturia\" monster you control, except this card.', 'N'),
('60c2b3aba0e24f2d54a52db5', 'Naturia Pineapple', 'Monster', 'Plant', 'EARTH', 2, 100, 100, 'All face-up monsters you control are treated as Plant-Type. During your Standby Phase, if you do not control a face-up \"Naturia Pineapple\", and have no monsters in your Graveyard except Plant or Beast-Type: You can Special Summon this card from your Graveyard. You must not control any Spell or Trap Cards to activate and resolve this effect.', 'N'),
('60c2b3aba0e24f2d54a52db6', 'Naturia Pumpkin', 'Monster', 'Plant', 'EARTH', 4, 1400, 800, 'When this card is Normal Summoned, if your opponent controls a monster, you can Special Summon 1 \"Naturia\" monster from your hand.', 'N'),
('60c2b3aba0e24f2d54a52db7', 'Naturia Ragweed', 'Monster', 'Plant', 'EARTH', 3, 1200, 2000, 'When your opponent draws a card(s), except during the Draw Phase, you can send this face-up card you control to the Graveyard to draw 2 cards.', 'N'),
('60c2b3aba0e24f2d54a52db8', 'Naturia Rock', 'Monster', 'Rock', 'EARTH', 3, 1200, 1200, 'When a Trap Card is activated, you can send the top card of your Deck to the Graveyard to Special Summon this card from your hand.', 'R'),
('60c2b3aba0e24f2d54a52db9', 'Naturia Rosewhip', 'Monster', 'Plant', 'EARTH', 3, 400, 1700, 'Your opponent can only activate 1 Spell/Trap Card per turn.', 'SR'),
('60c2b3aba0e24f2d54a52dba', 'Naturia Sacred Tree', 'Trap', 'Continuous', '', 0, 0, 0, 'If this card is sent to the Graveyard: Add 1 \"Naturia\" card from your Deck to your hand, except \"Naturia Sacred Tree\". You can only use 1 of the following effects of \"Naturia Sacred Tree\" per turn, and only once that turn.\\n? You can Tribute 1 EARTH Insect-Type monster; Special Summon 1 Level 4 or lower EARTH Plant-Type monster from your Deck.\\n? You can Tribute 1 EARTH Plant-Type monster; Special Summon 1 Level 4 or lower EARTH Insect-Type monster from your Deck.', 'SR'),
('60c2b3aba0e24f2d54a52dbb', 'Naturia Spiderfang', 'Monster', 'Insect', 'EARTH', 4, 2100, 400, 'This card cannot declare an attack unless your opponent activated a Spell, Trap, Spell/Trap effect, or Monster effect this turn.', 'N'),
('60c2b3aba0e24f2d54a52dbc', 'Naturia Stag Beetle', 'Monster', 'Insect', 'EARTH', 6, 2200, 1500, 'Once per turn, during the Battle Step or Damage Step of this card\'s attack, when your opponent activates a card or effect, you can select 1 \"Naturia\" monster in your Graveyard. Special Summon that monster from the Graveyard.', 'N'),
('60c2b3aba0e24f2d54a52dbd', 'Naturia Stinkbug', 'Monster', 'Insect', 'EARTH', 3, 200, 500, 'When a face-up \"Naturia\" monster you control is selected as an attack target, you can send this face-up card you control to the Graveyard to negate that attack and end the Battle Phase.', 'N'),
('60c2b3aba0e24f2d54a52dbe', 'Naturia Strawberry', 'Monster', 'Plant', 'EARTH', 4, 1600, 1200, 'Once per turn, when your opponent Normal or Special Summons a monster(s): Target 1 of those monsters; this card gains 100 ATK x the Level of that monster, until the End Phase.', 'N'),
('60c2b3aba0e24f2d54a52dbf', 'Naturia Sunflower', 'Monster', 'Plant', 'EARTH', 2, 500, 0, 'When your opponent\'s monster effect is activated (Quick Effect): You can Tribute 1 \"Naturia\" monster and this card; negate that activation, and if you do, destroy that card.', 'N'),
('60c2b3aba0e24f2d54a52dc2', 'Naturia White Oak', 'Monster', 'Plant', 'EARTH', 4, 1800, 1400, 'When this card is targeted by an opponent\'s card effect, you can send this face-up card you control to the Graveyard to Special Summon 2 Level 4 or lower \"Naturia\" monsters from your Deck. They cannot declare an attack, and are destroyed during your End Phase.', 'R'),
('60c2b3aba0e24f2d54a52dce', 'Necroid Synchro', 'Spell', 'Normal', '', 0, 0, 0, 'Banish 1 Tuner and up to 2 non-Tuner monsters from your Graveyard, and if you do, Special Summon 1 \"Stardust\" Synchro Monster from your Extra Deck whose Level equals the total Levels of those banished monsters, but it has its effects negated. (This Special Summon is treated as a Synchro Summon.)', 'N'),
('60c2b3aba0e24f2d54a52e1f', 'Nidhogg, Generaider Boss of Ice', 'Monster', 'Wyrm', 'WATER', 9, 2100, 2600, 'You can only control 1 \"Nidhogg, Generaider Boss of Ice\". When your opponent would Special Summon a monster(s) (Quick Effect): You can Tribute 1 \"Generaider\" monster or 1 Wyrm monster; negate the Summon, and if you do, destroy that monster(s). You can only use this effect of \"Nidhogg, Generaider Boss of Ice\" once per turn.', 'N'),
('60c2b3aca0e24f2d54a53023', 'Parthian Shot', 'Trap', 'Counter', '', 0, 0, 0, 'At the end of the Battle Phase: It becomes the End Phase of this turn.', 'N'),
('60c2b3aca0e24f2d54a53121', 'Piwraithe the Ghost Pirate', 'Monster', 'Aqua', 'WATER', 4, 1500, 500, 'If a face-up WATER monster(s) you control, except \"Piwraithe the Ghost Pirate\", is destroyed by battle or card effect, while this card is in your GY: You can Special Summon this card (but banish it when it leaves the field), and if you do, it gains 100 ATK for each WATER monster in your GY, until the end of the next turn. You can only use this effect of \"Piwraithe the Ghost Pirate\" once per turn.', 'N'),
('60c2b3aca0e24f2d54a5312f', 'Plunder Patroll Booty', 'Trap', 'Continuous', '', 0, 0, 0, 'You can declare 1 Attribute, then target 1 face-up monster your opponent controls; it becomes that Attribute until the end of this turn (even if this card leaves the field), then you can take 1 \"Plunder Patroll\" monster from your GY, and either shuffle it into the Deck or Special Summon it. You can only use this effect of \"Plunder Patroll Booty\" once per turn. Once per turn, during the End Phase, if you control no \"Plunder Patroll\" monsters: Send this card to the GY.', 'N'),
('60c2b3aca0e24f2d54a53130', 'Plunder Patroll Parrrty', 'Trap', 'Normal', '', 0, 0, 0, 'If you control a \"Plunder Patroll\" monster: Draw cards equal to the number of Equip Cards you control +1, then shuffle cards from your hand into the Deck equal to the number of Equip Cards you control. You can only use this effect of \"Plunder Patroll Parrrty\" once per turn. If you Special Summon a \"Plunder Patroll\" monster(s) from the Extra Deck, while this card is in your GY: You can equip this card to that Special Summoned monster as an Equip Card with this effect.\\r\\n? The equipped monster gains 500 ATK.\\r\\nYou can only use this effect of \"Plunder Patroll Parrrty\" once per Duel.', 'N'),
('60c2b3aca0e24f2d54a53131', 'Plunder Patroll Shipshape Ships Shipping', 'Spell', 'Normal', '', 0, 0, 0, 'Fusion Summon 1 Fiend Fusion Monster from your Extra Deck, using monsters from your hand or field as Fusion Material. You can banish this card from your GY, then target 1 \"Plunder Patroll\" monster you control; equip 1 \"Emblem of the Plunder Patroll\", or 1 \"Plunder Patroll\" monster, from your Deck to that target. You can only use this effect of \"Plunder Patroll Shipshape Ships Shipping\" once per turn.', 'N'),
('60c2b3aca0e24f2d54a53134', 'Plunder Patrollship Lys', 'Monster', 'Fiend', 'LIGHT', 8, 2000, 2000, '2 \"Plunder Patroll\" monsters\\r\\nDuring the Main Phase (Quick Effect): You can Special Summon 1 \"Plunder Patroll\" Monster Card from your hand or face-up Spell & Trap Zone. When your opponent activates a monster effect (Quick Effect): You can discard 1 \"Plunder Patroll\" card; negate the activation, and if you do, destroy it, then if this card is equipped with a \"Plunder Patroll\" card, you can add 1 \"Plunder Patroll\" card from your Deck to your hand. You can only use each effect of \"Plunder Patrollship Lys\" once per turn.', 'SR'),
('60c2b3aca0e24f2d54a531ac', 'Pride of the Plunder Patroll', 'Trap', 'Continuous', '', 0, 0, 0, 'If your \"Plunder Patroll\" monster destroys an opponent\'s monster by battle: Draw 1 card. If you control a \"Plunder Patroll\" monster: You can send this face-up card from your field to the GY, then activate 1 of these effects;\\r\\n? Your opponent draws 1 card, then you look at their hand and send 1 monster from it to the GY.\\r\\n? Look at your opponent\'s Extra Deck and send 1 monster from it to the GY.\\r\\nYou can only use each effect of \"Pride of the Plunder Patroll\" once per turn.', 'N'),
('60c2b3aca0e24f2d54a532ef', 'Recon, Scout Fur Hire', 'Monster', 'Beast', 'WIND', 2, 1000, 500, 'During your Main Phase: You can Special Summon 1 monster \"Fur Hire\" from your hand, except \"Recon, Scout Fur Hire\". If a monster \"Fur Hire\" is Special Summoned to your field while you control this monster (except during the Damage Step): You can target 1 Set card on the field; destroy it. You can only use each effect of \"Recon, Scout Fur Hire\" once per turn.', 'N'),
('60c2b3aca0e24f2d54a53332', 'Redbeard, the Plunder Patroll Matey', 'Monster', 'Fiend', 'WATER', 4, 1000, 1000, 'During your opponent\'s turn (Quick Effect): You can Special Summon 1 \"Plunder Patroll\" monster from your Extra Deck with the same Attribute as a monster your opponent controls or is in their GY, and if you do, equip this card you control to it. If this card is sent from the hand or Monster Zone to the GY: You can target 1 \"Plunder Patroll\" monster you control, except \"Redbeard, the Plunder Patroll Matey\"; equip this card to it. You can only use each effect of \"Redbeard, the Plunder Patroll Matey\" once per turn.', 'R'),
('60c2b3aca0e24f2d54a53410', 'Rose Girl', 'Monster', 'Plant', 'EARTH', 3, 800, 600, 'If a face-up Plant monster(s) you control is sent to the GY (except during the Damage Step): You can Special Summon this card from your hand. If a Plant monster is on the field and this card is in your GY: You can add this card to your hand. You can only use 1 \"Rose Girl\" effect per turn, and only once that turn.', 'N'),
('60c2b3aca0e24f2d54a534d0', 'Satellite Synchron', 'Monster', 'Machine', 'DARK', 2, 700, 100, 'If a monster(s) is Special Summoned from your GY (except during the Damage Step): You can Special Summon this card from your hand. If you have a Synchro Monster with \"Warrior\", \"Synchron\", or \"Stardust\" in its original name on your field or GY: You can make this card\'s Level become 4 until the end of this turn. You can only use each effect of \"Satellite Synchron\" once per turn.', 'SR'),
('60c2b3aca0e24f2d54a53512', 'Sea Stealth Attack', 'Trap', 'Continuous', '', 0, 0, 0, 'When this card is activated: You can activate 1 \"Umi\" from your hand or GY. While \"Umi\" is on the field, this face-up card gains these effects.\\r\\n? Once per turn: You can banish 1 WATER monster you control until the End Phase; this turn, face-up Spells/Traps you control cannot be destroyed by your opponent\'s card effects (even if this card leaves the field).\\r\\n? At the start of the Damage Step, if your WATER monster whose original Level is 5 or higher battles an opponent\'s monster: Destroy that opponent\'s monster.', 'N'),
('60c2b3aca0e24f2d54a536ab', 'Sonic Warrior', 'Monster', 'Warrior', 'WIND', 2, 1000, 0, 'If this card is sent to the Graveyard: All Level 2 or lower monsters you currently control gain 500 ATK.', 'N'),
('60c2b3aca0e24f2d54a537a0', 'Stardust Chronicle Spark Dragon', 'Monster', 'Dragon', 'LIGHT', 10, 3000, 2500, '1 Tuner Synchro Monster + 1+ non-Tuner Synchro Monsters\\nMust be Synchro Summoned. Once per turn (Quick Effect): You can banish 1 Synchro Monster from your GY; this card is unaffected by other cards\' effects for the rest of this turn. If this card in its owner\'s possession is destroyed by an opponent\'s card (by battle or card effect): You can target 1 of your banished Dragon Synchro Monsters; Special Summon it.', 'R'),
('60c2b3aca0e24f2d54a537ae', 'Stardust Warrior', 'Monster', 'Warrior', 'WIND', 10, 3000, 2500, '1 Tuner Synchro Monster + 1 or more non-Tuner Synchro Monsters\\nDuring either player\'s turn, if your opponent would Special Summon a monster(s): You can Tribute this card; negate the Summon, and if you do, destroy that monster(s). During the End Phase, if this effect was activated this turn (and was not negated): You can Special Summon this card from your Graveyard. If this card is destroyed by battle, or if this face-up card you control leaves the field because of an opponent\'s card effect: You can Special Summon 1 Level 8 or lower \"Warrior\" Synchro Monster from your Extra Deck. (This Special Summon is treated as a Synchro Summon.)', 'SR'),
('60c2b3aca0e24f2d54a5381d', 'Subterror Behemoth Burrowing', 'Trap', 'Normal', '', 0, 0, 0, 'You can banish 1 \"Subterror\" monster from your Graveyard; for the rest of this turn, face-down monsters you control cannot be destroyed by card effects, and your opponent cannot target them with card effects. If this card on the field is destroyed by a card effect: You can add 1 \"Subterror\" monster from your Deck to your hand. You can banish this card from your Graveyard, then target 1 \"Subterror\" monster you control; change it to face-down Defense Position.', 'N'),
('60c2b3aca0e24f2d54a5381e', 'Subterror Behemoth Dragossuary', 'Monster', 'Zombie', 'EARTH', 6, 2400, 1600, 'FLIP: You can activate this effect; this turn, \"Subterror\" cards you control cannot be destroyed by your opponent\'s card effects. You can only use this effect of \"Subterror Behemoth Dragossuary\" once per turn.\\r\\nWhen a face-up monster you control is flipped face-down, if you control no face-up monsters: You can Special Summon this card from your hand in Defense Position. Once per turn: You can change this card to face-down Defense Position.', 'N'),
('60c2b3aca0e24f2d54a5381f', 'Subterror Behemoth Fiendess', 'Monster', 'Wyrm', 'EARTH', 0, 2000, 0, '2 Flip monsters\\r\\nGains ATK equal to the combined original Levels of the \"Subterror\" monsters used for its Link Summon x 100. During your Main Phase: You can send 1 Flip monster from your Deck to the GY, and if you do, Special Summon 1 monster from your hand in face-down Defense Position to your zone this card points to. You can only use this effect of \"Subterror Behemoth Fiendess\" once per turn. Once per turn, if a monster this card points to is flipped face-up: Add 1 Flip monster from your Deck or GY to your hand.', 'UR'),
('60c2b3aca0e24f2d54a53820', 'Subterror Behemoth Phospheroglacier', 'Monster', 'Aqua', 'EARTH', 8, 2600, 2500, 'FLIP: You can send 1 card from your Deck to the Graveyard. You can only use this effect of \"Subterror Behemoth Phospheroglacier\" once per turn.\\r\\nWhen a face-up monster you control is flipped face-down, if you control no face-up monsters: You can Special Summon this card from your hand in Defense Position. Once per turn: You can change this card to face-down Defense Position.', 'N'),
('60c2b3aca0e24f2d54a53821', 'Subterror Behemoth Speleogeist', 'Monster', 'Fiend', 'EARTH', 11, 3000, 1400, 'FLIP: You can target 1 monster on the field; change it to face-up Attack Position if it is in Defense Position, also change its ATK to 0. You can only use this effect of \"Subterror Behemoth Speleogeist\" once per turn.\\r\\nWhen a face-up monster you control is flipped face-down, if you control no face-up monsters: You can Special Summon this card from your hand in Defense Position. Once per turn: You can change this card to face-down Defense Position.', 'R'),
('60c2b3aca0e24f2d54a53822', 'Subterror Behemoth Stalagmo', 'Monster', 'Rock', 'EARTH', 10, 2800, 2100, 'FLIP: You can discard 1 \"Subterror\" monster, and if you do, draw 2 cards. You can only use this effect of \"Subterror Behemoth Stalagmo\" once per turn.\\r\\nWhen a face-up monster you control is flipped face-down, if you control no face-up monsters: You can Special Summon this card from your hand in Defense Position. Once per turn: You can change this card to face-down Defense Position.', 'SR'),
('60c2b3aca0e24f2d54a53823', 'Subterror Behemoth Stygokraken', 'Monster', 'Sea Serpent', 'EARTH', 5, 1400, 2600, 'FLIP: You can target Set cards on the field, equal to the number of \"Subterror Behemoth\" monsters you control; destroy them. You can only use this effect of \"Subterror Behemoth Stygokraken\" once per turn.\\r\\nWhen a face-up monster you control is flipped face-down, if you control no face-up monsters: You can Special Summon this card from your hand in Defense Position. Once per turn: You can change this card to face-down Defense Position.', 'N'),
('60c2b3aca0e24f2d54a53824', 'Subterror Behemoth Ultramafus', 'Monster', 'Pyro', 'EARTH', 12, 3000, 1800, 'FLIP: You can change all other face-up monsters on the field to face-down Defense Position. You can only use this effect of \"Subterror Behemoth Ultramafus\" once per turn.\\r\\nWhen a face-up monster you control is flipped face-down, if you control no face-up monsters: You can Special Summon this card from your hand in Defense Position. Once per turn: You can change this card to face-down Defense Position.', 'R'),
('60c2b3aca0e24f2d54a53825', 'Subterror Behemoth Umastryx', 'Monster', 'Reptile', 'EARTH', 7, 2000, 2700, 'FLIP: You can target 1 monster your opponent controls; banish it. You can only use this effect of \"Subterror Behemoth Umastryx\" once per turn.\\r\\nWhen a face-up monster you control is flipped face-down, if you control no face-up monsters: You can Special Summon this card from your hand in Defense Position. Once per turn: You can change this card to face-down Defense Position.', 'SR'),
('60c2b3aca0e24f2d54a53826', 'Subterror Behemoth Voltelluric', 'Monster', 'Thunder', 'EARTH', 9, 1900, 3000, 'FLIP: You can target 1 Set monster your opponent controls; take control of it until your next End Phase. You can only use this effect of \"Subterror Behemoth Voltelluric\" once per turn.\\r\\nWhen a face-up monster you control is flipped face-down, if you control no face-up monsters: You can Special Summon this card from your hand in Defense Position. Once per turn: You can change this card to face-down Defense Position.', 'N'),
('60c2b3aca0e24f2d54a53827', 'Subterror Cave Clash', 'Spell', 'Continuous', '', 0, 0, 0, 'All \"Subterror\" monsters you control gain 500 ATK and DEF for each Set monster on the field. Once per turn, when a \"Subterror\" monster you control inflicts battle damage to your opponent: You can target 1 \"Subterror\" card in your Graveyard, except \"Subterror Cave Clash\"; add it to your hand.', 'N'),
('60c2b3aca0e24f2d54a53828', 'Subterror Fiendess', 'Monster', 'Spellcaster', 'EARTH', 1, 800, 500, 'When your opponent activates a card or effect (Quick Effect): You can send this card from your hand or field to the GY, then target 1 \"Subterror\" monster you control; negate the activation, then change the targeted monster to face-down Defense Position. You can target 1 face-up monster you control; change it to face-down Defense Position, and if you do, Special Summon 1 \"Subterror\" monster from your hand or GY, in face-up or face-down Defense Position. You can only use each effect of \"Subterror Fiendess\" once per turn.', 'N'),
('60c2b3aca0e24f2d54a53829', 'Subterror Final Battle', 'Trap', 'Normal', '', 0, 0, 0, 'Activate 1 of these effects, also, after that, Set this card face-down instead of sending it to the GY.\\r\\n? Change 1 Set \"Subterror\" monster on the field to face-up Attack or Defense Position.\\r\\n? Change 1 face-up \"Subterror\" monster on the field to face-down Defense Position.\\r\\n? ATK/DEF of 1 \"Subterror\" monster on the field become equal to its combined original ATK/DEF until the end of this turn.\\r\\n? This turn, activated effects of \"Subterror\" cards cannot be negated.', 'R'),
('60c2b3aca0e24f2d54a5382a', 'Subterror Guru', 'Monster', 'Dragon', 'EARTH', 4, 1600, 1800, 'FLIP: You can add 1 \"Subterror\" card from your Deck to your hand, except \"Subterror Guru\". You can target 1 other face-up monster on the field; change that monster, also this card, to face-down Defense Position. This is a Quick Effect if you control another \"Subterror\" card. You can only use each effect of \"Subterror Guru\" once per turn.', 'UR'),
('60c2b3aca0e24f2d54a5382b', 'Subterror Nemesis Archer', 'Monster', 'Fairy', 'EARTH', 3, 1600, 1400, 'At the start of the Damage Step, if this card attacks an opponent\'s face-down Defense Position monster, and you control another \"Subterror\" monster: You can shuffle that opponent\'s monster into the Deck. If this card on the field is destroyed by battle or card effect and sent to the GY: You can Special Summon 1 \"Subterror\" monster from your Deck in face-up or face-down Defense Position. You can only use each effect of \"Subterror Nemesis Archer\" once per turn.', 'N'),
('60c2b3aca0e24f2d54a5382c', 'Subterror Nemesis Defender', 'Monster', 'Beast-Warrior', 'EARTH', 2, 100, 2000, 'During either player\'s turn, when your opponent activates a card or effect that targets exactly 1 Set monster you control (and no other cards), or when a Set monster you control is targeted for an attack by an opponent\'s monster: You can send this card from your hand or face-up from your field to the Graveyard, then target another monster you control that would be an appropriate target; that card/effect/attack now targets the new target. While you control a Set monster, this card cannot be destroyed by battle or card effects.', 'N'),
('60c2b3aca0e24f2d54a5382d', 'Subterror Nemesis Warrior', 'Monster', 'Warrior', 'EARTH', 4, 1800, 1200, 'During either player\'s turn: You can send 1 \"Subterror\" monster from your Deck to the Graveyard; Tribute this card and at least 1 other monster so the total original Levels Tributed equal or exceed the Level of that \"Subterror\" monster in the Graveyard, and if you do, Special Summon that monster in face-up or face-down Defense Position. If a \"Subterror Behemoth\" monster is flipped face-up while this card is in your Graveyard: You can Special Summon this card. You can only use each effect of \"Subterror Nemesis Warrior\" once per turn.', 'SR'),
('60c2b3aca0e24f2d54a5382e', 'Subterror Succession', 'Trap', 'Normal', '', 0, 0, 0, 'Activate 1 of these effects, also, after that, Set this card face-down instead of sending it to the GY.\\r\\n? Send 1 monster from your hand or face-up field to the GY, and if you do, add 1 Flip monster from your Deck to your hand with the same Attribute, but a different name, as that monster before it was sent to the GY.\\r\\n? Send 1 Flip monster from your hand or face-up field to the GY, and if you do, add 1 monster from your Deck to your hand with the same Attribute but a lower original Level, as that monster before it was sent to the GY.\\r\\nYou can only activate 1 \"Subterror Succession\" per turn.', 'R'),
('60c2b3aca0e24f2d54a53927', 'Synchro Fusionist', 'Monster', 'Spellcaster', 'DARK', 2, 800, 600, 'If this card is sent to the Graveyard as a Synchro Material Monster, you can add 1 Spell Card from your Deck to your hand with \"Polymerization\" or \"Fusion\" in the card name, except \"Diffusion Wave-Motion\".', 'N'),
('60c2b3aca0e24f2d54a53a01', 'The Hidden City', 'Spell', 'Field', '', 0, 0, 0, 'When this card is activated: You can add 1 \"Subterror\" monster from your Deck to your hand. Once per turn: You can change 1 face-down Defense Position \"Subterror\" monster you control to face-up Attack or Defense Position. Once per turn, when an opponent\'s monster declares an attack: You can change 1 face-down Defense Position \"Subterror\" monster you control to face-up Attack or Defense Position, then you can negate the attack. You can only activate 1 \"The Hidden City\" per turn.', 'SR'),
('60c2b3aca0e24f2d54a53ca4', 'Utgarda, Generaider Boss of Delusion', 'Monster', 'Rock', 'LIGHT', 9, 2200, 2700, 'You can only control 1 \"Utgarda, Generaider Boss of Delusion\". (Quick Effect): You can Tribute 2 \"Generaider\" monsters and/or Rock monsters, then target 1 card on the field; banish it. You can only use this effect of \"Utgarda, Generaider Boss of Delusion\" once per turn.', 'R'),
('60c2b3ada0e24f2d54a53de1', 'White Aura Monoceros', 'Monster', 'Fish', 'WATER', 7, 2500, 1500, '1 WATER Tuner + 1+ non-Tuner monsters\\r\\nWhen this card is Synchro Summoned: You can target 1 Fish monster in your GY; Special Summon it, but it cannot attack this turn. You can only use this effect of \"White Aura Monoceros\" once per turn. If this card you control is destroyed by your opponent\'s card and sent to your GY: You can banish 1 other WATER monster from your GY; Special Summon this card, and if you do, it is treated as a Tuner.', 'N'),
('60c2b3ada0e24f2d54a53def', 'White Moray', 'Monster', 'Fish', 'WATER', 2, 600, 200, 'During the turn you Normal Summoned this card, it can attack your opponent directly. If this card is Special Summoned from the GY: You can treat it as a Tuner this turn.', 'N'),
('60c2b3ada0e24f2d54a53dfd', 'Whitefish Salvage', 'Spell', 'Continuous', '', 0, 0, 0, 'You can target 1 Fish monster in your GY; add it to your hand. You can only use this effect of \"Whitefish Salvage\" once per turn. If this card in your possession is destroyed by an opponent\'s card effect and sent to your GY: Take 1 Fish monster from your Deck, and either add it to your hand or Special Summon it.', 'N'),
('61ef0edf39cb086ec8b2b444', 'Abyss Keeper', 'Monster', 'Fish', 'WATER', 0, 1500, 0, '2 WATER monsters\\r\\nCannot be used as Link Material the turn it is Link Summoned. If this card is Link Summoned: You can Special Summon 1 Fish monster from your hand to your zone this card points to. You can target 1 other Fish monster you control and 1 card your opponent controls; banish those cards. You can only use each effect of \"Abyss Keeper\" once per turn.', 'R'),
('61ef0edf39cb086ec8b2b507', 'Electric Jellyfish', 'Monster', 'Aqua', 'WATER', 4, 1400, 1700, 'You can send 1 \"Umi\" from your hand, Deck, or face-up field to the GY; Special Summon 1 WATER monster from your hand. When your opponent activates a monster effect, or Spell Card or effect, while \"Umi\" is on the field (Quick Effect): You can negate that effect, then, you can make this card gain 600 ATK/DEF. You can only use each effect of \"Electric Jellyfish\" once per turn.', 'N'),
('6220bc60e5946838f0890c27', 'Accel Synchro Stardust Dragon', 'Monster', 'Dragon', 'WIND', 8, 2500, 2000, '1 Tuner + 1+ non-Tuner monsters\\r\\nIf this card is Synchro Summoned: You can Special Summon 1 Level 2 or lower Tuner from your GY. During the Main Phase (Quick Effect): You can Tribute this card; Special Summon 1 \"Stardust Dragon\" from your Extra Deck (this is treated as a Synchro Summon), then, immediately after this effect resolves, Synchro Summon 1 Synchro Monster using monsters you control as material. This turn, the monsters Synchro Summoned by this effect are unaffected by your opponent\'s activated effects. You can only use each effect of \"Accel Synchro Stardust Dragon\" once per turn.', 'UR'),
('6239281592d4b8933d96d7e6', 'Stardust Wurm', 'Monster', 'Dragon', 'LIGHT', 1, 0, 0, 'If this card is in your hand or GY and you control a Level 8 or higher Dragon Synchro Monster: You can Special Summon this card, but banish it when it leaves the field. You can Tribute this card; Special Summon up to 2 Level 1 LIGHT Dragon monsters from your hand and/or GY, except \"Stardust Wurm\", but they cannot activate their effects. You can only use each effect of \"Stardust Wurm\" once per turn.', 'SR');
INSERT INTO `card` (`card_id`, `name`, `category`, `type`, `attribute`, `lvl`, `atk`, `def`, `description`, `rarity`) VALUES
('6265e6a93ecc89b0e4f30281', 'On Your Mark, Get Set, DUEL!', 'Spell', 'Continuous', '', 0, 0, 0, 'When this card is activated: If you control no other cards, you can add 1 \"Synchron\" monster from your Deck to your hand. Once per turn, during your Standby Phase: Place 1 Signal Counter on this card. You can remove 2 Signal Counters from your field and send this face-up card to the GY; draw 2 cards, then send 1 card from your hand to the GY. You can only activate 1 \"On Your Mark, Get Set, DUEL!\" per turn.', 'SR'),
('62de14fbe9066c4257aa8dbd', 'Donner, Dagger Fur Hire', 'Monster', 'Beast-Warrior', 'EARTH', 0, 1600, 0, '2 monsters with different Types\\nYou can target 1 monster \"Fur Hire\" you control and 1 monster your opponent controls; destroy them. You can Tribute 1 monster; Special Summon 1 monster \"Fur Hire\" from your hand or GY with a different original name than the Tributed monster, then, if you Tributed a Link Monster to activate this effect, you can Special Summon 1 more such monster. You can only use 1 \"Donner, Dagger Fur Hire\" effect per turn, and only once that turn.', 'UR'),
('62de2101e9066c4257aa9592', 'Infernalqueen Salmon', 'Monster', 'Fish', 'WATER', 5, 2400, 1000, 'If this card is Normal or Special Summoned: You can Special Summon 1 Fish Normal Monster from your hand, Deck, or GY. If this card is destroyed by battle, or if this card in its owner\'s possession is destroyed by an opponent\'s card effect: You can Special Summon any number of \"Vilepawn Salmon Tokens\" (Fish/WATER/Level 1/ATK 0/DEF 0). You can only use each effect of \"Infernalqueen Salmon\" once per turn.', 'N'),
('62e024795f0fd2a1fe3690ac', 'Eanoc, Sentry of the Ghoti', 'Monster', 'Fish', 'WATER', 6, 2100, 0, 'If this card is Normal or Special Summoned: You can target 1 of your banished Level 4 or lower Fish monsters; Special Summon it in Defense Position, but negate its effects. You can banish 1 Fish monster from your hand or face-up field; add 1 \"Ghoti\" Trap from your Deck to your hand. You can only use each effect of \"Eanoc, Sentry of the Ghoti\" once per turn.', 'N'),
('62e02d945f0fd2a1fe36ffb2', 'Moray of Avarice', 'Spell', 'Normal', '', 0, 0, 0, 'Banish 1 face-up Fish, Sea Serpent, or Aqua monster you control; draw 2 cards. You can only activate 1 \"Moray of Avarice\" per turn.', 'UR'),
('62e02d945f0fd2a1fe36ffba', 'Naturia Camellia', 'Monster', 'Plant', 'EARTH', 4, 1400, 700, 'If this card is Normal or Special Summoned: You can send 1 \"Naturia\" card from your Deck to the GY. If you would Tribute a monster(s) to activate a \"Naturia\" monster\'s effect, you can send the top 2 cards of your Deck to the GY instead. If your opponent Normal or Special Summons a monster(s) (except during the Damage Step): You can Special Summon 1 \"Naturia\" monster from your GY. You can only use each effect of \"Naturia Camellia\" once per turn.', 'R'),
('62e02d945f0fd2a1fe36ffbb', 'Naturia Mole Cricket', 'Monster', 'Insect', 'EARTH', 1, 0, 0, 'During the Main Phase (Quick Effect): You can Tribute this card; Special Summon 1 \"Naturia\" monster from your Deck, or you can Special Summon 2 \"Naturia\" monsters if your opponent controls a monster with the highest ATK on the field (even if it\'s tied). If your opponent Special Summons a monster(s) from the Extra Deck or you Special Summon a \"Naturia\" monster(s) from the Extra Deck, while this card is in your GY (except during the Damage Step): You can Special Summon this card. You can only use each effect of \"Naturia Mole Cricket\" once per turn.', 'UR'),
('62e02d945f0fd2a1fe36ffbc', 'Naturia Blessing', 'Spell', 'Quick-Play', '', 0, 0, 0, 'Activate 1 of these effects;\\n? Special Summon 1 \"Naturia\" monster from your hand or GY.\\n? Immediately after this effect resolves, Synchro Summon 1 Synchro Monster, using monsters you control as material, including a \"Naturia\" monster.\\n? Fusion Summon 1 Fusion Monster from your Extra Deck, using monsters you control as material, including a \"Naturia\" monster.', 'N'),
('62e02d945f0fd2a1fe36ffcb', 'Paces, Light of the Ghoti', 'Monster', 'Fish', 'WATER', 2, 0, 0, 'You can banish this card you control; Special Summon 1 Fish monster from your hand, except \"Paces, Light of the Ghoti\". During the Standby Phase of the next turn after this card was banished: You can Special Summon this banished card. During your opponent\'s Main Phase, if this card was Special Summoned this turn, you can (Quick Effect): Immediately after this effect resolves, Synchro Summon 1 Fish Synchro Monster using this card you control. You can only use each effect of \"Paces, Light of the Ghoti\" once per turn.', 'SR'),
('62e0316e5f0fd2a1fe37377c', 'Shamisen Samsara Sorrowcat', 'Monster', 'Zombie', 'DARK', 3, 1600, 1200, '1 Tuner + 1+ non-Tuner monsters\\nOnce per Chain, during your opponent\'s Main Phase, you can (Quick Effect): Immediately after this effect resolves, Synchro Summon using this card you control. If this card is in your GY: You can target 1 other Synchro Monster in your GY; return it to the Extra Deck, and if you do, Special Summon this card, but banish it when it leaves the field. You can only use each effect of \"Shamisen Samsara Sorrowcat\" once per turn.', 'R'),
('62e0316e5f0fd2a1fe373785', 'Rex, Freight Fur Hire', 'Monster', 'Dinosaur', 'EARTH', 2, 300, 200, 'If this card is Normal or Special Summoned: You can add 1 Spell/Trap \"Fur Hire\" from your Deck to your hand. During the Main Phase, if you control a monster \"Fur Hire\" (Quick Effect): You can banish this card from your GY, then target 1 card \"Fur Hire\" in your GY; either add it to your hand, or Special Summon it if it was a monster. You can only use each effect of \"Rex, Freight Fur Hire\" once per turn.', 'R'),
('62e034bf5f0fd2a1fe376df3', 'Worldsea Dragon Zealantis', 'Monster', 'Sea Serpent', 'WATER', 0, 2500, 0, '1+ Effect Monsters\\nYou can only control 1 \"Worldsea Dragon Zealantis\". You can only use each of the following effects of \"Worldsea Dragon Zealantis\" once per turn. During your Main Phase: You can banish all monsters on the field, then Special Summon as many monsters as possible that were banished by this effect, to their owners\' fields, face-up, or in face-down Defense Position. During the Battle Phase (Quick Effect): You can destroy cards on the field up to the number of co-linked monsters on the field.', 'UR'),
('62fc105bc9c52ba40dd3d545', 'Ghoti Chain', 'Trap', 'Normal', '', 0, 0, 0, 'Banish 1 face-up Fish monster you control; Special Summon 1 of your \"Ghoti\" monsters that is banished, or in your hand, Deck, or GY, with a different original name from the monster banished to activate this card, but banish it when it leaves the field. You can only activate 1 \"Ghoti Chain\" per turn.', 'SR'),
('62fc105bc9c52ba40dd3d546', 'Ghoti of the Deep Beyond', 'Monster', 'Fish', 'WATER', 10, 0, 0, '1+ Fish Tuners + 1+ non-Tuner monsters\\r\\nThe original ATK of this card becomes 500 x the number of banished monsters. If this card is Synchro Summoned during your opponent\'s turn: You can banish all cards on the field. During the Standby Phase of the next turn after this card was banished from the Monster Zone: You can Special Summon this banished card.', 'UR'),
('62fc1489c9c52ba40dd40ca4', 'Mimesis Elephant', 'Trap', 'Normal', '', 0, 0, 0, 'Special Summon this card as an Effect Monster (Beast/EARTH/Level 2/ATK 0/DEF 2000). (This card is also still a Trap.) If this card is in the Monster Zone (Quick Effect): You can declare 1 Type and 1 Attribute, then target 1 face-up monster on the field; it becomes that Type and Attribute, until the end of this turn. You can only use this effect of \"Mimesis Elephant\" once per turn.', 'R'),
('62fc18e0c9c52ba40dd443db', 'Shif, Fairy of the Ghoti', 'Monster', 'Fish', 'WATER', 2, 0, 500, 'You can banish this card from your GY, then target 1 Fish monster you control; it gains 500 ATK until the end of this turn. During the Standby Phase of the next turn after this card was banished: You can Special Summon this banished card. During your opponent\'s Main Phase, if this card was Special Summoned this turn, you can (Quick Effect): Immediately after this effect resolves, Synchro Summon 1 Fish Synchro Monster using this card you control. You can only use each effect of \"Shif, Fairy of the Ghoti\" once per turn.', 'R'),
('62fc1d23c9c52ba40dd47108', 'The Most Distant, Deepest Depths', 'Spell', 'Field', '', 0, 0, 0, 'While you control a Fish Synchro Monster, this card cannot be destroyed, or banished, by card effects. You can only use each of the following effects of \"The Most Distant, Deepest Depths\" once per turn. You can banish 1 Fish monster from your hand or GY; add 1 \"Ghoti\" monster from your Deck to your hand. If a Fish monster(s) is Normal or Special Summoned to your field, while this card is in your GY (except during the Damage Step): You can target 1 Fish monster you control; banish it, and if you do, add this card to your hand.', 'UR'),
('6332118c4943004b8e850ae6', 'Askaan, the Bicorned Ghoti', 'Monster', 'Fish', 'WATER', 8, 2700, 0, '1 Tuner + 1+ non-Tuner monsters\\nIf this card is Synchro Summoned: You can target 1 Fish monster you control and 1 card your opponent controls; banish them. If this card is banished: You can banish 1 Fish monster from your GY; Special Summon this card. You can only use each effect of \"Askaan, the Bicorned Ghoti\" once per turn.', 'SR'),
('63382ffcf8334e0d4e9aecde', 'The Abyss Dragon Swordsoul', 'Monster', 'Wyrm', 'FIRE', 8, 3000, 2900, 'Cannot be Normal Summoned/Set. Must be Special Summoned by a Wyrm monster\'s effect. If a monster is banished by card effect (except during the Damage Step): You can Special Summon this card from the GY (if it was there when the monster was banished) or hand (even if not), but banish it when it leaves the field. If this card is Special Summoned: You can target 1 card in the Field Zone and 1 monster your opponent controls or in their GY; banish them. You can only use each effect of \"The Abyss Dragon Swordsoul\" once per turn.', 'SR'),
('63396f1cf08769db1ff7b357', 'Icejade Gymir Aegirine', 'Monster', 'Aqua', 'WATER', 10, 3000, 1500, '1 WATER Tuner + 1+ non-Tuner monsters\\n(Quick Effect): You can activate this effect; face-up monsters you control cannot be destroyed, or banished, by your opponent\'s card effects this turn. Then, if you activated this effect in response to your opponent\'s card or effect activation, and your opponent has a card(s) with that name on their field and/or GY, you can banish those cards. If a card(s) is banished by your opponent\'s card effect, while this card is in your GY (except during the Damage Step): You can Special Summon this card. You can only use each effect of \"Icejade Gymir Aegirine\" once per turn.', 'UR'),
('633c3191dd8eba74887f5eaa', 'Plunder Patrollship Jord', 'Monster', 'Fiend', 'EARTH', 8, 1500, 3000, '[ Pendulum Effect ] You can declare 1 Attribute; return this card to the Extra Deck, and if you do, Special Summon 1 \"Plunder Patroll Token\" (Fiend/Level 4/ATK 0/DEF 0) with that Attribute to both players\' fields in Defense Position. You can only use this effect of \"Plunder Patrollship Jord\" once per turn.\\n----------------------------------------\\n[ Monster Effect ] 1 Tuner + 1+ non-Tuner monsters\\nIf your opponent Special Summons a monster(s)  (except during the Damage Step): You can add 1 \"Plunder Patroll\" card from your Deck to your hand, then if this card is equipped with a \"Plunder Patroll\" card, you can Special Summon 1 \"Plunder Patroll\" monster from your Deck. You can target 1 \"Plunder Patroll\" card in your GY; add it to your hand, and if you do, place this card in your Pendulum Zone. You can only use each effect of \"Plunder Patrollship Jord\" once per turn.', 'UR'),
('633d95bf1a782883d7959725', 'Circle of the Fairies', 'Monster', 'Plant', 'WIND', 7, 2200, 2500, '1 Tuner + 1+ non-Tuner monsters\\nDuring your Main Phase, you can Normal Summon 1 Insect or Plant monster in addition to your Normal Summon/Set. (You can only gain this effect once per turn.) When a monster is destroyed by battle involving your Insect or Plant monster, and sent to the GY: You can target 1 of those destroyed monsters; inflict damage to your opponent equal to half its ATK, then gain LP equal to the damage inflicted to your opponent. You can only use this effect of \"Circle of the Fairies\" once per turn.', 'R'),
('633f0ab39787b75777d384df', 'Zep, Ruby of the Ghoti', 'Monster', 'Fish', 'WATER', 2, 0, 1000, 'You can banish this card from your hand, then target 1 Fish monster in your GY; banish it. During your opponent\'s turn, if this card is banished: you can Special Summon it. If this card is Special Summoned, you can (except during the Damage Step): Immediately after this effect resolves, Synchro Summon 1 Fish Synchro monster using this card you control. You can only use each effect of \"Zep, Ruby of the Ghosti\" once per turn.', 'R'),
('633f0b6c9787b75777d3967c', 'Snopios, Shade of the Ghoti', 'Monster', 'Fish', 'WATER', 6, 2100, 0, 'During the Main Phase (Quick Effect): You can banish 2 Fish monsters from your hand and/or GY; Special Summon this card from your hand. If this card is Special Summoned: You can target 1 face-up card on the field: banish it when it leaves the field. If this card is banished: You can banish 1 Fish monster from your GY; add this card to your hand. You can only use each effect of \"Snopios, Shade of the Ghoti\" once per turn.', 'R'),
('633f0bd99787b75777d3a029', 'Ixeep, Omen of the Ghoti', 'Monster', 'Fish', 'WATER', 4, 1500, 0, 'If a Fish monster(s) is banished (except during the Damage Step): You can Special Summon this card from your hand. During the Standby Phase of the next turn after this card was banished: You can target 1 of your \"Ghoti\" Traps that is banished or in your GY; Set that target. You can only use each effect of \"Ixeep, Omen of the Ghoti\" once per turn.', 'N'),
('633f0c664f28d0fb9c1a3c35', 'Guoglim, Spear of the Ghoti', 'Monster', 'Fish', 'WATER', 8, 2700, 0, '1 Fish Tuner + 1+ non-Tuner monsters\\nAt the start of the Damage Step, if this card battles an opponent\'s monster: You can banish that opponent\'s monster. During your opponent\'s Standby Phase: You can banish this card, then, if the monsters used as material for this card\'s Synchro Summon are all in your GY, you can Special Summon all of them, but banish them when they leave the field. You can only use each effect of \"Guoglim, Spear of the Ghoti\" once per turn.', 'SR'),
('633f0cf9d99899cfae641374', 'Arionpos, Serpent of the Ghoti', 'Monster', 'Fish', 'WATER', 6, 2100, 0, '1 Tuner + 1+ non-Tuner monsters\\nIf this card is Synchro Summoned: You can banish 1 Level 6 or lower Fish monster from your Deck. If this card is sent to the GY as Synchro Material, you can target 1 Fish monster in your GY: banish that target, then you can add 1 Fish monster with an equal or lower Level from your Deck to your hand. You can only use each effect of \"Arionpos, Serpent of the Ghoti\" once per turn.', 'SR'),
('633f0d6d4f28d0fb9c1a5473', 'Ghoti Fury', 'Trap', 'Continuous', '', 0, 0, 0, 'You can target 1 Fish monster you control and 1 monster your opponent controls; banish both monsters until your next Standby Phase. If a Fish monster(s) is Special Summoned to your field while any card is banished: You can banish this card from your GY or your face-up Spell & Trap Zone; all Fish monsters you currently control gain 100 ATK for each currently banished card, until the end of this turn. You can only use each effect of \"Ghoti Fury\" once per turn.', 'N'),
('633f0df34f28d0fb9c1a5f84', 'Ghoti Cosmos', 'Trap', 'Normal', '', 0, 0, 0, 'Apply these effects in sequence, based on the number of banished Fish monsters.\\n? 1+: Your Fish monsters cannot be destroyed by battle this turn.\\n? 4+: The activation and effects of Fish monster effects activated on your field cannot be negated this turn.\\n? 8+: Special Summon 1 Fish Synchro Monster from your Extra Deck. (This is treated as a Synchro Summon.)\\nYou can only activate 1 \"Ghoti Cosmos\" per turn.', 'R'),
('63405b5c4f28d0fb9c2e0a33', 'Spellbound', 'Spell', 'Quick-Play', '', 0, 0, 0, 'All face-up monsters your opponent currently controls cannot be Tributed, or used as material for a Fusion, Synchro, Xyz, or Link Summon, until the end of this turn.', 'UR'),
('63405b774f28d0fb9c2e0b9c', 'Tilting Entrainment', 'Monster', 'Machine', 'EARTH', 8, 2800, 1600, '1 Tuner + 1+ non-Tuner monsters\\nIf this card is Synchro Summoned: You can Special Summon 1 Level 4 or lower Pendulum Monster from your hand or face-up from your Extra Deck. At the end of the Damage Step, when this card or your Pendulum Monster battles an opponent\'s monster, but the opponent\'s monster was not destroyed by the battle: You can destroy that opponent\'s monster. You can only use each effect of \"Tilting Entrainment\" once per turn.', 'SR'),
('6348ee4ce88d1118d0d6f0ef', 'Dimensional Allotrope Varis', 'Monster', 'Psychic', 'LIGHT', 1, 0, 0, 'Cannot be destroyed by battle with a monster with the same Type or Attribute as this card. You can declare 1 Monster Type and 1 Attribute; this card becomes that Type and Attribute until the end of your opponent\'s turn. You can only use this effect of \"Dimensional Allotrope Varis\" once per turn.', 'R'),
('63493f7446a7af52ebcfa42e', 'Assault Synchron', 'Monster', 'Machine', 'DARK', 2, 700, 0, 'During your Main Phase: You can Special Summon this card from your hand, then take 700 damage, also while it is face-up in the Monster Zone, you cannot Special Summon from the Extra Deck, except Synchro Monsters. If a face-up Dragon Synchro Monster(s) you control is Tributed or banished (except during the Damage Step): You can banish this card from your GY, then target 1 of those monsters; Special Summon it. You can only use each effect of \"Assault Synchron\" once per turn.', 'UR'),
('634b9891c2dd6d7f902f8fbc', 'Icejade Manifestation', 'Spell', 'Normal', '', 0, 0, 0, 'If you control a WATER monster and your opponent has a monster on their field or GY: Take 1 \"Icejade\" monster from your Deck, and either send it to the GY or Special Summon it. If a face-up \"Icejade\" monster you control leaves the field by an opponent\'s card, except by being destroyed (and except during the Damage Step): You can banish this card from your GY, then target 1 card your opponent controls; banish it. You can only use each effect of \"Icejade Manifestation\" once per turn.', 'SR'),
('634b9891c2dd6d7f902f8fbd', 'Fairyant the Circular Sorcerer', 'Monster', 'Insect', 'WIND', 3, 800, 1500, 'If an Insect or Plant monster is in either GY, you can Special Summon this card (from your hand). You can only Special Summon \"Fairyant the Circular Sorcerer\" once per turn this way. If this card you control would be used as Synchro Material for an Insect or Plant monster, you can treat it as a non-Tuner.', 'SR'),
('638ed1affcda0ff2b840a565', 'Final Cross', 'Spell', 'Quick-Play', '', 0, 0, 0, 'During your turn, if a Synchro Monster(s) was sent to your GY this turn: Target 1 Synchro Monster you control; it can make a second attack during each Battle Phase this turn, also, if you activated this card by targeting a Synchro Monster with \"Warrior\", \"Synchron\", or \"Stardust\" in its original name, you can make it gain ATK equal to the ATK of 1 Synchro Monster in your GY. You can only activate 1 \"Final Cross\" per turn.', 'SR'),
('63d3ef26b819756c2b41c040', 'Minairuka', 'Monster', 'Fish', 'WATER', 4, 1500, 500, 'When a WATER monster\'s effect is activated (Quick Effect): You can Special Summon this card from your hand. You can banish 1 face-up Fish, Sea Serpent, or Aqua monster you control, then target 1 face-up card on the field, negate its effects until the end of your opponent\'s turn. You can only use each effect of \"Minairuka\" once per turn.', 'R'),
('63d3fd5706671ccffd126ced', 'Diabolantis the Menacing Mantis', 'Monster', 'Insect', 'DARK', 8, 2500, 2200, '1 Tuner + 1+ non-Tuner monsters\\nIf this card is Synchro Summoned: You can send Insect and/or Plant monsters from your Deck to the GY up to the number of non-Tuners used for its Synchro Summon. If you control this Synchro Summoned card: You can target 1 Insect or Plant monster you control; treat it as a Tuner until the end of this turn. You can only use each effect of \"Diabolantis the Menacing Mantis\" once per turn.', 'UR');

-- --------------------------------------------------------

--
-- Table structure for table `card_subcategory`
--

CREATE TABLE `card_subcategory` (
  `card_id` varchar(30) NOT NULL,
  `subcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_subcategory`
--

INSERT INTO `card_subcategory` (`card_id`, `subcategory_id`) VALUES
('60c2b3aba0e24f2d54a52db0', 12),
('60c2b3aba0e24f2d54a52db0', 2),
('60c2b3aba0e24f2d54a52d9e', 12),
('60c2b3aba0e24f2d54a52d9e', 2),
('60c2b3aba0e24f2d54a52da0', 12),
('60c2b3aba0e24f2d54a52da0', 2),
('60c2b3aba0e24f2d54a52da8', 10),
('60c2b3aba0e24f2d54a52da8', 2),
('60c2b3aba0e24f2d54a52dab', 10),
('60c2b3aba0e24f2d54a52dab', 2),
('60c2b3aba0e24f2d54a52d9d', 2),
('60c2b3aba0e24f2d54a52da4', 2),
('60c2b3aba0e24f2d54a52db9', 2),
('60c2b3aba0e24f2d54a52db9', 3),
('60c2b3aba0e24f2d54a52db1', 12),
('60c2b3aba0e24f2d54a52dad', 2),
('60c2b3aba0e24f2d54a52db2', 2),
('60c2b3aba0e24f2d54a52dc2', 2),
('60c2b3aba0e24f2d54a52da2', 2),
('60c2b3aba0e24f2d54a52da2', 3),
('60c2b3aba0e24f2d54a52db8', 2),
('60c2b3aba0e24f2d54a52da5', 2),
('60c2b3aba0e24f2d54a52da5', 3),
('60c2b3aba0e24f2d54a52da7', 2),
('60c2b3aba0e24f2d54a52da3', 2),
('60c2b3aba0e24f2d54a52da3', 3),
('60c2b3aba0e24f2d54a52dbc', 2),
('60c2b3aba0e24f2d54a52dae', 2),
('60c2b3aba0e24f2d54a52da1', 2),
('60c2b3aba0e24f2d54a52da6', 2),
('60c2b3aba0e24f2d54a52db6', 2),
('60c2b3aba0e24f2d54a52dbb', 2),
('60c2b3aba0e24f2d54a52dbe', 2),
('60c2b3aba0e24f2d54a52daa', 2),
('60c2b3aba0e24f2d54a52db3', 2),
('60c2b3aba0e24f2d54a52db7', 2),
('60c2b3aba0e24f2d54a52dbd', 2),
('60c2b3aba0e24f2d54a52dbd', 3),
('60c2b3aba0e24f2d54a52d9c', 2),
('60c2b3aba0e24f2d54a52d9f', 2),
('60c2b3aba0e24f2d54a52db5', 2),
('60c2b3aba0e24f2d54a52dbf', 2),
('60c2b3aba0e24f2d54a52daf', 2),
('60c2b3aba0e24f2d54a52db4', 2),
('62fc105bc9c52ba40dd3d546', 12),
('62fc105bc9c52ba40dd3d546', 2),
('63396f1cf08769db1ff7b357', 12),
('63396f1cf08769db1ff7b357', 2),
('633c3191dd8eba74887f5eaa', 12),
('633c3191dd8eba74887f5eaa', 14),
('633c3191dd8eba74887f5eaa', 2),
('6220bc60e5946838f0890c27', 12),
('6220bc60e5946838f0890c27', 2),
('63d3fd5706671ccffd126ced', 12),
('63d3fd5706671ccffd126ced', 2),
('63493f7446a7af52ebcfa42e', 3),
('63493f7446a7af52ebcfa42e', 2),
('62e02d945f0fd2a1fe36ffbb', 2),
('62e034bf5f0fd2a1fe376df3', 15),
('62e034bf5f0fd2a1fe376df3', 2),
('62de14fbe9066c4257aa8dbd', 15),
('62de14fbe9066c4257aa8dbd', 2),
('60c2b3aca0e24f2d54a537ae', 12),
('60c2b3aca0e24f2d54a537ae', 2),
('6332118c4943004b8e850ae6', 12),
('6332118c4943004b8e850ae6', 2),
('633f0c664f28d0fb9c1a3c35', 12),
('633f0c664f28d0fb9c1a3c35', 2),
('63382ffcf8334e0d4e9aecde', 2),
('63405b774f28d0fb9c2e0b9c', 12),
('63405b774f28d0fb9c2e0b9c', 2),
('60c2b3aca0e24f2d54a53134', 10),
('60c2b3aca0e24f2d54a53134', 2),
('633f0cf9d99899cfae641374', 12),
('633f0cf9d99899cfae641374', 2),
('634b9891c2dd6d7f902f8fbd', 2),
('634b9891c2dd6d7f902f8fbd', 3),
('60c2b3a9a0e24f2d54a516a1', 2),
('62e02d945f0fd2a1fe36ffcb', 2),
('62e02d945f0fd2a1fe36ffcb', 3),
('60c2b3aca0e24f2d54a534d0', 2),
('6239281592d4b8933d96d7e6', 2),
('60c2b3aca0e24f2d54a537a0', 12),
('60c2b3aca0e24f2d54a537a0', 2),
('633d95bf1a782883d7959725', 12),
('633d95bf1a782883d7959725', 2),
('60c2b3aba0e24f2d54a52991', 12),
('60c2b3aba0e24f2d54a52991', 2),
('633f0b6c9787b75777d3967c', 2),
('63d3ef26b819756c2b41c040', 2),
('62e02d945f0fd2a1fe36ffba', 2),
('62e02d945f0fd2a1fe36ffba', 3),
('60c2b3a9a0e24f2d54a51716', 2),
('60c2b3aca0e24f2d54a53332', 2),
('62e0316e5f0fd2a1fe37377c', 12),
('62e0316e5f0fd2a1fe37377c', 3),
('62e0316e5f0fd2a1fe37377c', 2),
('62e0316e5f0fd2a1fe373785', 2),
('62fc18e0c9c52ba40dd443db', 2),
('62fc18e0c9c52ba40dd443db', 3),
('633f0ab39787b75777d384df', 2),
('633f0ab39787b75777d384df', 3),
('6348ee4ce88d1118d0d6f0ef', 2),
('6348ee4ce88d1118d0d6f0ef', 3),
('61ef0edf39cb086ec8b2b444', 15),
('61ef0edf39cb086ec8b2b444', 2),
('60c2b3ada0e24f2d54a53de1', 12),
('60c2b3ada0e24f2d54a53de1', 2),
('62e024795f0fd2a1fe3690ac', 2),
('62de2101e9066c4257aa9592', 2),
('633f0bd99787b75777d3a029', 2),
('61ef0edf39cb086ec8b2b507', 2),
('60c2b3aaa0e24f2d54a517f0', 2),
('60c2b3aca0e24f2d54a53121', 2),
('60c2b3a9a0e24f2d54a515d2', 2),
('60c2b3aaa0e24f2d54a51ca7', 2),
('60c2b3aba0e24f2d54a525d2', 2),
('60c2b3aba0e24f2d54a527e5', 2),
('60c2b3aba0e24f2d54a527e5', 3),
('60c2b3aba0e24f2d54a527e9', 2),
('60c2b3aca0e24f2d54a53410', 2),
('60c2b3aca0e24f2d54a53410', 3),
('60c2b3aaa0e24f2d54a51e0b', 2),
('60c2b3aca0e24f2d54a532ef', 2),
('60c2b3aca0e24f2d54a536ab', 2),
('60c2b3aca0e24f2d54a53927', 2),
('60c2b3ada0e24f2d54a53def', 2),
('60c2b3aba0e24f2d54a527cf', 13),
('60c2b3aba0e24f2d54a527cf', 2),
('60c2b3aba0e24f2d54a52b39', 2),
('60c2b3aca0e24f2d54a5382a', 6),
('60c2b3aca0e24f2d54a5382a', 2),
('60c2b3aca0e24f2d54a5381f', 15),
('60c2b3aca0e24f2d54a5381f', 2),
('60c2b3aca0e24f2d54a53822', 6),
('60c2b3aca0e24f2d54a53822', 2),
('60c2b3aba0e24f2d54a525a2', 2),
('60c2b3aba0e24f2d54a525cc', 2),
('60c2b3aca0e24f2d54a53825', 6),
('60c2b3aca0e24f2d54a53825', 2),
('60c2b3aba0e24f2d54a529e2', 2),
('60c2b3aca0e24f2d54a5382d', 2),
('60c2b3aca0e24f2d54a53824', 6),
('60c2b3aca0e24f2d54a53824', 2),
('60c2b3aca0e24f2d54a53821', 6),
('60c2b3aca0e24f2d54a53821', 2),
('60c2b3aaa0e24f2d54a51e3e', 2),
('60c2b3aaa0e24f2d54a5223d', 2),
('60c2b3aca0e24f2d54a53ca4', 2),
('60c2b3aaa0e24f2d54a518c9', 2),
('60c2b3aaa0e24f2d54a518ca', 2),
('60c2b3aaa0e24f2d54a518cb', 2),
('60c2b3aaa0e24f2d54a518cc', 2),
('60c2b3aba0e24f2d54a52d95', 2),
('60c2b3aba0e24f2d54a52e1f', 2),
('60c2b3aca0e24f2d54a53826', 6),
('60c2b3aca0e24f2d54a53826', 2),
('60c2b3aca0e24f2d54a53820', 6),
('60c2b3aca0e24f2d54a53820', 2),
('60c2b3aca0e24f2d54a5381e', 6),
('60c2b3aca0e24f2d54a5381e', 2),
('60c2b3aca0e24f2d54a53823', 6),
('60c2b3aca0e24f2d54a53823', 2),
('60c2b3aca0e24f2d54a5382b', 2),
('60c2b3aca0e24f2d54a5382c', 2),
('60c2b3aca0e24f2d54a53828', 2);

-- --------------------------------------------------------

--
-- Table structure for table `deck`
--

CREATE TABLE `deck` (
  `deck_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `date_created` date DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deck_detail`
--

CREATE TABLE `deck_detail` (
  `deck_detail_id` int(11) NOT NULL,
  `deck_id` int(11) NOT NULL,
  `card_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pack`
--

CREATE TABLE `pack` (
  `pack_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `category` varchar(30) NOT NULL,
  `date_released` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pack`
--

INSERT INTO `pack` (`pack_id`, `name`, `category`, `date_released`) VALUES
(1, 'Master Pack', 'secret pack', '2019-01-19'),
(2, 'Sacred Tree', 'secret pack', '2019-01-19'),
(3, 'The Synchronized Cosmos', 'selection pack', '2023-05-10'),
(4, 'Stardust Ties', 'secret pack', '2019-01-19'),
(5, 'Vessels of Freedom', 'secret pack', '2019-01-19'),
(6, 'Scrap Iron Soldiers', 'secret pack', '2019-01-19'),
(7, 'Cosmic Ocean', 'selection pack', '2022-10-11'),
(8, 'Synchro Mode Change', 'secret pack', '2019-01-19'),
(9, 'Rulers of the Deep', 'secret pack', '2019-01-19'),
(10, 'Ruler\'s Mask', 'selection pack', '2022-04-04'),
(11, 'Forgotten City Dwellers', 'secret pack', '2019-01-19'),
(12, 'Exquisite Jet-Black Rose', 'secret pack', '2019-01-19'),
(13, 'Shark\'s Pride', 'secret pack', '2019-01-19'),
(14, 'Worthy Adversaries', 'secret pack', '2019-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `pack_detail`
--

CREATE TABLE `pack_detail` (
  `pack_id` int(11) NOT NULL,
  `card_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pack_detail`
--

INSERT INTO `pack_detail` (`pack_id`, `card_id`) VALUES
(2, '60c2b3aba0e24f2d54a52db0'),
(1, '60c2b3aba0e24f2d54a52db0'),
(2, '60c2b3aba0e24f2d54a52d9e'),
(1, '60c2b3aba0e24f2d54a52d9e'),
(2, '60c2b3aba0e24f2d54a52da0'),
(1, '60c2b3aba0e24f2d54a52da0'),
(3, '60c2b3aba0e24f2d54a52da0'),
(2, '60c2b3aba0e24f2d54a52da8'),
(1, '60c2b3aba0e24f2d54a52da8'),
(2, '60c2b3aba0e24f2d54a52dab'),
(1, '60c2b3aba0e24f2d54a52dab'),
(3, '60c2b3aba0e24f2d54a52dab'),
(2, '60c2b3aba0e24f2d54a52d9d'),
(1, '60c2b3aba0e24f2d54a52d9d'),
(2, '60c2b3aba0e24f2d54a52da4'),
(1, '60c2b3aba0e24f2d54a52da4'),
(2, '60c2b3aba0e24f2d54a52db9'),
(1, '60c2b3aba0e24f2d54a52db9'),
(2, '60c2b3aba0e24f2d54a52dba'),
(1, '60c2b3aba0e24f2d54a52dba'),
(2, '60c2b3aba0e24f2d54a52db1'),
(1, '60c2b3aba0e24f2d54a52db1'),
(3, '60c2b3aba0e24f2d54a52db1'),
(2, '60c2b3aba0e24f2d54a52dad'),
(1, '60c2b3aba0e24f2d54a52dad'),
(2, '60c2b3aba0e24f2d54a52db2'),
(1, '60c2b3aba0e24f2d54a52db2'),
(3, '60c2b3aba0e24f2d54a52db2'),
(2, '60c2b3aba0e24f2d54a52dc2'),
(1, '60c2b3aba0e24f2d54a52dc2'),
(2, '60c2b3aba0e24f2d54a52da2'),
(1, '60c2b3aba0e24f2d54a52da2'),
(2, '60c2b3aba0e24f2d54a52db8'),
(1, '60c2b3aba0e24f2d54a52db8'),
(2, '60c2b3aba0e24f2d54a52da5'),
(1, '60c2b3aba0e24f2d54a52da5'),
(2, '60c2b3aba0e24f2d54a52da7'),
(1, '60c2b3aba0e24f2d54a52da7'),
(2, '60c2b3aba0e24f2d54a52da3'),
(1, '60c2b3aba0e24f2d54a52da3'),
(2, '60c2b3a9a0e24f2d54a51639'),
(1, '60c2b3a9a0e24f2d54a51639'),
(2, '60c2b3aba0e24f2d54a528fd'),
(1, '60c2b3aba0e24f2d54a528fd'),
(2, '60c2b3aba0e24f2d54a5295c'),
(1, '60c2b3aba0e24f2d54a5295c'),
(2, '60c2b3aba0e24f2d54a52da9'),
(1, '60c2b3aba0e24f2d54a52da9'),
(2, '60c2b3aba0e24f2d54a52dbc'),
(1, '60c2b3aba0e24f2d54a52dbc'),
(2, '60c2b3aba0e24f2d54a52dae'),
(1, '60c2b3aba0e24f2d54a52dae'),
(2, '60c2b3aba0e24f2d54a52da1'),
(1, '60c2b3aba0e24f2d54a52da1'),
(2, '60c2b3aba0e24f2d54a52da6'),
(1, '60c2b3aba0e24f2d54a52da6'),
(2, '60c2b3aba0e24f2d54a52db6'),
(1, '60c2b3aba0e24f2d54a52db6'),
(2, '60c2b3aba0e24f2d54a52dbb'),
(1, '60c2b3aba0e24f2d54a52dbb'),
(2, '60c2b3aba0e24f2d54a52dbe'),
(1, '60c2b3aba0e24f2d54a52dbe'),
(2, '60c2b3aba0e24f2d54a52daa'),
(1, '60c2b3aba0e24f2d54a52daa'),
(2, '60c2b3aba0e24f2d54a52db3'),
(1, '60c2b3aba0e24f2d54a52db3'),
(3, '60c2b3aba0e24f2d54a52db3'),
(2, '60c2b3aba0e24f2d54a52db7'),
(1, '60c2b3aba0e24f2d54a52db7'),
(2, '60c2b3aba0e24f2d54a52dbd'),
(1, '60c2b3aba0e24f2d54a52dbd'),
(2, '60c2b3aba0e24f2d54a52d9c'),
(1, '60c2b3aba0e24f2d54a52d9c'),
(3, '60c2b3aba0e24f2d54a52d9c'),
(2, '60c2b3aba0e24f2d54a52d9f'),
(1, '60c2b3aba0e24f2d54a52d9f'),
(2, '60c2b3aba0e24f2d54a52db5'),
(1, '60c2b3aba0e24f2d54a52db5'),
(3, '60c2b3aba0e24f2d54a52db5'),
(2, '60c2b3aba0e24f2d54a52dbf'),
(1, '60c2b3aba0e24f2d54a52dbf'),
(2, '60c2b3aba0e24f2d54a52daf'),
(1, '60c2b3aba0e24f2d54a52daf'),
(3, '60c2b3aba0e24f2d54a52daf'),
(2, '60c2b3aba0e24f2d54a52db4'),
(1, '60c2b3aba0e24f2d54a52db4'),
(2, '60c2b3aaa0e24f2d54a52086'),
(1, '60c2b3aaa0e24f2d54a52086'),
(3, '62fc105bc9c52ba40dd3d546'),
(3, '63396f1cf08769db1ff7b357'),
(3, '633c3191dd8eba74887f5eaa'),
(3, '6220bc60e5946838f0890c27'),
(3, '63d3fd5706671ccffd126ced'),
(3, '63493f7446a7af52ebcfa42e'),
(3, '62e02d945f0fd2a1fe36ffbb'),
(3, '62e034bf5f0fd2a1fe376df3'),
(3, '62de14fbe9066c4257aa8dbd'),
(3, '62e02d945f0fd2a1fe36ffb2'),
(3, '63405b5c4f28d0fb9c2e0a33'),
(3, '62fc1d23c9c52ba40dd47108'),
(4, '60c2b3aca0e24f2d54a537ae'),
(1, '60c2b3aca0e24f2d54a537ae'),
(3, '60c2b3aca0e24f2d54a537ae'),
(3, '6332118c4943004b8e850ae6'),
(3, '633f0c664f28d0fb9c1a3c35'),
(3, '63382ffcf8334e0d4e9aecde'),
(3, '63405b774f28d0fb9c2e0b9c'),
(5, '60c2b3aca0e24f2d54a53134'),
(1, '60c2b3aca0e24f2d54a53134'),
(3, '60c2b3aca0e24f2d54a53134'),
(3, '633f0cf9d99899cfae641374'),
(3, '634b9891c2dd6d7f902f8fbd'),
(5, '60c2b3a9a0e24f2d54a516a1'),
(1, '60c2b3a9a0e24f2d54a516a1'),
(3, '60c2b3a9a0e24f2d54a516a1'),
(3, '62e02d945f0fd2a1fe36ffcb'),
(6, '60c2b3aca0e24f2d54a534d0'),
(1, '60c2b3aca0e24f2d54a534d0'),
(3, '60c2b3aca0e24f2d54a534d0'),
(3, '6239281592d4b8933d96d7e6'),
(3, '638ed1affcda0ff2b840a565'),
(3, '634b9891c2dd6d7f902f8fbc'),
(3, '6265e6a93ecc89b0e4f30281'),
(3, '62fc105bc9c52ba40dd3d545'),
(4, '60c2b3aca0e24f2d54a537a0'),
(1, '60c2b3aca0e24f2d54a537a0'),
(3, '60c2b3aca0e24f2d54a537a0'),
(3, '633d95bf1a782883d7959725'),
(6, '60c2b3aba0e24f2d54a52991'),
(1, '60c2b3aba0e24f2d54a52991'),
(3, '60c2b3aba0e24f2d54a52991'),
(3, '633f0b6c9787b75777d3967c'),
(3, '63d3ef26b819756c2b41c040'),
(3, '62e02d945f0fd2a1fe36ffba'),
(5, '60c2b3a9a0e24f2d54a51716'),
(1, '60c2b3a9a0e24f2d54a51716'),
(3, '60c2b3a9a0e24f2d54a51716'),
(5, '60c2b3aca0e24f2d54a53332'),
(1, '60c2b3aca0e24f2d54a53332'),
(3, '60c2b3aca0e24f2d54a53332'),
(3, '62e0316e5f0fd2a1fe37377c'),
(3, '62e0316e5f0fd2a1fe373785'),
(3, '62fc18e0c9c52ba40dd443db'),
(3, '633f0ab39787b75777d384df'),
(3, '6348ee4ce88d1118d0d6f0ef'),
(7, '61ef0edf39cb086ec8b2b444'),
(3, '61ef0edf39cb086ec8b2b444'),
(5, '60c2b3aba0e24f2d54a52ba4'),
(1, '60c2b3aba0e24f2d54a52ba4'),
(3, '60c2b3aba0e24f2d54a52ba4'),
(8, '60c2b3aba0e24f2d54a52caa'),
(1, '60c2b3aba0e24f2d54a52caa'),
(3, '60c2b3aba0e24f2d54a52caa'),
(3, '633f0df34f28d0fb9c1a5f84'),
(3, '62fc1489c9c52ba40dd40ca4'),
(9, '60c2b3ada0e24f2d54a53de1'),
(1, '60c2b3ada0e24f2d54a53de1'),
(3, '60c2b3ada0e24f2d54a53de1'),
(3, '62e024795f0fd2a1fe3690ac'),
(3, '62de2101e9066c4257aa9592'),
(3, '633f0bd99787b75777d3a029'),
(7, '61ef0edf39cb086ec8b2b507'),
(3, '61ef0edf39cb086ec8b2b507'),
(5, '60c2b3aaa0e24f2d54a517f0'),
(1, '60c2b3aaa0e24f2d54a517f0'),
(3, '60c2b3aaa0e24f2d54a517f0'),
(1, '60c2b3aca0e24f2d54a53121'),
(10, '60c2b3aca0e24f2d54a53121'),
(3, '60c2b3aca0e24f2d54a53121'),
(11, '60c2b3a9a0e24f2d54a515d2'),
(1, '60c2b3a9a0e24f2d54a515d2'),
(3, '60c2b3a9a0e24f2d54a515d2'),
(6, '60c2b3aaa0e24f2d54a51ca7'),
(1, '60c2b3aaa0e24f2d54a51ca7'),
(3, '60c2b3aaa0e24f2d54a51ca7'),
(5, '60c2b3aba0e24f2d54a525d2'),
(1, '60c2b3aba0e24f2d54a525d2'),
(3, '60c2b3aba0e24f2d54a525d2'),
(6, '60c2b3aba0e24f2d54a527e5'),
(1, '60c2b3aba0e24f2d54a527e5'),
(3, '60c2b3aba0e24f2d54a527e5'),
(6, '60c2b3aba0e24f2d54a527e9'),
(1, '60c2b3aba0e24f2d54a527e9'),
(3, '60c2b3aba0e24f2d54a527e9'),
(12, '60c2b3aca0e24f2d54a53410'),
(1, '60c2b3aca0e24f2d54a53410'),
(3, '60c2b3aca0e24f2d54a53410'),
(5, '60c2b3aaa0e24f2d54a51e0b'),
(1, '60c2b3aaa0e24f2d54a51e0b'),
(3, '60c2b3aaa0e24f2d54a51e0b'),
(5, '60c2b3aca0e24f2d54a532ef'),
(1, '60c2b3aca0e24f2d54a532ef'),
(3, '60c2b3aca0e24f2d54a532ef'),
(4, '60c2b3aca0e24f2d54a536ab'),
(1, '60c2b3aca0e24f2d54a536ab'),
(3, '60c2b3aca0e24f2d54a536ab'),
(8, '60c2b3aca0e24f2d54a53927'),
(1, '60c2b3aca0e24f2d54a53927'),
(3, '60c2b3aca0e24f2d54a53927'),
(9, '60c2b3ada0e24f2d54a53def'),
(1, '60c2b3ada0e24f2d54a53def'),
(3, '60c2b3ada0e24f2d54a53def'),
(3, '62e02d945f0fd2a1fe36ffbc'),
(13, '60c2b3aaa0e24f2d54a51d68'),
(1, '60c2b3aaa0e24f2d54a51d68'),
(3, '60c2b3aaa0e24f2d54a51d68'),
(11, '60c2b3aba0e24f2d54a52957'),
(1, '60c2b3aba0e24f2d54a52957'),
(3, '60c2b3aba0e24f2d54a52957'),
(4, '60c2b3aba0e24f2d54a529a4'),
(1, '60c2b3aba0e24f2d54a529a4'),
(3, '60c2b3aba0e24f2d54a529a4'),
(4, '60c2b3aba0e24f2d54a52dce'),
(1, '60c2b3aba0e24f2d54a52dce'),
(3, '60c2b3aba0e24f2d54a52dce'),
(5, '60c2b3aca0e24f2d54a53131'),
(1, '60c2b3aca0e24f2d54a53131'),
(3, '60c2b3aca0e24f2d54a53131'),
(9, '60c2b3ada0e24f2d54a53dfd'),
(1, '60c2b3ada0e24f2d54a53dfd'),
(3, '60c2b3ada0e24f2d54a53dfd'),
(3, '633f0d6d4f28d0fb9c1a5473'),
(11, '60c2b3aaa0e24f2d54a521f2'),
(1, '60c2b3aaa0e24f2d54a521f2'),
(3, '60c2b3aaa0e24f2d54a521f2'),
(5, '60c2b3aca0e24f2d54a5312f'),
(1, '60c2b3aca0e24f2d54a5312f'),
(3, '60c2b3aca0e24f2d54a5312f'),
(5, '60c2b3aca0e24f2d54a53130'),
(1, '60c2b3aca0e24f2d54a53130'),
(3, '60c2b3aca0e24f2d54a53130'),
(5, '60c2b3aca0e24f2d54a531ac'),
(1, '60c2b3aca0e24f2d54a531ac'),
(3, '60c2b3aca0e24f2d54a531ac'),
(9, '60c2b3aca0e24f2d54a53512'),
(1, '60c2b3aca0e24f2d54a53512'),
(7, '60c2b3aca0e24f2d54a53512'),
(3, '60c2b3aca0e24f2d54a53512'),
(14, '60c2b3aba0e24f2d54a527cf'),
(1, '60c2b3aba0e24f2d54a527cf'),
(14, '60c2b3aba0e24f2d54a52b39'),
(1, '60c2b3aba0e24f2d54a52b39'),
(14, '60c2b3aca0e24f2d54a5382a'),
(1, '60c2b3aca0e24f2d54a5382a'),
(14, '60c2b3aca0e24f2d54a5381f'),
(1, '60c2b3aca0e24f2d54a5381f'),
(14, '60c2b3aca0e24f2d54a53822'),
(1, '60c2b3aca0e24f2d54a53822'),
(14, '60c2b3aba0e24f2d54a525a2'),
(1, '60c2b3aba0e24f2d54a525a2'),
(14, '60c2b3aba0e24f2d54a525cc'),
(1, '60c2b3aba0e24f2d54a525cc'),
(14, '60c2b3aca0e24f2d54a53825'),
(1, '60c2b3aca0e24f2d54a53825'),
(14, '60c2b3aba0e24f2d54a529e2'),
(1, '60c2b3aba0e24f2d54a529e2'),
(14, '60c2b3aca0e24f2d54a5382d'),
(1, '60c2b3aca0e24f2d54a5382d'),
(14, '60c2b3aca0e24f2d54a53a01'),
(1, '60c2b3aca0e24f2d54a53a01'),
(14, '60c2b3aaa0e24f2d54a52339'),
(1, '60c2b3aaa0e24f2d54a52339'),
(14, '60c2b3aca0e24f2d54a53824'),
(1, '60c2b3aca0e24f2d54a53824'),
(14, '60c2b3aca0e24f2d54a53821'),
(1, '60c2b3aca0e24f2d54a53821'),
(14, '60c2b3aaa0e24f2d54a51e3e'),
(1, '60c2b3aaa0e24f2d54a51e3e'),
(14, '60c2b3aaa0e24f2d54a5223d'),
(1, '60c2b3aaa0e24f2d54a5223d'),
(14, '60c2b3aca0e24f2d54a53ca4'),
(1, '60c2b3aca0e24f2d54a53ca4'),
(14, '60c2b3aaa0e24f2d54a518c9'),
(1, '60c2b3aaa0e24f2d54a518c9'),
(14, '60c2b3aaa0e24f2d54a518ca'),
(1, '60c2b3aaa0e24f2d54a518ca'),
(14, '60c2b3aaa0e24f2d54a518cb'),
(1, '60c2b3aaa0e24f2d54a518cb'),
(14, '60c2b3aaa0e24f2d54a518cc'),
(1, '60c2b3aaa0e24f2d54a518cc'),
(14, '60c2b3aaa0e24f2d54a5233d'),
(1, '60c2b3aaa0e24f2d54a5233d'),
(14, '60c2b3aca0e24f2d54a53829'),
(1, '60c2b3aca0e24f2d54a53829'),
(14, '60c2b3aca0e24f2d54a5382e'),
(1, '60c2b3aca0e24f2d54a5382e'),
(14, '60c2b3aba0e24f2d54a52d95'),
(1, '60c2b3aba0e24f2d54a52d95'),
(14, '60c2b3aba0e24f2d54a52e1f'),
(1, '60c2b3aba0e24f2d54a52e1f'),
(14, '60c2b3aca0e24f2d54a53826'),
(1, '60c2b3aca0e24f2d54a53826'),
(14, '60c2b3aca0e24f2d54a53820'),
(1, '60c2b3aca0e24f2d54a53820'),
(14, '60c2b3aca0e24f2d54a5381e'),
(1, '60c2b3aca0e24f2d54a5381e'),
(14, '60c2b3aca0e24f2d54a53823'),
(1, '60c2b3aca0e24f2d54a53823'),
(14, '60c2b3aca0e24f2d54a5382b'),
(1, '60c2b3aca0e24f2d54a5382b'),
(14, '60c2b3aca0e24f2d54a5382c'),
(1, '60c2b3aca0e24f2d54a5382c'),
(14, '60c2b3aca0e24f2d54a53828'),
(1, '60c2b3aca0e24f2d54a53828'),
(14, '60c2b3aaa0e24f2d54a5233a'),
(1, '60c2b3aaa0e24f2d54a5233a'),
(14, '60c2b3aaa0e24f2d54a5233b'),
(1, '60c2b3aaa0e24f2d54a5233b'),
(14, '60c2b3aca0e24f2d54a53827'),
(1, '60c2b3aca0e24f2d54a53827'),
(14, '60c2b3aaa0e24f2d54a52338'),
(1, '60c2b3aaa0e24f2d54a52338'),
(14, '60c2b3aaa0e24f2d54a5233c'),
(1, '60c2b3aaa0e24f2d54a5233c'),
(14, '60c2b3aca0e24f2d54a53023'),
(1, '60c2b3aca0e24f2d54a53023'),
(14, '60c2b3aca0e24f2d54a5381d'),
(1, '60c2b3aca0e24f2d54a5381d');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcategory_id`, `name`) VALUES
(1, 'Normal'),
(2, 'Effect'),
(3, 'Tuner'),
(4, 'Gemini'),
(5, 'Spirit'),
(6, 'Flip'),
(7, 'Toon'),
(8, 'Union'),
(9, 'Token'),
(10, 'Fusion'),
(11, 'Ritual'),
(12, 'Synchro'),
(13, 'Xyz'),
(14, 'Pendulum'),
(15, 'Link');

-- --------------------------------------------------------

--
-- Table structure for table `web_user`
--

CREATE TABLE `web_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` char(8) NOT NULL,
  `email` varchar(254) NOT NULL,
  `role` varchar(20) NOT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `web_user`
--

INSERT INTO `web_user` (`user_id`, `username`, `password`, `email`, `role`, `date_created`) VALUES
(1, 'Seto', '12345678', 'KakSetoK@gmail.com', 'superadmin', '2023-06-18'),
(2, 'Donut9990', '99999999', 'donutt@gmail.com', 'user', '2023-06-19'),
(3, 'noobmaster42', 'noob4422', 'noobbaster@gmail.com', 'user', '2023-06-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archetype`
--
ALTER TABLE `archetype`
  ADD PRIMARY KEY (`archetype_id`);

--
-- Indexes for table `archetype_detail`
--
ALTER TABLE `archetype_detail`
  ADD KEY `archetypeDetail_card_fk` (`card_id`),
  ADD KEY `archetypeDetail_archetype_fk` (`archetype_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `article_user_fk` (`user_id`);

--
-- Indexes for table `article_comment`
--
ALTER TABLE `article_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_user_fk` (`user_id`),
  ADD KEY `comment_article_fk` (`article_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `card_subcategory`
--
ALTER TABLE `card_subcategory`
  ADD KEY `cardSubcategory_card_fk` (`card_id`),
  ADD KEY `cardSubcategory_subcategory_fk` (`subcategory_id`);

--
-- Indexes for table `deck`
--
ALTER TABLE `deck`
  ADD PRIMARY KEY (`deck_id`),
  ADD KEY `deck_user_fk` (`user_id`);

--
-- Indexes for table `deck_detail`
--
ALTER TABLE `deck_detail`
  ADD PRIMARY KEY (`deck_detail_id`),
  ADD KEY `deckDetail_deck_fk` (`deck_id`),
  ADD KEY `deckDetail_card_fk` (`card_id`);

--
-- Indexes for table `pack`
--
ALTER TABLE `pack`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `pack_detail`
--
ALTER TABLE `pack_detail`
  ADD KEY `packDetail_pack_fk` (`pack_id`),
  ADD KEY `packDetail_card_fk` (`card_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `web_user`
--
ALTER TABLE `web_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archetype`
--
ALTER TABLE `archetype`
  MODIFY `archetype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `article_comment`
--
ALTER TABLE `article_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deck`
--
ALTER TABLE `deck`
  MODIFY `deck_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deck_detail`
--
ALTER TABLE `deck_detail`
  MODIFY `deck_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pack`
--
ALTER TABLE `pack`
  MODIFY `pack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `web_user`
--
ALTER TABLE `web_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archetype_detail`
--
ALTER TABLE `archetype_detail`
  ADD CONSTRAINT `archetypeDetail_archetype_fk` FOREIGN KEY (`archetype_id`) REFERENCES `archetype` (`archetype_id`),
  ADD CONSTRAINT `archetypeDetail_card_fk` FOREIGN KEY (`card_id`) REFERENCES `card` (`card_id`);

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_user_fk` FOREIGN KEY (`user_id`) REFERENCES `web_user` (`user_id`);

--
-- Constraints for table `article_comment`
--
ALTER TABLE `article_comment`
  ADD CONSTRAINT `comment_article_fk` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`),
  ADD CONSTRAINT `comment_user_fk` FOREIGN KEY (`user_id`) REFERENCES `web_user` (`user_id`);

--
-- Constraints for table `card_subcategory`
--
ALTER TABLE `card_subcategory`
  ADD CONSTRAINT `cardSubcategory_card_fk` FOREIGN KEY (`card_id`) REFERENCES `card` (`card_id`),
  ADD CONSTRAINT `cardSubcategory_subcategory_fk` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`subcategory_id`);

--
-- Constraints for table `deck`
--
ALTER TABLE `deck`
  ADD CONSTRAINT `deck_user_fk` FOREIGN KEY (`user_id`) REFERENCES `web_user` (`user_id`);

--
-- Constraints for table `deck_detail`
--
ALTER TABLE `deck_detail`
  ADD CONSTRAINT `deckDetail_card_fk` FOREIGN KEY (`card_id`) REFERENCES `card` (`card_id`),
  ADD CONSTRAINT `deckDetail_deck_fk` FOREIGN KEY (`deck_id`) REFERENCES `deck` (`deck_id`);

--
-- Constraints for table `pack_detail`
--
ALTER TABLE `pack_detail`
  ADD CONSTRAINT `packDetail_card_fk` FOREIGN KEY (`card_id`) REFERENCES `card` (`card_id`),
  ADD CONSTRAINT `packDetail_pack_fk` FOREIGN KEY (`pack_id`) REFERENCES `pack` (`pack_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
