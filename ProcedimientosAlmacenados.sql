-- ============================================
-- CRUD COMPLETO PARA TABLA: Anime
-- ============================================

-- INSERT
CREATE PROCEDURE SP_InsertAnime
    @Titulo NVARCHAR(200),
    @Año_Emision INT,
    @Episodios INT,
    @Temporadas INT,
    @Sinopsis NVARCHAR(MAX),
    @Portada VARBINARY(MAX),
    @ID_Estudio INT,
    @ID_Tipo INT
AS
BEGIN
    INSERT INTO Anime (Titulo, Año_Emision, Episodios, Temporadas, Sinopsis, Portada, ID_Estudio, ID_Tipo)
    VALUES (@Titulo, @Año_Emision, @Episodios, @Temporadas, @Sinopsis, @Portada, @ID_Estudio, @ID_Tipo);
END;
GO

-- SELECT (Todos)
CREATE PROCEDURE SP_GetAnimes
AS
BEGIN
    SELECT * FROM Anime;
END;
GO

-- UPDATE
CREATE PROCEDURE SP_UpdateAnime
    @ID_Anime INT,
    @Titulo NVARCHAR(200),
    @Año_Emision INT,
    @Episodios INT,
    @Temporadas INT,
    @Sinopsis NVARCHAR(MAX),
    @Portada VARBINARY(MAX),
    @ID_Estudio INT,
    @ID_Tipo INT
AS
BEGIN
    UPDATE Anime
    SET 
        Titulo = @Titulo,
        Año_Emision = @Año_Emision,
        Episodios = @Episodios,
        Temporadas = @Temporadas,
        Sinopsis = @Sinopsis,
        Portada = @Portada,
        ID_Estudio = @ID_Estudio,
        ID_Tipo = @ID_Tipo
    WHERE ID_Anime = @ID_Anime;
END;
GO

-- DELETE
CREATE PROCEDURE SP_DeleteAnime
    @ID_Anime INT
AS
BEGIN
    DELETE FROM Anime WHERE ID_Anime = @ID_Anime;
END;
GO



-- ============================================
-- CRUD COMPLETO PARA TABLA: Manga
-- ============================================

-- INSERT
CREATE PROCEDURE SP_InsertManga
    @Titulo NVARCHAR(200),
    @Año_Publicacion INT,
    @Volumenes INT,
    @Sinopsis NVARCHAR(MAX),
    @Portada VARBINARY(MAX),
    @ID_Autor INT,
    @ID_Editorial INT
AS
BEGIN
    INSERT INTO Manga (Titulo, Año_Publicacion, Volumenes, Sinopsis, Portada, ID_Autor, ID_Editorial)
    VALUES (@Titulo, @Año_Publicacion, @Volumenes, @Sinopsis, @Portada, @ID_Autor, @ID_Editorial);
END;
GO

-- SELECT (Todos)
CREATE PROCEDURE SP_GetMangas
AS
BEGIN
    SELECT * FROM Manga;
END;
GO

-- UPDATE
CREATE PROCEDURE SP_UpdateManga
    @ID_Manga INT,
    @Titulo NVARCHAR(200),
    @Año_Publicacion INT,
    @Volumenes INT,
    @Sinopsis NVARCHAR(MAX),
    @Portada VARBINARY(MAX),
    @ID_Autor INT,
    @ID_Editorial INT
AS
BEGIN
    UPDATE Manga
    SET 
        Titulo = @Titulo,
        Año_Publicacion = @Año_Publicacion,
        Volumenes = @Volumenes,
        Sinopsis = @Sinopsis,
        Portada = @Portada,
        ID_Autor = @ID_Autor,
        ID_Editorial = @ID_Editorial
    WHERE ID_Manga = @ID_Manga;
END;
GO

-- DELETE
CREATE PROCEDURE SP_DeleteManga
    @ID_Manga INT
AS
BEGIN
    DELETE FROM Manga WHERE ID_Manga = @ID_Manga;
END;
GO



-- ============================================
-- CRUD COMPLETO PARA TABLA: Usuario
-- ============================================

