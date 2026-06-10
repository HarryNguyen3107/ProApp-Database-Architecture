CREATE Database Pro_app;
USE Pro_app;
CREATE TABLE Customer (
    Customer_id VARCHAR(10) PRIMARY KEY,
    Customer_name VARCHAR(100),
    Customer_address VARCHAR(255),
    Customer_phone VARCHAR(15)
);
-- Insert example data into the Customer table
INSERT INTO Customer (Customer_id, Customer_name, Customer_address, Customer_phone) VALUES
(1001, 'John Smith', '123 Maple St, Springfield, IL', '555-01001'),
(1002, 'Emily Johnson', '456 Oak Ave, Boston, MA', '555-01002'),
(1003, 'Michael Williams', '789 Pine Dr, Seattle, WA', '555-01003'),
(1004, 'Sarah Brown', '101 Birch Rd, Denver, CO', '555-01004'),
(1005, 'James Davis', '202 Cedar Ln, Austin, TX', '555-01005'),
(1006, 'Jessica Miller', '303 Walnut Blvd, Miami, FL', '555-01006'),
(1007, 'Daniel Wilson', '404 Chestnut St, San Francisco, CA', '555-01007'),
(1008, 'Karen Taylor', '505 Elm St, Chicago, IL', '555-01008'),
(1009, 'Christopher Moore', '606 Willow Way, New York, NY', '555-01009'),
(1010, 'Amanda White', '707 Maple Ave, Houston, TX', '555-01010');

CREATE TABLE Supplier (
    Supplier_id VARCHAR(10) PRIMARY KEY,
    Supplier_name VARCHAR(100),
    Supplier_address VARCHAR(255),
    Supplier_phone VARCHAR(15)
);

-- Insert example data into the Supplier table
INSERT INTO Supplier (Supplier_id, Supplier_name, Supplier_address, Supplier_phone) VALUES
('3001', 'Global Supplies Inc.', '789 Commerce St, Dallas, TX', '555-03001'),
('3002', 'West Coast Traders', '456 Trade Ave, Los Angeles, CA', '555-03002'),
('3003', 'Northern Equipment', '123 Gear Rd, Minneapolis, MN', '555-03003'),
('3004', 'Southern Parts Ltd.', '987 Tools St, Atlanta, GA', '555-03004'),
('3005', 'Midwest Materials', '654 Supply Ln, Kansas City, MO', '555-03005'),
('3006', 'Eastern Distributors', '321 Trade Dr, Boston, MA', '555-03006'),
('3007', 'Pacific Trade Group', '159 Pacific Blvd, San Jose, CA', '555-03007'),
('3008', 'National Supplies', '852 Distribution Rd, Detroit, MI', '555-03008'),
('3009', 'Reliable Tools Inc.', '456 Mechanic Way, Newark, NJ', '555-03009'),
('3010', 'Secure Resources', '789 Safety St, Miami, FL', '555-03010');

CREATE TABLE Trade_people (
    Trade_ppl_id VARCHAR(10) PRIMARY KEY,
    Trade_ppl_name VARCHAR(100),
    Trade_ppl_address VARCHAR(255),
    Trade_ppl_phone VARCHAR(15)
);

-- Insert example data into the Trade_people table
INSERT INTO Trade_people (Trade_ppl_id, Trade_ppl_name, Trade_ppl_address, Trade_ppl_phone) VALUES
('2001', 'Matthew Taylor', '123 Elm St, Phoenix, AZ', '555-02001'),
('2002', 'Joshua Thompson', '456 Maple Dr, Las Vegas, NV', '555-02002'),
('2003', 'Anthony Martinez', '789 Pine Blvd, San Antonio, TX', '555-02003'),
('2004', 'David Anderson', '101 Birch Ave, Orlando, FL', '555-02004'),
('2005', 'William Thomas', '202 Cedar St, San Diego, CA', '555-02005'),
('2006', 'Andrew Jackson', '303 Walnut Ln, Charlotte, NC', '555-02006'),
('2007', 'Joseph Harris', '404 Chestnut Rd, Portland, OR', '555-02007'),
('2008', 'Christopher Clark', '505 Willow St, Nashville, TN', '555-02008'),
('2009', 'Daniel Lewis', '606 Maple Ave, Indianapolis, IN', '555-02009'),
('2010', 'Jacob Robinson', '707 Oak Way, Baltimore, MD', '555-02010');

CREATE TABLE Training_provider (
    Train_provider_id VARCHAR(10) PRIMARY KEY,
    Train_provider_name VARCHAR(100),
    Train_provider_phone VARCHAR(15)
);

