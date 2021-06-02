
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/02/2021 02:47:57
-- Generated from EDMX file: C:\Users\Tamara\Desktop\GitHub\BP2Project2021\SistemZZ\SistemZZ_DB\SistemZZ_ERModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SistemZdrZasDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Sastoji]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ZdravstvenaUstanova] DROP CONSTRAINT [FK_Sastoji];
GO
IF OBJECT_ID(N'[dbo].[FK_Osnovana]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UstanovaAP] DROP CONSTRAINT [FK_Osnovana];
GO
IF OBJECT_ID(N'[dbo].[FK_Osniva]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UstanovaAP] DROP CONSTRAINT [FK_Osniva];
GO
IF OBJECT_ID(N'[dbo].[FK_Upravlja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DomZdravlja] DROP CONSTRAINT [FK_Upravlja];
GO
IF OBJECT_ID(N'[dbo].[FK_Vrsi_DomZdravlja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Vrsi] DROP CONSTRAINT [FK_Vrsi_DomZdravlja];
GO
IF OBJECT_ID(N'[dbo].[FK_Vrsi_Prevoz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Vrsi] DROP CONSTRAINT [FK_Vrsi_Prevoz];
GO
IF OBJECT_ID(N'[dbo].[FK_Obezbedjuje_ZdravstenaZastita]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Obezbedjuje] DROP CONSTRAINT [FK_Obezbedjuje_ZdravstenaZastita];
GO
IF OBJECT_ID(N'[dbo].[FK_Obezbedjuje_DomZdravlja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Obezbedjuje] DROP CONSTRAINT [FK_Obezbedjuje_DomZdravlja];
GO
IF OBJECT_ID(N'[dbo].[FK_Pruza_ZdravstveniRadnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pruza] DROP CONSTRAINT [FK_Pruza_ZdravstveniRadnik];
GO
IF OBJECT_ID(N'[dbo].[FK_Pruza_ZdravstenaZastita]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pruza] DROP CONSTRAINT [FK_Pruza_ZdravstenaZastita];
GO
IF OBJECT_ID(N'[dbo].[FK_SanitetskiPrevoz_inherits_Prevoz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Prevoz_SanitetskiPrevoz] DROP CONSTRAINT [FK_SanitetskiPrevoz_inherits_Prevoz];
GO
IF OBJECT_ID(N'[dbo].[FK_DijalizaPrevoz_inherits_Prevoz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Prevoz_DijalizaPrevoz] DROP CONSTRAINT [FK_DijalizaPrevoz_inherits_Prevoz];
GO
IF OBJECT_ID(N'[dbo].[FK_Doktor_inherits_ZdravstveniRadnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ZdravstveniRadnik_Doktor] DROP CONSTRAINT [FK_Doktor_inherits_ZdravstveniRadnik];
GO
IF OBJECT_ID(N'[dbo].[FK_MedicinskaSestra_inherits_ZdravstveniRadnik]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ZdravstveniRadnik_MedicinskaSestra] DROP CONSTRAINT [FK_MedicinskaSestra_inherits_ZdravstveniRadnik];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[SistemZdravstveneZastite]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SistemZdravstveneZastite];
GO
IF OBJECT_ID(N'[dbo].[ZdravstvenaUstanova]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ZdravstvenaUstanova];
GO
IF OBJECT_ID(N'[dbo].[AutonomnaPokrajina]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AutonomnaPokrajina];
GO
IF OBJECT_ID(N'[dbo].[DomZdravlja]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DomZdravlja];
GO
IF OBJECT_ID(N'[dbo].[Prevoz]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Prevoz];
GO
IF OBJECT_ID(N'[dbo].[UstanovaAP]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UstanovaAP];
GO
IF OBJECT_ID(N'[dbo].[ZdravstenaZastita]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ZdravstenaZastita];
GO
IF OBJECT_ID(N'[dbo].[ZdravstveniRadnik]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ZdravstveniRadnik];
GO
IF OBJECT_ID(N'[dbo].[Prevoz_SanitetskiPrevoz]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Prevoz_SanitetskiPrevoz];
GO
IF OBJECT_ID(N'[dbo].[Prevoz_DijalizaPrevoz]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Prevoz_DijalizaPrevoz];
GO
IF OBJECT_ID(N'[dbo].[ZdravstveniRadnik_Doktor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ZdravstveniRadnik_Doktor];
GO
IF OBJECT_ID(N'[dbo].[ZdravstveniRadnik_MedicinskaSestra]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ZdravstveniRadnik_MedicinskaSestra];
GO
IF OBJECT_ID(N'[dbo].[Vrsi]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vrsi];
GO
IF OBJECT_ID(N'[dbo].[Obezbedjuje]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Obezbedjuje];
GO
IF OBJECT_ID(N'[dbo].[Pruza]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pruza];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'SistemZdravstveneZastite'
CREATE TABLE [dbo].[SistemZdravstveneZastite] (
    [ID_SZZ] int IDENTITY(1,1) NOT NULL,
    [NazivSZZ] nvarchar(max)  NOT NULL,
    [DrzavaSZZ] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ZdravstvenaUstanova'
CREATE TABLE [dbo].[ZdravstvenaUstanova] (
    [ID_ZU] int IDENTITY(1,1) NOT NULL,
    [NazivZU] nvarchar(max)  NOT NULL,
    [AdresaZU] nvarchar(max)  NOT NULL,
    [BrTelZU] nvarchar(max)  NOT NULL,
    [SistemZdravstveneZastiteID_SZZ] int  NOT NULL
);
GO

-- Creating table 'AutonomnaPokrajina'
CREATE TABLE [dbo].[AutonomnaPokrajina] (
    [ID_AP] int IDENTITY(1,1) NOT NULL,
    [NazivAP] nvarchar(max)  NOT NULL,
    [PredsAP] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DomZdravlja'
CREATE TABLE [dbo].[DomZdravlja] (
    [ID_DZ] int IDENTITY(1,1) NOT NULL,
    [AdresaDZ] nvarchar(max)  NOT NULL,
    [BrTelDZ] nvarchar(max)  NOT NULL,
    [BrZap] nvarchar(max)  NOT NULL,
    [DirDZ] nvarchar(max)  NOT NULL,
    [UstanovaAP_ZdravstvenaUstanovaID_ZU] int  NULL,
    [UstanovaAP_AutonomnaPokrajinaID_AP] int  NULL
);
GO

-- Creating table 'Prevoz'
CREATE TABLE [dbo].[Prevoz] (
    [ID_V] int IDENTITY(1,1) NOT NULL,
    [ImeVozaca] nvarchar(max)  NOT NULL,
    [MarkaVoz] nvarchar(max)  NOT NULL,
    [BrMesta] nvarchar(max)  NOT NULL,
    [TipPrevoza] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UstanovaAP'
CREATE TABLE [dbo].[UstanovaAP] (
    [ZdravstvenaUstanovaID_ZU] int  NOT NULL,
    [AutonomnaPokrajinaID_AP] int  NOT NULL
);
GO

-- Creating table 'ZdravstenaZastita'
CREATE TABLE [dbo].[ZdravstenaZastita] (
    [ID_ZZ] int IDENTITY(1,1) NOT NULL,
    [TipZastite] nvarchar(max)  NOT NULL,
    [DrMed] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ZdravstveniRadnik'
CREATE TABLE [dbo].[ZdravstveniRadnik] (
    [ID_ZR] int IDENTITY(1,1) NOT NULL,
    [TipZR] nvarchar(max)  NOT NULL,
    [ImeZR] nvarchar(max)  NOT NULL,
    [PrezimeZR] nvarchar(max)  NOT NULL,
    [GodZR] nvarchar(max)  NOT NULL,
    [OdeljenjeZR] nvarchar(max)  NOT NULL,
    [TelZR] nvarchar(max)  NOT NULL,
    [GodZapos] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Prevoz_SanitetskiPrevoz'
CREATE TABLE [dbo].[Prevoz_SanitetskiPrevoz] (
    [SifraKreveta] nvarchar(max)  NOT NULL,
    [ID_V] int  NOT NULL
);
GO

-- Creating table 'Prevoz_DijalizaPrevoz'
CREATE TABLE [dbo].[Prevoz_DijalizaPrevoz] (
    [SifraKolica] nvarchar(max)  NOT NULL,
    [ID_V] int  NOT NULL
);
GO

-- Creating table 'ZdravstveniRadnik_Doktor'
CREATE TABLE [dbo].[ZdravstveniRadnik_Doktor] (
    [SpecDR] nvarchar(max)  NOT NULL,
    [GodDR] nvarchar(max)  NOT NULL,
    [ID_ZR] int  NOT NULL
);
GO

-- Creating table 'ZdravstveniRadnik_MedicinskaSestra'
CREATE TABLE [dbo].[ZdravstveniRadnik_MedicinskaSestra] (
    [GodMS] nvarchar(max)  NOT NULL,
    [ID_ZR] int  NOT NULL
);
GO

-- Creating table 'Vrsi'
CREATE TABLE [dbo].[Vrsi] (
    [DomZdravlja_ID_DZ] int  NOT NULL,
    [Prevoz_ID_V] int  NOT NULL
);
GO

-- Creating table 'Obezbedjuje'
CREATE TABLE [dbo].[Obezbedjuje] (
    [ZdravstenaZastita_ID_ZZ] int  NOT NULL,
    [DomZdravlja_ID_DZ] int  NOT NULL
);
GO

-- Creating table 'Pruza'
CREATE TABLE [dbo].[Pruza] (
    [ZdravstveniRadnik_ID_ZR] int  NOT NULL,
    [ZdravstenaZastita_ID_ZZ] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID_SZZ] in table 'SistemZdravstveneZastite'
ALTER TABLE [dbo].[SistemZdravstveneZastite]
ADD CONSTRAINT [PK_SistemZdravstveneZastite]
    PRIMARY KEY CLUSTERED ([ID_SZZ] ASC);
GO

-- Creating primary key on [ID_ZU] in table 'ZdravstvenaUstanova'
ALTER TABLE [dbo].[ZdravstvenaUstanova]
ADD CONSTRAINT [PK_ZdravstvenaUstanova]
    PRIMARY KEY CLUSTERED ([ID_ZU] ASC);
GO

-- Creating primary key on [ID_AP] in table 'AutonomnaPokrajina'
ALTER TABLE [dbo].[AutonomnaPokrajina]
ADD CONSTRAINT [PK_AutonomnaPokrajina]
    PRIMARY KEY CLUSTERED ([ID_AP] ASC);
GO

-- Creating primary key on [ID_DZ] in table 'DomZdravlja'
ALTER TABLE [dbo].[DomZdravlja]
ADD CONSTRAINT [PK_DomZdravlja]
    PRIMARY KEY CLUSTERED ([ID_DZ] ASC);
GO

-- Creating primary key on [ID_V] in table 'Prevoz'
ALTER TABLE [dbo].[Prevoz]
ADD CONSTRAINT [PK_Prevoz]
    PRIMARY KEY CLUSTERED ([ID_V] ASC);
GO

-- Creating primary key on [ZdravstvenaUstanovaID_ZU], [AutonomnaPokrajinaID_AP] in table 'UstanovaAP'
ALTER TABLE [dbo].[UstanovaAP]
ADD CONSTRAINT [PK_UstanovaAP]
    PRIMARY KEY CLUSTERED ([ZdravstvenaUstanovaID_ZU], [AutonomnaPokrajinaID_AP] ASC);
GO

-- Creating primary key on [ID_ZZ] in table 'ZdravstenaZastita'
ALTER TABLE [dbo].[ZdravstenaZastita]
ADD CONSTRAINT [PK_ZdravstenaZastita]
    PRIMARY KEY CLUSTERED ([ID_ZZ] ASC);
GO

-- Creating primary key on [ID_ZR] in table 'ZdravstveniRadnik'
ALTER TABLE [dbo].[ZdravstveniRadnik]
ADD CONSTRAINT [PK_ZdravstveniRadnik]
    PRIMARY KEY CLUSTERED ([ID_ZR] ASC);
GO

-- Creating primary key on [ID_V] in table 'Prevoz_SanitetskiPrevoz'
ALTER TABLE [dbo].[Prevoz_SanitetskiPrevoz]
ADD CONSTRAINT [PK_Prevoz_SanitetskiPrevoz]
    PRIMARY KEY CLUSTERED ([ID_V] ASC);
GO

-- Creating primary key on [ID_V] in table 'Prevoz_DijalizaPrevoz'
ALTER TABLE [dbo].[Prevoz_DijalizaPrevoz]
ADD CONSTRAINT [PK_Prevoz_DijalizaPrevoz]
    PRIMARY KEY CLUSTERED ([ID_V] ASC);
GO

-- Creating primary key on [ID_ZR] in table 'ZdravstveniRadnik_Doktor'
ALTER TABLE [dbo].[ZdravstveniRadnik_Doktor]
ADD CONSTRAINT [PK_ZdravstveniRadnik_Doktor]
    PRIMARY KEY CLUSTERED ([ID_ZR] ASC);
GO

-- Creating primary key on [ID_ZR] in table 'ZdravstveniRadnik_MedicinskaSestra'
ALTER TABLE [dbo].[ZdravstveniRadnik_MedicinskaSestra]
ADD CONSTRAINT [PK_ZdravstveniRadnik_MedicinskaSestra]
    PRIMARY KEY CLUSTERED ([ID_ZR] ASC);
GO

-- Creating primary key on [DomZdravlja_ID_DZ], [Prevoz_ID_V] in table 'Vrsi'
ALTER TABLE [dbo].[Vrsi]
ADD CONSTRAINT [PK_Vrsi]
    PRIMARY KEY CLUSTERED ([DomZdravlja_ID_DZ], [Prevoz_ID_V] ASC);
GO

-- Creating primary key on [ZdravstenaZastita_ID_ZZ], [DomZdravlja_ID_DZ] in table 'Obezbedjuje'
ALTER TABLE [dbo].[Obezbedjuje]
ADD CONSTRAINT [PK_Obezbedjuje]
    PRIMARY KEY CLUSTERED ([ZdravstenaZastita_ID_ZZ], [DomZdravlja_ID_DZ] ASC);
GO

-- Creating primary key on [ZdravstveniRadnik_ID_ZR], [ZdravstenaZastita_ID_ZZ] in table 'Pruza'
ALTER TABLE [dbo].[Pruza]
ADD CONSTRAINT [PK_Pruza]
    PRIMARY KEY CLUSTERED ([ZdravstveniRadnik_ID_ZR], [ZdravstenaZastita_ID_ZZ] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SistemZdravstveneZastiteID_SZZ] in table 'ZdravstvenaUstanova'
ALTER TABLE [dbo].[ZdravstvenaUstanova]
ADD CONSTRAINT [FK_Sastoji]
    FOREIGN KEY ([SistemZdravstveneZastiteID_SZZ])
    REFERENCES [dbo].[SistemZdravstveneZastite]
        ([ID_SZZ])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Sastoji'
CREATE INDEX [IX_FK_Sastoji]
ON [dbo].[ZdravstvenaUstanova]
    ([SistemZdravstveneZastiteID_SZZ]);
GO

-- Creating foreign key on [ZdravstvenaUstanovaID_ZU] in table 'UstanovaAP'
ALTER TABLE [dbo].[UstanovaAP]
ADD CONSTRAINT [FK_Osnovana]
    FOREIGN KEY ([ZdravstvenaUstanovaID_ZU])
    REFERENCES [dbo].[ZdravstvenaUstanova]
        ([ID_ZU])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AutonomnaPokrajinaID_AP] in table 'UstanovaAP'
ALTER TABLE [dbo].[UstanovaAP]
ADD CONSTRAINT [FK_Osniva]
    FOREIGN KEY ([AutonomnaPokrajinaID_AP])
    REFERENCES [dbo].[AutonomnaPokrajina]
        ([ID_AP])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Osniva'
CREATE INDEX [IX_FK_Osniva]
ON [dbo].[UstanovaAP]
    ([AutonomnaPokrajinaID_AP]);
GO

-- Creating foreign key on [UstanovaAP_ZdravstvenaUstanovaID_ZU], [UstanovaAP_AutonomnaPokrajinaID_AP] in table 'DomZdravlja'
ALTER TABLE [dbo].[DomZdravlja]
ADD CONSTRAINT [FK_Upravlja]
    FOREIGN KEY ([UstanovaAP_ZdravstvenaUstanovaID_ZU], [UstanovaAP_AutonomnaPokrajinaID_AP])
    REFERENCES [dbo].[UstanovaAP]
        ([ZdravstvenaUstanovaID_ZU], [AutonomnaPokrajinaID_AP])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Upravlja'
CREATE INDEX [IX_FK_Upravlja]
ON [dbo].[DomZdravlja]
    ([UstanovaAP_ZdravstvenaUstanovaID_ZU], [UstanovaAP_AutonomnaPokrajinaID_AP]);
GO

-- Creating foreign key on [DomZdravlja_ID_DZ] in table 'Vrsi'
ALTER TABLE [dbo].[Vrsi]
ADD CONSTRAINT [FK_Vrsi_DomZdravlja]
    FOREIGN KEY ([DomZdravlja_ID_DZ])
    REFERENCES [dbo].[DomZdravlja]
        ([ID_DZ])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Prevoz_ID_V] in table 'Vrsi'
ALTER TABLE [dbo].[Vrsi]
ADD CONSTRAINT [FK_Vrsi_Prevoz]
    FOREIGN KEY ([Prevoz_ID_V])
    REFERENCES [dbo].[Prevoz]
        ([ID_V])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Vrsi_Prevoz'
CREATE INDEX [IX_FK_Vrsi_Prevoz]
ON [dbo].[Vrsi]
    ([Prevoz_ID_V]);
GO

-- Creating foreign key on [ZdravstenaZastita_ID_ZZ] in table 'Obezbedjuje'
ALTER TABLE [dbo].[Obezbedjuje]
ADD CONSTRAINT [FK_Obezbedjuje_ZdravstenaZastita]
    FOREIGN KEY ([ZdravstenaZastita_ID_ZZ])
    REFERENCES [dbo].[ZdravstenaZastita]
        ([ID_ZZ])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DomZdravlja_ID_DZ] in table 'Obezbedjuje'
ALTER TABLE [dbo].[Obezbedjuje]
ADD CONSTRAINT [FK_Obezbedjuje_DomZdravlja]
    FOREIGN KEY ([DomZdravlja_ID_DZ])
    REFERENCES [dbo].[DomZdravlja]
        ([ID_DZ])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Obezbedjuje_DomZdravlja'
CREATE INDEX [IX_FK_Obezbedjuje_DomZdravlja]
ON [dbo].[Obezbedjuje]
    ([DomZdravlja_ID_DZ]);
GO

-- Creating foreign key on [ZdravstveniRadnik_ID_ZR] in table 'Pruza'
ALTER TABLE [dbo].[Pruza]
ADD CONSTRAINT [FK_Pruza_ZdravstveniRadnik]
    FOREIGN KEY ([ZdravstveniRadnik_ID_ZR])
    REFERENCES [dbo].[ZdravstveniRadnik]
        ([ID_ZR])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ZdravstenaZastita_ID_ZZ] in table 'Pruza'
ALTER TABLE [dbo].[Pruza]
ADD CONSTRAINT [FK_Pruza_ZdravstenaZastita]
    FOREIGN KEY ([ZdravstenaZastita_ID_ZZ])
    REFERENCES [dbo].[ZdravstenaZastita]
        ([ID_ZZ])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Pruza_ZdravstenaZastita'
CREATE INDEX [IX_FK_Pruza_ZdravstenaZastita]
ON [dbo].[Pruza]
    ([ZdravstenaZastita_ID_ZZ]);
GO

-- Creating foreign key on [ID_V] in table 'Prevoz_SanitetskiPrevoz'
ALTER TABLE [dbo].[Prevoz_SanitetskiPrevoz]
ADD CONSTRAINT [FK_SanitetskiPrevoz_inherits_Prevoz]
    FOREIGN KEY ([ID_V])
    REFERENCES [dbo].[Prevoz]
        ([ID_V])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_V] in table 'Prevoz_DijalizaPrevoz'
ALTER TABLE [dbo].[Prevoz_DijalizaPrevoz]
ADD CONSTRAINT [FK_DijalizaPrevoz_inherits_Prevoz]
    FOREIGN KEY ([ID_V])
    REFERENCES [dbo].[Prevoz]
        ([ID_V])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_ZR] in table 'ZdravstveniRadnik_Doktor'
ALTER TABLE [dbo].[ZdravstveniRadnik_Doktor]
ADD CONSTRAINT [FK_Doktor_inherits_ZdravstveniRadnik]
    FOREIGN KEY ([ID_ZR])
    REFERENCES [dbo].[ZdravstveniRadnik]
        ([ID_ZR])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_ZR] in table 'ZdravstveniRadnik_MedicinskaSestra'
ALTER TABLE [dbo].[ZdravstveniRadnik_MedicinskaSestra]
ADD CONSTRAINT [FK_MedicinskaSestra_inherits_ZdravstveniRadnik]
    FOREIGN KEY ([ID_ZR])
    REFERENCES [dbo].[ZdravstveniRadnik]
        ([ID_ZR])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------