
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- auto-generated definition
create table if not exists articles
(
    id           int auto_increment primary key,
    author       varchar(255) not null,
    title        varchar(255) not null,
    slug         varchar(255) not null,
    anons        longtext     not null,
    content      longtext     not null,
    publish_time datetime     not null,
    created_at   datetime     not null,
    updated_at   datetime     null
) ENGINE=InnoDB CHARSET=utf8;

INSERT INTO `crt-symfony-3`.articles (id, author, title, slug, anons, content, publish_time, created_at, updated_at) VALUES (1, 'vc.ru', 'До слова «термос» была компания Thermos', 'do-slova-termos-byla-kompaniya-thermos', 'История бренда, который внедрил новое слово и судился за него с другими. Всё началось с немца Рейнгольда Бургера — он взял придуманную Джеймсом Дьюаром вакуумную колбу и сделал из неё товар.', 'Всё началось с немца Рейнгольда Бургера — он взял придуманную Джеймсом Дьюаром вакуумную колбу и сделал из неё товар. С тех пор прошло больше ста лет, в которых были и суды, и экcперименты с новыми продуктами, и продажа Thermos.

В 1892 году шотландский химик Джеймс Дьюар изобрёл вакуумную колбу. Он работал со сжиженными газами и хотел сохранить их в жидком состоянии при помощи низких температур.

Для этого учёный использовал разработку немецкого физика Адольфа Фердинанда Вайнхольда — помещенные один в другой стеклянные сосуды без воздуха между ними. Разместив так колбы, он посеребрил их внутреннюю поверхность для теплоизоляции. Дьюар считал своё изобретение инструментом науки и коммерческого потенциала в нём не видел, поэтому не запатентовал его.', '2021-12-10 10:00:00', '2021-12-12 18:10:48', null);
INSERT INTO `crt-symfony-3`.articles (id, author, title, slug, anons, content, publish_time, created_at, updated_at) VALUES (2, 'vc.ru', 'Конкурировать с Amazon?', 'konkurirovat-s-amazon', 'Amazon — потенциально самый опасный конкурент и для мелкого предпринимателя, и для крупного производителя успешного товара.', 'Amazon — потенциально самый опасный конкурент и для мелкого предпринимателя, и для крупного производителя успешного товара. Начиная играть на его доске, нужно помнить, что правила могут поменяться в любую минуту и всегда это будут изменения в пользу Amazon. Подписывая соглашение о сотрудничестве, вы чуть ли не подписываете договор с дьяволом и разрешаете использовать данные о товаре и данные о своих продажах.

Использовать их для нечестной конкуренции и тем более копирования популярных товаров внутри компании как бы официально не приветствуется, но … Кто же устоит.

В компании Безоса видео с миллионными просмотрами заметили и, нет, не сняли копию с продажи, а только изменили название копии.

Если продавец понравившегося алгоритмам товара не является производителем, то дело еще проще. На специализированных форумах для продавцов есть множество историй как это происходит.

Amazon блокирует аккаунт, якобы за нарушение правил, и требует предоставить сканы документов закупки товара у производителя. Через несколько месяцев после предоставления документов, amazon вдруг сам выходит на свою же площадку с прямыми поставками от производителя.

Получается только производители товара могут чувствовать себя спокойно на маркетплейсе Amazon? – Тоже нет.', '2021-12-10 10:10:00', '2021-12-12 18:12:12', null);
INSERT INTO `crt-symfony-3`.articles (id, author, title, slug, anons, content, publish_time, created_at, updated_at) VALUES (3, 'vc.ru', 'Как VK GROUP воруют стартапы', 'kak-vk-group-voruyut-startapy', 'За историей, которую я хочу Вам поведать, стоит реальный человек, с личным, пусть и негативным, опытом. Если данный опыт поможет Вам избежать подобных ситуаций в будущем', 'За историей, которую я хочу Вам поведать, стоит реальный человек, с личным, пусть и негативным, опытом. Если данный опыт поможет Вам избежать подобных ситуаций в будущем — для меня это будет уже победа. Любое высказывание в данной публикации является моим личным субъективным мнением и оценочным суждением о людях, ситуациях, фактах.
Всем, привет! Перед тем, как начать «вторую часть Марлезонского балета», я бы хотел искренне и от души поблагодарить всех и каждого, кому оказалась небезразлична моя история. Мне написало большое количество людей. Кто-то делился своим опытом, кто-то давал юридические консультации, а кто-то рассказал о своём опыте «сотрудничества» с Эмином Агаларовым и Крокусом. Именно благодаря уважаемому сообществу я на себе почувствовал МОЩЬ общественного мнения, и то, насколько оно важно в любом вопросе. Недавно тут прочитал мнение о том, что VC.ru стала площадкой для ябед)) Скажу, что лично я так не считаю. Во-первых, просто так тут ныть никто не даст – тут ценятся конструктив и пруфы. Во-вторых, разве плохо, что в России есть площадка, где люди без призывов к экстремизму, желчи и мата (в основном) могут высказать свои мнение, рассказать свою историю или боль, и быть услышанными? Я на своей шкуре испытал, что значит противостоять мощному тяжёлому катку, до верху набитому кредитными купюрами. Если у тебя таких фантиков нет – он тебя закатает в асфальт. Но есть способ его остановить – просто нужно больше единомышленников.', '2021-12-10 10:20:00', '2021-12-12 18:13:02', null);
INSERT INTO `crt-symfony-3`.articles (id, author, title, slug, anons, content, publish_time, created_at, updated_at) VALUES (4, 'vc.ru', 'Мне нужны были приключения', 'mne-nuzhny-byli-priklyucheniya', '«Мне нужны были приключения»: серийный обманщик Джозеф Уэйл занимался мошенничеством 70 лет и 40 раз сидел в тюрьме', 'Он не смог реализовать детскую мечту стать актёром, но за всю жизнь сыграл «столько ролей, сколько среднему актёру и не снилось». Уэйл притворялся владельцем казино, главой банка, продавал бездомных собак и эликсир от ленточных червей.

Джозеф Уэйл родился в 1875 году в семье с немецкими и французскими корнями в Чикаго. Его родители владели бакалейной лавкой и, по словам самого Джозефа, были людьми с безупречной репутацией. После школы он помогал им, но часто отлынивал от работы и убегал на скачки, чтобы сделать ставки.

Уэйл сразу понял, что тяжёлая работа ему не подходит. «Я видел, как мои родители упорно борются за существование. Мама вставала в пять утра, чтобы открыть магазин, — я понял, что такая жизнь не для меня», — писал Уэйл в автобиографии. Он хотел быть актёром или журналистом, но в 17 лет бросил школу и стал коллектором.', '2021-12-10 10:30:00', '2021-12-12 18:13:56', null);
INSERT INTO `crt-symfony-3`.articles (id, author, title, slug, anons, content, publish_time, created_at, updated_at) VALUES (5, 'vc.ru', 'Весь кофе подорожает, капучино за 250 рублей будет нормой', 'ves-kofe-podorozhaet-kapuchino-za-250-rublej-budet-normoj', 'Весь кофе подорожает, капучино за 250 рублей будет нормой: почему рынок штормит не первый месяц и чего ждать в 2022 году', 'Основные причины — проблемы у ключевых стран-экспортёров и подорожание морских перевозок.

Чтобы произвести обжаренный кофе, нужно купить сырьё — зелёный кофе. Его получают так: ягоды выращивают фермеры, потом их обрабатывают (очищают зёрна и высушивают), затем экспортируют на другие рынки, а после обжаривают и расфасовывают.

В промышленных масштабах выращивают арабику и более дешёвую робусту — фьючерсы на них торгуются на бирже. Наиболее качественному кофе присуждается класс спешалти. Для этого специалист (Q-грейдер) оценивает качество зерна, аромат, вкус, кислотность и другие показатели.', '2021-12-10 10:40:00', '2021-12-12 18:15:13', null);
INSERT INTO `crt-symfony-3`.articles (id, author, title, slug, anons, content, publish_time, created_at, updated_at) VALUES (6, 'vc.ru', 'Каким банки видят малый и средний бизнес после пандемии', 'kakim-banki-vidyat-malyj-i-srednij-biznes-posle-pandemii', 'И какие изменения ожидаются в отношениях между предпринимателями и кредитными организациями.', 'И какие изменения ожидаются в отношениях между предпринимателями и кредитными организациями.
Две трети корпоративных клиентов банка «Уралсиб» за последние четыре месяца ни разу не посещали офисы, а малый бизнес за 9 месяцев получил столько же банковских гарантий, сколько за весь 2020 год. Что это говорит о банковском секторе страны и каких перемен стоит ждать в ближайшее время — рассказывает Евгений Абузов.', '2021-12-10 10:50:00', '2021-12-12 18:16:07', null);

-- auto-generated definition
create table if not exists users
(
    id       int auto_increment primary key,
    email    varchar(180) not null,
    roles    json         not null,
    password varchar(255) not null,
    name     varchar(255) not null,
    constraint UNIQ_1483A5E9E7927C74 unique (email)
) ENGINE=InnoDB CHARSET=utf8;

INSERT INTO `crt-symfony-3`.users (id, email, roles, password, name) VALUES (1, 'admin@mail.ru', '["ROLE_ADMIN"]', '$2y$13$ZtOMM7T5mpA6qNBuo3ZuS.W1RhWXWhN51DVeqbciUOGsv8PbdVHS.', 'admin');
INSERT INTO `crt-symfony-3`.users (id, email, roles, password, name) VALUES (2, 'manager@mail.ru', '["ROLE_EDITOR"]', '$argon2id$v=19$m=65536,t=4,p=1$MqzFN6RzYn8xnRmkqWjs2g$JiizY4EJxLGkREb4J4cbi6yhpYWbsFen1B5VR4lL6fY', 'manager');

-- auto-generated definition
create table if not exists migration_versions
(
    version     varchar(14) not null primary key,
    executed_at datetime    not null comment '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB CHARSET=utf8;

INSERT INTO `crt-symfony-3`.migration_versions (version, executed_at) VALUES ('20211206193139', '2021-12-12 14:56:43');
INSERT INTO `crt-symfony-3`.migration_versions (version, executed_at) VALUES ('20211210114910', '2021-12-12 15:07:39');
INSERT INTO `crt-symfony-3`.migration_versions (version, executed_at) VALUES ('20211210122407', '2021-12-12 14:56:43');

-- auto-generated definition
create table if not exists pages
(
    id         int auto_increment primary key,
    title      varchar(255) not null,
    text       longtext     not null,
    created_at datetime     not null,
    updated_at datetime     null
) ENGINE=InnoDB CHARSET=utf8;

INSERT INTO `crt-symfony-3`.pages (id, title, text, created_at, updated_at) VALUES (1, 'About Me', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe nostrum ullam eveniet pariatur voluptates odit, fuga atque ea nobis sit soluta odio, adipisci quas excepturi maxime quae totam ducimus consectetur?</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius praesentium recusandae illo eaque architecto error, repellendus iusto reprehenderit, doloribus, minus sunt. Numquam at quae voluptatum in officia voluptas voluptatibus, minus!</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut consequuntur magnam, excepturi aliquid ex itaque esse est vero natus quae optio aperiam soluta voluptatibus corporis atque iste neque sit tempora!</p>', '2021-12-12 18:49:11', '2021-12-12 21:56:09');
INSERT INTO `crt-symfony-3`.pages (id, title, text, created_at, updated_at) VALUES (2, 'Robots.txt', 'Disallow: /', '2021-12-12 21:56:33', null);

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;