USE [ageDB]
GO

INSERT INTO [dbo].[dB11514299]
           ([TermNo]
           ,[Course]
           ,[CourseTitle]
           ,[Passed]
           ,[Units]
           ,[SoftReq]
           ,[CoReq]
           ,[HardReq])
     VALUES
('Term 1','NSTP101','National Service Training Program General-Orientation',1,0,null,null,null),
('Term 1','PERSEF1','Personal Effectiveness 1',1,(2),null,null,null),
('Term 1','LASARE1','Lasallian Recollection 1',1,0,null,null,null),
('Term 1','FITWELL','Physical Fitness and Wellness',1,2,null,null,null),
('Term 1','ENGLCOM','Basic Communication and Study Skills',1,3,null,null,null),
('Term 1','ENGALG1','College Algebra for Engineering',1,3,null,null,null),
('Term 1','ENGTRIG','Plane and Spherical Trigonometry for Engineering',1,3,null,'ENGTRIG',null),
('Term 1','CHEMONE','General Chemistry 1',1,3,null,null,null),
('Term 1','LBYCH11','General Chemistry 1 Laboratory',1,1,null,'CHEMONE',null),
('Term 1','GRAPONE','Engineering Graphics 1',1,1,null,null,null),

('Term 2','NSTP-R1/C1','National Service Training Program 1',0,(3),null,null,null),
('Term 2','FTSPORT','Physical Fitness and Wellness in Individual/Dual Sport',0,2,'FITWELL',null,null),
('Term 2','ENGLRES','Basic Research Skills/English for Specific Purposes',0,3,null,null,'ENGLCOM'),
('Term 2','FILKOMU','Komunikasyon sa Filipinohiya',0,3,null,null,null),
('Term 2','ANAGEOM','Analytic Geometry',0,2,null,null,'ENGALG1/ENGTRIG'),
('Term 2','DIFFCAL','Differential Calculus',0,4,null,'ANAGEOM','ENGALG1/ENGTRIG'),
('Term 2','SOLIMEN','Solid Mensuration',0,2,null,'ANAGEOM',null),
('Term 2','SOCTEC1','Science, Technology, and Society 1',0,3,null,null,null),
('Term 2','LBYMEEA','Engineering Graphics 2 (CAD)',0,1,null,null,'GRAPONE'),

('Term 3','SAS1000','Students Affairs Services 1000',1,0,null,null,null),
('Term 3','NSTP-R2/C2','National Service Training Program 2',1,(3),null,null,'NSTP-R1/C1'),
('Term 3','ENGPHY1','Engineering Physics 1',1,3,'DIFFCAL',null,null),
('Term 3','LBYPH11','Engineering Physics 1 Laboratory',1,1,null,'ENGPHY1',null),
('Term 3','FTDANCE','Physical Fitness and Wellness in Dance',1,2,'FITWELL',null,null),
('Term 3','SPEECOM','Oral Communication/Advanced Speech Class',1,3,null,null,'ENGLCOM'),
('Term 3','FILDLAR','Pagbasa at Pagsulat sa lbat Ibang Disiplina',1,3,null,null,'FILKOMU'),
('Term 3','INTECAL','Integral Calculus',1,4,null,null,'DIFFCAL'),
('Term 3','ENGALG2','Advanced Algebra for Engineering',1,2,null,null,'ENGALG1'),
('Term 3','MENGIOR','Mechanical Engineering Orientation',1,1,null,null,null),
('Term 3','LBYME11','Mechanical Processes 1',1,1,null,null,null),

('Term 4','LBYEC71','Computer Fundamentals & Programming 1',1,1,'ENGALG1',null,null),
('Term 4','THERMO1','Basic Mechanical Engineering Thermodynamics',1,3,'INTECAL',null,null),
('Term 4','ENGIANA','Differential Equations',1,3,null,null,'INTECAL'),
('Term 4','ENGPHY2','Engineering Physics 2',1,3,null,null,'ENGPHY1'),
('Term 4','LBYPH12','Engineering Physics 2 Laboratory',1,1,null,'ENGPHY2','LBYPH11'),
('Term 4','SOCTEC2','Science, Technology, and Society 2',1,3,null,null,'SOCTEC1'),
('Term 4','LBYME12','Mechanical Processes 2',1,1,null,null,'LBYME11'),
('Term 4','TREDONE','Humanity�s Search for Life',1,3,null,null,null),
('Term 4','ENGSAFE','Safety Management for Engineering',1,1,null,null,null),

