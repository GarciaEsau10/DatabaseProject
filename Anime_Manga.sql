-- ============================================================================
-- UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
-- FACULTAD DE ESTUDIOS SUPERIORES CUAUTITLÁN
-- Nombre: GARCIA CRUZ ESAU RAFAEL
-- Materia: BASE DE DATOS AVANZADOS / TÉCNICAS DE RECUPERACIÓN DE INFORMACIÓN
-- Grupo: 1909
-- ============================================================================
-- CREACIÓN DE BASE DE DATOS
-- ============================================================================
Drop Database AnimeMangaDB;

CREATE DATABASE AnimeMangaDB;
GO

USE AnimeMangaDB;
GO

-- ============================================================================
-- TABLAS PRINCIPALES
-- ============================================================================

-- TABLA: Estudio
CREATE TABLE Estudio (
    ID_Estudio INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Pais NVARCHAR(50),
    F_Fundacion DATE
);

-- TABLA: Editorial
CREATE TABLE Editorial (
    ID_Editorial INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Pais NVARCHAR(50),
    F_Fundacion DATE
);

-- TABLA: Autor
CREATE TABLE Autor (
    ID_Autor INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Nacionalidad NVARCHAR(50),
    F_Nacimiento DATE
);

-- TABLA: Genero
CREATE TABLE Genero (
    ID_Genero INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL UNIQUE
);

-- TABLA: Tipo (TV, OVA, Película, Manga, One-shot, etc.)
CREATE TABLE Tipo (
    ID_Tipo INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL UNIQUE
);

-- ============================================================================
-- TABLAS DE ANIME Y MANGA
-- ============================================================================

-- TABLA: Anime
CREATE TABLE Anime (
    ID_Anime INT IDENTITY(1,1) PRIMARY KEY,
    Titulo NVARCHAR(200) NOT NULL,
    Año_Emision INT,
    Episodios INT,
    Temporadas INT,
    Sinopsis NVARCHAR(MAX),
    Portada VARBINARY(MAX),
    ID_Estudio INT NOT NULL,
    ID_Tipo INT NOT NULL,
    CONSTRAINT FK_Anime_Estudio FOREIGN KEY (ID_Estudio) REFERENCES Estudio(ID_Estudio),
    CONSTRAINT FK_Anime_Tipo FOREIGN KEY (ID_Tipo) REFERENCES Tipo(ID_Tipo)
);

-- TABLA: Manga
CREATE TABLE Manga (
    ID_Manga INT IDENTITY(1,1) PRIMARY KEY,
    Titulo NVARCHAR(200) NOT NULL,
    Año_Publicacion INT,
    Volumenes INT,
    Sinopsis NVARCHAR(MAX),
    Portada VARBINARY(MAX),
    ID_Autor INT NOT NULL,
    ID_Editorial INT NOT NULL,
    CONSTRAINT FK_Manga_Autor FOREIGN KEY (ID_Autor) REFERENCES Autor(ID_Autor),
    CONSTRAINT FK_Manga_Editorial FOREIGN KEY (ID_Editorial) REFERENCES Editorial(ID_Editorial)
);

-- ============================================================================
-- TABLAS INTERMEDIAS (RELACIONES N:M)
-- ============================================================================

-- TABLA: AnimeGenero
CREATE TABLE AnimeGenero (
    ID_Anime INT NOT NULL,
    ID_Genero INT NOT NULL,
    PRIMARY KEY (ID_Anime, ID_Genero),
    FOREIGN KEY (ID_Anime) REFERENCES Anime(ID_Anime) ON DELETE CASCADE,
    FOREIGN KEY (ID_Genero) REFERENCES Genero(ID_Genero)
);

-- TABLA: MangaGenero
CREATE TABLE MangaGenero (
    ID_Manga INT NOT NULL,
    ID_Genero INT NOT NULL,
    PRIMARY KEY (ID_Manga, ID_Genero),
    FOREIGN KEY (ID_Manga) REFERENCES Manga(ID_Manga) ON DELETE CASCADE,
    FOREIGN KEY (ID_Genero) REFERENCES Genero(ID_Genero)
);

-- ============================================================================
-- TABLAS DE USUARIOS Y LISTAS
-- ============================================================================

-- TABLA: Rol
CREATE TABLE Rol (
    ID_Rol INT IDENTITY(1,1) PRIMARY KEY,
    NombreRol NVARCHAR(50) NOT NULL UNIQUE
);

-- TABLA: Usuario
CREATE TABLE Usuario (
    ID_User INT IDENTITY(1,1) PRIMARY KEY,
    Username NVARCHAR(50) NOT NULL UNIQUE,
    [Password] NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    ID_Rol INT NOT NULL,
    F_Registro DATE DEFAULT GETDATE(),
    CONSTRAINT FK_Usuario_Rol FOREIGN KEY (ID_Rol) REFERENCES Rol(ID_Rol)
);

-- TABLA: ListaAnime
CREATE TABLE ListaAnime (
    ID_Lista INT IDENTITY(1,1) PRIMARY KEY,
    ID_User INT NOT NULL,
    ID_Anime INT NOT NULL,
    Estado NVARCHAR(50) NULL CHECK (Estado IN ('Viendo','Pendiente','Completado')),
    Calificacion INT NULL CHECK (Calificacion BETWEEN 1 AND 10),
    CONSTRAINT FK_ListaAnime_Usuario 
        FOREIGN KEY (ID_User) REFERENCES Usuario(ID_User),
    CONSTRAINT FK_ListaAnime_Anime 
        FOREIGN KEY (ID_Anime) REFERENCES Anime(ID_Anime)
);
GO

