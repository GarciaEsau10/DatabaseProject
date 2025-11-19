-- ============================================
-- VISTAS MULTITABLA ÚTILES
-- ============================================

-- Vista: detalles de Anime con Estudio y Tipo
CREATE VIEW View_AnimeDetails AS
SELECT a.ID_Anime, a.Titulo, a.Año_Emision, a.Episodios, a.Temporadas, a.Sinopsis, a.Portada,
       e.ID_Estudio, e.Nombre AS EstudioNombre, e.Pais AS EstudioPais,
       t.ID_Tipo, t.Nombre AS TipoNombre
FROM Anime a
LEFT JOIN Estudio e ON a.ID_Estudio = e.ID_Estudio
LEFT JOIN Tipo t ON a.ID_Tipo = t.ID_Tipo;
GO

-- Vista: Anime con Generos (una fila por genero — útil para filtros)
CREATE VIEW View_AnimeGenero AS
SELECT a.ID_Anime, a.Titulo, g.ID_Genero, g.Nombre AS GeneroNombre
FROM Anime a
LEFT JOIN AnimeGenero ag ON a.ID_Anime = ag.ID_Anime
LEFT JOIN Genero g ON ag.ID_Genero = g.ID_Genero;
GO

-- Vista: detalles de Manga con Autor y Editorial
CREATE VIEW View_MangaDetails AS
SELECT m.ID_Manga, m.Titulo, m.Año_Publicacion, m.Volumenes, m.Sinopsis, m.Portada,
       au.ID_Autor, au.Nombre AS AutorNombre,
       ed.ID_Editorial, ed.Nombre AS EditorialNombre
FROM Manga m
LEFT JOIN Autor au ON m.ID_Autor = au.ID_Autor
LEFT JOIN Editorial ed ON m.ID_Editorial = ed.ID_Editorial;
GO

-- Vista: Manga con Generos
CREATE VIEW View_MangaGenero AS
SELECT m.ID_Manga, m.Titulo, g.ID_Genero, g.Nombre AS GeneroNombre
FROM Manga m
LEFT JOIN MangaGenero mg ON m.ID_Manga = mg.ID_Manga
LEFT JOIN Genero g ON mg.ID_Genero = g.ID_Genero;
GO