-- INSERT
CREATE PROCEDURE SP_InsertUsuario
    @Username NVARCHAR(50),
    @Password NVARCHAR(100),
    @Email NVARCHAR(100),
    @ID_Rol INT
AS
BEGIN
    INSERT INTO Usuario (Username, [Password], Email, ID_Rol)
    VALUES (@Username, @Password, @Email, @ID_Rol);
END;
GO

-- SELECT (Todos)
CREATE PROCEDURE SP_GetUsuarios
AS
BEGIN
    SELECT ID_User, Username, Email, ID_Rol, F_Registro 
    FROM Usuario;
END;
GO

-- UPDATE
CREATE PROCEDURE SP_UpdateUsuario
    @ID_User INT,
    @Username NVARCHAR(50),
    @Password NVARCHAR(100),
    @Email NVARCHAR(100),
    @ID_Rol INT
AS
BEGIN
    UPDATE Usuario
    SET 
        Username = @Username,
        [Password] = @Password,
        Email = @Email,
        ID_Rol = @ID_Rol
    WHERE ID_User = @ID_User;
END;
GO

-- DELETE
CREATE PROCEDURE SP_DeleteUsuario
    @ID_User INT
AS
BEGIN
    DELETE FROM Usuario WHERE ID_User = @ID_User;
END;
GO



-- ============================================
-- PROCEDIMIENTOS ALMACENADOS ADICIONALES (8)
-- ============================================

-- 13) Obtener detalle de Anime por ID (multitabla)
CREATE PROCEDURE SP_GetAnimeByID
    @ID_Anime INT
AS
BEGIN
    SELECT a.*, e.Nombre AS EstudioNombre, e.Pais AS EstudioPais, t.Nombre AS TipoNombre
    FROM Anime a
    LEFT JOIN Estudio e ON a.ID_Estudio = e.ID_Estudio
    LEFT JOIN Tipo t ON a.ID_Tipo = t.ID_Tipo
    WHERE a.ID_Anime = @ID_Anime;
END;
GO

-- 14) Buscar animes por término (titulo o sinopsis) — retorna filas con estudio/tipo
CREATE PROCEDURE SP_SearchAnimes
    @Term NVARCHAR(200)
AS
BEGIN
    SELECT a.ID_Anime, a.Titulo, a.Año_Emision, e.Nombre AS EstudioNombre, t.Nombre AS TipoNombre
    FROM Anime a
    LEFT JOIN Estudio e ON a.ID_Estudio = e.ID_Estudio
    LEFT JOIN Tipo t ON a.ID_Tipo = t.ID_Tipo
    WHERE a.Titulo LIKE '%' + @Term + '%' OR a.Sinopsis LIKE '%' + @Term + '%';
END;
GO

-- 15) Filtrar animes por genero/estudio/año (null = no filtrar)
CREATE PROCEDURE SP_FilterAnimes
    @ID_Genero INT = NULL,
    @ID_Estudio INT = NULL,
    @AñoDesde INT = NULL,
    @AñoHasta INT = NULL
AS
BEGIN
    SELECT DISTINCT a.ID_Anime, a.Titulo, a.Año_Emision, e.Nombre AS EstudioNombre
    FROM Anime a
    LEFT JOIN AnimeGenero ag ON a.ID_Anime = ag.ID_Anime
    LEFT JOIN Estudio e ON a.ID_Estudio = e.ID_Estudio
    WHERE (@ID_Genero IS NULL OR ag.ID_Genero = @ID_Genero)
      AND (@ID_Estudio IS NULL OR a.ID_Estudio = @ID_Estudio)
      AND (@AñoDesde IS NULL OR a.Año_Emision >= @AñoDesde)
      AND (@AñoHasta IS NULL OR a.Año_Emision <= @AñoHasta);
END;
GO

-- 16) Obtener detalle de Manga por ID (multitabla)
CREATE PROCEDURE SP_GetMangaByID
    @ID_Manga INT