-- Insert example data into the Training_provider table
INSERT INTO Training_provider (Train_provider_id, Train_provider_name, Train_provider_phone) VALUES
('4001', 'Professional Skills LLC', '555-04001'),
('4002', 'Global Training Hub', '555-04002'),
('4003', 'North American Institute', '555-04003'),
('4004', 'Skills4Success', '555-04004'),
('4005', 'Masterclass Academy', '555-04005'),
('4006', 'Future Leaders Academy', '555-04006'),
('4007', 'Innovate Training Ltd', '555-04007'),
('4008', 'Build Your Future Ltd', '555-04008'),
('4009', 'Success Pathway LLC', '555-04009'),
('4010', 'Elite Skills Group', '555-04010');

CREATE TABLE Training_course (
    Course_id VARCHAR(10) PRIMARY KEY,
    Course_name VARCHAR(100),
    Certificate VARCHAR(50)
);

-- Insert example data into the Training_course table
INSERT INTO Training_course (Course_id, Course_name, Certificate) VALUES
('C001', 'Door Installation and Repair', 'Door Cert'),
('C002', 'Fence Construction', 'Fence Cert'),
('C003', 'Roof Maintenance', 'Roof Cert'),
('C004', 'Plumbing Installation', 'Plumbing Cert'),
('C005', 'Electrical Wiring Basics', 'Electrical Cert'),
('C006', 'Window Fitting and Glazing', 'Window Cert'),
('C007', 'Painting and Decorating', 'Painting Cert'),
('C008', 'Carpentry Essentials', 'Carpentry Cert'),
('C009', 'Tile Laying and Grouting', 'Tiling Cert'),
('C010', 'Garden Landscaping', 'Landscaping Cert'),
('C011', 'Advanced Door Mechanics', 'Adv Door Cert'),
('C012', 'Steel Fence Fabrication', 'Steel Fence Cert'),
('C013', 'Roof Waterproofing', 'Waterproofing Cert'),
('C014', 'Plumbing for Beginners', 'Begin Plumbing Cert'),
('C015', 'Advanced Electrical Wiring', 'Adv Electrical Cert'),
('C016', 'Glass Cutting Techniques', 'Glass Cert'),
('C017', 'Exterior Painting Techniques', 'Ext Painting Cert'),
('C018', 'Advanced Carpentry', 'Adv Carpentry Cert'),
('C019', 'Professional Tiling', 'Pro Tiling Cert'),
('C020', 'Garden Design and Maintenance', 'Garden Cert');

CREATE TABLE Course_offering (
    Train_provider_id VARCHAR(10),
    Course_id VARCHAR(10),
    Duration INT,
    PRIMARY KEY (Train_provider_id, Course_id),
    FOREIGN KEY (Train_provider_id) REFERENCES Training_provider(Train_provider_id),
    FOREIGN KEY (Course_id) REFERENCES Training_course(Course_id)
);

-- Insert example data into the Course_offering table
INSERT INTO Course_offering (Train_provider_id, Course_id, Duration) VALUES
('4001', 'C001', 30),
('4002', 'C002', 25),
('4003', 'C003', 20),
('4004', 'C004', 15),
('4005', 'C005', 28),
('4006', 'C006', 18),
('4007', 'C007', 22),
('4008', 'C008', 10),
('4009', 'C009', 12),
('4010', 'C010', 16),
('4001', 'C011', 30),
('4002', 'C012', 24),
('4003', 'C013', 14),
('4004', 'C014', 20),
('4005', 'C015', 27),
('4006', 'C016', 19),
('4007', 'C017', 22),
('4008', 'C018', 15),
('4009', 'C019', 25),
('4010', 'C020', 30),
('4001', 'C002', 14),
('4003', 'C008', 18),
('4005', 'C018', 12),
('4007', 'C015', 26),
('4002', 'C019', 29),
('4009', 'C014', 21),
('4006', 'C020', 23),
('4008', 'C017', 13),
('4004', 'C011', 16),
('4001', 'C016', 27);

CREATE TABLE Certified_people (
    Trade_ppl_id VARCHAR(10),
    Course_id VARCHAR(10),
    Acquire_date DATE,
    PRIMARY KEY (Trade_ppl_id , Course_id),
    FOREIGN KEY (Trade_ppl_id)
        REFERENCES Trade_people (Trade_ppl_id),
    FOREIGN KEY (Course_id)
        REFERENCES Training_course (Course_id)
);

