CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  department VARCHAR,
  price INTEGER,
  weight INTEGER
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  product_id INTEGER REFERENCES products(id),
  paid BOOLEAN
);
 
 
INSERT INTO users (first_name, last_name) 
VALUES 
  ('Iva', 'Lindgren'),
  ('Ignatius', 'Johns'),
  ('Jannie', 'Boehm'),
  ('Neal', 'Wehner'),
  ('Mikayla', 'Casper'),
  ('Patience', 'Stracke'),
  ('Josianne', 'Gerhold'),
  ('Kailee', 'Jacobson'),
  ('Marlen', 'Hickle'),
  ('Pansy', 'Daugherty'),
  ('Vinnie', 'Feest'),
  ('Cierra', 'Johns'),
  ('Violette', 'Heathcote'),
  ('Stan', 'Rath'),
  ('Neha', 'Hyatt'),
  ('Kaylah', 'Gleason'),
  ('Jacky', 'Hegmann'),
  ('Duane', 'Lockman'),
  ('Sonya', 'Marquardt'),
  ('Brenden', 'Streich'),
  ('Laurianne', 'Douglas'),
  ('Orlando', 'Kerluke'),
  ('Irma', 'Wintheiser'),
  ('Cletus', 'Schultz'),
  ('Jermaine', 'Langosh'),
  ('Alexanne', 'Dickens'),
  ('Garret', 'Williamson'),
  ('Max', 'Goodwin'),
  ('Tad', 'Wilderman'),
  ('Lindsay', 'Yost'),
  ('Elliot', 'Oberbrunner'),
  ('Brendan', 'Thompson'),
  ('Brennan', 'Auer'),
  ('Luigi', 'Johnston'),
  ('Garth', 'McLaughlin'),
  ('Ressie', 'Nikolaus'),
  ('Ruby', 'Turner'),
  ('Caden', 'Turcotte'),
  ('Armand', 'Kshlerin'),
  ('Albertha', 'Yundt'),
  ('Kathryn', 'Mueller'),
  ('Arely', 'McGlynn'),
  ('Lawrence', 'Casper'),
  ('Johathan', 'Kirlin'),
  ('Clara', 'Gerhold'),
  ('Miller', 'Feil'),
  ('Rosendo', 'Sawayn'),
  ('Sally', 'Mann'),
  ('Kennith', 'Hettinger'),
  ('Mathilde', 'Eichmann');
 
 
