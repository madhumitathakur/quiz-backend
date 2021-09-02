CREATE TABLE question
(
	id int PRIMARY KEY AUTO_INCREMENT,
	question varchar(255),
	answer_id int,
	marks int
);

INSERT INTO question(
	id,
	question,
	answer_id,
	marks
)
VALUES (1, "Who is the founder of ancient Olympic Games?", 4, 1),
	   (2, "Where were the first Olympic held?", 3 ,1),
	   (3, "What do the five rings on the Olympic symbol represent?", 2, 1 ),
	   (4, "At which of the following cities have the Olympic games NOT been held twice?", 4, 1),
	   (5, " In which year were the first modern Olympic Games held?", 2, 1),
	   (6, "Who of the following is known as the Father of Modern Olympics?", 2, 1),
	   (7," At which of these Olympic Games did Dhyanchand captain the gold medal winning Indian hockey team?", 4, 1),
	   (8, "Who of the following was the first female Olympic champion?", 2, 1),
	   (9, "Among the following Indians, who was the first to win an individual medal at the Olympics?", 1, 1),
	   (10, "Who of the following was the first person to complete the 100 m event in under 10 seconds?", 1, 1);


CREATE TABLE options
(
	id int PRIMARY KEY AUTO_INCREMENT,
	answer varchar(255),
	answer_id int,
	question_id int
);

INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (1, "Zeus",1,1),
	   (2, "Coroebus", 2, 1),
	   (3, "Apollo", 3, 1),
	   (4, "Hercales", 4, 1);
	   
INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (5, "Athens", 1, 2),
	   (6, "Antwerp", 2, 2),
	   (7, "Olympia", 3, 2),
	   (8, "Bercelona", 4, 2);
	   
INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (9, "the five oceans", 1, 3),
	   (10, "the five continents", 2, 3),
	   (11, "the five planets", 3, 3),
	   (12, "five Greek Gods", 4, 3);
	   
	   
	   
INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (13, "Athens", 1, 4),
	   (14, "Paris", 2, 4),
	   (15, "London", 3, 4),
	   (16, "Atlanta", 4, 4);
	   
INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (17, " 1900", 1,5),
	   (18, "1896", 2, 5),
	   (19, "1904", 3, 5),
	   (20, "1892", 4, 5);
	   
	   
INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (21, "Le Marqués de Samaranch", 1, 6),
	   (22, "Pierre de Coubertin", 2, 6),
	   (23, "Demetrius Vikelas", 3, 6),
	   (24, "Ferenc Kemény", 4, 6);
	   
	   
INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (25, "1956, Melbourne", 1, 7),
	   (26, "1948, London", 2, 7),
	   (27, "1928, Amsterdam", 3, 7),
	   (28, "1936, Berlin", 4, 7);
   
	   
INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (29, "Helen Jackson", 1, 8),
	   (30, "Charlotte Cooper", 2, 8),
	   (31, "Agnes Morton", 3, 8),
	   (32, "Louise Martin", 4, 8);
	   


INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (33, "K.D. Jadhav", 1, 9),
	   (34, "Leander Paes", 2, 9),
	   (35, "Rajyavardhan Singh Rathore", 3, 9),
	   (36, "Karnam Malleswari", 4, 9);



INSERT INTO options(
 	id,
 	answer,
 	answer_id,
 	question_id
)
VALUES (37, "Jim Hines", 1, 10),
	   (38, "Jesse Ownes", 2, 10),
	   (39, "Usain Bolt", 3, 10),
	   (40, "Ben Johnson", 4, 10);
	   