-- Insert example data into the Certified_people table
INSERT INTO Certified_people (Trade_ppl_id, Course_id, Acquire_date) VALUES
('2001', 'C001', '2024-01-15'),
('2002', 'C002', '2024-02-10'),
('2003', 'C003', '2024-03-05'),
('2004', 'C004', '2024-04-20'),
('2005', 'C005', '2024-05-18'),
('2006', 'C006', '2024-06-12'),
('2007', 'C007', '2024-07-08'),
('2008', 'C008', '2024-08-22'),
('2009', 'C009', '2024-09-17'),
('2010', 'C010', '2024-10-05'),
('2002', 'C011', '2024-02-22'),
('2003', 'C012', '2024-03-18'),
('2004', 'C013', '2024-04-26'),
('2005', 'C014', '2024-05-20'),
('2006', 'C015', '2024-06-15'),
('2007', 'C016', '2024-07-19'),
('2008', 'C017', '2024-08-23'),
('2009', 'C018', '2024-09-20'),
('2001', 'C019', '2024-01-25'),
('2004', 'C020', '2024-04-30');

CREATE TABLE Material_detail (
    Material_id VARCHAR(10) PRIMARY KEY,
    Material_name VARCHAR(100)
);

-- Insert example data into the Material_property table
INSERT INTO Material_detail (Material_id, Material_name) VALUES
('M001', 'Wooden Door'),
('M002', 'Steel Fence'),
('M003', 'Roof Tiles'),
('M004', 'PVC Pipes'),
('M005', 'Copper Wiring'),
('M006', 'Glass Windows'),
('M007', 'Paint Buckets'),
('M008', 'Cement Bags'),
('M009', 'Carpentry Tools'),
('M010', 'Garden Soil'),
('M011', 'Insulation Sheets'),
('M012', 'Waterproof Membrane'),
('M013', 'Ceramic Tiles'),
('M014', 'Plumbing Fittings'),
('M015', 'Electrical Panels'),
('M016', 'Glass Panels'),
('M017', 'Roof Coating'),
('M018', 'Fence Panels'),
('M019', 'Door Hinges'),
('M020', 'Garden Tools');

CREATE TABLE Task (
    Task_id VARCHAR(10) PRIMARY KEY,
    Customer_id VARCHAR(10),
    Task_type VARCHAR(50),
    Task_describe VARCHAR(255),
    Quote_fee DECIMAL(10 , 2 ),
    Ratting INT
);

-- Insert dummy data into Task table
INSERT INTO Task (Task_id, Customer_id, Ratting, Quote_fee, Task_type, Task_describe) VALUES
('T001', '1002', 2, 25000, 'Full responsible contract', 'Fence building'),
('T002', '1006', 3, 25000, 'Full responsible contract', 'Roof repair'),
('T003', '1005', 5, 25000, 'Buying material only', 'Window installation'),
('T004', '1009', 4, 25000, 'Full responsible contract', 'Door fixing'),
('T005', '1004', 1, 25000, 'Hiring labor only', 'Painting'),
('T006', '1008', 5, 25000, 'Buying material only', 'Tile laying'),
('T007', '1001', 4, 25000, 'Hiring labor only', 'Electrical wiring'),
('T008', '1003', 3, 25000, 'Buying material only', 'Garden setup'),
('T009', '1007', 5, 25000, 'Hiring labor only', 'Plumbing installation'),
('T010', '1003', 2, 25000, 'Full responsible contract', 'Roof repair'),
('T011', '1005', 4, 25000, 'Buying material only', 'Door fixing'),
('T012', '1006', 3, 25000, 'Buying material only', 'Fence building'),
('T013', '1008', 1, 25000, 'Hiring labor only', 'Carpentry work'),
('T014', '1002', 5, 25000, 'Buying material only', 'Painting'),
('T015', '1006', 3, 25000, 'Full responsible contract', 'Tile laying'),
('T016', '1007', 4, 25000, 'Buying material only', 'Garden setup'),
('T017', '1004', 2, 25000, 'Full responsible contract', 'Roof repair'),
('T018', '1009', 5, 25000, 'Buying material only', 'Door fixing'),
('T019', '1008', 3, 25000, 'Buying material only', 'Plumbing installation'),
('T020', '1007', 4, 25000, 'Hiring labor only', 'Fence building'),
('T021', '1005', 2, 25000, 'Buying material only', 'Electrical wiring'),
('T022', '1001', 5, 25000, 'Full responsible contract', 'Roof repair'),
('T023', '1003', 4, 25000, 'Buying material only', 'Painting'),
('T024', '1003', 3, 25000, 'Full responsible contract', 'Carpentry work'),
('T025', '1006', 1, 25000, 'Buying material only', 'Garden setup'),
('T026', '1004', 2, 25000, 'Hiring labor only', 'Door fixing'),
('T027', '1008', 5, 25000, 'Buying material only', 'Plumbing installation'),
('T028', '1002', 4, 25000, 'Full responsible contract', 'Electrical wiring'),
('T029', '1009', 3, 25000, 'Hiring labor only', 'Roof repair'),
('T030', '1007', 2, 25000, 'Buying material only', 'Tile laying'),
('T031', '1007', 5, 25000, 'Full responsible contract', 'Door fixing'),
('T032', '1005', 4, 25000, 'Buying material only', 'Fence building'),
('T033', '1003', 1, 25000, 'Full responsible contract', 'Garden setup'),
('T034', '1006', 2, 25000, 'Buying material only', 'Carpentry work'),
('T035', '1008', 3, 25000, 'Hiring labor only', 'Tile laying'),
('T036', '1005', 5, 25000, 'Buying material only', 'Painting'),
('T037', '1002', 4, 25000, 'Buying material only', 'Electrical wiring'),
('T038', '1006', 3, 25000, 'Full responsible contract', 'Roof repair'),
('T039', '1004', 2, 25000, 'Hiring labor only', 'Door fixing'),
('T040', '1009', 1, 25000, 'Buying material only', 'Fence building'),
('T041', '1009', 5, 25000, 'Full responsible contract', 'Carpentry work'),
('T042', '1005', 4, 25000, 'Buying material only', 'Plumbing installation'),
('T043', '1007', 3, 25000, 'Full responsible contract', 'Tile laying'),
('T044', '1003', 2, 25000, 'Buying material only', 'Garden setup'),
('T045', '1002', 5, 25000, 'Buying material only', 'Electrical wiring'),
('T046', '1001', 4, 25000, 'Hiring labor only', 'Door fixing'),
('T047', '1005', 3, 25000, 'Full responsible contract', 'Painting'),
('T048', '1006', 2, 25000, 'Buying material only', 'Roof repair'),
('T049', '1002', 1, 25000, 'Buying material only', 'Fence building'),
('T050', '1006', 5, 25000, 'Full responsible contract', 'Tile laying');