-- TABLA: ListaManga
CREATE TABLE ListaManga (
    ID_Lista INT IDENTITY(1,1) PRIMARY KEY,
    ID_User INT NOT NULL,
    ID_Manga INT NOT NULL,
    Estado NVARCHAR(50) NULL CHECK (Estado IN ('Viendo','Pendiente','Completado')),
    Calificacion INT NULL CHECK (Calificacion BETWEEN 1 AND 10),
    CONSTRAINT FK_ListaManga_Usuario 
        FOREIGN KEY (ID_User) REFERENCES Usuario(ID_User),
    CONSTRAINT FK_ListaManga_Manga 
        FOREIGN KEY (ID_Manga) REFERENCES Manga(ID_Manga)
);
GO

-- ============================================================================
-- INSERTAR ROLES POR DEFECTO
-- ============================================================================

INSERT INTO Rol (NombreRol) VALUES ('Administrador'), ('Usuario');
GO


------------------------
--Población de  Tablas--
------------------------
INSERT INTO Genero (Nombre) VALUES
('Acción'),
('Aventura'),
('Comedia'),
('Drama'),
('Fantasía'),
('Romance'),
('Ciencia Ficción'),
('Terror'),
('Psicológico'),
('Misterio'),
('Deportes'),
('Recuentos de la Vida'),
('Sobrenatural'),
('Musical'),
('Militar'),
('Histórico'),
('Horror'),
('Shounen'),
('Shoujo'),
('Seinen'),
('Josei'),
('Isekai'),
('Magia'),
('Mecha'),
('Thriller'),
('Policiaco'),
('Escolar'),
('Ecchi'),
('Yaoi'),
('Yuri');
GO

Select * from Genero


INSERT INTO Estudio (Nombre, Pais, F_Fundacion) VALUES
('Lerche', 'Japan', '2011-01-01'),            
('Toei Animation', 'Japan', '1956-01-01'),    
('Tsuchida Production', 'Japan', '1976-01-01'),
('Sunrise', 'Japan', '1972-01-01'),           
('Gainax', 'Japan', '1984-12-24'),            
('P.A. Works', 'Japan', '2000-11-10'),        
('Cloud Hearts', 'Japan', '2021-06-01'),      
('Tezuka Productions', 'Japan', '1968-01-23'),
('Kinema Citrus', 'Japan', '2008-03-03'),  
('J.C.Staff', 'Japan', '1986-01-01'),         
('CoMix Wave Films', 'Japan', '2007-03-01'), 
('asread', 'Japan', '2003-11-01'), 
('A-1 Pictures', 'Japan', '2005-05-09'),
('CloverWorks', 'Japan', '2018-10-01')
GO

Select * from Estudio


INSERT INTO Editorial (Nombre, Pais, F_Fundacion) VALUES
('Shueisha', 'Japón', '1925-08-08'),
('Shogakukan', 'Japón', '1922-08-08'),
('Kadokawa Shoten', 'Japón', '1945-11-10'),
('Kodansha', 'Japón', '1909-01-01'),
('Hakusensha', 'Japón', '1973-12-01'),
('Square Enix', 'Japón', '1975-09-22'),
('Akita Shoten', 'Japón', '1948-07-14');
GO

Select * from Editorial


INSERT INTO Tipo (Nombre) VALUES
('Serie'),
('Película');
GO

Select * from Tipo


INSERT INTO Autor (Nombre, Nacionalidad, F_Nacimiento) VALUES
('Yūsei Matsui', 'Japonesa', '1980-01-01'),                -- Ansatsu Kyoushitsu
('Aka Akasaka', 'Japonesa', '1988-07-23'),                 -- Kaguya-sama
('Eku Takeshima', 'Japonesa', '1990-05-15'),               -- Sasayaku You ni Koi wo Utau
('Sakae Esuno', 'Japonesa', '1981-01-22'),                -- Mirai Nikki
('Yōichi Takahashi', 'Japonesa', '1960-09-28'),           -- Captain Tsubasa
('Hajime Isayama', 'Japonesa', '1986-08-29'),             -- Attack on Titan
('Naoya Matsumoto', 'Japonesa', '1980-01-01'),            -- Kaiju No. 8
('Gege Akutami', 'Japonesa', '1992-02-26'),               -- Jujutsu Kaisen
('Koyoharu Gotouge', 'Japonesa', '1989-05-05'),           -- Kimetsu no Yaiba
('Eiichiro Oda', 'Japonesa', '1975-01-01'),               -- One Piece
('Tatsuki Fujimoto', 'Japonesa', '1990-10-04'),           -- Chainsaw Man
('Naoko Takeuchi', 'Japonesa', '1967-03-15'),             -- Sailor Moon
('Kanehito Yamada', 'Japonesa', '1980-06-12'),            -- Frieren
('Tappei Nagatsuki', 'Japonesa', '1987-12-18'),           -- Re:Zero
('Gōshō Aoyama', 'Japonesa', '1963-06-21'),
('Hiro Fujiwara', 'Japonesa', NULL);
GO

Select * from Autor