INSERT INTO products (name, department, price, weight)
VALUES
  ('Practical Fresh Shirt', 'Toys', 876.00, 3),
  ('Gorgeous Steel Towels', 'Outdoors', 412.00, 16),
  ('Rustic Plastic Bacon', 'Movies', 10.00, 6),
  ('Tasty Wooden Ball', 'Industrial', 796.00, 23),
  ('Fantastic Soft Fish', 'Tools', 10.00, 10),
  ('Gorgeous Concrete Towels', 'Grocery', 328.00, 11),
  ('Incredible Granite Mouse', 'Home', 989.00, 2),
  ('Gorgeous Rubber Ball', 'Books', 801.00, 4),
  ('Generic Fresh Computer', 'Toys', 926.00, 11),
  ('Unbranded Cotton Shoes', 'Sports', 298.00, 29),
  ('Fantastic Metal Chair', 'Home', 887.00, 9),
  ('Ergonomic Metal Pizza', 'Jewelery', 463.00, 16),
  ('Ergonomic Steel Car', 'Outdoors', 53.00, 20),
  ('Licensed Steel Car', 'Movies', 664.00, 10),
  ('Tasty Metal Cheese', 'Beauty', 650.00, 17),
  ('Handcrafted Rubber Towels', 'Baby', 945.00, 6),
  ('Intelligent Metal Mouse', 'Music', 509.00, 7),
  ('Awesome Cotton Salad', 'Shoes', 211.00, 16),
  ('Unbranded Plastic Pizza', 'Industrial', 72.00, 9),
  ('Practical Concrete Sausages', 'Industrial', 408.00, 9),
  ('Handcrafted Frozen Chair', 'Garden', 411.00, 16),
  ('Generic Cotton Pizza', 'Home', 555.00, 4),
  ('Intelligent Cotton Chips', 'Books', 280.00, 21),
  ('Small Plastic Soap', 'Beauty', 345.00, 1),
  ('Small Wooden Pizza', 'Garden', 307.00, 7),
  ('Rustic Rubber Soap', 'Beauty', 127.00, 2),
  ('Handmade Plastic Gloves', 'Sports', 301.00, 10),
  ('Unbranded Cotton Tuna', 'Jewelery', 633.00, 10),
  ('Practical Plastic Towels', 'Games', 379.00, 20),
  ('Practical Wooden Shoes', 'Computers', 112.00, 20),
  ('Sleek Granite Towels', 'Toys', 797.00, 30),
  ('Practical Rubber Mouse', 'Garden', 948.00, 15),
  ('Handcrafted Concrete Bike', 'Toys', 748.00, 10),
  ('Rustic Granite Chair', 'Electronics', 76.00, 8),
  ('Unbranded Wooden Ball', 'Sports', 384.00, 2),
  ('Licensed Frozen Chair', 'Books', 417.00, 9),
  ('Handmade Rubber Chicken', 'Movies', 959.00, 22),
  ('Awesome Fresh Keyboard', 'Home', 982.00, 30),
  ('Generic Fresh Hat', 'Baby', 791.00, 25),
  ('Licensed Plastic Keyboard', 'Garden', 433.00, 17),
  ('Fantastic Steel Chicken', 'Computers', 472.00, 17),
  ('Tasty Rubber Soap', 'Tools', 823.00, 6),
  ('Refined Wooden Mouse', 'Music', 842.00, 15),
  ('Gorgeous Steel Cheese', 'Movies', 548.00, 9),
  ('Fantastic Fresh Sausages', 'Industrial', 360.00, 26),
  ('Incredible Granite Bacon', 'Music', 982.00, 9),
  ('Handcrafted Fresh Sausages', 'Games', 231.00, 21),
  ('Intelligent Fresh Ball', 'Home', 619.00, 9),
  ('Handmade Plastic Fish', 'Games', 312.00, 23),
  ('Handcrafted Cotton Bacon', 'Kids', 480.00, 12),
  ('Sleek Rubber Shoes', 'Jewelery', 597.00, 6),
  ('Handmade Granite Fish', 'Electronics', 166.00, 14),
  ('Practical Wooden Chips', 'Toys', 707.00, 4),
  ('Handmade Rubber Salad', 'Outdoors', 232.00, 13),
  ('Unbranded Granite Shirt', 'Music', 519.00, 13),
  ('Gorgeous Plastic Sausages', 'Movies', 556.00, 2),
  ('Awesome Steel Mouse', 'Clothing', 175.00, 5),
  ('Licensed Steel Towels', 'Industrial', 939.00, 23),
  ('Handcrafted Fresh Bacon', 'Sports', 387.00, 29),
  ('Fantastic Cotton Shirt', 'Health', 496.00, 24),
  ('Licensed Cotton Sausages', 'Sports', 751.00, 27),
  ('Ergonomic Fresh Pants', 'Baby', 638.00, 30),
  ('Handcrafted Frozen Shoes', 'Sports', 84.00, 1),
  ('Small Concrete Pants', 'Health', 487.00, 19),
  ('Intelligent Plastic Car', 'Shoes', 628.00, 13),
  ('Intelligent Cotton Chips', 'Baby', 521.00, 22),
  ('Licensed Steel Towels', 'Health', 132.00, 11),
  ('Sleek Soft Computer', 'Movies', 619.00, 7),
  ('Fantastic Fresh Shirt', 'Tools', 643.00, 17),
  ('Generic Fresh Shoes', 'Kids', 628.00, 29),
  ('Sleek Fresh Gloves', 'Clothing', 919.00, 15),
  ('Gorgeous Rubber Keyboard', 'Baby', 32.00, 8),
  ('Handcrafted Soft Chicken', 'Kids', 720.00, 8),
  ('Small Metal Mouse', 'Baby', 60.00, 6),
  ('Fantastic Fresh Chips', 'Home', 966.00, 14),
  ('Awesome Metal Pants', 'Shoes', 460.00, 8),
  ('Handcrafted Frozen Chips', 'Shoes', 564.00, 19),
  ('Gorgeous Plastic Gloves', 'Movies', 341.00, 14),
  ('Rustic Metal Salad', 'Health', 240.00, 12),
  ('Small Fresh Gloves', 'Garden', 991.00, 8),
  ('Small Fresh Bacon', 'Baby', 473.00, 10),
  ('Refined Rubber Tuna', 'Garden', 1.00, 21),
  ('Small Metal Chips', 'Home', 161.00, 27),
  ('Unbranded Fresh Tuna', 'Home', 657.00, 9),
  ('Refined Metal Hat', 'Industrial', 309.00, 21),
  ('Refined Concrete Pants', 'Sports', 724.00, 2),
  ('Licensed Plastic Salad', 'Beauty', 834.00, 5),
  ('Licensed Soft Chicken', 'Toys', 425.00, 13),
  ('Fantastic Granite Soap', 'Home', 666.00, 29),
  ('Awesome Steel Towels', 'Baby', 552.00, 10),
  ('Ergonomic Wooden Tuna', 'Garden', 778.00, 29),
  ('Fantastic Wooden Chair', 'Jewelery', 145.00, 26),
  ('Tasty Granite Chips', 'Home', 37.00, 9),
  ('Tasty Rubber Table', 'Computers', 525.00, 29),
  ('Ergonomic Granite Shoes', 'Beauty', 48.00, 12),
  ('Refined Metal Tuna', 'Jewelery', 708.00, 23),
  ('Intelligent Rubber Chicken', 'Industrial', 1.00, 11),
  ('Practical Steel Shoes', 'Toys', 947.00, 14),
  ('Handcrafted Rubber Shoes', 'Sports', 275.00, 6),
  ('Intelligent Cotton Gloves', 'Home', 447.00, 29);
 
 
