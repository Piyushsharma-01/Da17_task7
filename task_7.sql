-- CREATE TABLE queries
CREATE TABLE Sender (
    SenderID INT PRIMARY KEY,
    SenderName VARCHAR(100),
    SenderAddress VARCHAR(255),
    SenderPhone VARCHAR(20),
    SenderEmail VARCHAR(100)
);

CREATE TABLE Receiver (
    ReceiverID INT PRIMARY KEY,
    ReceiverName VARCHAR(100),
    ReceiverAddress VARCHAR(255),
    ReceiverPhone VARCHAR(20),
    ReceiverEmail VARCHAR(100)
);

CREATE TABLE Shipment (
    ShipmentID INT PRIMARY KEY,
    TrackingNumber VARCHAR(50),
    DispatchDate DATE,
    EstimatedDeliveryDate DATE,
    Weight DECIMAL(5, 2)
);

CREATE TABLE DeliveryStatus (
    StatusID INT PRIMARY KEY,
    ShipmentID INT,
    Status VARCHAR(50),
    StatusDate TIMESTAMP,
    Location VARCHAR(100)
);

-- 100 sample INSERT queries
INSERT INTO Sender (SenderID, SenderName, SenderAddress, SenderPhone, SenderEmail) VALUES
(1, 'Rajesh Sharma', '123 Main St, Nagpur', '9876543210', 'rajesh.sharma@email.com'),
(2, 'Priya Verma', '456 Nehru Rd, Nagpur', '8765432109', 'priya.verma@email.com'),
(3, 'Amit Patel', '789 Gandhi Chowk, Nagpur', '7654321098', 'amit.patel@email.com'),
(4, 'Sneha Joshi', '101 Shivaji Nagar, Nagpur', '6543210987', 'sneha.joshi@email.com'),
(5, 'Vikram Singh', '222 Sadar Bazaar, Nagpur', '5432109876', 'vikram.singh@email.com'),
(6, 'Anjali Gupta', '333 Civil Lines, Nagpur', '9988776655', 'anjali.gupta@email.com'),
(7, 'Rohit Mishra', '444 Dharampeth, Nagpur', '8877665544', 'rohit.mishra@email.com'),
(8, 'Kavita Yadav', '555 Gokulpeth, Nagpur', '7766554433', 'kavita.yadav@email.com'),
(9, 'Suresh Kumar', '666 Mahal, Nagpur', '6655443322', 'suresh.kumar@email.com'),
(10, 'Deepika Jain', '777 Itwari, Nagpur', '5544332211', 'deepika.jain@email.com'),
(11, 'Rahul Verma', '888 Sitabuldi, Nagpur', '9871234560', 'rahul.verma@email.com'),
(12, 'Meena Patel', '999 Byramji Town, Nagpur', '8762345679', 'meena.patel@email.com'),
(13, 'Gaurav Joshi', '111 Ramdaspeth, Nagpur', '7653456788', 'gaurav.joshi@email.com'),
(14, 'Shweta Singh', '222 Shankar Nagar, Nagpur', '6544567897', 'shweta.singh@email.com'),
(15, 'Prakash Gupta', '333 Manewada, Nagpur', '5435678906', 'prakash.gupta@email.com'),
(16, 'Divya Mishra', '444 Nandanvan, Nagpur', '9986789015', 'divya.mishra@email.com'),
(17, 'Amar Yadav', '555 Hudkeshwar, Nagpur', '8877890124', 'amar.yadav@email.com'),
(18, 'Sarita Kumar', '666 Besa, Nagpur', '7768901233', 'sarita.kumar@email.com'),
(19, 'Vivek Jain', '777 Pipla, Nagpur', '6659012342', 'vivek.jain@email.com'),
(20, 'Neha Verma', '888 Hingna, Nagpur', '5540123451', 'neha.verma@email.com'),
(21, 'Sanjay Patel', '12A Civil Lines, Nagpur', '9872345670', 'sanjay.patel@email.com'),
(22, 'Ritu Joshi', '45B Dharampeth, Nagpur', '8763456789', 'ritu.joshi@email.com'),
(23, 'Manish Singh', '78C Gokulpeth, Nagpur', '7654567898', 'manish.singh@email.com'),
(24, 'Pooja Gupta', '10D Mahal, Nagpur', '6545678907', 'pooja.gupta@email.com'),
(25, 'Sunil Mishra', '22E Itwari, Nagpur', '5436789016', 'sunil.mishra@email.com'),
(26, 'Ankita Yadav', '33F Sitabuldi, Nagpur', '9987890125', 'ankita.yadav@email.com'),
(27, 'Rajiv Kumar', '44G Byramji Town, Nagpur', '8878901234', 'rajiv.kumar@email.com'),
(28, 'Shalini Jain', '55H Ramdaspeth, Nagpur', '7769012343', 'shalini.jain@email.com'),
(29, 'Deepak Verma', '66I Shankar Nagar, Nagpur', '6650123452', 'deepak.verma@email.com'),
(30, 'Seema Patel', '77J Manewada, Nagpur', '5541234561', 'seema.patel@email.com'),
(31, 'Kunal Joshi', '88K Nandanvan, Nagpur', '9873456780', 'kunal.joshi@email.com'),
(32, 'Preeti Singh', '99L Hudkeshwar, Nagpur', '8764567899', 'preeti.singh@email.com'),
(33, 'Vikrant Gupta', '11M Besa, Nagpur', '7655678908', 'vikrant.gupta@email.com'),
(34, 'Smita Mishra', '22N Pipla, Nagpur', '6546789017', 'smita.mishra@email.com'),
(35, 'Alok Yadav', '33O Hingna, Nagpur', '5437890126', 'alok.yadav@email.com'),
(36, 'Rachna Kumar', '12P Civil Lines, Nagpur', '9988901235', 'rachna.kumar@email.com'),
(37, 'Gopal Jain', '45Q Dharampeth, Nagpur', '8879012344', 'gopal.jain@email.com'),
(38, 'Nisha Verma', '78R Gokulpeth, Nagpur', '7760123453', 'nisha.verma@email.com'),
(39, 'Tarun Patel', '10S Mahal, Nagpur', '6651234562', 'tarun.patel@email.com'),
(40, 'Jyoti Joshi', '22T Itwari, Nagpur', '5542345671', 'jyoti.joshi@email.com'),
(41, 'Mahesh Singh', '33U Sitabuldi, Nagpur', '9874567891', 'mahesh.singh@email.com'),
(42, 'Kiran Gupta', '44V Byramji Town, Nagpur', '8765678900', 'kiran.gupta@email.com'),
(43, 'Suman Mishra', '55W Ramdaspeth, Nagpur', '7656789019', 'suman.mishra@email.com'),
(44, 'Pawan Yadav', '66X Shankar Nagar, Nagpur', '6547890128', 'pawan.yadav@email.com'),
(45, 'Reena Kumar', '77Y Manewada, Nagpur', '5438901237', 'reena.kumar@email.com'),
(46, 'Sagar Jain', '88Z Nandanvan, Nagpur', '9989012346', 'sagar.jain@email.com'),
(47, 'Divya Verma', '99A Hudkeshwar, Nagpur', '8870123455', 'divya.verma@email.com'),
(48, 'Ankur Patel', '11B Besa, Nagpur', '7761234564', 'ankur.patel@email.com'),
(49, 'Sheetal Joshi', '22C Pipla, Nagpur', '6652345673', 'sheetal.joshi@email.com'),
(50, 'Vinay Singh', '33D Hingna, Nagpur', '5543456782', 'vinay.singh@email.com'),
(51, 'Ravi Sharma', '123 New Colony, Nagpur', '9876112233', 'ravi.sharma@example.com'),
(52, 'Geeta Verma', '456 Old City, Nagpur', '8765223344', 'geeta.verma@example.com'),
(53, 'Karan Patel', '789 Model Town, Nagpur', '7654334455', 'karan.patel@example.com'),
(54, 'Simran Joshi', '101 Green Park, Nagpur', '6543445566', 'simran.joshi@example.com'),
(55, 'Rajiv Singh', '222 Civil Lines Ext, Nagpur', '5432556677', 'rajiv.singh@example.com'),
(56, 'Pooja Gupta', '333 Sadar Ext, Nagpur', '9988667788', 'pooja.gupta@example.com'),
(57, 'Rohit Mishra', '444 Dharampeth Ext, Nagpur', '8877778899', 'rohit.mishra@example.com'),
(58, 'Kajal Yadav', '555 Gokulpeth Ext, Nagpur', '7766889900', 'kajal.yadav@example.com'),
(59, 'Sandeep Kumar', '666 Mahal Ext, Nagpur', '6655990011', 'sandeep.kumar@example.com'),
(60, 'Divya Jain', '777 Itwari Ext, Nagpur', '5544001122', 'divya.jain@example.com'),
(61, 'Ajay Verma', '888 Sitabuldi Ext, Nagpur', '9871122334', 'ajay.verma@example.com'),
(62, 'Seema Patel', '999 Byramji Ext, Nagpur', '8762233445', 'seema.patel@example.com'),
(63, 'Gaurav Joshi', '111 Ramdaspeth Ext, Nagpur', '7653344556', 'gaurav.joshi@example.com'),
(64, 'Swati Singh', '222 Shankar Ext, Nagpur', '6544455667', 'swati.singh@example.com'),
(65, 'Pankaj Gupta', '333 Manewada Ext, Nagpur', '5435566778', 'pankaj.gupta@example.com'),
(66, 'Ritu Mishra', '444 Nandanvan Ext, Nagpur', '9986677889', 'ritu.mishra@example.com'),
(67, 'Amit Yadav', '555 Hudkeshwar Ext, Nagpur', '8877788990', 'amit.yadav@email.com'),
(68, 'Priya Kumar', '666 Besa Ext, Nagpur', '7768899001', 'priya.kumar@example.com'),
(69, 'Vikram Jain', '777 Pipla Ext, Nagpur', '6659900112', 'vikram.jain@example.com'),
(70, 'Neha Verma', '888 Hingna Ext, Nagpur', '5540011223', 'neha.verma@example.com'),
(71, 'Suraj Patel', '12A New Colony, Nagpur', '9872233446', 'suraj.patel@example.com'),
(72, 'Kavita Joshi', '45B Old City, Nagpur', '8763344557', 'kavita.joshi@example.com'),
(73, 'Manish Singh', '78C Model Town, Nagpur', '7654455668', 'manish.singh@example.com'),
(74, 'Anjali Gupta', '10D Green Park, Nagpur', '6545566779', 'anjali.gupta@example.com'),
(75, 'Sunil Mishra', '22E Civil Ext, Nagpur', '5436677880', 'sunil.mishra@example.com'),
(76, 'Deepika Yadav', '33F Sadar Ext, Nagpur', '9987788991', 'deepika.yadav@example.com'),
(77, 'Rajiv Kumar', '44G Dharampeth Ext, Nagpur', '8878899002', 'rajiv.kumar@example.com'),
(78, 'Shalini Jain', '55H Gokulpeth Ext, Nagpur', '7769900113', 'shalini.jain@example.com'),
(79, 'Deepak Verma', '66I Mahal Ext, Nagpur', '6650011224', 'deepak.verma@example.com'),
(80, 'Sarika Patel', '77J Itwari Ext, Nagpur', '5541122335', 'sarika.patel@example.com'),
(81, 'Kunal Joshi', '88K Sitabuldi Ext, Nagpur', '9873344558', 'kunal.joshi@example.com'),
(82, 'Preeti Singh', '99L Byramji Ext, Nagpur', '8764455669', 'preeti.singh@example.com'),
(83, 'Vikrant Gupta', '11M Ramdaspeth Ext, Nagpur', '7655566770', 'vikrant.gupta@example.com'),
(84, 'Smita Mishra', '22N Shankar Ext, Nagpur', '6546677881', 'smita.mishra@example.com'),
(85, 'Alok Yadav', '33O Manewada Ext, Nagpur', '5437788992', 'alok.yadav@example.com'),
(86, 'Rachna Kumar', '12P Nandanvan Ext, Nagpur', '9988899003', 'rachna.kumar@example.com'),
(87, 'Gopal Jain', '45Q Hudkeshwar Ext, Nagpur', '8879900114', 'gopal.jain@example.com'),
(88, 'Nisha Verma', '78R Besa Ext, Nagpur', '7760011225', 'nisha.verma@example.com'),
(89, 'Tarun Patel', '10S Pipla Ext, Nagpur', '6651122336', 'tarun.patel@example.com'),
(90, 'Jyoti Joshi', '22T Hingna Ext, Nagpur', '5542233447', 'jyoti.joshi@example.com'),
(91, 'Mahesh Singh', '33U New Colony, Nagpur', '9874455660', 'mahesh.singh@example.com'),
(92, 'Kiran Gupta', '44V Old City, Nagpur', '8765566771', 'kiran.gupta@example.com'),
(93, 'Suman Mishra', '55W Model Town, Nagpur', '7656677882', 'suman.mishra@example.com'),
(94, 'Pawan Yadav', '66X Green Park, Nagpur', '6547788993', 'pawan.yadav@example.com'),
(95, 'Reena Kumar', '77Y Civil Lines, Nagpur', '5438899004', 'reena.kumar@example.com'),
(96, 'Sagar Jain', '88Z Sadar Bazaar, Nagpur', '9989900115', 'sagar.jain@example.com'),
(97, 'Divya Verma', '99A Civil Lines, Nagpur', '8870011226', 'divya.verma@example.com'),
(98, 'Ankur Patel', '11B Dharampeth, Nagpur', '7761122337', 'ankur.patel@example.com'),
(99, 'Sheetal Joshi', '22C Gokulpeth, Nagpur', '6652233448', 'sheetal.joshi@example.com'),
(100, 'Vinay Singh', '33D Mahal, Nagpur', '5543344559', 'vinay.singh@email.com');


