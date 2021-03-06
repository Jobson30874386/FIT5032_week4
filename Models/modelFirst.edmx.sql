
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/27/2020 03:18:55
-- Generated from EDMX file: C:\Users\ps.DESKTOP-B1U1906\source\repos\week4\Models\modelFirst.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [week4Database1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'studentSet'
CREATE TABLE [dbo].[studentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'unitSet'
CREATE TABLE [dbo].[unitSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UnitName] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [studentId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'studentSet'
ALTER TABLE [dbo].[studentSet]
ADD CONSTRAINT [PK_studentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'unitSet'
ALTER TABLE [dbo].[unitSet]
ADD CONSTRAINT [PK_unitSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [studentId] in table 'unitSet'
ALTER TABLE [dbo].[unitSet]
ADD CONSTRAINT [FK_studentunit]
    FOREIGN KEY ([studentId])
    REFERENCES [dbo].[studentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_studentunit'
CREATE INDEX [IX_FK_studentunit]
ON [dbo].[unitSet]
    ([studentId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------