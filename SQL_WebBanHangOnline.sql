USE [WebBanHangOnline]
GO
/****** Object:  Table [dbo].[tb_category]    Script Date: 26/05/2023 12:28:53 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.tb_category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_guest]    Script Date: 26/05/2023 12:28:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_guest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [varchar](11) NULL,
	[AddressShip] [ntext] NULL,
	[Username] [varchar](255) NOT NULL,
	[Password] [varchar](60) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Date_of_birth] [date] NULL,
 CONSTRAINT [PK_dbo.tb_guest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_order]    Script Date: 26/05/2023 12:28:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GuestID] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[Note] [ntext] NULL,
	[Quantity] [int] NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.tb_order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_orderDetail]    Script Date: 26/05/2023 12:28:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_orderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.tb_orderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_product]    Script Date: 26/05/2023 12:28:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](max) NULL,
	[Name] [nvarchar](250) NOT NULL,
	[QuantityInSock] [int] NOT NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[DetailDescription] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [datetime] NULL,
	[Category_Id] [int] NULL,
	[SellWell] [bit] NULL,
	[Outstanding] [bit] NULL,
 CONSTRAINT [PK_dbo.tb_product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_productImage]    Script Date: 26/05/2023 12:28:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_productImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Product_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tb_productImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_role]    Script Date: 26/05/2023 12:28:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_role](
	[idRole] [varchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tb_role] PRIMARY KEY CLUSTERED 
(
	[idRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 26/05/2023 12:28:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](255) NULL,
	[Username] [varchar](255) NULL,
	[Password] [varchar](60) NULL,
	[Email] [varchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_user] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_user_role]    Script Date: 26/05/2023 12:28:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRole] [varchar](50) NOT NULL,
	[idUser] [int] NOT NULL,
 CONSTRAINT [PK_tb_user_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_order]  WITH CHECK ADD  CONSTRAINT [FK_tb_order_tb_guest] FOREIGN KEY([GuestID])
REFERENCES [dbo].[tb_guest] ([Id])
GO
ALTER TABLE [dbo].[tb_order] CHECK CONSTRAINT [FK_tb_order_tb_guest]
GO
ALTER TABLE [dbo].[tb_orderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_orderDetail_dbo.tb_order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[tb_order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_orderDetail] CHECK CONSTRAINT [FK_dbo.tb_orderDetail_dbo.tb_order_OrderId]
GO
ALTER TABLE [dbo].[tb_orderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_orderDetail_dbo.tb_product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_orderDetail] CHECK CONSTRAINT [FK_dbo.tb_orderDetail_dbo.tb_product_ProductID]
GO
ALTER TABLE [dbo].[tb_product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_product_dbo.tb_category_Category_Id] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[tb_category] ([Id])
GO
ALTER TABLE [dbo].[tb_product] CHECK CONSTRAINT [FK_dbo.tb_product_dbo.tb_category_Category_Id]
GO
ALTER TABLE [dbo].[tb_productImage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_productImage_dbo.tb_product_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[tb_product] ([Id])
GO
ALTER TABLE [dbo].[tb_productImage] CHECK CONSTRAINT [FK_dbo.tb_productImage_dbo.tb_product_Product_Id]
GO
ALTER TABLE [dbo].[tb_user_role]  WITH CHECK ADD  CONSTRAINT [FK_tb_user_role_tb_role] FOREIGN KEY([idRole])
REFERENCES [dbo].[tb_role] ([idRole])
GO
ALTER TABLE [dbo].[tb_user_role] CHECK CONSTRAINT [FK_tb_user_role_tb_role]
GO
ALTER TABLE [dbo].[tb_user_role]  WITH CHECK ADD  CONSTRAINT [FK_tb_user_role_tb_user] FOREIGN KEY([idUser])
REFERENCES [dbo].[tb_user] ([Id])
GO
ALTER TABLE [dbo].[tb_user_role] CHECK CONSTRAINT [FK_tb_user_role_tb_user]
GO