-- 100 sample INSERT queries for Receiver
INSERT INTO Receiver (ReceiverID, ReceiverName, ReceiverAddress, ReceiverPhone, ReceiverEmail) VALUES
(101, 'Anita Reddy', '14 MG Road, Bangalore', '9845012345', 'anita.reddy@email.com'),
(102, 'Suresh Menon', '2B Brigade Road, Bangalore', '8762345678', 'suresh.menon@email.com'),
(103, 'Deepa Sharma', '3C Commercial St, Bangalore', '9900112233', 'deepa.sharma@email.com'),
(104, 'Rohan Singh', '4D Residency Rd, Bangalore', '8899001122', 'rohan.singh@email.com'),
(105, 'Meera Iyer', '5E Indiranagar, Bangalore', '9789012345', 'meera.iyer@email.com'),
(106, 'Kiran Kumar', '6F Koramangala, Bangalore', '9686012345', 'kiran.kumar@email.com'),
(107, 'Shalini Nair', '7G Jayanagar, Bangalore', '9585012345', 'shalini.nair@email.com'),
(108, 'Arun Verma', '8H MG Road, Bangalore', '9484012345', 'arun.verma@email.com'),
(109, 'Priya Patel', '9I Brigade Road, Bangalore', '9383012345', 'priya.patel@email.com'),
(110, 'Rajesh Gupta', '10J Commercial St, Bangalore', '9282012345', 'rajesh.gupta@email.com'),
(111, 'Anjali Reddy', '11K Residency Rd, Bangalore', '9845123456', 'anjali.reddy@email.com'),
(112, 'Suresh Menon', '12L Indiranagar, Bangalore', '8762456789', 'suresh.menon@email.com'),
(113, 'Deepa Sharma', '13M Koramangala, Bangalore', '9900234567', 'deepa.sharma@email.com'),
(114, 'Rohan Singh', '14N Jayanagar, Bangalore', '8899123456', 'rohan.singh@email.com'),
(115, 'Meera Iyer', '15O MG Road, Bangalore', '9789123456', 'meera.iyer@email.com'),
(116, 'Kiran Kumar', '16P Brigade Road, Bangalore', '9686123456', 'kiran.kumar@email.com'),
(117, 'Shalini Nair', '17Q Commercial St, Bangalore', '9585123456', 'shalini.nair@email.com'),
(118, 'Arun Verma', '18R Residency Rd, Bangalore', '9484123456', 'arun.verma@email.com'),
(119, 'Priya Patel', '19S Indiranagar, Bangalore', '9383123456', 'priya.patel@email.com'),
(120, 'Rajesh Gupta', '20T Koramangala, Bangalore', '9282123456', 'rajesh.gupta@email.com'),
(121, 'Reena Kumari', '21U Jayanagar, Bangalore', '9845234567', 'reena.kumari@email.com'),
(122, 'Mohan Rao', '22V MG Road, Bangalore', '8762567890', 'mohan.rao@email.com'),
(123, 'Shweta Tiwari', '23W Brigade Road, Bangalore', '9900345678', 'shweta.tiwari@email.com'),
(124, 'Vivek Sharma', '24X Commercial St, Bangalore', '8899234567', 'vivek.sharma@email.com'),
(125, 'Aisha Khan', '25Y Residency Rd, Bangalore', '9789234567', 'aisha.khan@email.com'),
(126, 'Sameer Reddy', '26Z Indiranagar, Bangalore', '9686234567', 'sameer.reddy@email.com'),
(127, 'Nisha Nair', '27A Koramangala, Bangalore', '9585234567', 'nisha.nair@email.com'),
(128, 'Tarun Verma', '28B Jayanagar, Bangalore', '9484234567', 'tarun.verma@email.com'),
(129, 'Pooja Patel', '29C MG Road, Bangalore', '9383234567', 'pooja.patel@email.com'),
(130, 'Rakesh Gupta', '30D Brigade Road, Bangalore', '9282234567', 'rakesh.gupta@email.com'),
(131, 'Sunita Devi', '31E Commercial St, Bangalore', '9845345678', 'sunita.devi@email.com'),
(132, 'Anil Kumar', '32F Residency Rd, Bangalore', '8762678901', 'anil.kumar@email.com'),
(133, 'Kavita Sharma', '33G Indiranagar, Bangalore', '9900456789', 'kavita.sharma@email.com'),
(134, 'Raj Singh', '34H Koramangala, Bangalore', '8899345678', 'raj.singh@email.com'),
(135, 'Deepika Iyer', '35I Jayanagar, Bangalore', '9789345678', 'deepika.iyer@email.com'),
(136, 'Girish Kumar', '36J MG Road, Bangalore', '9686345678', 'girish.kumar@email.com'),
(137, 'Shilpa Nair', '37K Brigade Road, Bangalore', '9585345678', 'shilpa.nair@email.com'),
(138, 'Manoj Verma', '38L Commercial St, Bangalore', '9484345678', 'manoj.verma@email.com'),
(139, 'Priyanka Patel', '39M Residency Rd, Bangalore', '9383345678', 'priyanka.patel@email.com'),
(140, 'Ramesh Gupta', '40N Indiranagar, Bangalore', '9282345678', 'ramesh.gupta@email.com'),
(141, 'Suman Verma', '41O Koramangala, Bangalore', '9845456789', 'suman.verma@email.com'),
(142, 'Arjun Reddy', '42P Jayanagar, Bangalore', '8762789012', 'arjun.reddy@email.com'),
(143, 'Leena Sharma', '43Q MG Road, Bangalore', '9900567890', 'leena.sharma@email.com'),
(144, 'Vikram Singh', '44R Brigade Road, Bangalore', '8899456789', 'vikram.singh@email.com'),
(145, 'Kavya Iyer', '45S Commercial St, Bangalore', '9789456789', 'kavya.iyer@email.com'),
(146, 'Srinivas Kumar', '46T Residency Rd, Bangalore', '9686456789', 'srinivas.kumar@email.com'),
(147, 'Aishwarya Nair', '47U Indiranagar, Bangalore', '9585456789', 'aishwarya.nair@email.com'),
(148, 'Rahul Verma', '48V Koramangala, Bangalore', '9484456789', 'rahul.verma@email.com'),
(149, 'Nayana Patel', '49W Jayanagar, Bangalore', '9383456789', 'nayana.patel@email.com'),
(150, 'Girish Gupta', '50X MG Road, Bangalore', '9282456789', 'girish.gupta@email.com'),
(151, 'Lakshmi Nair', '51Y Brigade Road, Bangalore', '9845567890', 'lakshmi.nair@example.com'),
(152, 'Vineet Sharma', '52Z Commercial St, Bangalore', '8762890123', 'vineet.sharma@example.com'),
(153, 'Priya Reddy', '53A Residency Rd, Bangalore', '9900678901', 'priya.reddy@example.com'),
(154, 'Ramesh Menon', '54B Indiranagar, Bangalore', '8899567890', 'ramesh.menon@example.com'),
(155, 'Anjali Iyer', '55C Koramangala, Bangalore', '9789567890', 'anjali.iyer@example.com'),
(156, 'Sandeep Kumar', '56D Jayanagar, Bangalore', '9686567890', 'sandeep.kumar@example.com'),
(157, 'Deepika Nair', '57E MG Road, Bangalore', '9585567890', 'deepika.nair@example.com'),
(158, 'Manoj Verma', '58F Brigade Road, Bangalore', '9484567890', 'manoj.verma@example.com'),
(159, 'Shweta Patel', '59G Commercial St, Bangalore', '9383567890', 'shweta.patel@example.com'),
(160, 'Rajiv Gupta', '60H Residency Rd, Bangalore', '9282567890', 'rajiv.gupta@example.com'),
(161, 'Sonia Sharma', '61I Indiranagar, Bangalore', '9845678901', 'sonia.sharma@example.com'),
(162, 'Vivek Reddy', '62J Koramangala, Bangalore', '8762901234', 'vivek.reddy@example.com'),
(163, 'Meena Menon', '63K Jayanagar, Bangalore', '9900789012', 'meena.menon@example.com'),
(164, 'Rohan Iyer', '64L MG Road, Bangalore', '8899678901', 'rohan.iyer@example.com'),
(165, 'Kavita Kumar', '65M Brigade Road, Bangalore', '9789678901', 'kavita.kumar@example.com'),
(166, 'Arun Nair', '66N Commercial St, Bangalore', '9686678901', 'arun.nair@example.com'),
(167, 'Shalini Verma', '67O Residency Rd, Bangalore', '9585678901', 'shalini.verma@example.com'),
(168, 'Tarun Patel', '68P Indiranagar, Bangalore', '9484678901', 'tarun.patel@example.com'),
(169, 'Pooja Gupta', '69Q Koramangala, Bangalore', '9383678901', 'pooja.gupta@example.com'),
(170, 'Rakesh Sharma', '70R Jayanagar, Bangalore', '9282678901', 'rakesh.sharma@example.com'),
(171, 'Sunita Reddy', '71S MG Road, Bangalore', '9845789012', 'sunita.reddy@example.com'),
(172, 'Anil Menon', '72T Brigade Road, Bangalore', '8762012345', 'anil.menon@example.com'),
(173, 'Kavita Iyer', '73U Commercial St, Bangalore', '9900890123', 'kavita.iyer@example.com'),
(174, 'Raj Singh', '74V Residency Rd, Bangalore', '8899789012', 'raj.singh@example.com'),
(175, 'Deepika Kumar', '75W Indiranagar, Bangalore', '9789789012', 'deepika.kumar@example.com'),
(176, 'Girish Nair', '76X Koramangala, Bangalore', '9686789012', 'girish.nair@example.com'),
(177, 'Shilpa Verma', '77Y Jayanagar, Bangalore', '9585789012', 'shilpa.verma@example.com'),
(178, 'Manoj Patel', '78Z MG Road, Bangalore', '9484789012', 'manoj.patel@example.com'),
(179, 'Priyanka Gupta', '79A Brigade Road, Bangalore', '9383789012', 'priyanka.gupta@example.com'),
(180, 'Ramesh Sharma', '80B Commercial St, Bangalore', '9282789012', 'ramesh.sharma@example.com'),
(181, 'Suman Reddy', '81C Residency Rd, Bangalore', '9845890123', 'suman.reddy@example.com'),
(182, 'Arjun Menon', '82D Indiranagar, Bangalore', '8762123456', 'arjun.menon@example.com'),
(183, 'Leena Iyer', '83E Koramangala, Bangalore', '9900901234', 'leena.iyer@example.com'),
(184, 'Vikram Singh', '84F Jayanagar, Bangalore', '8899890123', 'vikram.singh@example.com'),
(185, 'Kavya Kumar', '85G MG Road, Bangalore', '9789890123', 'kavya.kumar@example.com'),
(186, 'Srinivas Nair', '86H Brigade Road, Bangalore', '9686890123', 'srinivas.nair@example.com'),
(187, 'Aishwarya Verma', '87I Commercial St, Bangalore', '9585890123', 'aishwarya.verma@example.com'),
(188, 'Rahul Patel', '88J Residency Rd, Bangalore', '9484890123', 'rahul.patel@example.com'),
(189, 'Nayana Gupta', '89K Indiranagar, Bangalore', '9383890123', 'nayana.gupta@example.com'),
(190, 'Girish Sharma', '90L Koramangala, Bangalore', '9282890123', 'girish.sharma@example.com'),
(191, 'Lakshmi Reddy', '91M Jayanagar, Bangalore', '9845901234', 'lakshmi.reddy@example.com'),
(192, 'Vineet Menon', '92N MG Road, Bangalore', '8762234567', 'vineet.menon@example.com'),
(193, 'Priya Iyer', '93O Brigade Road, Bangalore', '9900012345', 'priya.iyer@example.com'),
(194, 'Ramesh Kumar', '94P Commercial St, Bangalore', '8899901234', 'ramesh.kumar@example.com'),
(195, 'Anjali Nair', '95Q Residency Rd, Bangalore', '9789901234', 'anjali.nair@example.com'),
(196, 'Sandeep Verma', '96R Indiranagar, Bangalore', '9686901234', 'sandeep.verma@example.com'),
(197, 'Deepika Patel', '97S Koramangala, Bangalore', '9585901234', 'deepika.patel@example.com'),
(198, 'Manoj Gupta', '98T Jayanagar, Bangalore', '9484901234', 'manoj.gupta@example.com'),
(199, 'Shweta Sharma', '99U MG Road, Bangalore', '9383901234', 'shweta.sharma@example.com'),
(200, 'Rajiv Reddy', '100V Brigade Road, Bangalore', '9282901234', 'rajiv.reddy@example.com');