CREATE TABLE Ordered_material (
    Order_id VARCHAR(5),
    Task_id VARCHAR(5),
    Trade_ppl_id VARCHAR(5),
    Material_id VARCHAR(5),
    Quantity INT,
    PRIMARY KEY (Order_id),
    FOREIGN KEY (Task_id) REFERENCES Task(Task_id),
    FOREIGN KEY (Trade_ppl_id) REFERENCES Trade_people(Trade_ppl_id),
    FOREIGN KEY (Material_id) REFERENCES Material_detail(Material_id)
);

-- Insert dummy data into Ordered_material table
INSERT INTO Ordered_material (Order_id, Task_id, Trade_ppl_id, Material_id, Quantity) VALUES
('O001', 'T003', NULL, 'M006', 7),
('O002', 'T003', NULL, 'M007', 6),
('O003', 'T006', NULL, 'M009', 3),
('O004', 'T006', NULL, 'M010', 9),
('O005', 'T008', NULL, 'M002', 4),
('O006', 'T008', NULL, 'M003', 2),
('O008', 'T012', NULL, 'M002', 1),
('O009', 'T012', NULL, 'M007', 5),
('O010', 'T014', NULL, 'M007', 7),
('O011', 'T016', NULL, 'M010', 2),
('O012', 'T016', NULL, 'M009', 3),
('O013', 'T018', NULL, 'M001', 6),
('O018', 'T025', NULL, 'M010', 2),
('O019', 'T027', NULL, 'M004', 5),
('O020', 'T027', NULL, 'M005', 8),
('O021', 'T030', NULL, 'M009', 1),
('O022', 'T030', NULL, 'M007', 9),
('O024', 'T034', NULL, 'M008', 3),
('O025', 'T034', NULL, 'M009', 5),
('O026', 'T036', NULL, 'M005', 7),
('O027', 'T036', NULL, 'M007', 6),
('O028', 'T037', NULL, 'M010', 4),
('O029', 'T037', NULL, 'M002', 5),
('O030', 'T040', NULL, 'M002', 3),
('O031', 'T040', NULL, 'M008', 2),
('O032', 'T042', NULL, 'M004', 9),
('O033', 'T042', NULL, 'M005', 8),
('O034', 'T044', NULL, 'M010', 7),
('O035', 'T045', NULL, 'M002', 6),
('O036', 'T045', NULL, 'M007', 1),
('O037', 'T048', NULL, 'M003', 4),
('O038', 'T048', NULL, 'M007', 2),
('O043', 'T018', NULL, 'M004', 4),
('O044', 'T018', NULL, 'M005', 6),
('O045', 'T016', NULL, 'M009', 8),
('O046', 'T016', NULL, 'M003', 5),
('O049', 'T025', NULL, 'M004', 5),
('O050', 'T027', NULL, 'M003', 9),
('O051', NULL, '2001', 'M001', 10),
('O052', NULL, '2002', 'M002', 12),
('O053', NULL, '2003', 'M003', 8),
('O054', NULL, '2004', 'M004', 15),
('O055', NULL, '2005', 'M005', 9),
('O056', NULL, '2006', 'M006', 14),
('O057', NULL, '2007', 'M007', 7),
('O058', NULL, '2008', 'M008', 11),
('O059', NULL, '2009', 'M009', 13),
('O060', NULL, '2010', 'M010', 5),
('O061', NULL, '2001', 'M001', 10),
('O062', NULL, '2002', 'M002', 12),
('O063', NULL, '2003', 'M003', 8),
('O064', NULL, '2004', 'M004', 15),
('O065', NULL, '2005', 'M005', 9),
('O066', NULL, '2006', 'M006', 14);


