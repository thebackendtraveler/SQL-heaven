USE `mnl_pizzaria`;

/* We need to populate our tables in the correct order to enforce referencial integrity with our relationships.
Enforcing referential integrity means that the values in one table must exist before they can be used (referenced) in another table.
*/

/* Populate Item Type */
INSERT INTO `item_type`
(`name`)
VALUES
('Starter'),
('Pizza'),
('Pasta'),
('Other');


/* Populate Diet Type */
INSERT INTO `diet_type`
(`name`)
VALUES
('Vegetarian'),
('Omnivore'),
('Carnivore'),
('Pescatarian'),
('Other');

/* Now that we have data in our attribute (dependancy) tables we can populate the recipe table with those dependancies. */
INSERT INTO `recipe`
(`name`,
`description`,
`item_type_id`,
`diet_type_id`)
VALUES
('Margarita','A simple but elegant pizza.',2,1),
('Tagliatelle alla Bolognese','A rich tomato sauce with beef meatballs served on Tagliatelle and topped with mozarella cheese.',3,2),
('Napoletana','A vibrant italian pizza which blends the most basic italian ingredients into an exquisite dish.',2,1),
('Alla Pala','A beautiful pan pizza loaded with prosciutto ham, cherry tomatoes and a generous sprinkling of parmesan cheese and mozarella cheese.',2,2),
('Tonda Romana','The meatlovers dream, barbecue infused beef topped with prosciutto ham and mozarella cheese.',2,3),
('Arrabbiata','A spicy, filling pasta dish with flavours from the sea.',3,4),
('Al Taglio','A spicy take on Italian cuizine, not for the feint hearted.',3,2),
('Focaccia','A garlic infused pizza bread baked to perfection.',1,1),
('Frites','Golden Brown Italian fries.',1,1),
('Tomato Soup','A rich and creamy tomato soup made with love.',1,1),
('Salad','A wonderful way to start your meal, full of fibre and flavour.',1,1);


/* Populate the ingredients table. */
INSERT INTO `ingredient`
(`name`,
`cost`)
VALUES
('dough',5),
('tomato sauce',2),
('cherry tomato',1),
('mozarella cheese',2),
('pesto',1),
('tagliatelle',4),
('meatball',7),
('olive oil',1),
('black pepper',1),
('basil leaves',1),
('prosciutto ham',6),
('parmesan cheese',2),
('olives',1),
('muscles',5),
('cod',5),
('salami',6),
('eggplant',2),
('pine nuts',2),
('red peppers',2),
('barbeque sauce',3),
('linguini',4),
('garlic',1),
('potato',2),
('salt',1),
('cream',2),
('lettuce',1),
('onion',1),
('feta cheese',2),
('chilli flakes',1);


/* Now that we have data in our ingredient (dependancy) table we can populate the recipe_ingredients table to create our recipes. */
INSERT INTO `mnl_pizzaria`.`recipe_ingredient`
(`recipe_id`,
`ingredient_id`,
`quantity`)
VALUES
(1,1,1),
(1,2,1),
(1,3,1),
(1,4,1),
(1,5,2),
(2,6,2),
(2,2,1),
(2,7,4),
(2,4,2),
(3,1,1),
(3,2,1),
(3,3,1),
(3,8,1),
(3,9,1),
(3,10,1),
(4,1,1),
(4,2,1),
(4,3,1),
(4,11,2),
(4,4,1),
(4,12,1),
(5,1,1),
(5,2,1),
(5,20,1),
(5,11,1),
(5,4,1),
(6,21,1),
(6,2,1),
(6,3,1),
(6,13,1),
(6,29,1),
(6,14,1),
(6,15,1),
(6,12,1),
(7,1,1),
(7,2,1),
(7,29,1),
(7,19,1),
(7,16,2),
(7,17,1),
(7,18,1),
(7,4,2),
(8,1,1),
(8,8,1),
(8,22,1),
(9,23,3),
(9,24,1),
(9,8,1),
(10,2,3),
(10,25,1),
(10,5,1),
(10,10,1),
(11,26,1),
(11,2,1),
(11,27,1),
(11,13,1),
(11,28,1),
(11,8,1);