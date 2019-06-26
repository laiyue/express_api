-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-05-07 10:23:21
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readbook`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_books`
--

CREATE TABLE `tb_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_title` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `kind_ids` varchar(40) DEFAULT NULL,
  `kind_names` varchar(40) DEFAULT NULL,
  `book_author_ids` varchar(100) DEFAULT NULL,
  `book_author_names` varchar(255) DEFAULT NULL,
  `add_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_books`
--

INSERT INTO `tb_books` (`id`, `book_id`, `book_title`, `url`, `img_url`, `kind_ids`, `kind_names`, `book_author_ids`, `book_author_names`, `add_date`) VALUES
(1, 108430815, '摇滚侦探', '/ebook/108430815/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108430815.jpg?v=1552635833', '508,', '悬疑,', '/author/63740042/,', '杨林,', '2019-05-04'),
(2, 58580961, '乌合之众', '/ebook/58580961/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/58580961.jpg?v=0', '504,', '都市,', '/author/63694770/,', '青斜,', '2019-05-04'),
(3, 58299442, '非讼之战', '/ebook/58299442/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/58299442.jpg?v=0', '513,', '职业,', '/author/63744831/,', '金牙太太,', '2019-05-04'),
(4, 108170826, '骗子李三', '/ebook/108170826/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108170826.jpg?v=1552027429', '508,', '悬疑,', '/author/63720254/,', '咸良,', '2019-05-04'),
(5, 108959731, '另类女医生', '/column/31484010/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31484010.jpg?v=1552900943', '501,', '言情女性,', '/author/63749463/,', '刀豆,', '2019-05-04'),
(6, 59008628, '桐花落尽', '/column/8606510/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8606510.jpg?v=1548994943', '510,', '历史,', '/author/63705425/,', '第九杯茶,', '2019-05-04'),
(7, 59245055, '贤媛', '/column/8619604/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8619604.jpg?v=1548988799', '501,', '言情女性,', '/author/47373104/,', '易难,', '2019-05-04'),
(8, 106407152, '女神蒙上眼', '/column/31320626/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31320626.jpg?v=1548989164', '501,', '言情女性,', '/author/63744831/,', '金牙太太,', '2019-05-04'),
(9, 51138435, '山青卷白云：女翻译与王维', '/column/8239935/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8239935.jpg?v=1548931246', '510,', '历史,', '/author/63713338/,', '青溪客,', '2019-05-04'),
(10, 109266888, '蓝嘴唇的秘密', '/ebook/109266888/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/109266888.jpg?v=1554365423', '508,', '悬疑,', '/author/63693192/,', '巴愚,', '2019-05-04'),
(11, 108977077, '别和炮友谈恋爱', '/ebook/108977077/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/108977077.jpg?v=1552271470', '504,', '都市,', '/author/63695893/,', '龙树,', '2019-05-04'),
(12, 109187616, '蜉蝣', '/ebook/109187616/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/109187616.jpg?v=1553851620', '503,', '文艺,', '/author/63751294/,', '侯张,', '2019-05-04'),
(13, 109513747, '一步登天', '/ebook/109513747/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/109513747.jpg?v=1553851751', '508,', '悬疑,', '/author/63695683/,', '陆肚脐,', '2019-05-04'),
(14, 108136096, '阴阳侦探社 I', '/ebook/108136096/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108136096.jpg?v=1556640405', '508,', '悬疑,', '/author/2938440/,', '袋鼠花,', '2019-05-04'),
(15, 109132090, '二叔的碎花裙', '/ebook/109132090/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/109132090.jpg?v=1554088045', '503,', '文艺,', '/author/63731438/,', '王措,', '2019-05-04'),
(16, 108719257, '生活没有太多眼前的苟且', '/column/31470517/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/31470517.jpg?v=1556603005', '501,', '言情女性,', '/author/63712875/,', '王食欲,', '2019-05-04'),
(17, 107095261, '树欲静', '/column/31371555/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31371555.jpg?v=1549866740', '501,', '言情女性,', '/author/63737411/,', '叶眉,', '2019-05-04'),
(18, 108101989, '处刑人', '/column/31434748/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/31434748.jpg?v=1551431084', '508,', '悬疑,', '/author/63720083/,', '艾石,', '2019-05-04'),
(19, 60898836, '不是人', '/column/8724366/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8724366.jpg?v=1553851804', '508,', '悬疑,', '/author/2938440/,', '袋鼠花,', '2019-05-04'),
(20, 107487902, '朋友圈 II', '/column/31394871/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31394871.jpg?v=1552556710', '501,', '言情女性,', '/author/63728371/,', '王平常,', '2019-05-04'),
(21, 108959731, '另类女医生', '/column/31484010/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31484010.jpg?v=1552900943', '501,', '言情女性,', '/author/63749463/,', '刀豆,', '2019-05-04'),
(22, 60898836, '不是人', '/column/8724366/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8724366.jpg?v=1553851804', '508,', '悬疑,', '/author/2938440/,', '袋鼠花,', '2019-05-04'),
(23, 59008628, '桐花落尽', '/column/8606510/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8606510.jpg?v=1548994943', '510,', '历史,', '/author/63705425/,', '第九杯茶,', '2019-05-04'),
(24, 59245055, '贤媛', '/column/8619604/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8619604.jpg?v=1548988799', '501,', '言情女性,', '/author/47373104/,', '易难,', '2019-05-04'),
(25, 108101989, '处刑人', '/column/31434748/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/31434748.jpg?v=1551431084', '508,', '悬疑,', '/author/63720083/,', '艾石,', '2019-05-04'),
(26, 107095261, '树欲静', '/column/31371555/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31371555.jpg?v=1549866740', '501,', '言情女性,', '/author/63737411/,', '叶眉,', '2019-05-04'),
(27, 107047673, '高跟鞋与粉笔头', '/column/31368244/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31368244.jpg?v=1554687262', '501,', '言情女性,', '/author/63710483/,', '李泊文,', '2019-05-04'),
(28, 108342413, '女人往事', '/column/31450742/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31450742.jpg?v=1554359582', '501,', '言情女性,', '/author/63695308/,', '喻瑾,', '2019-05-04'),
(29, 108121195, '夏空之城', '/column/31436658/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/31436658.jpg?v=1555468927', '501,', '言情女性,', '/author/63687594/,', '东经以西,', '2019-05-04'),
(30, 107231927, '暗黑童影', '/column/31380056/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31380056.jpg?v=1553235868', '508,', '悬疑,', '/author/63699570/,', '蓝摇,', '2019-05-04'),
(31, 38350623, '六姊妹', '/column/7364024/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/5b3a221c7d4745f1ad8d2a35a05a960c.jpg', '501,', '言情女性,', '/author/33900749/,', '伊北,', '2019-05-04'),
(32, 42790903, '命运回路 长篇版', '/column/7711961/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/7711961.jpg?v=1552016846', '508,', '悬疑,', '/author/63737113/,', '申子辰,', '2019-05-04'),
(33, 50086360, '南华曲', '/column/8180834/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8180834.jpg?v=1548931328', '510,', '历史,', '/author/63744831/,', '金牙太太,', '2019-05-04'),
(34, 50027072, '我和我的佛系老公', '/column/8176627/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/8176627.jpg?v=1548994973', '501,', '言情女性,', '/author/63744831/,', '金牙太太,', '2019-05-04'),
(35, 60720929, '罗宋探案：天使', '/column/8713623/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8713623.jpg?v=1550824688', '508,', '悬疑,', '/author/63709571/,', '空城,', '2019-05-04'),
(36, 60407730, '饕餮之囚', '/column/8691108/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/8691108.jpg?v=1550823772', '508,', '悬疑,', '/author/63731240/,', '九介先生,', '2019-05-04'),
(37, 47436317, '希希：咨询之路', '/column/8021674/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/a91e697c09764aaebd0cdb47680ff4cc.jpg', '501,', '言情女性,', '/author/63694963/,', '刘玥,', '2019-05-04'),
(38, 55892281, '万物为谁春', '/column/8484975/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8484975.jpg?v=1548994866', '501,', '言情女性,', '/author/63748262/,', '〔香港〕王美雪,', '2019-05-04'),
(39, 57510013, '少年，我爱你', '/column/8550683/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/57462306168e4c34b1b689a6d3fdde27.jpg', '501,', '言情女性,', '/author/63751835/,', '南黑,', '2019-05-04'),
(40, 54385716, '月光谣', '/column/8402601/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/0b0fb72d8e174d568653c4f71cc74a9a.jpg', '510,', '历史,', '/author/63691688/,', '十三月,', '2019-05-04'),
(41, 108121195, '夏空之城', '/column/31436658/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/31436658.jpg?v=1555468927', '501,', '言情女性,', '/author/63687594/,', '东经以西,', '2019-05-04'),
(42, 110800958, '死亡之后的噩梦', '/column/31853124/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/0849f5e7e0744f8a905fa90fa02f9db4.jpg', '508,', '悬疑,', '/author/63761127/,', '刑天 唐伯志,', '2019-05-04'),
(43, 110712280, '五月花', '/column/31838604/', 'https://img3.doubanio.com/f/ark/6733311dca03d7fd6872e3c91351e089cd3e907a/pics/ark/cover/column_banner/cover1.png', '501,', '言情女性,', '/author/63745238/,', '鲸默,', '2019-05-04'),
(44, 112199407, '浮岛战记', '/column/32201627/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/3a4688cc917f4e92a72de9647e6f015f.jpg', '505,', '科幻幻想,', '/author/63763279/,', '韩小点,', '2019-05-04'),
(45, 111414918, '《毕业后的那些事儿》', '/column/31972857/', 'https://img3.doubanio.com/f/ark/2fe666362666054a44db1a8f5db51571e50c6dc2/pics/ark/cover/column_banner/cover4.png', '503,', '文艺,', '/author/63762183/,', '途留声,', '2019-05-04'),
(46, 111324085, '少年，请你优雅', '/column/31955099/', 'https://img1.doubanio.com/f/ark/a656a382ffb2c41cba072614cc82f680c46d715f/pics/ark/cover/column_banner/cover8.png', '505,', '科幻幻想,', '/author/63762032/,', '安三的猫,', '2019-05-04'),
(47, 110911381, '木易时代', '/column/31870451/', 'https://img3.doubanio.com/f/ark/61aca02dfc272d594f0ade4697f92905ace89abb/pics/ark/cover/column_banner/cover5.png', '503,', '文艺,', '/author/63722446/,', '朱花,', '2019-05-04'),
(48, 110731335, '浮萍烟雨录', '/column/31841634/', 'https://img3.doubanio.com/f/ark/6733311dca03d7fd6872e3c91351e089cd3e907a/pics/ark/cover/column_banner/cover1.png', '507,', '武侠,', '/author/63761040/,', '林繁,', '2019-05-04'),
(49, 112598476, '地图小说', '/column/32207718/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/a8192c35a40942a5b2d7e4b289d65ca9.jpg', '503,', '文艺,', '/author/63707683/,', '红了樱小桃,', '2019-05-04'),
(50, 111481260, '当重生PK伪重生', '/column/31990276/', 'https://img3.doubanio.com/f/ark/aa21e4ec820bef40a6986ef27c6b8cec36d0da78/pics/ark/cover/column_banner/cover6.png', '501,', '言情女性,', '/author/63762314/,', '一起跳舞,', '2019-05-04'),
(51, 58731575, '逃离热岛', '/ebook/58731575/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/58731575.jpg?v=0', '503,', '文艺,', '/author/63688264/,', '东来,', '2019-05-04'),
(52, 109132090, '二叔的碎花裙', '/ebook/109132090/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/109132090.jpg?v=1554088045', '503,', '文艺,', '/author/63731438/,', '王措,', '2019-05-04'),
(53, 109187616, '蜉蝣', '/ebook/109187616/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/109187616.jpg?v=1553851620', '503,', '文艺,', '/author/63751294/,', '侯张,', '2019-05-04'),
(54, 108550975, '鼠患', '/ebook/108550975/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108550975.jpg?v=1552632187', '503,', '文艺,', '/author/63736745/,', '蝉,', '2019-05-04'),
(55, 56896721, '我要告诉我妈妈', '/ebook/56896721/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/56896721.jpg?v=0', '503,', '文艺,', '/author/63717354/,', '辽京,', '2019-05-04'),
(56, 109205626, '盲的鱼', '/ebook/109205626/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/109205626.jpg?v=1555300137', '503,', '文艺,', '/author/63690313/,', '省涛,', '2019-05-04'),
(57, 108623881, '银河列车', '/ebook/108623881/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108623881.jpg?v=1552641361', '503,', '文艺,', '/author/63730850/,', '在野,', '2019-05-04'),
(58, 109499412, '像正常人一样恋爱', '/ebook/109499412/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/109499412.jpg?v=1553593988', '503,', '文艺,', '/author/63739036/,', '静倪花,', '2019-05-04'),
(59, 55221817, '模特', '/ebook/55221817/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/55221817.jpg?v=1548063882', '503,', '文艺,', '/author/63717354/,', '辽京,', '2019-05-04'),
(60, 57904166, '白昼长', '/ebook/57904166/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/57904166.jpg?v=0', '503,', '文艺,', '/author/63697975/,', '隐盏,', '2019-05-04'),
(61, 108959731, '另类女医生', '/column/31484010/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31484010.jpg?v=1552900943', '501,', '言情女性,', '/author/63749463/,', '刀豆,', '2019-05-04'),
(62, 59245055, '贤媛', '/column/8619604/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8619604.jpg?v=1548988799', '501,', '言情女性,', '/author/47373104/,', '易难,', '2019-05-04'),
(63, 107095261, '树欲静', '/column/31371555/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31371555.jpg?v=1549866740', '501,', '言情女性,', '/author/63737411/,', '叶眉,', '2019-05-04'),
(64, 107047673, '高跟鞋与粉笔头', '/column/31368244/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31368244.jpg?v=1554687262', '501,', '言情女性,', '/author/63710483/,', '李泊文,', '2019-05-04'),
(65, 108342413, '女人往事', '/column/31450742/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31450742.jpg?v=1554359582', '501,', '言情女性,', '/author/63695308/,', '喻瑾,', '2019-05-04'),
(66, 108121195, '夏空之城', '/column/31436658/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/31436658.jpg?v=1555468927', '501,', '言情女性,', '/author/63687594/,', '东经以西,', '2019-05-04'),
(67, 109008213, '我们的结婚时代', '/column/31486396/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31486396.jpg?v=1553852328', '501,', '言情女性,', '/author/63743507/,', '昆仑,', '2019-05-04'),
(68, 51801526, '漫漫知何处', '/column/8270063/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8270063.jpg?v=1548994798', '501,', '言情女性,', '/author/63743625/,', '折耳,', '2019-05-04'),
(69, 108324912, '颍河村的女人', '/column/31449443/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31449443.jpg?v=1551769628', '501,', '言情女性,', '/author/63702425/,', '肖尔布拉克,', '2019-05-04'),
(70, 107842511, '那年年华，乔远不见', '/column/31416798/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/ebfcf7cb363146f8853abaa456d86428.jpg', '501,', '言情女性,', '/author/63757193/,', '西辰姑娘,', '2019-05-04'),
(71, 109291700, '最后的观察者', '/ebook/109291700/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/109291700.jpg?v=1554086018', '505,', '科幻幻想,', '/author/63718261/,', '石奕,', '2019-05-04'),
(72, 58785329, '沉默的山神', '/ebook/58785329/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/58785329.jpg?v=0', '505,', '科幻幻想,', '/author/63752022/,', '杨辰,', '2019-05-04'),
(73, 57758746, '俱乐部“棋”妙夜', '/ebook/57758746/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/57758746.jpg?v=0', '505,', '科幻幻想,', '/author/63712870/,', '狂奔的提琴,', '2019-05-04'),
(74, 106657948, '前往未知之地', '/ebook/106657948/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/106657948.jpg?v=1547805882', '505,', '科幻幻想,', '/author/63688160/,', 'noc,', '2019-05-04'),
(75, 58013733, '谋杀我的完美偶像', '/ebook/58013733/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/58013733.jpg?v=0', '505,', '科幻幻想,', '/author/63703283/,', 'Yohi,', '2019-05-04'),
(76, 109819423, '雪骑：枯黄年代', '/ebook/109819423/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/109819423.jpg?v=1554282803', '505,', '科幻幻想,', '/author/63717844/,', 'POPO,', '2019-05-04'),
(77, 50153811, '失常', '/ebook/50153811/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/50153811.jpg?v=0', '505,', '科幻幻想,', '/author/63744939/,', '狼山胡骑,', '2019-05-04'),
(78, 106366682, '直立行走的兔子', '/ebook/106366682/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/106366682.jpg?v=1547798204', '505,', '科幻幻想,', '/author/63703015/,', '庆宇,', '2019-05-04'),
(79, 106510529, '纸新娘', '/ebook/106510529/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/106510529.jpg?v=1550228717', '505,', '科幻幻想,', '/author/63712630/,', '猫叔,', '2019-05-04'),
(80, 36465428, '幽灵女孩', '/ebook/36465428/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/36465428.jpg?v=1552631879', '505,', '科幻幻想,', '/author/63722931/,', '虫子游戈,', '2019-05-04'),
(81, 108430815, '摇滚侦探', '/ebook/108430815/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108430815.jpg?v=1552635833', '508,', '悬疑,', '/author/63740042/,', '杨林,', '2019-05-04'),
(82, 108170826, '骗子李三', '/ebook/108170826/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108170826.jpg?v=1552027429', '508,', '悬疑,', '/author/63720254/,', '咸良,', '2019-05-04'),
(83, 108136096, '阴阳侦探社 I', '/ebook/108136096/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108136096.jpg?v=1556640405', '508,', '悬疑,', '/author/2938440/,', '袋鼠花,', '2019-05-04'),
(84, 109513747, '一步登天', '/ebook/109513747/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/109513747.jpg?v=1553851751', '508,', '悬疑,', '/author/63695683/,', '陆肚脐,', '2019-05-04'),
(85, 109266888, '蓝嘴唇的秘密', '/ebook/109266888/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/109266888.jpg?v=1554365423', '508,', '悬疑,', '/author/63693192/,', '巴愚,', '2019-05-04'),
(86, 108135563, '绿脚医生 I', '/ebook/108135563/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108135563.jpg?v=1556640434', '508,', '悬疑,', '/author/2938440/,', '袋鼠花,', '2019-05-04'),
(87, 108004167, '妖刀', '/ebook/108004167/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/108004167.jpg?v=1550816660', '508,', '悬疑,', '/author/63720595/,', '八笔龙,', '2019-05-04'),
(88, 60832675, '她不是一个孩子', '/ebook/60832675/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/60832675.jpg?v=1552456744', '508,', '悬疑,', '/author/63716997/,', '林跖,', '2019-05-04'),
(89, 57974227, '厄夜重奏', '/ebook/57974227/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/57974227.jpg?v=0', '508,', '悬疑,', '/author/63732922/,', '阿柠,', '2019-05-04'),
(90, 54135234, '罗宋探案：僵尸', '/ebook/54135234/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/54135234.jpg?v=0', '508,', '悬疑,', '/author/63709571/,', '空城,', '2019-05-04'),
(91, 52372282, '朋友圈', '/ebook/52372282/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/52372282.jpg?v=0', '501,', '言情女性,', '/author/63728371/,', '王平常,', '2019-05-04'),
(92, 106698632, '离婚记', '/ebook/106698632/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/106698632.jpg?v=1547804052', '501,', '言情女性,', '/author/63752612/,', '辛明白,', '2019-05-04'),
(93, 58700052, '马鹿小姐', '/ebook/58700052/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/58700052.jpg?v=0', '501,', '言情女性,', '/author/63743625/,', '折耳,', '2019-05-04'),
(94, 52784112, '明明喜欢你', '/ebook/52784112/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/52784112.jpg?v=0', '501,', '言情女性,', '/author/63739036/,', '静倪花,', '2019-05-04'),
(95, 58633104, '与风并驰', '/ebook/58633104/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/58633104.jpg?v=0', '501,', '言情女性,', '/author/63735303/,', '拂樱,', '2019-05-04'),
(96, 109085840, '离婚记II', '/ebook/109085840/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/109085840.jpg?v=1552481192', '501,', '言情女性,', '/author/63752612/,', '辛明白,', '2019-05-04'),
(97, 58370283, '我们无法停止拥抱', '/ebook/58370283/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/58370283.jpg?v=0', '501,', '言情女性,', '/author/63752954/,', '窄窄,', '2019-05-04'),
(98, 57310782, '黑洞', '/ebook/57310782/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/57310782.jpg?v=0', '501,', '言情女性,', '/author/63700128/,', '兰思思,', '2019-05-04'),
(99, 107878264, '78岁，外婆决定出走', '/ebook/107878264/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/107878264.jpg?v=1550650554', '501,', '言情女性,', '/author/63748595/,', '苏日那,', '2019-05-04'),
(100, 107170896, '夏之语', '/ebook/107170896/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/107170896.jpg?v=1548913791', '501,', '言情女性,', '/author/63756732/,', '白七,', '2019-05-04'),
(101, 4307826, '往生诀', '/column/460023/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/460023.jpg?v=0', '505,', '科幻幻想,', '/author/63694562/,', '张习之,', '2019-05-04'),
(102, 112199407, '浮岛战记', '/column/32201627/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/3a4688cc917f4e92a72de9647e6f015f.jpg', '505,', '科幻幻想,', '/author/63763279/,', '韩小点,', '2019-05-04'),
(103, 111324085, '少年，请你优雅', '/column/31955099/', 'https://img1.doubanio.com/f/ark/a656a382ffb2c41cba072614cc82f680c46d715f/pics/ark/cover/column_banner/cover8.png', '505,', '科幻幻想,', '/author/63762032/,', '安三的猫,', '2019-05-04'),
(104, 113492769, '后丧尸时代的田野调查', '/column/32222875/', 'https://img3.doubanio.com/f/ark/6733311dca03d7fd6872e3c91351e089cd3e907a/pics/ark/cover/column_banner/cover1.png', '505,', '科幻幻想,', '/author/63763547/,', '月亮粥,', '2019-05-04'),
(105, 44947222, '墨戬传奇', '/column/7858554/', 'https://img1.doubanio.com/f/ark/ff5de170c82f438b543ea8418efeb028030b6e6f/pics/ark/cover/column_banner/cover7.png', '505,', '科幻幻想,', '/author/63730173/,', '赵晓姝,', '2019-05-04'),
(106, 113730648, '关于未来世界，我目睹的和我听说的', '/column/32226630/', 'https://img3.doubanio.com/f/ark/b1c131c9281485376f0fdb8b6d58abc3ea697d68/pics/ark/cover/column_banner/cover3.png', '505,', '科幻幻想,', '/author/63751169/,', '约西亚,', '2019-05-04'),
(107, 56216298, '第一纪元', '/column/8497865/', 'https://img1.doubanio.com/f/ark/ff5de170c82f438b543ea8418efeb028030b6e6f/pics/ark/cover/column_banner/cover7.png', '505,', '科幻幻想,', '/author/63750818/,', '逃亡的狼,', '2019-05-04'),
(108, 109143159, '食肆故事', '/column/31493438/', 'https://img3.doubanio.com/f/ark/aa21e4ec820bef40a6986ef27c6b8cec36d0da78/pics/ark/cover/column_banner/cover6.png', '505,', '科幻幻想,', '/author/63758074/,', '大头宝宝君,', '2019-05-04'),
(109, 113384483, '铁拳', '/column/32220326/', 'https://img3.doubanio.com/f/ark/b1c131c9281485376f0fdb8b6d58abc3ea697d68/pics/ark/cover/column_banner/cover3.png', '505,', '科幻幻想,', '/author/63762239/,', '五仁瓜子,', '2019-05-04'),
(110, 113719501, '蛇环算法', '/column/32226316/', 'https://img3.doubanio.com/f/ark/61aca02dfc272d594f0ade4697f92905ace89abb/pics/ark/cover/column_banner/cover5.png', '505,', '科幻幻想,', '/author/63700406/,', 'Zooey·Blanchett,', '2019-05-04'),
(111, 42790903, '命运回路 长篇版', '/column/7711961/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/7711961.jpg?v=1552016846', '508,', '悬疑,', '/author/63737113/,', '申子辰,', '2019-05-04'),
(112, 60720929, '罗宋探案：天使', '/column/8713623/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8713623.jpg?v=1550824688', '508,', '悬疑,', '/author/63709571/,', '空城,', '2019-05-04'),
(113, 60407730, '饕餮之囚', '/column/8691108/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/8691108.jpg?v=1550823772', '508,', '悬疑,', '/author/63731240/,', '九介先生,', '2019-05-04'),
(114, 57596383, '清末奇案', '/column/8554559/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/7c5f6d0ed6d843239ef848838d0aa9a6.jpg', '508,', '悬疑,', '/author/63736959/,', '说于桑田,', '2019-05-04'),
(115, 57095095, '血鸟谜案', '/column/8535450/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8535450.jpg?v=1552026854', '508,', '悬疑,', '/author/63743995/,', '张半天,', '2019-05-04'),
(116, 7646946, '六扇门', '/column/1289453/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/1289453.jpg?v=0', '508,', '悬疑,', '/author/63692318/,', '溪云,', '2019-05-04'),
(117, 31497773, '梁家兴教授探案集', '/column/6250083/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/6250083.jpg?v=0', '508,', '悬疑,', '/author/63727454/,', '北派二舅,', '2019-05-04'),
(118, 20515682, '幸福药方', '/column/3767296/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/3767296.jpg?v=0', '508,', '悬疑,', '/author/63711777/,', '逸雨,', '2019-05-04'),
(119, 106638258, '天鹅湖（修订版）', '/column/31340120/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/5858961508cd4906bd57d4c175ad4e83.jpg', '508,', '悬疑,', '/author/63691688/,', '十三月,', '2019-05-04'),
(120, 108443413, '到底是谁', '/column/31454804/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31454804.jpg?v=1552636896', '508,', '悬疑,', '/author/63757580/,', '何人二,', '2019-05-04'),
(121, 110357384, '三体全集（套装共3册）', '/bundle/110357384/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/110357384.jpg?v=1554190567', '113,116,127,', '世界名著,科幻,中国当代,', ',', '刘慈欣,', '2019-05-04'),
(122, 42708025, '莎士比亚喜剧悲剧全集（全六册）', '/bundle/42708025/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/42708025.jpg?v=0', '113,', '世界名著,', ',', '威廉·莎士比亚,', '2019-05-04'),
(123, 106786407, '大侦探波洛探案全集（套装全39册）', '/bundle/106786407/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/106786407.jpg?v=0', '113,115,', '世界名著,推理悬疑,', ',,', '阿加莎·克里斯蒂 ,阿加莎·克里斯蒂,', '2019-05-04'),
(124, 32843841, '鲁迅全集（全二十卷）', '/bundle/32843841/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/32843841.jpg?v=0', '132,', '散文随笔,', ',', '鲁迅,', '2019-05-04'),
(125, 32837323, '加缪文集（套装共3册）', '/bundle/32837323/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/32837323.jpg?v=0', '128,', '外国现当代,', ',', '阿贝尔·加缪,', '2019-05-04'),
(126, 43908350, '剑桥艺术史·全新修订加强版（套装全8册）', '/bundle/43908350/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/43908350.jpg?v=0', '226,', '美术,', ',,,,,,,,', '苏珊·伍德福德,安妮·谢弗-克兰德尔,罗萨·玛利亚·莱茨,玛德琳·梅因斯通 ,罗兰德·梅因斯通,斯蒂芬·琼斯,唐纳德·雷诺兹,罗斯玛丽·兰伯特,', '2019-05-04'),
(127, 35086130, '弗洛伊德文集（套装共12册）', '/bundle/35086130/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/35086130.jpg?v=0', '144,', '心理学,', ',,', '弗洛伊德,西格蒙德·弗洛伊德 ,', '2019-05-04'),
(128, 34466616, '明朝那些事儿（全7册）', '/bundle/34466616/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/34466616.jpg?v=0', '122,', '历史,', ',', '当年明月,', '2019-05-04'),
(129, 36692161, '人性的弱点＋人性的优点（套装共2册）', '/bundle/36692161/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/36692161.jpg?v=0', '144,195,', '心理学,成功学,', ',', '戴尔·卡耐基,', '2019-05-04'),
(130, 107431402, '神话时代：诸神的诞生（套装共4册）', '/bundle/107431402/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/107431402.jpg?v=1548667092', '114,147,149,', '影视原著,历史,文化,', ',,,,', '加里·J.肖 (Garry J. Shaw),卡罗琳·拉灵顿,米兰达·阿尔德豪斯-格林（Miranda Aldhouse-Green）,菲利普·马蒂塞克,', '2019-05-04'),
(131, 24029294, '局外人', '/ebook/24029294/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/24029294.jpg?v=0', '113,128,', '世界名著,外国现当代,', '', '', '2019-05-04'),
(132, 34157247, '月亮与六便士（作家榜经典）', '/ebook/34157247/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/34157247.jpg?v=0', '113,', '世界名著,', '', '', '2019-05-04'),
(133, 42448831, '人为什么活着', '/ebook/42448831/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/42448831.jpg?v=0', '131,', '文学经典,', ',', '王小波,', '2019-05-04'),
(134, 5509432, '巴黎圣母院', '/ebook/5509432/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/5509432.jpg?v=1555555231', '113,129,', '世界名著,中短篇集,', '', '', '2019-05-04'),
(135, 30583404, '河童', '/ebook/30583404/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/30583404.jpg?v=0', '128,', '外国现当代,', '', '', '2019-05-04'),
(136, 110767400, '人类群星闪耀时', '/ebook/110767400/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/110767400.jpg?v=1554797112', '136,', '传记回忆,', '', '', '2019-05-04'),
(137, 111100696, '浮生六记（作家榜经典）', '/ebook/111100696/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/111100696.jpg?v=1555313731', '131,132,', '文学经典,散文随笔,', ',,', '沈复 著,周公度 译注,', '2019-05-04'),
(138, 1162265, '追风筝的人', '/ebook/1162265/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/1162265.jpg?v=0', '128,', '外国现当代,', '', '', '2019-05-04'),
(139, 30541512, '活着', '/ebook/30541512/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/30541512.jpg?v=0', '127,', '中国当代,', ',', '余华,', '2019-05-04'),
(140, 108589266, '奇案杂谈', '/ebook/108589266/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/108589266.jpg?v=1551441908', '520,', '历史纪实,', '/author/63711777/,', '逸雨,', '2019-05-04'),
(141, 54691826, '巴勃罗·埃斯科瓦尔：哥伦比亚毒王的沉浮人生', '/ebook/54691826/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/54691826.jpg?v=0', '520,', '历史纪实,', '/author/63749634/,', '马小草,', '2019-05-04'),
(142, 34616560, '小王子（作家榜经典）', '/ebook/34616560/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/34616560.jpg?v=0', '113,139,', '世界名著,寓言童话,', '', '', '2019-05-04'),
(143, 59211548, '历史红颜', '/ebook/59211548/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/59211548.jpg?v=0', '510,', '历史,', '/author/63738392/,', '易小窗,', '2019-05-04'),
(144, 108670247, '倾尽天下', '/ebook/108670247/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/108670247.jpg?v=1555298292', '507,', '武侠,', '/author/63697360/,', '禹鼎侯,', '2019-05-04'),
(145, 59447232, '中堂大人', '/ebook/59447232/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/59447232.jpg?v=0', '520,', '历史纪实,', '/author/63750317/,', '江湖夜雨十年灯,', '2019-05-04'),
(146, 52479296, '酉州打庙记', '/ebook/52479296/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/52479296.jpg?v=1549952430', '510,', '历史,', '/author/63691238/,', '魏市宁,', '2019-05-04'),
(147, 60852005, '末路悲风', '/ebook/60852005/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/60852005.jpg?v=1552365046', '510,', '历史,', '/author/63706212/,', '东篱村夫,', '2019-05-04'),
(148, 53592000, '归去来兮', '/ebook/53592000/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/53592000.jpg?v=0', '507,', '武侠,', '/author/63688015/,', '沉舟,', '2019-05-04'),
(149, 110400063, '极简古埃及史', '/ebook/110400063/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/110400063.jpg?v=1554231440', '520,', '历史纪实,', '/author/63719532/,', '顾小横,', '2019-05-04'),
(150, 110325761, '历史长河的几簇浪花', '/ebook/110325761/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/110325761.jpg?v=1554130658', '520,', '历史纪实,', '/author/63700584/,', '冯玄一,', '2019-05-04'),
(151, 28705279, '人间失格', '/ebook/28705279/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/28705279.jpg?v=0', '128,', '外国现当代,', '', '', '2019-05-04'),
(152, 24029294, '局外人', '/ebook/24029294/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/24029294.jpg?v=0', '113,128,', '世界名著,外国现当代,', '', '', '2019-05-04'),
(153, 34157247, '月亮与六便士（作家榜经典）', '/ebook/34157247/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/34157247.jpg?v=0', '113,', '世界名著,', '', '', '2019-05-04'),
(154, 42448831, '人为什么活着', '/ebook/42448831/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/42448831.jpg?v=0', '131,', '文学经典,', ',', '王小波,', '2019-05-04'),
(155, 110299138, '漫长的告别', '/ebook/110299138/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/110299138.jpg?v=1554105903', '115,128,131,', '推理悬疑,外国现当代,文学经典,', '', '', '2019-05-04'),
(156, 13670407, '浮生六记', '/ebook/13670407/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/13670407.jpg?v=0', '131,132,', '文学经典,散文随笔,', '', '', '2019-05-04'),
(157, 47747386, '黑旗：ISIS 的崛起', '/ebook/47747386/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/47747386.jpg?v=0', '135,145,', '纪实文学,社会学,', '', '', '2019-05-04'),
(158, 5509432, '巴黎圣母院', '/ebook/5509432/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/5509432.jpg?v=1555555231', '113,129,', '世界名著,中短篇集,', '', '', '2019-05-04'),
(159, 30583404, '河童', '/ebook/30583404/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/30583404.jpg?v=0', '128,', '外国现当代,', '', '', '2019-05-04'),
(160, 59612655, '人性的弱点（作家榜经典）', '/ebook/59612655/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/59612655.jpg?v=0', '196,197,', '励志,情商与自我提升,', '', '', '2019-05-04'),
(161, 59634108, '马婆婆的拧巴人生', '/column/8643510/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/88b0b7cd4ff34e82b7b982cd10fb0911.jpg', '503,', '文艺,', '/author/63754294/,', '夏田良,', '2019-05-04'),
(162, 112598476, '地图小说', '/column/32207718/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/a8192c35a40942a5b2d7e4b289d65ca9.jpg', '503,', '文艺,', '/author/63707683/,', '红了樱小桃,', '2019-05-04'),
(163, 112842701, '最美的爱情', '/column/32212204/', 'https://img3.doubanio.com/f/ark/aa21e4ec820bef40a6986ef27c6b8cec36d0da78/pics/ark/cover/column_banner/cover6.png', '503,', '文艺,', '/author/63755216/,', '想念,', '2019-05-04'),
(164, 110911381, '木易时代', '/column/31870451/', 'https://img3.doubanio.com/f/ark/61aca02dfc272d594f0ade4697f92905ace89abb/pics/ark/cover/column_banner/cover5.png', '503,', '文艺,', '/author/63722446/,', '朱花,', '2019-05-04'),
(165, 111414918, '《毕业后的那些事儿》', '/column/31972857/', 'https://img3.doubanio.com/f/ark/2fe666362666054a44db1a8f5db51571e50c6dc2/pics/ark/cover/column_banner/cover4.png', '503,', '文艺,', '/author/63762183/,', '途留声,', '2019-05-04'),
(166, 113764710, '异云白鸟集', '/column/32227149/', 'https://img3.doubanio.com/f/ark/80ebc2e415ef112b32ecdab00f8f1e3c48f91fcc/pics/ark/cover/column_banner/cover2.png', '503,', '文艺,', '/author/63716740/,', '绕云梁,', '2019-05-04'),
(167, 56556307, '越来越西', '/column/8515794/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/4d35004ac5e7430c979a44a41d2201b9.jpg', '503,', '文艺,', '/author/63730996/,', '惊鸿 & 吕华,', '2019-05-04'),
(168, 112265263, '夏日的過雲雨', '/column/32203033/', 'https://img3.doubanio.com/f/ark/aa21e4ec820bef40a6986ef27c6b8cec36d0da78/pics/ark/cover/column_banner/cover6.png', '503,', '文艺,', '/author/63750298/,', '〔香港〕wenads,', '2019-05-04'),
(169, 51951115, '裂帛', '/column/8276048/', 'https://img3.doubanio.com/f/ark/6733311dca03d7fd6872e3c91351e089cd3e907a/pics/ark/cover/column_banner/cover1.png', '503,', '文艺,', '/author/63736939/,', '杜痕远,', '2019-05-04'),
(170, 113599747, '龙象牛马', '/column/32224306/', 'https://img1.doubanio.com/f/ark/ff5de170c82f438b543ea8418efeb028030b6e6f/pics/ark/cover/column_banner/cover7.png', '503,', '文艺,', '/author/63763571/,', '晶晶,', '2019-05-04'),
(171, 59008628, '桐花落尽', '/column/8606510/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8606510.jpg?v=1548994943', '510,', '历史,', '/author/63705425/,', '第九杯茶,', '2019-05-04'),
(172, 107898252, '鸿燕零丁Ⅰ帝归之祸', '/column/31420352/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31420352.jpg?v=1552273929', '510,', '历史,', '/author/63699116/,', '杨屺,', '2019-05-04'),
(173, 34560203, '英伦王朝宫斗记', '/column/6795880/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/6795880.jpg?v=0', '520,', '历史纪实,', '/author/63730328/,', '〔英〕南涧采萍,', '2019-05-04'),
(174, 108213244, '江湖一点飞沫', '/column/31443056/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31443056.jpg?v=1553477225', '507,', '武侠,', '/author/63757434/,', '丆一,', '2019-05-04'),
(175, 106010571, '将酒', '/column/31262705/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31262705.jpg?v=1552274108', '510,', '历史,', '/author/63735199/,', '方不药,', '2019-05-04'),
(176, 110731335, '浮萍烟雨录', '/column/31841634/', 'https://img3.doubanio.com/f/ark/6733311dca03d7fd6872e3c91351e089cd3e907a/pics/ark/cover/column_banner/cover1.png', '507,', '武侠,', '/author/63761040/,', '林繁,', '2019-05-04'),
(177, 110220742, '可汗天子', '/column/31757518/', 'https://img3.doubanio.com/f/ark/aa21e4ec820bef40a6986ef27c6b8cec36d0da78/pics/ark/cover/column_banner/cover6.png', '510,', '历史,', '/author/63754125/,', '薛鹏,', '2019-05-04'),
(178, 18028557, '惊鸿谍影', '/column/3157884/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/3157884.jpg?v=0', '510,', '历史,', '/author/63695714/,', '飞鱼海,', '2019-05-04'),
(179, 109780857, '大·司马--乱世雏芽（绯红之卷）', '/column/31677749/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/08e7daac5df64707bee260c5b7398321.jpg', '510,', '历史,', '/author/63746209/,', '阳炎灼,', '2019-05-04'),
(180, 113890607, '千秋笔说水浒', '/column/32228519/', 'https://img1.doubanio.com/f/ark/ff5de170c82f438b543ea8418efeb028030b6e6f/pics/ark/cover/column_banner/cover7.png', '510,', '历史,', '/author/63730517/,', '千秋笔,', '2019-05-04'),
(181, 110299138, '漫长的告别', '/ebook/110299138/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/110299138.jpg?v=1554105903', '115,128,131,', '推理悬疑,外国现当代,文学经典,', '', '', '2019-05-04'),
(182, 110767400, '人类群星闪耀时', '/ebook/110767400/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/110767400.jpg?v=1554797112', '136,', '传记回忆,', '', '', '2019-05-04'),
(183, 111100696, '浮生六记（作家榜经典）', '/ebook/111100696/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/111100696.jpg?v=1555313731', '131,132,', '文学经典,散文随笔,', ',,', '沈复 著,周公度 译注,', '2019-05-04'),
(184, 36059351, '改变你的服装，改变你的生活', '/ebook/36059351/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/36059351.jpg?v=0', '206,', '时尚美妆,', '', '', '2019-05-04'),
(185, 110299023, '局外人', '/ebook/110299023/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/110299023.jpg?v=1554104583', '128,131,', '外国现当代,文学经典,', '', '', '2019-05-04'),
(186, 110680828, '坏血', '/ebook/110680828/', 'https://img1.doubanio.com/view/ark_article_cover/retina/public/110680828.jpg?v=1555050139', '135,', '纪实文学,', '', '', '2019-05-04'),
(187, 111203610, '月亮与六便士', '/ebook/111203610/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/111203610.jpg?v=1555405838', '113,128,', '世界名著,外国现当代,', '', '', '2019-05-04'),
(188, 111298386, '一想到还有95%的问题留给人类，我就放心了', '/ebook/111298386/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/111298386.jpg?v=1555486914', '174,229,', '物理,漫画,', '', '', '2019-05-04'),
(189, 22441095, '哲学家们都干了些什么？', '/ebook/22441095/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/22441095.jpg?v=0', '148,150,', '哲学,宗教,', '/author/1231131/,', '林欣浩,', '2019-05-04'),
(190, 21496892, '巨人的陨落（共3册）', '/ebook/21496892/', 'https://img3.doubanio.com/view/ark_article_cover/retina/public/21496892.jpg?v=0', '122,124,128,', '历史,军事战争,外国现当代,', '', '', '2019-05-04'),
(191, 60898836, '不是人', '/column/8724366/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8724366.jpg?v=1553851804', '508,', '悬疑,', '/author/2938440/,', '袋鼠花,', '2019-05-04'),
(192, 108101989, '处刑人', '/column/31434748/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/31434748.jpg?v=1551431084', '508,', '悬疑,', '/author/63720083/,', '艾石,', '2019-05-04'),
(193, 107231927, '暗黑童影', '/column/31380056/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/31380056.jpg?v=1553235868', '508,', '悬疑,', '/author/63699570/,', '蓝摇,', '2019-05-04'),
(194, 110434823, '余光', '/column/31800496/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/6e7f7304c0dc49d4bf087f08f21c852f.jpg', '508,', '悬疑,', '/author/63750561/,', '慕遥而寻,', '2019-05-04'),
(195, 108829459, '天幕', '/column/31476085/', 'https://img3.doubanio.com/f/ark/61aca02dfc272d594f0ade4697f92905ace89abb/pics/ark/cover/column_banner/cover5.png', '508,', '悬疑,', '/author/63757827/,', '陆志宽,', '2019-05-04'),
(196, 113192642, '消失的标签人', '/column/32217657/', 'https://img1.doubanio.com/f/ark/a656a382ffb2c41cba072614cc82f680c46d715f/pics/ark/cover/column_banner/cover8.png', '508,', '悬疑,', '/author/63763492/,', '澄君,', '2019-05-04'),
(197, 110800958, '死亡之后的噩梦', '/column/31853124/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/0849f5e7e0744f8a905fa90fa02f9db4.jpg', '508,', '悬疑,', '/author/63761127/,', '刑天 唐伯志,', '2019-05-04'),
(198, 108857777, '杀人追忆', '/column/31477763/', 'https://img1.doubanio.com/f/ark/ff5de170c82f438b543ea8418efeb028030b6e6f/pics/ark/cover/column_banner/cover7.png', '508,', '悬疑,', '/author/63688799/,', '安宁翔,', '2019-05-04'),
(199, 112718914, '从饼干开始', '/column/32209867/', 'https://img1.doubanio.com/f/ark/0932d043745d62ec06e4c98dd0c9d2afa5edff6f/pics/ark/cover/column_banner/cover9.png', '508,', '悬疑,', '/author/63709862/,', 'lloollooll,', '2019-05-04'),
(200, 60578743, '寻道者', '/column/8703180/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/a8eee9d9908e437dbad1c57268749993.jpg', '508,', '悬疑,', '/author/63751169/,', '约西亚,', '2019-05-04'),
(201, 110800958, '死亡之后的噩梦', '/column/31853124/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/0849f5e7e0744f8a905fa90fa02f9db4.jpg', '508,', '悬疑,', '/author/63761127/,', '刑天 唐伯志,', '2019-05-04'),
(202, 112829780, '恋爱与风暴的融合', '/column/32212039/', 'https://img3.doubanio.com/f/ark/61aca02dfc272d594f0ade4697f92905ace89abb/pics/ark/cover/column_banner/cover5.png', '508,', '悬疑,', '/author/63761502/,', '果汁雪梨,', '2019-05-04'),
(203, 60578743, '寻道者', '/column/8703180/', 'https://img3.doubanio.com/view/ark_column_banner_cover/retina/public/a8eee9d9908e437dbad1c57268749993.jpg', '508,', '悬疑,', '/author/63751169/,', '约西亚,', '2019-05-04'),
(204, 112497480, '得狂犬病而死的男人', '/column/32206634/', 'https://img3.doubanio.com/f/ark/b1c131c9281485376f0fdb8b6d58abc3ea697d68/pics/ark/cover/column_banner/cover3.png', '508,', '悬疑,', '/author/63763342/,', '灯33,', '2019-05-04'),
(205, 113975999, '广州十大妖兽地', '/column/32229527/', 'https://img1.doubanio.com/f/ark/a656a382ffb2c41cba072614cc82f680c46d715f/pics/ark/cover/column_banner/cover8.png', '508,', '悬疑,', '/author/63763658/,', '猫の头,', '2019-05-04'),
(206, 112718914, '从饼干开始', '/column/32209867/', 'https://img1.doubanio.com/f/ark/0932d043745d62ec06e4c98dd0c9d2afa5edff6f/pics/ark/cover/column_banner/cover9.png', '508,', '悬疑,', '/author/63709862/,', 'lloollooll,', '2019-05-04'),
(207, 113027519, '米涅尔瓦的微笑', '/column/32214835/', 'https://img1.doubanio.com/f/ark/0932d043745d62ec06e4c98dd0c9d2afa5edff6f/pics/ark/cover/column_banner/cover9.png', '508,', '悬疑,', '/author/63763461/,', '娜希,', '2019-05-04'),
(208, 113192642, '消失的标签人', '/column/32217657/', 'https://img1.doubanio.com/f/ark/a656a382ffb2c41cba072614cc82f680c46d715f/pics/ark/cover/column_banner/cover8.png', '508,', '悬疑,', '/author/63763492/,', '澄君,', '2019-05-04'),
(209, 113656919, '梦界传说之梦境成真', '/column/32225653/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/45591a965b3a40d8ae8d85d9a29624b8.jpg', '508,', '悬疑,', '/author/63699242/,', '米乐,', '2019-05-04'),
(210, 110860399, '赶上直播了', '/column/31862083/', 'https://img3.doubanio.com/f/ark/61aca02dfc272d594f0ade4697f92905ace89abb/pics/ark/cover/column_banner/cover5.png', '508,', '悬疑,', '/author/63761204/,', '曹伊笛,', '2019-05-04'),
(211, 38350623, '六姊妹', '/column/7364024/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/5b3a221c7d4745f1ad8d2a35a05a960c.jpg', '501,', '言情女性,', '/author/33900749/,', '伊北,', '2019-05-04'),
(212, 50027072, '我和我的佛系老公', '/column/8176627/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/8176627.jpg?v=1548994973', '501,', '言情女性,', '/author/63744831/,', '金牙太太,', '2019-05-04'),
(213, 47436317, '希希：咨询之路', '/column/8021674/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/a91e697c09764aaebd0cdb47680ff4cc.jpg', '501,', '言情女性,', '/author/63694963/,', '刘玥,', '2019-05-04'),
(214, 55892281, '万物为谁春', '/column/8484975/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8484975.jpg?v=1548994866', '501,', '言情女性,', '/author/63748262/,', '〔香港〕王美雪,', '2019-05-04'),
(215, 57510013, '少年，我爱你', '/column/8550683/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/57462306168e4c34b1b689a6d3fdde27.jpg', '501,', '言情女性,', '/author/63751835/,', '南黑,', '2019-05-04'),
(216, 54502019, '试管医生手记：八细胞的承诺', '/column/8409456/', 'https://img3.doubanio.com/f/ark/6733311dca03d7fd6872e3c91351e089cd3e907a/pics/ark/cover/column_banner/cover1.png', '501,', '言情女性,', '/author/63749463/,', '刀豆,', '2019-05-04'),
(217, 52945791, '当我看向你的世界', '/column/8322480/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/656e91691f6e436096271af7714a2e3b.jpg', '501,', '言情女性,', '/author/63697785/,', '藤桐七哀,', '2019-05-04'),
(218, 40097008, '超五星体验', '/column/7493226/', 'https://img1.doubanio.com/view/ark_column_banner_cover/retina/public/e62baa639a634376890a04fb6793c649.jpg', '501,', '言情女性,', '/author/63709978/,', '洛熙,', '2019-05-04'),
(219, 49608278, '天涯追梦人', '/column/8150216/', 'https://img3.doubanio.com/f/ark/2fe666362666054a44db1a8f5db51571e50c6dc2/pics/ark/cover/column_banner/cover4.png', '501,', '言情女性,', '/author/63737411/,', '叶眉,', '2019-05-04'),
(220, 53952327, '老公孩子一起养', '/column/8378735/', 'https://img3.doubanio.com/view/ark_column_cover/retina/public/8378735.jpg?v=1548994252', '501,', '言情女性,', '/author/63721244/,', '爱莉莉,', '2019-05-04'),
(221, 108121195, '夏空之城', '/column/31436658/', 'https://img1.doubanio.com/view/ark_column_cover/retina/public/31436658.jpg?v=1555468927', '501,', '言情女性,', '/author/63687594/,', '东经以西,', '2019-05-04'),
(222, 110712280, '五月花', '/column/31838604/', 'https://img3.doubanio.com/f/ark/6733311dca03d7fd6872e3c91351e089cd3e907a/pics/ark/cover/column_banner/cover1.png', '501,', '言情女性,', '/author/63745238/,', '鲸默,', '2019-05-04'),
(223, 111481260, '当重生PK伪重生', '/column/31990276/', 'https://img3.doubanio.com/f/ark/aa21e4ec820bef40a6986ef27c6b8cec36d0da78/pics/ark/cover/column_banner/cover6.png', '501,', '言情女性,', '/author/63762314/,', '一起跳舞,', '2019-05-04'),
(224, 111418256, '君心犹不知', '/column/31973669/', 'https://img3.doubanio.com/f/ark/80ebc2e415ef112b32ecdab00f8f1e3c48f91fcc/pics/ark/cover/column_banner/cover2.png', '501,', '言情女性,', '/author/63762193/,', '林小寒,', '2019-05-04'),
(225, 113154300, '雨打梧桐风萧萧', '/column/32217184/', 'https://img1.doubanio.com/f/ark/ff5de170c82f438b543ea8418efeb028030b6e6f/pics/ark/cover/column_banner/cover7.png', '501,', '言情女性,', '/author/63752899/,', '海燕麦萌,', '2019-05-04'),
(226, 110955217, '别靠近，小姐恐男！', '/column/31876108/', 'https://img3.doubanio.com/f/ark/61aca02dfc272d594f0ade4697f92905ace89abb/pics/ark/cover/column_banner/cover5.png', '501,', '言情女性,', '/author/63761317/,', '优妮可阿润,', '2019-05-04'),
(227, 110850255, '无尽的爱', '/column/31860071/', 'https://img3.doubanio.com/f/ark/2fe666362666054a44db1a8f5db51571e50c6dc2/pics/ark/cover/column_banner/cover4.png', '501,', '言情女性,', '/author/63761190/,', '泽熙,', '2019-05-04'),
(228, 112677307, '【深城往事】女代课教师的生死劫', '/column/32209160/', 'https://img1.doubanio.com/f/ark/0932d043745d62ec06e4c98dd0c9d2afa5edff6f/pics/ark/cover/column_banner/cover9.png', '501,', '言情女性,', '/author/63759695/,', '魏魏梓,', '2019-05-04'),
(229, 112796232, '北京的天空不飘雪', '/column/32211357/', 'https://img3.doubanio.com/f/ark/b1c131c9281485376f0fdb8b6d58abc3ea697d68/pics/ark/cover/column_banner/cover3.png', '501,', '言情女性,', '/author/63739911/,', '灵漠风,', '2019-05-04'),
(230, 113596402, '花晓桃', '/column/32224218/', 'https://img3.doubanio.com/f/ark/80ebc2e415ef112b32ecdab00f8f1e3c48f91fcc/pics/ark/cover/column_banner/cover2.png', '501,', '言情女性,', '/author/63763568/,', '立透,', '2019-05-04');

-- --------------------------------------------------------

--
-- 表的结构 `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `nickname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `head_img` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `addtime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_users`
--

INSERT INTO `tb_users` (`id`, `name`, `nickname`, `password`, `head_img`, `note`, `addtime`) VALUES
(1, 'ly', '青鸟', 'laiyue123456', '', '', '2019-05-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_books`
--
ALTER TABLE `tb_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_books`
--
ALTER TABLE `tb_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- 使用表AUTO_INCREMENT `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