CREATE TABLE Material_bidding (
    Order_id VARCHAR(5),
    Supplier_id VARCHAR(5),
    M_bid_price DECIMAL(10, 2),
    M_bid_date DATE,
    Bid_accepted VARCHAR(3),
    PRIMARY KEY (Order_id, Supplier_id),
    FOREIGN KEY (Order_id) REFERENCES Ordered_material(Order_id),
    FOREIGN KEY (Supplier_id) REFERENCES Supplier(Supplier_id)
);

-- Insert dummy data into Material_bidding table
INSERT INTO Material_bidding (Order_id, Supplier_id, M_bid_price, M_bid_date, Bid_accepted) VALUES
('O001', '3001', 45000, '2024-09-01', 'Yes'),
('O001', '3002', 46000, '2024-09-02', 'No'),
('O002', '3003', 38000, '2024-09-02', 'Yes'),
('O003', '3005', 52000, '2024-09-01', 'Yes'),
('O003', '3006', 54000, '2024-09-03', 'No'),
('O004', '3007', 51000, '2024-09-04', 'Yes'),
('O005', '3008', 60000, '2024-09-01', 'Yes'),
('O006', '3009', 61000, '2024-09-02', 'Yes'),
('O008', '3002', 32000, '2024-09-03', 'Yes'),
('O008', '3003', 33000, '2024-09-03', 'No'),
('O009', '3004', 34000, '2024-09-04', 'Yes'),
('O010', '3005', 35000, '2024-09-05', 'Yes'),
('O011', '3006', 41000, '2024-09-01', 'Yes'),
('O012', '3007', 42000, '2024-09-02', 'Yes'),
('O013', '3008', 38000, '2024-09-03', 'Yes'),
('O018', '3001', 39000, '2024-09-01', 'Yes'),
('O018', '3002', 40000, '2024-09-01', 'No'),
('O019', '3003', 41000, '2024-09-02', 'Yes'),
('O019', '3004', 42000, '2024-09-03', 'No'),
('O020', '3005', 43000, '2024-09-03', 'Yes'),
('O021', '3006', 35000, '2024-09-04', 'Yes'),
('O022', '3007', 38000, '2024-09-01', 'Yes'),
('O024', '3008', 40000, '2024-09-02', 'Yes'),
('O025', '3009', 42000, '2024-09-02', 'Yes'),
('O026', '3001', 50000, '2024-09-03', 'Yes'),
('O027', '3002', 51000, '2024-09-03', 'Yes'),
('O028', '3003', 52000, '2024-09-04', 'Yes'),
('O029', '3004', 53000, '2024-09-04', 'Yes'),
('O030', '3005', 54000, '2024-09-05', 'Yes'),
('O031', '3006', 55000, '2024-09-06', 'Yes'),
('O032', '3007', 38000, '2024-09-01', 'Yes'),
('O033', '3008', 39000, '2024-09-02', 'Yes'),
('O034', '3009', 40000, '2024-09-02', 'Yes'),
('O035', '3001', 45000, '2024-09-03', 'Yes'),
('O036', '3002', 46000, '2024-09-03', 'Yes'),
('O037', '3003', 47000, '2024-09-04', 'Yes'),
('O038', '3004', 48000, '2024-09-05', 'Yes'),
('O043', '3005', 49000, '2024-09-06', 'Yes'),
('O044', '3006', 35000, '2024-09-01', 'Yes'),
('O045', '3007', 38000, '2024-09-01', 'Yes'),
('O046', '3008', 39000, '2024-09-02', 'Yes'),
('O049', '3009', 40000, '2024-09-03', 'Yes'),
('O050', '3001', 45000, '2024-09-04', 'Yes'),
('O051', '3001', 47000, '2024-10-01', 'Yes'),
('O052', '3002', 48000, '2024-10-02', 'Yes'),
('O053', '3003', 49000, '2024-10-03', 'Yes'),
('O054', '3004', 50000, '2024-10-04', 'Yes'),
('O055', '3005', 51000, '2024-10-05', 'Yes'),
('O056', '3006', 52000, '2024-10-06', 'Yes'),
('O057', '3007', 53000, '2024-10-07', 'Yes'),
('O058', '3008', 54000, '2024-10-08', 'Yes'),
('O059', '3009', 55000, '2024-10-09', 'Yes'),
('O060', '3010', 56000, '2024-10-10', 'Yes'),
('O061', '3001', 57000, '2024-10-11', 'Yes'),
('O062', '3002', 58000, '2024-10-12', 'Yes'),
('O063', '3003', 59000, '2024-10-13', 'Yes'),
('O064', '3004', 60000, '2024-10-14', 'Yes'),
('O065', '3005', 61000, '2024-10-15', 'Yes'),
('O066', '3006', 62000, '2024-10-16', 'Yes');


