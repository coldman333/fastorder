-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 26, 2013 at 03:01 AM
-- Server version: 5.1.46
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fastorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `cafe`
--

CREATE TABLE IF NOT EXISTS `cafe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `address` varchar(1024) NOT NULL,
  `locality` varchar(1000) NOT NULL,
  `district` varchar(1000) NOT NULL,
  `metro` varchar(1000) NOT NULL,
  `house` varchar(1000) NOT NULL,
  `placeXY` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `site` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `cafe`
--

INSERT INTO `cafe` (`id`, `name`, `address`, `locality`, `district`, `metro`, `house`, `placeXY`, `phone`, `comment`, `site`) VALUES
(2, 'Sepia Pub', 'Украина, Киев, Подольский район, улица Петра Сагайдачного, 8/10', 'Киев', 'Подольский район', 'метро Почтовая площадь', 'улица Петра Сагайдачного, 8/10', '50.46016612723745,30.52334650793426', '+38(044)425-45-35', '<p><span>Sepia Pub - это заведение, в котором Вы сможете отлично отдохнуть, насладиться прекрасным пивом и закусками к нему. Пива здесь множество сортов - всё оно свежее, вкусное, и заставляет призадуматься в выборе даже самого большого любителя этого напитка. Пиво здесь Чешское и Германское, есть в бутылках, и в бочонках, кроме этого Вам здесь предоставят пивные коктейли.</span></p>', 'http://www.sepiapub.com/'),
(4, 'Цимес', 'Украина, Киев, Подольский район, Игоревская улица, 5/10', 'Киев', 'Подольский район', 'метро Почтовая площадь', 'Игоревская улица, 5/10', '50.460501025500896,30.523133609786687', '+38(044)428-75-79', '<p>Вкусный еврейский ресторан с отличной домашней кухней</p>', 'http://cimes.com.ua/'),
(6, 'Сезам', '  Украина, Киев, Подольский район, Игоревская улица, 5a/10', 'Киев', 'Подольский район', 'метро Почтовая площадь', 'Игоревская улица, 5a/10', '50.460638,30.523316', '+38(044)425-18-62', '<p>Ресторан Сезам на Подоле</p>', 'http://www.sesamnapodol.kiev.ua/'),
(8, 'Dark Side', 'Украина, Киев, Подольский район, Игоревская улица, 14а', 'Киев', 'Подольский район', 'метро Почтовая площадь', 'Игоревская улица, 14а', '50.46080455383783,30.524283965606248', '+38(044)428-88-38', '<p>Первый украинский темный ресторан.</p>', 'http://www.darkside.kiev.ua/'),
(9, 'Dim Sum Asia caf?', 'Украина, Киев, Шевченковский район, улица Богдана Хмельницкого, 12', 'Киев', 'Шевченковский район', 'метро Театральная', 'улица Богдана Хмельницкого, 12', '50.445652585459946,30.516826119048673', '+38(044)592-88-11', '<span   Больше нет такого заведения </div>', 'http://www.dimsum.com.ua/'),
(14, 'Віденські булочки', 'Украина, Киев, Подольский район, ул. Сагайдачного Петра, 25б ', 'Киев', 'Подольский район', 'Почтовая площадь', 'ул. Сагайдачного Петра, 25б ', '50.46027867349612,30.5226515939173', '+38(044)498-33-53', '<p><span>В бекерай «Віденські булочки» Ви можете приємно провести час в затишній атмосфері за чашкою кави з неповторною вишуканою випічкою, а також перекусити, замовивши страви авторської кухні. В «Віденських булочках» представлені традиційні страви європейської кухні, для наших відвідувачів постійно діють спеціальні пропозиції на сніданок та обід.</span></p>', 'http://videnski-bulochky.com.ua/'),
(15, 'Таверна Вінштуб', 'Украина, Киев, Подольский район, ул. Андреевская, 9-а', 'Киев', 'Подольский район', 'Почтовая площадь', 'ул. Андреевская, 9-а', '50.461754574719315,30.522450542327807', '+38(044)428-83-70', '<p><span class="dropcap">Н</span>а одной из тихих подольских улочек находится замечательный ресторан - таверна "Винштуб". Прекрасный интерьер, гостеприимные официантки, музыка в исполнении аккордеониста и Вы сразу же забудете о суете и грохоте столицы. В ресторане 2 зала, один из них - зимний сад, который на лето превращается в прекрасную летнюю террасу. Сюда можно прийти побыть вдвоем, забежать с друзьями на кружечку пива, устроить банкет. Мы рады гостям. В меню ресторана - самая изысканная и вкусная еда.</p>\n<p><img class="floatimg" src="http://www.kontinent-card.com.ua/images/stories/vinshtubinterier/thumbs/thumb_Vinshtub16.jpg" alt="Винштуб" width="182px" height="136px" border="0" /></p>\n<p>Лучшие блюда эльзаской и <strong>французской кухни</strong>. Доброжелательная, спокойная, по-домашнему теплая атмосфера царит в Винштубе. Не даром здесь отдыхают знаменитые люди.</p>\n<p>Стоит один раз побывать в таверне Винштуб, и, безусловно, Вы станете ее постоянными посетителями!<br />Работаем каждый день с 11.00 до 23.00</p>', 'http://www.kontinent-card.com.ua/ru/vinwtub.html'),
(16, 'Піца Челентано', 'Украина, Киев, Печерский район, улица Евгения Коновальца, 44', 'Киев', 'Печерский район', 'метро Печерская', 'улица Евгения Коновальца, 44', '50.424354,30.541938', '+38(044)285-47-57', '<p><span>Ресторани швидкого обслуговування "Піца Челентано" завжди поруч, неподалік від дому чи офісу, в Вашому місті чи у відрядженні, в будні, свята і вихідні. На Вас чекають оригінальні інтер''єри, уважний персонал і незмінно позитивна атмосфера. Вам запропонують страви лише зі свіжих продуктів</span><span> Паста, млинці, салати, супи, напої, десерти та справжня кава. Всі страви створені, щоб вразити Ваш смак. </span></p>', 'http://pizza-celentano.com/'),
(17, 'Beer Point на Подоле', 'Украина, Киев, Подольский район, улица Верхний Вал, 24', 'Киев', 'Подольский район', 'метро Контрактовая площадь', 'улица Верхний Вал, 24', '50.465908,30.512887', '+38(044)377-54-44', 'Паб Beer Point на Подоле — это место где всегда можно скушать вкусный и сытный обед в приятной обстановке.', 'http://beerpoint.ua'),
(18, 'Приватна броварня Beer Bar', 'Украина, Киев, Подольский район, улица Верхний Вал, 24', 'Киев', 'Подольский район', 'метро Контрактовая площадь', 'улица Верхний Вал, 24', '50.465908,30.512887', '+38(044)379-18-33', 'Приватна броварня, пригостить вас смачним пивом, яке ми варимо в нашій пивоварні, та смачними ставами, української та європейської кухні.', 'http://beer-bar.kiev.ua/'),
(21, 'Эко-Буффет', '', '', '', '', '', '', '', '', ''),
(22, 'Эко-Буффет на Васильковской вегетарианское кафе', 'Украина, Киев, Голосеевский район, Васильковская улица, 28', 'Киев', 'Голосеевский район', 'метро Васильковская', 'Васильковская улица, 28', '50.394348,30.492333', '+38(067)362-41-08', 'Eco Buffet – это уютное вегетарианское кафе в Киеве, где Вы всегда сможете сытно покушать и зарядиться хорошим настроением.  Вы будете приятно удивлены тем, насколько разнообразной может быть вегетарианская кухня. \n\nВас заинтересовала вегетарианская диета или Вы уже являетесь вегетарианцем? Питание в нашем кафе несомненно убедит Вас в том, что вегетарианские блюда могут быть не только полезными и вкусными, но и очень питательными.\n\nМы готовим из чистых продуктов, добавляя свежее натуральное молоко с фермы. Поэтому наши блюда не только вкусны, но и полезны для здоровья.  \n\nНаши повара готовят с любовью, и Вы поймете это, кушая у нас. Ведь эмоции, с которыми готовится еда, действительно очень важны.\n\nБольшой акцент в приготовлении блюд мы делаем на сбалансированном и здоровом питании. Поэтому вегетарианская диета на основе нашего меню позволит Вам получать все необходимые для человека питательные вещества.\n\nЕда в нашем кафе не содержит мяса, рыбы и яиц. Вместо этого в меню есть много вкусных блюд с натуральными молочными продуктами, орехами и бобами.\n\nУ нас представлены блюда как для лакто-вегетарианцев, так и для веганов. Также мы рады приветствовать тех, кто только задумывается о переходе на вегетарианство или же просто решил перекусить в хорошем месте. Вы убедитесь в том, что вегетарианская кухня действительно вкусна, разнообразна и питательна.\n\nТакже мы осуществляем доставку вегетарианских блюд и обедов по Киеву, предоставляем услуги кейтеринга и предлагаем Вам участие  в  нашейнакопительной системе скидок.\n\nВ кафе работает WiFi интернет.\n\n\nВсегда рады приветствовать Вас в вегетарианском кафе Eco Buffet!', 'http://www.eco-buffet.com/'),
(23, 'Эко-Буффет на Петровке вегетарианское кафе', 'Украина, Киев, Оболонский район, Московский проспект, 23', 'Киев', 'Оболонский район', 'метро Петровка', 'Московский проспект, 23 г', '50.490029,30.496879', '+38(067)382-41-08', 'Eco Buffet – это уютное вегетарианское кафе в Киеве, где Вы всегда сможете сытно покушать и зарядиться хорошим настроением.  Вы будете приятно удивлены тем, насколько разнообразной может быть вегетарианская кухня. \n\nВас заинтересовала вегетарианская диета или Вы уже являетесь вегетарианцем? Питание в нашем кафе несомненно убедит Вас в том, что вегетарианские блюда могут быть не только полезными и вкусными, но и очень питательными.\n\nМы готовим из чистых продуктов, добавляя свежее натуральное молоко с фермы. Поэтому наши блюда не только вкусны, но и полезны для здоровья.  \n\nНаши повара готовят с любовью, и Вы поймете это, кушая у нас. Ведь эмоции, с которыми готовится еда, действительно очень важны.\n\nБольшой акцент в приготовлении блюд мы делаем на сбалансированном и здоровом питании. Поэтому вегетарианская диета на основе нашего меню позволит Вам получать все необходимые для человека питательные вещества.\n\nЕда в нашем кафе не содержит мяса, рыбы и яиц. Вместо этого в меню есть много вкусных блюд с натуральными молочными продуктами, орехами и бобами.\n\nУ нас представлены блюда как для лакто-вегетарианцев, так и для веганов. Также мы рады приветствовать тех, кто только задумывается о переходе на вегетарианство или же просто решил перекусить в хорошем месте. Вы убедитесь в том, что вегетарианская кухня действительно вкусна, разнообразна и питательна.\n\nТакже мы осуществляем доставку вегетарианских блюд и обедов по Киеву, предоставляем услуги кейтеринга и предлагаем Вам участие  в  нашейнакопительной системе скидок.\n\nВ кафе работает WiFi интернет.\n\n\nВсегда рады приветствовать Вас в вегетарианском кафе Eco Buffet!', 'http://www.eco-buffet.com'),
(24, 'Ресторан Кловский', 'Украина, Киев, Печерский район, улица Мечникова, 16а', 'Киев', 'Печерский район', 'метро Кловская', 'улица Мечникова, 16а', '50.436932,30.533674', '+38(067)941-82-68', 'Расположенный на одной из самых оживленных артерий Киева , в самом сердце города находится ресторан «Кловский». Он покорит Вас с первой минуты - комфортная обстановка, душевная атмосфера, лёгкая музыка и доброжелательный персонал подарят хорошее настроение на весь день.\n\nКаждый день, с 12.00 до 16.00 наш ресторан приглашает вас на домашние обеды. Любимые блюда, приготовленные с любовью, из экологически чистых отборных продуктов насытят и подарят вам заряд энергии на весь день.\n\nОсновой успешной девятилетней работы ресторана является индивидуальный подход к каждому клиенту, и это не просто слова - это стиль работы нашего дружного коллектива. Приходите и убедитесь!\n\nДля наших клиентов всегда готовы качественные домашние обеды, романтические ужины, банкетные мероприятия в лучших европейских традициях.\n\nМы радушно примем, как весёлую компанию так и тесный семейный круг, а также подарим романтический вечер всем влюблённым.', 'http://klovskiy.com.ua/'),
(25, 'Каве дель Вино', 'Украина, Киев, Шевченковский район, улица Александра Довженко, 10', 'Киев', 'Шевченковский район', 'метро Шулявская', 'улица Александра Довженко, 10', '50.458585,30.44766', '+38(044)458-23-81', 'Итальянских ресторанов в   Киеве много, правильных итальянских ресторанов – по пальцам, правильных итальянских ресторанов с правильными ценами и обслуживанием – и того меньше. А по правде, мы знаем такой один – ресторанчик «Каве дель Вино».\n\nКак и положено настоящему ресторану, тут в первую очередь хвастаются не помпезной хрустальной люстрой или статуей, привезенной из-за моря, а высокой гастрономической кухней.\n\nМеню обширно и разнообразно. Причем акцент сделан не только на пиццы, пасты и лазаньи, как это принято у нас. «Каве дель Вино» заставляет по-новому взглянуть на итальянскую кухню. Множество всевозможных салатов, закусок, рыбных и сырных блюд. И говоря об «итальянскости» кушаний, можно с уверенностью назвать их настоящими «сеньорами».\n\n50% скидка на разливное пиво в среду и воскресенье.\nЧасы фортуны.\nКаждый 7-ой ланч за 1 грн.\n20% скидка именинникам.\n50% скидка на алкогольные коктейли для девушек и женщин по субботам.', 'http://cave-dell-vino.kiev.ua/'),
(27, 'TOTO village cafe (Заведение закрито)', 'Украина, Киев, Шевченковский район, Красноармейская улица, 56', 'Киев', 'Шевченковский район', 'метро Олимпийская', 'Красноармейская улица, 56', '50.434361,30.515555', '+38(044)287-10-73', 'Деревенское кафе «ТоТо»  (Заведение закрито) на Красноармейской,56 : звучит легко, как перышко – выглядит миловидно.\r\n\r\nС грезами о загородном доме с зубчатым заборчиком и душистыми цветочками на белоснежных подоконниках можно повстречаться прямо посреди недели, и прямо в центре города, не выпадая надолго из рабочего графика. Это заведение магическим образом навевает беззаботное настроение и здоровый «деревенский» аппетит. Легкое кокетливое «ТоТо» собрало «сливки» вкусовых предпочтений киевлян и ненавязчиво замиксовало их в компактное, но содержательное меню.', 'http://totocafe.com.ua'),
(28, 'La Bodeguita del Medio', 'Украина, Киев, Шевченковский район, улица Ярославов Вал, 21/22', 'Киев', 'Шевченковский район', 'метро Золотые Ворота', 'улица Ярославов Вал, 21/22', '50.452127,30.508188', '+38(044)272-65-00', 'В Старой Гаване, в двух шагах от Гаванского Кафедрального Собора на улице Эмпедрадо, 207 в 1942 году некто Анхель Мартинес, открыл магазинчик «La Casa Martinez» (дом Мартинеса). Вскоре рядом с ним появилась типография Фелито Айоны.\n\nДеловой народ со всей Гаваны довольно часто посещал типографию, а старик Мартинес не был бы настолько успешным, если бы не поставил в своём магазинчике телефон, которого на предприятии Айоны не было, что и привлекло первых посетителей. Мартинес пошёл ещё дальше, и поставил несколько столиков, барную стойку – и вот уже есть где присесть, передохнуть, обсудить важные вопросы, заключить контракт, подписать бумаги, а заодно и пропустить стаканчик рома. Вероятно, и сам Анхель Мартинес не предполагал, во что перерастёт его гостеприимное место.', 'http://bodeguita.com.ua/?page_id=6136'),
(29, 'Пивна рестарація «Чорне порося»', 'Украина, Киев, Шевченковский район, Большая Житомирская улица, 8/14', 'Киев', 'Шевченковский район', 'метро Почтовая площадь', 'Большая Житомирская улица, 8/14', '50.455626,30.516848', '+38(067)434-70-77', 'Не прохрюкай бизнес-ланч в «Черном Поросенке»!\n\nСпешим обрадовать своих гостей прекрасной новостью:\n\nтеперь с 12.00 до 17.00 по будням наши гости смогут насладиться сытными и\n\nвкусными бизнес-ланчами на любой вкус!\n\nДля любителей легкого обеда предлагаем бизнес-ланч «Минимальны» (34 грн),\n\nв который входит первое блюдо, салат и узвар. Бизнес-ланч «Стандартный» (52 грн)\n\nсостоит из первого блюда, салата, горячей закуски и узвара, а любителям плотно поесть\n\nрекомендуем «Оптимальный» бизнес-ланч (79 грн), ведь в его состав входит салат,\n\nпервое блюдо, основное блюдо, гарнир, узвар.\n\nЧто же на самом деле вас ждет? Из салатов: домашний винегрет, свекольный салат\n\nс черносливом или салат из капусты с морковкой. Первые блюда представлены овощным\n\nсупом, борщом со сметаной или супом дня. Гарниры: картофельное пюре, отварная гречка\n\nили картофель, жаренный с луком. Горячие закуски – это блинчики с курицей, блинчики\n\nс творогом, омлет с помидорами и сыром или сырники со сметаной. А основные блюда –\n\nкотлеты куриные, отбивная из свинины или жареная рыба в кляре.\n\nС нетерпением ждем вас! Не прохрюкайте свое счастье!', 'http://chorne-porosya.com.ua'),
(33, 'Happy Chicken Grill', 'Украина, Киев, Подольский район, улица Петра Сагайдачного, 6', 'Киев', 'Подольский район', 'метро Почтовая площадь', 'улица Петра Сагайдачного, 6', '50.459783,30.523999', '+38(044)425-01-09', 'Вас приветствует всемирная  сеть аргентинских ресторанов гриль.\n\n"Хэппи Чикен Гриль" предлагает лучшие блюда латино - американской кухни от шеф - повара Хосе Антонио Руиза\nНа улице Сагайдочного 6-а, открылся новый ресторан Happy Chicken Grill.\n\nВ ресторане пять залов. Каждый из залов имеет свой интересный, захватывающий интерьер.\nЗдесь Вы можете поужинать вдвоем или назначить важную деловую встречу.', 'http://www.kontinent-card.com.ua/ru/happy-chicken-grill.html'),
(34, 'maLLina cafe', 'Украина, Киев, Подольский район, улица Петра Сагайдачного', 'Киев', 'Подольский район', 'метро Почтовая площадь', 'улица Петра Сагайдачного, 27Б', '50.461097,30.5216', '+38(067)238-62-29', 'Уютное, домашнее кафе с удобными диванами и шикарной летней террассой.', 'http://www.mallinaproject.com.ua'),
(36, 'Scorini Wonderland', 'Украина, Киев, Печерский район, улица Шота Руставели, 31', 'Киев', 'Печерский район', 'метро Дворец спорта', 'улица Шота Руставели, 31а', '50.437213,30.518762', '+38(044)289-78-12', '“Scorini Wonderland”  - уютный ресторанчик для поклонников  «Алисы в стране чудес», ценителей ароматного кофе, итальянской и европейской кухни и любителей всего необычного!\n?“Wonderland” находится в историческом центре Киев  на улице Шота Руставели, 31 А,  и ориентирован как на семейный отдых, так и на посиделки с друзьями и бизнес - партнерами. У нас  Вам гарантировано прекрасное настроение от встречи, празднования дня рождения, детского праздника.  \nМеню состоит из традиционных итальянских блюд с небольшими вкраплениями европейской кухни. Мы порадуем Вас полноценным предложением, начиная со всевозможных стейков, рыбных блюд и заканчивая десертами от шефа.\nМеню постоянно пополняется «вкусными» новинками от шефа, а также обновляется к каждому сезону. Наш талантливый шеф-повар идет гостям на встречу и прислушивается к Вашим пожеланиям.\nНаш ресторанчик предлагает для Вашего отдыха 2 зала: первый – воздушный и светлый с эффектом крытой террасы загородных имений конца 19-го, второй – более интимный, в глубоких тонах классической гостиной. Но оба они со сказочным флёром, навеянным произведениями Льюиса Кэрролла.  \nБольшинство деталей интерьера делались на заказ, включая «фирменных» кролей-бра, которые стали визитной карточкой заведения.\nМножество кованых элементов интерьера и экстерьера, плетущиеся застывшие ветви растений, сказочный фантазийный циферблат, старинный велосипед воплощены талантливым львовским мастером.\nТепло настоящего дерева, множество чудес и зазеркальных феерий ждут Вас\nна Шота Руставели, 31 А.\n\n?“Scorini Wonderland” -  пусть чудеса случаются', 'http://scoriniwonderland.com.ua'),
(37, 'Тюбетейка на Печерске', 'Украина, Киев, бульвар Леси Украинки, 34а', 'Киев', 'Печерский район', 'метро Дружбы Народов', 'бульвар Леси Украинки, 34а', '50.42140043691324,30.54363635316389', '+38(044)585-42-00', '"Тюбетейка" на Печерске - радушный островок Крыма в самом сердце стольного Киева. Ее теплая атмосфера очаровала не одно поколение гостей - в этот душевный ресторан, искусно сочетающий восточный уют и европейский сервис, приходят по самым разным поводам. В уютных кабинках главного зала, укрытых от гостей за полупрозрачными балдахинами, всегда можно приятно провести время в любимой компании. VIP-залы "Визирь", "Гарем" и "Шатер" прекрасно подходят как для дружеской вечеринки или семейного торжества, так и для деловых переговоров.  За чем бы вы сюда не пришли - на деловую встречу или сытный бизнес-ланч, дружеские посиделки или романтическое свидание, "Тюбетейка" примет вас тепло и с улыбкой -  как старого друга.\n\nТрадиционный лагман, шашлыки, манты, плов и, конечно, вкуснейшая пахлава - разнообразие меню позволит выбрать блюдо на любой вкус и прикоснуться к традициям такого красивого и самобытного Крыма. Но главная достопримечательность "Тюбетейки" - это, конечно же, исконно крымско-татарское блюдо - чебурек. Их здесь одиннадцать видов - на любой вкус: от острого с бараниной и сыром "Сулугуни" до сладкого с яблоком и ананасом.\n\nОтдельного внимания заслуживает музыкальная программа, ставшая в "Тюбетейке" доброй традицией, собирающей гостей каждый вечер со вторника по субботу насладиться за бокалом отменного вина любимой музыкой: от легендарных композиций, проверенных временем, до современных хитов, от мюзета до джаза… На сцене "Тюбетейки на Печерске" выступают бесподобный гитарист-виртуоз Энвер Измайлов, гениальный джазовый пианист Владимир Соляник, талантливый аккордеонист, лауреат ряда международных конкурсов Олег Микитюк, ВИА "Мелодия", кавер-бэнд "БангладешЪ Оркестр" и многие другие талантливые музыканты. Нельзя не упомянуть и о восточных красавицах, исполняющих танец живота.\n\n"Тюбетейка на Печерске" неизменно радушна и многолика, как и ее вдохновитель - солнечный Крым.\n\nОтдыхайте с "Тюбетейкой"! Здесь всегда вкусно и весело!', 'http://www.2k.ua/restaurants/catalog/tyubeteyka_na_pecherske/'),
(41, 'Хинкали', 'Украина, Киев, улица Шота Руставели, 4', 'Киев', 'Печерский район', 'метро Дворец спорта', 'улица Шота Руставели, 4', '50.440093,30.522013', '+38(044)234-06-92', '"Грузин без гостя - не грузин!" - считают в гостеприимном духане "Хинкали". Здешние обычаи поразят вас щедростью, размахом и добродушием, а о нашей темпераментной и многогранной кухне "с акцентом" в народе уже слагают легенды.\n\nКолоритный интерьер нашего заведения не оставит вас равнодушным. К вашим услугам - три основных и два VIP-зала, каждый из которых по-своему интересен и оригинален. В зале "Восточный" за открытой барной стойкой расположена шоу-кухня и барная зона, где можно воочию наблюдать секреты приготовления кавказских блюд и дегустировать вкуснейшие грузинские вина. В зале "Виноградник" царит комфорт и романтическое настроение. Помещение декорировано настоящим горным камнем, потолок заплетен виноградной лозой, а стены радуют глаз восточными коврами и национальными сувенирами. "Винный погреб" - уютный зал, получивший свое имя из-за огромного количества старинных винных бутылок, которые служат здесь основным элементом декора. А два VIP-зала - "Султанка" и "Княжеская беседка"- станут прекрасным местом для проведения переговоров, встречи с друзьями или семейного ужина.\n\nВ теплое время года навстречу гостям раскрывает объятия уютная летняя терраса. Она позволяет неспешно наблюдать за бурной жизнью столицы, наслаждаясь лучшими гастрономическими предложениями солнечной Грузии прямо в центре Киева, и дарит неповторимое ощущение покоя и умиротворения.\n\nЧем еще славится  духан "Хинкали", кроме традиционного кавказского гостеприимства и душевной компании? Правильно - вкуснейшими хинкали! Горячие, ароматные, из тонкого, почти прозрачного теста - они так и просятся в рот! Но это еще далеко не все, чем мы собираемся вас удивить. Меню заведения - это настоящий рог изобилия, из которого сказочным образом появляются грузинские сыры, кавказские специалитеты, вкуснейшие хачапури, чахохбили, шашлык, люля-кебаб… И множество других замечательных блюд, которые звучат мелодией для слуха и будоражат аппетит!\n\n"Захады, дарагой, Гостем будешь!"', 'http://www.2k.ua/restaurants/catalog/khinkali/');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE IF NOT EXISTS `dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cafeId` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `pictureName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cafeId` (`cafeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=391 ;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `cafeId`, `name`, `price`, `pictureName`) VALUES
(7, 4, 'свекольник (холодный суп) (250 г)', 47, NULL),
(42, 9, 'суп «Мисо»', 59, ''),
(43, 9, 'прозрачный суп с рисовой лапшой и соевыми проростками ', 49, NULL),
(54, 14, 'Бульйон курячий', 31, NULL),
(55, 14, 'Бульйон', 38, NULL),
(56, 14, 'Борщ', 43, NULL),
(57, 14, 'Бульйон курячий', 51, NULL),
(58, 14, 'Суп "Айзенський"', 51, NULL),
(59, 14, 'Борщ', 31, NULL),
(60, 14, 'Борщ', 31, NULL),
(61, 14, 'Суп "Айзенський"', 31, NULL),
(62, 14, 'Бульйон курячий', 31, NULL),
(63, 15, 'Борщ украЇнський;Курячий бульйон;Борщ зелений;Окрошка', 45, NULL),
(64, 16, 'Піца мала (салямі, помідори, гриби свіжі)', 27, NULL),
(65, 16, 'Піца мала (балик, ананаси, кукурудза)', 27, NULL),
(66, 16, 'Бульйон ', 27, NULL),
(67, 16, 'Крем-суп грибний', 27, NULL),
(68, 16, '«Потато Альфорно»', 27, NULL),
(70, 17, 'Окрошка; Борщ украинский; Суп с фрикадельками', 45, NULL),
(71, 18, 'Борщ український', 40, NULL),
(72, 18, 'Зелений борщ.  ', 40, NULL),
(73, 18, 'курячий бульйон з локшиною по-домашньому', 40, NULL),
(74, 18, 'грибной суп', 40, NULL),
(75, 18, 'уха рибна', 40, NULL),
(78, 4, 'Грибная юшка с фасолькой (250 г)', 54, NULL),
(79, 4, 'борщик красненький со сметаной (250 г)', 52, NULL),
(80, 4, 'крем-суп из тыквы (250 г)', 47, NULL),
(92, 2, 'Куриный бульон с фрикадельками ', 0, NULL),
(93, 2, 'Борщ зеленый ', 0, NULL),
(94, 22, ' Дал индийский суп; Крем-суп из брокколи; Сырный суп; Красный борщ', 38, NULL),
(95, 22, ' Дал индийский суп; Крем-суп из брокколи; Сырный суп; Красный борщ', 38, NULL),
(96, 22, ' Дал индийский суп; Крем-суп из брокколи; Сырный суп; Красный борщ', 38, NULL),
(97, 22, ' Дал индийский суп; Крем-суп из брокколи; Сырный суп; Красный борщ', 38, NULL),
(98, 2, 'Суп сырный ', 0, NULL),
(99, 2, 'Куриный супчик ', 0, NULL),
(100, 2, 'Суп  грибной', 0, NULL),
(101, 2, 'Борщ украинский', 0, NULL),
(103, 8, 'Суп из шампиньонов (200 г);Борщ зеленый (200 г)', 50, NULL),
(104, 2, 'Гороховый суп', 0, NULL),
(105, 2, 'Борщ укр ', 0, NULL),
(106, 2, 'Борщ зеленый ', 0, NULL),
(107, 2, 'Куриный супчик ', 0, NULL),
(108, 2, 'Суп  грибной ', 0, NULL),
(109, 2, 'Овощной суп ', 0, NULL),
(110, 2, 'Суп сырный ', 0, NULL),
(111, 2, 'Суп гречневый с грибами ', 0, NULL),
(112, 2, 'Гороховый суп', 0, NULL),
(113, 2, 'Борщ украинский', 0, NULL),
(114, 2, 'Борщ зеленый ', 0, NULL),
(115, 4, 'суп гороховый с гренками (250 г)', 54, NULL),
(116, 4, 'грибная юшка (250 г)', 52, NULL),
(117, 4, 'красный борщ со сметаной (250 г)', 47, NULL),
(118, 24, 'суп гороховий', 49, NULL),
(119, 24, 'солянка', 49, NULL),
(120, 24, 'бульйон з курки', 49, NULL),
(121, 24, 'розсольник', 49, NULL),
(122, 24, 'борщ українськи', 49, NULL),
(123, 25, 'салат з куркою (помідори, пекінська капуста, шампіньйони, петрушка, куряче філе, майонез) – 100', 35, NULL),
(124, 25, 'суп-пюре гороховий – 250', 35, NULL),
(125, 25, 'консоме з куркою – 250;', 35, NULL),
(126, 25, 'борщ – 250', 35, NULL),
(127, 25, '4онсоме з яйцем –.250', 35, NULL),
(128, 2, 'Суп сырный', 0, NULL),
(129, 2, 'Курин суп с фрикадельками', 0, NULL),
(130, 2, 'Борщ укр', 0, NULL),
(131, 2, 'Суп Гороховый', 0, NULL),
(132, 2, 'Борщ зеленый', 0, NULL),
(133, 27, 'Червоний  борщ; Мінестоне класичний; Курячий бульйон з яйцем; Крем-суп грибний', 45, ''),
(134, 2, 'Курин бульон', 0, NULL),
(135, 2, 'Суп сырный', 0, NULL),
(136, 2, 'Курин суп с субпрод', 0, NULL),
(137, 2, 'Борщ зеленый', 0, NULL),
(138, 2, 'Суп гречнев с грибами', 0, NULL),
(140, 2, 'Овощн суп', 0, NULL),
(145, 2, 'Борщ укр', 0, NULL),
(146, 2, 'Борщ зеленый', 0, NULL),
(147, 2, 'Суп сырный', 0, NULL),
(148, 2, 'Курин бульон', 0, NULL),
(149, 2, 'Борщ зеленый', 0, NULL),
(150, 2, 'Борщ укр', 0, NULL),
(151, 2, 'Суп сырный', 0, NULL),
(152, 2, 'Овощн суп', 0, NULL),
(153, 2, 'Борщ зеленый', 0, NULL),
(158, 2, 'Борщ укр', 0, NULL),
(159, 2, 'Суп гречнев с грибами', 0, NULL),
(160, 2, 'Курин бульон', 0, NULL),
(161, 2, 'Курин суп с субпрод', 0, NULL),
(162, 2, 'Овощн суп', 0, NULL),
(163, 2, 'Борщ укр', 0, NULL),
(164, 2, 'Борщ зеленый', 0, NULL),
(165, 2, 'Суп сырный', 0, NULL),
(166, 2, 'Борщ зеленый', 0, NULL),
(167, 2, 'Рыбный суп', 0, NULL),
(168, 2, 'Гороховый', 0, NULL),
(169, 2, 'Борщ укр', 0, NULL),
(170, 2, 'Борщ зеленый', 0, NULL),
(171, 4, 'рассольник с куриными потрошками (250 г)', 54, NULL),
(172, 4, 'куриный бульон (250 г)', 52, NULL),
(173, 4, 'борщ красный (250 г)', 47, NULL),
(174, 29, 'Борщ со сметаной; Овощной суп ; Суп дня', 0, NULL),
(175, 2, 'Борщ укр', 0, NULL),
(176, 2, 'Овощн суп', 0, NULL),
(177, 2, 'Борщ зеленый', 0, NULL),
(178, 2, 'Рыбный суп', 0, NULL),
(179, 2, 'Гороховый', 0, NULL),
(180, 24, 'борщ із закарпатськими грибами', 49, NULL),
(181, 24, 'капусняк', 49, NULL),
(182, 24, 'суп гороховий з крутонами', 49, NULL),
(183, 24, 'суп гречаний', 49, NULL),
(184, 24, 'борщ зелений', 49, NULL),
(185, 24, 'борщ зелений', 49, NULL),
(186, 2, 'Борщ зеленый', 0, NULL),
(187, 2, 'Курин суп с фрикадельками', 0, NULL),
(188, 2, 'Суп сырный', 0, NULL),
(189, 2, 'Борщ укр', 0, NULL),
(190, 2, 'Борщ зеленый', 0, NULL),
(191, 2, 'Борщ укр', 0, NULL),
(192, 2, 'Картоф суп с копч и зеленым горошком', 0, NULL),
(193, 2, 'Борщ зеленый', 0, NULL),
(194, 2, 'Рыбный суп', 0, NULL),
(195, 2, 'Суп гречнев с грибами', 0, NULL),
(196, 2, 'Овощн суп', 0, NULL),
(197, 2, ' Суп гречнев с грибами ', 0, NULL),
(198, 2, 'Курин супчик', 0, NULL),
(199, 2, 'Борщ зеленый', 0, NULL),
(200, 2, 'Суп сырный', 0, NULL),
(201, 2, 'Борщ укр', 0, NULL),
(202, 2, 'Курин суп с фрикадельками', 0, NULL),
(203, 2, 'Борщ укр', 0, NULL),
(204, 2, 'Овощн суп', 0, NULL),
(205, 2, 'Борщ зеленый', 0, NULL),
(206, 2, 'Суп сырный', 0, NULL),
(207, 2, 'Гороховый', 0, NULL),
(208, 2, 'Борщ зеленый', 0, NULL),
(209, 2, 'Рыбный суп', 0, NULL),
(210, 2, 'Борщ укр', 0, NULL),
(211, 2, 'Курин суп с фрикадельками', 0, NULL),
(212, 2, 'Солянка мясная', 0, NULL),
(213, 33, 'Суп зкурячими фрикадельками', 59, NULL),
(214, 33, 'Овочевий суп', 59, NULL),
(215, 33, 'Бульон курячий ', 59, NULL),
(216, 2, 'Борщ укр', 0, NULL),
(217, 2, 'Рыбный суп', 0, NULL),
(218, 2, 'Борщ зеленый', 0, NULL),
(219, 2, 'Гороховый', 0, NULL),
(220, 34, 'Борщ "Украинский" с пампушками и сметаной', 46, NULL),
(221, 34, 'Суп Харчо с телятиной', 59, NULL),
(222, 34, 'Крем-суп из овощей с крутонами', 49, NULL),
(223, 34, 'Суп с фрикадельками', 49, NULL),
(224, 34, 'Уха с лососем', 59, NULL),
(225, 2, 'Овощн суп', 0, NULL),
(226, 2, 'Рыбный суп', 0, NULL),
(227, 2, 'Солянка мясная', 0, NULL),
(228, 2, 'Суп  грибной', 0, NULL),
(229, 2, 'Суп сырный', 0, NULL),
(230, 2, 'Борщ зеленый', 0, NULL),
(231, 2, 'Курин суп ', 0, NULL),
(232, 2, 'Борщ укр', 0, NULL),
(233, 2, 'Овощн суп', 0, NULL),
(234, 2, 'Гороховый', 0, NULL),
(235, 2, 'Овощн суп', 0, NULL),
(236, 2, 'Рыбный суп', 0, NULL),
(237, 2, 'Борщ зеленый', 0, NULL),
(238, 2, 'Курин суп с фрикадельками', 0, NULL),
(239, 2, 'Борщ укр', 0, NULL),
(240, 2, 'Гороховый', 0, NULL),
(241, 2, 'Сырный суп', 0, NULL),
(242, 2, 'Борщ укр', 0, NULL),
(243, 2, 'Борщ зеленый', 0, NULL),
(244, 2, 'Курин суп', 0, NULL),
(247, 2, 'Овощн суп', 0, NULL),
(248, 2, 'Гороховый', 0, NULL),
(249, 2, 'Борщ укр', 0, NULL),
(250, 2, 'Сырный суп', 0, NULL),
(251, 2, 'Борщ зеленый', 0, NULL),
(252, 2, 'Борщ зеленый', 0, NULL),
(253, 2, 'Рыбный суп', 0, NULL),
(254, 2, 'Солянка мясная', 0, NULL),
(255, 2, 'Курин суп', 0, NULL),
(256, 2, 'Борщ укр', 0, NULL),
(257, 2, 'Юшка грибная', 0, NULL),
(258, 2, 'Гороховый', 0, NULL),
(259, 2, 'Борщ укр', 0, NULL),
(260, 2, 'Овощн суп', 0, NULL),
(261, 2, 'Борщ зеленый', 0, NULL),
(262, 2, 'Курин суп', 0, NULL),
(263, 2, 'Солянка мясная', 0, NULL),
(264, 2, 'Овощн суп', 0, NULL),
(265, 2, 'Борщ укр', 0, NULL),
(266, 2, 'Рыбный суп', 0, NULL),
(267, 2, 'Борщ зеленый', 0, NULL),
(268, 2, 'Борщ укр', 0, NULL),
(269, 2, 'Курин суп с фрикадельками', 0, NULL),
(270, 2, 'Гороховый', 0, NULL),
(271, 2, 'Суп сырный', 0, NULL),
(272, 2, 'Овощн суп', 0, NULL),
(273, 2, 'Курин суп', 0, NULL),
(274, 2, 'Солянка мясная', 0, NULL),
(275, 2, 'Сырный суп', 0, NULL),
(276, 2, 'Рыбный суп', 0, NULL),
(277, 2, 'Гороховый', 0, NULL),
(278, 2, 'Курин суп с фрикадельками', 0, NULL),
(279, 2, 'Рыбный суп', 0, NULL),
(280, 2, 'Сырный суп', 0, NULL),
(281, 2, 'Овощн суп', 0, NULL),
(282, 2, 'Борщ укр', 0, NULL),
(283, 2, 'Овощн суп', 0, NULL),
(284, 2, 'Курин суп ', 0, NULL),
(285, 2, 'Рыбный суп', 0, NULL),
(286, 2, 'Борщ зеленый', 0, NULL),
(287, 2, 'Курин суп с фрикадельками', 0, NULL),
(288, 2, 'Овощн суп', 0, NULL),
(289, 2, 'Борщ укр', 0, NULL),
(290, 2, 'Рыбный суп', 0, NULL),
(291, 2, 'Борщ зеленый', 0, NULL),
(292, 2, 'Борщ укр', 0, NULL),
(293, 2, 'Гороховый', 0, NULL),
(294, 2, 'Овощн суп', 0, NULL),
(295, 2, 'Сырный суп', 0, NULL),
(296, 36, 'Куриный бульон или красный борщ', 45, NULL),
(297, 2, 'Борщ укр', 0, NULL),
(298, 2, 'Рассольник', 0, NULL),
(299, 2, 'Рыбный суп', 0, NULL),
(300, 2, 'Борщ зеленый', 0, NULL),
(301, 2, 'Гороховый', 0, NULL),
(302, 2, 'Овощн суп', 0, NULL),
(303, 2, 'Борщ укр', 0, NULL),
(304, 2, 'Юшка грибная', 0, NULL),
(305, 2, 'Борщ зеленый', 0, NULL),
(306, 2, 'Суп гречнев с грибами', 0, NULL),
(307, 33, 'Суп Овочевий; Бульойн курячий; Суп з рибою ', 40, NULL),
(308, 2, 'Рыбный суп', 0, NULL),
(309, 2, 'Курин суп с фрикадельками', 0, NULL),
(310, 2, 'Овощн суп', 0, NULL),
(311, 2, 'Борщ зеленый', 0, NULL),
(312, 2, 'Юшка грибная', 0, NULL),
(313, 2, 'Борщ зеленый', 0, NULL),
(314, 2, 'Борщ укр', 0, NULL),
(315, 2, 'Юшка грибная', 0, NULL),
(316, 2, 'Гороховый', 0, NULL),
(317, 2, 'Суп сырный', 0, NULL),
(318, 2, 'Рыбный суп', 0, NULL),
(319, 2, 'Борщ укр', 0, NULL),
(320, 2, 'Овощн суп', 0, NULL),
(321, 2, 'Курин суп ', 0, NULL),
(323, 2, 'Сырный суп', 0, NULL),
(324, 2, 'Юшка грибная', 0, NULL),
(325, 2, 'Рыбный суп', 0, NULL),
(326, 2, 'Борщ зеленый', 0, NULL),
(327, 2, 'Борщ зеленый', 0, NULL),
(328, 2, 'Сырный суп', 0, NULL),
(329, 2, 'Овощн суп', 0, NULL),
(330, 2, 'Борщ укр', 0, NULL),
(331, 2, 'Рыбный суп', 0, NULL),
(332, 2, 'Курин суп ', 0, NULL),
(333, 2, 'Борщ зеленый', 0, NULL),
(334, 2, 'Овощн суп', 0, NULL),
(335, 2, 'Борщ зеленый', 0, NULL),
(336, 2, 'Гороховый', 0, NULL),
(337, 33, ' Суп з рибою ', 40, NULL),
(338, 33, 'Борщ', 40, NULL),
(339, 33, ' Бульойн курячий', 40, NULL),
(340, 33, 'Борщ', 40, NULL),
(341, 2, 'Курин суп ', 0, NULL),
(342, 2, 'Борщ зеленый', 0, NULL),
(343, 2, 'Рыбный суп', 0, NULL),
(344, 2, 'Борщ укр', 0, NULL),
(345, 2, 'Овощн суп', 0, NULL),
(346, 2, 'Юшка грибная', 0, NULL),
(347, 2, 'Солянка мясная', 0, NULL),
(348, 2, 'Гороховый', 0, NULL),
(349, 2, 'Курин суп с фрикадельками', 0, NULL),
(350, 2, 'Сырный суп', 0, NULL),
(351, 2, 'Борщ укр', 0, NULL),
(352, 2, 'Борщ зеленый', 0, NULL),
(353, 2, 'Рыбный суп', 0, NULL),
(354, 2, 'Гороховый', 0, NULL),
(355, 2, 'Юшка грибная', 0, NULL),
(356, 2, 'Овощн суп', 0, NULL),
(357, 2, 'Рыбный суп', 0, NULL),
(358, 2, 'Борщ укр', 0, NULL),
(359, 2, 'Борщ укр', 0, NULL),
(360, 2, 'Курин суп ', 0, NULL),
(361, 2, 'Овощн суп', 0, NULL),
(362, 2, 'Борщ зеленый', 0, NULL),
(363, 2, 'Рыбный суп', 0, NULL),
(364, 2, 'Рассольник', 0, NULL),
(365, 2, 'Овощн суп', 0, ''),
(366, 2, 'Борщ укр', 0, NULL),
(367, 2, 'Борщ зеленый', 0, NULL),
(368, 2, 'Борщ зеленый', 0, NULL),
(369, 2, 'Овощн суп', 0, NULL),
(370, 2, 'Курин суп с фрикадельками', 0, NULL),
(371, 2, 'Борщ укр', 0, NULL),
(372, 2, 'Рыбный суп', 0, NULL),
(373, 2, 'Курин суп с фрикадельками', 0, NULL),
(374, 2, 'Борщ зеленый', 0, NULL),
(375, 2, 'Гороховый', 0, NULL),
(376, 2, 'Борщ укр', 0, NULL),
(377, 2, 'Юшка грибная', 0, NULL),
(378, 37, 'Суп куриный с домашней лапшой и фрикадельками', 52, NULL),
(379, 37, 'Лагман', 75, NULL),
(380, 41, '', 50, NULL),
(381, 41, '', 79, NULL),
(382, 41, '', 79, NULL),
(385, 28, 'Окрошка на квасе;Крем-суп из брокколи;Борщ', 0, '/templates/casomerimg/l23.jpg'),
(386, 2, 'Борщ укр', 0, ''),
(387, 2, 'Овощн суп', 0, ''),
(388, 2, 'Борщ зеленый', 0, ''),
(389, 2, 'Юшка грибная', 0, ''),
(390, 2, 'Курин суп', 0, '');