-- 100 sample INSERT queries for Shipment
INSERT INTO Shipment (ShipmentID, TrackingNumber, DispatchDate, EstimatedDeliveryDate, Weight) VALUES
(1, 'TN1234567890', '2023-01-01', '2023-01-05', 2.50),
(2, 'TN2345678901', '2023-01-02', '2023-01-06', 1.75),
(3, 'TN3456789012', '2023-01-03', '2023-01-07', 3.00),
(4, 'TN4567890123', '2023-01-04', '2023-01-08', 0.50),
(5, 'TN5678901234', '2023-01-05', '2023-01-09', 1.20),
(6, 'TN6789012345', '2023-01-06', '2023-01-10', 4.00),
(7, 'TN7890123456', '2023-01-07', '2023-01-11', 0.80),
(8, 'TN8901234567', '2023-01-08', '2023-01-12', 2.10),
(9, 'TN9012345678', '2023-01-09', '2023-01-13', 1.50),
(10, 'TN0123456789', '2023-01-10', '2023-01-14', 3.20),
(11, 'TN1122334455', '2023-01-11', '2023-01-15', 2.75),
(12, 'TN2233445566', '2023-01-12', '2023-01-16', 1.90),
(13, 'TN3344556677', '2023-01-13', '2023-01-17', 3.50),
(14, 'TN4455667788', '2023-01-14', '2023-01-18', 0.60),
(15, 'TN5566778899', '2023-01-15', '2023-01-19', 1.30),
(16, 'TN6677889900', '2023-01-16', '2023-01-20', 4.20),
(17, 'TN7788990011', '2023-01-17', '2023-01-21', 0.90),
(18, 'TN8899001122', '2023-01-18', '2023-01-22', 2.30),
(19, 'TN9900112233', '2023-01-19', '2023-01-23', 1.60),
(20, 'TN0011223344', '2023-01-20', '2023-01-24', 3.40),
(21, 'TN1234567891', '2023-01-21', '2023-01-25', 2.60),
(22, 'TN2345678902', '2023-01-22', '2023-01-26', 1.85),
(23, 'TN3456789013', '2023-01-23', '2023-01-27', 3.10),
(24, 'TN4567890124', '2023-01-24', '2023-01-28', 0.55),
(25, 'TN5678901235', '2023-01-25', '2023-01-29', 1.25),
(26, 'TN6789012346', '2023-01-26', '2023-01-30', 4.10),
(27, 'TN7890123457', '2023-01-27', '2023-01-31', 0.85),
(28, 'TN8901234568', '2023-01-28', '2023-02-01', 2.20),
(29, 'TN9012345679', '2023-01-29', '2023-02-02', 1.55),
(30, 'TN0123456790', '2023-01-30', '2023-02-03', 3.30),
(31, 'TN1122334456', '2023-02-01', '2023-02-05', 2.85),
(32, 'TN2233445567', '2023-02-02', '2023-02-06', 1.95),
(33, 'TN3344556678', '2023-02-03', '2023-02-07', 3.60),
(34, 'TN4455667789', '2023-02-04', '2023-02-08', 0.65),
(35, 'TN5566778890', '2023-02-05', '2023-02-09', 1.35),
(36, 'TN6677889901', '2023-02-06', '2023-02-10', 4.30),
(37, 'TN7788990012', '2023-02-07', '2023-02-11', 0.95),
(38, 'TN8899001123', '2023-02-08', '2023-02-12', 2.40),
(39, 'TN9900112234', '2023-02-09', '2023-02-13', 1.70),
(40, 'TN0011223345', '2023-02-10', '2023-02-14', 3.50),
(41, 'TN1234567892', '2023-02-11', '2023-02-15', 2.70),
(42, 'TN2345678903', '2023-02-12', '2023-02-16', 1.80),
(43, 'TN3456789014', '2023-02-13', '2023-02-17', 3.20),
(44, 'TN4567890125', '2023-02-14', '2023-02-18', 0.70),
(45, 'TN5678901236', '2023-02-15', '2023-02-19', 1.40),
(46, 'TN6789012347', '2023-02-16', '2023-02-20', 4.40),
(47, 'TN7890123458', '2023-02-17', '2023-02-21', 1.00),
(48, 'TN8901234569', '2023-02-18', '2023-02-22', 2.50),
(49, 'TN9012345680', '2023-02-19', '2023-02-23', 1.80),
(50, 'TN0123456791', '2023-02-20', '2023-02-24', 3.60),
(51, 'TN1234567893', '2023-03-01', '2023-03-05', 2.90),
(52, 'TN2345678904', '2023-03-02', '2023-03-06', 2.00),
(53, 'TN3456789015', '2023-03-03', '2023-03-07', 3.70),
(54, 'TN4567890126', '2023-03-04', '2023-03-08', 0.75),
(55, 'TN5678901237', '2023-03-05', '2023-03-09', 1.45),
(56, 'TN6789012348', '2023-03-06', '2023-03-10', 4.50),
(57, 'TN7890123459', '2023-03-07', '2023-03-11', 1.05),
(58, 'TN8901234570', '2023-03-08', '2023-03-12', 2.60),
(59, 'TN9012345681', '2023-03-09', '2023-03-13', 1.90),
(60, 'TN0123456792', '2023-03-10', '2023-03-14', 3.70),
(61, 'TN1122334457', '2023-03-11', '2023-03-15', 3.00),
(62, 'TN2233445568', '2023-03-12', '2023-03-16', 2.10),
(63, 'TN3344556679', '2023-03-13', '2023-03-17', 3.80),
(64, 'TN4455667790', '2023-03-14', '2023-03-18', 0.80),
(65, 'TN5566778891', '2023-03-15', '2023-03-19', 1.50),
(66, 'TN6677889902', '2023-03-16', '2023-03-20', 4.60),
(67, 'TN7788990013', '2023-03-17', '2023-03-21', 1.10),
(68, 'TN8899001124', '2023-03-18', '2023-03-22', 2.70),
(69, 'TN9900112235', '2023-03-19', '2023-03-23', 2.00),
(70, 'TN0011223346', '2023-03-20', '2023-03-24', 3.80),
(71, 'TN1234567894', '2023-04-01', '2023-04-05', 3.10),
(72, 'TN2345678905', '2023-04-02', '2023-04-06', 2.20),
(73, 'TN3456789016', '2023-04-03', '2023-04-07', 3.90),
(74, 'TN4567890127', '2023-04-04', '2023-04-08', 0.85),
(75, 'TN5678901238', '2023-04-05', '2023-04-09', 1.55),
(76, 'TN6789012349', '2023-04-06', '2023-04-10', 4.70),
(77, 'TN7890123460', '2023-04-07', '2023-04-11', 1.15),
(78, 'TN8901234571', '2023-04-08', '2023-04-12', 2.80),
(79, 'TN9012345682', '2023-04-09', '2023-04-13', 2.10),
(80, 'TN0123456793', '2023-04-10', '2023-04-14', 3.90),
(81, 'TN1122334458', '2023-04-11', '2023-04-15', 3.20),
(82, 'TN2233445569', '2023-04-12', '2023-04-16', 2.30),
(83, 'TN3344556680', '2023-04-13', '2023-04-17', 4.00),
(84, 'TN4455667791', '2023-04-14', '2023-04-18', 0.90),
(85, 'TN5566778892', '2023-04-15', '2023-04-19', 1.60),
(86, 'TN6677889903', '2023-04-16', '2023-04-20', 4.80),
(87, 'TN7788990014', '2023-04-17', '2023-04-21', 1.20),
(88, 'TN8899001125', '2023-04-18', '2023-04-22', 2.90),
(89, 'TN9900112236', '2023-04-19', '2023-04-23', 2.20),
(90, 'TN0011223347', '2023-04-20', '2023-04-24', 4.00),
(91, 'TN1234567895', '2023-05-01', '2023-05-05', 3.30),
(92, 'TN2345678906', '2023-05-02', '2023-05-06', 2.40),
(93, 'TN3456789017', '2023-05-03', '2023-05-07', 4.10),
(94, 'TN4567890128', '2023-05-04', '2023-05-08', 0.95),
(95, 'TN5678901239', '2023-05-05', '2023-05-09', 1.65),
(96, 'TN6789012350', '2023-05-06', '2023-05-10', 4.90),
(97, 'TN7890123461', '2023-05-07', '2023-05-11', 1.25),
(98, 'TN8901234572', '2023-05-08', '2023-05-12', 3.00),
(99, 'TN9012345683', '2023-05-09', '2023-05-13', 2.30),
(100, 'TN0123456794', '2023-05-10', '2023-05-14', 4.10);



