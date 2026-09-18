CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO categories (category_id, category_name) VALUES(
1, 'Electronics'),
(2, 'Apparel'),
(3, 'Groceries'),
(4, 'Home & Kitchen'),
(5, 'Beauty'),
(6, 'Sports'),
(7, 'Books'),
(8, 'Toys'),
(9, 'Footwear'),
(10, 'Furniture');

select * from categories;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(120) NOT NULL,
    category_id INT NOT NULL,
    unit_price NUMERIC(10,2),
    stock_quantity INT,
    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);

INSERT INTO products (product_id, product_name, category_id, unit_price, stock_quantity) VALUES
(1, 'Wireless Earbuds', 1, 9771.69, 12),
(2, 'Bluetooth Speaker', 1, 11252.48, 125),
(3, 'Smartwatch', 1, 3736.56, 377),
(4, 'Power Bank', 1, 1986.18, 379),
(5, 'USB-C Cable', 1, 13436.6, 44),
(6, 'Laptop Stand', 1, 9062.14, 16),
(7, 'Wireless Mouse', 1, 932.06, 111),
(8, 'Mechanical Keyboard', 1, 3873.58, 308),
(9, 'Webcam', 1, 884.77, 101),
(10, 'Phone Charger', 1, 10882.28, 359),
(11, 'Cotton T-Shirt', 2, 1771.34, 112),
(12, 'Denim Jeans', 2, 1512.86, 142),
(13, 'Formal Shirt', 2, 2485.46, 3),
(14, 'Hoodie', 2, 2348.78, 81),
(15, 'Jacket', 2, 2184.98, 174),
(16, 'Track Pants', 2, 1050.25, 110),
(17, 'Kurti', 2, 2884.48, 172),
(18, 'Saree', 2, 575.97, 194),
(19, 'Chinos', 2, 561.13, 433),
(20, 'Sweater', 2, 1228.68, 135),
(21, 'Basmati Rice 5kg', 3, 655.35, 373),
(22, 'Sunflower Oil 1L', 3, 394.57, 63),
(23, 'Wheat Flour 5kg', 3, 779.84, 193),
(24, 'Green Tea Pack', 3, 109.1, 150),
(25, 'Coffee Powder', 3, 672.05, 316),
(26, 'Sugar 1kg', 3, 714.09, 185),
(27, 'Toor Dal 1kg', 3, 483.01, 360),
(28, 'Salt 1kg', 3, 102.17, 338),
(29, 'Spice Mix Combo', 3, 220.92, 148),
(30, 'Breakfast Cereal', 3, 788.92, 437),
(31, 'Non-Stick Pan', 4, 1317.4, 51),
(32, 'Pressure Cooker', 4, 2024.61, 232),
(33, 'Mixer Grinder', 4, 3251.29, 186),
(34, 'Cutlery Set', 4, 980.74, 181),
(35, 'Storage Container Set', 4, 1205.63, 136),
(36, 'Water Bottle', 4, 3568.74, 349),
(37, 'Bed Sheet Set', 4, 3310.57, 311),
(38, 'Curtain Set', 4, 3247.9, 273),
(39, 'Table Lamp', 4, 3699.81, 83),
(40, 'Wall Clock', 4, 2418.85, 138),
(41, 'Face Wash', 5, 1980.62, 327),
(42, 'Moisturizer', 5, 1423.1, 112),
(43, 'Sunscreen SPF50', 5, 1416.54, 431),
(44, 'Lipstick', 5, 1571.38, 28),
(45, 'Shampoo', 5, 573.74, 16),
(46, 'Conditioner', 5, 1639.33, 205),
(47, 'Hair Serum', 5, 645.32, 108),
(48, 'Body Lotion', 5, 1839.3, 290),
(49, 'Perfume', 5, 1771.28, 161),
(50, 'Face Mask Pack', 5, 543.36, 255),
(51, 'Yoga Mat', 6, 3346.37, 468),
(52, 'Dumbbell Set', 6, 5249.96, 73),
(53, 'Cricket Bat', 6, 2339.58, 126),
(54, 'Football', 6, 6036.42, 275),
(55, 'Badminton Racket', 6, 2323.11, 299),
(56, 'Resistance Bands', 6, 3598.94, 298),
(57, 'Skipping Rope', 6, 3375.38, 112),
(58, 'Gym Gloves', 6, 7979.41, 70),
(59, 'Water Bottle Sipper', 6, 4223.35, 46),
(60, 'Running Shoes', 6, 6119.52, 440),
(61, 'Fiction Novel', 7, 187.72, 321),
(62, 'Self-Help Book', 7, 227.99, 348),
(63, 'Biography', 7, 437.73, 32),
(64, 'Business Strategy Book', 7, 407.81, 305),
(65, 'Cookbook', 7, 896.9, 270),
(66, 'Children''s Story Book', 7, 301.13, 283),
(67, 'Poetry Collection', 7, 788.62, 5),
(68, 'History Book', 7, 644.23, 58),
(69, 'Travel Guide', 7, 645.37, 274),
(70, 'Comic Book', 7, 700.7, 393),
(71, 'Building Blocks Set', 8, 1994.69, 57),
(72, 'Remote Control Car', 8, 1021.8, 80),
(73, 'Puzzle 500pc', 8, 1470.43, 488),
(74, 'Soft Toy Bear', 8, 2221.86, 368),
(75, 'Action Figure', 8, 937.49, 256),
(76, 'Board Game', 8, 2333.49, 259),
(77, 'Doll House', 8, 2755.36, 445),
(78, 'Toy Kitchen Set', 8, 1950.84, 430),
(79, 'Art & Craft Kit', 8, 1989.06, 311),
(80, 'Educational Tablet', 8, 756.95, 191),
(81, 'Running Shoes', 9, 3145.04, 276),
(82, 'Formal Shoes', 9, 3832.6, 472),
(83, 'Sandals', 9, 2309.27, 0),
(84, 'Sneakers', 9, 2556.2, 250),
(85, 'Flip Flops', 9, 470.12, 475),
(86, 'Loafers', 9, 1706.73, 425),
(87, 'Boots', 9, 3304.39, 122),
(88, 'Sports Shoes', 9, 608.53, 449),
(89, 'Slippers', 9, 2442.48, 40),
(90, 'Casual Shoes', 9, 708.35, 248),
(91, 'Study Table', 10, 20676.55, 500),
(92, 'Office Chair', 10, 19374.15, 392),
(93, 'Bookshelf', 10, 4455.37, 337),
(94, 'Bed Frame', 10, 12669.14, 281),
(95, 'Sofa Set', 10, 5380.48, 270),
(96, 'Dining Table', 10, 22002.18, 216),
(97, 'TV Unit', 10, 24162.53, 475),
(98, 'Shoe Rack', 10, 14173.46, 373),
(99, 'Wardrobe', 10, 17711.89, 365),
(100, 'Coffee Table', 10, 8825.33, 343);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    payment_method VARCHAR(20),
    delivery_city VARCHAR(50),
    order_status VARCHAR(20),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    city VARCHAR(50),
    state VARCHAR(50),
    registration_date DATE
);

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT,
    unit_price NUMERIC(10,2),
    discount NUMERIC(5,2),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