('Term 5','HUMALIT','Introduction to Literature',1,3,null,null,'ENGLRES'),
('Term 5','THERMO2','Advanced Mechanical Engineering Thermodynamics',1,3,null,null,'THERMO1'),
('Term 5','NUMERIC','Numerical Methods',1,1,null,'ADMEMAT',null),
('Term 5','LBYMEEN','Numerical Methods Laboratory',1,1,null,'NUMERIC',null),
('Term 5','STATICS','Statics of Rigid Bodies',1,3,'INTECAL',null,'ENGPHY1'),
('Term 5','ADMEMAT','Advanced Engineering Mathematics for ME',1,2,null,null,'ENGIANA'),
('Term 5','INTFILO','Introductory Philosophy',1,3,null,null,null),
('Term 5','LBYME13','Mechanical Processes 3',1,1,null,null,'LBYME12'),
('Term 5','LBYME15','Mechanical Engineering Laboratory 1',1,1,'THERMO1',null,null),
('Term 5','LBYMEEB','Mechanical Engineering CADD 1',1,1,null,null,'LBYMEEA'),

('Term 6','FTTEAMS','Physical Fitness and Wellness in Team Sports',1,2,'FITWELL',null,null),
('Term 6','TREDTWO','The Filipino Christian in a Changing World',1,3,null,null,'TREDONE'),
('Term 6','MEEHEAT','Heat Transfer for ME',1,2,'THERMO2',null,null),
('Term 6','FLUIDME','Fluid Mechanics',1,3,'THERMO1',null,'STATICS/ADMEMAT'),
('Term 6','MENGECO','Engineering Economy for ME',1,3,'DIFFCAL',null,null),
('Term 6','DYNAMIC','Dynamics of Rigid Bodies',1,2,null,null,'STATICS'),
('Term 6','ELENPRI','Electrical Engineering Principles',1,3,null,null,'ENGPHY2'),
('Term 6','LBYEC74','Electrical Engineering Principles Laboratory',1,1,null,'ELENPRI','LBYPH12'),
('Term 6','LBYEC72','Computer Fundamentals & Programming 2',1,1,null,null,'LBYEC71'),
('Term 6','LASARE2','Lasallian Recollection 2',1,0,null,null,'LASARE1'),

('Term 7','KINMAC1','Kinematics and Machine Elements 1',1,2,null,null,'DYNAMIC'),
('Term 7','LBYMEEK','Machine Elements 1 Laboratory',1,1,null,'KINMAC1',null),
('Term 7','REFRENG','Refrigeration Engineering',1,3,null,null,'MEEHEAT'),
('Term 7','MEVIBEN','Vibration Engineering for ME',1,2,null,null,'DYNAMIC/ENGIANA'),
('Term 7','COMBUST','Combustion Engineering',1,2,null,null,'THERMO2'),
('Term 7','MEDEFOR','Mechanics of Deformable Bodies',1,3,'DYNAMIC',null,null),
('Term 7','MACHENG','DC and AC Machinery',1,2,null,null,'ELENPRI'),
('Term 7','LBYEC75','DC and AC Machinery Laboratory',1,1,null,'MACHENG','LBYEC74'),
('Term 7','LBYMEEC','Mechanical Engineering CADD 2',1,1,null,null,'LBYMEEB'),
('Term 7','LBYME16','Mechanical Engineering Laboratory 2',1,1,'FLUIDME',null,'LBYME15'),

('Term 8','KINMAC2','Kinematics and Machine Elements 2',1,2,null,null,'KINMAC1'),
('Term 8','LBYMEEL','Machine Elements 2 Laboratory',1,1,null,'KINMAC1','LBYMEEK'),
('Term 8','FLUIMAC','Fluid Machinery',1,3,null,null,'FLUIDME'),
('Term 8','MEREMEE','Methods of Research for ME',1,1,null,null,'ENGLRES'),
('Term 8','MEEMATS','Materials Science and Engineering',1,3,'MEDEFOR',null,'CHEMONE'),
('Term 8','LBYME19','Materials Science and Engineering Laboratory',1,1,null,'MEEMATS',null),
('Term 8','AIRCOVE','Air Conditioning and Ventilation Systems',1,2,null,null,'REFRENG'),
('Term 8','LBYMEEM','Air Conditioning and Ventilation Systems Laboratory',1,1,null,'AIRCOVE',null),
('Term 8','ELTROME','Basic Electronics for ME',1,3,null,null,'ELENPRI'),
('Term 8','LBYEC76','Basic Electronics Laboratory for ME',1,1,null,'ELTROME','LBYEC74'),

