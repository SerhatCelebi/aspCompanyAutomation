
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/27/2024 17:00:03
-- Generated from EDMX file: C:\Users\DELL\Desktop\Serhat_Kamilcelebi_170106109047_Staj\ASPNETSirketOtomasyonu\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ASPNETSirketEntities];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Kullanicilar_Yetkilendirme]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kullanicilar] DROP CONSTRAINT [FK_Kullanicilar_Yetkilendirme];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonelBasarilari_Personeller1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonelBasarilari] DROP CONSTRAINT [FK_PersonelBasarilari_Personeller1];
GO
IF OBJECT_ID(N'[dbo].[FK_Personeller_Birimler1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Personeller] DROP CONSTRAINT [FK_Personeller_Birimler1];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Birimler]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Birimler];
GO
IF OBJECT_ID(N'[dbo].[Duyurular]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Duyurular];
GO
IF OBJECT_ID(N'[dbo].[Iletisim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Iletisim];
GO
IF OBJECT_ID(N'[dbo].[Kullanicilar]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kullanicilar];
GO
IF OBJECT_ID(N'[dbo].[PersonelBasarilari]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonelBasarilari];
GO
IF OBJECT_ID(N'[dbo].[Personeller]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Personeller];
GO
IF OBJECT_ID(N'[dbo].[Sirket]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sirket];
GO
IF OBJECT_ID(N'[dbo].[SirketHakkinda]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SirketHakkinda];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Yetkilendirme]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Yetkilendirme];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Birimlers'
CREATE TABLE [dbo].[Birimlers] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Birim] varchar(50)  NULL,
    [Aciklama] varchar(max)  NULL
);
GO

-- Creating table 'Duyurulars'
CREATE TABLE [dbo].[Duyurulars] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Baslik] varchar(150)  NULL,
    [Duyuru] varchar(max)  NULL,
    [Aciklama] varchar(max)  NULL,
    [Tarih] datetime  NULL,
    [Saat] datetime  NULL
);
GO

-- Creating table 'Iletisims'
CREATE TABLE [dbo].[Iletisims] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AdiSoyadi] varchar(150)  NULL,
    [Email] varchar(150)  NULL,
    [Baslik] varchar(150)  NULL,
    [Mesaj] varchar(max)  NULL,
    [Tarih] datetime  NULL
);
GO

-- Creating table 'Kullanicilars'
CREATE TABLE [dbo].[Kullanicilars] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [YetkiID] int  NULL,
    [KullaniciAdi] varchar(50)  NULL,
    [Sifre] varchar(10)  NULL,
    [Adi] varchar(50)  NULL,
    [Soyadi] varchar(50)  NULL,
    [Email] varchar(150)  NULL,
    [Isactive] bit  NULL,
    [GirisTarihi] datetime  NULL,
    [Resim] varchar(max)  NULL
);
GO

-- Creating table 'PersonelBasarilaris'
CREATE TABLE [dbo].[PersonelBasarilaris] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [PersonelID] int  NULL,
    [Basari] varchar(max)  NULL,
    [Tarih] datetime  NULL
);
GO

-- Creating table 'Personellers'
CREATE TABLE [dbo].[Personellers] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [BirimID] int  NULL,
    [Adi] varchar(50)  NULL,
    [Soyadi] varchar(50)  NULL,
    [Tel_1] varchar(20)  NULL,
    [Tel_2] varchar(20)  NULL,
    [Email] varchar(50)  NULL,
    [Adres] varchar(max)  NULL,
    [Maasi] decimal(28,2)  NULL,
    [Resim] varchar(max)  NULL,
    [Aciklama] varchar(max)  NULL,
    [Isactive] bit  NULL,
    [GirisTarih] datetime  NULL
);
GO

-- Creating table 'Sirkets'
CREATE TABLE [dbo].[Sirkets] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [SirketAdi] varchar(50)  NULL,
    [Tel_1] varchar(20)  NULL,
    [Tel_2] varchar(20)  NULL,
    [Fax] varchar(20)  NULL,
    [Email] varchar(150)  NULL,
    [Adres] varchar(max)  NULL,
    [KurulusTarihi] datetime  NULL
);
GO

-- Creating table 'SirketHakkindas'
CREATE TABLE [dbo].[SirketHakkindas] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Hakkinda] varchar(max)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Yetkilendirmes'
CREATE TABLE [dbo].[Yetkilendirmes] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Yetki] varchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Birimlers'
ALTER TABLE [dbo].[Birimlers]
ADD CONSTRAINT [PK_Birimlers]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Duyurulars'
ALTER TABLE [dbo].[Duyurulars]
ADD CONSTRAINT [PK_Duyurulars]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Iletisims'
ALTER TABLE [dbo].[Iletisims]
ADD CONSTRAINT [PK_Iletisims]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Kullanicilars'
ALTER TABLE [dbo].[Kullanicilars]
ADD CONSTRAINT [PK_Kullanicilars]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'PersonelBasarilaris'
ALTER TABLE [dbo].[PersonelBasarilaris]
ADD CONSTRAINT [PK_PersonelBasarilaris]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Personellers'
ALTER TABLE [dbo].[Personellers]
ADD CONSTRAINT [PK_Personellers]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Sirkets'
ALTER TABLE [dbo].[Sirkets]
ADD CONSTRAINT [PK_Sirkets]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'SirketHakkindas'
ALTER TABLE [dbo].[SirketHakkindas]
ADD CONSTRAINT [PK_SirketHakkindas]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID] in table 'Yetkilendirmes'
ALTER TABLE [dbo].[Yetkilendirmes]
ADD CONSTRAINT [PK_Yetkilendirmes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BirimID] in table 'Personellers'
ALTER TABLE [dbo].[Personellers]
ADD CONSTRAINT [FK_Personeller_Birimler1]
    FOREIGN KEY ([BirimID])
    REFERENCES [dbo].[Birimlers]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Personeller_Birimler1'
CREATE INDEX [IX_FK_Personeller_Birimler1]
ON [dbo].[Personellers]
    ([BirimID]);
GO

-- Creating foreign key on [YetkiID] in table 'Kullanicilars'
ALTER TABLE [dbo].[Kullanicilars]
ADD CONSTRAINT [FK_Kullanicilar_Yetkilendirme]
    FOREIGN KEY ([YetkiID])
    REFERENCES [dbo].[Yetkilendirmes]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Kullanicilar_Yetkilendirme'
CREATE INDEX [IX_FK_Kullanicilar_Yetkilendirme]
ON [dbo].[Kullanicilars]
    ([YetkiID]);
GO

-- Creating foreign key on [PersonelID] in table 'PersonelBasarilaris'
ALTER TABLE [dbo].[PersonelBasarilaris]
ADD CONSTRAINT [FK_PersonelBasarilari_Personeller1]
    FOREIGN KEY ([PersonelID])
    REFERENCES [dbo].[Personellers]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonelBasarilari_Personeller1'
CREATE INDEX [IX_FK_PersonelBasarilari_Personeller1]
ON [dbo].[PersonelBasarilaris]
    ([PersonelID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------