INSERT INTO customers (customer_id, first_name, last_name, gender, date_of_birth, email, phone, city, state, registration_date) VALUES
(1, 'Danielle', 'Johnson', 'Other', '1973-10-18', 'donaldgarcia@example.net', '9819600133', 'Howrah', 'West Bengal', '2022-07-07'),
(2, 'Anthony', 'Gonzalez', 'Other', '1991-10-16', 'lrobinson@example.com', '9026542351', 'Kochi', 'Kerala', '2021-04-12'),
(3, 'Colin', 'Abbott', 'Male', '1989-07-29', 'blairamanda@example.com', '9184959310', 'New Delhi', 'Delhi', '2022-12-25'),
(4, 'Kendra', 'Galloway', 'Female', '2001-08-26', 'jamesshawn@example.com', '9255341928', 'Salem', 'Tamil Nadu', '2023-03-09'),
(5, 'Frank', 'Gray', 'Other', '2008-02-04', 'gabriellecameron@example.org', '9305641395', 'New Delhi', 'Delhi', '2021-08-21'),
(6, 'Victor', 'Wilkerson', 'Male', '1991-06-15', 'josephwright@example.net', '9849696532', 'Bangalore', 'Karnataka', '2022-07-12'),
(7, 'Christopher', 'Williams', 'Male', '1965-11-10', 'laurahenderson@example.org', '9669784801', 'Bangalore', 'Karnataka', '2023-01-16'),
(8, 'Amanda', 'Adams', 'Female', '1991-05-13', 'cartereric@example.org', '9482814893', 'Mysore', 'Karnataka', '2021-06-17'),
(9, 'Kathryn', 'Ryan', 'Female', '1997-12-20', 'georgetracy@example.org', '9543039117', 'Kochi', 'Kerala', '2023-06-12'),
(10, 'Tiffany', 'Patel', 'Other', '1966-08-19', 'karroyo@example.com', '9896383465', 'Nashik', 'Maharashtra', '2022-04-25'),
(11, 'Zachary', 'Martinez', 'Male', '1971-05-20', 'andrew83@example.net', '9301031051', 'Trivandrum', 'Kerala', '2022-07-17'),
(12, 'Joshua', 'Washington', 'Male', '1986-06-24', 'esanchez@example.com', '9311656670', 'Bangalore', 'Karnataka', '2023-01-07'),
(13, 'Tracey', 'Garcia', 'Other', '1979-12-03', 'lauren13@example.org', '9387262473', 'Surat', 'Gujarat', '2023-08-15'),
(14, 'Charles', 'Morton', 'Female', '2001-09-06', 'williamsyvette@example.org', '9132677360', 'Surat', 'Gujarat', '2021-06-30'),
(15, 'Aaron', 'Myers', 'Other', '2005-01-25', 'smitchell@example.net', '9872343098', 'Chennai', 'Tamil Nadu', '2021-03-08'),
(16, 'Lee', 'Williams', 'Male', '1983-06-26', 'brianromero@example.org', '9191361939', 'Vadodara', 'Gujarat', '2022-10-13'),
(17, 'Christine', 'Barnes', 'Female', '1988-08-11', 'sarah35@example.org', '9462475107', 'Mysore', 'Karnataka', '2022-11-11'),
(18, 'Anna', 'Garcia', 'Male', '1986-05-27', 'david51@example.org', '9542784980', 'New Delhi', 'Delhi', '2023-01-01'),
(19, 'Angela', 'Huynh', 'Male', '1965-07-27', 'josephpreston@example.net', '9824493534', 'Ahmedabad', 'Gujarat', '2022-07-07'),
(20, 'John', 'Odonnell', 'Female', '1963-01-13', 'ccalderon@example.org', '9524278680', 'Kochi', 'Kerala', '2021-05-03'),
(21, 'Sierra', 'Vazquez', 'Male', '1967-10-02', 'davenportbrandi@example.org', '9620450533', 'Kozhikode', 'Kerala', '2022-12-31'),
(22, 'Michael', 'Castro', 'Male', '2002-08-01', 'sarayoung@example.org', '9260256342', 'Salem', 'Tamil Nadu', '2023-05-12'),
(23, 'Daniel', 'Brennan', 'Male', '2001-10-22', 'jamessellers@example.com', '9433036541', 'Mysore', 'Karnataka', '2023-11-24'),
(24, 'Joshua', 'May', 'Male', '1979-10-13', 'sheila14@example.org', '9940196556', 'Surat', 'Gujarat', '2022-10-26'),
(25, 'William', 'Cruz', 'Female', '1988-04-09', 'bradley60@example.net', '9835615951', 'New Delhi', 'Delhi', '2023-02-27'),
(26, 'Kevin', 'Parker', 'Male', '1980-03-13', 'jterry@example.org', '9366299468', 'Nashik', 'Maharashtra', '2023-07-02'),
(27, 'Kevin', 'Clark', 'Male', '1998-04-24', 'steven73@example.net', '9721489513', 'Surat', 'Gujarat', '2023-01-07'),
(28, 'Jeffrey', 'Gonzalez', 'Female', '1961-10-08', 'traceycarr@example.org', '9769367632', 'Warangal', 'Telangana', '2022-12-19'),
(29, 'Adam', 'Potter', 'Other', '1997-07-23', 'osbornejeffery@example.net', '9870831727', 'Kochi', 'Kerala', '2023-01-01'),
(30, 'Vanessa', 'Larson', 'Male', '2006-03-14', 'usalazar@example.net', '9687277434', 'Hyderabad', 'Telangana', '2023-04-18'),
(31, 'Adrienne', 'Sims', 'Male', '1973-10-11', 'reevesjimmy@example.com', '9581223623', 'Madurai', 'Tamil Nadu', '2021-03-12'),
(32, 'Rick', 'Daniels', 'Male', '1980-07-21', 'marissaprice@example.net', '9096705466', 'Salem', 'Tamil Nadu', '2022-08-12'),
(33, 'Jessica', 'Marsh', 'Female', '2003-09-10', 'brobinson@example.com', '9065627298', 'Mumbai', 'Maharashtra', '2021-01-30'),
(34, 'Phillip', 'Elliott', 'Other', '1961-11-24', 'dtaylor@example.org', '9046537556', 'Mysore', 'Karnataka', '2021-11-01'),
(35, 'Stephanie', 'Fisher', 'Male', '2000-09-02', 'ismith@example.org', '9531003309', 'Mysore', 'Karnataka', '2021-06-16'),
(36, 'David', 'Caldwell', 'Female', '1987-09-01', 'stevenscott@example.com', '9299124190', 'Mysore', 'Karnataka', '2023-10-14'),
(37, 'Barbara', 'Odonnell', 'Other', '1978-08-11', 'charlesvaughn@example.net', '9314919058', 'Salem', 'Tamil Nadu', '2022-04-14'),
(38, 'Mitchell', 'Hunter', 'Male', '1976-12-22', 'gshort@example.com', '9572628498', 'Vadodara', 'Gujarat', '2023-04-28'),
(39, 'Steven', 'Petersen', 'Other', '1989-01-13', 'melissa14@example.com', '9379965075', 'Howrah', 'West Bengal', '2021-07-18'),
(40, 'Jason', 'Salinas', 'Male', '1976-12-06', 'angela83@example.org', '9367837770', 'Kolkata', 'West Bengal', '2021-04-12'),
(41, 'Jeffrey', 'Holt', 'Female', '1975-04-18', 'thomas85@example.com', '9855744431', 'Ahmedabad', 'Gujarat', '2023-03-01'),
(42, 'Leslie', 'Newton', 'Other', '2006-03-28', 'jamesrodgers@example.com', '9989413435', 'Warangal', 'Telangana', '2021-07-16'),
(43, 'Alexis', 'Ferguson', 'Female', '1973-10-06', 'tranheidi@example.org', '9710947775', 'Bangalore', 'Karnataka', '2021-07-21'),
(44, 'Brett', 'Everett', 'Female', '1983-07-12', 'moralescharles@example.net', '9022941318', 'Bangalore', 'Karnataka', '2023-04-17'),
(45, 'Catherine', 'Gibbs', 'Other', '1971-06-06', 'chayes@example.com', '9964990913', 'New Delhi', 'Delhi', '2022-11-16'),
(46, 'Joseph', 'Miller', 'Male', '1972-02-10', 'moorericky@example.net', '9974034471', 'Kolkata', 'West Bengal', '2023-01-22'),
(47, 'Sandra', 'French', 'Male', '1990-08-07', 'ronaldstephens@example.net', '9242102499', 'Howrah', 'West Bengal', '2023-10-05'),
(48, 'Scott', 'Harrison', 'Male', '1975-03-12', 'gbender@example.net', '9771906594', 'Kozhikode', 'Kerala', '2021-01-29'),
(49, 'Jeremy', 'Craig', 'Other', '2001-11-25', 'keyemily@example.com', '9902787429', 'Hyderabad', 'Telangana', '2022-04-22'),
(50, 'Lisa', 'Costa', 'Other', '1983-02-27', 'qcook@example.org', '9256746807', 'Hyderabad', 'Telangana', '2021-04-07'),
(51, 'Johnny', 'Wilson', 'Male', '1997-09-05', 'sandovalamy@example.com', '9038597703', 'Hyderabad', 'Telangana', '2021-10-20'),
(52, 'David', 'Roberts', 'Male', '2002-11-17', 'omartinez@example.net', '9324808613', 'Nagpur', 'Maharashtra', '2023-12-22'),
(53, 'Robin', 'Murray', 'Female', '1966-03-27', 'tyronemoran@example.net', '9467737826', 'New Delhi', 'Delhi', '2021-07-28'),
(54, 'Carol', 'Francis', 'Male', '1967-02-24', 'hillkristy@example.com', '9584044997', 'Warangal', 'Telangana', '2023-08-05'),
(55, 'Sean', 'Washington', 'Female', '1976-07-21', 'ugibson@example.org', '9396360576', 'Chennai', 'Tamil Nadu', '2022-02-27'),
(56, 'Elizabeth', 'Hoover', 'Other', '2007-09-04', 'ihanna@example.net', '9951718702', 'Surat', 'Gujarat', '2022-03-25'),
(57, 'Diana', 'Moore', 'Male', '1983-02-18', 'matthew61@example.com', '9865780913', 'Madurai', 'Tamil Nadu', '2022-11-22'),
(58, 'Samantha', 'Bright', 'Male', '1996-06-10', 'wgood@example.net', '9172400504', 'Hyderabad', 'Telangana', '2022-01-28'),
(59, 'Ryan', 'Sanchez', 'Other', '1980-05-17', 'georgemiller@example.com', '9937923747', 'Kozhikode', 'Kerala', '2021-10-07'),
(60, 'Albert', 'Ballard', 'Other', '2003-11-09', 'charleslandry@example.net', '9464743671', 'Vadodara', 'Gujarat', '2021-09-17'),
(61, 'Ashley', 'Andrews', 'Male', '2008-03-30', 'andrew64@example.org', '9909743953', 'Bangalore', 'Karnataka', '2022-11-28'),
(62, 'Christine', 'Byrd', 'Other', '1995-03-15', 'courtneyberger@example.net', '9047095214', 'Mumbai', 'Maharashtra', '2021-12-24'),
(63, 'Robert', 'Gonzalez', 'Female', '1998-05-08', 'alyssa42@example.com', '9745171236', 'Nashik', 'Maharashtra', '2023-11-25'),
(64, 'Linda', 'Diaz', 'Male', '1998-07-20', 'bakerdavid@example.com', '9496513709', 'Madurai', 'Tamil Nadu', '2023-08-26'),
(65, 'Anna', 'Herman', 'Female', '1971-03-23', 'reidsteven@example.net', '9461200471', 'Madurai', 'Tamil Nadu', '2021-04-17'),
(66, 'Paige', 'Taylor', 'Male', '1982-05-16', 'umatthews@example.org', '9617964053', 'New Delhi', 'Delhi', '2022-05-01'),
(67, 'Stephanie', 'Foley', 'Female', '1965-05-13', 'amy50@example.com', '9431713900', 'Vadodara', 'Gujarat', '2023-05-11'),
(68, 'John', 'Martinez', 'Other', '1987-09-12', 'gallegosangela@example.net', '9335290422', 'Pune', 'Maharashtra', '2022-08-14'),
(69, 'Lauren', 'Rodriguez', 'Male', '2002-03-09', 'alexistyler@example.org', '9950240268', 'Nashik', 'Maharashtra', '2021-05-05'),
(70, 'Bryce', 'West', 'Male', '1977-12-22', 'hayesjeffrey@example.net', '9084700766', 'Nagpur', 'Maharashtra', '2023-01-21'),
(71, 'Tracy', 'Browning', 'Female', '1964-02-15', 'morriseddie@example.org', '9499856984', 'New Delhi', 'Delhi', '2022-05-12'),
(72, 'Catherine', 'Garcia', 'Male', '1994-04-13', 'russellbeasley@example.com', '9576615654', 'Hubli', 'Karnataka', '2022-02-14'),
(73, 'Elijah', 'Leblanc', 'Male', '1963-10-26', 'daviscolin@example.net', '9528098851', 'Kochi', 'Kerala', '2022-03-26'),
(74, 'Morgan', 'Pugh', 'Male', '1980-11-23', 'schmittcaroline@example.com', '9198327315', 'Trivandrum', 'Kerala', '2023-07-14'),
(75, 'Michael', 'Farmer', 'Female', '1988-02-26', 'xbruce@example.net', '9980940244', 'New Delhi', 'Delhi', '2023-10-06'),
(76, 'Michael', 'White', 'Male', '1967-06-22', 'vjones@example.net', '9018366752', 'New Delhi', 'Delhi', '2022-02-09'),
(77, 'Jennifer', 'Frank', 'Female', '1987-11-04', 'wareeric@example.net', '9014767976', 'Hyderabad', 'Telangana', '2021-10-26'),
(78, 'Kari', 'Wilson', 'Female', '1981-03-26', 'erika97@example.net', '9403690034', 'Howrah', 'West Bengal', '2023-11-01'),
(79, 'Katrina', 'Duran', 'Other', '1974-06-28', 'smithjulie@example.org', '9268388516', 'Kolkata', 'West Bengal', '2023-08-01'),
(80, 'Bobby', 'Smith', 'Male', '2004-10-23', 'barbara96@example.net', '9641605297', 'Hyderabad', 'Telangana', '2023-06-30'),
(81, 'Samantha', 'Davis', 'Other', '2001-02-17', 'ryanmorales@example.org', '9645352181', 'Hyderabad', 'Telangana', '2022-08-04'),
(82, 'James', 'Parsons', 'Male', '1977-06-13', 'joelthomas@example.org', '9292127799', 'Surat', 'Gujarat', '2022-05-07'),
(83, 'Sandra', 'Cunningham', 'Other', '1991-02-03', 'michelle52@example.com', '9177449058', 'Howrah', 'West Bengal', '2021-03-23'),
(84, 'Steven', 'Johnson', 'Other', '1978-04-18', 'chase19@example.net', '9867980793', 'Hubli', 'Karnataka', '2021-12-18'),
(85, 'Thomas', 'Hernandez', 'Other', '1963-07-26', 'shepherdmary@example.net', '9182037788', 'New Delhi', 'Delhi', '2022-10-30'),
(86, 'Michael', 'Hardin', 'Male', '1979-03-12', 'erika05@example.org', '9518644925', 'Ahmedabad', 'Gujarat', '2021-03-31'),
(87, 'Elizabeth', 'Rangel', 'Other', '1975-06-27', 'tanderson@example.org', '9486528168', 'New Delhi', 'Delhi', '2022-01-31'),
(88, 'Michael', 'White', 'Female', '1970-11-17', 'ilee@example.org', '9141888059', 'Mangalore', 'Karnataka', '2021-05-24'),
(89, 'Nicholas', 'Martin', 'Other', '2000-07-02', 'jenniferwilliams@example.com', '9379473834', 'Kolkata', 'West Bengal', '2023-11-23'),
(90, 'Kristen', 'Mckee', 'Other', '1969-11-28', 'smurray@example.com', '9886239240', 'Warangal', 'Telangana', '2022-12-03'),
(91, 'Morgan', 'Spencer', 'Other', '1965-07-09', 'mitchellkathryn@example.com', '9782613750', 'Surat', 'Gujarat', '2022-03-30'),
(92, 'Randy', 'Brooks', 'Female', '1979-02-18', 'brooksanthony@example.org', '9522047277', 'Hyderabad', 'Telangana', '2022-11-05'),
(93, 'Rebecca', 'Smith', 'Male', '1970-12-12', 'anaacosta@example.net', '9614341036', 'Vadodara', 'Gujarat', '2022-12-01'),
(94, 'Cindy', 'Brown', 'Female', '2000-10-03', 'bcarlson@example.net', '9893246095', 'Nagpur', 'Maharashtra', '2021-09-21'),
(95, 'Robert', 'Beck', 'Female', '1964-09-14', 'carlos88@example.net', '9880670654', 'Madurai', 'Tamil Nadu', '2023-03-29'),
(96, 'Michael', 'Jones', 'Female', '1972-03-03', 'ingramjill@example.com', '9205852772', 'New Delhi', 'Delhi', '2023-06-07'),
(97, 'Bryan', 'Parsons', 'Other', '1982-07-26', 'james30@example.com', '9486874034', 'Howrah', 'West Bengal', '2022-01-26'),
(98, 'Kimberly', 'Glenn', 'Female', '1976-07-12', 'lloydsamuel@example.com', '9765277584', 'Kozhikode', 'Kerala', '2023-05-27'),
(99, 'Jessica', 'Miller', 'Male', '1989-07-07', 'amymorris@example.org', '9544796275', 'Kozhikode', 'Kerala', '2022-05-05'),
(100, 'Jessica', 'Buck', 'Male', '1990-02-09', 'yhill@example.org', '9165820297', 'Mangalore', 'Karnataka', '2021-02-08');

