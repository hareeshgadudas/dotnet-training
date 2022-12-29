USE [Training]
GO
ALTER TABLE [dbo].[State] DROP CONSTRAINT [FK_State_Country]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF__Country__Name__37A5467C]
GO
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF__Country__Country__36B12243]
GO
/****** Object:  Table [dbo].[State]    Script Date: 28-12-2022 18:08:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[State]') AND type in (N'U'))
DROP TABLE [dbo].[State]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 28-12-2022 18:08:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[City]    Script Date: 28-12-2022 18:08:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[City]') AND type in (N'U'))
DROP TABLE [dbo].[City]
GO
/****** Object:  Table [dbo].[City]    Script Date: 28-12-2022 18:08:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] NOT NULL,
	[City] [varchar](255) NOT NULL,
	[StateId] [int] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 28-12-2022 18:08:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[Name] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 28-12-2022 18:08:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (1, N'North and Middle Andaman', 32)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (2, N'South Andaman', 32)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (3, N'Nicobar', 32)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (4, N'Adilabad', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (5, N'Anantapur', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (6, N'Chittoor', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (7, N'East Godavari', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (8, N'Guntur', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (9, N'Hyderabad', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (10, N'Kadapa', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (11, N'Karimnagar', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (12, N'Khammam', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (13, N'Krishna', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (14, N'Kurnool', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (15, N'Mahbubnagar', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (16, N'Medak', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (17, N'Nalgonda', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (18, N'Nellore', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (19, N'Nizamabad', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (20, N'Prakasam', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (21, N'Rangareddi', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (22, N'Srikakulam', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (23, N'Vishakhapatnam', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (24, N'Vizianagaram', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (25, N'Warangal', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (26, N'West Godavari', 1)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (27, N'Anjaw', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (28, N'Changlang', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (29, N'East Kameng', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (30, N'Lohit', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (31, N'Lower Subansiri', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (32, N'Papum Pare', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (33, N'Tirap', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (34, N'Dibang Valley', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (35, N'Upper Subansiri', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (36, N'West Kameng', 3)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (37, N'Barpeta', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (38, N'Bongaigaon', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (39, N'Cachar', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (40, N'Darrang', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (41, N'Dhemaji', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (42, N'Dhubri', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (43, N'Dibrugarh', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (44, N'Goalpara', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (45, N'Golaghat', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (46, N'Hailakandi', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (47, N'Jorhat', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (48, N'Karbi Anglong', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (49, N'Karimganj', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (50, N'Kokrajhar', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (51, N'Lakhimpur', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (52, N'Marigaon', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (53, N'Nagaon', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (54, N'Nalbari', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (55, N'North Cachar Hills', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (56, N'Sibsagar', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (57, N'Sonitpur', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (58, N'Tinsukia', 2)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (59, N'Araria', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (60, N'Aurangabad', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (61, N'Banka', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (62, N'Begusarai', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (63, N'Bhagalpur', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (64, N'Bhojpur', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (65, N'Buxar', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (66, N'Darbhanga', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (67, N'Purba Champaran', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (68, N'Gaya', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (69, N'Gopalganj', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (70, N'Jamui', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (71, N'Jehanabad', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (72, N'Khagaria', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (73, N'Kishanganj', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (74, N'Kaimur', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (75, N'Katihar', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (76, N'Lakhisarai', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (77, N'Madhubani', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (78, N'Munger', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (79, N'Madhepura', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (80, N'Muzaffarpur', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (81, N'Nalanda', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (82, N'Nawada', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (83, N'Patna', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (84, N'Purnia', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (85, N'Rohtas', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (86, N'Saharsa', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (87, N'Samastipur', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (88, N'Sheohar', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (89, N'Sheikhpura', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (90, N'Saran', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (91, N'Sitamarhi', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (92, N'Supaul', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (93, N'Siwan', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (94, N'Vaishali', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (95, N'Pashchim Champaran', 4)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (112, N'Diu', 29)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (113, N'Daman', 29)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (114, N'Central Delhi', 25)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (115, N'East Delhi', 25)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (116, N'New Delhi', 25)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (117, N'North Delhi', 25)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (118, N'North East Delhi', 25)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (119, N'North West Delhi', 25)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (120, N'South Delhi', 25)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (121, N'South West Delhi', 25)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (122, N'West Delhi', 25)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (123, N'North Goa', 26)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (124, N'South Goa', 26)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (125, N'Ahmedabad', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (126, N'Amreli District', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (127, N'Anand', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (128, N'Banaskantha', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (129, N'Bharuch', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (130, N'Bhavnagar', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (131, N'Dahod', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (132, N'The Dangs', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (133, N'Gandhinagar', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (134, N'Jamnagar', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (135, N'Junagadh', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (136, N'Kutch', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (137, N'Kheda', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (138, N'Mehsana', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (139, N'Narmada', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (140, N'Navsari', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (141, N'Patan', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (142, N'Panchmahal', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (143, N'Porbandar', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (144, N'Rajkot', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (145, N'Sabarkantha', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (146, N'Surendranagar', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (147, N'Surat', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (148, N'Vadodara', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (149, N'Valsad', 5)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (150, N'Ambala', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (151, N'Bhiwani', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (152, N'Faridabad', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (153, N'Fatehabad', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (154, N'Gurgaon', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (155, N'Hissar', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (156, N'Jhajjar', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (157, N'Jind', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (158, N'Karnal', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (159, N'Kaithal', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (160, N'Kurukshetra', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (161, N'Mahendragarh', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (162, N'Mewat', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (163, N'Panchkula', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (164, N'Panipat', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (165, N'Rewari', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (166, N'Rohtak', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (167, N'Sirsa', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (168, N'Sonepat', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (169, N'Yamuna Nagar', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (170, N'Palwal', 6)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (171, N'Bilaspur', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (172, N'Chamba', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (173, N'Hamirpur', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (174, N'Kangra', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (175, N'Kinnaur', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (176, N'Kulu', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (177, N'Lahaul and Spiti', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (178, N'Mandi', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (179, N'Shimla', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (180, N'Sirmaur', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (181, N'Solan', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (182, N'Una', 7)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (183, N'Anantnag', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (184, N'Badgam', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (185, N'Bandipore', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (186, N'Baramula', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (187, N'Doda', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (188, N'Jammu', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (189, N'Kargil', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (190, N'Kathua', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (191, N'Kupwara', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (192, N'Leh', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (193, N'Poonch', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (194, N'Pulwama', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (195, N'Rajauri', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (196, N'Srinagar', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (197, N'Samba', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (198, N'Udhampur', 8)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (199, N'Bokaro', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (200, N'Chatra', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (201, N'Deoghar', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (202, N'Dhanbad', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (203, N'Dumka', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (204, N'Purba Singhbhum', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (205, N'Garhwa', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (206, N'Giridih', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (207, N'Godda', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (208, N'Gumla', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (209, N'Hazaribagh', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (210, N'Koderma', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (211, N'Lohardaga', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (212, N'Pakur', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (213, N'Palamu', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (214, N'Ranchi', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (215, N'Sahibganj', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (216, N'Seraikela and Kharsawan', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (217, N'Pashchim Singhbhum', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (218, N'Ramgarh', 34)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (219, N'Bidar', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (220, N'Belgaum', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (221, N'Bijapur', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (222, N'Bagalkot', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (223, N'Bellary', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (224, N'Bangalore Rural District', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (225, N'Bangalore Urban District', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (226, N'Chamarajnagar', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (227, N'Chikmagalur', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (228, N'Chitradurga', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (229, N'Davanagere', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (230, N'Dharwad', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (231, N'Dakshina Kannada', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (232, N'Gadag', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (233, N'Gulbarga', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (234, N'Hassan', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (235, N'Haveri District', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (236, N'Kodagu', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (237, N'Kolar', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (238, N'Koppal', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (239, N'Mandya', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (240, N'Mysore', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (241, N'Raichur', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (242, N'Shimoga', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (243, N'Tumkur', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (244, N'Udupi', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (245, N'Uttara Kannada', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (246, N'Ramanagara', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (247, N'Chikballapur', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (248, N'Yadagiri', 9)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (249, N'Alappuzha', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (250, N'Ernakulam', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (251, N'Idukki', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (252, N'Kollam', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (253, N'Kannur', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (254, N'Kasaragod', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (255, N'Kottayam', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (256, N'Kozhikode', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (257, N'Malappuram', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (258, N'Palakkad', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (259, N'Pathanamthitta', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (260, N'Thrissur', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (261, N'Thiruvananthapuram', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (262, N'Wayanad', 10)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (263, N'Alirajpur', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (264, N'Anuppur', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (265, N'Ashok Nagar', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (266, N'Balaghat', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (267, N'Barwani', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (268, N'Betul', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (269, N'Bhind', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (270, N'Bhopal', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (271, N'Burhanpur', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (272, N'Chhatarpur', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (273, N'Chhindwara', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (274, N'Damoh', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (275, N'Datia', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (276, N'Dewas', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (277, N'Dhar', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (278, N'Dindori', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (279, N'Guna', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (280, N'Gwalior', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (281, N'Harda', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (282, N'Hoshangabad', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (283, N'Indore', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (284, N'Jabalpur', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (285, N'Jhabua', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (286, N'Katni', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (287, N'Khandwa', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (288, N'Khargone', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (289, N'Mandla', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (290, N'Mandsaur', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (291, N'Morena', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (292, N'Narsinghpur', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (293, N'Neemuch', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (294, N'Panna', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (295, N'Rewa', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (296, N'Rajgarh', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (297, N'Ratlam', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (298, N'Raisen', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (299, N'Sagar', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (300, N'Satna', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (301, N'Sehore', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (302, N'Seoni', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (303, N'Shahdol', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (304, N'Shajapur', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (305, N'Sheopur', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (306, N'Shivpuri', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (307, N'Sidhi', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (308, N'Singrauli', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (309, N'Tikamgarh', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (310, N'Ujjain', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (311, N'Umaria', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (312, N'Vidisha', 11)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (313, N'Ahmednagar', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (314, N'Akola', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (315, N'Amrawati', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (316, N'Aurangabad', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (317, N'Bhandara', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (318, N'Beed', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (319, N'Buldhana', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (320, N'Chandrapur', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (321, N'Dhule', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (322, N'Gadchiroli', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (323, N'Gondiya', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (324, N'Hingoli', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (325, N'Jalgaon', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (326, N'Jalna', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (327, N'Kolhapur', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (328, N'Latur', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (329, N'Mumbai City', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (330, N'Mumbai suburban', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (331, N'Nandurbar', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (332, N'Nanded', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (333, N'Nagpur', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (334, N'Nashik', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (335, N'Osmanabad', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (336, N'Parbhani', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (337, N'Pune', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (338, N'Raigad', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (339, N'Ratnagiri', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (340, N'Sindhudurg', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (341, N'Sangli', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (342, N'Solapur', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (343, N'Satara', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (344, N'Thane', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (345, N'Wardha', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (346, N'Washim', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (347, N'Yavatmal', 12)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (348, N'Bishnupur', 13)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (349, N'Churachandpur', 13)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (350, N'Chandel', 13)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (351, N'Imphal East', 13)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (352, N'Senapati', 13)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (353, N'Tamenglong', 13)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (354, N'Thoubal', 13)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (355, N'Ukhrul', 13)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (356, N'Imphal West', 13)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (357, N'East Garo Hills', 14)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (358, N'East Khasi Hills', 14)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (359, N'Jaintia Hills', 14)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (360, N'Ri-Bhoi', 14)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (361, N'South Garo Hills', 14)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (362, N'West Garo Hills', 14)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (363, N'West Khasi Hills', 14)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (364, N'Aizawl', 15)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (365, N'Champhai', 15)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (366, N'Kolasib', 15)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (367, N'Lawngtlai', 15)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (368, N'Lunglei', 15)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (369, N'Mamit', 15)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (370, N'Saiha', 15)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (371, N'Serchhip', 15)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (372, N'Dimapur', 16)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (373, N'Kohima', 16)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (374, N'Mokokchung', 16)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (375, N'Mon', 16)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (376, N'Phek', 16)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (377, N'Tuensang', 16)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (378, N'Wokha', 16)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (379, N'Zunheboto', 16)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (380, N'Angul', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (381, N'Boudh', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (382, N'Bhadrak', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (383, N'Bolangir', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (384, N'Bargarh', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (385, N'Baleswar', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (386, N'Cuttack', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (387, N'Debagarh', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (388, N'Dhenkanal', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (389, N'Ganjam', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (390, N'Gajapati', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (391, N'Jharsuguda', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (392, N'Jajapur', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (393, N'Jagatsinghpur', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (394, N'Khordha', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (395, N'Kendujhar', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (396, N'Kalahandi', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (397, N'Kandhamal', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (398, N'Koraput', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (399, N'Kendrapara', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (400, N'Malkangiri', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (401, N'Mayurbhanj', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (402, N'Nabarangpur', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (403, N'Nuapada', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (404, N'Nayagarh', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (405, N'Puri', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (406, N'Rayagada', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (407, N'Sambalpur', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (408, N'Subarnapur', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (409, N'Sundargarh', 17)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (410, N'Karaikal', 27)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (411, N'Mahe', 27)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (412, N'Puducherry', 27)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (413, N'Yanam', 27)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (414, N'Amritsar', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (415, N'Bathinda', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (416, N'Firozpur', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (417, N'Faridkot', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (418, N'Fatehgarh Sahib', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (419, N'Gurdaspur', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (420, N'Hoshiarpur', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (421, N'Jalandhar', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (422, N'Kapurthala', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (423, N'Ludhiana', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (424, N'Mansa', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (425, N'Moga', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (426, N'Mukatsar', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (427, N'Nawan Shehar', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (428, N'Patiala', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (429, N'Rupnagar', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (430, N'Sangrur', 18)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (431, N'Ajmer', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (432, N'Alwar', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (433, N'Bikaner', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (434, N'Barmer', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (435, N'Banswara', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (436, N'Bharatpur', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (437, N'Baran', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (438, N'Bundi', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (439, N'Bhilwara', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (440, N'Churu', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (441, N'Chittorgarh', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (442, N'Dausa', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (443, N'Dholpur', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (444, N'Dungapur', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (445, N'Ganganagar', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (446, N'Hanumangarh', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (447, N'Juhnjhunun', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (448, N'Jalore', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (449, N'Jodhpur', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (450, N'Jaipur', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (451, N'Jaisalmer', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (452, N'Jhalawar', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (453, N'Karauli', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (454, N'Kota', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (455, N'Nagaur', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (456, N'Pali', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (457, N'Pratapgarh', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (458, N'Rajsamand', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (459, N'Sikar', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (460, N'Sawai Madhopur', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (461, N'Sirohi', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (462, N'Tonk', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (463, N'Udaipur', 19)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (464, N'East Sikkim', 20)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (465, N'North Sikkim', 20)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (466, N'South Sikkim', 20)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (467, N'West Sikkim', 20)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (468, N'Ariyalur', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (469, N'Chennai', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (470, N'Coimbatore', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (471, N'Cuddalore', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (472, N'Dharmapuri', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (473, N'Dindigul', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (474, N'Erode', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (475, N'Kanchipuram', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (476, N'Kanyakumari', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (477, N'Karur', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (478, N'Madurai', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (479, N'Nagapattinam', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (480, N'The Nilgiris', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (481, N'Namakkal', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (482, N'Perambalur', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (483, N'Pudukkottai', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (484, N'Ramanathapuram', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (485, N'Salem', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (486, N'Sivagangai', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (487, N'Tiruppur', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (488, N'Tiruchirappalli', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (489, N'Theni', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (490, N'Tirunelveli', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (491, N'Thanjavur', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (492, N'Thoothukudi', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (493, N'Thiruvallur', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (494, N'Thiruvarur', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (495, N'Tiruvannamalai', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (496, N'Vellore', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (497, N'Villupuram', 21)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (498, N'Dhalai', 22)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (499, N'North Tripura', 22)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (500, N'South Tripura', 22)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (501, N'West Tripura', 22)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (502, N'Almora', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (503, N'Bageshwar', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (504, N'Chamoli', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (505, N'Champawat', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (506, N'Dehradun', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (507, N'Haridwar', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (508, N'Nainital', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (509, N'Pauri Garhwal', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (510, N'Pithoragharh', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (511, N'Rudraprayag', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (512, N'Tehri Garhwal', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (513, N'Udham Singh Nagar', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (514, N'Uttarkashi', 33)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (515, N'Agra', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (516, N'Allahabad', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (517, N'Aligarh', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (518, N'Ambedkar Nagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (519, N'Auraiya', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (520, N'Azamgarh', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (521, N'Barabanki', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (522, N'Badaun', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (523, N'Bagpat', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (524, N'Bahraich', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (525, N'Bijnor', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (526, N'Ballia', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (527, N'Banda', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (528, N'Balrampur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (529, N'Bareilly', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (530, N'Basti', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (531, N'Bulandshahr', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (532, N'Chandauli', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (533, N'Chitrakoot', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (534, N'Deoria', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (535, N'Etah', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (536, N'Kanshiram Nagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (537, N'Etawah', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (538, N'Firozabad', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (539, N'Farrukhabad', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (540, N'Fatehpur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (541, N'Faizabad', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (542, N'Gautam Buddha Nagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (543, N'Gonda', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (544, N'Ghazipur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (545, N'Gorkakhpur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (546, N'Ghaziabad', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (547, N'Hamirpur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (548, N'Hardoi', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (549, N'Mahamaya Nagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (550, N'Jhansi', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (551, N'Jalaun', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (552, N'Jyotiba Phule Nagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (553, N'Jaunpur District', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (554, N'Kanpur Dehat', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (555, N'Kannauj', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (556, N'Kanpur Nagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (557, N'Kaushambi', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (558, N'Kushinagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (559, N'Lalitpur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (560, N'Lakhimpur Kheri', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (561, N'Lucknow', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (562, N'Mau', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (563, N'Meerut', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (564, N'Maharajganj', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (565, N'Mahoba', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (566, N'Mirzapur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (567, N'Moradabad', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (568, N'Mainpuri', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (569, N'Mathura', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (570, N'Muzaffarnagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (571, N'Pilibhit', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (572, N'Pratapgarh', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (573, N'Rampur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (574, N'Rae Bareli', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (575, N'Saharanpur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (576, N'Sitapur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (577, N'Shahjahanpur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (578, N'Sant Kabir Nagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (579, N'Siddharthnagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (580, N'Sonbhadra', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (581, N'Sant Ravidas Nagar', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (582, N'Sultanpur', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (583, N'Shravasti', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (584, N'Unnao', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (585, N'Varanasi', 23)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (586, N'Birbhum', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (587, N'Bankura', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (588, N'Bardhaman', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (589, N'Darjeeling', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (590, N'Dakshin Dinajpur', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (591, N'Hooghly', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (592, N'Howrah', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (593, N'Jalpaiguri', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (594, N'Cooch Behar', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (595, N'Kolkata', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (596, N'Malda', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (597, N'Midnapore', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (598, N'Murshidabad', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (599, N'Nadia', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (600, N'North 24 Parganas', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (601, N'South 24 Parganas', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (602, N'Purulia', 24)
GO
INSERT [dbo].[City] ([Id], [City], [StateId]) VALUES (603, N'Uttar Dinajpur', 24)
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (1, N'AD', N'Andorra')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (2, N'AE', N'United Arab Emirates')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (3, N'AF', N'Afghanistan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (4, N'AG', N'Antigua and Barbuda')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (5, N'AI', N'Anguilla')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (6, N'AL', N'Albania')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (7, N'AM', N'Armenia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (8, N'AO', N'Angola')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (9, N'AQ', N'Antarctica')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (10, N'AR', N'Argentina')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (11, N'AS', N'American Samoa')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (12, N'AT', N'Austria')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (13, N'AU', N'Australia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (14, N'AW', N'Aruba')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (15, N'AX', N'Åland')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (16, N'AZ', N'Azerbaijan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (17, N'BA', N'Bosnia and Herzegovina')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (18, N'BB', N'Barbados')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (19, N'BD', N'Bangladesh')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (20, N'BE', N'Belgium')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (21, N'BF', N'Burkina Faso')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (22, N'BG', N'Bulgaria')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (23, N'BH', N'Bahrain')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (24, N'BI', N'Burundi')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (25, N'BJ', N'Benin')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (26, N'BL', N'Saint Barthélemy')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (27, N'BM', N'Bermuda')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (28, N'BN', N'Brunei')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (29, N'BO', N'Bolivia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (30, N'BQ', N'Bonaire')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (31, N'BR', N'Brazil')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (32, N'BS', N'Bahamas')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (33, N'BT', N'Bhutan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (34, N'BV', N'Bouvet Island')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (35, N'BW', N'Botswana')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (36, N'BY', N'Belarus')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (37, N'BZ', N'Belize')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (38, N'CA', N'Canada')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (39, N'CC', N'Cocos [Keeling] Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (40, N'CD', N'Democratic Republic of the Congo')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (41, N'CF', N'Central African Republic')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (42, N'CG', N'Republic of the Congo')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (43, N'CH', N'Switzerland')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (44, N'CI', N'Ivory Coast')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (45, N'CK', N'Cook Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (46, N'CL', N'Chile')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (47, N'CM', N'Cameroon')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (48, N'CN', N'China')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (49, N'CO', N'Colombia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (50, N'CR', N'Costa Rica')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (51, N'CU', N'Cuba')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (52, N'CV', N'Cape Verde')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (53, N'CW', N'Curacao')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (54, N'CX', N'Christmas Island')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (55, N'CY', N'Cyprus')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (56, N'CZ', N'Czech Republic')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (57, N'DE', N'Germany')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (58, N'DJ', N'Djibouti')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (59, N'DK', N'Denmark')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (60, N'DM', N'Dominica')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (61, N'DO', N'Dominican Republic')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (62, N'DZ', N'Algeria')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (63, N'EC', N'Ecuador')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (64, N'EE', N'Estonia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (65, N'EG', N'Egypt')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (66, N'EH', N'Western Sahara')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (67, N'ER', N'Eritrea')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (68, N'ES', N'Spain')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (69, N'ET', N'Ethiopia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (70, N'FI', N'Finland')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (71, N'FJ', N'Fiji')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (72, N'FK', N'Falkland Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (73, N'FM', N'Micronesia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (74, N'FO', N'Faroe Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (75, N'FR', N'France')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (76, N'GA', N'Gabon')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (77, N'GB', N'United Kingdom')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (78, N'GD', N'Grenada')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (79, N'GE', N'Georgia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (80, N'GF', N'French Guiana')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (81, N'GG', N'Guernsey')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (82, N'GH', N'Ghana')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (83, N'GI', N'Gibraltar')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (84, N'GL', N'Greenland')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (85, N'GM', N'Gambia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (86, N'GN', N'Guinea')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (87, N'GP', N'Guadeloupe')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (88, N'GQ', N'Equatorial Guinea')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (89, N'GR', N'Greece')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (90, N'GS', N'South Georgia and the South Sandwich Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (91, N'GT', N'Guatemala')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (92, N'GU', N'Guam')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (93, N'GW', N'Guinea-Bissau')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (94, N'GY', N'Guyana')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (95, N'HK', N'Hong Kong')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (96, N'HM', N'Heard Island and McDonald Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (97, N'HN', N'Honduras')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (98, N'HR', N'Croatia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (99, N'HT', N'Haiti')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (100, N'HU', N'Hungary')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (101, N'ID', N'Indonesia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (102, N'IE', N'Ireland')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (103, N'IL', N'Israel')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (104, N'IM', N'Isle of Man')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (105, N'IN', N'India')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (106, N'IO', N'British Indian Ocean Territory')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (107, N'IQ', N'Iraq')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (108, N'IR', N'Iran')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (109, N'IS', N'Iceland')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (110, N'IT', N'Italy')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (111, N'JE', N'Jersey')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (112, N'JM', N'Jamaica')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (113, N'JO', N'Jordan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (114, N'JP', N'Japan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (115, N'KE', N'Kenya')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (116, N'KG', N'Kyrgyzstan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (117, N'KH', N'Cambodia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (118, N'KI', N'Kiribati')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (119, N'KM', N'Comoros')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (120, N'KN', N'Saint Kitts and Nevis')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (121, N'KP', N'North Korea')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (122, N'KR', N'South Korea')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (123, N'KW', N'Kuwait')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (124, N'KY', N'Cayman Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (125, N'KZ', N'Kazakhstan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (126, N'LA', N'Laos')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (127, N'LB', N'Lebanon')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (128, N'LC', N'Saint Lucia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (129, N'LI', N'Liechtenstein')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (130, N'LK', N'Sri Lanka')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (131, N'LR', N'Liberia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (132, N'LS', N'Lesotho')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (133, N'LT', N'Lithuania')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (134, N'LU', N'Luxembourg')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (135, N'LV', N'Latvia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (136, N'LY', N'Libya')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (137, N'MA', N'Morocco')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (138, N'MC', N'Monaco')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (139, N'MD', N'Moldova')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (140, N'ME', N'Montenegro')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (141, N'MF', N'Saint Martin')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (142, N'MG', N'Madagascar')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (143, N'MH', N'Marshall Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (144, N'MK', N'Macedonia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (145, N'ML', N'Mali')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (146, N'MM', N'Myanmar [Burma]')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (147, N'MN', N'Mongolia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (148, N'MO', N'Macao')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (149, N'MP', N'Northern Mariana Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (150, N'MQ', N'Martinique')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (151, N'MR', N'Mauritania')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (152, N'MS', N'Montserrat')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (153, N'MT', N'Malta')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (154, N'MU', N'Mauritius')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (155, N'MV', N'Maldives')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (156, N'MW', N'Malawi')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (157, N'MX', N'Mexico')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (158, N'MY', N'Malaysia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (159, N'MZ', N'Mozambique')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (160, N'NA', N'Namibia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (161, N'NC', N'New Caledonia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (162, N'NE', N'Niger')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (163, N'NF', N'Norfolk Island')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (164, N'NG', N'Nigeria')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (165, N'NI', N'Nicaragua')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (166, N'NL', N'Netherlands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (167, N'NO', N'Norway')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (168, N'NP', N'Nepal')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (169, N'NR', N'Nauru')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (170, N'NU', N'Niue')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (171, N'NZ', N'New Zealand')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (172, N'OM', N'Oman')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (173, N'PA', N'Panama')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (174, N'PE', N'Peru')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (175, N'PF', N'French Polynesia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (176, N'PG', N'Papua New Guinea')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (177, N'PH', N'Philippines')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (178, N'PK', N'Pakistan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (179, N'PL', N'Poland')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (180, N'PM', N'Saint Pierre and Miquelon')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (181, N'PN', N'Pitcairn Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (182, N'PR', N'Puerto Rico')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (183, N'PS', N'Palestine')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (184, N'PT', N'Portugal')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (185, N'PW', N'Palau')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (186, N'PY', N'Paraguay')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (187, N'QA', N'Qatar')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (188, N'RE', N'Réunion')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (189, N'RO', N'Romania')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (190, N'RS', N'Serbia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (191, N'RU', N'Russia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (192, N'RW', N'Rwanda')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (193, N'SA', N'Saudi Arabia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (194, N'SB', N'Solomon Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (195, N'SC', N'Seychelles')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (196, N'SD', N'Sudan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (197, N'SE', N'Sweden')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (198, N'SG', N'Singapore')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (199, N'SH', N'Saint Helena')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (200, N'SI', N'Slovenia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (201, N'SJ', N'Svalbard and Jan Mayen')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (202, N'SK', N'Slovakia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (203, N'SL', N'Sierra Leone')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (204, N'SM', N'San Marino')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (205, N'SN', N'Senegal')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (206, N'SO', N'Somalia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (207, N'SR', N'Suriname')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (208, N'SS', N'South Sudan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (209, N'ST', N'São Tomé and Príncipe')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (210, N'SV', N'El Salvador')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (211, N'SX', N'Sint Maarten')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (212, N'SY', N'Syria')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (213, N'SZ', N'Swaziland')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (214, N'TC', N'Turks and Caicos Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (215, N'TD', N'Chad')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (216, N'TF', N'French Southern Territories')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (217, N'TG', N'Togo')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (218, N'TH', N'Thailand')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (219, N'TJ', N'Tajikistan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (220, N'TK', N'Tokelau')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (221, N'TL', N'East Timor')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (222, N'TM', N'Turkmenistan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (223, N'TN', N'Tunisia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (224, N'TO', N'Tonga')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (225, N'TR', N'Turkey')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (226, N'TT', N'Trinidad and Tobago')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (227, N'TV', N'Tuvalu')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (228, N'TW', N'Taiwan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (229, N'TZ', N'Tanzania')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (230, N'UA', N'Ukraine')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (231, N'UG', N'Uganda')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (232, N'UM', N'U.S. Minor Outlying Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (233, N'US', N'United States')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (234, N'UY', N'Uruguay')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (235, N'UZ', N'Uzbekistan')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (236, N'VA', N'Vatican City')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (237, N'VC', N'Saint Vincent and the Grenadines')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (238, N'VE', N'Venezuela')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (239, N'VG', N'British Virgin Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (240, N'VI', N'U.S. Virgin Islands')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (241, N'VN', N'Vietnam')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (242, N'VU', N'Vanuatu')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (243, N'WF', N'Wallis and Futuna')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (244, N'WS', N'Samoa')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (245, N'XK', N'Kosovo')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (246, N'YE', N'Yemen')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (247, N'YT', N'Mayotte')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (248, N'ZA', N'South Africa')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (249, N'ZM', N'Zambia')
GO
INSERT [dbo].[Country] ([Id], [CountryCode], [Name]) VALUES (250, N'ZW', N'Zimbabwe')
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (1, N'ANDHRA PRADESH', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (2, N'ASSAM', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (3, N'ARUNACHAL PRADESH', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (4, N'BIHAR', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (5, N'GUJRAT', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (6, N'HARYANA', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (7, N'HIMACHAL PRADESH', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (8, N'JAMMU & KASHMIR', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (9, N'KARNATAKA', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (10, N'KERALA', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (11, N'MADHYA PRADESH', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (12, N'MAHARASHTRA', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (13, N'MANIPUR', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (14, N'MEGHALAYA', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (15, N'MIZORAM', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (16, N'NAGALAND', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (17, N'ORISSA', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (18, N'PUNJAB', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (19, N'RAJASTHAN', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (20, N'SIKKIM', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (21, N'TAMIL NADU', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (22, N'TRIPURA', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (23, N'UTTAR PRADESH', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (24, N'WEST BENGAL', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (25, N'DELHI', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (26, N'GOA', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (27, N'PONDICHERY', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (28, N'LAKSHDWEEP', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (29, N'DAMAN & DIU', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (30, N'DADRA & NAGAR', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (31, N'CHANDIGARH', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (32, N'ANDAMAN & NICOBAR', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (33, N'UTTARANCHAL', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (34, N'JHARKHAND', 105)
GO
INSERT [dbo].[State] ([Id], [Name], [CountryId]) VALUES (35, N'CHATTISGARH', 105)
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ('') FOR [CountryCode]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([Id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
