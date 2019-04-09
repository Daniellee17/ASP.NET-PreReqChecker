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
('Term 2','LBYMEEA','Engineering Graphics 2 (CAD)',0,1,null,null,'GRAPONE')

GO