INSERT INTO customers (customer_id, first_name, last_name, gender, date_of_birth, email, phone, city, state, registration_date) VALUES
(101, 'Carlos', 'Osborne', 'Other', '1978-03-07', 'cherring@example.net', '9275571928', 'Kolkata', 'West Bengal', '2022-02-06'),
(102, 'Leonard', 'Ramirez', 'Male', '2006-09-13', 'fitzgeraldvictor@example.com', '9814473947', 'Hyderabad', 'Telangana', '2021-08-07'),
(103, 'Derek', 'Jones', 'Male', '1968-11-19', 'zosborn@example.net', '9551884422', 'Mumbai', 'Maharashtra', '2023-05-19'),
(104, 'William', 'Martinez', 'Male', '1970-03-30', 'joelsnyder@example.com', '9895782911', 'New Delhi', 'Delhi', '2021-12-05'),
(105, 'Yvonne', 'Higgins', 'Other', '1985-10-30', 'emorrow@example.org', '9517785289', 'Hubli', 'Karnataka', '2021-07-19'),
(106, 'Tammy', 'Reynolds', 'Female', '2004-04-23', 'guerraapril@example.com', '9225358414', 'New Delhi', 'Delhi', '2021-08-03'),
(107, 'Stephanie', 'Hill', 'Female', '1990-08-06', 'shawgary@example.net', '9229959001', 'Ahmedabad', 'Gujarat', '2021-02-19'),
(108, 'Darlene', 'Ray', 'Male', '1991-11-07', 'bmontgomery@example.com', '9844736471', 'Chennai', 'Tamil Nadu', '2023-01-24'),
(109, 'Eric', 'Perry', 'Female', '1982-11-21', 'catherine55@example.net', '9562588153', 'New Delhi', 'Delhi', '2022-05-26'),
(110, 'Joseph', 'Wright', 'Other', '1965-03-30', 'sonia96@example.org', '9259532787', 'Kochi', 'Kerala', '2022-06-30'),
(111, 'Kyle', 'Johnson', 'Other', '2005-12-19', 'nlevy@example.net', '9500479748', 'New Delhi', 'Delhi', '2021-01-09'),
(112, 'Daniel', 'Anderson', 'Female', '1973-04-16', 'kathryn50@example.com', '9098358416', 'Nashik', 'Maharashtra', '2022-07-06'),
(113, 'Kathy', 'Ramirez', 'Other', '2008-01-27', 'andersoncolin@example.com', '9585239868', 'Howrah', 'West Bengal', '2021-02-14'),
(114, 'Benjamin', 'Reeves', 'Other', '1999-03-10', 'ghernandez@example.org', '9595269495', 'Vadodara', 'Gujarat', '2022-07-10'),
(115, 'William', 'Burns', 'Female', '1987-08-14', 'xcabrera@example.com', '9169409749', 'Nashik', 'Maharashtra', '2022-09-24'),
(116, 'Jennifer', 'Silva', 'Female', '1968-10-12', 'rhernandez@example.org', '9091307562', 'Hyderabad', 'Telangana', '2022-03-28'),
(117, 'James', 'Shaw', 'Other', '1989-12-12', 'vsalas@example.net', '9028385786', 'Warangal', 'Telangana', '2021-12-10'),
(118, 'Glen', 'Barr', 'Other', '1977-01-10', 'erica49@example.com', '9334843443', 'New Delhi', 'Delhi', '2023-01-26'),
(119, 'Tracy', 'Castillo', 'Female', '1987-07-02', 'keith98@example.com', '9652404157', 'Mangalore', 'Karnataka', '2022-12-19'),
(120, 'Julie', 'Lewis', 'Male', '2000-05-03', 'sarah42@example.org', '9993308330', 'Warangal', 'Telangana', '2021-04-20'),
(121, 'Mark', 'Kennedy', 'Female', '1993-04-17', 'adampierce@example.org', '9677345401', 'Mysore', 'Karnataka', '2022-12-15'),
(122, 'Jesse', 'Rodgers', 'Male', '2001-05-31', 'gentrygregory@example.org', '9067240049', 'New Delhi', 'Delhi', '2022-10-22'),
(123, 'Sarah', 'Rogers', 'Other', '1982-05-28', 'ismall@example.net', '9743152742', 'Pune', 'Maharashtra', '2021-01-16'),
(124, 'Matthew', 'Phillips', 'Male', '1992-12-19', 'gregorychase@example.com', '9685161227', 'Surat', 'Gujarat', '2021-12-21'),
(125, 'John', 'Green', 'Female', '1971-11-26', 'stephanie49@example.net', '9904530174', 'Trivandrum', 'Kerala', '2021-06-24'),
(126, 'Gina', 'Leblanc', 'Male', '2003-03-18', 'hannah45@example.net', '9332727956', 'New Delhi', 'Delhi', '2023-02-07'),
(127, 'Roberta', 'Todd', 'Female', '1999-02-03', 'kathleenbecker@example.net', '9187851910', 'Salem', 'Tamil Nadu', '2023-06-26'),
(128, 'Rebecca', 'Harris', 'Female', '1986-05-10', 'markmeyer@example.org', '9397187072', 'Kochi', 'Kerala', '2022-07-16'),
(129, 'Stephen', 'Brown', 'Female', '1982-10-16', 'jennifer64@example.org', '9391065180', 'Warangal', 'Telangana', '2023-10-20'),
(130, 'Cesar', 'Peck', 'Female', '1962-02-13', 'iwhite@example.net', '9656766182', 'New Delhi', 'Delhi', '2022-12-16'),
(131, 'Michael', 'White', 'Male', '1986-05-21', 'jessicawalker@example.org', '9047868633', 'Warangal', 'Telangana', '2022-05-19'),
(132, 'Eric', 'Lopez', 'Female', '2002-08-10', 'johnsondonna@example.net', '9033119079', 'Trichy', 'Tamil Nadu', '2023-01-06'),
(133, 'Monica', 'Sanchez', 'Female', '1962-09-20', 'nyoung@example.org', '9284395995', 'Vadodara', 'Gujarat', '2021-09-17'),
(134, 'Nancy', 'Odom', 'Male', '1985-08-13', 'dturner@example.net', '9926870568', 'Kochi', 'Kerala', '2021-12-15'),
(135, 'Robert', 'Hernandez', 'Other', '1978-09-01', 'oallen@example.com', '9270866882', 'Trichy', 'Tamil Nadu', '2022-03-01'),
(136, 'Jonathan', 'Rivera', 'Other', '1964-05-23', 'fboone@example.net', '9304699013', 'Chennai', 'Tamil Nadu', '2023-05-31'),
(137, 'Briana', 'Powers', 'Other', '1971-01-05', 'mollycook@example.org', '9331739363', 'Ahmedabad', 'Gujarat', '2022-08-27'),
(138, 'Kimberly', 'James', 'Female', '1986-03-18', 'kyle58@example.com', '9717535560', 'Mumbai', 'Maharashtra', '2022-09-08'),
(139, 'Jeffrey', 'Thomas', 'Female', '1973-02-10', 'mphillips@example.com', '9369378547', 'Surat', 'Gujarat', '2023-11-24'),
(140, 'Darlene', 'Henry', 'Male', '1968-09-02', 'gary87@example.org', '9808010062', 'Trivandrum', 'Kerala', '2023-07-11'),
(141, 'Jesse', 'Mann', 'Female', '1961-01-13', 'nbrooks@example.net', '9977008860', 'Surat', 'Gujarat', '2021-01-19'),
(142, 'Jennifer', 'Nichols', 'Female', '1974-05-11', 'ldrake@example.org', '9182339845', 'Hyderabad', 'Telangana', '2021-10-20'),
(143, 'Randy', 'Watson', 'Female', '1980-02-01', 'veronicaperez@example.net', '9101666870', 'Salem', 'Tamil Nadu', '2022-11-28'),
(144, 'Jacqueline', 'Miller', 'Male', '2001-03-04', 'ariel18@example.org', '9339740148', 'Kolkata', 'West Bengal', '2022-09-09'),
(145, 'Antonio', 'Mcfarland', 'Other', '1975-09-10', 'brendagoodwin@example.net', '9614293968', 'Bangalore', 'Karnataka', '2021-12-29'),
(146, 'Karla', 'Taylor', 'Male', '2008-01-16', 'masonterri@example.org', '9163159996', 'New Delhi', 'Delhi', '2023-11-26'),
(147, 'Mark', 'Walters', 'Male', '1998-03-17', 'whenry@example.net', '9662961943', 'Pune', 'Maharashtra', '2023-02-20'),
(148, 'Christopher', 'Moore', 'Male', '1994-10-04', 'jodistewart@example.org', '9104754121', 'Kozhikode', 'Kerala', '2021-07-25'),
(149, 'Shane', 'Peters', 'Male', '1980-03-07', 'davisangela@example.net', '9956046618', 'New Delhi', 'Delhi', '2023-09-18'),
(150, 'Tiffany', 'Armstrong', 'Other', '1968-09-26', 'rjackson@example.com', '9472126464', 'Warangal', 'Telangana', '2022-06-14'),
(151, 'Chase', 'King', 'Male', '1972-06-07', 'mwheeler@example.com', '9124065965', 'Mysore', 'Karnataka', '2022-04-27'),
(152, 'Ryan', 'Colon', 'Female', '1991-11-05', 'kevinmorrison@example.net', '9375265479', 'Bangalore', 'Karnataka', '2023-05-06'),
(153, 'Mark', 'Ramirez', 'Female', '1998-04-26', 'daniel93@example.net', '9828073741', 'Surat', 'Gujarat', '2023-06-15'),
(154, 'Laura', 'Ortiz', 'Other', '1984-07-24', 'john26@example.com', '9179796886', 'New Delhi', 'Delhi', '2022-08-18'),
(155, 'Krystal', 'Ward', 'Other', '2003-07-31', 'rodriguezjohn@example.net', '9529096561', 'New Delhi', 'Delhi', '2021-01-12'),
(156, 'Jonathan', 'Dixon', 'Other', '1985-07-01', 'seanmyers@example.net', '9982507146', 'Hyderabad', 'Telangana', '2023-10-05'),
(157, 'Christopher', 'Guerra', 'Other', '1995-08-24', 'larry73@example.net', '9757177514', 'Madurai', 'Tamil Nadu', '2021-02-18'),
(158, 'Jennifer', 'Johnson', 'Other', '1977-01-23', 'byrdfrank@example.net', '9382825867', 'Vadodara', 'Gujarat', '2021-09-11'),
(159, 'Richard', 'Lopez', 'Female', '1991-05-04', 'vfoster@example.net', '9379660334', 'Mangalore', 'Karnataka', '2023-04-04'),
(160, 'Lindsey', 'Brown', 'Male', '1965-06-24', 'michaelgonzalez@example.org', '9478596969', 'Surat', 'Gujarat', '2021-05-05'),
(161, 'Michael', 'Ellis', 'Male', '1968-11-16', 'samantha91@example.net', '9251341252', 'Surat', 'Gujarat', '2022-07-13'),
(162, 'Robert', 'Taylor', 'Other', '1979-01-06', 'tommymedina@example.net', '9282742257', 'Kozhikode', 'Kerala', '2022-11-09'),
(163, 'Michelle', 'Crane', 'Male', '1983-11-10', 'lisamaynard@example.net', '9767677219', 'Ahmedabad', 'Gujarat', '2021-02-03'),
(164, 'Kathleen', 'Carter', 'Other', '1973-10-15', 'gary79@example.net', '9788191485', 'Warangal', 'Telangana', '2022-08-16'),
(165, 'Katherine', 'Wolf', 'Female', '1981-10-13', 'veronicagarcia@example.net', '9340745171', 'Vadodara', 'Gujarat', '2023-04-29'),
(166, 'Joel', 'Cochran', 'Other', '1988-10-25', 'michelle96@example.org', '9923309584', 'Warangal', 'Telangana', '2022-10-15'),
(167, 'Gary', 'Werner', 'Male', '1974-08-23', 'stephanie81@example.org', '9604223253', 'Mangalore', 'Karnataka', '2023-04-14'),
(168, 'Erica', 'Burns', 'Female', '1988-04-24', 'courtney67@example.org', '9168457759', 'New Delhi', 'Delhi', '2021-01-03'),
(169, 'Kim', 'Oconnor', 'Other', '1995-09-06', 'sreid@example.com', '9186363745', 'Surat', 'Gujarat', '2023-06-26'),
(170, 'Matthew', 'Lane', 'Male', '1987-10-09', 'rkramer@example.org', '9017012770', 'Trivandrum', 'Kerala', '2023-12-22'),
(171, 'Ronald', 'Forbes', 'Male', '2004-03-31', 'erik41@example.net', '9541520643', 'Kochi', 'Kerala', '2022-04-15'),
(172, 'Christopher', 'Davis', 'Female', '1970-11-03', 'andersonjeremy@example.net', '9700516271', 'Warangal', 'Telangana', '2021-09-08'),
(173, 'Christopher', 'Shaffer', 'Female', '1965-07-20', 'nicole26@example.org', '9218909275', 'Hyderabad', 'Telangana', '2023-03-02'),
(174, 'Courtney', 'Hernandez', 'Other', '1980-05-11', 'fheath@example.org', '9219656523', 'New Delhi', 'Delhi', '2021-10-31'),
(175, 'Christopher', 'Tran', 'Male', '1989-05-25', 'kimberly04@example.org', '9898364037', 'Surat', 'Gujarat', '2022-02-27'),
(176, 'John', 'Little', 'Other', '1964-01-02', 'hatfieldsarah@example.org', '9696582710', 'New Delhi', 'Delhi', '2022-10-05'),
(177, 'Alexander', 'Lewis', 'Other', '2004-11-17', 'ohunter@example.net', '9866618892', 'Trivandrum', 'Kerala', '2021-10-31'),
(178, 'Kyle', 'Dixon', 'Male', '1970-05-08', 'amandamyers@example.net', '9146303161', 'Mangalore', 'Karnataka', '2022-05-11'),
(179, 'Chelsea', 'Parker', 'Male', '1996-03-13', 'davidzimmerman@example.net', '9027588425', 'Vadodara', 'Gujarat', '2021-05-19'),
(180, 'Kimberly', 'Adams', 'Male', '2003-02-22', 'rogersruben@example.net', '9149177850', 'Warangal', 'Telangana', '2022-07-01'),
(181, 'Ashley', 'Richardson', 'Female', '1972-11-03', 'shannonemily@example.org', '9380003075', 'Howrah', 'West Bengal', '2022-02-23'),
(182, 'Edward', 'Velazquez', 'Other', '2001-10-03', 'pwalker@example.com', '9541951802', 'Howrah', 'West Bengal', '2021-09-02'),
(183, 'Zachary', 'Williams', 'Other', '1979-11-04', 'xcline@example.com', '9518705349', 'Trivandrum', 'Kerala', '2023-05-09'),
(184, 'Jodi', 'Sanchez', 'Female', '1978-04-10', 'xcuevas@example.org', '9832060385', 'Hyderabad', 'Telangana', '2022-11-27'),
(185, 'Heather', 'Smith', 'Male', '1976-09-04', 'usweeney@example.com', '9138367024', 'New Delhi', 'Delhi', '2021-04-12'),
(186, 'Samantha', 'Merritt', 'Male', '1985-07-18', 'stephen19@example.org', '9826199062', 'Pune', 'Maharashtra', '2021-09-17'),
(187, 'Jose', 'Edwards', 'Male', '1999-01-13', 'louis43@example.org', '9329121277', 'Trivandrum', 'Kerala', '2021-12-10'),
(188, 'David', 'Howard', 'Other', '1997-07-28', 'qparker@example.org', '9124903521', 'Hyderabad', 'Telangana', '2023-02-18'),
(189, 'Tanya', 'Foster', 'Male', '1962-12-12', 'jorge20@example.com', '9788317121', 'Hyderabad', 'Telangana', '2021-01-14'),
(190, 'Maria', 'Haas', 'Female', '1966-11-14', 'owatson@example.net', '9199410137', 'Nagpur', 'Maharashtra', '2023-06-05'),
(191, 'Christopher', 'Boone', 'Male', '1999-06-04', 'williamssteven@example.org', '9966706625', 'Nagpur', 'Maharashtra', '2021-08-23'),
(192, 'Jacob', 'Ramirez', 'Male', '2003-01-01', 'mendezchristina@example.net', '9476870146', 'Salem', 'Tamil Nadu', '2021-05-31'),
(193, 'James', 'Wilkerson', 'Female', '1985-11-01', 'mayokimberly@example.com', '9787598564', 'Nashik', 'Maharashtra', '2021-07-16'),
(194, 'Luis', 'Robinson', 'Male', '2003-08-05', 'brian78@example.com', '9932133480', 'Salem', 'Tamil Nadu', '2023-04-16'),
(195, 'Stacie', 'Johnston', 'Female', '2007-10-07', 'lkelly@example.org', '9395590599', 'Trivandrum', 'Kerala', '2021-06-05'),
(196, 'Stacy', 'Copeland', 'Female', '1999-06-30', 'lweaver@example.com', '9010393087', 'Kolkata', 'West Bengal', '2021-01-01'),
(197, 'Samantha', 'Harris', 'Male', '1966-11-10', 'samantharichard@example.com', '9002921851', 'Warangal', 'Telangana', '2022-02-13'),
(198, 'Sheri', 'Foster', 'Male', '1965-06-12', 'marcus26@example.net', '9752895392', 'Hubli', 'Karnataka', '2022-02-18'),
(199, 'Jessica', 'Phillips', 'Female', '1969-02-15', 'rushstacy@example.com', '9902959391', 'Bangalore', 'Karnataka', '2023-10-22'),
(200, 'Donald', 'Mcgee', 'Male', '1972-01-08', 'gary15@example.com', '9043315410', 'Nagpur', 'Maharashtra', '2021-02-22');

