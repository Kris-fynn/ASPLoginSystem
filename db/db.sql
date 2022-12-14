USE [master]
GO

/****** Object:  Database [ASPLogin]    Script Date: 11/11/2022 5:39:26 PM ******/
CREATE DATABASE [ASPLogin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASPLogin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ASPLogin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASPLogin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ASPLogin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASPLogin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ASPLogin] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ASPLogin] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ASPLogin] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ASPLogin] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ASPLogin] SET ARITHABORT OFF 
GO

ALTER DATABASE [ASPLogin] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ASPLogin] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ASPLogin] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ASPLogin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ASPLogin] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ASPLogin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ASPLogin] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ASPLogin] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ASPLogin] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ASPLogin] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ASPLogin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ASPLogin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ASPLogin] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ASPLogin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ASPLogin] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ASPLogin] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ASPLogin] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ASPLogin] SET RECOVERY FULL 
GO

ALTER DATABASE [ASPLogin] SET  MULTI_USER 
GO

ALTER DATABASE [ASPLogin] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ASPLogin] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ASPLogin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ASPLogin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ASPLogin] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ASPLogin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [ASPLogin] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ASPLogin] SET  READ_WRITE 
GO