-- 100 sample INSERT queries for DeliveryStatus
INSERT INTO DeliveryStatus (StatusID, ShipmentID, Status, StatusDate, Location) VALUES
(1, 1, 'Order Placed', '2023-01-01 10:00:00', 'Nagpur'),
(2, 2, 'Shipped', '2023-01-02 12:00:00', 'Nagpur'),
(3, 3, 'In Transit', '2023-01-04 14:00:00', 'Mumbai'),
(4, 4, 'Out for Delivery', '2023-01-08 09:00:00', 'Bangalore'),
(5, 5, 'Delivered', '2023-01-09 11:00:00', 'Bangalore'),
(6, 6, 'Order Placed', '2023-01-06 15:00:00', 'Nagpur'),
(7, 7, 'Shipped', '2023-01-07 17:00:00', 'Nagpur'),
(8, 8, 'In Transit', '2023-01-09 19:00:00', 'Pune'),
(9, 9, 'Out for Delivery', '2023-01-13 10:00:00', 'Bangalore'),
(10, 10, 'Delivered', '2023-01-14 12:00:00', 'Bangalore'),
(11, 11, 'Order Placed', '2023-01-11 11:00:00', 'Nagpur'),
(12, 12, 'Shipped', '2023-01-12 13:00:00', 'Nagpur'),
(13, 13, 'In Transit', '2023-01-14 15:00:00', 'Hyderabad'),
(14, 14, 'Out for Delivery', '2023-01-18 10:30:00', 'Bangalore'),
(15, 15, 'Delivered', '2023-01-19 12:30:00', 'Bangalore'),
(16, 16, 'Order Placed', '2023-01-16 16:00:00', 'Nagpur'),
(17, 17, 'Shipped', '2023-01-17 18:00:00', 'Nagpur'),
(18, 18, 'In Transit', '2023-01-19 20:00:00', 'Chennai'),
(19, 19, 'Out for Delivery', '2023-01-23 11:00:00', 'Bangalore'),
(20, 20, 'Delivered', '2023-01-24 13:00:00', 'Bangalore'),
(21, 1, 'Order Placed', '2023-01-21 10:00:00', 'Nagpur'),
(22, 2, 'Shipped', '2023-01-22 12:00:00', 'Nagpur'),
(23, 3, 'In Transit', '2023-01-24 14:00:00', 'Mumbai'),
(24, 4, 'Out for Delivery', '2023-01-28 09:00:00', 'Bangalore'),
(25, 5, 'Delivered', '2023-01-29 11:00:00', 'Bangalore'),
(26, 6, 'Order Placed', '2023-01-26 15:00:00', 'Nagpur'),
(27, 7, 'Shipped', '2023-01-27 17:00:00', 'Nagpur'),
(28, 8, 'In Transit', '2023-01-29 19:00:00', 'Pune'),
(29, 9, 'Out for Delivery', '2023-02-02 10:00:00', 'Bangalore'),
(30, 10, 'Delivered', '2023-02-03 12:00:00', 'Bangalore'),
(31, 11, 'Order Placed', '2023-02-01 11:00:00', 'Nagpur'),
(32, 12, 'Shipped', '2023-02-02 13:00:00', 'Nagpur'),
(33, 13, 'In Transit', '2023-02-04 15:00:00', 'Hyderabad'),
(34, 14, 'Out for Delivery', '2023-02-08 10:30:00', 'Bangalore'),
(35, 15, 'Delivered', '2023-02-09 12:30:00', 'Bangalore'),
(36, 16, 'Order Placed', '2023-02-06 16:00:00', 'Nagpur'),
(37, 17, 'Shipped', '2023-02-07 18:00:00', 'Nagpur'),
(38, 18, 'In Transit', '2023-02-09 20:00:00', 'Chennai'),
(39, 19, 'Out for Delivery', '2023-02-13 11:00:00', 'Bangalore'),
(40, 20, 'Delivered', '2023-02-14 13:00:00', 'Bangalore'),
(41, 21, 'Order Placed', '2023-02-11 10:00:00', 'Nagpur'),
(42, 22, 'Shipped', '2023-02-12 12:00:00', 'Nagpur'),
(43, 23, 'In Transit', '2023-02-14 14:00:00', 'Mumbai'),
(44, 24, 'Out for Delivery', '2023-02-18 09:00:00', 'Bangalore'),
(45, 25, 'Delivered', '2023-02-19 11:00:00', 'Bangalore'),
(46, 26, 'Order Placed', '2023-02-16 15:00:00', 'Nagpur'),
(47, 27, 'Shipped', '2023-02-17 17:00:00', 'Nagpur'),
(48, 28, 'In Transit', '2023-02-19 19:00:00', 'Pune'),
(49, 29, 'Out for Delivery', '2023-02-23 10:00:00', 'Bangalore'),
(50, 30, 'Delivered', '2023-02-24 12:00:00', 'Bangalore'),
(51, 31, 'Order Placed', '2023-03-01 10:00:00', 'Nagpur'),
(52, 32, 'Shipped', '2023-03-02 12:00:00', 'Nagpur'),
(53, 33, 'In Transit', '2023-03-04 14:00:00', 'Mumbai'),
(54, 34, 'Out for Delivery', '2023-03-08 09:00:00', 'Bangalore'),
(55, 35, 'Delivered', '2023-03-09 11:00:00', 'Bangalore'),
(56, 36, 'Order Placed', '2023-03-06 15:00:00', 'Nagpur'),
(57, 37, 'Shipped', '2023-03-07 17:00:00', 'Nagpur'),
(58, 38, 'In Transit', '2023-03-09 19:00:00', 'Pune'),
(59, 39, 'Out for Delivery', '2023-03-13 10:00:00', 'Bangalore'),
(60, 40, 'Delivered', '2023-03-14 12:00:00', 'Bangalore'),
(61, 41, 'Order Placed', '2023-03-11 11:00:00', 'Nagpur'),
(62, 42, 'Shipped', '2023-03-12 13:00:00', 'Nagpur'),
(63, 43, 'In Transit', '2023-03-14 15:00:00', 'Hyderabad'),
(64, 44, 'Out for Delivery', '2023-03-18 10:30:00', 'Bangalore'),
(65, 45, 'Delivered', '2023-03-19 12:30:00', 'Bangalore'),
(66, 46, 'Order Placed', '2023-03-16 16:00:00', 'Nagpur'),
(67, 47, 'Shipped', '2023-03-17 18:00:00', 'Nagpur'),
(68, 48, 'In Transit', '2023-03-19 20:00:00', 'Chennai'),
(69, 49, 'Out for Delivery', '2023-03-23 11:00:00', 'Bangalore'),
(70, 50, 'Delivered', '2023-03-24 13:00:00', 'Bangalore'),
(71, 51, 'Order Placed', '2023-04-01 10:00:00', 'Nagpur'),
(72, 52, 'Shipped', '2023-04-02 12:00:00', 'Nagpur'),
(73, 53, 'In Transit', '2023-04-04 14:00:00', 'Mumbai'),
(74, 54, 'Out for Delivery', '2023-04-08 09:00:00', 'Bangalore'),
(75, 55, 'Delivered', '2023-04-09 11:00:00', 'Bangalore'),
(76, 56, 'Order Placed', '2023-04-06 15:00:00', 'Nagpur'),
(77, 57, 'Shipped', '2023-04-07 17:00:00', 'Nagpur'),
(78, 58, 'In Transit', '2023-04-09 19:00:00', 'Pune'),
(79, 59, 'Out for Delivery', '2023-04-13 10:00:00', 'Bangalore'),
(80, 60, 'Delivered', '2023-04-14 12:00:00', 'Bangalore'),
(81, 61, 'Order Placed', '2023-04-11 11:00:00', 'Nagpur'),
(82, 62, 'Shipped', '2023-04-12 13:00:00', 'Nagpur'),
(83, 63, 'In Transit', '2023-04-14 15:00:00', 'Hyderabad'),
(84, 64, 'Out for Delivery', '2023-04-18 10:30:00', 'Bangalore'),
(85, 65, 'Delivered', '2023-04-19 12:30:00', 'Bangalore'),
(86, 66, 'Order Placed', '2023-04-16 16:00:00', 'Nagpur'),
(87, 67, 'Shipped', '2023-04-17 18:00:00', 'Nagpur'),
(88, 68, 'In Transit', '2023-04-19 20:00:00', 'Chennai'),
(89, 69, 'Out for Delivery', '2023-04-23 11:00:00', 'Bangalore'),
(90, 70, 'Delivered', '2023-04-24 13:00:00', 'Bangalore'),
(91, 71, 'Order Placed', '2023-05-01 10:00:00', 'Nagpur'),
(92, 72, 'Shipped', '2023-05-02 12:00:00', 'Nagpur'),
(93, 73, 'In Transit', '2023-05-04 14:00:00', 'Mumbai'),
(94, 74, 'Out for Delivery', '2023-05-08 09:00:00', 'Bangalore'),
(95, 75, 'Delivered', '2023-05-09 11:00:00', 'Bangalore'),
(96, 76, 'Order Placed', '2023-05-06 15:00:00', 'Nagpur'),
(97, 77, 'Shipped', '2023-05-07 17:00:00', 'Nagpur'),
(98, 78, 'In Transit', '2023-05-09 19:00:00', 'Pune'),
(99, 79, 'Out for Delivery', '2023-05-13 10:00:00', 'Bangalore'),
(100, 80, 'Delivered', '2023-05-14 12:00:00', 'Bangalore');