INSERT INTO customers (customer_id, first_name, last_name, gender, date_of_birth, email, phone, city, state, registration_date) VALUES
(201, 'Samuel', 'Barnes', 'Male', '1968-07-31', 'ysnyder@example.com', '9861793271', 'New Delhi', 'Delhi', '2023-05-25'),
(202, 'Arthur', 'Smith', 'Other', '1973-02-17', 'jonesgeorge@example.com', '9218159970', 'Vadodara', 'Gujarat', '2022-04-17'),
(203, 'Desiree', 'Lawson', 'Other', '1981-06-09', 'garciajamie@example.org', '9688444310', 'New Delhi', 'Delhi', '2022-03-06'),
(204, 'Andrea', 'Henry', 'Female', '1963-03-19', 'pattersonkelly@example.net', '9973103241', 'Trivandrum', 'Kerala', '2022-06-03'),
(205, 'Darrell', 'Glover', 'Other', '1983-03-15', 'christopher86@example.org', '9565270477', 'Surat', 'Gujarat', '2021-10-16'),
(206, 'Mary', 'Elliott', 'Other', '1967-11-07', 'millermaurice@example.net', '9693806868', 'Salem', 'Tamil Nadu', '2023-01-22'),
(207, 'Sharon', 'Armstrong', 'Other', '1971-11-28', 'christian08@example.net', '9899217223', 'Mysore', 'Karnataka', '2023-06-04'),
(208, 'David', 'Henderson', 'Other', '2008-01-13', 'oharris@example.org', '9945116868', 'New Delhi', 'Delhi', '2021-12-23'),
(209, 'Joshua', 'Ellis', 'Other', '2002-07-10', 'jrodriguez@example.org', '9999119148', 'Mysore', 'Karnataka', '2023-08-21'),
(210, 'Natalie', 'Baker', 'Male', '1992-01-10', 'rjohnson@example.com', '9299606530', 'Mumbai', 'Maharashtra', '2023-03-27'),
(211, 'Samantha', 'Prince', 'Male', '1961-07-26', 'larry71@example.org', '9247546913', 'Trichy', 'Tamil Nadu', '2022-04-29'),
(212, 'Robin', 'Russell', 'Female', '1983-11-07', 'lori82@example.org', '9486289023', 'Trivandrum', 'Kerala', '2023-08-16'),
(213, 'James', 'Brown', 'Male', '1962-03-08', 'hulljanet@example.com', '9578610357', 'New Delhi', 'Delhi', '2022-10-12'),
(214, 'Gregory', 'Harrell', 'Other', '1988-10-07', 'max41@example.com', '9060293333', 'Warangal', 'Telangana', '2021-10-22'),
(215, 'Robert', 'Smith', 'Male', '1998-01-19', 'wellsdavid@example.org', '9903494466', 'New Delhi', 'Delhi', '2023-07-21'),
(216, 'Stephen', 'Robinson', 'Other', '1975-02-06', 'asilva@example.net', '9589944171', 'New Delhi', 'Delhi', '2022-01-03'),
(217, 'Joshua', 'Nguyen', 'Male', '1973-11-20', 'jacob83@example.org', '9965207446', 'New Delhi', 'Delhi', '2022-03-19'),
(218, 'Jillian', 'Aguilar', 'Female', '2008-05-06', 'matthewreeves@example.net', '9875842824', 'Mumbai', 'Maharashtra', '2021-04-17'),
(219, 'David', 'Green', 'Male', '1999-05-25', 'staceylam@example.net', '9135346554', 'Nagpur', 'Maharashtra', '2022-10-03'),
(220, 'Steven', 'Wilson', 'Other', '1963-03-05', 'kennedyjames@example.org', '9684602235', 'Warangal', 'Telangana', '2022-03-24'),
(221, 'Ashley', 'Knox', 'Male', '1982-07-24', 'michelle21@example.com', '9525007432', 'Kozhikode', 'Kerala', '2022-09-23'),
(222, 'Eric', 'Glover', 'Female', '1998-01-09', 'christinaschultz@example.com', '9676008350', 'Surat', 'Gujarat', '2023-09-03'),
(223, 'Katherine', 'Schmidt', 'Other', '1961-06-16', 'simsjohn@example.net', '9542168942', 'Trivandrum', 'Kerala', '2021-03-13'),
(224, 'Brandon', 'Fry', 'Male', '1982-06-25', 'ryan25@example.com', '9532603323', 'Trichy', 'Tamil Nadu', '2023-03-15'),
(225, 'Brittany', 'Jackson', 'Other', '1978-03-12', 'brooksdanielle@example.net', '9909010016', 'Howrah', 'West Bengal', '2022-05-02'),
(226, 'David', 'King', 'Male', '1994-04-15', 'heathermccoy@example.com', '9618499261', 'Mysore', 'Karnataka', '2022-07-14'),
(227, 'Christine', 'Campbell', 'Other', '1998-04-07', 'mgonzalez@example.com', '9835642087', 'Madurai', 'Tamil Nadu', '2023-09-23'),
(228, 'Haley', 'Castillo', 'Other', '1971-11-08', 'powersrebecca@example.net', '9721811437', 'Coimbatore', 'Tamil Nadu', '2023-12-18'),
(229, 'Kenneth', 'Marshall', 'Female', '1965-05-21', 'morganphelps@example.com', '9561100225', 'Trivandrum', 'Kerala', '2022-01-27'),
(230, 'Samuel', 'Howell', 'Male', '2002-10-06', 'watsonmatthew@example.org', '9667467621', 'Vadodara', 'Gujarat', '2021-05-25'),
(231, 'Jessica', 'Jarvis', 'Female', '2001-02-15', 'perrybrittany@example.net', '9729659027', 'Hubli', 'Karnataka', '2023-10-04'),
(232, 'Daniel', 'Jenkins', 'Female', '1962-10-20', 'diana08@example.net', '9993588916', 'Surat', 'Gujarat', '2022-12-25'),
(233, 'John', 'Reed', 'Female', '1993-01-21', 'jhernandez@example.net', '9002877217', 'Mysore', 'Karnataka', '2021-12-17'),
(234, 'Mark', 'Ramirez', 'Female', '1984-12-05', 'ppowell@example.org', '9779717751', 'Vadodara', 'Gujarat', '2023-12-09'),
(235, 'Julie', 'Smith', 'Female', '1979-12-18', 'hawkinsaaron@example.org', '9994883755', 'Warangal', 'Telangana', '2023-06-22'),
(236, 'Lisa', 'Richard', 'Other', '1976-07-13', 'xmoran@example.net', '9711305548', 'Trichy', 'Tamil Nadu', '2022-07-26'),
(237, 'Jacqueline', 'Williams', 'Male', '1968-06-22', 'lydianewton@example.com', '9149331637', 'Howrah', 'West Bengal', '2023-06-22'),
(238, 'James', 'Morgan', 'Female', '1996-12-09', 'housemary@example.net', '9177982708', 'Hubli', 'Karnataka', '2023-03-17'),
(239, 'Angela', 'Reynolds', 'Other', '1988-09-06', 'heatherthompson@example.org', '9169958669', 'Salem', 'Tamil Nadu', '2023-09-30'),
(240, 'Kathryn', 'Hill', 'Female', '2006-11-06', 'shawn22@example.com', '9984858333', 'Ahmedabad', 'Gujarat', '2022-11-14'),
(241, 'Kelly', 'Reed', 'Male', '1992-11-14', 'williambenson@example.com', '9158799684', 'Howrah', 'West Bengal', '2023-08-18'),
(242, 'Robert', 'Smith', 'Other', '1965-09-15', 'qthomas@example.org', '9342442043', 'Kochi', 'Kerala', '2023-04-05'),
(243, 'Antonio', 'Cervantes', 'Male', '1965-07-07', 'juliahoffman@example.org', '9840666580', 'Hyderabad', 'Telangana', '2021-01-15'),
(244, 'John', 'Oliver', 'Female', '1998-01-30', 'ogreer@example.net', '9598933472', 'Kozhikode', 'Kerala', '2023-12-12'),
(245, 'Charles', 'Rivers', 'Female', '1995-11-18', 'bennettroy@example.net', '9422940572', 'Bangalore', 'Karnataka', '2021-02-13'),
(246, 'Sarah', 'Carlson', 'Other', '1997-09-24', 'tracy98@example.com', '9158328182', 'New Delhi', 'Delhi', '2022-04-01'),
(247, 'Amanda', 'Davis', 'Female', '1971-03-20', 'elizabethrivera@example.com', '9398780157', 'Salem', 'Tamil Nadu', '2021-09-20'),
(248, 'Dawn', 'Sellers', 'Female', '1972-04-19', 'flemingmanuel@example.org', '9648408588', 'Mysore', 'Karnataka', '2022-05-03'),
(249, 'Bradley', 'Villanueva', 'Male', '1969-11-02', 'vaughangary@example.net', '9801336138', 'Kochi', 'Kerala', '2023-06-26'),
(250, 'Natalie', 'Figueroa', 'Other', '1981-06-27', 'burgesseric@example.com', '9501102481', 'Nashik', 'Maharashtra', '2022-09-22'),
(251, 'Jeremy', 'Green', 'Other', '1979-03-22', 'bhamilton@example.com', '9180919015', 'Warangal', 'Telangana', '2023-10-13'),
(252, 'Daniel', 'Buchanan', 'Female', '1975-01-23', 'campbellsara@example.com', '9607283268', 'Trivandrum', 'Kerala', '2021-11-19'),
(253, 'Cynthia', 'Evans', 'Male', '2003-03-04', 'susan08@example.net', '9210099688', 'Kozhikode', 'Kerala', '2023-11-02'),
(254, 'Kevin', 'Goodman', 'Male', '2003-12-19', 'jason82@example.org', '9239431290', 'Ahmedabad', 'Gujarat', '2023-07-21'),
(255, 'Sarah', 'Gamble', 'Other', '1982-09-26', 'robertscarlos@example.org', '9397552314', 'Mumbai', 'Maharashtra', '2022-11-09'),
(256, 'Rachel', 'Stewart', 'Female', '1982-03-24', 'heather29@example.net', '9556205336', 'Surat', 'Gujarat', '2021-10-30'),
(257, 'Michael', 'Frazier', 'Other', '1976-07-05', 'wford@example.com', '9781291428', 'Hyderabad', 'Telangana', '2021-08-03'),
(258, 'Jessica', 'Sims', 'Female', '1995-07-07', 'atkinsoncrystal@example.net', '9969308488', 'Warangal', 'Telangana', '2022-06-01'),
(259, 'Kimberly', 'Diaz', 'Male', '1971-04-26', 'dennis88@example.org', '9658039282', 'Kozhikode', 'Kerala', '2022-05-04'),
(260, 'Harold', 'Fry', 'Female', '1992-03-31', 'jillwebb@example.com', '9037314530', 'Howrah', 'West Bengal', '2023-01-02'),
(261, 'April', 'Moody', 'Other', '1979-03-24', 'ckeith@example.net', '9518449892', 'Surat', 'Gujarat', '2022-02-17'),
(262, 'Nicholas', 'Matthews', 'Female', '2003-09-17', 'blacknicholas@example.org', '9865577908', 'New Delhi', 'Delhi', '2023-08-23'),
(263, 'Scott', 'Hall', 'Other', '1985-04-17', 'jason22@example.com', '9913651777', 'Ahmedabad', 'Gujarat', '2021-08-19'),
(264, 'Evan', 'Whitaker', 'Female', '1961-09-03', 'andersonbrittany@example.org', '9809202428', 'Madurai', 'Tamil Nadu', '2023-11-15'),
(265, 'Carol', 'Elliott', 'Other', '1961-06-28', 'stacey37@example.net', '9772369292', 'Kozhikode', 'Kerala', '2022-11-13'),
(266, 'William', 'Jackson', 'Female', '1993-07-03', 'ecarlson@example.org', '9662103886', 'Vadodara', 'Gujarat', '2023-06-24'),
(267, 'Catherine', 'Thompson', 'Other', '2003-11-15', 'richamanda@example.org', '9172980686', 'Nashik', 'Maharashtra', '2022-02-10'),
(268, 'Bradley', 'Moreno', 'Male', '1971-08-12', 'yclarke@example.com', '9991624731', 'Nagpur', 'Maharashtra', '2021-11-06'),
(269, 'Nancy', 'Ortiz', 'Male', '1969-09-01', 'lanedavid@example.org', '9635651269', 'Kochi', 'Kerala', '2021-10-05'),
(270, 'Melissa', 'Henderson', 'Other', '1978-02-23', 'victoria63@example.com', '9887258874', 'Kochi', 'Kerala', '2023-12-18'),
(271, 'Becky', 'Schroeder', 'Other', '1979-09-16', 'melissahopkins@example.net', '9372138658', 'Nashik', 'Maharashtra', '2022-11-03'),
(272, 'Gabrielle', 'Williams', 'Other', '1979-04-10', 'brockmadeline@example.com', '9961143519', 'Mumbai', 'Maharashtra', '2021-02-11'),
(273, 'Patrick', 'Joyce', 'Female', '1990-01-25', 'jennifer90@example.org', '9770384309', 'Warangal', 'Telangana', '2022-07-13'),
(274, 'Holly', 'Gilbert', 'Other', '1992-12-12', 'john02@example.org', '9465669380', 'Vadodara', 'Gujarat', '2023-03-18'),
(275, 'Casey', 'Davis', 'Male', '1974-04-02', 'michael43@example.net', '9376904268', 'Howrah', 'West Bengal', '2021-04-27'),
(276, 'Charles', 'Phillips', 'Female', '2006-01-20', 'nancy94@example.net', '9769735779', 'Kozhikode', 'Kerala', '2023-08-02'),
(277, 'Timothy', 'Scott', 'Male', '1978-12-19', 'ericahall@example.com', '9658804341', 'Mysore', 'Karnataka', '2022-03-13'),
(278, 'Kaitlyn', 'Peterson', 'Other', '1987-03-20', 'thomasgomez@example.net', '9423733343', 'Hyderabad', 'Telangana', '2021-09-08'),
(279, 'Mary', 'Huff', 'Other', '1977-09-07', 'wilsonchristian@example.net', '9790807595', 'Hubli', 'Karnataka', '2022-06-23'),
(280, 'Tricia', 'Prince', 'Male', '2002-04-19', 'wwhite@example.net', '9463920867', 'Hubli', 'Karnataka', '2023-10-25'),
(281, 'Antonio', 'Reed', 'Male', '2001-11-23', 'stephenmartinez@example.net', '9750036915', 'Hyderabad', 'Telangana', '2022-01-31'),
(282, 'Michelle', 'Lopez', 'Male', '1973-03-19', 'thomas95@example.com', '9276365564', 'Kolkata', 'West Bengal', '2022-05-09'),
(283, 'Ashley', 'Krause', 'Female', '1993-07-11', 'lelinda@example.net', '9663227026', 'Howrah', 'West Bengal', '2022-07-01'),
(284, 'Wendy', 'Atkinson', 'Female', '1985-05-31', 'kristen44@example.net', '9906120347', 'Pune', 'Maharashtra', '2023-07-07'),
(285, 'Cole', 'Garner', 'Other', '1973-01-24', 'ann45@example.org', '9615939982', 'Vadodara', 'Gujarat', '2023-12-08'),
(286, 'Justin', 'Nguyen', 'Other', '1985-02-05', 'ypreston@example.net', '9472256996', 'Pune', 'Maharashtra', '2023-07-18'),
(287, 'Charles', 'Martin', 'Male', '1971-07-21', 'denise49@example.net', '9647598762', 'Hubli', 'Karnataka', '2021-07-21'),
(288, 'Andrew', 'Luna', 'Other', '1992-05-16', 'clarkrandy@example.org', '9178006811', 'New Delhi', 'Delhi', '2021-10-15'),
(289, 'Eric', 'Pena', 'Other', '2003-02-06', 'jerome47@example.net', '9228200557', 'Pune', 'Maharashtra', '2022-05-27'),
(290, 'Monica', 'Donovan', 'Female', '1986-12-05', 'tarawolfe@example.org', '9997968845', 'Warangal', 'Telangana', '2022-06-11'),
(291, 'Jeremy', 'Davis', 'Female', '1975-05-17', 'tgreen@example.org', '9082547807', 'Trichy', 'Tamil Nadu', '2023-11-02'),
(292, 'Thomas', 'Smith', 'Female', '1981-04-04', 'carla08@example.com', '9368663266', 'Mumbai', 'Maharashtra', '2021-08-30'),
(293, 'Christian', 'Garrett', 'Female', '1985-05-24', 'justin84@example.com', '9312241797', 'Howrah', 'West Bengal', '2021-10-25'),
(294, 'Cindy', 'Lopez', 'Other', '1961-07-12', 'bookerandrew@example.org', '9442703120', 'Vadodara', 'Gujarat', '2022-06-24'),
(295, 'Matthew', 'Collins', 'Female', '1998-12-21', 'steven05@example.org', '9204618723', 'Trivandrum', 'Kerala', '2023-09-07'),
(296, 'John', 'James', 'Male', '1961-03-15', 'paulproctor@example.org', '9037183764', 'Surat', 'Gujarat', '2023-10-22'),
(297, 'Eric', 'Chandler', 'Male', '1996-05-05', 'kingdanielle@example.org', '9503136502', 'New Delhi', 'Delhi', '2023-05-20'),
(298, 'Brenda', 'Foster', 'Other', '1972-04-06', 'perkinshannah@example.net', '9925132719', 'Howrah', 'West Bengal', '2022-01-06'),
(299, 'Tara', 'Malone', 'Other', '1963-06-24', 'deanna81@example.org', '9735857306', 'Hyderabad', 'Telangana', '2022-01-27'),
(300, 'Dennis', 'Roach', 'Other', '1983-11-22', 'ihansen@example.net', '9739285574', 'Surat', 'Gujarat', '2023-08-08');

