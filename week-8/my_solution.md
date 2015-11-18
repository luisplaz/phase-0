-- 1. Select all data for all states.

SELECT * FROM states;

-- 2. Select all data for all regions.

SELECT * FROM regions;

-- 3. Select the state_name and population for all states.

SELECT state_name,population FROM states;

-- 4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.

SELECT state_name,population FROM states
ORDER BY population DESC;

-- 5. Select the state_name for the states in region 7.

SELECT state_name FROM states
WHERE region_id = 7;

-- 6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.

SELECT state_name,population_density FROM states
WHERE population_density > 50
ORDER BY population_density ASC;

-- 7. Select the state_name for states with a population between 1 million and 1.5 million people.

SELECT state_name FROM states 
WHERE population
BETWEEN 1000000 AND 1500000;

-- 8. Select the state_name and region_id for states ordered by region in ascending order.

SELECT state_name,region_id FROM states 
ORDER BY region_id ASC;

-- 9. Select the region_name for the regions with "Central" in the name.

SELECT region_name FROM regions
WHERE region_name LIKE '%Central';

-- 10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).

SELECT region_name, state_name FROM regions
JOIN states ON
  regions.id = states.region_id
 ORDER BY region_id ASC;


![Alt text](/week-8/schema.png)

 -- Reflection

-- What are databases for?

-- Databases are used to store information in a manner that is easy to access and manage.

-- What is a one-to-many relationship?

-- A one-to-many relathionship refers to that where one element can be linked to a mutliple elements of another nature.
-- The example in the videos refers to one person owning a variety of cars , so one person to many cars relationship.

-- What is a primary key? What is a foreign key? How can you determine which is which?

-- A primary key is a unique key used to identify an element, a foreign key is this same key used in another group of data to link
-- that data or set of data to the initial instance of the element.

-- How can you select information out of a SQL database? What are some general guidelines for that?

-- To select information from a SQL database we need to know the column names and the table name so we can referencing what 
-- we are asking to be selected. We use the SELECT "column_name" FROM "table_name".
