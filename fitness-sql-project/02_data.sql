INSERT INTO Membership VALUES
    ('MM101', 'Basic Plan', 8, 250.00),
    ('MM102', 'Standard Plan', 12, 350.00),
    ('MM103', 'Advanced Plan', 36, 700.00),
    ('MM104', 'Premium Plan', 72, 1400.00);


INSERT INTO Client VALUES
    ('CL1001', 'Emma Wilson', '123 Maple St, Springfield, IL 62704', '+44 20 7946 1234', 'emily.johnson@example.co.uk', 49, 'VIP'),
    ('CL1002', 'Oliver Smith', '45 High St, Manchester, M4 1FS', '+44 161 555 5678', 'oliver.smith@example.co.uk', 50, NULL),
    ('CL1003', 'Charlotte Brown', '67 Elm Rd, Birmingham, B5 7TH', '+44 121 555 3456', 'charlotte.brown@example.co.uk', 47, 'VIP'),
    ('CL1004', 'Harry Wilson', '78 Oxford St, Cambridge, CB2 1RF', '+44 1223 555 7890', 'harry.wilson@example.co.uk', 27, NULL),
    ('CL1005', 'Amelia Taylor', '90 Bridge Ln, Liverpool, L1 8JQ', '+44 151 555 2345', 'amelia.taylor@example.co.uk', 49, 'VIP'),
    ('CL1006', 'Jack White', '21 Market Pl, Edinburgh, EH1 1BA', '+44 131 555 6789', 'jack.white@example.co.uk', 54, NULL),
    ('CL1007', 'Isla Walker', '33 George St, Glasgow, G2 2JR', '+44 141 555 1122', 'isla.walker@example.co.uk', 47, NULL),
    ('CL1008', 'Charlie Thomas', '54 Queen Rd, Leeds, LS1 2HQ', '+44 113 555 3355', 'charlie.thomas@example.co.uk', 44, NULL),
    ('CL1009', 'Grace Lewis', '88 King St, Bristol, BS1 4ST', '+44 117 555 4466', 'grace.lewis@example.co.uk', 20, NULL),
    ('CL1010', 'George Evans', '10 Prince Ave, Cardiff, CF10 3BA', '+44 29 2012 5566', 'george.evans@example.co.uk', 41, NULL),
    ('CL1011', 'Sophia Green Wilson', '10 Pine St, Brighton, BN1 1JB', '+44 1273 555 1234', 'sophia.green@example.co.uk', 50, NULL),
    ('CL1012', 'Liam Harris', '22 River Rd, London, SE1 8HT', '+44 20 7946 5678', 'liam.harris@example.co.uk', 26, NULL);
    
    
INSERT INTO Staff VALUES
    ('ST1001', 'James Anderson', 'AA123456B', '22 Baker St, London, W1U 3BW', '+44 20 7946 1111', 'james.anderson@example.co.uk', 1200.00, 'Administrator'),
    ('ST1002', 'Sarah Johnson', 'BB654321A', '14 High St, Manchester, M4 1FS', '+44 161 555 2222', 'sarah.johnson@example.co.uk', 800.00, 'Personal Trainer'),
    ('ST1003', 'Michael Brown', 'CC234567C', '56 King St, Birmingham, B1 4HQ', '+44 121 555 3333', 'michael.brown@example.co.uk', 800.00, 'Yoga Trainer'),
    ('ST1004', 'Emily Davis', 'DD765432D', '78 Oxford Rd, Cambridge, CB2 1RF', '+44 1223 555 4444', 'emily.davis@example.co.uk', 1200.00, 'Administrator'),
    ('ST1005', 'William Smith', 'EE987654E', '90 Queen St, Edinburgh, EH2 1BE', '+44 131 555 5555', 'william.smith@example.co.uk', 1400.00, 'Manager'),
    ('ST1006', 'Sophia Taylor', 'FF123789F', '34 Market St, Glasgow, G2 2JR', '+44 141 555 6666', 'sophia.taylor@example.co.uk', 900.00, 'Janitor'),
    ('ST1007', 'Oliver Wilson', 'GG456789G', '21 Prince Rd, Liverpool, L1 8JQ', '+44 151 555 7777', 'oliver.wilson@example.co.uk', 1200.00, 'Administrator'),
    ('ST1008', 'Isabella Martin', 'HH789123H', '10 George Rd, Leeds, LS1 2HQ', '+44 113 555 8888', 'isabella.martin@example.co.uk', 800.00, 'Pilates Trainer'),
    ('ST1009', 'Lucas Moore', 'II321654I', '44 Elm St, Cardiff, CF10 3BA', '+44 29 2012 9999', 'lucas.moore@example.co.uk', 1400.00, 'Utility Manager'),
    ('ST1010', 'Amelia White', 'JJ654789J', '88 Bridge Ln, Bristol, BS1 4ST', '+44 117 555 0000', 'amelia.white@example.co.uk', 800.00, 'Personal Trainer');
  