INSERT INTO customers (customer_id, first_name, last_name, gender, date_of_birth, email, phone, city, state, registration_date) VALUES
(301, 'Carol', 'Valencia', 'Male', '1968-04-17', 'shannonweiss@example.net', '9570862095', 'Salem', 'Tamil Nadu', '2023-04-29'),
(302, 'John', 'Le', 'Other', '1992-03-12', 'rlee@example.com', '9829456511', 'Trivandrum', 'Kerala', '2022-07-27'),
(303, 'Carl', 'Conley', 'Male', '1966-10-29', 'harristodd@example.org', '9096789940', 'Kolkata', 'West Bengal', '2022-02-05'),
(304, 'Catherine', 'Jones', 'Other', '2005-03-31', 'dianahebert@example.org', '9705865094', 'New Delhi', 'Delhi', '2022-08-02'),
(305, 'Jessica', 'Davenport', 'Other', '1964-05-03', 'susandavis@example.net', '9386338392', 'Mumbai', 'Maharashtra', '2022-09-03'),
(306, 'Angela', 'Reese', 'Other', '1997-05-18', 'emily61@example.org', '9286852897', 'Madurai', 'Tamil Nadu', '2023-10-19'),
(307, 'Rachel', 'Pierce', 'Female', '2008-06-11', 'robert65@example.net', '9398368457', 'Salem', 'Tamil Nadu', '2022-05-05'),
(308, 'Randy', 'Barber', 'Female', '2007-10-12', 'holmesvictoria@example.com', '9043350488', 'Mumbai', 'Maharashtra', '2022-09-01'),
(309, 'Sara', 'Moore', 'Female', '1962-05-29', 'eric45@example.net', '9334419693', 'Howrah', 'West Bengal', '2023-03-15'),
(310, 'Jennifer', 'Mcguire', 'Male', '1968-11-23', 'larsonkevin@example.net', '9961055661', 'New Delhi', 'Delhi', '2023-08-10'),
(311, 'Jeremy', 'Delgado', 'Other', '1989-07-04', 'walterscrystal@example.org', '9480589258', 'Howrah', 'West Bengal', '2023-02-03'),
(312, 'Eric', 'Nunez', 'Male', '2008-06-20', 'kmullins@example.net', '9136462251', 'Warangal', 'Telangana', '2022-06-05'),
(313, 'Julie', 'Kelley', 'Female', '1973-03-14', 'xshaw@example.net', '9227837693', 'Kolkata', 'West Bengal', '2022-09-06'),
(314, 'Wendy', 'Warren', 'Female', '1972-03-24', 'kimberly59@example.org', '9166553559', 'Mysore', 'Karnataka', '2022-12-19'),
(315, 'Kayla', 'Jackson', 'Male', '1977-05-20', 'chanson@example.org', '9335211039', 'Vadodara', 'Gujarat', '2023-10-11'),
(316, 'Misty', 'Wilkins', 'Female', '1961-04-03', 'torresthomas@example.com', '9383388487', 'Hubli', 'Karnataka', '2022-11-13'),
(317, 'Victoria', 'Neal', 'Male', '1992-09-02', 'qaguilar@example.net', '9042043940', 'Hyderabad', 'Telangana', '2022-05-24'),
(318, 'Sierra', 'Jones', 'Female', '1992-04-17', 'michelle04@example.net', '9636815798', 'Howrah', 'West Bengal', '2021-04-07'),
(319, 'James', 'Rasmussen', 'Other', '1987-07-05', 'williamssandra@example.com', '9576205554', 'Vadodara', 'Gujarat', '2021-09-16'),
(320, 'Tiffany', 'Mason', 'Female', '1999-07-27', 'natasha08@example.com', '9325621689', 'Mysore', 'Karnataka', '2023-08-13'),
(321, 'Glenda', 'Butler', 'Female', '1988-02-05', 'mwaller@example.com', '9782329832', 'Salem', 'Tamil Nadu', '2021-12-05'),
(322, 'Janet', 'Mills', 'Other', '1967-02-02', 'dianacunningham@example.org', '9518812520', 'Kolkata', 'West Bengal', '2023-04-18'),
(323, 'Nicole', 'Gutierrez', 'Other', '1980-05-03', 'oreese@example.net', '9423122099', 'Hubli', 'Karnataka', '2021-10-19'),
(324, 'Ashley', 'Hall', 'Other', '1971-09-28', 'howardhailey@example.com', '9289752677', 'Warangal', 'Telangana', '2021-05-31'),
(325, 'James', 'Johnson', 'Male', '1997-04-17', 'schaeferstephanie@example.org', '9331279757', 'Mumbai', 'Maharashtra', '2023-08-30'),
(326, 'Ronald', 'Parsons', 'Male', '1989-10-11', 'zcortez@example.net', '9998808177', 'Warangal', 'Telangana', '2023-06-24'),
(327, 'Bobby', 'Forbes', 'Male', '1985-06-29', 'cterrell@example.net', '9680347644', 'Mysore', 'Karnataka', '2022-05-20'),
(328, 'Roberto', 'Austin', 'Other', '1963-03-20', 'stevenlucas@example.org', '9812982665', 'Nashik', 'Maharashtra', '2022-05-09'),
(329, 'Harold', 'Garza', 'Female', '1994-10-20', 'nicoledavis@example.com', '9211175186', 'Howrah', 'West Bengal', '2023-03-07'),
(330, 'Theresa', 'Salazar', 'Other', '1968-04-09', 'kwilliams@example.com', '9922220644', 'Nashik', 'Maharashtra', '2023-03-10'),
(331, 'Susan', 'Roberts', 'Other', '1969-04-08', 'susansmith@example.com', '9077780973', 'Hubli', 'Karnataka', '2021-08-26'),
(332, 'Donna', 'Chavez', 'Other', '1981-10-21', 'sanchezamy@example.net', '9830220502', 'Surat', 'Gujarat', '2023-07-24'),
(333, 'Elizabeth', 'Massey', 'Male', '1974-12-03', 'williamsrobert@example.org', '9249998279', 'Kolkata', 'West Bengal', '2022-01-30'),
(334, 'Barry', 'Mack', 'Female', '1976-02-03', 'wwilkins@example.com', '9814721458', 'Kochi', 'Kerala', '2022-03-29'),
(335, 'Jason', 'Clark', 'Female', '1963-05-23', 'webbhaley@example.net', '9469548995', 'Mangalore', 'Karnataka', '2023-10-12'),
(336, 'Christina', 'Crawford', 'Other', '1995-08-07', 'lvasquez@example.net', '9343010713', 'Kolkata', 'West Bengal', '2023-05-25'),
(337, 'Yolanda', 'Gutierrez', 'Female', '1976-08-14', 'alexharris@example.com', '9414488501', 'Hyderabad', 'Telangana', '2023-01-21'),
(338, 'Matthew', 'Ramsey', 'Male', '1990-03-01', 'collierjames@example.com', '9770272785', 'Kochi', 'Kerala', '2022-05-21'),
(339, 'Lisa', 'Reilly', 'Other', '1963-04-15', 'annette58@example.net', '9039551240', 'New Delhi', 'Delhi', '2022-01-07'),
(340, 'Nicholas', 'Ferguson', 'Male', '1968-07-24', 'hlopez@example.com', '9504617357', 'Kolkata', 'West Bengal', '2023-06-27'),
(341, 'Kevin', 'Warren', 'Male', '1968-12-30', 'kristen31@example.com', '9807823578', 'New Delhi', 'Delhi', '2021-12-06'),
(342, 'Mark', 'Hammond', 'Other', '1965-04-24', 'jamiejohnson@example.com', '9810409157', 'New Delhi', 'Delhi', '2023-08-31'),
(343, 'Dakota', 'Miranda', 'Male', '1996-05-20', 'lanelarry@example.org', '9533448571', 'Kolkata', 'West Bengal', '2021-10-26'),
(344, 'Eric', 'Wilson', 'Other', '2006-08-05', 'clarkmichael@example.com', '9424932149', 'Madurai', 'Tamil Nadu', '2023-09-04'),
(345, 'Amber', 'Williams', 'Male', '1961-12-27', 'rodriguezbrian@example.com', '9629979545', 'Nagpur', 'Maharashtra', '2023-06-14'),
(346, 'Jennifer', 'Lambert', 'Male', '1986-03-16', 'fbradley@example.net', '9717477332', 'Bangalore', 'Karnataka', '2023-08-01'),
(347, 'Christina', 'Durham', 'Male', '1979-06-01', 'kristina57@example.com', '9017157724', 'Madurai', 'Tamil Nadu', '2023-04-21'),
(348, 'Cassandra', 'Anderson', 'Male', '1965-07-15', 'nguyendebra@example.com', '9876963938', 'Kolkata', 'West Bengal', '2021-06-23'),
(349, 'Timothy', 'Jones', 'Male', '1970-08-04', 'bmueller@example.net', '9583219719', 'Hyderabad', 'Telangana', '2022-10-15'),
(350, 'Mark', 'Davis', 'Male', '1981-12-19', 'stephanie19@example.org', '9965701329', 'Vadodara', 'Gujarat', '2023-09-16'),
(351, 'Daisy', 'Smith', 'Male', '1967-08-22', 'shawncarter@example.net', '9973354946', 'Hubli', 'Karnataka', '2023-02-25'),
(352, 'Rose', 'Mooney', 'Female', '1988-07-26', 'sabbott@example.org', '9580085140', 'Kolkata', 'West Bengal', '2021-09-15'),
(353, 'Jacqueline', 'Long', 'Female', '1975-11-13', 'bsullivan@example.net', '9327238656', 'New Delhi', 'Delhi', '2021-06-18'),
(354, 'Whitney', 'Santiago', 'Other', '1967-01-16', 'wongdouglas@example.com', '9621267969', 'Warangal', 'Telangana', '2021-07-16'),
(355, 'William', 'Arnold', 'Other', '1982-03-14', 'jeremiah69@example.org', '9973846895', 'Chennai', 'Tamil Nadu', '2021-02-06'),
(356, 'Benjamin', 'Webb', 'Female', '1978-04-15', 'fnixon@example.org', '9847818913', 'Surat', 'Gujarat', '2022-06-01'),
(357, 'Judith', 'Horne', 'Other', '1964-05-05', 'chloe58@example.org', '9778795654', 'Hubli', 'Karnataka', '2021-11-13'),
(358, 'Austin', 'Livingston', 'Other', '1996-07-26', 'bryan79@example.org', '9904904712', 'Kochi', 'Kerala', '2022-07-08'),
(359, 'Melissa', 'Ramirez', 'Male', '1966-12-16', 'joshua40@example.net', '9192927524', 'Kolkata', 'West Bengal', '2023-05-07'),
(360, 'Joel', 'White', 'Male', '1985-11-29', 'cooperchristopher@example.org', '9927663723', 'Nagpur', 'Maharashtra', '2022-09-25'),
(361, 'Meagan', 'Brown', 'Other', '1973-04-15', 'williamssteven@example.com', '9478366742', 'Howrah', 'West Bengal', '2022-08-04'),
(362, 'Ryan', 'Roberts', 'Other', '1998-11-13', 'hgregory@example.net', '9018569454', 'Warangal', 'Telangana', '2021-10-20'),
(363, 'Corey', 'Pena', 'Other', '1979-05-16', 'jessicachapman@example.org', '9852580010', 'Ahmedabad', 'Gujarat', '2022-03-26'),
(364, 'Alicia', 'Jennings', 'Other', '1977-06-20', 'johnathan00@example.net', '9109391119', 'Mysore', 'Karnataka', '2021-05-23'),
(365, 'Diana', 'Yoder', 'Female', '1987-10-08', 'pauladominguez@example.com', '9471746542', 'Kochi', 'Kerala', '2023-05-05'),
(366, 'Joshua', 'Brown', 'Female', '1979-04-01', 'scottlisa@example.org', '9717396271', 'Howrah', 'West Bengal', '2021-06-07'),
(367, 'Kayla', 'Robinson', 'Female', '1991-06-24', 'gbaldwin@example.org', '9119470720', 'Vadodara', 'Gujarat', '2023-10-18'),
(368, 'Elizabeth', 'Adams', 'Male', '1994-03-14', 'gandrews@example.net', '9776618306', 'Howrah', 'West Bengal', '2023-11-10'),
(369, 'Lisa', 'Olson', 'Female', '1987-10-28', 'mathew46@example.org', '9158517432', 'Warangal', 'Telangana', '2022-08-30'),
(370, 'Tammy', 'Guerrero', 'Male', '1974-12-10', 'omosley@example.net', '9571732030', 'Kochi', 'Kerala', '2023-02-27'),
(371, 'Brittany', 'Burns', 'Male', '1963-08-15', 'victor70@example.org', '9505061387', 'Bangalore', 'Karnataka', '2023-10-26'),
(372, 'Molly', 'Herrera', 'Female', '1996-03-02', 'sandyjohnson@example.org', '9707903202', 'Mangalore', 'Karnataka', '2022-11-24'),
(373, 'Rebecca', 'Hoover', 'Male', '1965-04-07', 'marybrown@example.org', '9179931365', 'Salem', 'Tamil Nadu', '2023-06-07'),
(374, 'Tina', 'Gregory', 'Other', '1976-02-28', 'marcoconnell@example.org', '9092511426', 'Kolkata', 'West Bengal', '2021-07-03'),
(375, 'Mitchell', 'Martin', 'Female', '1972-04-16', 'andersonkylie@example.net', '9962071002', 'Howrah', 'West Bengal', '2023-10-11'),
(376, 'Jasmine', 'Wheeler', 'Other', '1974-03-20', 'nschwartz@example.org', '9487632909', 'Madurai', 'Tamil Nadu', '2021-07-16'),
(377, 'Vincent', 'Clements', 'Other', '1990-09-13', 'michael08@example.org', '9318195883', 'Warangal', 'Telangana', '2022-05-23'),
(378, 'Courtney', 'Clark', 'Male', '1963-02-22', 'hogangina@example.com', '9722005436', 'New Delhi', 'Delhi', '2021-10-03'),
(379, 'Christina', 'Wu', 'Other', '1982-05-07', 'yangsara@example.org', '9207811379', 'Kochi', 'Kerala', '2022-09-27'),
(380, 'Robert', 'Burgess', 'Male', '2003-09-20', 'kimberlynguyen@example.org', '9363631797', 'Howrah', 'West Bengal', '2021-03-01'),
(381, 'Ryan', 'Robinson', 'Male', '1989-11-06', 'paultaylor@example.net', '9354352090', 'Hyderabad', 'Telangana', '2021-11-03'),
(382, 'Daniel', 'Owens', 'Female', '1980-09-02', 'jeffrey49@example.org', '9929831687', 'Salem', 'Tamil Nadu', '2023-08-02'),
(383, 'Javier', 'Wells', 'Other', '1982-10-23', 'blairjill@example.org', '9356939290', 'Hyderabad', 'Telangana', '2022-04-03'),
(384, 'Bradley', 'Esparza', 'Male', '1995-10-21', 'simmonsphillip@example.net', '9177318063', 'Warangal', 'Telangana', '2021-05-26'),
(385, 'Kenneth', 'Holland', 'Female', '1964-12-13', 'kcaldwell@example.net', '9799077262', 'Kolkata', 'West Bengal', '2023-05-15'),
(386, 'Mitchell', 'Marshall', 'Male', '1990-12-31', 'cruzhannah@example.net', '9046498931', 'Nashik', 'Maharashtra', '2022-11-10'),
(387, 'Matthew', 'Randolph', 'Male', '1985-04-21', 'pamela16@example.com', '9790552818', 'Mumbai', 'Maharashtra', '2023-02-16'),
(388, 'Jamie', 'Zavala', 'Male', '1972-01-19', 'banksjo@example.net', '9335548640', 'New Delhi', 'Delhi', '2021-03-11'),
(389, 'Michael', 'Tucker', 'Female', '1985-11-16', 'harrisonamanda@example.net', '9479513711', 'Trivandrum', 'Kerala', '2022-03-04'),
(390, 'Harold', 'Mullen', 'Male', '1964-04-16', 'joshuaterry@example.com', '9238046827', 'Howrah', 'West Bengal', '2022-01-15'),
(391, 'Scott', 'Newman', 'Other', '1974-08-03', 'johnsonlaurie@example.net', '9569557988', 'Kolkata', 'West Bengal', '2022-05-03'),
(392, 'Kevin', 'Anderson', 'Male', '1998-06-26', 'kristinaperez@example.com', '9402547292', 'Pune', 'Maharashtra', '2023-02-18'),
(393, 'Justin', 'Mcpherson', 'Other', '2000-11-19', 'evanwilson@example.com', '9927452380', 'Chennai', 'Tamil Nadu', '2022-12-30'),
(394, 'Tiffany', 'Hernandez', 'Female', '1982-02-13', 'amandamartinez@example.org', '9672752088', 'Kozhikode', 'Kerala', '2021-12-29'),
(395, 'Janice', 'Wells', 'Female', '1974-07-05', 'laurenchandler@example.com', '9517028140', 'Kozhikode', 'Kerala', '2022-03-16'),
(396, 'Mary', 'Griffin', 'Female', '1965-01-13', 'franklinjames@example.net', '9343018718', 'Surat', 'Gujarat', '2022-03-08'),
(397, 'Tracy', 'Morrison', 'Male', '1985-02-24', 'kerrmichael@example.org', '9656504554', 'Mangalore', 'Karnataka', '2023-12-06'),
(398, 'Nancy', 'Miller', 'Female', '1995-07-14', 'afigueroa@example.com', '9426629912', 'Mangalore', 'Karnataka', '2021-08-16'),
(399, 'Thomas', 'Dillon', 'Other', '2007-12-15', 'fitzpatrickbrittany@example.com', '9106462879', 'Kozhikode', 'Kerala', '2023-04-07'),
(400, 'Derrick', 'Lopez', 'Other', '1978-12-03', 'twilliams@example.net', '9478730024', 'Hyderabad', 'Telangana', '2021-11-25');

