-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 31 oct. 2024 à 15:05
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `perfect_elearning`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_text` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duration` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `title`, `description`, `duration`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Consequatur rem ab aut quis ut.', 'Animi architecto et nulla repudiandae. Nam ducimus facere accusantium eum voluptatem ad aliquid. Aliquam hic vel suscipit delectus perferendis dolor nisi.\n\nIure necessitatibus est voluptas possimus ut nisi. Sint atque esse temporibus voluptas. Et eum architecto atque ut. Consequatur non natus aliquam corporis quis.\n\nDolorem est voluptatem nihil recusandae at iusto ut. Quod sed asperiores eaque aliquam. Quam sapiente maiores debitis sapiente sunt est aut.', 3, 3.00, '2024-04-29 17:01:25', '2024-04-29 17:01:25'),
(2, 'Voluptatum a quos numquam.', 'Ullam dignissimos quae molestiae ut. Id enim aut at cum voluptatibus ratione. Provident magni rerum harum modi.\n\nAt placeat quia tenetur amet est voluptates a occaecati. Fugiat sed consequatur quia dolores. Reprehenderit facere atque ratione velit tenetur consequuntur. Amet est et inventore voluptatem itaque nemo officiis. Provident cum et quia nihil dolores totam.\n\nVoluptatibus sapiente reprehenderit provident dolore vero est iusto. Beatae iure aliquam iusto dolorem dolor officia eos omnis. Numquam labore occaecati enim aut et fuga eos ullam.', 2, 1.00, '2024-03-28 12:50:12', '2024-03-28 12:50:12'),
(3, 'Optio necessitatibus aut veniam laboriosam.', 'Distinctio ut eos aut ullam. Iste aliquam delectus quia. Optio necessitatibus sunt et reprehenderit omnis.\n\nQuia explicabo quisquam quis ad sit. Eum sunt accusantium ut iste libero sit et. Quaerat voluptatum sint in officiis. Dolorum est labore consequatur fugiat.\n\nAut nisi illo in reprehenderit in quas repellat. Non id voluptatum occaecati fuga ipsam aut. Eos ut vel recusandae sequi sint in ducimus.', 3, 4.00, '2024-07-20 11:58:26', '2024-07-20 11:58:26'),
(4, 'Nihil earum nulla rerum.', 'Temporibus sequi ad fuga incidunt ut pariatur. Non ullam dolores nihil quis. Sed quisquam nesciunt optio dignissimos id consequatur. Quod voluptatem molestiae dicta ex libero atque.\n\nIusto voluptatem dolorem recusandae perferendis earum itaque et. Aliquam qui sit sunt pariatur qui et doloribus ipsum.\n\nEum aut ab rem. Eveniet at vel aut repellendus occaecati qui. Debitis recusandae voluptatem enim incidunt reiciendis cum vel. Ab sit quis eaque eum qui mollitia beatae.', 3, 1.00, '2023-12-24 23:37:03', '2023-12-24 23:37:03'),
(5, 'Excepturi veritatis aliquam et velit nemo occaecati.', 'Repellat quo nostrum iusto ut possimus non et. Cum aspernatur eveniet sunt. Officiis et id amet soluta. Tempora animi est voluptatem et aliquam accusamus.\n\nIn maxime eos adipisci quia qui earum omnis. Delectus aut error deleniti eveniet nemo. Quasi maxime at doloribus possimus et.\n\nUt blanditiis velit dolore. Ipsum minima atque doloremque earum occaecati voluptatem quia. Omnis consequatur temporibus consequatur quo. Provident dicta maxime ut incidunt qui.', 4, 7.00, '2024-05-20 06:45:31', '2024-05-20 06:45:31'),
(6, 'Quod dolor et deleniti praesentium.', 'Non laborum libero cumque iste. Velit quas fugit architecto.\n\nQuidem sed aspernatur aut aut. Cum dolorem sunt quae repellat quis. Veniam nostrum architecto aliquam expedita. Explicabo quos inventore nihil eos animi eaque iusto. A id aut magnam porro pariatur sequi.\n\nQuis et nihil voluptates inventore blanditiis illum. Libero aut est aliquam. Sed natus minus aperiam sed debitis libero rerum.', 8, 8.00, '2024-10-08 03:09:57', '2024-10-08 03:09:57'),
(7, 'Pariatur ut dolorem reiciendis consequuntur beatae.', 'Eligendi nam tenetur rerum error enim dicta nesciunt. Mollitia non dolorem ratione quas molestias unde. Iure accusantium similique sint fuga.\n\nDoloremque id adipisci mollitia aut sequi a sunt. Ut ut odit aut ipsa possimus animi. Ea molestiae architecto nulla occaecati dolore rerum et. Quasi maiores qui fuga ad dolores.\n\nImpedit est reiciendis quasi perspiciatis. Error neque molestiae ut officia ut. Autem placeat dolor consectetur est aspernatur voluptatem. Aut voluptas esse porro debitis aperiam.', 5, 5.00, '2024-03-22 22:22:17', '2024-03-22 22:22:17'),
(8, 'Dolores voluptatem soluta voluptatem assumenda.', 'Expedita natus voluptate consectetur dolor cum temporibus a. Adipisci animi similique inventore ut ut ut iste. Eum minus sed nihil possimus dolor alias.\n\nPerferendis nulla maxime corrupti amet doloribus officiis exercitationem. Velit sit sed ex voluptatem possimus recusandae vel. Quis aperiam ab harum ut accusamus reprehenderit error.\n\nIllo harum eaque amet. Fugiat qui qui nesciunt tempore. Repellendus modi repellat aspernatur nemo et. Sed esse laborum deserunt illo.', 1, 6.00, '2024-03-04 19:34:39', '2024-03-04 19:34:39'),
(9, 'Cum non dolor dicta aperiam voluptatibus sed earum.', 'Eum molestiae repudiandae quod. Vitae repellendus dolores temporibus corporis alias quasi minima. Et inventore perferendis animi minima sed. A dolores beatae porro dolorem voluptatem fugit aut et.\n\nOdit libero modi quo fugiat. Incidunt quo sint id omnis eaque voluptatem autem soluta. Fugit debitis illum corporis nulla numquam non.\n\nSit reiciendis quaerat libero soluta omnis veniam. Excepturi maxime nisi vel asperiores est distinctio at. Magnam omnis tenetur libero. Earum iste omnis laboriosam occaecati deleniti.', 1, 0.00, '2024-01-26 00:20:56', '2024-01-26 00:20:56'),
(10, 'Sed nostrum fuga et reprehenderit quaerat quae totam.', 'Sed labore velit et ex. Ut sint molestiae repellendus quas nesciunt aut. Officiis quam non iusto accusantium. Rem accusantium odio beatae repellat iste. Sapiente quo deserunt voluptatem ipsam nesciunt.\n\nEt est beatae a veritatis itaque quia voluptatum. Asperiores pariatur dolores nam minima. Et eum maxime fugit inventore labore aperiam impedit. Sunt eum ut unde maxime.\n\nConsequatur excepturi itaque iste sit laboriosam sit id. Aut ullam doloribus debitis excepturi atque consequuntur necessitatibus pariatur. Non expedita adipisci commodi quia harum sit similique.', 4, 2.00, '2024-07-05 01:49:03', '2024-07-05 01:49:03');

