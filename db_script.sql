USE [OkulOdevi]
GO
/****** Object:  Table [dbo].[Departmantlar]    Script Date: 13.12.2022 22:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departmantlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[departmanAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Departmant] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kisiler]    Script Date: 13.12.2022 22:01:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kisiler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[departmanId] [int] NULL,
	[adiSoyadi] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kisiler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departmantlar] ON 
GO
INSERT [dbo].[Departmantlar] ([id], [departmanAdi]) VALUES (1, N'Müdür')
GO
INSERT [dbo].[Departmantlar] ([id], [departmanAdi]) VALUES (2, N'Öğretmen')
GO
INSERT [dbo].[Departmantlar] ([id], [departmanAdi]) VALUES (3, N'Öğrenci')
GO
SET IDENTITY_INSERT [dbo].[Departmantlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Kisiler] ON 
GO
INSERT [dbo].[Kisiler] ([id], [departmanId], [adiSoyadi], [telefon], [email], [sifre]) VALUES (2, 1, N'Tufan Çetin', N'0555556981', N'tfn@gmail.com', N'1')
GO
INSERT [dbo].[Kisiler] ([id], [departmanId], [adiSoyadi], [telefon], [email], [sifre]) VALUES (3, 2, N'Esma Çicek', N'05399404033', N'esma@gmail.com', N'2')
GO
INSERT [dbo].[Kisiler] ([id], [departmanId], [adiSoyadi], [telefon], [email], [sifre]) VALUES (4, 3, N'Sabri Uzun', N'05399404030', N'sbr@gmail.com', N'4')
GO
SET IDENTITY_INSERT [dbo].[Kisiler] OFF
GO
ALTER TABLE [dbo].[Kisiler]  WITH CHECK ADD  CONSTRAINT [FK_Kisiler_Departmantlar] FOREIGN KEY([departmanId])
REFERENCES [dbo].[Departmantlar] ([id])
GO
ALTER TABLE [dbo].[Kisiler] CHECK CONSTRAINT [FK_Kisiler_Departmantlar]
GO