INSERT INTO customers (customer_id, first_name, last_name, gender, date_of_birth, email, phone, city, state, registration_date) VALUES
(401, 'Danielle', 'Fields', 'Male', '1966-07-23', 'robert73@example.org', '9147195979', 'Vadodara', 'Gujarat', '2022-04-23'),
(402, 'Jonathan', 'Jennings', 'Male', '2007-05-12', 'brooksjessica@example.org', '9429025725', 'Coimbatore', 'Tamil Nadu', '2021-06-28'),
(403, 'Joseph', 'Barnes', 'Female', '2004-05-18', 'brandon48@example.net', '9183219285', 'New Delhi', 'Delhi', '2023-08-13'),
(404, 'Margaret', 'Cohen', 'Female', '1975-01-18', 'cody95@example.org', '9028457652', 'Warangal', 'Telangana', '2021-04-23'),
(405, 'Eric', 'Walker', 'Male', '1969-08-22', 'butlersabrina@example.org', '9207545279', 'Trichy', 'Tamil Nadu', '2022-07-27'),
(406, 'Tara', 'Jackson', 'Other', '1975-03-22', 'walkermelissa@example.org', '9342321611', 'Ahmedabad', 'Gujarat', '2021-01-21'),
(407, 'Todd', 'Reynolds', 'Male', '1970-01-08', 'mcguirewilliam@example.org', '9714014011', 'Vadodara', 'Gujarat', '2023-10-04'),
(408, 'Jamie', 'Santana', 'Other', '1969-06-19', 'anthony24@example.net', '9552893891', 'New Delhi', 'Delhi', '2021-04-19'),
(409, 'Belinda', 'Smith', 'Male', '1971-01-05', 'tamarajackson@example.net', '9013875927', 'Vadodara', 'Gujarat', '2023-01-07'),
(410, 'Daniel', 'Davenport', 'Male', '2007-09-13', 'olewis@example.com', '9151718275', 'Ahmedabad', 'Gujarat', '2023-02-10'),
(411, 'Angela', 'Williams', 'Female', '1976-05-06', 'cruzstephen@example.net', '9473864631', 'Mangalore', 'Karnataka', '2023-09-06'),
(412, 'Leah', 'Crosby', 'Other', '1978-03-26', 'lutztravis@example.org', '9678112669', 'Vadodara', 'Gujarat', '2023-12-06'),
(413, 'Judith', 'Stafford', 'Female', '1968-09-11', 'theresa53@example.net', '9613674994', 'Surat', 'Gujarat', '2023-04-08'),
(414, 'Laurie', 'Harding', 'Male', '1977-09-09', 'garcher@example.com', '9271147732', 'Ahmedabad', 'Gujarat', '2021-02-02'),
(415, 'Joan', 'Greer', 'Female', '1984-07-04', 'stantonpatrick@example.net', '9524991187', 'Nashik', 'Maharashtra', '2023-05-18'),
(416, 'James', 'Bates', 'Other', '1984-02-17', 'amy88@example.org', '9061675677', 'Kolkata', 'West Bengal', '2021-02-09'),
(417, 'Gregory', 'Hopkins', 'Female', '1998-01-03', 'travistaylor@example.net', '9671978897', 'Mysore', 'Karnataka', '2022-06-05'),
(418, 'Melissa', 'Hunter', 'Female', '1979-05-20', 'ygarza@example.net', '9545009025', 'Vadodara', 'Gujarat', '2022-01-17'),
(419, 'Judy', 'Johnson', 'Male', '2003-05-20', 'oscar65@example.com', '9650333491', 'Surat', 'Gujarat', '2023-09-23'),
(420, 'Cameron', 'Torres', 'Other', '1976-10-19', 'ryanbenjamin@example.net', '9698640790', 'Kolkata', 'West Bengal', '2023-12-15'),
(421, 'Nicholas', 'Myers', 'Female', '1988-01-29', 'rgarcia@example.org', '9578529456', 'Mumbai', 'Maharashtra', '2021-08-09'),
(422, 'Cynthia', 'Dickson', 'Other', '1964-03-18', 'karlwilliams@example.net', '9639191954', 'Mysore', 'Karnataka', '2021-03-15'),
(423, 'Laurie', 'Alvarez', 'Female', '1970-08-31', 'pearsonkevin@example.com', '9685366498', 'Kolkata', 'West Bengal', '2022-05-11'),
(424, 'Kathryn', 'White', 'Male', '1961-06-28', 'barbaralewis@example.net', '9748969083', 'Mysore', 'Karnataka', '2022-02-03'),
(425, 'Dylan', 'Hernandez', 'Female', '1993-06-28', 'megan65@example.org', '9364424936', 'New Delhi', 'Delhi', '2021-09-18'),
(426, 'Edward', 'Johnson', 'Other', '1998-11-08', 'steven86@example.com', '9032420448', 'Mumbai', 'Maharashtra', '2021-07-12'),
(427, 'Melissa', 'Stuart', 'Male', '1983-12-01', 'brownpeggy@example.com', '9941651623', 'Trivandrum', 'Kerala', '2021-05-03'),
(428, 'Jessica', 'Fitzpatrick', 'Other', '1985-08-25', 'tyler13@example.net', '9155963632', 'Kozhikode', 'Kerala', '2021-04-27'),
(429, 'Jason', 'Hill', 'Other', '1980-03-13', 'henrynicholas@example.org', '9586734257', 'Howrah', 'West Bengal', '2023-02-22'),
(430, 'Lori', 'Smith', 'Male', '2007-01-02', 'skinnereileen@example.org', '9348645183', 'Kochi', 'Kerala', '2023-07-28'),
(431, 'Paul', 'Browning', 'Female', '1979-06-17', 'kevin34@example.org', '9275604177', 'Kozhikode', 'Kerala', '2023-03-18'),
(432, 'Sara', 'Cook', 'Female', '1980-11-13', 'hollowayholly@example.net', '9156985700', 'Hyderabad', 'Telangana', '2022-12-03'),
(433, 'Isaiah', 'Ramos', 'Female', '1991-05-15', 'moralescourtney@example.com', '9911238296', 'Mangalore', 'Karnataka', '2023-05-18'),
(434, 'Luis', 'Mendoza', 'Female', '1995-11-20', 'glenn95@example.com', '9316526693', 'Kochi', 'Kerala', '2021-01-23'),
(435, 'Andrew', 'Hansen', 'Male', '1989-12-21', 'rebeccamccann@example.org', '9420696942', 'Howrah', 'West Bengal', '2021-04-08'),
(436, 'Micheal', 'Valentine', 'Male', '1966-03-25', 'dayala@example.net', '9713334476', 'Hubli', 'Karnataka', '2021-05-23'),
(437, 'Melissa', 'Greene', 'Female', '2008-05-13', 'jessica36@example.org', '9620443973', 'Trichy', 'Tamil Nadu', '2022-02-09'),
(438, 'Gabrielle', 'Ellis', 'Other', '1961-02-02', 'monicamccann@example.com', '9366941180', 'New Delhi', 'Delhi', '2021-02-27'),
(439, 'Sarah', 'Ruiz', 'Other', '1977-08-08', 'smithwilliam@example.com', '9465280924', 'Kozhikode', 'Kerala', '2021-07-05'),
(440, 'Trevor', 'Morgan', 'Male', '1983-01-24', 'stewartalyssa@example.org', '9415027456', 'Trichy', 'Tamil Nadu', '2021-11-06'),
(441, 'Natalie', 'Austin', 'Male', '1997-02-24', 'zachary62@example.com', '9728703203', 'Kolkata', 'West Bengal', '2021-07-20'),
(442, 'Thomas', 'Martin', 'Other', '1983-01-07', 'carneysara@example.org', '9758777121', 'Mumbai', 'Maharashtra', '2022-01-18'),
(443, 'James', 'Mitchell', 'Male', '2000-09-03', 'anna93@example.net', '9089261371', 'Trivandrum', 'Kerala', '2023-08-29'),
(444, 'Anthony', 'Maldonado', 'Other', '1993-04-07', 'gbrooks@example.com', '9201777490', 'Nagpur', 'Maharashtra', '2021-12-27'),
(445, 'Bradley', 'Dean', 'Female', '1982-05-06', 'jasonwilliams@example.net', '9450189616', 'Warangal', 'Telangana', '2021-10-07'),
(446, 'John', 'Wise', 'Female', '1979-09-29', 'phelpsfrank@example.com', '9421476492', 'Kolkata', 'West Bengal', '2022-01-28'),
(447, 'Cody', 'Richardson', 'Other', '1970-03-11', 'emcclure@example.com', '9996165926', 'Kolkata', 'West Bengal', '2022-11-21'),
(448, 'Christopher', 'Palmer', 'Female', '2007-04-25', 'deborahreeves@example.com', '9881476174', 'Hubli', 'Karnataka', '2021-06-12'),
(449, 'David', 'Leach', 'Female', '2000-12-27', 'dphillips@example.net', '9108186617', 'Hyderabad', 'Telangana', '2022-12-24'),
(450, 'Ashley', 'King', 'Female', '1972-10-30', 'mackallen@example.net', '9722601645', 'Mysore', 'Karnataka', '2022-10-05'),
(451, 'Spencer', 'Santiago', 'Female', '1990-07-16', 'matthew23@example.org', '9194168006', 'Warangal', 'Telangana', '2021-05-08'),
(452, 'George', 'Woods', 'Male', '1993-10-20', 'nturner@example.com', '9641220310', 'Mangalore', 'Karnataka', '2023-02-01'),
(453, 'Jacob', 'Johnson', 'Other', '1983-09-09', 'debragraham@example.net', '9831472760', 'Vadodara', 'Gujarat', '2021-05-08'),
(454, 'Rachel', 'Rodgers', 'Female', '1981-12-20', 'cruiz@example.net', '9334960501', 'Mumbai', 'Maharashtra', '2022-11-21'),
(455, 'Jennifer', 'Petty', 'Other', '2001-04-30', 'benjamin67@example.net', '9997308069', 'Vadodara', 'Gujarat', '2021-12-12'),
(456, 'Bryan', 'Orozco', 'Female', '1980-08-14', 'nwilson@example.net', '9576024375', 'Madurai', 'Tamil Nadu', '2022-04-25'),
(457, 'William', 'Matthews', 'Female', '1993-06-22', 'sanderson@example.net', '9665729341', 'Pune', 'Maharashtra', '2022-12-31'),
(458, 'David', 'Gonzalez', 'Female', '1989-09-02', 'leonsherry@example.com', '9433800545', 'Kochi', 'Kerala', '2023-01-11'),
(459, 'Gregg', 'Villarreal', 'Male', '1984-10-05', 'morgandaniel@example.org', '9183745508', 'Pune', 'Maharashtra', '2021-10-20'),
(460, 'Edward', 'Vaughn', 'Male', '1985-05-02', 'mccarthysara@example.com', '9711991808', 'Hyderabad', 'Telangana', '2021-04-26'),
(461, 'Crystal', 'Pitts', 'Other', '2004-04-28', 'jessicaerickson@example.net', '9712552137', 'Madurai', 'Tamil Nadu', '2023-11-27'),
(462, 'Kayla', 'Smith', 'Other', '2000-08-31', 'gpeterson@example.org', '9145653286', 'Nashik', 'Maharashtra', '2023-05-12'),
(463, 'Devin', 'Patterson', 'Male', '2004-08-29', 'hcrane@example.net', '9507208115', 'Pune', 'Maharashtra', '2021-12-11'),
(464, 'Tina', 'Martin', 'Other', '1963-07-19', 'kellerdarlene@example.net', '9084668455', 'Nashik', 'Maharashtra', '2021-01-09'),
(465, 'Joshua', 'Rose', 'Male', '2004-10-11', 'ngriffin@example.net', '9997563410', 'Surat', 'Gujarat', '2022-08-11'),
(466, 'Peter', 'Higgins', 'Other', '2002-10-30', 'jason88@example.com', '9852008943', 'New Delhi', 'Delhi', '2023-06-30'),
(467, 'Kevin', 'Henderson', 'Other', '1984-11-06', 'skinnerjordan@example.net', '9510174907', 'Warangal', 'Telangana', '2022-01-06'),
(468, 'Joel', 'Reese', 'Male', '1988-07-06', 'michaelmitchell@example.net', '9926831589', 'New Delhi', 'Delhi', '2021-07-30'),
(469, 'Kimberly', 'Gibson', 'Female', '1967-08-19', 'fpoole@example.org', '9062737158', 'New Delhi', 'Delhi', '2022-03-17'),
(470, 'Angelica', 'Maxwell', 'Other', '2002-06-15', 'cfields@example.net', '9762282772', 'Trivandrum', 'Kerala', '2023-11-26'),
(471, 'William', 'Rice', 'Female', '1993-12-06', 'vkennedy@example.org', '9851961159', 'Vadodara', 'Gujarat', '2021-11-13'),
(472, 'Alexandra', 'Wilson', 'Other', '1975-03-26', 'kevin70@example.org', '9296044327', 'Ahmedabad', 'Gujarat', '2021-01-03'),
(473, 'Amy', 'Jones', 'Male', '1962-09-28', 'kberry@example.com', '9567922877', 'Nagpur', 'Maharashtra', '2022-12-31'),
(474, 'Edward', 'Luna', 'Male', '1964-11-18', 'zhughes@example.com', '9807412094', 'Trivandrum', 'Kerala', '2022-09-06'),
(475, 'David', 'Hansen', 'Other', '1969-10-31', 'bernardaimee@example.com', '9801820433', 'Bangalore', 'Karnataka', '2023-06-27'),
(476, 'Mary', 'Riley', 'Female', '1964-08-29', 'richard07@example.org', '9562608564', 'Mysore', 'Karnataka', '2021-04-10'),
(477, 'Tina', 'Weaver', 'Female', '1974-04-17', 'jonathandavis@example.com', '9620952004', 'Kozhikode', 'Kerala', '2022-03-03'),
(478, 'Luke', 'Gutierrez', 'Male', '1976-02-28', 'hdavid@example.org', '9339937886', 'Ahmedabad', 'Gujarat', '2023-11-05'),
(479, 'Joseph', 'Flores', 'Male', '1987-02-23', 'washingtonrick@example.org', '9048913824', 'Trivandrum', 'Kerala', '2022-09-14'),
(480, 'Sean', 'Mathis', 'Male', '1984-08-13', 'nathanielgalloway@example.org', '9868700794', 'Ahmedabad', 'Gujarat', '2022-12-16'),
(481, 'Gary', 'Brown', 'Female', '2004-11-04', 'carla65@example.net', '9398402891', 'Kolkata', 'West Bengal', '2021-11-25'),
(482, 'Randall', 'Martinez', 'Female', '1967-04-20', 'natalie39@example.net', '9554743553', 'Mangalore', 'Karnataka', '2022-05-19'),
(483, 'Carol', 'Smith', 'Male', '1993-10-21', 'lynchadam@example.org', '9268768118', 'Madurai', 'Tamil Nadu', '2021-02-03'),
(484, 'Marilyn', 'Powers', 'Male', '1992-11-11', 'teresa69@example.com', '9620175370', 'Kolkata', 'West Bengal', '2021-08-31'),
(485, 'Andrew', 'Campbell', 'Male', '2004-10-27', 'james94@example.net', '9337504793', 'Madurai', 'Tamil Nadu', '2021-01-08'),
(486, 'Tracey', 'Little', 'Female', '1965-12-03', 'ashley72@example.net', '9399921921', 'Nashik', 'Maharashtra', '2021-05-20'),
(487, 'Sarah', 'Foley', 'Female', '2002-11-19', 'james08@example.net', '9487060566', 'Chennai', 'Tamil Nadu', '2021-10-27'),
(488, 'Erin', 'Owens', 'Male', '1977-12-12', 'stephensonjeffrey@example.com', '9687506351', 'Hyderabad', 'Telangana', '2023-08-21'),
(489, 'Lindsey', 'Mooney', 'Male', '1971-06-05', 'prosario@example.org', '9254110760', 'Ahmedabad', 'Gujarat', '2022-10-11'),
(490, 'Connie', 'Cook', 'Female', '1972-08-13', 'wellssusan@example.org', '9583199717', 'New Delhi', 'Delhi', '2022-09-26'),
(491, 'Christopher', 'Brown', 'Male', '1962-03-13', 'pamela12@example.org', '9704961108', 'Coimbatore', 'Tamil Nadu', '2021-02-27'),
(492, 'Melissa', 'Morales', 'Female', '1990-03-24', 'mhall@example.net', '9907676991', 'Kochi', 'Kerala', '2022-01-07'),
(493, 'Sharon', 'Logan', 'Male', '1982-05-23', 'briana11@example.org', '9919392845', 'Kozhikode', 'Kerala', '2022-04-06'),
(494, 'Jenny', 'Wallace', 'Other', '1972-04-07', 'brownlarry@example.com', '9854982274', 'Salem', 'Tamil Nadu', '2022-10-23'),
(495, 'Kelly', 'Cordova', 'Other', '1985-06-11', 'brianhunter@example.net', '9065333153', 'New Delhi', 'Delhi', '2023-01-01'),
(496, 'Heather', 'Holden', 'Female', '1989-05-21', 'melissa95@example.net', '9465217073', 'Ahmedabad', 'Gujarat', '2023-10-04'),
(497, 'Danielle', 'Steele', 'Other', '1982-12-28', 'johnnavarro@example.com', '9636205015', 'Kolkata', 'West Bengal', '2021-02-02'),
(498, 'Darius', 'Roberts', 'Other', '1969-12-05', 'bradley03@example.org', '9423425832', 'Ahmedabad', 'Gujarat', '2021-08-03'),
(499, 'Gregory', 'Green', 'Other', '1965-06-15', 'nicholascobb@example.org', '9534735528', 'Mangalore', 'Karnataka', '2023-12-05'),
(500, 'Whitney', 'Keith', 'Male', '2002-10-04', 'wilsonnicole@example.org', '9338655963', 'Trichy', 'Tamil Nadu', '2023-10-05');
select * from customers;

