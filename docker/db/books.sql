-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.32 - MySQL Community Server - GPL
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para books
CREATE DATABASE IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `books`;

-- Copiando estrutura para tabela books.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela books.books: ~8 rows (aproximadamente)
INSERT INTO `books` (`id`, `title`, `description`, `author`, `pages`, `created_at`, `updated_at`) VALUES
	(2, 'Lorem Ipsum - The Book', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris venenatis arcu lectus. Donec vel turpis sem. Ut vulputate purus lacus, in elementum tortor venenatis ut. Donec convallis purus vitae mi viverra, sit amet tristique est iaculis. Fusce tristique aliquet orci. Ut aliquet justo vitae aliquam dignissim. Donec id lorem ipsum.\r\n\r\nAliquam erat volutpat. Vestibulum scelerisque magna a dui dignissim, a porttitor libero tincidunt. Nullam enim diam, malesuada quis commodo vel, fermentum quis eros. Integer sit amet enim nunc. Fusce quis mauris scelerisque, tempus nulla et, egestas tellus. Integer varius consequat quam ut pulvinar. Morbi dignissim pharetra mauris, lacinia sollicitudin tellus dictum vel. Mauris in erat eu augue scelerisque convallis et a ex.', 'Lorem Ipsum', 500, '2023-03-03 15:34:22', '2023-03-03 15:54:50'),
	(3, 'Descomplicando o Docker', 'Don’t panic! O assunto é bem mais fácil do que parece. :)\r\n\r\nVocê se interessou por esse negócio de containers, porém ainda tem dificuldade de assimilar algum conceito? Está buscando aprender? Neste livro você irá entender na prática como utilizar containers Docker de uma forma que (realmente) esperamos que seja divertida! Haverá muitas explicações, analogias, exemplos, tudo para que você consiga dominar o Docker e a utilização de containers de forma efetiva.\r\n\r\nEntão, para você que é desenvolvedor, o Docker vai proporcionar maior autonomia e flexibilidade.\r\n\r\nNesta segunda edição foram adicionadas muitas novidades, como o Docker Secrets e o Docker Stack. Foram acrescentados mais exemplos práticos e o restante do livro foi praticamente todo atualizado, tudo para que a sua experiência seja ainda mais agradável e proveitosa.', 'Jeferson Fernando', 152, '2023-03-03 17:53:44', '2023-03-03 17:54:03'),
	(4, 'Laravel', 'O que diferencia o Laravel de outros frameworks PHP? Para começar, velocidade e simplicidade. Este framework veloz de desenvolvimento de aplicativos e seu vasto ecossistema de ferramentas permitem construir rapidamente novos sites e aplicativos com código limpo e legível. Com este guia prático, Matt Stauffer – um dos principais mentores e desenvolvedores da comunidade Laravel – fornece a introdução definitiva a um dos frameworks web mais populares da atualidade. A visão geral de alto nível e os exemplos concretos do livro ajudarão desenvolvedores PHP experientes a começar a usar o Laravel imediatamente. Quando você chegar à última página, se sentirá à vontade para criar um aplicativo inteiro no Laravel a partir do zero. Vários recursos do framework são apresentados, entre eles: Blade, a ferramenta poderosa e personalizada do Laravel para a manipulação de templates; Ferramentas para a coleta, validação, normalização e filtragem de dados fornecidos pelo usuário; O ORM Eloquent do Laravel para o trabalho com os bancos de dados do aplicativo; O objeto de solicitação Illuminate e seu papel no ciclo de vida do aplicativo; PHPUnit, Mockery e PHPSpec para o teste de seu código PHP; Ferramentas do Laravel para a criação de APIs JSON e RESTful; Interfaces para acesso ao sistema de arquivos, sessões, cookies, caches e busca; Ferramentas para a implementação de filas, jobs, etc.', 'Matt Stauffer', 480, '2023-03-03 17:57:02', '2023-03-03 23:06:57'),
	(5, 'Sherlock Holmes', 'Neste volume que é pertencente ao box exclusivo de Sherlock Holmes e foi preparado de maneira minuciosa, como exigiria seu protagonista, reunimos uma seleção dos melhores contos encontrados em obras “Sherlock Holmes” Se as próximas páginas farão você viajar por incríveis mistérios e estimularão ainda mais seu pensamento crítico e analítico? Elementar, meu caro leitor."', 'Arthur Ignatius', 440, '2023-03-03 22:59:15', '2023-03-03 22:59:15'),
	(6, 'Volta ao mundo em 80 dias', 'Uma aposta foi o bastante para Phileas Fogg e seu fiel escudeiro, Jean Passepartout, embarcarem em uma das maiores aventuras da literatura mundial, nos moldes da narrativa fantástica de Júlio Verne. O escritor francês, um dos precursores da moderna ficção-científica, narra a história de um inglês metódico, que decide dar a volta ao mundo em oitenta dias, no ano de 1872, pelo suposto motivo de uma aposta selada com alta quantia de dinheiro. Ao colocar o pé no mundo, Fogg encara diversas aventuras típicas da imaginação sinistra de Verne. Oceanos, navios a vapor, estradas de trens, selvas e até viagem sobre elefantes compõe essa jornada. Publicado em 1873, esta obra tem destaque relevante na bibliografia deste autor que, em meio aos seus romances de aventura, pressagiou diversos avanços científicos e tecnológicos da humanidade. A volta ao mundo em 80 dias leva-nos a lugares onde nunca pensamos estar e nos faz acreditar numa fantasia possível de se concretizar.', 'Júlio Verne', 264, '2023-03-03 23:00:45', '2023-03-03 23:06:45'),
	(7, 'Death Note Short Stories', '" A história de Death Note continua nesta coleção de contos escritos pelos criadores da série.A história de Kira realmente acabou ou sua influência permanece?Nesta coleção completa de contos de Death Note escritos pelos criadores da série, descubra contos de vidas irrevogavelmente alteradas pela influência sinistra do Death Note, com respostas surpreendentes e emocionantes para a questão do que realmente é necessário para usar o Death Note. ..ou combatê-lo."', 'Editora JBC', 224, '2023-03-03 23:03:29', '2023-03-03 23:03:29'),
	(8, 'Laravel Para Ninjas', 'As aplicações web modernas têm evoluído rapidamente. A demanda por ferramentas capazes de entregar conteúdo dinâmico como APIs REST e de frameworks para consumo de dados como Angular.JS e similares é crescente. Nesse contexto, frameworks modernos como o Laravel são ferramentas indispensáveis para a produção de sistemas web em tempo hábil, com qualidade e de fácil manutenção. No livro Laravel para Ninjas são abordados temas como:\r\n\r\nInstalação do ambiente para desenvolvimento no Windows, MAC OS X e Linux.\r\nInstalação e uso do Composer, um gerenciador de dependências para PHP.\r\nInstalação do framework Laravel e execução dos primeiros testes.\r\nConstrução de modo incremental de um catálogo de produtos com integração com o ORM Eloquent, sistema de paginação, busca, upload de imagens, etc.\r\nConstrução de um aplicativo de página única com API Restful e integração do front-end com a biblioteca JavaScript Angular.\r\nUma visão mais aprofundada do uso do ORM Eloquent.\r\nEnvio de e-mails com o Laravel usando serviços para envio de e-mails em massa.\r\nExecução de testes unitários e de integração com o PHPUnit.\r\nPublicação do seu aplicativo em servidor dedicado ou compartilhado.\r\nOs exemplos são construídos de maneira incremental, de modo que ao longo do desenvolvimento o leitor se familiarize com os recursos e o método de trabalho do framework de forma prática e intuitiva.', 'Novatec Editora', 184, '2023-03-03 23:04:17', '2023-03-03 23:04:17'),
	(9, 'Trilogia O Senhor dos Anéis', 'Apesar de ter sido publicado em três volumes – a sociedade do anel, as duas torres e o retorno do rei – desde os anos 1950, o senhor dos anéis não é exatamente uma trilogia, mas um único grande romance que só pode ser compreendido em seu conjunto, segundo a concepção de seu autor, j.r.r. Tolkien. Com design cuidadosamente pensado para refletir a unidade da obra e os desenhos originais feitos por tolkien para as capas de cada volume, este box reúne os três livros da saga do anel e oferece aos leitores uma nova oportunidade de mergulhar no notável mundo da terra-média.', 'J.R.R Tolkien', 1568, '2023-03-03 23:11:21', '2023-03-03 23:11:21'),
	(10, 'História da Terra-média', 'A literatura única de J.R.R. Tolkien é conhecida principalmente por meio de seus maiores sucessos, os livros O Hobbit, O Senhor dos Anéis e O Silmarillion. Porém, o escritor deixou uma vasta quantidade de conteúdos complementares que expandem e detalham a mitologia de seu Legendário.\r\n\r\nReunidos e editados por Christopher Tolkien, esses escritos foram publicados entre 1983 e 1996 nos doze livros que compõem a celebrada coleção A História da Terra-média. A série mostra o desenvolvimento, ao longo do tempo, da concepção de Tolkien da Terra-média como um lugar fictício com seus próprios povos, línguas e história, desde suas primeiras noções de uma "mitologia para a Inglaterra" até o desenvolvimento das histórias que compõem O Silmarillion e O Senhor dos Anéis.\r\n\r\nEste primeiro box é composto pelas obras "O Livro dos Contos Perdidos 1" e "O Livro dos Contos Perdidos 2", que apresentam ao leitor às primeiras concepções dos mitos e lendas que vieram a compor o Legendário de Tolkien,  como a criação dos Valar (incluindo daqueles que ficaram de fora da versão final de O Silmarillion) e as primeiras grafias e enredos de Eärendil, o Marinheiro, Ungoliant e Melkor (Morgoth). Em ambos os livros, cada conto é acompanhado de notas e comentários de Christopher.', 'J.R.R Tolkien', 800, '2023-03-03 23:12:25', '2023-03-03 23:12:25'),
	(11, 'O Senhor dos Aneis', 'A grande obra-prima de Tolkien em uma edição ilustrada de colecionador. Apesar de ter sido publicado em três volumes – "A Sociedade do Anel", "As Duas Torres" e "O Retorno do Rei" – desde os anos 1950, o Senhor dos Anéis não é exatamente uma trilogia, mas um único grande romance que só pode ser compreendido em seu conjunto, segundo a concepção de seu autor, J.R.R. Tolkien. Em volume único, essa edição suntuosa da obra-prima de Tolkien, ilustrada em aquarela pelo aclamado e premiado artista Alan Lee e abrigada em uma caixa transparente, é uma das mais completas edições já publicadas.', 'J.R.R Tolkien', 1376, '2023-03-03 23:13:33', '2023-03-03 23:13:33');

-- Copiando estrutura para tabela books.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela books.failed_jobs: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela books.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela books.migrations: ~5 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_03_03_044612_create_books_table', 1);

-- Copiando estrutura para tabela books.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela books.password_resets: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela books.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela books.personal_access_tokens: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela books.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela books.users: ~21 rows (aproximadamente)
INSERT INTO `users` (`id`, `fullName`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Srta. Gabi Rodrigues', 'ferminiano.analu@serra.com.br', NULL, '$2y$10$gMI92fuCiv04z5cLchhIf.kEDCWpEka1L7VaGHgg1U1ILXzXoh0S6', NULL, '2023-03-03 11:55:19', '2023-03-03 17:09:04'),
	(2, 'Márcio Danilo Alves', 'valentina.dacruz@yahoo.com', NULL, '$2y$10$orp24Ff9ue7mHiAptl88NejmfwthoR.cBvM3IKgxEVpuIY2sJQCEW', NULL, '2023-03-03 11:55:19', '2023-03-03 11:55:19'),
	(3, 'Sophie da Rosa', 'eloah.tamoio@cortes.net.br', NULL, '$2y$10$uktyr0J8v/E5O8CXmH4lHe/h7WNnfOtH.PrTKuVcKj4sep6L.oZTW', NULL, '2023-03-03 11:55:19', '2023-03-03 11:55:19'),
	(4, 'Sra. Madalena Rico Jr.', 'thales08@cruz.com', NULL, '$2y$10$KL70MjJwnkvKwqq7.bPy/O3hDJ02VhDpsQKA1VShbHJjrQqxrAlkG', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(5, 'Sra. Lilian Montenegro Neto', 'goncalves.samuel@leon.com.br', NULL, '$2y$10$wMkXkinohUIV/K6JLiKN.uj2HISK6jroBQvuKzpS12U1kykO32LhO', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(6, 'Srta. Isis Suzana Galvão', 'jeronimo.ortega@queiros.net', NULL, '$2y$10$L9sIZYL1fu2D9W7sRXmF0ucTvFK6JR26FEpCFyI8EjHLqaeIvY84y', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(7, 'Poliana Suellen Valdez', 'luana99@franco.com', NULL, '$2y$10$OqtmufMRLF5t.05C8xx3t.7bMErM9WO/mmOptkkvMGUY0r4bTMBq2', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(8, 'Melinda Maldonado Benites Jr.', 'fernandes.alessandro@torres.com.br', NULL, '$2y$10$Y9.APJNfLDbOmdCW1ZntSuAS1s3/UP6QDCHPbxDBvBfOEEil6SK2K', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(9, 'Sra. Késia Thalia Garcia', 'carmona.jennifer@azevedo.com.br', NULL, '$2y$10$exnBtyNFKoVCF2IzTAWR4.7PUv2d9DmR/Sd10UnB3OcvWt7I4Kp4C', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(10, 'Sr. Nicolas Batista Filho', 'isaac92@queiros.net', NULL, '$2y$10$1ZENyeK3MhVJN/A6y55z6OwKqTbt.8wH1yL65oFU3zYzVtQuTc0R.', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(11, 'Dr. Bruno Richard Rios Neto', 'psouza@ig.com.br', NULL, '$2y$10$1uZalzKAdwjs9bzvyFVQXO/aHo3X35p4BLan6dp89AnMIfOdjd0xK', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(12, 'Dr. Thales Afonso Flores', 'camacho.jonas@ig.com.br', NULL, '$2y$10$TjbACPSHAx4tkhpUZC4olumnkbck9IlOxp8H8HSuz/ESKLbWOscJC', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(13, 'Dr. Raphael Sergio Matos', 'davi.mares@yahoo.com', NULL, '$2y$10$7dUxrfg.Z5POe1vlyFAozu7LAV5r.UcPEDYL2he1GIqzX0sUlwqrC', NULL, '2023-03-03 11:55:20', '2023-03-03 11:55:20'),
	(14, 'Sr. Gilberto Pontes Filho', 'wbeltrao@dasneves.com.br', NULL, '$2y$10$BjyeFBvHtUQL0XLX1pw.C.CMLroAku3aq.3CzXJl7fZFJYwdC2IVi', NULL, '2023-03-03 11:55:21', '2023-03-03 11:55:21'),
	(15, 'Benjamin Casanova Martines Jr.', 'stella.quintana@delvalle.com', NULL, '$2y$10$qURlKp7rg1yyVQfn1BdebO3FgyI.8u1bmXNxPUBMHfa6ExMe0nmOu', NULL, '2023-03-03 11:55:21', '2023-03-03 11:55:21'),
	(16, 'Dr. Roberta Amaral', 'aburgos@ig.com.br', NULL, '$2y$10$oJbCwb8elzYPy8iB0yASu.WqCi7nJ81Iklxjx14BP6hvQOunS.OuW', NULL, '2023-03-03 11:55:21', '2023-03-03 11:55:21'),
	(17, 'Dr. Thales Martines', 'jennifer.teles@hotmail.com', NULL, '$2y$10$DLhsy1OKw0D5jfZK.A49J.RCJCxIsUEtyGg3yfs1y0q8lStS/ZC6K', NULL, '2023-03-03 11:55:21', '2023-03-03 11:55:21'),
	(18, 'Dr. Samuel George Brito', 'marina.rezende@santacruz.net.br', NULL, '$2y$10$wgzv8ZNEZ5s6xTTB47tUduJ8dy2gFjq0xmD/Iqyg35DH5lYH8bV0O', NULL, '2023-03-03 11:55:21', '2023-03-03 11:55:21'),
	(19, 'Dr. Paulo Ferraz Salas Sobrinho', 'gquintana@r7.com', NULL, '$2y$10$F9oHCUkpKonwxv1jXHOBzOE6NR9db0isDdH09ql6xx.XTcMyf9ISe', NULL, '2023-03-03 11:55:21', '2023-03-03 11:55:21'),
	(20, 'Sr. Cezar Galindo Caldeira', 'luiz93@gmail.com', NULL, '$2y$10$NVQwR0hJX0JC90v1uLOJFuLwVxb1fI2DBWQXV6Y0bMBVIYszqMUGq', NULL, '2023-03-03 11:55:21', '2023-03-03 11:55:21');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
