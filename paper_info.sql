/*
 Navicat Premium Data Transfer

 Source Server         : shuatiweb
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : paper_info

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 14/12/2023 13:39:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers`  (
  `paper_id` int NOT NULL,
  `t_id` int NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`t_id`, `paper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES (20230601, 1, '无');
INSERT INTO `answers` VALUES (20230601, 2, 'B');
INSERT INTO `answers` VALUES (20230601, 3, 'B');
INSERT INTO `answers` VALUES (20230601, 4, 'C');
INSERT INTO `answers` VALUES (20230601, 5, 'A');
INSERT INTO `answers` VALUES (20230601, 6, 'D');
INSERT INTO `answers` VALUES (20230601, 7, 'C');
INSERT INTO `answers` VALUES (20230601, 8, 'A');
INSERT INTO `answers` VALUES (20230601, 9, 'D');
INSERT INTO `answers` VALUES (20230601, 10, 'A');
INSERT INTO `answers` VALUES (20230601, 11, 'B');
INSERT INTO `answers` VALUES (20230601, 12, 'D');
INSERT INTO `answers` VALUES (20230601, 13, 'C');
INSERT INTO `answers` VALUES (20230601, 14, 'D');
INSERT INTO `answers` VALUES (20230601, 15, 'B');
INSERT INTO `answers` VALUES (20230601, 16, 'C');
INSERT INTO `answers` VALUES (20230601, 17, 'A');
INSERT INTO `answers` VALUES (20230601, 18, 'C');
INSERT INTO `answers` VALUES (20230601, 19, 'B');
INSERT INTO `answers` VALUES (20230601, 20, 'D');
INSERT INTO `answers` VALUES (20230601, 21, 'C');
INSERT INTO `answers` VALUES (20230601, 22, 'B');
INSERT INTO `answers` VALUES (20230601, 23, 'D');
INSERT INTO `answers` VALUES (20230601, 24, 'A');
INSERT INTO `answers` VALUES (20230601, 25, 'D');
INSERT INTO `answers` VALUES (20230601, 26, 'A');
INSERT INTO `answers` VALUES (20230601, 27, 'N');
INSERT INTO `answers` VALUES (20230601, 28, 'K');
INSERT INTO `answers` VALUES (20230601, 29, 'O');
INSERT INTO `answers` VALUES (20230601, 30, 'M');
INSERT INTO `answers` VALUES (20230601, 31, 'A');
INSERT INTO `answers` VALUES (20230601, 32, 'G');
INSERT INTO `answers` VALUES (20230601, 33, 'D');
INSERT INTO `answers` VALUES (20230601, 34, 'E');
INSERT INTO `answers` VALUES (20230601, 35, 'C');
INSERT INTO `answers` VALUES (20230601, 36, 'I');
INSERT INTO `answers` VALUES (20230601, 37, 'C');
INSERT INTO `answers` VALUES (20230601, 38, 'G');
INSERT INTO `answers` VALUES (20230601, 39, 'A');
INSERT INTO `answers` VALUES (20230601, 40, 'I');
INSERT INTO `answers` VALUES (20230601, 41, 'F');
INSERT INTO `answers` VALUES (20230601, 42, 'K');
INSERT INTO `answers` VALUES (20230601, 43, 'D');
INSERT INTO `answers` VALUES (20230601, 44, 'M');
INSERT INTO `answers` VALUES (20230601, 45, 'B');
INSERT INTO `answers` VALUES (20230601, 46, 'H');
INSERT INTO `answers` VALUES (20230601, 47, 'D');
INSERT INTO `answers` VALUES (20230601, 48, 'A');
INSERT INTO `answers` VALUES (20230601, 49, 'A');
INSERT INTO `answers` VALUES (20230601, 50, 'C');
INSERT INTO `answers` VALUES (20230601, 51, 'B');
INSERT INTO `answers` VALUES (20230601, 52, 'A');
INSERT INTO `answers` VALUES (20230601, 53, 'B');
INSERT INTO `answers` VALUES (20230601, 54, 'B');
INSERT INTO `answers` VALUES (20230601, 55, 'C');
INSERT INTO `answers` VALUES (20230601, 56, 'D');
INSERT INTO `answers` VALUES (20230601, 57, '无');

-- ----------------------------
-- Table structure for exam_papers
-- ----------------------------
DROP TABLE IF EXISTS `exam_papers`;
CREATE TABLE `exam_papers`  (
  `paper_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_papers
-- ----------------------------
INSERT INTO `exam_papers` VALUES (20230601, '2023年6月大学英语六级真题（第一套）');
INSERT INTO `exam_papers` VALUES (20230602, '2023年6月大学英语六级真题（第二套）');
INSERT INTO `exam_papers` VALUES (20230603, '2023年6月大学英语六级真题（第三套）');

-- ----------------------------
-- Table structure for fill_in_the_blanks
-- ----------------------------
DROP TABLE IF EXISTS `fill_in_the_blanks`;
CREATE TABLE `fill_in_the_blanks`  (
  `fill_id` int NOT NULL,
  `question_id` int NULL DEFAULT NULL,
  `blank_number` int NULL DEFAULT NULL,
  `correct_answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`fill_id`) USING BTREE,
  INDEX `question_id`(`question_id` ASC) USING BTREE,
  CONSTRAINT `fill_in_the_blanks_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fill_in_the_blanks
-- ----------------------------

-- ----------------------------
-- Table structure for listening
-- ----------------------------
DROP TABLE IF EXISTS `listening`;
CREATE TABLE `listening`  (
  `paper_id` int NOT NULL,
  `t_id` int NOT NULL,
  `A` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `B` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `C` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `D` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`paper_id`, `t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of listening
-- ----------------------------
INSERT INTO `listening` VALUES (20230601, 1, 'It was spacious and tranquil', 'It was warm and comfortable', 'It was shabby and solitary.', 'It was tiny and noisy');
INSERT INTO `listening` VALUES (20230601, 2, 'She no longer hates people talking loudly in the dorm', 'She misses her roommates she used to complain about', 'She begins to enjoy the movies she once found irritating', 'She finds the crowded dorm as cozy as her new apartment.');
INSERT INTO `listening` VALUES (20230601, 3, 'He found the apartment perfectly furnished', 'He had a feeling of despair and frustration', 'He had a similar feeling to the woman’s.', 'He felt the new place was like paradise');
INSERT INTO `listening` VALUES (20230601, 4, 'Go to see the woman’s apartment', 'Make a phone call to his parents.', 'Make a phone call to his parents.', 'Decorate the woman’s apartment');
INSERT INTO `listening` VALUES (20230601, 5, 'He works as a literary critic', 'He works as a literary critic', 'He has initiated a university reform', 'He has initiated a university reform');
INSERT INTO `listening` VALUES (20230601, 6, 'He has initiated a university reform', 'It fails to ensure universities get sufficient resources', 'It has not prepared young people for the job market', 'It has not fostered the growth of the arts disciplines');
INSERT INTO `listening` VALUES (20230601, 7, 'More of the budget should go to science and technology', 'The underfunded music discipline should be prioritized', 'Subdisciplines like sculpture should get more funding', 'Literature should get as much funding as engineering');
INSERT INTO `listening` VALUES (20230601, 8, 'Build a prosperous nation.', 'Make skilled professionals', 'Create ingenious artists', 'Cultivate better citizens.');
INSERT INTO `listening` VALUES (20230601, 9, 'Cultivate better citizens.', 'It is rarely noticed', 'It is rarely noticed', 'It is rarely noticed.');
INSERT INTO `listening` VALUES (20230601, 10, 'Seeing things in black and white', 'Engaging in regular contemplation', 'Having a special understanding of creativity', 'Knowing how to make their mental batteries work');
INSERT INTO `listening` VALUES (20230601, 11, 'Engaging in intense activity', 'Fantasizing in one’s down time', 'Working on a particular project', 'Reflecting during one’s relaxation');
INSERT INTO `listening` VALUES (20230601, 12, 'Farmers helped Native Americans grow crops.', 'There were expansive university campuses.', 'There existed post offices.', 'Migrants found gold there');
INSERT INTO `listening` VALUES (20230601, 13, 'It helped to boost the economy in the American West.', 'It provided job opportunities for many gold seekers', 'It extended the influence of the federal government.', 'It kept people in the deserts and plains connected');
INSERT INTO `listening` VALUES (20230601, 14, 'It employed Native Americans to work as postmen.', 'It commissioned private wagons to carry the mail.', 'It subsidized the locals who acted as postmasters.', 'It centralized postal services in its remote areas');
INSERT INTO `listening` VALUES (20230601, 15, 'He analyzed interactive maps of mail routes', 'He read a large collection of books on the topic', 'He examined its historical trends with data science', 'He collected data about its impact on local business');
INSERT INTO `listening` VALUES (20230601, 16, 'Higher levels of anxiety may improve people’s memory', 'Some experiences are easier to remember than others', 'Most people tend to remember things selectively', 'Simple thing may leave a deep impression on one’s memory');
INSERT INTO `listening` VALUES (20230601, 17, 'They classified the participants’ mindset.', 'They showed some photos to the participants.', 'They measured the participants’ anxiety levels.', 'They tested the size of the participants’ vocabulary');
INSERT INTO `listening` VALUES (20230601, 18, 'Anxiety has become a serious problem for an increasing number of people.', 'Extreme levels of anxiety can adversely affect cognitive performance.', 'People diagnosed with anxiety disorder may forget things selectively.', 'There is no direct correlation between memory and levels of anxiety');
INSERT INTO `listening` VALUES (20230601, 19, 'They compare products from different companies before making a choice', 'They get information from other consumers’ postings and comments.', 'They lose patience when their phone call is not promptly answered.', 'They expect to get instantaneous responses to their inquiry');
INSERT INTO `listening` VALUES (20230601, 20, 'Giving them rewards on the spot.', 'Broadening their scope of interest.', 'Speaking directly to their emotions.', 'Focusing on the details of the product');
INSERT INTO `listening` VALUES (20230601, 21, 'Change the rules of the game in the market every year', 'Keep up with the latest technological developments', 'Learn from technological innovators to do business', 'Make greater efforts to build up consumers’ confidence');
INSERT INTO `listening` VALUES (20230601, 22, 'People have only one social engagement per week.', 'Working together enhances friendship.', 'Few people have devoted friends.', 'Friendships benefit work');
INSERT INTO `listening` VALUES (20230601, 23, 'The impact of friends on people’s self-esteem.', 'How supportive friends can be in the workplace.', 'How to boost one’s sense of value and worthiness.', 'The role of family ties in people’s mental well-being');
INSERT INTO `listening` VALUES (20230601, 24, 'They show little interest in their friends’ work.', 'They tend to be much more difficult to make.', 'They are more trustworthy and reliable.', 'They increase people’s job satisfaction');
INSERT INTO `listening` VALUES (20230601, 25, 'Allow employees to have a flexible work schedule', 'Encourage employees to be friends with colleagues', 'Help employees balance work and family responsibilities', 'Organize activities to nourish friendships outside of work');
INSERT INTO `listening` VALUES (20230602, 1, 'She is attracted to the beauty of modern buildings', 'She is preoccupied with her dream to be an architect', 'She is influenced by her father who teaches architecture', 'She is drawn to its');
INSERT INTO `listening` VALUES (20230602, 2, 'Through hard work', 'With the professor’s help', 'By studying the subject online', 'By taking prerequisite courses');
INSERT INTO `listening` VALUES (20230602, 3, 'It is groundbreaking', 'It is long-lasting', 'It is immaterial', 'It is immortal');
INSERT INTO `listening` VALUES (20230602, 4, 'Economics', 'Philosophy', 'Computer science', 'Western art');
INSERT INTO `listening` VALUES (20230602, 5, 'He has occasionally been harassed by his fans', 'He has been guarded by a discreet assistant.', 'He is well known to the public.', 'He is a famous football coach.');
INSERT INTO `listening` VALUES (20230602, 6, 'Serve as a personal assistant.', 'Play a key role in Real Madrid.', 'Run common daily chores for the woman.', 'Help promote Mr. Sanchez’s public profile.');
INSERT INTO `listening` VALUES (20230602, 7, 'He is honest and always tells the truth.', 'He once worked part-time in university.', 'He cares little about his working hours.', 'He has little previous work experience.');
INSERT INTO `listening` VALUES (20230602, 8, 'He has a strong ability to connect with people.', 'He has a high proficiency in several languages.', 'He has a sound knowledge of sports consultancy.', 'He has a natural capacity to cooperate with others.');
INSERT INTO `listening` VALUES (20230602, 9, 'They bring more benefits to young people', 'They require less supervision and training.', 'They are more suitable to young people.', 'They have fewer rules and pressures.');
INSERT INTO `listening` VALUES (20230602, 10, 'They prevent kids from enjoying adventure sports.', 'They help kids guard against any possible injuries.', 'They rob kids of the chance to cultivate their courage.', 'They deprive kids of the opportunity to develop team spirit.');
INSERT INTO `listening` VALUES (20230602, 11, 'Help them take up these sports when they are more mature.', 'Let them participate in some less risky outdoor activities.', 'Ask them to try some forms of indoor sports.', 'Introduce them to these sports step by step.');
INSERT INTO `listening` VALUES (20230602, 12, 'Consumers often have a craving for the latest model.', 'Such products tend to comprise parts that are irreplaceable.', 'Tech firms intentionally design products to have short lifespans.', 'Manufacturers use effective strategies to promote fancier products.');
INSERT INTO `listening` VALUES (20230602, 13, 'Indicate the competitiveness of their products.', 'List a repairability score of their products.', 'Specify the major parts of their products.', 'Detail the life cycle of their products.');
INSERT INTO `listening` VALUES (20230602, 14, 'Take the initiative to reduce electronic waste.', 'Take due caution in upgrading their products.', 'Invest in constructing more recycling facilities.', 'Substitute all toxic substances with non-toxic ones.');
INSERT INTO `listening` VALUES (20230602, 15, 'It can be solved.', 'It is certain to worsen.', 'It will be fixed by tech companies.', 'It is unavoidable in the long run.');
INSERT INTO `listening` VALUES (20230602, 16, 'How internet monitoring can be implemented.', 'How to encourage productive internet surfing.', 'How cyberloafing affects overall productivity.', 'How to prevent employees from cyberloafing.');
INSERT INTO `listening` VALUES (20230602, 17, 'Cyberloafing is a sign of workers’ laziness.', 'Cyberloafing may relieve employees of stress.', 'Employee engagement is closely related to job satisfaction.', 'Overuse of social media may lead to decline in productivity.');
INSERT INTO `listening` VALUES (20230602, 18, 'Taking mini-breaks means better job performance.', 'Cyberloafing generally does more harm than good.', 'Worker turnover is linked to the time allowed for cyberloafing.', 'Employees who indulge in internet surfing are most likely to quit.');
INSERT INTO `listening` VALUES (20230602, 19, 'There were no wooden buildings.', 'There were environmental problems.', 'There were no trees.', 'There were few settlers.');
INSERT INTO `listening` VALUES (20230602, 20, 'He served as chairman of the Nebraska State Board of Agriculture.', 'He urged the state to start the Nebraska State Gardening Society.', 'He engaged himself in a large number of aesthetic projects.', 'He founded a newspaper and used it to promote his ideas.');
INSERT INTO `listening` VALUES (20230602, 21, 'A special prize was awarded to Julius Morton.', 'One million trees were planted throughout Nebraska.', 'The state government declared it the official Arbor Day.', 'Nebraska earned the nickname “the Tree Planters State”.');
INSERT INTO `listening` VALUES (20230602, 22, 'They spread across Europe and Asia in a few decades.', 'They lived mostly in Africa for about 200,000 years.', 'They preferred to live in Europe rather than in Asia.', 'They moved out of Africa about 60,000 years ago.');
INSERT INTO `listening` VALUES (20230602, 23, 'The discovery of two modern human teeth in China.', 'The traces of human migration out of Africa to Asia.', 'The human fossils discovered most recently in Africa.', 'The Luna cave in Guangxi Zhuang Autonomous Region.');
INSERT INTO `listening` VALUES (20230602, 24, 'There must have been some reason for human migration.', 'There have been changes in animals’ living conditions.', 'Humans adapted themselves to the environment there.', 'Humans had access to abundant food sources there.');
INSERT INTO `listening` VALUES (20230602, 25, 'How humans settled down on the Arabian Peninsula.', 'When modern humans started to disperse out of Africa.', 'What path modern humans took to migrate out of Africa.', 'Why fresh water is so important for human survival.');

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options`  (
  `option_id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_correct` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`option_id`, `question_id`) USING BTREE,
  INDEX `question_id`(`question_id` ASC) USING BTREE,
  CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of options
-- ----------------------------

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `question_id` int NOT NULL,
  `paper_id` int NULL DEFAULT NULL,
  `question_type` enum('writing','listening','reading','translation') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`question_id`) USING BTREE,
  INDEX `paper_id`(`paper_id` ASC) USING BTREE,
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`paper_id`) REFERENCES `exam_papers` (`paper_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questions
-- ----------------------------

-- ----------------------------
-- Table structure for reading_contents
-- ----------------------------
DROP TABLE IF EXISTS `reading_contents`;
CREATE TABLE `reading_contents`  (
  `reading_id` int NOT NULL,
  `paper_id` int NULL DEFAULT NULL,
  `section_id` int NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`reading_id`) USING BTREE,
  INDEX `paper_id`(`paper_id` ASC) USING BTREE,
  CONSTRAINT `reading_contents_ibfk_1` FOREIGN KEY (`paper_id`) REFERENCES `exam_papers` (`paper_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reading_contents
-- ----------------------------

-- ----------------------------
-- Table structure for readinga
-- ----------------------------
DROP TABLE IF EXISTS `readinga`;
CREATE TABLE `readinga`  (
  `paper_id` int NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `A` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `B` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `D` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `E` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `F` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `G` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `H` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `I` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `J` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `K` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `L` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `M` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `N` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `O` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of readinga
-- ----------------------------
INSERT INTO `readinga` VALUES (20230601, 'Scientists recently examined studies on dog intelligence and compared them with research into the minds of other intelligent animals. The researchers found that dogs are among the more intelligent carnivores（食肉动物），social hunters and domestic animals, but that their intelligence does not 26.____other intelligent animals in any of those categories. Though a significant body of research has examined dog cognition 27.____, the authors of this new study found little to warrant the 28.____of work that has been devoted to the topic.Stephen Lea, lead author of the new study, argues that many researchers seem to have designed their studies to 29.____how clever dogs are, rather than simply to study dogs\' brains. Lea and a colleague examined more than 300 studies of dog cognition, comparing the studies\' results with those from research into other animals. The researchers made specific comparisons between the different species in different categories of intelligence. These comparisons 30.____that dogs are intelligent, but their intelligence is not as 31.____as some researchers might have believed.In many areas, though, comparisons were not possible. For example, the researchers noted that both dogs and cats are known to be able to recognize and 32.____human voices. But the investigators could not find any data to indicate which species can remember a greater number of 33.____human voices, so it was impossible to compare the two on that front. However, not all researchers agree 34.____with the findings of this study. Zachary Silver, an American researcher, believes the authors of the new study 35.____the idea that an excessive amount of research has been devoted to dogs, as the field of dog cognition is young, and there is much to be learned about how dogs think. ', 'affirmed', 'approximately', 'completely', 'differentiate', 'distinct', 'domain', 'formidable', 'outperformed', 'overstated', 'pledge', 'previously', 'prospecttive', 'prove', 'surpass', 'volume');

-- ----------------------------
-- Table structure for readingb
-- ----------------------------
DROP TABLE IF EXISTS `readingb`;
CREATE TABLE `readingb`  (
  `paper_id` int NOT NULL,
  `A` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `B` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `C` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `D` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `E` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `F` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `G` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `H` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `I` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `J` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `K` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `L` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `M` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t36` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t37` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t38` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t39` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t40` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t41` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t42` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t43` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t44` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `t45` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of readingb
-- ----------------------------
INSERT INTO `readingb` VALUES (20230601, 'A. Gratitude may be more beneficial than we commonly suppose. One recent study asked participants to write a note of thanks to someone and then estimate how surprised and happy the recipient would feel — an impact that they consistently underestimated. Another study assessed the health benefits of writing thank-you notes. The researchers found that writing as few as three weekly thank-you notes over the course of three weeks improved life satisfaction, increased happy feelings and reduced symptoms of depression.', 'B. While this research into gratitude is relatively new, the principles involved are anything but. Students of mine in a political philosophy course at Indiana University are reading Daniel Defoe’s 300-year-old Robinson Crusoe, often regarded as the first novel published in English. Left alone on an unknown island with no apparent prospect of rescue or escape, Crusoe has much to lament (悲叹). But instead of giving in to despair, he makes a list of things for which he is grateful, including the fact that he is the sole survivor from the shipwreck (海难) and has been able to salvage many useful items from the wreckage.', 'C. Defoe’s masterpiece, which is often ranked as one of the world’s greatest novels, provides a portrait of gratitude in action that is as timely and relevant today as it has ever been. It is also one with which contemporary psychology and medicine are just beginning to catch up. Simply put, for most of us, it is far more helpful to focus on the things in life for which we can express gratitude than those that incline us toward resentment and lamentation.', 'D. When we focus on the things we regret, such as failed relationships, family disputes, and setbacks in career and finance, we tend to become more regretful. Conversely, when we focus on the things we are grateful for, a greater sense of happiness tends to spread through our lives. And while no one would argue for cultivating a false sense of blessedness, there is mounting evidence that counting our blessings is one of the best habits we can develop to promote mental and physical health.', 'E. Gratitude has long enjoyed a privileged position in many of the world’s cultural traditions. For example, some ancient Western philosophers counsel gratitude that is both enduring and complete, and some Eastern thinkers portray it as not merely an attitude but a virtue to be put into practice.', 'F. Recent scientific studies support these ancient teachings. Individuals who regularly engage in gratitude exercises, such as counting their blessings or expressing gratitude to others, exhibit increased satisfaction with relationships and fewer symptoms of physical illness. And the benefits are not only psychological and physical. They may also be moral — those who practice gratitude also view their lives less materialistically and suffer from less envy.', 'G. There are multiple explanations for such benefits of gratefulness. One is the fact that expressing gratitude encourages others to continue being generous, thus promoting a virtuous cycle of goodness in relationships. Similarly, grateful people may be more likely to reciprocate (回报) with acts of kindness of their own. Broadly speaking, a community in which people feel grateful to one another is likely to be a more pleasant place to live than one characterized by mutual suspicion and resentment. The beneficial effects of gratitude may extend even further. For example, when many people feel good about what someone else has done for them, they experience a sense of being lifted up, with a corresponding enhancement of their regard for humanity. Some are inspired to attempt to become better people themselves, doing more to help bring out the best in others and bringing more goodness into the world around them.', 'H. Gratitude also tends to strengthen a sense of connection with others. When people want to do good things that inspire gratitude, the level of dedication in relationships tends to grow and relationships seem to last longer. And when people feel more connected, they are more likely to choose to spend their time with one another and demonstrate their feelings of affection in daily acts.', 'I. Of course, acts of kindness can also foster discomfort. For example, if people feel they are not worthy of kindness or suspect that some ulterior (别有用心的) motive lies behind it, the benefits of gratitude will not be realized. Likewise, receiving a kindness can give rise to a sense of indebtedness, leaving beneficiaries feeling that they must now pay back whatever good they have received. Gratitude can flourish only if people are secure enough in themselves and sufficiently trusting to allow it to do so. Another obstacle to gratitude is often called a sense of entitlement. Instead of experiencing a benefaction (善行) as a good turn, people sometimes regard it as a mere payment of what they are owed, for which no one deserves any moral credit.', 'J. There are a number of practical steps anyone can take to promote a sense of gratitude. One is simply spending time on a regular basis thinking about someone who has made a difference, or perhaps writing a thank-you note or expressing such gratitude in person. Others are found in ancient religious disciplines, such as reflecting on benefactions received from another person or actually praying for the health and happiness of a benefactor. In addition to benefactions received, it is also possible to focus on opportunities to do good oneself, whether those acted on in the past or hoped for in the future. Some people are most grateful not for what others have done for them but for chances they enjoyed to help others. In regularly reflecting on the things in his life he is grateful for, Defoe’s Crusoe believes that he becomes a far better person than he would have been had he remained in the society from which he originally set out on his voyage.', 'K. Reflecting on generosity and gratitude, the great basketball coach John Wooden once offered two counsels to his players and students. First, he said, “It is impossible to have a perfect day unless you have done something for someone who will never be able to repay you.” In saying this, Wooden sought to promote purely generous acts, as opposed to those performed with an expectation of reward. Second, he said, “Give thanks for your blessings every day.”', 'L. Some faith traditions incorporate such practices into the rhythm of daily life. For example, adherents of some religions offer prayers of thanksgiving every morning before rising and every night before lying down to sleep. Others offer thanks throughout the day, such as before meals. Other less frequent special events, such as births, deaths and marriages, may also be heralded by such prayers.', 'M. When Defoe depicted Robinson Crusoe making thanksgiving a daily part of his island life, he was anticipating findings in social science and medicine that would not appear for hundreds of years. Yet he was also reflecting the wisdom of religious and philosophical traditions that extend back thousands of years. Gratitude is one of the healthiest and most nourishing of all states of mind, and those who adopt it as a habit are enriching not only their own lives but also the lives of those around them.', '36. It does us far more good to focus on things we can be grateful for than what makes us sad and resentful.', '37. The beneficial impacts of gratitude can extend from individuals to their community and to the wider society.', '38. The participants in a recent study repeatedly underestimated the positive effect on those who received thank-you notes.', '39. Good deeds can sometimes make people feel uncomfortable.', '40. People who regularly express gratitude can benefit in moral terms.', '41. A basketball coach advocated performing generous acts without expecting anything in return.', '42. More and more evidence shows it makes us mentally and physically healthier to routinely count our blessings.', '43. Of all states of mind, feeling grateful is considered one of the most healthy and beneficial.', '44. The principles underlying the research into gratitude are nothing new at all.', '45. Gratitude is likely to enhance one’s sense of being connected with other people.');

-- ----------------------------
-- Table structure for readingc_o
-- ----------------------------
DROP TABLE IF EXISTS `readingc_o`;
CREATE TABLE `readingc_o`  (
  `paper_id` int NOT NULL,
  `passage_id` int NOT NULL,
  `t_id` int NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `A` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `B` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `D` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`paper_id`, `passage_id`, `t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of readingc_o
-- ----------------------------
INSERT INTO `readingc_o` VALUES (20230601, 1, 1, '46. What do we learn about the deeper implications of AI?', 'A. It is causing catastrophic levels of unemployment.', 'B. It is doing physical harm to human operators.', 'C. It is altering moral judgments.', 'D. It is reshaping humanity.');
INSERT INTO `readingc_o` VALUES (20230601, 1, 2, '47. What is the consequence of algorithmic prescription replacing human judgment?', 'A. People lose the chance to cultivate the ability to make practical judgments.', 'B. People are prevented from participating in making major decisions in the workplace.', 'C. Managers no longer have the chance to decide which loan to approve.', 'D. Managers do not need to take the trouble to determine who to hire or fire.');
INSERT INTO `readingc_o` VALUES (20230601, 1, 3, '48. What may result from the increasing application of recommendation engines in our consumption of culture?', 'A. Consumers will have much limited choice.', 'B. Consumers will actually enjoy better luck.', 'C. It will be easier to decide on what to enjoy.', 'D. Humans will develop tastes similar to machines.');
INSERT INTO `readingc_o` VALUES (20230601, 1, 4, '49. What is likely to happen to larger parts of our daily life as machine learning algorithms improve?', 'A. They will turn out to be more pleasant.', 'B. They will repeat our past experience.', 'C. They can be completely anticipated.', 'D. They may become better and better.');
INSERT INTO `readingc_o` VALUES (20230601, 1, 5, '50. Why does the author say the creatures living in the more and more AI-mediated world will become', 'A. They will have lost the most significant human element of being intelligent.', 'B. They will no longer possess the human characteristic of being unpredictable.', 'C. They will not be able to understand themselves as we can do today.', 'D. They will be deprived of what their predecessors were proud of about themselves.');
INSERT INTO `readingc_o` VALUES (20230601, 2, 1, '51. What do we learn about phonics in many American classrooms?', 'A. It is ill-reputed.', 'B. It is mostly misapplied.', 'C. It is arbitrarily excluded.', 'D. It is misrepresented.');
INSERT INTO `readingc_o` VALUES (20230601, 2, 2, '52. What has America been witnessing for decades?', 'A. An obsession with innovating teaching methodologies of reading.', 'B. An enduring debate over the approach to teaching children to read.', 'C. An increasing concern with many children’s inadequacy in literacy.', 'D. An ever-forceful advocacy of a combined method for teaching reading.');
INSERT INTO `readingc_o` VALUES (20230601, 2, 3, '53. Why does Tenette Smith think a combination of teaching methods is ineffective?', 'A. Elementary school children will be frustrated when taught with several methods combined.', 'B. Phonics has to be systematically applied and clearly taught to achieve the desired effect.', 'C. Sprinkling in a little phonics deters the progress of even adequately motivated children.', 'D. Balanced literacy fails to sustain children’s interest in developing a good reading habit.');
INSERT INTO `readingc_o` VALUES (20230601, 2, 4, '54. What does the author say Mississippi’s success is attributed to?', 'A. Convening a National Reading Panel to synthesize research evidence.', 'B. Placing sufficient emphasis upon both fluency and comprehension.', 'C. Adopting scientifically grounded approaches to teaching reading.', 'D. Obtaining support from Congress to upgrade teaching methods.');
INSERT INTO `readingc_o` VALUES (20230601, 2, 5, '55. What have advances in statistics and brain imaging proved ineffective?', 'A. The teaching of symbol-sound relationships.', 'B. Explicit instruction in phonemic awareness.', 'C. Efforts to end the reading wars.', 'D. The immersive apprears different.');

-- ----------------------------
-- Table structure for readingc_p
-- ----------------------------
DROP TABLE IF EXISTS `readingc_p`;
CREATE TABLE `readingc_p`  (
  `paper_id` int NOT NULL,
  `passage_id` int NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`paper_id`, `passage_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of readingc_p
-- ----------------------------
INSERT INTO `readingc_p` VALUES (20230601, 1, 'Technology is never a neutral tool for achieving human ends. Technological innovations reshape people as they use these innovations to control their environment. Artificial intelligence, for example, is altering humanity.\r\nWhile the term AI conjures up anxieties about killer robots or catastrophic levels of unemployment, there are other, deeper implications. As AI increasingly shapes the human experience, how does this change what it means to be human? Central to the problem is a person’s capacity to make choices, particularly judgments that have moral implications.\r\nAristotle argued that the capacity for making practical judgments depends on regularly making them— on habit and practice. We see the emergence of machines as substitute judges in a variety of everyday contexts as a potential threat to people learning how to effectively exercise judgment themselves.\r\nIn the workplace, managers routinely make decisions about who to hire or fire and which loan to approve, to name a few. These are areas where algorithmic (算法的) prescription is replacing human judgment, and so people who might have had the chance to develop practical judgment in these areas no longer will.\r\nRecommendation engines, which are increasingly prevalent intermediaries in people’s consumption of culture, may serve to constrain choice and minimize luck. By presenting consumers with algorithmically selected choices of what to watch, read, stream and visit next, companies are replacing human taste with machine taste. In one sense, this is helpful. After all, machines can survey a wider range of choices than any individual is likely to have the time or energy to do on their own.\r\nAt the same time, though, this selection is optimizing for what people are likely to prefer based on what they’ve preferred in the past. We think there is some risk that people’s options will be constrained by their past in a new and unanticipated way.\r\nAs machine learning algorithms improve and as they train on more extensive data sets, larger parts of everyday life are likely to become utterly predictable. The predictions are going to get better and better, and they will ultimately make common experiences more efficient and pleasant.\r\nAlgorithms could soon — if they don’t already — have a better idea about which show you’d like to watch next and which job candidate you should hire than you do. One day, humans may even find a way for machines to make these decisions without some of the biases that humans typically display. \r\nBut to the extent that unpredictability is part of how people understand themselves and part of what people like about themselves, humanity is in the process of losing something significant. As they become more and more predictable, the creatures inhabiting the increasingly AI-mediated world will become less and less like us.');
INSERT INTO `readingc_p` VALUES (20230601, 2, 'Chimpanzees (黑猩猩), human beings’ closest animal relatives, share up to 98% of our genes. Yet humans and chimpanzees lead very different lives. Fewer than 300,000 wild chimpanzees live in a few forested corners of Africa today, while humans have colonized every corner of the globe. At more than 7 billion, human population dwarfs that of nearly all other mammals — despite our physical weaknesses.\r\nWhat could account for our species’ incredible evolutionary successes?\r\nOne obvious answer is our big brains. It could be that our raw intelligence gave us an unprecedented\r\nability to think outside the box, innovating solutions to thorny problems as people migrated across the globe.\r\nBut a growing number of cognitive scientists and anthropologists (人类学家) are rejecting that explanation. They think that, rather than making our living as innovators, we survive and thrive precisely because we don’t think for ourselves. Instead, people cope with challenging climates and ecological contexts by carefully copying others.\r\nIn a famous study, psychologists Victoria Horner and Andrew Whiten showed two groups of test subjects — children and chimpanzees — a mechanical box with a treat inside. In one condition, the box was opaque, while in the other it was transparent. The experimenters demonstrated how to open the box to retrieve the treat, but they also included the irrelevant step of tapping on the box with a stick.\r\nOddly, the children carefully copied all the steps to open the box, even when they could see that the stick had no practical effect. That is, they copied irrationally: Instead of doing only what was necessary to get their reward, children slavishly imitated every action they’d witnessed.\r\nOf course, that study only included three- and four-year-olds. But additional research has shown that older children and adults are even more likely to mindlessly copy others’ actions, and infants are less likely to over-imitate — that is, to precisely copy even impractical actions.\r\nBy contrast, chimpanzees in the study only over-imitated in the opaque condition. In the transparent condition — where they saw that the stick was mechanically useless — they ignored that step entirely. Other research has since supported these findings.\r\nWhen it comes to copying, chimpanzees are more rational than human children or adults.\r\nWhere does the seemingly irrational human preference for over-imitation come from?\r\nAnthropologist Joseph Henrich points out that people around the world rely on technologies that are often so complex that no one can learn them rationally. Instead, people must learn them step by step, trusting in the wisdom of more experienced elders and peers.\r\nSo the next time you hear someone arguing passionately that everyone should embrace\r\nnonconformity and avoid imitating others, you might laugh a little bit. We’re not chimpanzees, after all.');
INSERT INTO `readingc_p` VALUES (20230602, 1, 'If you’re someone who has turned to snacking on junk food more in the pandemic (大流行病），you’re not alone. Investigative reporter Michael Moss says processed food is engineered to hook you, not unlike alcohol, cigarettes, or other harmful substances. His 2013 book, Salt Sugar Fat, explored food companies’ aggressive marketing of those products and their impact on our health. In his new book, Hooked, Moss updates the food giants’ efforts to keep us eating what they serve, and how they’re responding to complaints from consumers and health advocates. \r\nProcessed food is inexpensive, it’s legal, and it’s everywhere. Companies’ advertising is cueing us to remember those products and we want those products constantly. So the food environment is one of those key things that makes food even more problematic for so many people. Memory, nostalgia (怀旧) in particular, plays a big role in the foods we crave. Soda companies discovered that if they put a soda in the hands of a child when they’re at a ball game with their parents, that soda will forever be associated with that joyous moment. Later in life, when that child wants to experience a joyous moment, they’re going to think of soda. Many people seek comfort in the snacks they remember from childhood.\r\nMoss examines the way companies capitalize on our memories, cravings and brain chemistry to keep us snacking.\r\nOne of the reasons I came to think that some of these food products are even more powerful, more troublesome than drugs can be is memory. What we eat is all about memory. And we begin forming memories for food at a really early age. And we keep those memories for a lifetime. Knowing this, the food industry spends lots of time trying to shape the memories that we have for their products. One of the features of addiction that scientists studying drug addiction discovered back in the 1990s was that the faster a substance hits the brain, the more apt we are as a result to act impulsively. There’s nothing faster than food in its ability to hit the brain. For Moss, this puts the notion of “fast food” in an entirely new light as this isn’t limited to fast food chains — almost 90% of food products in grocery stores are processed foods. Everything in the industry is about speed, from manufacturing to packaging.\r\nOverall, Moss outlines the industry’s dependence on making their products inexpensive, super delicious, and incredibly convenient for consumers. Now that more and more people care about what they put in their bodies and are wanting to eat healthier, these companies are finding it really difficult to meet that new demand because of their own addiction to making these convenience foods.');
INSERT INTO `readingc_p` VALUES (20230603, 1, 'How on earth did we come to this? We protect our children obsessively from every harm; we scrutinize every carer, teacher or doctor with whom they come into contact. Yet despite all this, one group, which in no way has their best interests at heart, has almost unconstrained access.\r\nWe seem to take it for granted that advertisers and marketers are allowed to condition even the youngest children. Before children have even developed a proper sense of their own identity, or learned to handle money, they’re encouraged to associate status and self-worth with stuff, and to look to external things such as fame and wealth for validation. We’re turning out little consumers rather than young citizens who will value themselves for what they contribute to the society in which they live.\r\nWe’ve reached this point so gradually that many of us have never questioned it. It’s crept up on us in the 60 years since advertisers started to target the young and found that they could recruit them to a commercial assault on their parents. We’ve come to know it as “pester power” or the ability of children to pressure parents to make certain purchases.\r\nMany psychologists, child development experts and educators point to research suggesting that this emerging cradle-to-grave consumerism is contributing to growing rates of low self-esteem, depression and other forms of mental illness. \r\nNot all psychologists agree. There’re plenty working hand in glove with a £12bn-a-year industry that has turned the manipulation of adult emotions and desires into an art form — often literally. It’s also one that’s forever developing new ways to persuade our children to desire material possessions, and because of advertisements’ viral effect they only need to infect a few to reach the many. Advertising and marketing can serve a useful purpose for children. Marketing may help socialize children as consumers, inform them about products, and help them carve out unique identities as they reach adulthood\r\nThen, should we ban all advertising aimed at young children? I say yes.\r\nOf course there’ll be plenty of objections to an outright ban on advertising to the under-11s. There’ll be those who argue that would be a breach of freedom of speech and infringe the rights of corporations to brainwash little children into demanding their products.\r\nMost parents hate what advertising does to their children, but we do have the power to end it and let our children grow up free from many of the pressures of consumerism until they’re old enough to make their own decisions. And though advertising is only part of an all-pervasive (无处不在的) marketing culture we need to make a start somewhere. Let’s ban all advertising targeting children of primary school age and younger now. ');

-- ----------------------------
-- Table structure for translation
-- ----------------------------
DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation`  (
  `paper_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of translation
-- ----------------------------
INSERT INTO `translation` VALUES (20230601, '近年来,越来越多的中国文化产品走向全球市场，日益受到海外消费者的青睐。随着中国对外文化贸易的快速发展，中国文化产品出口额已持线多年位居世界前列，形成了一批具有国际影响力的文化企业、产品和品牌。数据显示，中国的出版物、影视作品、网络文学与动漫作品等在海外的销售量连年攀升。中国政府出台了一系列政策鼓励和支持更多具有中国元素的优秀文化产品走出国门，扩大海外市场份额，进一步提升中国文化的世界影响力。');
INSERT INTO `translation` VALUES (20230602, '随着中国经济的快速发展和人们生活水平的稳步提高，城市居民对环境和生活品质的要求越来越高。中国地方政府更加注重公共设施的建设和改进，以更好地满足人们的需求。通过兴建新的广场、公园和公共绿地或对原有公共场地重新加以规划改造，许多城市为市民提供了更多休闲和社交的场所。如今，政府出资购置的健身器械和铺设的健身步道在不少城市随处可见，既明显改善了市民户外活动的条件，又使城市更加美丽。');
INSERT INTO `translation` VALUES (20230603, '近年来，中国城市加快发展，城市人居环境得到显著改善。许多城市努力探索中国特色的城市高质量发展之路，城市功能不断完善，治理水平明显提高。中国持续开展城市生态修复和功能修补，全面实施城镇老旧小区改造，大力推进城市园林绿化，消除污染；同时大力推进城市基础设施体系化建设，开展房屋建筑和市政设施普查以及安全隐患排查整治，努力为市民创造高品质的生活环境，让城市更美丽、更安全、更宜居。');

-- ----------------------------
-- Table structure for writing
-- ----------------------------
DROP TABLE IF EXISTS `writing`;
CREATE TABLE `writing`  (
  `paper_id` int NOT NULL,
  `writing` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`paper_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of writing
-- ----------------------------
INSERT INTO `writing` VALUES (20230601, 'For this part, you are allowed 30 minutes to write an essay that begins with the sentence \"Today there is a growing awareness that mental well-being needs to be given as much attention as physical health.\" You can make comments, cite examples or use your personal experiences to develop your essay. You should write at least 150 words but no more than 200 words.');
INSERT INTO `writing` VALUES (20230602, 'Directions: For this part, you are allowed 30 minutes to write an essay that begins with the sentence “When faced with differing opinions, we should try to reach agreement through friendly discussion and reasonable argument.” You can make comments, cite examples or use your personal experiences to develop your essay. You should write at least 150 words but no more than 200 words');
INSERT INTO `writing` VALUES (20230603, 'For this part, you are allowed 30 minutes to write an essay that begins with the sentence “It is widely accepted that an important goal of education is to help students learn how to learn.” You can make comments, cite examples or use your personal experiences to develop your essay. You should write at least 150 words but no more than 200 words');

SET FOREIGN_KEY_CHECKS = 1;
