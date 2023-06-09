INSERT INTO post(title, content, date_created) 
VALUES("Healthy Snacks", "Discover a range of delicious and nutritious snacks that will satisfy your cravings while keeping you on track with your health goals. From homemade energy balls to veggie chips, we've got you covered with these guilt-free treats.", "2020-03-14"),
("DIY Home Decor", "Get inspired to transform your living space with these easy do-it-yourself home decor ideas. From handmade wall art to repurposed furniture, learn how to add a personal touch to your home without breaking the bank.", "2021-06-04"),
("Travel Tips","Planning your next adventure? Check out these travel tips for a smooth and unforgettable journey. From packing hacks to budget-friendly accommodations, make the most of your trip with these handy suggestions.","2022-07-08"),
("Productivity Hacks","Boost your productivity with these simple yet effective hacks. From time management techniques to organization tips, learn how to maximize your efficiency and accomplish more in less time.","2023-01-01"),
("Beginner's Guide","New to a certain subject or hobby? This beginner's guide has got you covered. Whether it's photography, cooking, or coding, get started on the right foot with these easy-to-follow tips and tricks.","2023-02-12"),
("Mindfulness Tips","Discover the power of mindfulness with these practical tips. Learn how to be present in the moment, reduce stress, and enhance your overall well-being. Start incorporating mindfulness into your daily life today.","2019-10-15"),
("Fashion Essentials","Stay stylish with these must-have fashion essentials. From timeless wardrobe staples to trendy accessories, build a versatile and fashionable closet that reflects your personal style.","2020-01-29"),
("Budget Travel","Explore the world on a budget with these money-saving travel tips. From finding cheap flights to affordable accommodations, learn how to make your travel dreams a reality without breaking the bank.","2022-05-05"),
("Digital Marketing","Dive into the world of digital marketing with these valuable insights and strategies. Whether you're a beginner or an experienced professional, stay ahead of the game with these expert tips.","2023-05-29"),
("Self-Care Tips","Prioritize self-care with these practical and rejuvenating tips. From creating a relaxing spa day at home to practicing mindfulness, learn how to take care of yourself and nurture your well-being.","2021-11-24");

INSERT INTO post_view(post_id, date_created) VALUES(3, '2019-2-2'),
(3, '2021-12-4'),
(7, '2019-10-3'),
(1, '2020-11-14'),
(6, '2020-11-29'),
(1, '2021-3-13'),
(6, '2022-3-5'),
(3, '2021-7-12'),
(1, '2018-12-25'),
(4, '2022-6-1'),
(6, '2019-12-6'),
(9, '2022-3-20'),
(4, '2022-4-6'),
(4, '2022-10-1'),
(3, '2019-10-18'),
(3, '2022-3-25'),
(1, '2020-4-26'),
(2, '2019-2-14'),
(10, '2022-6-2'),
(10, '2018-4-11'),
(5, '2020-10-10'),
(1, '2018-4-27'),
(10, '2019-8-6'),
(1, '2018-7-6'),
(10, '2021-2-24'),
(8, '2019-12-28'),
(6, '2020-12-13'),
(9, '2019-12-26'),
(8, '2020-8-17'),
(2, '2018-1-6'),
(3, '2018-12-4'),
(7, '2020-12-23'),
(8, '2021-12-2'),
(1, '2018-8-9'),
(10, '2020-7-14'),
(2, '2018-9-21'),
(5, '2018-12-30'),
(9, '2020-6-2'),
(5, '2021-11-24'),
(3, '2019-10-8'),
(2, '2019-10-23'),
(3, '2021-12-2'),
(2, '2018-1-28'),
(2, '2022-1-30'),
(7, '2018-11-29'),
(7, '2018-10-16'),
(7, '2018-6-11'),
(7, '2022-4-22'),
(1, '2021-12-7'),
(1, '2021-8-29'),
(3, '2022-12-21'),
(1, '2022-5-9'),
(9, '2022-1-13'),
(4, '2020-7-21'),
(4, '2022-1-11'),
(9, '2022-4-16'),
(8, '2022-6-30'),
(6, '2021-5-18'),
(2, '2018-3-15'),
(9, '2022-12-19'),
(3, '2018-12-26'),
(2, '2019-12-5'),
(4, '2022-9-27'),
(9, '2019-2-5'),
(9, '2021-7-28'),
(10, '2021-6-27'),
(3, '2020-3-20'),
(2, '2020-11-1'),
(1, '2018-6-1'),
(5, '2021-9-26'),
(10, '2019-9-4'),
(1, '2018-9-21'),
(2, '2022-4-30'),
(9, '2021-6-19'),
(9, '2021-9-16'),
(3, '2022-8-19'),
(6, '2019-10-11'),
(7, '2020-1-27'),
(6, '2019-2-27'),
(7, '2019-11-5'),
(6, '2018-8-30'),
(9, '2021-10-8'),
(6, '2021-6-20'),
(4, '2020-9-29'),
(4, '2018-7-23'),
(4, '2022-12-4'),
(7, '2019-11-20'),
(10, '2018-9-22'),
(8, '2020-7-25'),
(10, '2021-6-25'),
(3, '2022-2-4'),
(3, '2022-2-23'),
(10, '2018-8-14'),
(10, '2018-7-14'),
(6, '2022-1-7'),
(7, '2022-11-11'),
(5, '2018-3-27'),
(4, '2021-7-14'),
(1, '2022-4-26'),
(1, '2022-6-17'),
(10, '2020-1-15');

SELECT p.title FROM post p INNER JOIN post_view pv ON p.id = pv.post_id GROUP BY p.id ORDER BY COUNT(pv.id) DESC LIMIT 3;

SELECT title, content FROM post ORDER BY date_created DESC LIMIT 5;

SELECT (SELECT COUNT(*) from post_view) / (SELECT COUNT(*) from post);