-- --------------------------------------------------------

--
-- Structure de la table `cour_user`
--

CREATE TABLE `cour_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cour_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exercises`
--

CREATE TABLE `exercises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `duration` int(11) NOT NULL,
  `cour_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `exercises`
--

INSERT INTO `exercises` (`id`, `title`, `content`, `duration`, `cour_id`, `created_at`, `updated_at`) VALUES
(1, 'Eius totam velit similique.', 'Ad in tenetur eos mollitia expedita et quasi. Iste et excepturi veritatis aspernatur quia. Et consequatur perferendis aut quam. Quia recusandae tempora laudantium blanditiis. Quisquam quod exercitationem in animi dolores vel perferendis quos.\n\nFugiat qui aut recusandae cumque natus et aspernatur. Et et blanditiis iste placeat voluptates. Delectus ab libero distinctio aut.\n\nMolestiae omnis quis quisquam officiis vel ut. Velit molestiae dolorem nam consectetur.', 117, 7, '2024-04-06 15:38:11', '2024-04-06 15:38:11'),
(2, 'Temporibus assumenda repudiandae esse eos voluptatem voluptate.', 'Id dolor doloremque sunt aut asperiores. Sit qui vel laborum blanditiis voluptatibus adipisci iste.\n\nQui error nisi quas fugit. Consequuntur corporis voluptas ea eos velit tenetur. Aut impedit dolores dolore cupiditate doloribus alias perferendis nihil. Vero perspiciatis eum quia aliquam.\n\nAmet expedita natus officia id minus porro autem ipsam. Eos sunt est magnam est. Dolorum molestiae hic laboriosam repellendus eum nulla cumque qui. Et suscipit aliquam ratione.', 58, 1, '2024-03-03 05:13:20', '2024-03-03 05:13:20'),
(3, 'Exercitationem cum omnis mollitia porro molestias.', 'Autem numquam autem voluptates velit quia non laudantium ex. Cupiditate optio praesentium soluta aliquam nemo ut qui magnam. Odio mollitia est quos eum non.\n\nQuisquam odio voluptatum dignissimos repellendus molestiae voluptates. Fugiat dolor rerum quia et quisquam quis. Voluptatem iste accusamus exercitationem error iure repellat. Provident aut sunt enim ut molestiae cupiditate.\n\nAperiam aut quia voluptas omnis qui. Molestiae asperiores nostrum perferendis soluta aspernatur voluptate impedit illum. Consectetur ut qui voluptas quo. Corporis quis enim cupiditate eum aut vel autem dolor. Eveniet ullam magnam perspiciatis pariatur iure id.', 94, 4, '2024-06-27 22:30:56', '2024-06-27 22:30:56'),
(4, 'Nam praesentium id est ea.', 'Non fugit est aut et sunt sapiente quo. Voluptatem nam facere facere deserunt animi eos alias ipsa. Incidunt rem sequi amet officia soluta sunt quia. Ut et laboriosam similique repellendus quam est.\n\nUnde fugiat facilis iusto nostrum est ut optio. Ratione nulla sint tempora doloremque esse autem et. Quis laboriosam est dolorem voluptatum. Autem odit dolor ad voluptatibus.\n\nFuga voluptas voluptatibus illo est. Autem et temporibus porro corrupti non exercitationem. Optio et quae et eius repudiandae.', 40, 10, '2023-12-30 08:20:29', '2023-12-30 08:20:29'),
(5, 'Sint perferendis et minus dolorem nesciunt.', 'Ipsam nisi corrupti ut rerum. Placeat laborum necessitatibus sapiente.\n\nCum modi animi sit incidunt ab voluptatibus ad. Fugiat adipisci quibusdam sunt sequi sequi earum tempore.\n\nLaboriosam praesentium nobis nesciunt eum iste. A dolor ratione nostrum. Ipsam aut sit veritatis ut.', 60, 1, '2023-12-18 21:19:02', '2023-12-18 21:19:02'),
(6, 'Alias officia et repudiandae qui eligendi.', 'Sit repellendus voluptatem ullam ad ducimus ullam. Id ut aut autem aut. Est eum voluptas dolorum expedita quam ullam. Quia ea aliquid pariatur et nisi aut. Ea officiis neque dolorem veniam omnis qui.\n\nNumquam est sit in fugit culpa corrupti dolores. Modi est qui est sapiente quaerat. Ut quia illum aperiam amet optio. Ab est dignissimos et et sit.\n\nExercitationem dolores quis in veritatis quia. Recusandae tenetur ut aut vel enim. Omnis vero at enim sed et non ut. Cum illum vel ab.', 1, 7, '2024-05-19 02:27:14', '2024-05-19 02:27:14'),
(7, 'Sint qui provident culpa asperiores.', 'Rem quos natus quam rem explicabo. Et quidem reiciendis assumenda nobis ut qui. Qui voluptatem ea est rerum facilis fugit. Odio optio incidunt labore iusto molestiae ipsa.\n\nUt commodi quis eum consectetur. Doloremque pariatur quis voluptas qui sunt error. Maiores ullam fugit quia odio veniam rem vel. Blanditiis aut cum dolorem.\n\nModi pariatur perferendis perspiciatis sed. Corrupti dolor unde voluptas iste vero repudiandae. Dolorem sed tempore voluptas qui quis.', 82, 2, '2024-10-11 02:27:44', '2024-10-11 02:27:44'),
(8, 'Eum aliquam aspernatur modi error.', 'Reprehenderit voluptates ut minima facilis. Saepe rerum molestias saepe quas dicta similique. Provident eligendi dolorem est libero deleniti.\n\nIn deserunt sequi perferendis voluptatem magnam culpa. Vitae cupiditate aut ullam et alias distinctio. Est dolorem repellat quia.\n\nEnim dolores nostrum dolor qui voluptatem alias cupiditate. Deleniti ut ut nulla commodi. Nostrum aut excepturi qui consectetur minus deserunt autem. Architecto mollitia sequi veniam voluptas amet non. Id qui id culpa ullam.', 101, 8, '2024-09-11 09:25:18', '2024-09-11 09:25:18'),
(9, 'Dignissimos voluptatum debitis quam possimus.', 'Commodi fugiat id sunt qui. Deserunt harum quibusdam officia cumque pariatur. Est sapiente omnis ut iusto.\n\nSit sit vero eligendi saepe ipsam iste. Est sint neque et dolores. Sed qui voluptatibus eveniet sed.\n\nVel nihil excepturi laborum non sint totam. Cupiditate consequatur assumenda ut dolorem vero non.', 77, 5, '2024-10-18 03:00:16', '2024-10-18 03:00:16'),
(10, 'Provident et totam sit eos reiciendis architecto sunt.', 'Veritatis possimus alias et et possimus. Fuga est voluptatem molestias dolor soluta cum debitis cumque.\n\nEst exercitationem unde doloribus rerum consequatur. Illo quaerat aut similique accusantium sunt maxime ut. Repellat soluta voluptatem et nam.\n\nIllum nam expedita molestiae voluptatem ipsum et dolores suscipit. Non voluptas autem explicabo tenetur. Voluptatem voluptatem vel iste ea voluptas quibusdam. Dolor dignissimos autem ea est itaque et necessitatibus voluptate.', 3, 7, '2024-02-26 10:25:55', '2024-02-26 10:25:55'),
(11, 'Qui cum ut nostrum saepe quas pariatur sit non.', 'Sunt sed ut id est possimus cum consequuntur. Autem consequatur eum sint minima voluptates eligendi. Deserunt ut et sed accusantium ducimus et expedita. Enim totam adipisci aut unde.\n\nPerferendis enim nihil minus aspernatur facere recusandae quia. Numquam voluptatem cumque voluptate. Et delectus non dicta nulla qui ut. Dolor saepe nihil est rerum voluptas sit voluptas.\n\nAlias magni dolores quas voluptatibus autem. Consequatur quia ipsa ut modi enim cum velit. Qui possimus laborum quas voluptatem mollitia ipsum eos.', 30, 10, '2023-12-20 05:50:11', '2023-12-20 05:50:11'),
(12, 'Amet eveniet asperiores odit iste.', 'Distinctio sequi vitae eos est fugit. Totam eos est odit sit temporibus. Ullam ratione ut quas beatae rerum commodi. Ut velit omnis asperiores modi.\n\nUt quod reiciendis aliquid et. Id facilis iusto inventore consequatur. Voluptates sunt ex aperiam voluptas dolor odio voluptatem voluptatem. Distinctio iste voluptatem ut ut quod a non nulla.\n\nNon expedita nam non harum voluptatibus. Illum id voluptatum praesentium sunt praesentium voluptatum voluptas nemo. Iure natus molestiae qui nobis recusandae iste ullam officiis.', 7, 10, '2024-04-15 08:36:27', '2024-04-15 08:36:27'),
(13, 'Error rerum et nihil voluptatibus.', 'Asperiores ducimus sint nemo voluptas quia veritatis. Atque sint sapiente pariatur officiis labore temporibus qui. Tempora dolores sapiente ut sit consequatur occaecati. Enim ducimus velit eaque doloribus.\n\nDucimus qui a voluptas autem odit. Est accusantium rerum aut delectus. Tenetur voluptatum sequi molestiae ad.\n\nDolorum et veritatis non. Accusantium a a veniam fuga aperiam minima rerum. Inventore sed molestiae magnam et quasi rerum non. Et accusantium eaque repellendus consequatur natus quo.', 99, 6, '2024-07-30 04:06:43', '2024-07-30 04:06:43'),
(14, 'Dignissimos aut facilis labore totam voluptatibus ut.', 'Ea doloribus accusantium magni officia magnam est. Et ut rerum illo laboriosam hic. Numquam quia suscipit nulla necessitatibus ad.\n\nEt perferendis non qui. Et harum beatae possimus modi. Ullam doloremque maxime ipsum incidunt veritatis.\n\nDebitis aut consequuntur et eos ab. Voluptas deserunt tempore quos. Et reprehenderit mollitia reprehenderit deleniti dicta assumenda.', 85, 4, '2024-06-20 15:57:44', '2024-06-20 15:57:44'),
(15, 'In nobis et libero ex minima quia.', 'Placeat sapiente illum perferendis eligendi quas et sed dolores. Asperiores repellat laboriosam quia nisi blanditiis a. Repellat velit ut quasi aliquid dolores repellat voluptatum.\n\nDolorem incidunt laudantium voluptatibus voluptatem maiores eveniet unde. Odit consequatur saepe dolor impedit. Praesentium esse commodi deserunt vitae. Rerum odit enim voluptate laboriosam commodi.\n\nOmnis est quibusdam explicabo ut eveniet iusto sit. Voluptatem doloremque eaque voluptatem ut. Sequi voluptatem consequatur vel sapiente molestiae. Sit debitis aut magnam ut aut maxime aut.', 57, 9, '2024-07-29 21:25:06', '2024-07-29 21:25:06'),
(16, 'Facilis placeat et fugiat doloremque debitis.', 'Et nulla laborum voluptatum impedit enim. Consequuntur maiores et quis in iusto enim. Minima porro repudiandae totam ratione. Voluptatem asperiores qui sed consectetur.\n\nEum dolor exercitationem dolore. Aperiam quod commodi eveniet inventore sunt. Aperiam dolor aut maxime ut. Doloribus ut ducimus perferendis culpa tempore tempora harum. Ab alias quidem qui dolorem velit velit.\n\nExcepturi amet et repellendus ipsam voluptas. A amet ducimus iusto sit et eaque aut nam. Ad quidem quia debitis non reprehenderit ea animi.', 42, 4, '2024-10-13 22:13:14', '2024-10-13 22:13:14'),
(17, 'Magni qui repellat voluptas saepe assumenda expedita.', 'Commodi nulla laboriosam nobis quasi et. Qui magnam consequatur odit. Id illo ut rerum alias dolores at.\n\nCumque itaque earum quas iure quis. Quidem laboriosam perspiciatis ipsum quo. Laudantium quia quis veniam ullam corrupti id. Nostrum est est similique ducimus est.\n\nNesciunt voluptas natus quos qui sint. In dolorem modi autem. Quam ab tempora nisi perferendis ratione totam. Labore voluptatem nam nobis consequatur aut.', 37, 5, '2024-07-20 21:16:26', '2024-07-20 21:16:26'),
(18, 'Laborum quae distinctio dolor ad vitae modi.', 'Deleniti sit excepturi alias minima dolor omnis qui odio. Voluptatem at sed perspiciatis. Quisquam non quaerat dicta quibusdam.\n\nQuidem aut minima sit unde sunt iste. Nam natus sint autem ad vero nesciunt sapiente. Et illo itaque voluptatem culpa omnis quam. Voluptatem labore dolorem dolor.\n\nOfficiis voluptatem repudiandae necessitatibus quidem voluptatem odio mollitia. Laudantium adipisci dolores maiores cupiditate nemo. Ut illo sint adipisci assumenda est quasi.', 4, 3, '2024-02-18 14:37:27', '2024-02-18 14:37:27'),
(19, 'Maiores molestiae aut officia veritatis beatae enim rerum beatae.', 'Quas doloribus ut voluptatem dignissimos placeat quo. Omnis beatae facere esse fuga numquam cupiditate quia. Ea dolorem unde et sed. Qui autem molestias dolorum.\n\nNon quis maxime illo ut nemo culpa aperiam. Voluptatibus illum quasi minima fugiat magnam fuga qui. Repellat culpa assumenda ea quae laborum. Dolorum ut facere nam dolores non minus in.\n\nEveniet debitis est consequatur suscipit earum vel praesentium. Hic enim sapiente doloremque fugit. Fugit porro voluptatum et. Dolorem praesentium quos repudiandae quis omnis voluptatem.', 10, 5, '2024-04-20 02:40:18', '2024-04-20 02:40:18'),
(20, 'Necessitatibus voluptatum quo blanditiis quia voluptatem.', 'Quia esse veritatis enim enim deserunt nemo amet. Tempora quidem sed cum quasi perspiciatis cupiditate. Id ullam dignissimos amet nisi sit molestiae natus. Sed rerum quod aut et.\n\nId enim rem tenetur voluptatem ad velit. Commodi veniam officiis ea et modi dicta. Fugit eos sit soluta mollitia.\n\nNeque voluptas voluptates ut eos. Et voluptatem quae est.', 46, 2, '2024-09-08 15:26:17', '2024-09-08 15:26:17');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duration` int(11) NOT NULL,
  `cour_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lessons`
--

INSERT INTO `lessons` (`id`, `title`, `description`, `duration`, `cour_id`, `created_at`, `updated_at`) VALUES
(1, 'Cum fuga dolor fuga.', 'Nesciunt dolorem voluptates et ipsum. Ut vel iusto vel ut provident.\n\nQuia qui maxime architecto ducimus odit vero. Autem nihil voluptas soluta enim et ipsum incidunt.\n\nIpsum sunt quae cum illo repudiandae aperiam eaque. Quia qui eaque animi qui possimus laboriosam quia. Eveniet fugit minus porro exercitationem. Est eos amet eos quis a nesciunt.', 6, 1, '2024-01-16 00:30:50', '2024-01-16 00:30:50'),
(2, 'Saepe et et repellendus atque nisi.', 'Placeat ullam debitis dolorem voluptatibus odit voluptate quia. Ut molestiae id quia voluptatem voluptatem ea enim.\n\nDicta eaque aut quaerat voluptate sed dolor sint. Distinctio id omnis suscipit perspiciatis. Qui architecto libero illo inventore atque. Sed sequi voluptatem dolore optio non autem voluptas a.\n\nVoluptatem nam qui ex. Quam et dignissimos qui perferendis velit placeat officiis. Et illo eaque totam quisquam quam. Eum id tempora quasi dolorem et.', 1, 8, '2024-10-10 14:43:30', '2024-10-10 14:43:30'),
(3, 'Totam ut consequuntur dignissimos atque iusto aut expedita quibusdam.', 'Molestiae illo asperiores velit ea et vitae. Animi aperiam ipsam qui est ipsam maiores enim ipsum. Molestias ducimus et voluptates incidunt nam consequatur ad. Debitis laudantium qui labore aperiam eveniet error. Saepe aut necessitatibus eligendi qui et amet.\n\nDolorum consequuntur quia et necessitatibus. Perferendis consequatur dicta et facere maiores quae. Officiis velit repellendus dolorem aut pariatur et. Numquam non adipisci quo fuga pariatur provident voluptatem.\n\nMaiores et ea tenetur maiores. Consequatur aut qui animi distinctio cupiditate dicta. Magni vitae consequuntur explicabo autem minus fuga.', 1, 4, '2024-09-02 06:15:00', '2024-09-02 06:15:00'),
(4, 'Eius sunt et praesentium cupiditate facere veritatis.', 'Amet hic aut consequatur inventore maiores nesciunt autem. Et dolores sint laudantium voluptatem. Qui impedit quo nemo illum cumque et.\n\nEx temporibus asperiores hic perferendis eos. Id nisi eos sunt nihil est deleniti. Animi eaque perspiciatis earum architecto tenetur qui est. Et quis quasi rem itaque ut ratione.\n\nEarum at reprehenderit quaerat ab. Suscipit nemo eius libero sint consequatur. Est magni similique cupiditate veniam error iure laboriosam. Consequatur ipsam neque ratione et recusandae.', 7, 8, '2024-07-01 20:58:40', '2024-07-01 20:58:40'),
(5, 'Qui consequatur est enim non non voluptates quia.', 'Aut voluptatem nihil consequatur neque officia. Ut libero totam maxime. Nam explicabo totam nobis sequi quas. Cum earum quod voluptates. Similique iusto eos numquam ad.\n\nVoluptatem ea ut magnam et aut atque. Totam numquam excepturi tenetur voluptate. Ad nulla tempora sit dolores dolor aliquam nulla. Vero ut velit perspiciatis nemo velit harum.\n\nMaxime accusamus mollitia cumque enim iure. Quaerat pariatur rem sit eius expedita consequatur quis. Quia beatae eligendi voluptas odit animi perferendis id. Et totam aspernatur alias facere voluptas sunt cumque voluptate.', 7, 8, '2024-05-08 20:00:05', '2024-05-08 20:00:05'),
(6, 'Quo aut incidunt labore.', 'Nihil laborum at autem animi alias magni. Occaecati quis totam quasi eveniet esse aut dignissimos. Aut et cupiditate debitis est quos id. Quae consectetur repellat ratione ad placeat itaque est aspernatur.\n\nEst earum et dignissimos provident minima. Impedit debitis animi dolores sit itaque voluptatem deleniti.\n\nNam molestias unde ea aut numquam eum culpa. Qui reiciendis harum saepe sed. Esse perspiciatis doloremque libero harum quo et. Voluptas tempora consequuntur culpa et nemo distinctio libero. Distinctio cupiditate vel vitae assumenda sunt quidem.', 4, 3, '2024-07-15 13:44:20', '2024-07-15 13:44:20'),
(7, 'Vel quia voluptate et.', 'Est delectus rerum pariatur modi deleniti labore quia. Totam ex animi unde voluptate. Ipsa quam molestias dolorem earum.\n\nUt nesciunt nisi eum sunt tempora. Aut commodi molestiae voluptates nam. Odit expedita reiciendis praesentium inventore exercitationem minima quaerat. Beatae est et nulla culpa enim.\n\nUllam eius architecto sit veniam odio. In voluptatem temporibus exercitationem repellat odio. Molestiae optio repellendus saepe cupiditate praesentium enim.', 5, 10, '2024-02-21 17:49:16', '2024-02-21 17:49:16'),
(8, 'Est rerum aut porro id hic accusamus.', 'Et modi aliquid incidunt beatae porro veritatis totam. Et minus ut consequatur natus est iste. Voluptatem enim et beatae nemo. Amet autem asperiores autem ab praesentium qui vel.\n\nVel sint molestiae est quia expedita nulla optio deleniti. Magni illum voluptatem unde qui ea itaque sequi. Libero et ut et doloribus hic quasi.\n\nEsse odit tempora dolore minus voluptatem dicta ipsa. Perferendis sit praesentium enim veritatis. Cum laudantium ipsa vel eveniet.', 1, 2, '2024-08-12 18:50:46', '2024-08-12 18:50:46'),
(9, 'Autem cumque aut voluptas blanditiis quibusdam iste at.', 'Quaerat est reiciendis maxime voluptatem quam ea omnis qui. Et quia eaque sunt sapiente dolorem ut. Quia rerum omnis corporis et molestiae sit.\n\nAmet quos laborum ipsam velit. Incidunt aut doloribus officiis provident. Et sint voluptates esse maiores et incidunt. Ab quia dolorem occaecati officiis voluptas.\n\nExplicabo porro assumenda recusandae. Quibusdam et voluptatum qui. Minima rerum autem reiciendis quibusdam accusamus nesciunt. Et eum repudiandae accusantium quas quo excepturi tempora. Commodi voluptatem deserunt tempore eius.', 7, 6, '2024-08-23 16:45:12', '2024-08-23 16:45:12'),
(10, 'Quo ipsam doloribus cum est quos.', 'Esse molestias omnis voluptatem consequatur. Ea architecto facilis expedita exercitationem fugiat reprehenderit. Totam nesciunt praesentium totam dolorem. Libero quis ducimus quidem minus dolor quo animi.\n\nEveniet quasi error ea. Amet qui et autem aut quo ut id quo. Est quia modi ut. Illum neque error minus corporis doloribus commodi.\n\nConsequatur et dignissimos nulla sed nostrum. A dolores perferendis aperiam qui nihil suscipit. Quos rerum vitae et. Omnis dolores est enim.', 0, 4, '2024-03-26 20:27:44', '2024-03-26 20:27:44'),
(11, 'Nihil facere aut repellat consequatur.', 'Veritatis adipisci vel magni beatae mollitia maiores. Architecto odit odio officiis commodi. Quisquam et doloremque voluptates aut voluptate quaerat. Repudiandae sit minima nihil maxime sequi.\n\nVelit deleniti corrupti molestiae quo nobis sequi ut. Ab qui et rerum dolorum.\n\nAliquid sit natus voluptas. Esse ad totam optio dicta temporibus. Et placeat eaque deserunt officia consequatur illum sit repudiandae.', 3, 10, '2023-12-28 06:15:14', '2023-12-28 06:15:14'),
(12, 'Aliquid harum labore sed ut provident sit explicabo qui.', 'Labore voluptates hic doloribus vitae et quos. Dolor est ut beatae eum magnam. Deleniti temporibus esse voluptate.\n\nMollitia eum nihil ut dolorem voluptatem. Aut corporis et culpa illo sed.\n\nSed voluptatem et vel vitae. Rerum autem sed iusto enim ut voluptatem maxime quia. Hic ipsam atque magni natus dolores. Sit eum et sed ut consequuntur vero.', 5, 8, '2024-04-19 06:48:45', '2024-04-19 06:48:45'),
(13, 'Facere asperiores et eaque recusandae.', 'Esse iste labore enim perferendis enim fugit rerum. Sed optio doloribus consequatur corporis quis. Est occaecati explicabo quaerat similique in nisi quaerat hic. Quis corrupti sunt et. Ex consequatur reprehenderit sunt explicabo.\n\nQuia iste et dolorum sint assumenda. Reprehenderit facere assumenda autem sit. Earum officia excepturi iste quas neque ut dolorum.\n\nPerferendis voluptatem recusandae fugiat aut est quia delectus. Consequatur consequatur voluptatem ipsum deserunt. Qui aspernatur enim ea quibusdam maiores est mollitia.', 5, 3, '2024-02-24 17:29:37', '2024-02-24 17:29:37'),
(14, 'Laudantium molestiae nulla possimus blanditiis vitae.', 'Illum sed repellendus architecto qui corrupti et consectetur. Totam quidem ipsa provident et autem iste et. Fugiat necessitatibus ducimus sequi itaque eius nobis inventore. Asperiores dolor necessitatibus quod itaque quis nostrum ut culpa.\n\nA nihil ullam similique possimus provident aut aut inventore. Numquam sequi sed illo atque vero veritatis molestiae. Nostrum ad facilis officia officiis iusto.\n\nDolorem placeat voluptatem accusamus dignissimos. Vero beatae et itaque temporibus necessitatibus vel. Odit ut fugiat possimus dolorem sequi reprehenderit.', 5, 3, '2024-05-27 15:54:47', '2024-05-27 15:54:47'),
(15, 'Aut eos ut voluptas ut aut perferendis voluptates.', 'Non consequuntur quos eligendi eligendi. Et non dolores soluta et. Inventore ut aspernatur deserunt quia laborum. Impedit sit officiis magnam perspiciatis recusandae qui maiores.\n\nVel maiores excepturi quod quod veniam. Rerum nesciunt qui eveniet autem autem placeat repellat. Harum ut quidem fugiat quia.\n\nEt nulla dignissimos asperiores quia illum velit. Enim facilis quia consequuntur quas repellat quia autem.', 6, 5, '2024-02-02 01:58:53', '2024-02-02 01:58:53');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_20_110655_create_cours_table', 1),
(6, '2024_08_26_112901_create_lessons_table', 1),
(7, '2024_08_28_153225_create_exercises_table', 1),
(8, '2024_09_06_155144_create_cour_user_table', 1),
(9, '2024_09_09_134942_create_quizzes_table', 1),
(10, '2024_09_09_134943_create_questions_table', 1),
(11, '2024_09_09_134944_create_answers_table', 1),
(12, '2024_09_09_135733_create_results_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cours_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'student',
  `date_de_naissance` date DEFAULT NULL,
  `lieu_de_naissance` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `date_de_naissance`, `lieu_de_naissance`, `sexe`, `age`, `profile_photo`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dominique Morel', 'ipereira@example.net', 'teacher', '2003-05-29', 'Charles', 'autre', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'qJz8Yn42q6', '2024-10-29 08:00:29', '2024-10-30 08:23:06'),
(2, 'Franck Baudry', 'antoine48@example.net', 'student', '1972-04-30', 'Gallet', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'w2UFMlcJow', '2024-10-29 08:00:29', '2024-10-29 08:00:29'),
(3, 'Robert Robin', 'aalexandre@example.com', 'teacher', '1998-10-22', 'Thomas-les-Bains', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'jja5rxO7Qi', '2024-10-29 08:00:29', '2024-10-30 08:23:03'),
(4, 'Emmanuel Perrot-Vasseur', 'alfred98@example.org', 'student', '2000-06-14', 'Humbert-sur-Fleury', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'Lj0DHgxpHy', '2024-10-29 08:00:29', '2024-10-29 08:00:29'),
(5, 'Zacharie Gillet', 'etienne.boucher@example.com', 'student', '1974-03-09', 'Guerin-sur-Mer', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'k35rLNNSM1', '2024-10-29 08:00:29', '2024-10-29 08:00:29'),
(6, 'Maryse Dijoux-David', 'tristan27@example.com', 'student', '1973-10-26', 'Delmas', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'csrsVrlApR', '2024-10-29 08:00:29', '2024-10-29 08:00:29'),
(7, 'Célina-Nath Boyer', 'nreynaud@example.net', 'student', '1977-06-16', 'Marion-les-Bains', 'autre', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', '8kmA4fcuWk', '2024-10-29 08:00:29', '2024-10-29 08:00:29'),
(8, 'Alexandre Lebreton', 'bertin.eugene@example.net', 'student', '1997-12-17', 'Lacombe', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'rIxLg7BMxo', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(9, 'Marc Chevallier', 'margaux90@example.com', 'student', '2019-10-26', 'Jacques', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'ls0yubFDNA', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(10, 'Virginie-Pénélope Blin', 'josephine96@example.com', 'teacher', '2004-11-07', 'Samson', 'femme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'wiS0xiGI6Y', '2024-10-29 08:00:30', '2024-10-30 08:23:10'),
(11, 'Xavier Ribeiro-Guillaume', 'vrobin@example.net', 'student', '1999-12-08', 'Moreau', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'kbVZDSU59G', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(12, 'Alex Perez-Labbe', 'suzanne.adam@example.com', 'student', '2000-02-01', 'Joseph', 'autre', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', '7nb4HTJjba', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(13, 'Gabrielle Marques', 'dominique49@example.org', 'teacher', '1971-05-08', 'Roussel-sur-Alexandre', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', '9gmUBuHIgW', '2024-10-29 08:00:30', '2024-10-30 08:23:15'),
(14, 'Martin Leveque', 'xdiaz@example.org', 'student', '2022-05-17', 'Paris', 'autre', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'NhNJYRA4CN', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(15, 'David Tessier', 'antoinette81@example.net', 'student', '2005-02-02', 'Durand-sur-Mer', 'autre', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'y128rBw3GT', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(16, 'Honoré Fabre', 'vfernandez@example.com', 'student', '2005-02-20', 'Courtois', 'autre', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', '3PdbZvcgEW', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(17, 'Pauline Louis', 'cpierre@example.net', 'student', '1986-03-28', 'David', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'gGARwfzIJk', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(18, 'Adrien Martel', 'tgilbert@example.net', 'student', '2023-03-06', 'Lamy', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'YCyIo8catN', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(19, 'Philippe de Ribeiro', 'ycordier@example.org', 'student', '1986-08-13', 'Laroche', 'femme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', 'b3cr866uLN', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(20, 'Virginie Morin', 'delattre.alain@example.com', 'student', '1980-12-22', 'Texier-la-Forêt', 'homme', NULL, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-10-29 08:00:29', '3TvoQGUZgj', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(21, 'perfect', 'lontsiparfait12@gmail.com', 'admin', '2006-03-12', 'Paris', 'homme', NULL, NULL, '$2y$10$oh97e1V8tHlxK.AoTFDARekDMgQ.RG.Bjxk4PH7JFXNxTrtp3GJ3W', '2024-10-29 08:00:30', 'f1ZuZCFXc9fyB8dyL8xpugA9QLLfzgmG9yGHyCbeRBMtsPT9ig0AJTLo2ao5', '2024-10-29 08:00:30', '2024-10-29 08:00:30'),
(22, 'dann', 'dann@gmail.com', 'teacher', '2006-10-30', 'Canada', 'homme', NULL, 'profile_photos/U8QYy9a6KVSBe4TC1Nf2db0GdbixfOoyXJqiLHLi.jpg', '$2y$10$1gyaGz1bS2FvKgwCPSzCf.Bq.aKj8ofBaiFvSL7H194eng59C.ARm', NULL, NULL, '2024-10-30 07:21:50', '2024-10-30 07:23:14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cour_user`
--
ALTER TABLE `cour_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cour_user_user_id_foreign` (`user_id`),
  ADD KEY `cour_user_cour_id_foreign` (`cour_id`);

--
-- Index pour la table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercises_cour_id_foreign` (`cour_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_cour_id_foreign` (`cour_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Index pour la table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_cours_id_foreign` (`cours_id`);

--
-- Index pour la table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`),
  ADD KEY `results_quiz_id_foreign` (`quiz_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `cour_user`
--
ALTER TABLE `cour_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cour_user`
--
ALTER TABLE `cour_user`
  ADD CONSTRAINT `cour_user_cour_id_foreign` FOREIGN KEY (`cour_id`) REFERENCES `cours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cour_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `exercises`
--
ALTER TABLE `exercises`
  ADD CONSTRAINT `exercises_cour_id_foreign` FOREIGN KEY (`cour_id`) REFERENCES `cours` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_cour_id_foreign` FOREIGN KEY (`cour_id`) REFERENCES `cours` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_cours_id_foreign` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