CREATE TABLE Task_bidding (
    Trade_ppl_id VARCHAR(5),
    Task_id VARCHAR(5),
    T_bid_price DECIMAL(10, 2),
    Working_date DATE,
    T_bid_date DATE,
    Bid_accepted VARCHAR(3),
    PRIMARY KEY (Trade_ppl_id, Task_id),
    FOREIGN KEY (Trade_ppl_id) REFERENCES Trade_people(Trade_ppl_id),
    FOREIGN KEY (Task_id) REFERENCES Task(Task_id)
);

-- Insert dummy data into Task_bidding table
INSERT INTO Task_bidding (Trade_ppl_id, Task_id, T_bid_price, Working_date, T_bid_date, Bid_accepted) VALUES
('2001', 'T001', 75000, '2024-10-15', '2024-10-01', 'Yes'),
('2002', 'T001', 80000, '2024-10-15', '2024-10-02', 'No'),
('2003', 'T002', 85000, '2024-10-20', '2024-10-03', 'Yes'),
('2004', 'T002', 90000, '2024-10-20', '2024-10-04', 'No'),
('2005', 'T004', 50000, '2024-10-05', '2024-10-02', 'Yes'),
('2006', 'T004', 55000, '2024-10-05', '2024-10-03', 'No'),
('2007', 'T005', 30000, '2024-10-07', '2024-10-04', 'Yes'),
('2008', 'T007', 40000, '2024-10-09', '2024-10-05', 'Yes'),
('2009', 'T007', 45000, '2024-10-09', '2024-10-06', 'No'),
('2001', 'T009', 50000, '2024-10-11', '2024-10-07', 'Yes'),
('2002', 'T009', 55000, '2024-10-11', '2024-10-08', 'No'),
('2003', 'T010', 60000, '2024-10-13', '2024-10-09', 'Yes'),
('2004', 'T013', 35000, '2024-10-16', '2024-10-10', 'Yes'),
('2005', 'T015', 70000, '2024-10-18', '2024-10-11', 'Yes'),
('2006', 'T017', 80000, '2024-10-20', '2024-10-12', 'Yes'),
('2007', 'T020', 60000, '2024-10-23', '2024-10-13', 'Yes'),
('2008', 'T020', 62000, '2024-10-23', '2024-10-14', 'No'),
('2009', 'T022', 78000, '2024-10-25', '2024-10-15', 'Yes'),
('2001', 'T024', 70000, '2024-10-28', '2024-10-16', 'Yes'),
('2002', 'T026', 35000, '2024-10-30', '2024-10-17', 'Yes'),
('2003', 'T028', 80000, '2024-11-01', '2024-10-18', 'Yes'),
('2004', 'T028', 82000, '2024-11-01', '2024-10-19', 'No'),
('2005', 'T029', 40000, '2024-11-03', '2024-10-20', 'Yes'),
('2006', 'T031', 50000, '2024-11-05', '2024-10-21', 'Yes'),
('2007', 'T033', 35000, '2024-11-07', '2024-10-22', 'Yes'),
('2008', 'T035', 50000, '2024-11-09', '2024-10-23', 'Yes'),
('2009', 'T038', 55000, '2024-11-11', '2024-10-24', 'Yes'),
('2001', 'T039', 40000, '2024-11-13', '2024-10-25', 'Yes'),
('2002', 'T041', 45000, '2024-11-15', '2024-10-26', 'Yes'),
('2003', 'T043', 55000, '2024-11-17', '2024-10-27', 'Yes');


