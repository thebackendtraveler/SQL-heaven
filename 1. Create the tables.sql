CREATE DATABASE `mnl_pizzaria`;

USE `mnl_pizzaria`;

/* We need to create the tables in the correct order so that we can establish the relationships properly.
Generally speaking, we want to start with all the attribute tables (the ones that can exist on their own).
We will use Auto-Incrementing primary keys as much as possible here.
*/

CREATE TABLE IF NOT EXISTS `item_type` (
	`id` INT AUTO_INCREMENT NOT NULL,
	`name` VARCHAR(45) DEFAULT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `diet_type` (
	`id` INT AUTO_INCREMENT NOT NULL,
	`name` VARCHAR(45) DEFAULT NULL,
	PRIMARY KEY (`id`)
);

/*Now that we have our two attribute tables (Item Type and Diet Type), we can create our recipe table
and establish the foreign key relationships to our attribute tables.*/

CREATE TABLE IF NOT EXISTS `recipe` (
	`id` INT AUTO_INCREMENT NOT NULL,
	`name` VARCHAR(45) DEFAULT NULL,
	`description` VARCHAR(255) DEFAULT NULL,
	`item_type_id` INT NOT NULL,
	`diet_type_id` INT NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`item_type_id`) REFERENCES item_type(id),
	FOREIGN KEY (`diet_type_id`) REFERENCES diet_type(id)
);

/* Create the ingredient table, ensuring cost is never null and that each ingredient has a unique name (help to prevent duplicate ingredients being created).*/
CREATE TABLE IF NOT EXISTS `ingredient` (
	`id` INT AUTO_INCREMENT NOT NULL,
	`name` VARCHAR(45) NOT NULL UNIQUE,
	`cost` INT NOT NULL,
	PRIMARY KEY (`id`)
);

/*Finally, we can create the table which will store the relationships between each recipe, its ingredients and the quantities of each ingredient. */
CREATE TABLE IF NOT EXISTS `recipe_ingredient` (
	`id` INT AUTO_INCREMENT NOT NULL,
	`recipe_id` INT NOT NULL,
	`ingredient_id` INT NOT NULL,
	`quantity` INT NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`recipe_id`) REFERENCES recipe(id),
	FOREIGN KEY (`ingredient_id`) REFERENCES ingredient(id)
);