AS
BEGIN
    SELECT m.*, au.Nombre AS AutorNombre, ed.Nombre AS EditorialNombre
    FROM Manga m
    LEFT JOIN Autor au ON m.ID_Autor = au.ID_Autor
    LEFT JOIN Editorial ed ON m.ID_Editorial = ed.ID_Editorial
    WHERE m.ID_Manga = @ID_Manga;
END;
GO

-- 17) Buscar mangas por término (titulo o sinopsis)
CREATE PROCEDURE SP_SearchMangas
    @Term NVARCHAR(200)
AS
BEGIN
    SELECT m.ID_Manga, m.Titulo, m.Año_Publicacion, au.Nombre AS AutorNombre, ed.Nombre AS EditorialNombre
    FROM Manga m
    LEFT JOIN Autor au ON m.ID_Autor = au.ID_Autor
    LEFT JOIN Editorial ed ON m.ID_Editorial = ed.ID_Editorial
    WHERE m.Titulo LIKE '%' + @Term + '%' OR m.Sinopsis LIKE '%' + @Term + '%';
END;
GO

-- 18) Filtrar mangas por genero/autor/editorial
CREATE PROCEDURE SP_FilterMangas
    @ID_Genero INT = NULL,
    @ID_Autor INT = NULL,
    @ID_Editorial INT = NULL,
    @AñoDesde INT = NULL,
    @AñoHasta INT = NULL
AS
BEGIN
    SELECT DISTINCT m.ID_Manga, m.Titulo, m.Año_Publicacion, au.Nombre AS AutorNombre
    FROM Manga m
    LEFT JOIN MangaGenero mg ON m.ID_Manga = mg.ID_Manga
    LEFT JOIN Autor au ON m.ID_Autor = au.ID_Autor
    WHERE (@ID_Genero IS NULL OR mg.ID_Genero = @ID_Genero)
      AND (@ID_Autor IS NULL OR m.ID_Autor = @ID_Autor)
      AND (@ID_Editorial IS NULL OR m.ID_Editorial = @ID_Editorial)
      AND (@AñoDesde IS NULL OR m.Año_Publicacion >= @AñoDesde)
      AND (@AñoHasta IS NULL OR m.Año_Publicacion <= @AñoHasta);
END;
GO

-- 19) Registrar una compra simple (Crea Compra y CompraDetalle, actualiza total)
CREATE PROCEDURE SP_AddCompra
    @ID_User INT,
    @ID_Manga INT,
    @Cantidad INT,
    @PrecioUnitario DECIMAL(10,2)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ID_Compra INT;

    INSERT INTO Compra (ID_User, Total) VALUES (@ID_User, 0);
    SET @ID_Compra = SCOPE_IDENTITY();

    INSERT INTO CompraDetalle (ID_Compra, ID_Manga, Cantidad, PrecioUnitario)
    VALUES (@ID_Compra, @ID_Manga, @Cantidad, @PrecioUnitario);

    -- Actualizar total
    UPDATE Compra
    SET Total = (SELECT SUM(Cantidad * PrecioUnitario) FROM CompraDetalle WHERE ID_Compra = @ID_Compra)
    WHERE ID_Compra = @ID_Compra;

    SELECT @ID_Compra AS ID_Compra;
END;
GO

-- 20) Obtener listas del usuario (Anime + Manga) en una sola consulta (union)
CREATE PROCEDURE SP_GetUserLists
    @ID_User INT
AS
BEGIN
    -- Lista de Animes
    SELECT 'Anime' AS Tipo, la.ID_Lista, la.ID_Anime AS ID_Item, a.Titulo, la.Estado, la.Calificacion
    FROM ListaAnime la
    LEFT JOIN Anime a ON la.ID_Anime = a.ID_Anime
    WHERE la.ID_User = @ID_User

    UNION ALL

    SELECT 'Manga' AS Tipo, lm.ID_Lista, lm.ID_Manga AS ID_Item, m.Titulo, lm.Estado, lm.Calificacion
    FROM ListaManga lm
    LEFT JOIN Manga m ON lm.ID_Manga = m.ID_Manga
    WHERE lm.ID_User = @ID_User;
END;
GO