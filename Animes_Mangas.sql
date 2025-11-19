INSERT INTO Anime (Titulo, Año_Emision, Episodios, Temporadas, Sinopsis, Portada, ID_Estudio, ID_Tipo) VALUES
-- 1
('Ansatsu Kyoushitsu', 2015, 47, 2, 
'Los estudiantes de la clase 3-E tienen una misión: asesinar a su profesor antes de la graduación. Él ya ha destruido la luna, y prometió destruir la Tierra si no es asesinado dentro de un año. Pero, ¿cómo podrá esta clase de inadaptados asesinar a un pulpo extraterrestre, capaz de alcanzar la velocidad Mach 20, y que quizás ha sido el mejor profesor que han tenido?.', 
(SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\AClass.jpg', SINGLE_BLOB) AS ImagenBlob), 2, 1),

-- 2
('Sailor Moon', 1992, 200, 5,
 'Serena Tsukino es una chica común, tiene 14 anos y asiste a segundo de secundaria. Siempre llega tarde a clase, olvida los deberes, duerme mucho y come demasiado; pero su vida cambia cuando una gata negra muy peculiar se presenta ante ella para desvelarle su misión: ella es una guerrera de la Luna, Sailor Moon, destinada a luchar por el amor y la justicia. Y no es la única, pronto aparecerían otras chicas, Sailor Scouts, con quienes entablara una amistad de toda la vida. Al lado de ellas y de Tuxedo Mask (su salvador emergente) deberán vencer a la Reina Beril del Negaverso y descubrir importantes señales de un pasado milenario.', 
(SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\SailorMoon.jpg', SINGLE_BLOB) AS ImagenBlob), 11, 1),

-- 3
('Dragon Ball Super', 2015, 131, 1,
 'Despues de la muerte de Majin Boo, pasaron 10 años en los que la Tierra permanecio en paz, hasta que, una nueva amenaza se presenta, perturbando la paz de Goku y sus amigos.', 
  (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\DBSuper.jpg', SINGLE_BLOB) AS ImagenBlob), 11, 1),

-- 4
('Captain Tsubasa (2018)', 2018, 91, 2,   
 'Nueva versión del clásico anime de fútbol que sigue las hazañas de Tsubasa Ozora en su camino a convertirse en jugador profesional.', 
(SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\SuperCampeones.jpg', SINGLE_BLOB) AS ImagenBlob), 11, 1),

-- 5
('Cowboy Bebop', 1998, 26, 1,
 'Un grupo muy peculiar de caza-recompensas que viaja a través del sistema solar en la nave Bebop. Balas, emoción y diversión se encuentran en cada una de sus sesiones autoconclusivas, las cuales los llevarán a enfrentar a un gran adversario y viejo amigo de Spike.', 
  (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\CowboyBebop.jpg', SINGLE_BLOB) AS ImagenBlob), 13, 1),

-- 6
('Neon Genesis Evangelion', 1995, 26, 1,
 'Según cuentan los libros de historia, el 13 de Septiembre del 2000, un enorme meteorito chocó contra la Antártida, causando el derretimiento del Polo Sur y la consecuente inundación y destrucción de todas las ciudades costeras. A este evento crucial se lo denomino Segundo Impacto -El primero fue el que destruyó a los dinosaurios-. La Tierra atravesó luego de ello un estado de crisis y catástrofes naturales y más de mitad de la población humana murió. Han pasado 15 años desde el Segundo Impacto cuando Tokyo-3, es atacada por un misterioso ser orgánico gigante, sin embargo esto no parece ser una sorpresa para un selecto grupo de gente de una organización de la ONU llamada NERV. Ellos se refieren al enemigo como "Tercer Ángel" y han desarrollado unos enigmáticos robots gigantes llamados EVA con una particularidad, solo pueden ser piloteados por jóvenes de 14 años con caracteristicas no del todo claras.', 
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\Evangelion.jpg', SINGLE_BLOB) AS ImagenBlob), 14, 1),

-- 7
('Angel Beats!', 2010, 13, 1,
 'Existe un mundo después de la muerte, en donde las almas de las personas cuya vida fue injusta, tienen una segunda oportunidad de alcanzar la paz, y así volver a nacer. Pero la verdad es que nadie sabe muy bien como funciona este lugar donde no existen las enfermedades y no se puede morir (al menos de la forma que nosotros entendemos como muerte). Debido a la confusión se crean 2 bandos en conflicto: el Shinda Sekai Sensen (SSS), que lucha contra las intenciones de Dios por la vida injusta que les designó; y el bando formado por Tenshi (Ángel), cuyo único interés es que las demás personas se realicen y puedan renacer. En este mundo aparece nuestro protagonista, Otonashi, quien sin recuerdos de su vida anterior, se embarca en una aventura donde forja amistades profundas. Poco a poco recobra su memoria y ayuda a resolver los dilemas de las personas en este mundo.', 
  (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\AngelBeats.jpg', SINGLE_BLOB) AS ImagenBlob), 5, 1),

-- 8
('Sasayaku You ni Koi wo Utau', 2024, 12, 1,
 'Yori Asanagi es una chica madura en muchos aspectos, pero sigue siendo pura cuando se trata de romances. Este sentimiento queda demostrado cuando una estudiante de primer año, Himari Kino, le confiesa de repente su amor después de la actuación de su banda en la ceremonia de inauguración. Confundida y sorprendida, Yori pide consulta a sus amigas, pero se burlan de ella diciéndole que está experimentando el amor. Yori pronto se decide e intenta corresponder a los sentimientos de Himari, pero en un giro de los acontecimientos, se da cuenta de que lo que Himari amaba no era ella, ¡sino su música!', 
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\Sasakoi.jpg', SINGLE_BLOB) AS ImagenBlob), 7, 1),

-- 9
('Adachi to Shimamura', 2020, 12, 1,
 'Adachi y Shimamura, dos chicas que asisten a la misma preparatoria y que son amigas inseparables. Ya sea jugando tenis, platicar sobre sus programas de televisión favoritos, o solo relajándose, siempre están juntas. Cuando Adachi se da cuenta de que siente una atracción física por Shimamura, toda su relación comenzará a cambiar, ¿será para bien o para mal?', 
  (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\AdaShima.jpg', SINGLE_BLOB) AS ImagenBlob), 7, 1),

-- 10
('Tate no Yuusha no Nariagari', 2019, 62, 4,
 'Iwatani Naofumi es el típico otaku, al menos hasta que un día encuentra en la biblioteca un libro que lo transporta a otro mundo. Allí se convertirá en el Héroe del Escudo, uno de los Cuatro Héroes Cardinales, y tendrá que luchar contra las Olas de la Catástrofe junto a los héroes de la espada, la lanza y el arco. Emocionado ante la perspectiva de vivir una gran aventura, Naofumi parte de viaje con su grupo. No obstante, al cabo de unos pocos días lo traicionan y pierde su dinero, su dignidad y el respeto de los que le rodean.', 
  (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\TateNoYuusha.jpg', SINGLE_BLOB) AS ImagenBlob), 6, 1),

-- 11
('Toradora!', 2008, 25, 1,
 'Dos estudiantes que se ayudan mutuamente a conquistar a sus respectivos amores, pero terminan enamorándose en el proceso.', 
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\Toradora.jpg', SINGLE_BLOB) AS ImagenBlob), 4, 1),

-- 12
('Kimi no Na wa', 2016, 1, 1,
 'La “historia de milagros y amor” gira en torno a Mitsuha y Taki. Mitsuha es una estudiante de secundaria que vive en un pueblo rural situado en las montañas. Su padre es el alcalde y no pasa mucho por casa, ella vive con su hermana pequeña estudiante de primaria y su abuela. Mitsuha tiene una personalidad honesta, pero a ella no le gustan las costumbres del santuario sintoísta de su familia, ni ella ni su padre participan en una campaña electoral. Ella se lamenta de que vive confinada en un pueblo rural y anhela el maravilloso estilo de vida de Tokio. Taki es un estudiante de secundaria que vive en el centro de Tokio. Él pasa su tiempo junto a sus amigos, trabajando a tiempo parcial en un restaurante italiano y está interesado en la arquitectura y las bellas artes. Un día, Mitsuha tiene un sueño en el que ella tiene el cuerpo de un hombre joven. Taki también tiene un sueño parecido y en el que él es una estudiante de secundaria en un pueblo en las montañas en él que nunca ha estado. ¿Cuál es el secreto de sus sueños?', 
  (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\YourName.jpg', SINGLE_BLOB) AS ImagenBlob), 12, 2),

-- 13
('Gekijōban Purojekuto Sekai Kowareta Sekai to Utaenai Miku', 2024, 1, 1,
 'Película basada en el juego para celulares Project SEKAI, aqui aparece una Miku que desea ser escuchada por las personas que necesitan apoyo emocional, algo que no consigue. Por lo que, con ayuda de los 5 grupos musicales, haran lo que sea para que esta Miku sea escuchada por las personas.', 
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\Proseka.jpeg', SINGLE_BLOB) AS ImagenBlob), 1, 2),

-- 14
('Mirai Nikki', 2011, 27, 1,
 'Amano Yukiteru, un estudiante de 2º año de secundaria, es un chico solitario e introvertido que gasta todo su tiempo escribiendo un diario en su celular desde el punto de vista de un espectador. Su único amigo es un producto de su imaginacion, Deus Ex Machina, el Dios del Tiempo y el Espacio. Un día, este dios le da al diario de Yukiteru la habilidad de ver lo que sucedera en los siguientes 90 días en el futuro y enrola a Yukiteru en un torneo mortal donde debera luchar por su vida contra los poseedores de otros diarios similares.', 
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\MiraiNikki.jpg', SINGLE_BLOB) AS ImagenBlob), 13, 1),

-- 15
('Gyakuten Saiban: Sono "Shinjitsu", Igiari!', 2016, 47, 2, 
 'Basado en los primeros tres juegos de la saga Ace Attorney, sigue a Phoenix Wright, un abogado novato que defiende a sus clientes en juicios llenos de giros y misterios.', 
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\AceAttorney.jpg', SINGLE_BLOB) AS ImagenBlob), 7, 1),

-- 16
('Seishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai', 2018, 26, 2,
 'Síndrome de la pubertad: ciertas experiencias poco corrientes que se rumorea en Internet que son la causa del exceso de sensibilidad e inestabilidad durante la adolescencia. Este año, Sakuta Azusagawa, estudiante de segundo en una preparatoria cercana a Enoshima, conocerá a varias chicas que están pasando por ese "síndrome de la pubertad". Por ejemplo, en la biblioteca conoce a una salvaje chica conejito que resulta ser Mai Sakurajima, una chica mayor de su preparatoria que es una actriz que está tomándose un descanso. ¿El problema? Que nadie parece poder ver a esa chica tan encantadora, ¿cómo es posible? Mientras Sakuta busca respuestas para ayudar a Mai comienzan a forjar un vínculo y terminará descubriendo los sentimientos que la chica oculta en su corazón... Una historia que se sale de lo habitual y que se desarrolla en una ciudad con un luminoso cielo y un brillante océano donde Sakuta conocerá a varias chicas de lo más misteriosas e intrigantes.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\SeishunButa.jpg', SINGLE_BLOB) AS ImagenBlob), 7, 1),

-- 17
('Magic Kaito 1412', 2014, 24, 1, 
 'Kaito Kuroba, un estudiante adolescente normal cuyo padre está a menudo ausente. Cuando su padre muere bajo circunstancias desconocidas, él descubre la identidad secreta de este; un famoso criminal internacional conocido como Criminal Internacional 1412: el Ladrón Fantasma, y que fue asesinado por una misteriosa organización al rechazar ayudarlos en la obtención de la “Gema Pandora”; una piedra mística que se dice que derrama una “lágrima” durante el paso de un cometa en particular (a menudo llamado “Cometa Volea”), y el consumo de ellas otorga la inmortalidad. Él jura prevenir que la organización obtenga la inmortalidad, asumiendo la identidad de su padre y así comienza su búsqueda de la gema. Sus únicas pistas al respecto de la ubicación de esta son: que emite un brillo de color rojo bajo la luna llena y que es doble; una gema escondida dentro de otra más grande. El protagonista investiga y roba famosas y preciosas gemas con raros orígenes de lugares con defensas increíblemente preparadas, y siempre las devuelve luego de la luna llena más cercana.',
  (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\KaitoKid.jpg', SINGLE_BLOB) AS ImagenBlob), 7, 1),

-- 18
('Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen', 2019, 37, 3, 
 '¡Todo vale en el amor y en la guerra! Dos genios. Dos cerebros. Dos corazones. Una batalla. ¡¿Quién declarará primero su amor?! Kaguya Shinomiya y Miyuki Shirogane son dos prodigios de gran inteligencia y quienes controlan el consejo de estudiantes de su prestigiosa academia, lo que las convierte en la crème de la crème de la élite. Pero claro, estar en la cima es algo que incluye una buena dosis de soledad como extra, y ambos acaban enamorándose el uno del otro. ¿El problema? Que ambos son demasiado orgullosos como para admitir que están enamorados, así que el primero que lo admita, ¡será el perdedor! Comienza su batalla diaria para intentar forzar al otro a declararse primero.',
  (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\KaguyaSama.jpg', SINGLE_BLOB) AS ImagenBlob), 7, 1);

SELECT * FROM Anime
ORDER BY ID_Anime ASC;


INSERT INTO Manga (Titulo, Año_Publicacion, Volumenes, Sinopsis, Portada, ID_Autor, ID_Editorial) VALUES
--1
('Ansatsu Kyoushitsu', 2012, 21,
 'Trata sobre un maestro al que bautizan como Korosensei (imposible de matar) que destruye parcialmente la Luna dejando una permanente Luna creciente y amenaza con destruir la Tierra en el plazo de un año, a menos que algún alumno de la clase 3-E de la secundaria Kunugigaoka, a los que él imparte clase, lo asesine antes de la graduación. Para motivar a la clase a acabar con Koro-sensei, el gobierno promete dar como recompensa 10 billones de yenes a quien lo consiga.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\AClassM.webp', SINGLE_BLOB) AS ImagenBlob), 1, 1),

--2
('Kaguya-sama: Love is War', 2015, 28,
 'Dos genios, dos cerebros, dos corazones y una batalla. Kaguya Shinomiya y Miyuki Shirogane son los genios que lideran el consejo estudiantil de su prestigiosa academia e inevitablemente se enamoraron el uno del otro, pero son demasiados orgullosos para ser el primero en confesarse, ¿Quién se confesará primero?',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\KaguyaSamaM.webp', SINGLE_BLOB) AS ImagenBlob), 2, 1),


 --3
('Sasayaku You ni Koi wo Utau', 2019, 8,
 '"Whispering you a love song" es la historia de un amor a primera vista que inicia en la temporada de los cerezos en flor. Himari, una nueva estudiante de la preparatoria, queda fascinada por Yori-senpai, la vocalista de la banda de chicas que se presenta en la ceremonia de inauguración del año escolar.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\SasakoiM.webp', SINGLE_BLOB) AS ImagenBlob), 3, 3),

 --4
('Mirai Nikki', 2006, 12,
 'Yukiteru Amano es un chico solitario que gasta todo su tiempo escribiendo un diario en su celular, desde el punto de vista de un espectador, y hablando con su "amigo imaginario" Deus ex Machina; Dios del tiempo y espacio. Un día, Deus resulta no ser sólo un amigo imaginario sino realmente un Dios que, además de Yukiteru, 11 personas más también podían ver y escuchar; este ser divino crea un juego de supervivencia, en el cual le ha dado un diario predictivo del futuro a cada uno de los participantes elegidos. Las reglas del juego son simples, los 12 dueños de diarios deben matarse entre ellos y el último que sobreviva se convertirá en el nuevo sucesor al trono de Dios, ya que Deus está muriendo. Así, Yukiteru es presentado -sin revelar identidades- mediante Deus a los demás como un usuario más del diario del futuro, y como el último participante en entrar al juego',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\MiraiNikkiM.webp', SINGLE_BLOB) AS ImagenBlob), 4, 4),

 --5
('Captain Tsubasa', 1981, 37,
 'Tsubasa Oozora (Oliver Atom en latinoamérica) es un niño que ama el fútbol y que además tiene muchas habilidades natas para practicar este deporte. Quizás tenga un futuro prometedor, pero para ello tiene un largo camino por recorrer. Primero debe integrarse al equipo de su escuela, después vencer a todos sus rivales para competir en la liga nacional infantil, después ir creciendo de la mano de su entrenador, el brasileño Roberto Hongo, y algún día, ver realizado su sueño, representar a la selección de su país en el mundial de futbol, ganar el campeonato. Goles, tiros espectaculares, técnicas increibles, golizas, aprendizas, tiempos extras, campeonatos, lesiones, presiones, enemigos, compañeros y muchas barreras de la vida, todo esto y mucho más te espera en Captain Tsubasa, una serie extensa y llena de historia.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\SuperCampeonesM.webp', SINGLE_BLOB) AS ImagenBlob), 5, 4),

 --6
('Attack on Titan', 2009, 34,
 'En un mundo devastado por gigantes devoradores de humanos, la humanidad se ha refugiado tras enormes murallas para sobrevivir. Eren Yeager, junto con su hermana adoptiva Mikasa y su amigo Armin, se une a la Legión de Exploradores tras la tragedia que destruye su ciudad y cobra la vida de su madre. A lo largo de su lucha por entender el origen de los titanes y detenerlos, descubren secretos oscuros que desafían todo lo que sabían.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\AoT.webp', SINGLE_BLOB) AS ImagenBlob), 6, 4),

 --7
('Oshi no Ko', 2020, 16,
 'Ai Hoshino, idol de 16 años, deslumbra con su talento y belleza, pero oculta un perturbador secreto: está embarazada. En un hospital rural, el doctor Gorou Honda —ferviente admirador— promete asistirla con seguridad, hasta que un suceso siniestro lo conduce al borde de la muerte. Al despertar, descubre que ha renacido como Aquamarine Hoshino, el hijo recién nacido de Ai, y junto a él, su hermana menor, Ruby, también reencarnada. Ahora, Aqua y Ruby deberán adaptarse a este nuevo mundo donde el brillante espectáculo de su madre esconde sombras profundas, y proteger su sonrisa a toda costa.',
(SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\OshiNoKo.webp', SINGLE_BLOB) AS ImagenBlob), 2, 1),

--8
('Kaiju No. 8', 2020, 12,
 '¡Un hombre, descontento con el trabajo que ha tenido que hacer en la vida, se ve envuelto en un acontecimiento inesperado...! ¡Se convierte en un Kaiju, una criatura monstruosa, dándole así una nueva oportunidad de lograr lo que siempre soñó!',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\Kaiju.webp', SINGLE_BLOB) AS ImagenBlob), 7, 1),

 --9
('Jujutsu Kaisen', 2018, 26,
 'Yuuji Itadori, un joven con una fuerza física excepcional, se ve arrastrado a un mundo de maldiciones cuando, para salvar a sus amigos, consume el dedo de Sukuna, el Rey de las Maldiciones. Ahora poseído por una de las entidades más poderosas y destructivas, Yuuji se une a la escuela de Jujutsu, donde entrenará para controlar su nuevo poder y luchar contra las maldiciones que amenazan a la humanidad.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\Jujutsu.webp', SINGLE_BLOB) AS ImagenBlob), 8, 1),

 --10
('Meitantei Konan?', 1994, 105,
 'La historia habla sobre Shinichi Kudo, un joven detective de 17 años muy reconocido, que tiene asombrada a la policía ya que resuelve los casos que se le presentan con suma brillantez y siempre esclareciendo los hechos correctamente. Un día, Shinichi lleva a Ran Mouri a un parque de diversiones. Tras un fatal incidente que involucra una pareja y un asesinato en la montaña rusa (esclarecido posteriormente), Shinichi presencia una transacción sospechosa; en eso, dos hombres de negro lo ven, lo golpean y le hacen tragar una píldora, la APTX4869,una droga que, supuestamente, lo mataría y no dejaría rastro en la autopsia; pero sólo le hace encoger su cuerpo hasta la edad aproximada de siete años. Cuando se da cuenta de lo que le ocurrió, decide ir a buscar ayuda a casa de su vecino y amigo, el profesor Hiroshi Agasa.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\DetectiveConan.webp', SINGLE_BLOB) AS ImagenBlob), 15, 2),

 --11
('One Piece', 1997, 107,
 'Hace veintidós años, el legendario pirata, Gold Roger fue ejecutado. Sus últimas palabras fueron que su tesoro conocido como "One Piece" estaba escondido en algún lugar dentro del vasto océano conocido como el "Grand Line" (Gran Ruta Marítima). Esto dio inicio a la Era de los Piratas. Ahora, se nos presenta a Monkey D. Luffy, un joven que, inspirado por su ídolo de la infancia emprende su viaje en busca del One Piece, con el objetivo de convertirse en el Rey de los Piratas.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\OnePiece.webp', SINGLE_BLOB) AS ImagenBlob), 10, 1),

 --12
('Chainsaw Man', 2018, 25,
 'Denji es un joven endeudado que sobrevive cazando demonios con la ayuda de su mascota, Pochita, un demonio motosierra. Tras ser traicionado y asesinado, su alma se fusiona con Pochita, transformándose en Chainsaw Man. Resucitado, Denji se une a un equipo de cazadores de demonios mientras lucha con criaturas aún más letales, pero sus deseos siguen siendo simples: una vida mejor, un futuro sin deudas y, tal vez, algo de cariño.',
(SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\Chainsaw.webp', SINGLE_BLOB) AS ImagenBlob), 11, 1),

--13
('Sousou no Frieren', 2020, 12,
 'Frieren es un miembro del grupo de héroes que derrotó al rey demonio. Tanto una maga como una elfo, esas son las cosas que la hacen diferente de los otros miembros. Siendo capaz de vivir más que los demás...',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\Frieren.webp', SINGLE_BLOB) AS ImagenBlob), 13, 2),

--14
('Re:Zero kara Hajimeru Isekai Seikatsu: Daiisshō - Ōto no Ichinichi-hen', 2014, 2,
 'De repente, Subaru Natsuki un estudiante de secundaria fué convocado a otro mundo cuando regresaba de compras en una tienda. No hay señales de quien lo convocó pero las cosas empeoran cuando es atacado. Pero cuando es salvado por una misteriosa chica de cabello plateado con un gato hada, Subaru coopera con la chica para devolver el favor. Cuando por fin logran obtener una pista Subaru junto con la chica son atacados y asesinados por alguien. Subaru entonces despierta en el lugar que fue convocado y se da cuenta que gano una nueva habilidad "Regresar de la Muerte" un chico indefenso que sólo tiene la capacidad de rebobinar el tiempo con la muerte. ¡Y más allá de la desesperación puede salvar a la chica de la muerte !.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\ReZero.webp', SINGLE_BLOB) AS ImagenBlob), 14, 3),

 --15
('Kusuriya no Hitorigoto', 2017, 14,
 'Maomao es una joven sirvienta obligada a trabajar en el harén imperial. Desde sus inicios como boticaria en el distrito rojo, su insaciable curiosidad la impulsa a investigar. Cuando se corren rumores sobre la muerte de los hijos del Emperador, Maomao toma cartas en el asunto sin dudarlo.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\Kusuriya.webp', SINGLE_BLOB) AS ImagenBlob), 13, 2),

--16
('Kaichou wa Maid-sama!', 2005, 29,
 'La preparatoria Seika era un lugar sólo para hombres, pero recientemente se ha convertido en un colegio mixto, contando con apenas 20% de mujeres, ante un 80% de hombres. Allí, Misaki Ayuzawa toma en sus manos el poder, para hacer sentir seguras a las chicas, convirtiéndose en la presidenta del consejo estudiantil. Después de ser elegida, se gana entre los alumnos varones una muy mala fama de dictadora feminista, por lo que muchos la odian. Sin embargo, a pesar de su apariencia ruda, Misaki trabaja a medio tiempo en un Maid Caffé Latte. Desafortunadamente, Usui Takumi, el chico más popular del colegio (no solo entre las chicas, sino también entre los chicos) se interesa en ella tras verla vestida con su uniforme de maid, pero acepta guardarle el secreto.',
 (SELECT BulkColumn FROM OPENROWSET(BULK 'C:\Users\esaur\OneDrive\Imágenes\ProyectoFinal\MaidSama.webp', SINGLE_BLOB) AS ImagenBlob), 16, 5);

Select * from Manga