('Term 9','TREDTRI','The Christian and the Word',1,3,null,null,'TREDTWO'),
('Term 9','GREATWK','The Great Works',1,3,null,null,null),
('Term 9','ENGSTAT','Probability and Statistics for Engineering',1,3,'INTECAL',null,null),
('Term 9','MADEONE','Machine Design 1',1,3,'KINMAC2',null,'MEDEFOR'),
('Term 9','DIELECT','Digital Electronics for ME',1,3,null,null,'ELTROME'),
('Term 9','LBYEC77','Digital Electronics Laboratory for ME',1,1,null,'DIELECT','LBYEC76'),
('Term 9','THSMEEA','Mechanical Engineering Project Study 1',1,1,'MENGECO/ELTROME/KINMAC2/FLUIDME',null,'MEREMEE'),
('Term 9','LBYME14','Fundamentals of CNC Machines',1,1,null,null,'LBYME13'),
('Term 9','PERSEF2','Personal Effectiveness 2',1,(2),null,null,'PERSEF1'),

('Term 10','MEESAFE','Mechanical Engineering Safety',1,2,null,null,'ENGSAFE'),
('Term 10','ENVIRON','Environmental Engineering',1,2,'CHEMONE',null,null),
('Term 10','INPLANT','Industrial Plant Design',1,3,null,null,'FLUIMAC/AIRCOVE'),
('Term 10','MADETWO','Machine Design 2',1,3,null,null,'MADEONE'),
('Term 10','MELECT1','Mechanical Engineering Elective 1',1,2,null,null,null),
('Term 10','LBYME17','Mechanical Engineering Laboratory 3',1,1,'FLUIMAC',null,'LBYME16'),
('Term 10','MEECONT','Controls Engineering for ME',1,3,'DIELECT/MEVIBEN',null,null),
('Term 10','LBYME21','Controls Engineering Laboratory for ME',1,1,null,'MEECONT',null),
('Term 10','THSMEEB','Mechanical Engineering Project Study 2',1,1,null,null,'THSMEEA'),

('Term 11','KASPIL1','Buhay, mga Sinulat at Nagawa ni Dr. Jose Rizal',0,3,null,null,null),
('Term 11','HUMAART','Introduction to Art',0,3,null,null,'ENGLRES'),
('Term 11','POPLADE','Power Plant Engineering',0,5,null,null,'COMBUST'),
('Term 11','MANAGEN','Engineering Management',0,3,null,null,null),
('Term 11','MECATRO','Mechatronics',0,2,null,null,'MEECONT/DIELECT/MACHENG'),
('Term 11','LBYME22','Mechatronics Laboratory',0,1,'LBYEC75/LBYME21','MECATRO',null),
('Term 11','LBYMEEP','Computer Methods for ME',0,1,null,null,'MADEONE/FLUIDME'),

('Term 12','IPERSEF','Integrating Course for Personal Effectiveness',0,0,null,null,'PERSEF2'),
('Term 12','LASARE3','Lasallian Recollection 3',0,0,null,null,'LASARE2'),
('Term 12','KASPIL2','Kasaysayan ng Pilipinas',0,3,null,null,'KASPIL1'),
('Term 12','TREDFOR','The Christian Vocation of Life',0,3,null,null,'TREDTRI'),
('Term 12','INPROME','Industrial Processes for ME',0,2,'INPLANT',null,null),
('Term 12','METHICO','ME Laws, Ethics, Codes and Standards',0,3,null,null,null),
('Term 12','MELECT2','Mechanical Engineering Elective 2',0,2,null,null,null),
('Term 12','LBYME18','Mechanical Engineering Laboratory 4',0,1,'POPLADE',null,'LBYME17'),
('Term 12','THSMEEC','Mechanical Engineering Project Study 3',0,1,null,null,'THSMEEB'),

('Term 13','PRCMEE1','Mechanical Engineering Practicum',0,2,null,null,'PERSEF2')


GO