INSERT INTO Expenses VALUES
    ('EXP001', 'Utility', 'Electricity bill for the office', 100.00, '2024-12-01', NULL),
    ('EXP002', 'Salary', 'Monthly salary for James Anderson', 1200.00, '2024-12-05', 'ST1001'),
    ('EXP003', 'Salary', 'Monthly salary for Sarah Johnson', 800.00, '2024-12-05', 'ST1002'),
    ('EXP004', 'Maintenance', 'Repaired air conditioning system', 150.00, '2024-12-10', 'ST1003'),
    ('EXP005', 'Cleaning', 'Purchased new cleaning supplies for the office', 80.00, '2024-12-15', 'ST1006'),
    ('EXP006', 'Marketing', 'Social media advertising campaign', 150.00, '2024-12-20', NULL),
    ('EXP007', 'Salary', 'Monthly salary for Michael Brown', 800.00, '2025-01-05', 'ST1003'),
    ('EXP008', 'Salary', 'Monthly salary for Emily Davis', 1200.00, '2025-01-05', 'ST1004'),
    ('EXP009', 'Utility', 'Internet and phone services for office', 80.00, '2025-01-10', NULL),
    ('EXP010', 'Rent', 'Monthly rent for the office', 1200.00, '2025-01-15', NULL),
    ('EXP011', 'Maintenance', 'Servicing office heating system', 200.00, '2025-01-20', 'ST1002'),
    ('EXP012', 'Cleaning', 'Deep cleaning of office carpets', 100.00, '2025-01-25', 'ST1006'),
    ('EXP013', 'Equipment', 'Purchased new computers for the office', 600.00, '2025-02-01', 'ST1007'),
    ('EXP014', 'Maintenance', 'Repaired plumbing in the office', 120.00, '2025-02-10', 'ST1008'),
    ('EXP015', 'Utility', 'Water bill for the office', 70.00, '2025-02-15', NULL),
    ('EXP016', 'Salary', 'Monthly salary for William Smith', 1400.00, '2025-02-20', 'ST1005'),
    ('EXP017', 'Maintenance', 'Repaired office elevator', 200.00, '2025-02-25', 'ST1009'),
    ('EXP018', 'Cleaning', 'Purchased cleaning equipment for the office', 150.00, '2025-03-01', 'ST1010'),
    ('EXP019', 'Marketing', 'Purchased advertising banners for the event', 80.00, '2025-03-10', NULL),
    ('EXP020', 'Salary', 'Monthly salary for Amelia White', 800.00, '2025-03-15', 'ST1010'),
    ('EXP021', 'Salary', 'Monthly salary for Isabella Martin', 800.00, '2025-03-20', 'ST1008'),
    ('EXP022', 'Utility', 'Electricity bill for the office', 120.00, '2025-04-01', NULL),
    ('EXP023', 'Rent', 'Monthly rent for the office', 1200.00, '2025-04-05', NULL),
    ('EXP024', 'Salary', 'Monthly salary for Lucas Moore', 1400.00, '2025-04-10', 'ST1009'),
    ('EXP025', 'Cleaning', 'Deep cleaning of office windows', 180.00, '2025-04-15', 'ST1006');

INSERT INTO Income VALUES
    ('INC001', 'CL1001', 'MM101', '2024-12-01', '2024-12-21', 'ST1001'),
    ('INC002', 'CL1002', 'MM102', '2024-12-02', '2024-12-22', 'ST1001'),
    ('INC003', 'CL1003', 'MM103', '2024-12-05', '2024-12-25', 'ST1004'),
    ('INC004', 'CL1001', 'MM101', '2025-01-01', '2025-01-21', 'ST1001'),
    ('INC005', 'CL1002', 'MM102', '2025-01-05', '2025-01-25', 'ST1001'),
    ('INC006', 'CL1003', 'MM103', '2025-01-10', '2025-01-30', 'ST1004'),
    ('INC007', 'CL1004', 'MM101', '2025-01-15', '2025-02-04', 'ST1001'),
    ('INC008', 'CL1005', 'MM102', '2025-01-20', '2025-02-09', 'ST1001'),
    ('INC009', 'CL1006', 'MM103', '2025-01-25', '2025-02-14', 'ST1004'),
    ('INC010', 'CL1007', 'MM104', '2025-02-01', '2025-02-20', 'ST1007'),
    ('INC011', 'CL1008', 'MM101', '2025-02-05', '2025-02-25', 'ST1001'),
    ('INC012', 'CL1009', 'MM102', '2025-02-10', '2025-03-02', 'ST1001'),
    ('INC013', 'CL1010', 'MM103', '2025-02-15', '2025-03-07', 'ST1004'),
    ('INC014', 'CL1001', 'MM104', '2025-02-20', '2025-03-12', 'ST1007'),
    ('INC015', 'CL1002', 'MM101', '2025-02-25', '2025-03-17', 'ST1001'),
    ('INC016', 'CL1003', 'MM102', '2025-03-01', '2025-03-21', 'ST1001'),
    ('INC017', 'CL1004', 'MM103', '2025-03-05', '2025-03-25', 'ST1004'),
    ('INC018', 'CL1005', 'MM101', '2025-03-10', '2025-03-30', 'ST1001'),
    ('INC019', 'CL1006', 'MM102', '2025-03-15', '2025-04-04', 'ST1001'),
    ('INC020', 'CL1007', 'MM103', '2025-03-20', '2025-04-09', 'ST1004'),
    ('INC021', 'CL1008', 'MM104', '2025-03-25', '2025-04-14', 'ST1007'),
    ('INC022', 'CL1009', 'MM101', '2025-04-01', '2025-04-21', 'ST1001'),
    ('INC023', 'CL1010', 'MM102', '2025-04-05', '2025-04-25', 'ST1001'),
    ('INC024', 'CL1001', 'MM103', '2025-04-10', '2025-04-30', 'ST1004'),
    ('INC025', 'CL1002', 'MM104', '2025-04-15', '2025-05-05', 'ST1007'),
    ('INC026', 'CL1003', 'MM101', '2025-04-20', '2025-05-10', 'ST1001'),
    ('INC027', 'CL1004', 'MM102', '2025-04-25', '2025-05-15', 'ST1007'),
    ('INC028', 'CL1011', 'MM101', '2025-01-15', '2025-02-15', 'ST1004'),
    ('INC029', 'CL1001', 'MM102', '2025-03-13', '2025-04-10', 'ST1004');
/*INSERT was modified by Chatgpt*/
    