-- UPDATE queries
UPDATE Sender
SET SenderPhone = '9876543211'
WHERE SenderID = 1;

UPDATE Shipment
SET EstimatedDeliveryDate = DATE_ADD(DispatchDate, INTERVAL 7 DAY)
WHERE ShipmentID = 1;

UPDATE Receiver
SET ReceiverEmail = 'updated_email@example.com'
WHERE ReceiverID = 2;

UPDATE DeliveryStatus
SET Status = 'Out for Delivery'
WHERE StatusID = 3;

-- ALTER queries
ALTER TABLE Sender
ADD COLUMN SenderCity VARCHAR(50);

ALTER TABLE Receiver
MODIFY COLUMN ReceiverName VARCHAR(150);

ALTER TABLE Shipment
ADD COLUMN Price DECIMAL(10,2);

ALTER TABLE DeliveryStatus
ADD COLUMN Notes VARCHAR(255);

--  queries to add and remove constraints (Note:  Since the tables were created without constraints, I'll add some and then remove them)
-- Add Constraints (demonstration - you'd normally define these in the CREATE TABLE)
ALTER TABLE Shipment
ADD CONSTRAINT CHK_Weight CHECK (Weight > 0);  -- Example:  Check constraint

-- Remove Constraints
ALTER TABLE Shipment
DROP CONSTRAINT CHK_Weight;

-- VIEW queries
CREATE VIEW SenderInfo AS
SELECT SenderName, SenderAddress, SenderPhone
FROM Sender;

CREATE VIEW ShipmentStatus AS
SELECT s.ShipmentID, s.TrackingNumber, d.Status, d.StatusDate
FROM Shipment s, DeliveryStatus d
WHERE s.ShipmentID = d.ShipmentID;

CREATE VIEW ReceiverContact AS
SELECT ReceiverName,ReceiverPhone,ReceiverEmail from Receiver;

CREATE VIEW ShipmentWeightAndDates AS
SELECT ShipmentID, TrackingNumber, Weight, DispatchDate, EstimatedDeliveryDate FROM Shipment;

-- JOIN queries
--  Inner Join
SELECT s.SenderName, sh.TrackingNumber
FROM Sender s
INNER JOIN Shipment sh ON s.SenderID = sh.ShipmentID;

-- Left Join
SELECT r.ReceiverName, sh.TrackingNumber
FROM Receiver r
LEFT JOIN Shipment sh ON r.ReceiverID = sh.ShipmentID;

-- Right Join
SELECT d.Status, sh.TrackingNumber
FROM DeliveryStatus d
RIGHT JOIN Shipment sh ON d.ShipmentID = sh.ShipmentID;

-- Full Outer Join (Simulated with UNION, as MySQL doesn't directly support it)
SELECT s.SenderName, sh.TrackingNumber
FROM Sender s
LEFT JOIN Shipment sh ON s.SenderID = sh.ShipmentID
UNION
SELECT s.SenderName, sh.TrackingNumber
FROM Sender s
RIGHT JOIN Shipment sh ON s.SenderID = sh.ShipmentID;

-- Join Sender and Receiver with Shipment (though there's no direct link without FKs, this shows the syntax)
SELECT
    s.SenderName,
    r.ReceiverName,
    sh.TrackingNumber
FROM
    Sender s,
    Receiver r,
    Shipment sh
WHERE s.SenderID = sh.ShipmentID; --This condition is not correct, but shows join syntax