CREATE TABLE Membership (
    Membership_id INT AUTO_INCREMENT PRIMARY KEY,
    Trade_ppl_id VARCHAR(5),
    Supplier_id VARCHAR(5),
    Membership_type VARCHAR(20) CHECK (Membership_type IN ('Trading membership', 'Supplier membership')),
    Fees DECIMAL(10, 2),
    Purchase_date DATE,
    Expire_date DATE,
    FOREIGN KEY (Trade_ppl_id) REFERENCES Trade_people(Trade_ppl_id),
    FOREIGN KEY (Supplier_id) REFERENCES Supplier(Supplier_id)
);

-- Insert dummy data into Membership table
INSERT INTO Membership (Membership_id, Trade_ppl_id, Supplier_id, Membership_type, Fees, Purchase_date, Expire_date) VALUES
(1, '2001', NULL, 'Trading membership', 10000, '2024-10-01', '2024-10-31'),
(2, '2002', NULL, 'Trading membership', 20000, '2024-10-01', '2024-11-30'),
(3, '2003', NULL, 'Trading membership', 10000, '2024-10-01', '2024-10-31'),
(4, '2004', NULL, 'Trading membership', 30000, '2024-10-01', '2024-12-31'),
(5, '2005', NULL, 'Trading membership', 10000, '2024-10-01', '2024-10-31'),
(6, '2006', NULL, 'Trading membership', 40000, '2024-10-01', '2025-01-31'),
(7, '2007', NULL, 'Trading membership', 10000, '2024-10-01', '2024-10-31'),
(8, '2008', NULL, 'Trading membership', 50000, '2024-10-01', '2025-02-28'),
(9, '2009', NULL, 'Trading membership', 10000, '2024-10-01', '2024-10-31'),
(10, '2010', NULL, 'Trading membership', 60000, '2024-10-01', '2025-03-31'),
(11, NULL, '3001', 'Supplier membership', 100000, '2024-10-01', '2024-10-31'),
(12, NULL, '3002', 'Supplier membership', 200000, '2024-10-01', '2024-11-30'),
(13, NULL, '3003', 'Supplier membership', 100000, '2024-10-01', '2024-10-31'),
(14, NULL, '3004', 'Supplier membership', 300000, '2024-10-01', '2024-12-31'),
(15, NULL, '3005', 'Supplier membership', 100000, '2024-10-01', '2024-10-31'),
(16, NULL, '3006', 'Supplier membership', 400000, '2024-10-01', '2025-01-31'),
(17, NULL, '3007', 'Supplier membership', 100000, '2024-10-01', '2024-10-31'),
(18, NULL, '3008', 'Supplier membership', 500000, '2024-10-01', '2025-02-28'),
(19, NULL, '3009', 'Supplier membership', 100000, '2024-10-01', '2024-10-31'),
(20, NULL, '3010', 'Supplier membership', 600000, '2024-10-01', '2025-03-31');

-- Proportion between different Task_types
SELECT 
    Task_type, 
    COUNT(*) AS task_count, 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Task)) AS proportion_percentage
FROM 
    Task
GROUP BY 
    Task_type;


-- Revenue proportion
SELECT 
    SUM(T.Quote_fee) AS Task_fee_revenue,
    SUM(M.Fees) AS Membership_revenue,
    (SUM(T.Quote_fee) + SUM(M.Fees)) AS Total_revenue
FROM 
    Task T, Membership M;


-- Customer Behavior: Proportion of both Customers Hiring Labor and Purchasing Materials on the Platform
-- Step 1: Identify all customers who used the 'Hiring labor only' service
WITH Hiring_labor_customers AS (
    SELECT DISTINCT T.Customer_id
    FROM Task T
    WHERE T.Task_type = 'Hiring labor only' AND T.Customer_id IS NOT NULL
),
-- Step 2: Identify the customers who used 'Hiring labor only' and also ordered materials
Customers_ordering_material AS (
    SELECT DISTINCT OM.Task_id, T.Customer_id
    FROM Ordered_material OM
    JOIN Task T ON OM.Task_id = T.Task_id
    WHERE T.Task_type = 'Hiring labor only' AND T.Customer_id IS NOT NULL
)
-- Step 3: Calculate the number of customers who bought materials,
-- the total number of customers who hired labor, and the proportion
SELECT 
    (SELECT COUNT(*) FROM Customers_ordering_material) AS customers_bought_material, -- Number of customers who hired labor and also bought materials
    (SELECT COUNT(*) FROM Hiring_labor_customers) AS total_customers_hiring_labor, -- Total number of customers who hired labor only
    (SELECT COUNT(*) FROM Customers_ordering_material) * 100.0 / (SELECT COUNT(*) FROM Hiring_labor_customers) AS proportion -- Proportion of customers who did both, as a percentage
