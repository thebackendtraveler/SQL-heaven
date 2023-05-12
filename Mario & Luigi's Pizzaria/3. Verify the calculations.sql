USE `mnl_pizzaria`;

SELECT `recipe`.`name` AS `Recipe Name`,
`item_type`.`name` AS `Recipe Type`,
`diet_type`.`name` AS `Diet Type`,
`recipe`.`description` AS `Recipe Description`,
/*Group Concat to concatenate over multiple records. */
GROUP_CONCAT(`ingredient`.`name`) AS `Recipe Ingredients`,
/*Sum the product of cost and quantity across recipe ingredients. */
SUM(`ingredient`.`cost` * `recipe_ingredient`.`quantity`) AS `Total Cost`
FROM `recipe`
/*Join all of the tables to the recipe table through the recipe_ingredient table. */
INNER JOIN `item_type` ON `recipe`.`item_type_id` = `item_type`.`id`
INNER JOIN `diet_type` ON `recipe`.`diet_type_id` = `diet_type`.`id`
INNER JOIN `recipe_ingredient` ON `recipe_ingredient`.`recipe_id` = `recipe`.`id`
INNER JOIN `ingredient` ON `ingredient`.`id` = `recipe_ingredient`.`ingredient_id`
/*Keep the records grouped and ordered by the recipe_id. */
GROUP BY `recipe_ingredient`.`recipe_id`
ORDER BY `recipe_ingredient`.`recipe_id`;