INSERT INTO orders (user_id, product_id, paid)
VALUES
  (41, 100, true),
  (27, 99, false),
  (50, 72, false),
  (24, 81, true),
  (24, 54, true),
  (1, 6, true),
  (17, 25, false),
  (8, 5, true),
  (34, 3, true),
  (41, 19, true),
  (15, 23, true),
  (23, 60, true),
  (31, 44, true),
  (46, 34, false),
  (11, 76, false),
  (44, 74, true),
  (18, 58, true),
  (40, 1, false),
  (41, 22, true),
  (10, 20, false),
  (50, 49, false),
  (14, 30, true),
  (4, 38, false),
  (42, 34, true),
  (22, 16, false),
  (4, 89, true),
  (49, 18, true),
  (35, 30, true),
  (7, 59, false),
  (31, 25, true),
  (43, 16, false),
  (18, 27, false),
  (47, 91, true),
  (32, 22, false),
  (5, 11, false),
  (14, 68, false),
  (19, 8, false),
  (43, 74, true),
  (29, 1, false),
  (7, 6, true),
  (16, 3, true),
  (29, 15, false),
  (25, 80, true),
  (5, 15, true),
  (23, 9, true),
  (20, 28, false),
  (18, 21, true),
  (34, 27, false),
  (33, 44, true),
  (26, 18, false),
  (10, 42, false),
  (49, 47, true),
  (4, 87, true),
  (8, 82, true),
  (32, 96, true),
  (3, 88, true),
  (2, 8, true),
  (49, 25, false),
  (3, 34, true),
  (38, 81, false),
  (41, 69, true),
  (50, 19, true),
  (44, 44, false),
  (20, 52, false),
  (16, 44, false),
  (50, 62, false),
  (47, 4, false),
  (4, 2, true),
  (36, 56, true),
  (49, 18, true),
  (20, 63, true),
  (18, 44, true),
  (30, 69, true),
  (33, 52, true),
  (18, 1, true),
  (39, 94, true),
  (39, 53, true),
  (31, 75, true),
  (39, 64, false),
  (33, 46, false),
  (16, 43, false),
  (41, 41, false),
  (33, 77, true),
  (8, 95, false),
  (16, 75, false),
  (4, 12, false),
  (14, 4, true),
  (31, 90, true),
  (30, 77, true),
  (44, 53, false),
  (34, 70, true),
  (23, 76, false),
  (22, 87, false),
  (45, 15, true),
  (14, 15, true),
  (6, 11, true),
  (3, 84, false),
  (25, 89, true),
  (5, 66, true),
  (40, 70, false),
  (10, 95, true),
  (22, 39, true),
  (13, 13, false),
  (12, 46, false),
  (28, 77, false),
  (14, 67, false),
  (11, 52, false),
  (11, 6, false),
  (32, 17, true),
  (40, 79, true),
  (5, 84, true),
  (38, 67, false),
  (45, 8, false),
  (21, 90, true),
  (38, 9, true),
  (23, 33, false),
  (14, 32, false),
  (47, 71, false),
  (15, 63, true),
  (12, 13, true),
  (32, 76, true),
  (17, 23, true),
  (48, 20, false),
  (25, 29, true),
  (20, 18, true),
  (49, 6, true),
  (28, 97, false),
  (2, 29, true),
  (36, 96, false),
  (13, 99, false),
  (36, 70, false),
  (34, 38, true),
  (15, 11, false),
  (19, 17, false),
  (32, 73, true),
  (45, 27, true),
  (34, 86, false),
  (27, 68, true),
  (49, 90, false),
  (10, 60, true),
  (31, 84, false),
  (35, 83, false),
  (28, 43, false),
  (39, 95, false),
  (11, 53, true),
  (8, 89, true),
  (23, 7, true),
  (39, 42, false),
  (41, 60, false),
  (25, 18, true),
  (38, 88, false),
  (47, 69, true),
  (15, 13, true),
  (37, 35, false),
  (37, 52, true),
  (12, 80, false),
  (39, 40, true),
  (28, 23, false),
  (3, 58, false),
  (33, 92, false),
  (38, 51, true),
  (18, 15, false),
  (25, 57, false),
  (46, 28, false),
  (42, 49, true),
  (31, 5, true),
  (37, 29, false),
  (4, 64, true),
  (23, 12, false),
  (37, 93, true),
  (13, 46, true),
  (4, 95, false),
  (44, 59, true),
  (39, 72, false),
  (28, 44, true),
  (3, 55, false),
  (17, 36, false),
  (7, 40, false),
  (4, 69, true),
  (39, 22, true),
  (25, 2, false),
  (21, 88, false),
  (13, 1, true),
  (34, 76, false),
  (9, 19, true),
  (43, 95, false),
  (42, 16, false),
  (50, 35, false),
  (7, 61, false),
  (16, 17, true),
  (45, 25, true),
  (36, 53, true),
  (5, 85, false),
  (1, 27, true),
  (29, 29, true),
  (14, 41, true),
  (1, 95, true),
  (2, 1, true),
  (43, 63, true),
  (6, 36, true),
  (34, 26, true),
  (35, 52, false),
  (14, 92, true),
  (18, 100, true),
  (13, 17, true),
  (25, 69, false),
  (45, 3, false),
  (37, 85, false),
  (44, 87, false),
  (36, 1, true),
  (15, 68, false),
  (12, 30, true),
  (22, 41, false),
  (16, 26, true),
  (34, 46, false),
  (33, 33, false),
  (31, 31, false),
  (41, 75, true),
  (32, 66, false),
  (11, 30, true),
  (29, 20, false),
  (16, 13, false),
  (39, 79, false),
  (45, 94, false),
  (9, 96, false),
  (36, 47, false),
  (2, 34, true),
  (43, 38, true),
  (27, 6, true),
  (19, 55, true),
  (29, 48, false),
  (45, 85, false),
  (18, 38, false),
  (1, 15, true),
  (13, 25, false),
  (14, 10, false),
  (31, 28, false),
  (20, 85, false),
  (18, 88, true),
  (8, 8, false),
  (24, 58, false),
  (24, 48, true),
  (24, 68, false),
  (29, 87, true),
  (6, 36, true),
  (46, 51, true),
  (20, 21, false),
  (18, 40, true),
  (36, 12, false),
  (22, 54, true),
  (22, 10, true),
  (20, 13, false),
  (2, 33, true),
  (20, 46, true),
  (48, 37, true),
  (41, 2, false),
  (2, 53, true),
  (45, 87, false),
  (5, 35, false),
  (28, 46, false),
  (42, 79, true),
  (27, 45, false),
  (11, 21, false),
  (36, 96, false),
  (35, 59, true),
  (30, 92, true),
  (17, 28, false),
  (28, 28, true),
  (23, 43, true),
  (44, 24, false),
  (26, 98, false),
  (36, 51, false),
  (1, 66, false),
  (47, 92, false),
  (1, 36, false),
  (9, 8, false),
  (42, 97, true),
  (32, 38, false),
  (17, 60, true),
  (14, 24, true),
  (43, 14, true),
  (47, 21, true),
  (38, 46, true),
  (22, 75, false),
  (19, 47, true),
  (10, 37, true),
  (9, 11, true),
  (44, 56, true),
  (50, 6, true),
  (21, 99, false),
  (34, 4, true),
  (5, 37, false),
  (8, 11, false),
  (12, 66, false),
  (21, 74, true),
  (38, 53, false),
  (24, 54, false),
  (33, 85, true),
  (9, 57, false),
  (20, 71, true),
  (21, 4, false),
  (38, 96, false),
  (35, 50, false),
  (16, 89, false),
  (45, 95, true),
  (33, 92, false),
  (41, 87, false),
  (25, 15, false),
  (42, 86, false),
  (2, 68, false),
  (5, 85, true),
  (42, 43, false),
  (15, 8, true),
  (13, 3, true),
  (24, 86, false),
  (34, 66, false),
  (35, 98, false),
  (48, 90, false),
  (34, 97, false),
  (48, 36, true),
  (21, 31, false),
  (40, 93, false),
  (26, 89, true),
  (47, 15, true),
  (27, 24, true),
  (30, 34, false),
  (44, 23, true),
  (17, 54, true),
  (31, 42, false),
  (42, 32, false),
  (20, 55, true),
  (2, 80, true),
  (30, 70, true),
  (24, 18, true),
  (5, 96, false),
  (50, 31, false),
  (35, 98, true),
  (41, 30, false),
  (48, 22, true),
  (19, 31, false),
  (34, 33, false),
  (19, 58, false),
  (26, 72, false),
  (34, 59, true),
  (8, 39, true),
  (40, 73, false),
  (44, 56, false),
  (36, 91, true),
  (33, 56, false),
  (36, 90, true),
  (28, 22, false),
  (49, 70, true),
  (19, 14, true),
  (39, 59, false),
  (17, 39, false),
  (40, 72, true),
  (21, 96, false),
  (3, 66, true),
  (23, 6, true),
  (6, 6, false),
  (18, 52, true),
  (48, 87, true),
  (40, 83, true),
  (23, 10, true),
  (21, 6, false),
  (24, 63, true),
  (18, 67, false),
  (35, 47, false),
  (26, 62, false),
  (14, 37, false),
  (9, 51, false),
  (1, 51, true),
  (35, 29, false),
  (49, 66, true),
  (45, 47, false),
  (26, 52, false),
  (31, 60, false),
  (4, 89, false),
  (43, 46, true),
  (16, 23, false),
  (37, 97, true),
  (47, 70, false),
  (22, 88, false),
  (21, 45, true),
  (46, 25, true),
  (36, 80, true),
  (42, 20, true),
  (14, 5, false),
  (10, 65, false),
  (14, 30, false),
  (1, 37, false),
  (2, 22, true),
  (41, 3, true),
  (47, 17, true),
  (34, 50, true),
  (23, 60, false),
  (13, 29, true),
  (18, 16, true),
  (23, 91, true),
  (46, 68, false),
  (3, 87, false),
  (31, 52, false),
  (49, 23, false),
  (50, 75, true),
  (20, 43, true),
  (13, 100, false),
  (14, 6, false),
  (19, 99, true),
  (45, 82, true),
  (41, 66, true),
  (9, 39, true),
  (18, 41, true),
  (47, 17, false),
  (25, 100, true),
  (49, 57, false),
  (41, 15, false),
  (22, 41, false),
  (15, 1, true),
  (29, 96, true),
  (2, 78, true),
  (4, 87, true),
  (22, 99, true),
  (41, 7, false),
  (6, 98, true),
  (41, 20, false),
  (25, 17, false),
  (21, 54, true),
  (48, 64, true),
  (4, 29, false),
  (46, 98, true),
  (23, 66, true),
  (35, 64, true),
  (37, 98, false),
  (30, 84, false),
  (8, 24, false),
  (12, 56, true),
  (7, 23, true),
  (25, 31, true),
  (25, 46, false),
  (49, 80, false),
  (29, 97, false),
  (30, 60, true),
  (50, 37, true),
  (42, 48, false),
  (44, 24, true),
  (34, 93, true),
  (7, 44, true),
  (34, 13, true),
  (37, 47, false),
  (40, 12, false),
  (43, 76, true),
  (41, 2, false),
  (12, 22, true),
  (2, 75, true),
  (19, 18, false),
  (31, 39, true),
  (20, 72, true),
  (25, 15, false),
  (42, 34, false),
  (33, 13, false),
  (40, 8, true),
  (5, 33, true),
  (44, 28, true),
  (29, 5, true),
  (37, 88, false),
  (44, 61, false),
  (1, 57, false),
  (39, 28, true),
  (25, 88, false),
  (47, 52, false),
  (1, 42, false),
  (26, 97, true),
  (29, 24, false),
  (19, 48, true),
  (5, 60, true),
  (45, 74, true),
  (25, 97, true),
  (37, 71, false),
  (30, 18, false),
  (7, 6, true),
  (38, 9, true),
  (36, 56, true),
  (34, 17, true),
  (19, 90, true),
  (7, 16, true),
  (6, 43, true),
  (15, 22, false),
  (1, 60, true),
  (9, 65, true),
  (35, 21, true),
  (18, 62, false),
  (1, 36, false),
  (30, 26, false),
  (12, 82, false),
  (34, 30, false),
  (18, 86, true),
  (12, 77, true),
  (12, 37, false),
  (31, 12, false),
  (6, 28, false),
  (13, 68, false),
  (41, 81, true),
  (6, 87, false),
  (21, 10, false),
  (28, 53, true),
  (30, 22, false),
  (47, 24, false),
  (22, 84, false),
  (21, 88, false),
  (39, 81, true),
  (42, 15, false),
  (25, 31, true),
  (1, 6, false),
  (11, 82, true),
  (8, 64, false),
  (50, 16, true),
  (17, 9, false),
  (41, 36, true),
  (23, 18, true),
  (32, 64, true),
  (2, 73, true),
  (24, 52, true),
  (22, 12, true),
  (17, 32, true),
  (32, 76, true),
  (20, 95, false),
  (36, 33, true),
  (18, 52, false),
  (24, 34, true),
  (21, 48, false),
  (9, 65, false),
  (7, 67, true),
  (22, 54, false),
  (18, 40, false),
  (6, 11, true),
  (29, 34, true),
  (39, 11, true),
  (16, 60, false),
  (19, 11, false),
  (31, 38, false),
  (18, 58, true),
  (7, 16, false),
  (12, 85, false),
  (32, 95, false),
  (24, 45, false),
  (50, 80, false),
  (5, 66, true),
  (27, 56, false),
  (36, 95, false),
  (3, 32, true);