;



-- Material buying comparison between Customer and Trade_people
SELECT 
    'Customer' AS Buyer_Type,
    COUNT(DISTINCT Ordered_material.Order_id) AS Total_Orders,
    SUM(Ordered_material.Quantity) AS Total_Materials_Ordered
FROM Ordered_material
WHERE Task_id IS NOT NULL

UNION ALL

SELECT 
    'Trade_people' AS Buyer_Type,
    COUNT(DISTINCT Ordered_material.Order_id) AS Total_Orders,
    SUM(Ordered_material.Quantity) AS Total_Materials_Ordered
FROM Ordered_material
WHERE Trade_ppl_id IS NOT NULL;





-- What is the top 5 most popular material being ordered?
SELECT 
    Material_detail.Material_name, 
    SUM(Ordered_material.Quantity) AS Total_Quantity
FROM Material_detail
JOIN Ordered_material ON Material_detail.Material_id = Ordered_material.Material_id
GROUP BY Material_detail.Material_name
ORDER BY Total_Quantity DESC
LIMIT 5;




-- Which course is the most commonly acquired by trade people?
SELECT 
    Training_course.Course_name, 
    COUNT(Certified_people.Course_id) AS Total_Acquisitions
FROM Training_course
JOIN Certified_people ON Training_course.Course_id = Certified_people.Course_id
GROUP BY Training_course.Course_name
ORDER BY Total_Acquisitions DESC
LIMIT 10;




-- What is the average rating for each task type?
SELECT 
    Task.Task_type, 
    AVG(Task.Ratting) AS Avg_Rating
FROM Task
GROUP BY Task.Task_type;




-- Top 3 supplier won the most bids?
SELECT 
    Supplier.Supplier_name, 
    COUNT(Material_bidding.Supplier_id) AS Bid_Wins
FROM Supplier
JOIN Material_bidding ON Supplier.Supplier_id = Material_bidding.Supplier_id
WHERE Material_bidding.Bid_accepted = 'Yes'
GROUP BY Supplier.Supplier_name
ORDER BY Bid_Wins DESC
LIMIT 3;




-- Top 3 trade person has the highest total revenue from bids?
SELECT 
    Trade_people.Trade_ppl_name, 
    SUM(Task_bidding.T_bid_price) AS Total_Revenue
FROM Trade_people
JOIN Task_bidding ON Trade_people.Trade_ppl_id = Task_bidding.Trade_ppl_id
WHERE Task_bidding.Bid_accepted = 'Yes'
GROUP BY Trade_people.Trade_ppl_name
ORDER BY Total_Revenue DESC
LIMIT 3;




-- Analyzing Transaction Ratios: Identifying Platform Focus on Goods Sales vs. Labor Hiring
-- Count the number of transactions between each entity
WITH Customer_Trade AS (
    SELECT COUNT(*) AS Customer_Trade_Count
    FROM Task_bidding tb
    JOIN Task t ON tb.Task_id = t.Task_id
    WHERE t.Customer_id IS NOT NULL
),
Customer_Supplier AS (
    SELECT COUNT(*) AS Customer_Supplier_Count
    FROM Ordered_material om
    WHERE om.Task_id IS NOT NULL
),
Trade_Supplier AS (
    SELECT COUNT(*) AS Trade_Supplier_Count
    FROM Ordered_material om
    WHERE om.Trade_ppl_id IS NOT NULL
    )
-- Calculate the total number of transactions and compute the ratios
SELECT 
    Customer_Trade.Customer_Trade_Count, 
    Customer_Supplier.Customer_Supplier_Count, 
    Trade_Supplier.Trade_Supplier_Count,
    ROUND((Customer_Trade.Customer_Trade_Count * 100.0 / 
        (Customer_Trade.Customer_Trade_Count + Customer_Supplier.Customer_Supplier_Count + Trade_Supplier.Trade_Supplier_Count)), 2) AS Customer_Trade_Percentage,
    ROUND((Customer_Supplier.Customer_Supplier_Count * 100.0 / 
        (Customer_Trade.Customer_Trade_Count + Customer_Supplier.Customer_Supplier_Count + Trade_Supplier.Trade_Supplier_Count)), 2) AS Customer_Supplier_Percentage,
    ROUND((Trade_Supplier.Trade_Supplier_Count * 100.0 / 
        (Customer_Trade.Customer_Trade_Count + Customer_Supplier.Customer_Supplier_Count + Trade_Supplier.Trade_Supplier_Count)), 2) AS Trade_Supplier_Percentage
FROM Customer_Trade, Customer_Supplier, Trade_Supplier;