select * from orders;
--find Total Customers
SELECT COUNT(*) AS total_customers
FROM public.customers;


SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM public.customers;


SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM public.orders;

--Find each customer's last delivered purchase
SELECT
    c.customer_id,
    MAX(
        CASE
            WHEN o.order_status = 'Delivered'
            THEN o.order_date
        END
    ) AS last_purchase_date
FROM public.customers c
LEFT JOIN public.orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY c.customer_id;


--Add customer status

WITH customer_last_purchase AS (
    SELECT
        c.customer_id,
        MAX(
            CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
)
SELECT
    customer_id,
    last_purchase_date,
    CASE
        WHEN last_purchase_date IS NULL THEN 'Inactive'
        WHEN last_purchase_date <= DATE '2024-06-30' THEN 'Inactive'
        ELSE 'Active'
    END AS customer_status
FROM customer_last_purchase
ORDER BY customer_id;

--calculate days since last purchase
WITH customer_last_purchase AS (
    SELECT
        c.customer_id,
        MAX(
            CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
)
SELECT
    customer_id,
    last_purchase_date,
    CASE
        WHEN last_purchase_date IS NULL
            THEN NULL
        ELSE DATE '2024-12-31' - last_purchase_date
    END AS days_since_last_purchase,
    CASE
        WHEN last_purchase_date IS NULL
            THEN 'Inactive'
        WHEN last_purchase_date <= DATE '2024-06-30'
            THEN 'Inactive'
        ELSE 'Active'
    END AS customer_status
FROM customer_last_purchase
ORDER BY customer_id;

--Count Active vs Inactive
WITH customer_last_purchase AS (
    SELECT
        c.customer_id,
        MAX(
            CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
)
SELECT
    CASE
        WHEN last_purchase_date IS NULL
             OR last_purchase_date <= DATE '2024-06-30'
        THEN 'Inactive'
        ELSE 'Active'
    END AS customer_status,
    COUNT(*) AS customer_count
FROM customer_last_purchase
GROUP BY CASE
        WHEN last_purchase_date IS NULL
             OR last_purchase_date <= DATE '2024-06-30'
        THEN 'Inactive'
        ELSE 'Active'
		    END
ORDER BY customer_status;

--Calculate revenue
SELECT
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM public.orders o
JOIN public.order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Delivered';


--Revenue at risk
WITH customer_last_purchase AS (
    SELECT c.customer_id,
        MAX(
            CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
),
inactive_customers AS (
    SELECT customer_id
    FROM customer_last_purchase
    WHERE last_purchase_date IS NULL
       OR last_purchase_date <= DATE '2024-12-31' - INTERVAL '6 months'
)
SELECT
    COALESCE(
        SUM(oi.quantity * oi.unit_price),
        0
    ) AS revenue_at_risk
FROM inactive_customers ic
JOIN public.orders o
    ON ic.customer_id = o.customer_id
JOIN public.order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Delivered';




--CLV
WITH customer_revenue AS (
    SELECT
        c.customer_id,
        COALESCE(
            SUM(
                CASE
                    WHEN o.order_status = 'Delivered'
                    THEN oi.quantity * oi.unit_price
                END
            ),
            0
        ) AS clv
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    LEFT JOIN public.order_items oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_id
)
SELECT *
FROM customer_revenue
ORDER BY clv DESC;

--AOV

SELECT
    ROUND(
        SUM(oi.quantity * oi.unit_price)
        / NULLIF(COUNT(DISTINCT o.order_id), 0),
        2
    ) AS average_order_value
FROM public.orders o
JOIN public.order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'Delivered';



--Top 10 inactive customers by CLV
WITH customer_data AS (
    SELECT c.customer_id,c.first_name,c.last_name,c.state,
        MAX(
            CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date,
        COALESCE(
            SUM(CASE
                    WHEN o.order_status = 'Delivered'
                    THEN oi.quantity * oi.unit_price
                END
            ),
            0
        ) AS clv
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    LEFT JOIN public.order_items oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_id,c.first_name,c.last_name,c.state
)
SELECT customer_id,first_name,last_name,state,last_purchase_date,clv
FROM customer_data
WHERE last_purchase_date IS NULL
    OR last_purchase_date <=
       DATE '2024-12-31' - INTERVAL '6 months'
ORDER BY clv DESC
LIMIT 10;

--Inactive customers by state
WITH customer_status AS (
    SELECT
        c.customer_id,
        c.state,
        MAX(
            CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id,
        c.state
)
SELECT
    state,
    COUNT(*) AS inactive_customers
FROM customer_status
WHERE
    last_purchase_date IS NULL
    OR last_purchase_date <=
       DATE '2024-12-31' - INTERVAL '6 months'
GROUP BY state
ORDER BY inactive_customers DESC;

--Customer segment by CLV
WITH customer_revenue AS (
    SELECT c.customer_id,COALESCE(
            SUM(CASE
                    WHEN o.order_status = 'Delivered'
                    THEN oi.quantity * oi.unit_price
                END),0
        ) AS clv
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    LEFT JOIN public.order_items oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_id
)
SELECT CASE WHEN clv < 10000
            THEN 'Low CLV'
        WHEN clv < 30000
            THEN 'Medium CLV'
        ELSE 'High CLV'
    END AS clv_segment,COUNT(*) AS customer_count,SUM(clv) AS total_clv
FROM customer_revenue
GROUP BY CASE WHEN clv < 10000
            THEN 'Low CLV'
        WHEN clv < 30000
            THEN 'Medium CLV'
        ELSE 'High CLV'
    END
ORDER BY total_clv DESC;


--Inactive customers by last purchase month
WITH customer_last_purchase AS (
    SELECT c.customer_id,
        MAX(CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
)
SELECT CASE
        WHEN last_purchase_date IS NULL
            THEN 'Never Purchased'
        ELSE TO_CHAR(DATE_TRUNC('month',last_purchase_date),'Mon YYYY')
    END AS last_purchase_month,
    COUNT(*) AS inactive_customers
FROM customer_last_purchase
WHERE last_purchase_date IS NULL
    OR last_purchase_date <=
       DATE '2024-12-31' - INTERVAL '6 months'
GROUP BY CASE
        WHEN last_purchase_date IS NULL
            THEN 'Never Purchased'
        ELSE TO_CHAR(DATE_TRUNC('month',last_purchase_date),'Mon YYYY')
    END
ORDER BY    last_purchase_month;

--Average inactive days
WITH customer_last_purchase AS (
    SELECT
        c.customer_id,
        MAX(
            CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id
)
SELECT
    AVG(
        DATE '2024-12-31'
        - last_purchase_date
    ) AS average_inactive_days
FROM customer_last_purchase
WHERE
    last_purchase_date IS NOT NULL
    AND last_purchase_date <=
        DATE '2024-12-31' - INTERVAL '6 months';


--Top 10 Inactive Customers by CLV
WITH customer_last_purchase AS (
    SELECT c.customer_id,c.first_name,c.last_name,MAX(
            CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id,c.first_name,c.last_name),
inactive_customers AS (
    SELECT customer_id,first_name,last_name,last_purchase_date
    FROM customer_last_purchase
    WHERE last_purchase_date IS NULL
       OR last_purchase_date <= DATE '2024-12-31' - INTERVAL '6 months'),
customer_clv AS (
    SELECT ic.customer_id,ic.first_name,ic.last_name,ic.last_purchase_date,
        COALESCE(SUM(oi.quantity * oi.unit_price),0) AS clv
    FROM inactive_customers ic
    LEFT JOIN public.orders o
        ON ic.customer_id = o.customer_id
       AND o.order_status = 'Delivered'
    LEFT JOIN public.order_items oi
        ON o.order_id = oi.order_id
    GROUP BY ic.customer_id,ic.first_name,ic.last_name,ic.last_purchase_date)
SELECT customer_id,first_name || ' ' || last_name AS customer_name,last_purchase_date,ROUND(clv, 2) AS clv
FROM customer_clv
ORDER BY clv DESC
LIMIT 10;




--Revenue at Risk by Category
WITH customer_data AS (
    SELECT c.customer_id,MAX(
            CASE
                WHEN o.order_status = 'Delivered'
                THEN o.order_date
            END
        ) AS last_purchase_date
    FROM public.customers c
    LEFT JOIN public.orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id),
inactive_customers AS (SELECT customer_id
    FROM customer_data
    WHERE last_purchase_date IS NULL
       OR last_purchase_date <= DATE '2024-12-31' - INTERVAL '6 months')
SELECT cat.category_name AS category,
    SUM(oi.quantity * oi.unit_price
    ) AS revenue_at_risk
FROM inactive_customers ic
JOIN public.orders o
    ON ic.customer_id = o.customer_id
JOIN public.order_items oi
    ON o.order_id = oi.order_id
JOIN public.products p
    ON oi.product_id = p.product_id
JOIN public.categories cat
    ON p.category_id = cat.category_id
WHERE o.order_status = 'Delivered'
GROUP BY cat.category_name
ORDER BY revenue_at_risk DESC;

