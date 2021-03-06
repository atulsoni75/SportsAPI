USE [SportItem]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 02/06/2020 23:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/06/2020 23:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/06/2020 23:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/06/2020 23:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/06/2020 23:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/06/2020 23:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 02/06/2020 23:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operations]    Script Date: 02/06/2020 23:36:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operations](
	[Id] [int] NOT NULL,
	[SportName] [nvarchar](200) NULL,
	[SportType] [int] NULL,
	[NrOfEvents] [int] NOT NULL,
	[SportOrder] [int] NOT NULL,
	[ShowAllButton] [bit] NOT NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_Operations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1, N'Soccer', 0, 0, 0, 0, CAST(N'2020-06-02T16:47:51.893' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (2, N'Basketball', 0, 0, 0, 0, CAST(N'2020-06-02T16:47:59.630' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (3, N'Baseball', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.860' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (4, N'Ice Hockey', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.863' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (5, N'Tennis', 0, 0, 0, 0, CAST(N'2020-06-02T16:47:57.063' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (6, N'Handball', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.873' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (7, N'Floorball', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.870' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (8, N'Golf', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.873' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (9, N'Motorsport', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.863' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (10, N'Rugby', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.873' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (11, N'Aussie Rules', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.867' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (12, N'Winter sports', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.863' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (13, N'Bandy', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.867' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (14, N'American Football', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.863' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (15, N'Cycling', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.870' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (16, N'Snooker', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.873' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (17, N'Darts', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.870' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (18, N'Volleyball', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.860' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (19, N'Waterpolo', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.877' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (20, N'Curling', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.870' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (21, N'Futsal', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.870' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (22, N'Olympics', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.880' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (23, N'Beach Volley', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.867' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (24, N'Softball', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.883' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (25, N'Beach Soccer', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.867' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (26, N'Pesapallo', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.873' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (27, N'Lottery', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.877' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (28, N'Boxing', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.867' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (30, N'Sailing', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.867' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (31, N'Horse Racing', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.873' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (32, N'Rowing', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.880' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (33, N'Athletics', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.867' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (34, N'Greyhound Racing', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.877' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (35, N'Sumo Wrestling', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.883' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (36, N'Hurling', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.877' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (37, N'Table Tennis', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.873' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (38, N'Netball', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.880' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (39, N'Yachting', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.883' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (40, N'Swimming', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.883' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (41, N'Badminton', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.863' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (42, N'Polo', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.880' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (43, N'Squash', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.877' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (44, N'Pool', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.880' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (45, N'Chess', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.867' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (46, N'Cricket', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.877' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (47, N'Bowls', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.877' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (48, N'Field hockey', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.870' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (50, N'Dog Races', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.883' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (51, N'Soccer Mythical', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.883' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1001, N'CustomSport1', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.887' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1002, N'World Lottery', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.887' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1003, N'ESport Counter-Strike', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.887' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1004, N'ESport League of Legends', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.887' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1005, N'MMA', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.887' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1006, N'ESport Dota', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.887' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1007, N'Specials', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.883' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1008, N'ESport Overwatch', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.887' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1009, N'Alpine Skiing', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.887' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1010, N'Biathlon', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.890' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1011, N'Cross-Country', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.890' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1012, N'ESports Call of Duty', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.890' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1013, N'ESport Hearthstone', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.890' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1014, N'ESport Starcraft', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.890' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1015, N'ESport Street Fighter V', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.890' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1016, N'Nordic Combined', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.890' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1017, N'Ski Jumping', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.893' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1018, N'Bobsleigh', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.900' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1019, N'Snowboard', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.900' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1020, N'Speed Skating', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.900' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1021, N'Luge', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.900' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1022, N'Figure Skating', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.900' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1023, N'Freestyle Skiing', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.900' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1024, N'Skeleton', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.900' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1025, N'Short Track speed skating', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.900' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1026, N'Ski Jumping', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.903' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1027, N'Formula 1', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.893' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1028, N'DTM', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.893' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1029, N'Moto GP', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.893' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1030, N'Moto 2', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.893' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1031, N'Moto 3', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.893' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1032, N'Superbike', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.893' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1033, N'Speedway', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.897' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1034, N'Indy Racing', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.897' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1035, N'Nascar', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.897' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1036, N'Rally', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.897' AS DateTime))
INSERT [dbo].[Operations] ([Id], [SportName], [SportType], [NrOfEvents], [SportOrder], [ShowAllButton], [CreatedOn]) VALUES (1037, N'Formula E', 0, 0, 0, 0, CAST(N'2020-06-02T16:48:11.897' AS DateTime))
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
