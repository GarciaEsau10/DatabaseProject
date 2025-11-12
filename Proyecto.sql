--UNIVERSIDAD NACIONAL AUTONOMA DE MÉXICO
--FACULTAD DE ESTUDIOS SUPERIORES CUAUTITLAN
--Nombre: GARCIA CRUZ ESAU RAFAEL
--Materia: BASE DE DATOS AVANZADOS / TECNICAS DE RECUPERACIÓN DE INFORMACIÓN
--Grupo: 1909

-- ============================================================================
-- CREACIÓN DE BASE DE DATOS
-- ============================================================================
CREATE DATABASE AnimeMangaDB;
GO
USE AnimeMangaDB;
GO

-- ============================================================================
-- TABLAS PRINCIPALES
-- ============================================================================

-- =======================
-- TABLA: Estudio
-- =======================
CREATE TABLE Estudio (
    ID_Estudio INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Pais NVARCHAR(50),
    F_Fundacion DATE
);

-- =======================
-- TABLA: Editorial
-- =======================
CREATE TABLE Editorial (
    ID_Editorial INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Pais NVARCHAR(50),
    F_Fundacion DATE
);

-- =======================
-- TABLA: Autor
-- =======================
CREATE TABLE Autor (
    ID_Autor INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Nacionalidad NVARCHAR(50),
    F_Nacimiento DATE
);

-- =======================
-- TABLA: Genero
-- =======================
CREATE TABLE Genero (
    ID_Genero INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(50) NOT NULL
);

-- =======================
-- TABLA: Anime
-- =======================
CREATE TABLE Anime (
    ID_Anime INT IDENTITY(1,1) PRIMARY KEY,
    Titulo NVARCHAR(200) NOT NULL,
    Año_Emision INT,
    Sinopsis NVARCHAR(MAX),
    Portada VARBINARY(MAX),
    ID_Estudio INT NOT NULL,
    CONSTRAINT FK_Anime_Estudio FOREIGN KEY (ID_Estudio) REFERENCES Estudio(ID_Estudio)
);

-- =======================
-- TABLA: Manga
-- =======================
CREATE TABLE Manga (
    ID_Manga INT IDENTITY(1,1) PRIMARY KEY,
    Titulo NVARCHAR(200) NOT NULL,
    Año_Publicacion INT,
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

-- =======================
-- TABLA: AnimeGenero
-- =======================
CREATE TABLE AnimeGenero (
    ID_Anime INT NOT NULL,
    ID_Genero INT NOT NULL,
    PRIMARY KEY (ID_Anime, ID_Genero),
    CONSTRAINT FK_AnimeGenero_Anime FOREIGN KEY (ID_Anime) REFERENCES Anime(ID_Anime),
    CONSTRAINT FK_AnimeGenero_Genero FOREIGN KEY (ID_Genero) REFERENCES Genero(ID_Genero)
);

-- =======================
-- TABLA: MangaGenero
-- =======================
CREATE TABLE MangaGenero (
    ID_Manga INT NOT NULL,
    ID_Genero INT NOT NULL,
    PRIMARY KEY (ID_Manga, ID_Genero),
    CONSTRAINT FK_MangaGenero_Manga FOREIGN KEY (ID_Manga) REFERENCES Manga(ID_Manga),
    CONSTRAINT FK_MangaGenero_Genero FOREIGN KEY (ID_Genero) REFERENCES Genero(ID_Genero)
);

-- =======================
-- TABLA: Adaptacion (Anime ↔ Manga)
-- =======================
CREATE TABLE Adaptacion (
    ID_Adaptacion INT IDENTITY(1,1) PRIMARY KEY,
    ID_Anime INT NOT NULL,
    ID_Manga INT NOT NULL,
    Fecha_Adapt DATE,
    Tipo_Adaptacion NVARCHAR(100),
    CONSTRAINT FK_Adaptacion_Anime FOREIGN KEY (ID_Anime) REFERENCES Anime(ID_Anime),
    CONSTRAINT FK_Adaptacion_Manga FOREIGN KEY (ID_Manga) REFERENCES Manga(ID_Manga)
);

-- ============================================================================
-- TABLAS DE USUARIOS Y LISTAS
-- ============================================================================

-- =======================
-- TABLA: Usuario
-- =======================
CREATE TABLE Usuario (
    ID_User INT IDENTITY(1,1) PRIMARY KEY,
    Username NVARCHAR(50) NOT NULL UNIQUE,
    [Password] NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Rol NVARCHAR(20) DEFAULT 'Usuario',
    F_Registro DATE DEFAULT GETDATE()
);

-- =======================
-- TABLA: ListaUsuario
-- =======================
CREATE TABLE ListaUsuario (
    ID_Lista INT IDENTITY(1,1) PRIMARY KEY,
    ID_User INT NOT NULL,
    Tipo_Contenido NVARCHAR(50) NOT NULL, -- 'Anime' o 'Manga'
    Estado NVARCHAR(50),                  -- 'Viendo', 'Completado', 'Pendiente', etc.
    ID_Contenido INT,                     -- Puede apuntar a Anime o Manga según Tipo_Contenido
    CONSTRAINT FK_ListaUsuario_Usuario FOREIGN KEY (ID_User) REFERENCES Usuario(ID_User)
);

CREATE TABLE Rol (
    ID_Rol INT IDENTITY(1,1) PRIMARY KEY,
    NombreRol NVARCHAR(50) NOT NULL
);

ALTER TABLE Usuario
ADD ID_Rol INT NULL,
    CONSTRAINT FK_Usuario_Rol FOREIGN KEY (ID_Rol) REFERENCES Rol(ID_Rol);
