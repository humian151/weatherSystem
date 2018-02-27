-- 建立省份表，并初始化数据
CREATE TABLE `weather`.`Province`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50),
  `orderid` INT,
  PRIMARY KEY (`id`)
);
insert into Province values(1,'北京',0);
insert into Province values(2,'天津',0);
insert into Province values(3,'河北',0);
insert into Province values(4,'山西',0);
insert into Province values(5,'内蒙古',0);
insert into Province values(6,'辽宁',0);
insert into Province values(7,'吉林',0);
insert into Province values(8,'黑龙江',0);
insert into Province values(9,'上海',0);
insert into Province values(10,'江苏',0);
insert into Province values(11,'浙江',0);
insert into Province values(12,'安徽',0);
insert into Province values(13,'福建',999);
insert into Province values(14,'江西',0);
insert into Province values(15,'山东',0);
insert into Province values(16,'河南',0);
insert into Province values(17,'湖北',0);
insert into Province values(18,'湖南',0);
insert into Province values(19,'广东',0);
insert into Province values(20,'广西',0);
insert into Province values(21,'海南',0);
insert into Province values(22,'重庆',0);
insert into Province values(23,'四川',0);
insert into Province values(24,'贵州',0);
insert into Province values(25,'云南',0);
insert into Province values(26,'西藏',0);
insert into Province values(27,'陕西',0);
insert into Province values(28,'甘肃',0);
insert into Province values(29,'青海',0);
insert into Province values(30,'宁夏',0);
insert into Province values(31,'新疆',0);
insert into Province values(32,'香港',0);
insert into Province values(33,'澳门',0);
insert into Province values(34,'台湾',0);
-- 城市表
CREATE TABLE `weather`.`city`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `province_Id` INT,
  `name` VARCHAR(50),
  `area_code` VARCHAR(50),
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_CITY_PROVINCE_ID` FOREIGN KEY (`province_Id`) REFERENCES `weather`.`province`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO City VALUES(1,        1,        '北京市',        '010');

INSERT INTO City VALUES(2,        2,        '天津市',        '022');

INSERT INTO City VALUES(3,        3,        '石家庄市',        '0311');

INSERT INTO City VALUES(4,        3,        '唐山市',        '0315');

INSERT INTO City VALUES(5,        3,        '秦皇岛市',        '0335');

INSERT INTO City VALUES(6,        3,        '邯郸市',        '0310');

INSERT INTO City VALUES(7,        3,        '邢台市',        '0319');

INSERT INTO City VALUES(8,        3,        '保定市',        '0312');

INSERT INTO City VALUES(9,        3,        '张家口市',        '0313');

INSERT INTO City VALUES(10,        3,        '承德市',        '0314');

INSERT INTO City VALUES(11,        3,        '沧州市',        '0317');

INSERT INTO City VALUES(12,        3,        '廊坊市',        '0316');

INSERT INTO City VALUES(13,        3,        '衡水市',        '0318');

INSERT INTO City VALUES(14,        4,        '太原市',        '0351');

INSERT INTO City VALUES(15,        4,        '大同市',        '0352');

INSERT INTO City VALUES(16,        4,        '阳泉市',        '0353');

INSERT INTO City VALUES(17,        4,        '长治市',        '0355');

INSERT INTO City VALUES(18,        4,        '晋城市',        '0356');

INSERT INTO City VALUES(19,        4,        '朔州市',        '0349');

INSERT INTO City VALUES(20,        4,        '晋中市',        '0354');

INSERT INTO City VALUES(21,        4,        '运城市',        '0359');

INSERT INTO City VALUES(22,        4,        '忻州市',        '0350');

INSERT INTO City VALUES(23,        4,        '临汾市',        '0357');

INSERT INTO City VALUES(24,        4,        '吕梁市',        '0358');

INSERT INTO City VALUES(25,        5,        '呼和浩特市',        '0471');

INSERT INTO City VALUES(26,        5,        '包头市',        '0472');

INSERT INTO City VALUES(27,        5,        '乌海市',        '0473');

INSERT INTO City VALUES(28,        5,        '赤峰市',        '0476');

INSERT INTO City VALUES(29,        5,        '通辽市',        '0475');

INSERT INTO City VALUES(30,        5,        '鄂尔多斯市',        '0477');

INSERT INTO City VALUES(31,        5,        '呼伦贝尔市',        '0470');

INSERT INTO City VALUES(32,        5,        '巴彦淖尔市',        '0478');

INSERT INTO City VALUES(33,        5,        '乌兰察布市',        '0474');

INSERT INTO City VALUES(34,        5,        '兴安盟',        '0482');

INSERT INTO City VALUES(35,        5,        '锡林郭勒盟',        '0479');

INSERT INTO City VALUES(36,        5,        '阿拉善盟',        '0483');

INSERT INTO City VALUES(37,        6,        '沈阳市',        '024');

INSERT INTO City VALUES(38,        6,        '大连市',        '0411');

INSERT INTO City VALUES(39,        6,        '鞍山市',        '0412');

INSERT INTO City VALUES(40,        6,        '抚顺市',        '0413');

INSERT INTO City VALUES(41,        6,        '本溪市',        '0414');

INSERT INTO City VALUES(42,        6,        '丹东市',        '0415');

INSERT INTO City VALUES(43,        6,        '锦州市',        '0416');

INSERT INTO City VALUES(44,        6,        '营口市',        '0417');

INSERT INTO City VALUES(45,        6,        '阜新市',        '0418');

INSERT INTO City VALUES(46,        6,        '辽阳市',        '0419');

INSERT INTO City VALUES(47,        6,        '盘锦市',        '0427');

INSERT INTO City VALUES(48,        6,        '铁岭市',        '0410');

INSERT INTO City VALUES(49,        6,        '朝阳市',        '0421');

INSERT INTO City VALUES(50,        6,        '葫芦岛市',        '0429');

INSERT INTO City VALUES(51,        7,        '长春市',        '0431');

INSERT INTO City VALUES(52,        7,        '吉林市',        '0432');

INSERT INTO City VALUES(53,        7,        '四平市',        '0434');

INSERT INTO City VALUES(54,        7,        '辽源市',        '0437');

INSERT INTO City VALUES(55,        7,        '通化市',        '0435');

INSERT INTO City VALUES(56,        7,        '白山市',        '0439');

INSERT INTO City VALUES(57,        7,        '松原市',        '0438');

INSERT INTO City VALUES(58,        7,        '白城市',        '0436');

INSERT INTO City VALUES(59,        7,        '延边朝鲜族自治州',        '0433');

INSERT INTO City VALUES(60,        8,        '哈尔滨市',        '0451');

INSERT INTO City VALUES(61,        8,        '齐齐哈尔市',        '0452');

INSERT INTO City VALUES(62,        8,        '鸡西市',        '0467');

INSERT INTO City VALUES(63,        8,        '鹤岗市',        '0454');

INSERT INTO City VALUES(64,        8,        '双鸭山市',        '0454');

INSERT INTO City VALUES(65,        8,        '大庆市',        '0459');

INSERT INTO City VALUES(66,        8,        '伊春市',        '0458');

INSERT INTO City VALUES(67,        8,        '佳木斯市',        '0454');

INSERT INTO City VALUES(68,        8,        '七台河市',        '0464');

INSERT INTO City VALUES(69,        8,        '牡丹江市',        '0453');

INSERT INTO City VALUES(70,        8,        '黑河市',        '0456');

INSERT INTO City VALUES(71,        8,        '绥化市',        '0455');

INSERT INTO City VALUES(72,        8,        '大兴安岭地区',        '0457');

INSERT INTO City VALUES(73,        9,        '上海市',        '021');

INSERT INTO City VALUES(74,        10,        '南京市',        '025');

INSERT INTO City VALUES(75,        10,        '无锡市',        '0510');

INSERT INTO City VALUES(76,        10,        '徐州市',        '0516');

INSERT INTO City VALUES(77,        10,        '常州市',        '0519');

INSERT INTO City VALUES(78,        10,        '苏州市',        '0512');

INSERT INTO City VALUES(79,        10,        '南通市',        '0513');

INSERT INTO City VALUES(80,        10,        '连云港市',        '0518');

INSERT INTO City VALUES(81,        10,        '淮安市',        '0517');

INSERT INTO City VALUES(82,        10,        '盐城市',        '0515');

INSERT INTO City VALUES(83,        10,        '扬州市',        '0514');

INSERT INTO City VALUES(84,        10,        '镇江市',        '0511');

INSERT INTO City VALUES(85,        10,        '泰州市',        '0523');

INSERT INTO City VALUES(86,        10,        '宿迁市',        '0527');

INSERT INTO City VALUES(87,        11,        '杭州市',        '0571');

INSERT INTO City VALUES(88,        11,        '宁波市',        '0574');

INSERT INTO City VALUES(89,        11,        '温州市',        '0577');

INSERT INTO City VALUES(90,        11,        '嘉兴市',        '0573');

INSERT INTO City VALUES(91,        11,        '湖州市',        '0572');

INSERT INTO City VALUES(92,        11,        '绍兴市',        '0575');

INSERT INTO City VALUES(93,        11,        '金华市',        '0579');

INSERT INTO City VALUES(94,        11,        '衢州市',        '0570');

INSERT INTO City VALUES(95,        11,        '舟山市',        '0580');

INSERT INTO City VALUES(96,        11,        '台州市',        '0576');

INSERT INTO City VALUES(97,        11,        '丽水市',        '0578');

INSERT INTO City VALUES(98,        12,        '合肥市',        '0551');

INSERT INTO City VALUES(99,        12,        '芜湖市',        '0553');

INSERT INTO City VALUES(100,        12,        '蚌埠市',        '0552');

INSERT INTO City VALUES(101,        12,        '淮南市',        '0554');

INSERT INTO City VALUES(102,        12,        '马鞍山市',        '0555');

INSERT INTO City VALUES(103,        12,        '淮北市',        '0561');

INSERT INTO City VALUES(104,        12,        '铜陵市',        '0562');

INSERT INTO City VALUES(105,        12,        '安庆市',        '0556');

INSERT INTO City VALUES(106,        12,        '黄山市',        '0559');

INSERT INTO City VALUES(107,        12,        '滁州市',        '0550');

INSERT INTO City VALUES(108,        12,        '阜阳市',        '0558');

INSERT INTO City VALUES(109,        12,        '宿州市',        '0557');

INSERT INTO City VALUES(110,        12,        '巢湖市',        '0565');

INSERT INTO City VALUES(111,        12,        '六安市',        '0564');

INSERT INTO City VALUES(112,        12,        '亳州市',        '0558');

INSERT INTO City VALUES(113,        12,        '池州市',        '0566');

INSERT INTO City VALUES(114,        12,        '宣城市',        '0563');

INSERT INTO City VALUES(115,        13,        '福州市',        '0591');

INSERT INTO City VALUES(116,        13,        '厦门市',        '0592');

INSERT INTO City VALUES(117,        13,        '莆田市',        '0594');

INSERT INTO City VALUES(118,        13,        '三明市',        '0598');

INSERT INTO City VALUES(119,        13,        '泉州市',        '0595');

INSERT INTO City VALUES(120,        13,        '漳州市',        '0596');

INSERT INTO City VALUES(121,        13,        '南平市',        '0599');

INSERT INTO City VALUES(122,        13,        '龙岩市',        '0597');

INSERT INTO City VALUES(123,        13,        '宁德市',        '0593');

INSERT INTO City VALUES(124,        14,        '南昌市',        '0791');

INSERT INTO City VALUES(125,        14,        '景德镇市',        '0798');

INSERT INTO City VALUES(126,        14,        '萍乡市',        '0799');

INSERT INTO City VALUES(127,        14,        '九江市',        '0792');

INSERT INTO City VALUES(128,        14,        '新余市',        '0790');

INSERT INTO City VALUES(129,        14,        '鹰潭市',        '0701');

INSERT INTO City VALUES(130,        14,        '赣州市',        '0797');

INSERT INTO City VALUES(131,        14,        '吉安市',        '0796');

INSERT INTO City VALUES(132,        14,        '宜春市',        '0795');

INSERT INTO City VALUES(133,        14,        '抚州市',        '0794');

INSERT INTO City VALUES(134,        14,        '上饶市',        '0793');

INSERT INTO City VALUES(135,        15,        '济南市',        '0531');

INSERT INTO City VALUES(136,        15,        '青岛市',        '0532');

INSERT INTO City VALUES(137,        15,        '淄博市',        '0533');

INSERT INTO City VALUES(138,        15,        '枣庄市',        '0632');

INSERT INTO City VALUES(139,        15,        '东营市',        '0546');

INSERT INTO City VALUES(140,        15,        '烟台市',        '0535');

INSERT INTO City VALUES(141,        15,        '潍坊市',        '0536');

INSERT INTO City VALUES(142,        15,        '济宁市',        '0537');

INSERT INTO City VALUES(143,        15,        '泰安市',        '0538');

INSERT INTO City VALUES(144,        15,        '威海市',        '0631');

INSERT INTO City VALUES(145,        15,        '日照市',        '0633');

INSERT INTO City VALUES(146,        15,        '莱芜市',        '0634');

INSERT INTO City VALUES(147,        15,        '临沂市',        '0539');

INSERT INTO City VALUES(148,        15,        '德州市',        '0534');

INSERT INTO City VALUES(149,        15,        '聊城市',        '0635');

INSERT INTO City VALUES(150,        15,        '滨州市',        '0543');

INSERT INTO City VALUES(151,        15,        '菏泽市',        '0530');

INSERT INTO City VALUES(152,        16,        '郑州市',        '0371');

INSERT INTO City VALUES(153,        16,        '开封市',        '0378');

INSERT INTO City VALUES(154,        16,        '洛阳市',        '0379');

INSERT INTO City VALUES(155,        16,        '平顶山市',        '0375');

INSERT INTO City VALUES(156,        16,        '安阳市',        '0372');

INSERT INTO City VALUES(157,        16,        '鹤壁市',        '0392');

INSERT INTO City VALUES(158,        16,        '新乡市',        '0373');

INSERT INTO City VALUES(159,        16,        '焦作市',        '0391');

INSERT INTO City VALUES(160,        16,        '濮阳市',        '0393');

INSERT INTO City VALUES(161,        16,        '许昌市',        '0374');

INSERT INTO City VALUES(162,        16,        '漯河市',        '0395');

INSERT INTO City VALUES(163,        16,        '三门峡市',        '0398');

INSERT INTO City VALUES(164,        16,        '南阳市',        '0377');

INSERT INTO City VALUES(165,        16,        '商丘市',        '0370');

INSERT INTO City VALUES(166,        16,        '信阳市',        '0376');

INSERT INTO City VALUES(167,        16,        '周口市',        '0394');

INSERT INTO City VALUES(168,        16,        '驻马店市',        '0396');

INSERT INTO City VALUES(169,        16,        '济源市',        '0391');

INSERT INTO City VALUES(170,        17,        '武汉市',        '027');

INSERT INTO City VALUES(171,        17,        '黄石市',        '0714');

INSERT INTO City VALUES(172,        17,        '十堰市',        '0719');

INSERT INTO City VALUES(173,        17,        '宜昌市',        '0717');

INSERT INTO City VALUES(174,        17,        '襄樊市',        '0710');

INSERT INTO City VALUES(175,        17,        '鄂州市',        '0711');

INSERT INTO City VALUES(176,        17,        '荆门市',        '0724');

INSERT INTO City VALUES(177,        17,        '孝感市',        '0712');

INSERT INTO City VALUES(178,        17,        '荆州市',        '0716');

INSERT INTO City VALUES(179,        17,        '黄冈市',        '0713');

INSERT INTO City VALUES(180,        17,        '咸宁市',        '0715');

INSERT INTO City VALUES(181,        17,        '随州市',        '0722');

INSERT INTO City VALUES(182,        17,        '恩施土家族苗族自治州',        '0718');

INSERT INTO City VALUES(183,        17,        '省直辖县级行政单位',        '0728');

INSERT INTO City VALUES(184,        18,        '长沙市',        '0731');

INSERT INTO City VALUES(185,        18,        '株洲市',        '0733');

INSERT INTO City VALUES(186,        18,        '湘潭市',        '0732');

INSERT INTO City VALUES(187,        18,        '衡阳市',        '0734');

INSERT INTO City VALUES(188,        18,        '邵阳市',        '0739');

INSERT INTO City VALUES(189,        18,        '岳阳市',        '0730');

INSERT INTO City VALUES(190,        18,        '常德市',        '0736');

INSERT INTO City VALUES(191,        18,        '张家界市',        '0744');

INSERT INTO City VALUES(192,        18,        '益阳市',        '0737');

INSERT INTO City VALUES(193,        18,        '郴州市',        '0735');

INSERT INTO City VALUES(194,        18,        '永州市',        '0746');

INSERT INTO City VALUES(195,        18,        '怀化市',        '0745');

INSERT INTO City VALUES(196,        18,        '娄底市',        '0738');

INSERT INTO City VALUES(197,        18,        '湘西土家族苗族自治州',        '0743');

INSERT INTO City VALUES(198,        19,        '广州市',        '020');

INSERT INTO City VALUES(199,        19,        '韶关市',        '0751');

INSERT INTO City VALUES(200,        19,        '深圳市',        '0755');

INSERT INTO City VALUES(201,        19,        '珠海市',        '0756');

INSERT INTO City VALUES(202,        19,        '汕头市',        '0754');

INSERT INTO City VALUES(203,        19,        '佛山市',        '0757');

INSERT INTO City VALUES(204,        19,        '江门市',        '0750');

INSERT INTO City VALUES(205,        19,        '湛江市',        '0759');

INSERT INTO City VALUES(206,        19,        '茂名市',        '0668');

INSERT INTO City VALUES(207,        19,        '肇庆市',        '0758');

INSERT INTO City VALUES(208,        19,        '惠州市',        '0752');

INSERT INTO City VALUES(209,        19,        '梅州市',        '0753');

INSERT INTO City VALUES(210,        19,        '汕尾市',        '0660');

INSERT INTO City VALUES(211,        19,        '河源市',        '0762');

INSERT INTO City VALUES(212,        19,        '阳江市',        '0662');

INSERT INTO City VALUES(213,        19,        '清远市',        '0763');

INSERT INTO City VALUES(214,        19,        '东莞市',        '0769');

INSERT INTO City VALUES(215,        19,        '中山市',        '0760');

INSERT INTO City VALUES(216,        19,        '潮州市',        '0768');

INSERT INTO City VALUES(217,        19,        '揭阳市',        '0663');

INSERT INTO City VALUES(218,        19,        '云浮市',        '0766');

INSERT INTO City VALUES(219,        20,        '南宁市',        '0771');

INSERT INTO City VALUES(220,        20,        '柳州市',        '0772');

INSERT INTO City VALUES(221,        20,        '桂林市',        '0773');

INSERT INTO City VALUES(222,        20,        '梧州市',        '0774');

INSERT INTO City VALUES(223,        20,        '北海市',        '0779');

INSERT INTO City VALUES(224,        20,        '防城港市',        '0770');

INSERT INTO City VALUES(225,        20,        '钦州市',        '0777');

INSERT INTO City VALUES(226,        20,        '贵港市',        '0775');

INSERT INTO City VALUES(227,        20,        '玉林市',        '0775');

INSERT INTO City VALUES(228,        20,        '百色市',        '0776');

INSERT INTO City VALUES(229,        20,        '贺州市',        '0774');

INSERT INTO City VALUES(230,        20,        '河池市',        '0778');

INSERT INTO City VALUES(231,        20,        '来宾市',        '0772');

INSERT INTO City VALUES(232,        20,        '崇左市',        '0771');

INSERT INTO City VALUES(233,        21,        '海口市',        '0898');

INSERT INTO City VALUES(234,        21,        '三亚市',        '0898');

INSERT INTO City VALUES(235,        21,        '省直辖县级行政单位',        '0898');

INSERT INTO City VALUES(236,        22,        '重庆市',        '023');

INSERT INTO City VALUES(237,        23,        '成都市',        '028');

INSERT INTO City VALUES(238,        23,        '自贡市',        '0813');

INSERT INTO City VALUES(239,        23,        '攀枝花市',        '0812');

INSERT INTO City VALUES(240,        23,        '泸州市',        '0830');

INSERT INTO City VALUES(241,        23,        '德阳市',        '0838');

INSERT INTO City VALUES(242,        23,        '绵阳市',        '0816');

INSERT INTO City VALUES(243,        23,        '广元市',        '0839');

INSERT INTO City VALUES(244,        23,        '遂宁市',        '0825');

INSERT INTO City VALUES(245,        23,        '内江市',        '0832');

INSERT INTO City VALUES(246,        23,        '乐山市',        '0833');

INSERT INTO City VALUES(247,        23,        '南充市',        '0817');

INSERT INTO City VALUES(248,        23,        '眉山市',        '0833');

INSERT INTO City VALUES(249,        23,        '宜宾市',        '0831');

INSERT INTO City VALUES(250,        23,        '广安市',        '0826');

INSERT INTO City VALUES(251,        23,        '达州市',        '0818');

INSERT INTO City VALUES(252,        23,        '雅安市',        '0835');

INSERT INTO City VALUES(253,        23,        '巴中市',        '0827');

INSERT INTO City VALUES(254,        23,        '资阳市',        '0832');

INSERT INTO City VALUES(255,        23,        '阿坝藏族羌族自治州',        '0837');

INSERT INTO City VALUES(256,        23,        '甘孜藏族自治州',        '0836');

INSERT INTO City VALUES(257,        23,        '凉山彝族自治州',        '0834');

INSERT INTO City VALUES(258,        24,        '贵阳市',        '0851');

INSERT INTO City VALUES(259,        24,        '六盘水市',        '0858');

INSERT INTO City VALUES(260,        24,        '遵义市',        '0852');

INSERT INTO City VALUES(261,        24,        '安顺市',        '0853');

INSERT INTO City VALUES(262,        24,        '铜仁地区',        '0856');

INSERT INTO City VALUES(263,        24,        '黔西南布依族苗族自治州',        '0859');

INSERT INTO City VALUES(264,        24,        '毕节地区',        '0857');

INSERT INTO City VALUES(265,        24,        '黔东南苗族侗族自治州',        '0855');

INSERT INTO City VALUES(266,        24,        '黔南布依族苗族自治州',        '0854');

INSERT INTO City VALUES(267,        25,        '昆明市',        '0871');

INSERT INTO City VALUES(268,        25,        '曲靖市',        '0874');

INSERT INTO City VALUES(269,        25,        '玉溪市',        '0877');

INSERT INTO City VALUES(270,        25,        '保山市',        '0875');

INSERT INTO City VALUES(271,        25,        '昭通市',        '0870');

INSERT INTO City VALUES(272,        25,        '丽江市',        '0888');

INSERT INTO City VALUES(273,        25,        '普洱市',        '0879');

INSERT INTO City VALUES(274,        25,        '临沧市',        '0883');

INSERT INTO City VALUES(275,        25,        '楚雄彝族自治州',        '0878');

INSERT INTO City VALUES(276,        25,        '红河哈尼族彝族自治州',        '0873');

INSERT INTO City VALUES(277,        25,        '文山壮族苗族自治州',        '0876');

INSERT INTO City VALUES(278,        25,        '西双版纳傣族自治州',        '0691');

INSERT INTO City VALUES(279,        25,        '大理白族自治州',        '0872');

INSERT INTO City VALUES(280,        25,        '德宏傣族景颇族自治州',        '0692');

INSERT INTO City VALUES(281,        25,        '怒江傈僳族自治州',        '0886');

INSERT INTO City VALUES(282,        25,        '迪庆藏族自治州',        '0887');

INSERT INTO City VALUES(283,        26,        '拉萨市',        '0891');

INSERT INTO City VALUES(284,        26,        '昌都地区',        '0895');

INSERT INTO City VALUES(285,        26,        '山南地区',        '0893');

INSERT INTO City VALUES(286,        26,        '日喀则地区',        '0892');

INSERT INTO City VALUES(287,        26,        '那曲地区',        '0896');

INSERT INTO City VALUES(288,        26,        '阿里地区',        '0897');

INSERT INTO City VALUES(289,        26,        '林芝地区',        '0894');

INSERT INTO City VALUES(290,        27,        '西安市',        '029');

INSERT INTO City VALUES(291,        27,        '铜川市',        '0919');

INSERT INTO City VALUES(292,        27,        '宝鸡市',        '0917');

INSERT INTO City VALUES(293,        27,        '咸阳市',        '029');

INSERT INTO City VALUES(294,        27,        '渭南市',        '0913');

INSERT INTO City VALUES(295,        27,        '延安市',        '0911');

INSERT INTO City VALUES(296,        27,        '汉中市',        '0916');

INSERT INTO City VALUES(297,        27,        '榆林市',        '0912');

INSERT INTO City VALUES(298,        27,        '安康市',        '0915');

INSERT INTO City VALUES(299,        27,        '商洛市',        '0914');

INSERT INTO City VALUES(300,        28,        '兰州市',        '0931');

INSERT INTO City VALUES(301,        28,        '嘉峪关市',        '0937');

INSERT INTO City VALUES(302,        28,        '金昌市',        '0935');

INSERT INTO City VALUES(303,        28,        '白银市',        '0943');

INSERT INTO City VALUES(304,        28,        '天水市',        '0938');

INSERT INTO City VALUES(305,        28,        '武威市',        '0935');

INSERT INTO City VALUES(306,        28,        '张掖市',        '0936');

INSERT INTO City VALUES(307,        28,        '平凉市',        '0933');

INSERT INTO City VALUES(308,        28,        '酒泉市',        '0937');

INSERT INTO City VALUES(309,        28,        '庆阳市',        '0934');

INSERT INTO City VALUES(310,        28,        '定西市',        '0932');

INSERT INTO City VALUES(311,        28,        '陇南市',        '0939');

INSERT INTO City VALUES(312,        28,        '临夏回族自治州',        '0930');

INSERT INTO City VALUES(313,        28,        '甘南藏族自治州',        '0941');

INSERT INTO City VALUES(314,        29,        '西宁市',        '0971');

INSERT INTO City VALUES(315,        29,        '海东地区',        '0972');

INSERT INTO City VALUES(316,        29,        '海北藏族自治州',        '0970');

INSERT INTO City VALUES(317,        29,        '黄南藏族自治州',        '0973');

INSERT INTO City VALUES(318,        29,        '海南藏族自治州',        '0974');

INSERT INTO City VALUES(319,        29,        '果洛藏族自治州',        '0975');

INSERT INTO City VALUES(320,        29,        '玉树藏族自治州',        '0976');

INSERT INTO City VALUES(321,        29,        '海西蒙古族藏族自治州',        '0979');

INSERT INTO City VALUES(322,        30,        '银川市',        '0951');

INSERT INTO City VALUES(323,        30,        '石嘴山市',        '0952');

INSERT INTO City VALUES(324,        30,        '吴忠市',        '0953');

INSERT INTO City VALUES(325,        30,        '固原市',        '0954');

INSERT INTO City VALUES(326,        30,        '中卫市',        '0955');

INSERT INTO City VALUES(327,        31,        '乌鲁木齐市',        '0991');

INSERT INTO City VALUES(328,        31,        '克拉玛依市',        '0990');

INSERT INTO City VALUES(329,        31,        '吐鲁番地区',        '0995');

INSERT INTO City VALUES(330,        31,        '哈密地区',        '0902');

INSERT INTO City VALUES(331,        31,        '昌吉回族自治州',        '0994');

INSERT INTO City VALUES(332,        31,        '博尔塔拉蒙古自治州',        '0909');

INSERT INTO City VALUES(333,        31,        '巴音郭楞蒙古自治州',        '0996');

INSERT INTO City VALUES(334,        31,        '阿克苏地区',        '0997');

INSERT INTO City VALUES(335,        31,        '克孜勒苏柯尔克孜自治州',        '0908');

INSERT INTO City VALUES(336,        31,        '喀什地区',        '0998');

INSERT INTO City VALUES(337,        31,        '和田地区',        '0903');

INSERT INTO City VALUES(338,        31,        '伊犁哈萨克自治州',        '0999');

INSERT INTO City VALUES(339,        31,        '塔城地区',        '0901');

INSERT INTO City VALUES(340,        31,        '阿勒泰地区',        '0906');

INSERT INTO City VALUES(341,        31,        '省直辖县级行政单位',        '0993');

INSERT INTO City VALUES(342,        32,        '香港',        '1000');

INSERT INTO City VALUES(343,        33,        '澳门',        '1001');

INSERT INTO City VALUES(344,        34,        '台湾',        '1002');

-- 县区
CREATE TABLE `weather`.`District`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `city_id` INT,
  `name` VARCHAR(50),
  `postcode` VARCHAR(50),
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_DISTRICT_CITY_ID` FOREIGN KEY (`city_id`) REFERENCES `weather`.`city`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
);
insert into District values(1,        1,        '东城区',        '100010');

insert into District values(2,        1,        '西城区',        '100032');

insert into District values(3,        1,        '崇文区',        '100061');

insert into District values(4,        1,        '宣武区',        '100054');

insert into District values(5,        1,        '朝阳区',        '100020');

insert into District values(6,        1,        '丰台区',        '100071');

insert into District values(7,        1,        '石景山区',        '100043');

insert into District values(8,        1,        '海淀区',        '100089');

insert into District values(9,        1,        '门头沟区',        '102300');

insert into District values(10,        1,        '房山区',        '102488');

insert into District values(11,        1,        '通州区',        '101100');

insert into District values(12,        1,        '顺义区',        '101300');

insert into District values(13,        1,        '昌平区',        '102200');

insert into District values(14,        1,        '大兴区',        '102600');

insert into District values(15,        1,        '怀柔区',        '101400');

insert into District values(16,        1,        '平谷区',        '101200');

insert into District values(17,        1,        '密云县',        '101500');

insert into District values(18,        1,        '延庆县',        '102100');

insert into District values(19,        2,        '和平区',        '300041');

insert into District values(20,        2,        '河东区',        '300171');

insert into District values(21,        2,        '河西区',        '300202');

insert into District values(22,        2,        '南开区',        '300100');

insert into District values(23,        2,        '河北区',        '300143');

insert into District values(24,        2,        '红桥区',        '300131');

insert into District values(25,        2,        '塘沽区',        '300450');

insert into District values(26,        2,        '汉沽区',        '300480');

insert into District values(27,        2,        '大港区',        '300270');

insert into District values(28,        2,        '东丽区',        '300300');

insert into District values(29,        2,        '西青区',        '300380');

insert into District values(30,        2,        '津南区',        '300350');

insert into District values(31,        2,        '北辰区',        '300400');

insert into District values(32,        2,        '武清区',        '301700');

insert into District values(33,        2,        '宝坻区',        '301800');

insert into District values(34,        2,        '宁河县',        '301500');

insert into District values(35,        2,        '静海县',        '301600');

insert into District values(36,        2,        '蓟县',        '301900');

insert into District values(37,        2,        '保税区',        '300308');

insert into District values(38,        2,        '经济技术开发区',        '300457');

insert into District values(39,        2,        '高新区',        '300384');

insert into District values(40,        2,        '滨海新区',        '300457');

insert into District values(41,        3,        '长安区',        '050011');

insert into District values(42,        3,        '桥东区',        '050011');

insert into District values(43,        3,        '桥西区',        '050051');

insert into District values(44,        3,        '新华区',        '050051');

insert into District values(45,        3,        '井陉矿区',        '050100');

insert into District values(46,        3,        '裕华区',        '050081');

insert into District values(47,        3,        '井陉县',        '050300');

insert into District values(48,        3,        '正定县',        '050800');

insert into District values(49,        3,        '栾城县',        '051430');

insert into District values(50,        3,        '行唐县',        '050600');

insert into District values(51,        3,        '灵寿县',        '050500');

insert into District values(52,        3,        '高邑县',        '051330');

insert into District values(53,        3,        '深泽县',        '052560');

insert into District values(54,        3,        '赞皇县',        '051230');

insert into District values(55,        3,        '无极县',        '052400');

insert into District values(56,        3,        '平山县',        '050400');

insert into District values(57,        3,        '元氏县',        '051130');

insert into District values(58,        3,        '赵县',        '051530');

insert into District values(59,        3,        '辛集市',        '052300');

insert into District values(60,        3,        '藁城市',        '052160');

insert into District values(61,        3,        '晋州市',        '052200');

insert into District values(62,        3,        '新乐市',        '050700');

insert into District values(63,        3,        '鹿泉市',        '050200');

insert into District values(64,        3,        '高新技术开发区',        '050035');

insert into District values(65,        4,        '路南区',        '063017');

insert into District values(66,        4,        '路北区',        '063015');

insert into District values(67,        4,        '古冶区',        '063104');

insert into District values(68,        4,        '开平区',        '063021');

insert into District values(69,        4,        '丰南区',        '063300');

insert into District values(70,        4,        '丰润区',        '064000');

insert into District values(71,        4,        '滦县',        '063700');

insert into District values(72,        4,        '滦南县',        '063500');

insert into District values(73,        4,        '乐亭县',        '063600');

insert into District values(74,        4,        '迁西县',        '064300');

insert into District values(75,        4,        '玉田县',        '064100');

insert into District values(76,        4,        '唐海县',        '063200');

insert into District values(77,        4,        '遵化市',        '064200');

insert into District values(78,        4,        '迁安市',        '064400');

insert into District values(79,        4,        '高新区',        '063020');

insert into District values(80,        4,        '汉沽管理区',        '301501');

insert into District values(81,        4,        '海港开发区',        '063600');

insert into District values(82,        4,        '芦台开发区',        '301501');

insert into District values(83,        4,        '南堡开发区',        '063305');

insert into District values(84,        4,        '曹妃甸工业区',        '063200');

insert into District values(85,        5,        '海港区',        '066000');

insert into District values(86,        5,        '山海关区',        '066200');

insert into District values(87,        5,        '北戴河区',        '066100');

insert into District values(88,        5,        '青龙满族自治县',        '066500');

insert into District values(89,        5,        '昌黎县',        '066600');

insert into District values(90,        5,        '抚宁县',        '066300');

insert into District values(91,        5,        '卢龙县',        '066400');

insert into District values(92,        5,        '经济技术开发区',        '066004');

insert into District values(93,        6,        '邯山区',        '056001');

insert into District values(94,        6,        '丛台区',        '056004');

insert into District values(95,        6,        '复兴区',        '056003');

insert into District values(96,        6,        '峰峰矿区',        '056200');

insert into District values(97,        6,        '邯郸县',        '056100');

insert into District values(98,        6,        '临漳县',        '056600');

insert into District values(99,        6,        '成安县',        '056700');

insert into District values(100,        6,        '大名县',        '056900');

insert into District values(101,        6,        '涉县',        '056400');

insert into District values(102,        6,        '磁县',        '056500');

insert into District values(103,        6,        '肥乡县',        '057550');

insert into District values(104,        6,        '永年县',        '057150');

insert into District values(105,        6,        '邱县',        '057450');

insert into District values(106,        6,        '鸡泽县',        '057350');

insert into District values(107,        6,        '广平县',        '057650');

insert into District values(108,        6,        '馆陶县',        '057750');

insert into District values(109,        6,        '魏县',        '056800');

insert into District values(110,        6,        '曲周县',        '057250');

insert into District values(111,        6,        '武安市',        '056300');

insert into District values(112,        6,        '经济开发区',        '056002');

insert into District values(113,        7,        '桥东区',        '054001');

insert into District values(114,        7,        '桥西区',        '054000');

insert into District values(115,        7,        '邢台县',        '054001');

insert into District values(116,        7,        '临城县',        '054300');

insert into District values(117,        7,        '内丘县',        '054200');

insert into District values(118,        7,        '柏乡县',        '055450');

insert into District values(119,        7,        '隆尧县',        '055350');

insert into District values(120,        7,        '任县',        '055150');

insert into District values(121,        7,        '南和县',        '054400');

insert into District values(122,        7,        '宁晋县',        '055550');

insert into District values(123,        7,        '巨鹿县',        '055250');

insert into District values(124,        7,        '新河县',        '051730');

insert into District values(125,        7,        '广宗县',        '054600');

insert into District values(126,        7,        '平乡县',        '054500');

insert into District values(127,        7,        '威县',        '054700');

insert into District values(128,        7,        '清河县',        '054800');

insert into District values(129,        7,        '临西县',        '054900');

insert into District values(130,        7,        '南宫市',        '055750');

insert into District values(131,        7,        '沙河市',        '054100');

insert into District values(132,        8,        '新市区',        '071052');

insert into District values(133,        8,        '南市区',        '071000');

insert into District values(134,        8,        '北市区',        '071000');

insert into District values(135,        8,        '满城县',        '072150');

insert into District values(136,        8,        '清苑县',        '071100');

insert into District values(137,        8,        '涞水县',        '074100');

insert into District values(138,        8,        '阜平县',        '073200');

insert into District values(139,        8,        '徐水县',        '072550');

insert into District values(140,        8,        '定兴县',        '072650');

insert into District values(141,        8,        '唐县',        '072350');

insert into District values(142,        8,        '高阳县',        '071500');

insert into District values(143,        8,        '容城县',        '071700');

insert into District values(144,        8,        '涞源县',        '074300');

insert into District values(145,        8,        '望都县',        '072450');

insert into District values(146,        8,        '安新县',        '071600');

insert into District values(147,        8,        '易县',        '074200');

insert into District values(148,        8,        '曲阳县',        '073100');

insert into District values(149,        8,        '蠡县',        '071400');

insert into District values(150,        8,        '顺平县',        '072250');

insert into District values(151,        8,        '博野县',        '071300');

insert into District values(152,        8,        '雄县',        '071800');

insert into District values(153,        8,        '涿州市',        '072750');

insert into District values(154,        8,        '定州市',        '073000');

insert into District values(155,        8,        '安国市',        '071200');

insert into District values(156,        8,        '高碑店市',        '074000');

insert into District values(157,        9,        '桥东区',        '075000');

insert into District values(158,        9,        '桥西区',        '075061');

insert into District values(159,        9,        '宣化区',        '075100');

insert into District values(160,        9,        '下花园区',        '075300');

insert into District values(161,        9,        '宣化县',        '075100');

insert into District values(162,        9,        '张北县',        '076450');

insert into District values(163,        9,        '康保县',        '076650');

insert into District values(164,        9,        '沽源县',        '076550');

insert into District values(165,        9,        '尚义县',        '076750');

insert into District values(166,        9,        '蔚县',        '075700');

insert into District values(167,        9,        '阳原县',        '075800');

insert into District values(168,        9,        '怀安县',        '076150');

insert into District values(169,        9,        '万全县',        '076250');

insert into District values(170,        9,        '怀来县',        '075400');

insert into District values(171,        9,        '涿鹿县',        '075600');

insert into District values(172,        9,        '赤城县',        '075500');

insert into District values(173,        9,        '崇礼县',        '076350');

insert into District values(174,        10,        '双桥区',        '067000');

insert into District values(175,        10,        '双滦区',        '067000');

insert into District values(176,        10,        '鹰手营子矿区',        '067200');

insert into District values(177,        10,        '承德县',        '067400');

insert into District values(178,        10,        '兴隆县',        '067300');

insert into District values(179,        10,        '平泉县',        '067500');

insert into District values(180,        10,        '滦平县',        '068250');

insert into District values(181,        10,        '隆化县',        '068150');

insert into District values(182,        10,        '丰宁满族自治县',        '068350');

insert into District values(183,        10,        '宽城满族自治县',        '067600');

insert into District values(184,        10,        '围场满族蒙古族自治县',        '068450');

insert into District values(185,        11,        '新华区',        '061000');

insert into District values(186,        11,        '运河区',        '061000');

insert into District values(187,        11,        '沧县',        '061000');

insert into District values(188,        11,        '青县',        '062650');

insert into District values(189,        11,        '东光县',        '061600');

insert into District values(190,        11,        '海兴县',        '061200');

insert into District values(191,        11,        '盐山县',        '061300');

insert into District values(192,        11,        '肃宁县',        '062350');

insert into District values(193,        11,        '南皮县',        '061500');

insert into District values(194,        11,        '吴桥县',        '061800');

insert into District values(195,        11,        '献县',        '062250');

insert into District values(196,        11,        '孟村回族自治县',        '061400');

insert into District values(197,        11,        '泊头市',        '062150');

insert into District values(198,        11,        '任丘市',        '062550');

insert into District values(199,        11,        '黄骅市',        '061100');

insert into District values(200,        11,        '河间市',        '062450');

insert into District values(201,        12,        '安次区',        '065000');

insert into District values(202,        12,        '广阳区',        '065000');

insert into District values(203,        12,        '固安县',        '065500');

insert into District values(204,        12,        '永清县',        '065600');

insert into District values(205,        12,        '香河县',        '065400');

insert into District values(206,        12,        '大城县',        '065900');

insert into District values(207,        12,        '文安县',        '065800');

insert into District values(208,        12,        '大厂回族自治县',        '065300');

insert into District values(209,        12,        '霸州市',        '065700');

insert into District values(210,        12,        '三河市',        '065200');

insert into District values(211,        12,        '开发区',        '065001');

insert into District values(212,        13,        '桃城区',        '053000');

insert into District values(213,        13,        '枣强县',        '053100');

insert into District values(214,        13,        '武邑县',        '053400');

insert into District values(215,        13,        '武强县',        '053300');

insert into District values(216,        13,        '饶阳县',        '053900');

insert into District values(217,        13,        '安平县',        '053600');

insert into District values(218,        13,        '故城县',        '253800');

insert into District values(219,        13,        '景县',        '053500');

insert into District values(220,        13,        '阜城县',        '053700');

insert into District values(221,        13,        '冀州市',        '053200');

insert into District values(222,        13,        '深州市',        '053800');

insert into District values(223,        14,        '小店区',        '030032');

insert into District values(224,        14,        '迎泽区',        '030024');

insert into District values(225,        14,        '杏花岭区',        '030001');

insert into District values(226,        14,        '尖草坪区',        '030003');

insert into District values(227,        14,        '万柏林区',        '030027');

insert into District values(228,        14,        '晋源区',        '030025');

insert into District values(229,        14,        '清徐县',        '030400');

insert into District values(230,        14,        '阳曲县',        '030100');

insert into District values(231,        14,        '娄烦县',        '030300');

insert into District values(232,        14,        '古交市',        '030200');

insert into District values(233,        15,        '城区',        '037008');

insert into District values(234,        15,        '矿区',        '037001');

insert into District values(235,        15,        '南郊区',        '037001');

insert into District values(236,        15,        '新荣区',        '037002');

insert into District values(237,        15,        '阳高县',        '038100');

insert into District values(238,        15,        '天镇县',        '038200');

insert into District values(239,        15,        '广灵县',        '037500');

insert into District values(240,        15,        '灵丘县',        '034400');

insert into District values(241,        15,        '浑源县',        '037400');

insert into District values(242,        15,        '左云县',        '037100');

insert into District values(243,        15,        '大同县',        '037300');

insert into District values(244,        16,        '城区',        '045000');

insert into District values(245,        16,        '矿区',        '045000');

insert into District values(246,        16,        '郊区',        '045011');

insert into District values(247,        16,        '平定县',        '045200');

insert into District values(248,        16,        '盂县',        '045100');

insert into District values(249,        17,        '城区',        '046011');

insert into District values(250,        17,        '郊区',        '046011');

insert into District values(251,        17,        '长治县',        '047100');

insert into District values(252,        17,        '襄垣县',        '046200');

insert into District values(253,        17,        '屯留县',        '046100');

insert into District values(254,        17,        '平顺县',        '047400');

insert into District values(255,        17,        '黎城县',        '047600');

insert into District values(256,        17,        '壶关县',        '047300');

insert into District values(257,        17,        '长子县',        '046600');

insert into District values(258,        17,        '武乡县',        '046300');

insert into District values(259,        17,        '沁县',        '046400');

insert into District values(260,        17,        '沁源县',        '046500');

insert into District values(261,        17,        '潞城市',        '047500');

insert into District values(262,        18,        '城区',        '048000');

insert into District values(263,        18,        '沁水县',        '048200');

insert into District values(264,        18,        '阳城县',        '048100');

insert into District values(265,        18,        '陵川县',        '048300');

insert into District values(266,        18,        '泽州县',        '048012');

insert into District values(267,        18,        '高平市',        '048400');

insert into District values(268,        19,        '朔城区',        '038500');

insert into District values(269,        19,        '平鲁区',        '038600');

insert into District values(270,        19,        '山阴县',        '036900');

insert into District values(271,        19,        '应县',        '037600');

insert into District values(272,        19,        '右玉县',        '037200');

insert into District values(273,        19,        '怀仁县',        '038300');

insert into District values(274,        20,        '榆次区',        '030600');

insert into District values(275,        20,        '榆社县',        '031800');

insert into District values(276,        20,        '左权县',        '032600');

insert into District values(277,        20,        '和顺县',        '032700');

insert into District values(278,        20,        '昔阳县',        '045300');

insert into District values(279,        20,        '寿阳县',        '045400');

insert into District values(280,        20,        '太谷县',        '030800');

insert into District values(281,        20,        '祁县',        '030900');

insert into District values(282,        20,        '平遥县',        '031100');

insert into District values(283,        20,        '灵石县',        '031300');

insert into District values(284,        20,        '介休市',        '031200');

insert into District values(285,        21,        '盐湖区',        '044000');

insert into District values(286,        21,        '临猗县',        '044100');

insert into District values(287,        21,        '万荣县',        '044200');

insert into District values(288,        21,        '闻喜县',        '043800');

insert into District values(289,        21,        '稷山县',        '043200');

insert into District values(290,        21,        '新绛县',        '043100');

insert into District values(291,        21,        '绛县',        '043600');

insert into District values(292,        21,        '垣曲县',        '043700');

insert into District values(293,        21,        '夏县',        '044400');

insert into District values(294,        21,        '平陆县',        '044300');

insert into District values(295,        21,        '芮城县',        '044600');

insert into District values(296,        21,        '永济市',        '044500');

insert into District values(297,        21,        '河津市',        '043300');

insert into District values(298,        22,        '忻府区',        '034000');

insert into District values(299,        22,        '定襄县',        '035400');

insert into District values(300,        22,        '五台县',        '035500');

insert into District values(301,        22,        '代县',        '034200');

insert into District values(302,        22,        '繁峙县',        '034300');

insert into District values(303,        22,        '宁武县',        '036700');

insert into District values(304,        22,        '静乐县',        '035100');

insert into District values(305,        22,        '神池县',        '036100');

insert into District values(306,        22,        '五寨县',        '036200');

insert into District values(307,        22,        '岢岚县',        '036300');

insert into District values(308,        22,        '河曲县',        '036500');

insert into District values(309,        22,        '保德县',        '036600');

insert into District values(310,        22,        '偏关县',        '036400');

insert into District values(311,        22,        '原平市',        '034100');

insert into District values(312,        23,        '尧都区',        '041000');

insert into District values(313,        23,        '曲沃县',        '043400');

insert into District values(314,        23,        '翼城县',        '043500');

insert into District values(315,        23,        '襄汾县',        '041500');

insert into District values(316,        23,        '洪洞县',        '031600');

insert into District values(317,        23,        '古县',        '042400');

insert into District values(318,        23,        '安泽县',        '042500');

insert into District values(319,        23,        '浮山县',        '042600');

insert into District values(320,        23,        '吉县',        '042200');

insert into District values(321,        23,        '乡宁县',        '042100');

insert into District values(322,        23,        '大宁县',        '042300');

insert into District values(323,        23,        '隰县',        '041300');

insert into District values(324,        23,        '永和县',        '041400');

insert into District values(325,        23,        '蒲县',        '041200');

insert into District values(326,        23,        '汾西县',        '031500');

insert into District values(327,        23,        '侯马市',        '043007');

insert into District values(328,        23,        '霍州市',        '031400');

insert into District values(329,        24,        '离石区',        '033000');

insert into District values(330,        24,        '文水县',        '032100');

insert into District values(331,        24,        '交城县',        '030500');

insert into District values(332,        24,        '兴县',        '033600');

insert into District values(333,        24,        '临县',        '033200');

insert into District values(334,        24,        '柳林县',        '033300');

insert into District values(335,        24,        '石楼县',        '032500');

insert into District values(336,        24,        '岚县',        '033500');

insert into District values(337,        24,        '方山县',        '033100');

insert into District values(338,        24,        '中阳县',        '033400');

insert into District values(339,        24,        '交口县',        '032400');

insert into District values(340,        24,        '孝义市',        '032300');

insert into District values(341,        24,        '汾阳市',        '032200');

insert into District values(342,        25,        '回民区',        '010030');

insert into District values(343,        25,        '玉泉区',        '010020');

insert into District values(344,        25,        '新城区',        '010030');

insert into District values(345,        25,        '赛罕区',        '010020');

insert into District values(346,        25,        '土默特左旗',        '010100');

insert into District values(347,        25,        '托克托县',        '010200');

insert into District values(348,        25,        '和林格尔县',        '011500');

insert into District values(349,        25,        '清水河县',        '011600');

insert into District values(350,        25,        '武川县',        '011700');

insert into District values(351,        26,        '东河区',        '014040');

insert into District values(352,        26,        '昆都仑区',        '014010');

insert into District values(353,        26,        '青山区',        '014030');

insert into District values(354,        26,        '石拐区',        '014070');

insert into District values(355,        26,        '白云矿区',        '014080');

insert into District values(356,        26,        '九原区',        '014060');

insert into District values(357,        26,        '土默特右旗',        '014100');

insert into District values(358,        26,        '固阳县',        '014200');

insert into District values(359,        26,        '达尔罕茂明安联合旗',        '014500');

insert into District values(360,        27,        '海勃湾区',        '016000');

insert into District values(361,        27,        '海南区',        '016030');

insert into District values(362,        27,        '乌达区',        '016040');

insert into District values(363,        28,        '红山区',        '024020');

insert into District values(364,        28,        '元宝山区',        '024076');

insert into District values(365,        28,        '松山区',        '024005');

insert into District values(366,        28,        '阿鲁科尔沁旗',        '025550');

insert into District values(367,        28,        '巴林左旗',        '025450');

insert into District values(368,        28,        '巴林右旗',        '025150');

insert into District values(369,        28,        '林西县',        '025250');

insert into District values(370,        28,        '克什克腾旗',        '025350');

insert into District values(371,        28,        '翁牛特旗',        '024500');

insert into District values(372,        28,        '喀喇沁旗',        '024400');

insert into District values(373,        28,        '宁城县',        '024200');

insert into District values(374,        28,        '敖汉旗',        '024300');

insert into District values(375,        28,        '新城区',        '025350');

insert into District values(376,        29,        '科尔沁区',        '028000');

insert into District values(377,        29,        '科尔沁左翼中旗',        '029300');

insert into District values(378,        29,        '科尔沁左翼后旗',        '028100');

insert into District values(379,        29,        '开鲁县',        '028400');

insert into District values(380,        29,        '库伦旗',        '028200');

insert into District values(381,        29,        '奈曼旗',        '028300');

insert into District values(382,        29,        '扎鲁特旗',        '029100');

insert into District values(383,        29,        '霍林郭勒市',        '029200');

insert into District values(384,        30,        '东胜区',        '017000');

insert into District values(385,        30,        '达拉特旗',        '014300');

insert into District values(386,        30,        '准格尔旗',        '017100');

insert into District values(387,        30,        '鄂托克前旗',        '016200');

insert into District values(388,        30,        '鄂托克旗',        '016100');

insert into District values(389,        30,        '杭锦旗',        '017400');

insert into District values(390,        30,        '乌审旗',        '017300');

insert into District values(391,        30,        '伊金霍洛旗',        '017200');

insert into District values(392,        31,        '海拉尔区',        '021000');

insert into District values(393,        31,        '阿荣旗',        '162750');

insert into District values(394,        31,        '莫力达瓦达斡尔族自治旗',        '162850');

insert into District values(395,        31,        '鄂伦春自治旗',        '165450');

insert into District values(396,        31,        '鄂温克族自治旗',        '021100');

insert into District values(397,        31,        '陈巴尔虎旗',        '021500');

insert into District values(398,        31,        '新巴尔虎左旗',        '021200');

insert into District values(399,        31,        '新巴尔虎右旗',        '021300');

insert into District values(400,        31,        '满洲里市',        '021400');

insert into District values(401,        31,        '牙克石市',        '022150');

insert into District values(402,        31,        '扎兰屯市',        '162650');

insert into District values(403,        31,        '额尔古纳市',        '022250');

insert into District values(404,        31,        '根河市',        '022350');

insert into District values(405,        32,        '临河区',        '015001');

insert into District values(406,        32,        '五原县',        '015100');

insert into District values(407,        32,        '磴口县',        '015200');

insert into District values(408,        32,        '乌拉特前旗',        '014400');

insert into District values(409,        32,        '乌拉特中旗',        '015300');

insert into District values(410,        32,        '乌拉特后旗',        '015500');

insert into District values(411,        32,        '杭锦后旗',        '015400');

insert into District values(412,        33,        '集宁区',        '012000');

insert into District values(413,        33,        '卓资县',        '012300');

insert into District values(414,        33,        '化德县',        '013350');

insert into District values(415,        33,        '商都县',        '013450');

insert into District values(416,        33,        '兴和县',        '013650');

insert into District values(417,        33,        '凉城县',        '013750');

insert into District values(418,        33,        '察哈尔右翼前旗',        '012200');

insert into District values(419,        33,        '察哈尔右翼中旗',        '013550');

insert into District values(420,        33,        '察哈尔右翼后旗',        '012400');

insert into District values(421,        33,        '四子王旗',        '011800');

insert into District values(422,        33,        '丰镇市',        '012100');

insert into District values(423,        34,        '乌兰浩特市',        '137401');

insert into District values(424,        34,        '阿尔山市',        '137800');

insert into District values(425,        34,        '科尔沁右翼前旗',        '137423');

insert into District values(426,        34,        '科尔沁右翼中旗',        '029400');

insert into District values(427,        34,        '扎赉特旗',        '137600');

insert into District values(428,        34,        '突泉县',        '137500');

insert into District values(429,        35,        '二连浩特市',        '011100');

insert into District values(430,        35,        '锡林浩特市',        '026000');

insert into District values(431,        35,        '阿巴嘎旗',        '011400');

insert into District values(432,        35,        '苏尼特左旗',        '011300');

insert into District values(433,        35,        '苏尼特右旗',        '011200');

insert into District values(434,        35,        '东乌珠穆沁旗',        '026300');

insert into District values(435,        35,        '西乌珠穆沁旗',        '026200');

insert into District values(436,        35,        '太仆寺旗',        '027000');

insert into District values(437,        35,        '镶黄旗',        '013250');

insert into District values(438,        35,        '正镶白旗',        '013800');

insert into District values(439,        35,        '正蓝旗',        '027200');

insert into District values(440,        35,        '多伦县',        '027300');

insert into District values(441,        36,        '阿拉善左旗',        '750306');

insert into District values(442,        36,        '阿拉善右旗',        '737300');

insert into District values(443,        36,        '额济纳旗',        '735400');

insert into District values(444,        37,        '和平区',        '110001');

insert into District values(445,        37,        '沈河区',        '110013');

insert into District values(446,        37,        '大东区',        '110041');

insert into District values(447,        37,        '皇姑区',        '110031');

insert into District values(448,        37,        '铁西区',        '110021');

insert into District values(449,        37,        '苏家屯区',        '110101');

insert into District values(450,        37,        '东陵区',        '110015');

insert into District values(451,        37,        '沈北新区',        '110121');

insert into District values(452,        37,        '于洪区',        '110141');

insert into District values(453,        37,        '辽中县',        '110200');

insert into District values(454,        37,        '康平县',        '110500');

insert into District values(455,        37,        '法库县',        '110400');

insert into District values(456,        37,        '新民市',        '110300');

insert into District values(457,        37,        '经济技术开发区',        '110141');

insert into District values(458,        37,        '浑南新区',        '110179');

insert into District values(459,        37,        '新城子经济技术开发区',        '110121');

insert into District values(460,        38,        '中山区',        '116001');

insert into District values(461,        38,        '西岗区',        '116011');

insert into District values(462,        38,        '沙河口区',        '116021');

insert into District values(463,        38,        '甘井子区',        '116033');

insert into District values(464,        38,        '旅顺口区',        '116041');

insert into District values(465,        38,        '金州区',        '116100');

insert into District values(466,        38,        '长海县',        '116500');

insert into District values(467,        38,        '瓦房店市',        '116300');

insert into District values(468,        38,        '普兰店市',        '116200');

insert into District values(469,        38,        '庄河市',        '116400');

insert into District values(470,        38,        '开发区',        '116600');

insert into District values(471,        38,        '保税区',        '116600');

insert into District values(472,        39,        '铁东区',        '114001');

insert into District values(473,        39,        '铁西区',        '114013');

insert into District values(474,        39,        '立山区',        '114031');

insert into District values(475,        39,        '千山区',        '114041');

insert into District values(476,        39,        '台安县',        '114100');

insert into District values(477,        39,        '岫岩满族自治县',        '114300');

insert into District values(478,        39,        '海城市',        '114200');

insert into District values(479,        40,        '新抚区',        '113008');

insert into District values(480,        40,        '东洲区',        '113003');

insert into District values(481,        40,        '望花区',        '113001');

insert into District values(482,        40,        '顺城区',        '113006');

insert into District values(483,        40,        '抚顺县',        '113006');

insert into District values(484,        40,        '新宾满族自治县',        '113200');

insert into District values(485,        40,        '清原满族自治县',        '113300');

insert into District values(486,        41,        '平山区',        '117000');

insert into District values(487,        41,        '明山区',        '117021');

insert into District values(488,        41,        '溪湖区',        '117002');

insert into District values(489,        41,        '南芬区',        '117014');

insert into District values(490,        41,        '本溪满族自治县',        '117100');

insert into District values(491,        41,        '桓仁满族自治县',        '117200');

insert into District values(492,        42,        '元宝区',        '118000');

insert into District values(493,        42,        '振兴区',        '118002');

insert into District values(494,        42,        '振安区',        '118001');

insert into District values(495,        42,        '宽甸满族自治县',        '118200');

insert into District values(496,        42,        '东港市',        '118300');

insert into District values(497,        42,        '凤城市',        '118100');

insert into District values(498,        43,        '古塔区',        '121001');

insert into District values(499,        43,        '凌河区',        '121000');

insert into District values(500,        43,        '太和区',        '121011');

insert into District values(501,        43,        '黑山县',        '121400');

insert into District values(502,        43,        '义县',        '121100');

insert into District values(503,        43,        '凌海市',        '121200');

insert into District values(504,        43,        '北宁市',        '121300');

insert into District values(505,        43,        '松山新区',        '121219');

insert into District values(506,        43,        '经济技术开发区',        '121007');

insert into District values(507,        44,        '站前区',        '115002');

insert into District values(508,        44,        '西市区',        '115004');

insert into District values(509,        44,        '鲅鱼圈区',        '115007');

insert into District values(510,        44,        '老边区',        '115005');

insert into District values(511,        44,        '盖州市',        '115200');

insert into District values(512,        44,        '大石桥市',        '115100');

insert into District values(513,        45,        '海州区',        '123000');

insert into District values(514,        45,        '新邱区',        '123005');

insert into District values(515,        45,        '太平区',        '123003');

insert into District values(516,        45,        '清河门区',        '123006');

insert into District values(517,        45,        '细河区',        '123000');

insert into District values(518,        45,        '阜新蒙古族自治县',        '123100');

insert into District values(519,        45,        '彰武县',        '123200');

insert into District values(520,        46,        '白塔区',        '111000');

insert into District values(521,        46,        '文圣区',        '111000');

insert into District values(522,        46,        '宏伟区',        '111003');

insert into District values(523,        46,        '弓长岭区',        '111008');

insert into District values(524,        46,        '太子河区',        '111000');

insert into District values(525,        46,        '辽阳县',        '111200');

insert into District values(526,        46,        '灯塔市',        '111300');

insert into District values(527,        47,        '双台子区',        '124000');

insert into District values(528,        47,        '兴隆台区',        '124010');

insert into District values(529,        47,        '大洼县',        '124200');

insert into District values(530,        47,        '盘山县',        '124000');

insert into District values(531,        48,        '银州区',        '112000');

insert into District values(532,        48,        '清河区',        '112003');

insert into District values(533,        48,        '铁岭县',        '112000');

insert into District values(534,        48,        '西丰县',        '112400');

insert into District values(535,        48,        '昌图县',        '112500');

insert into District values(536,        48,        '调兵山市',        '112700');

insert into District values(537,        48,        '开原市',        '112300');

insert into District values(538,        49,        '双塔区',        '122000');

insert into District values(539,        49,        '龙城区',        '122000');

insert into District values(540,        49,        '朝阳县',        '122000');

insert into District values(541,        49,        '建平县',        '122400');

insert into District values(542,        49,        '喀喇沁左翼蒙古族自治县',        '122300');

insert into District values(543,        49,        '北票市',        '122100');

insert into District values(544,        49,        '凌源市',        '122500');

insert into District values(545,        50,        '连山区',        '125001');

insert into District values(546,        50,        '龙港区',        '125003');

insert into District values(547,        50,        '南票区',        '125027');

insert into District values(548,        50,        '绥中县',        '125200');

insert into District values(549,        50,        '建昌县',        '125300');

insert into District values(550,        50,        '兴城市',        '125100');

insert into District values(551,        51,        '南关区',        '130022');

insert into District values(552,        51,        '宽城区',        '130051');

insert into District values(553,        51,        '朝阳区',        '130012');

insert into District values(554,        51,        '二道区',        '130031');

insert into District values(555,        51,        '绿园区',        '130062');

insert into District values(556,        51,        '双阳区',        '130600');

insert into District values(557,        51,        '农安县',        '130200');

insert into District values(558,        51,        '九台市',        '130500');

insert into District values(559,        51,        '榆树市',        '130400');

insert into District values(560,        51,        '德惠市',        '130300');

insert into District values(561,        51,        '净月经济开发区',        '130117');

insert into District values(562,        51,        '高新技术产业开发区',        '130015');

insert into District values(563,        51,        '经济技术开发区',        '130022');

insert into District values(564,        52,        '昌邑区',        '132002');

insert into District values(565,        52,        '龙潭区',        '132021');

insert into District values(566,        52,        '船营区',        '132011');

insert into District values(567,        52,        '丰满区',        '132013');

insert into District values(568,        52,        '永吉县',        '132200');

insert into District values(569,        52,        '蛟河市',        '132500');

insert into District values(570,        52,        '桦甸市',        '132400');

insert into District values(571,        52,        '舒兰市',        '132600');

insert into District values(572,        52,        '磐石市',        '132300');

insert into District values(573,        53,        '铁西区',        '136000');

insert into District values(574,        53,        '铁东区',        '136001');

insert into District values(575,        53,        '梨树县',        '136500');

insert into District values(576,        53,        '伊通满族自治县',        '130700');

insert into District values(577,        53,        '公主岭市',        '136100');

insert into District values(578,        53,        '双辽市',        '136400');

insert into District values(579,        54,        '龙山区',        '136200');

insert into District values(580,        54,        '西安区',        '136201');

insert into District values(581,        54,        '东丰县',        '136300');

insert into District values(582,        54,        '东辽县',        '136600');

insert into District values(583,        55,        '东昌区',        '134001');

insert into District values(584,        55,        '二道江区',        '134003');

insert into District values(585,        55,        '通化县',        '134100');

insert into District values(586,        55,        '辉南县',        '135100');

insert into District values(587,        55,        '柳河县',        '135300');

insert into District values(588,        55,        '梅河口市',        '135000');

insert into District values(589,        55,        '集安市',        '134200');

insert into District values(590,        56,        '八道江区',        '134300');

insert into District values(591,        56,        '抚松县',        '134500');

insert into District values(592,        56,        '靖宇县',        '135200');

insert into District values(593,        56,        '长白朝鲜族自治县',        '134400');

insert into District values(594,        56,        '江源县',        '134700');

insert into District values(595,        56,        '临江市',        '134600');

insert into District values(596,        57,        '宁江区',        '138000');

insert into District values(597,        57,        '前郭尔罗斯蒙古族自治县',        '138000');

insert into District values(598,        57,        '长岭县',        '131500');

insert into District values(599,        57,        '乾安县',        '131400');

insert into District values(600,        57,        '扶余县',        '131200');

insert into District values(601,        58,        '洮北区',        '137000');

insert into District values(602,        58,        '镇赉县',        '137300');

insert into District values(603,        58,        '通榆县',        '137200');

insert into District values(604,        58,        '洮南市',        '137100');

insert into District values(605,        58,        '大安市',        '131300');

insert into District values(606,        59,        '延吉市',        '133000');

insert into District values(607,        59,        '图们市',        '133100');

insert into District values(608,        59,        '敦化市',        '133700');

insert into District values(609,        59,        '珲春市',        '133300');

insert into District values(610,        59,        '龙井市',        '133400');

insert into District values(611,        59,        '和龙市',        '133500');

insert into District values(612,        59,        '汪清县',        '133200');

insert into District values(613,        59,        '安图县',        '133600');

insert into District values(614,        60,        '道里区',        '150010');

insert into District values(615,        60,        '南岗区',        '150006');

insert into District values(616,        60,        '道外区',        '150020');

insert into District values(617,        60,        '香坊区',        '150036');

insert into District values(618,        60,        '动力区',        '150040');

insert into District values(619,        60,        '平房区',        '150060');

insert into District values(620,        60,        '松北区',        '150028');

insert into District values(621,        60,        '呼兰区',        '150500');

insert into District values(622,        60,        '依兰县',        '154800');

insert into District values(623,        60,        '方正县',        '150800');

insert into District values(624,        60,        '宾县',        '150400');

insert into District values(625,        60,        '巴彦县',        '151800');

insert into District values(626,        60,        '木兰县',        '151900');

insert into District values(627,        60,        '通河县',        '150900');

insert into District values(628,        60,        '延寿县',        '150700');

insert into District values(629,        60,        '阿城市',        '150300');

insert into District values(630,        60,        '双城市',        '150100');

insert into District values(631,        60,        '尚志市',        '150600');

insert into District values(632,        60,        '五常市',        '150200');

insert into District values(633,        61,        '龙沙区',        '161000');

insert into District values(634,        61,        '建华区',        '161006');

insert into District values(635,        61,        '铁锋区',        '161000');

insert into District values(636,        61,        '昂昂溪区',        '161031');

insert into District values(637,        61,        '富拉尔基区',        '161041');

insert into District values(638,        61,        '碾子山区',        '161046');

insert into District values(639,        61,        '梅里斯达斡尔族区',        '161021');

insert into District values(640,        61,        '龙江县',        '161100');

insert into District values(641,        61,        '依安县',        '161500');

insert into District values(642,        61,        '泰来县',        '162400');

insert into District values(643,        61,        '甘南县',        '162100');

insert into District values(644,        61,        '富裕县',        '161200');

insert into District values(645,        61,        '克山县',        '161600');

insert into District values(646,        61,        '克东县',        '164800');

insert into District values(647,        61,        '拜泉县',        '164700');

insert into District values(648,        61,        '讷河市',        '161300');

insert into District values(649,        62,        '鸡冠区',        '158100');

insert into District values(650,        62,        '恒山区',        '158130');

insert into District values(651,        62,        '滴道区',        '158150');

insert into District values(652,        62,        '梨树区',        '158160');

insert into District values(653,        62,        '城子河区',        '158170');

insert into District values(654,        62,        '麻山区',        '158180');

insert into District values(655,        62,        '鸡东县',        '158200');

insert into District values(656,        62,        '虎林市',        '158400');

insert into District values(657,        62,        '密山市',        '158300');

insert into District values(658,        63,        '向阳区',        '154100');

insert into District values(659,        63,        '工农区',        '154101');

insert into District values(660,        63,        '南山区',        '154104');

insert into District values(661,        63,        '兴安区',        '154102');

insert into District values(662,        63,        '东山区',        '154106');

insert into District values(663,        63,        '兴山区',        '154105');

insert into District values(664,        63,        '萝北县',        '154200');

insert into District values(665,        63,        '绥滨县',        '156200');

insert into District values(666,        64,        '尖山区',        '155100');

insert into District values(667,        64,        '岭东区',        '155120');

insert into District values(668,        64,        '四方台区',        '155130');

insert into District values(669,        64,        '宝山区',        '155131');

insert into District values(670,        64,        '集贤县',        '155900');

insert into District values(671,        64,        '友谊县',        '155800');

insert into District values(672,        64,        '宝清县',        '155600');

insert into District values(673,        64,        '饶河县',        '155700');

insert into District values(674,        65,        '萨尔图区',        '163001');

insert into District values(675,        65,        '龙凤区',        '163711');

insert into District values(676,        65,        '让胡路区',        '163712');

insert into District values(677,        65,        '红岗区',        '163511');

insert into District values(678,        65,        '大同区',        '163515');

insert into District values(679,        65,        '肇州县',        '166400');

insert into District values(680,        65,        '肇源县',        '166500');

insert into District values(681,        65,        '林甸县',        '166300');

insert into District values(682,        65,        '杜尔伯特蒙古族自治县',        '166200');

insert into District values(683,        66,        '伊春区',        '153000');

insert into District values(684,        66,        '南岔区',        '153100');

insert into District values(685,        66,        '友好区',        '153031');

insert into District values(686,        66,        '西林区',        '153025');

insert into District values(687,        66,        '翠峦区',        '153013');

insert into District values(688,        66,        '新青区',        '153036');

insert into District values(689,        66,        '美溪区',        '153021');

insert into District values(690,        66,        '金山屯区',        '153026');

insert into District values(691,        66,        '五营区',        '153033');

insert into District values(692,        66,        '乌马河区',        '153011');

insert into District values(693,        66,        '汤旺河区',        '153037');

insert into District values(694,        66,        '带岭区',        '153106');

insert into District values(695,        66,        '乌伊岭区',        '153038');

insert into District values(696,        66,        '红星区',        '153035');

insert into District values(697,        66,        '上甘岭区',        '153032');

insert into District values(698,        66,        '嘉荫县',        '153200');

insert into District values(699,        66,        '铁力市',        '152500');

insert into District values(700,        67,        '向阳区',        '154002');

insert into District values(701,        67,        '前进区',        '154002');

insert into District values(702,        67,        '东风区',        '154005');

insert into District values(703,        67,        '郊区',        '154004');

insert into District values(704,        67,        '桦南县',        '154400');

insert into District values(705,        67,        '桦川县',        '154300');

insert into District values(706,        67,        '汤原县',        '154700');

insert into District values(707,        67,        '抚远县',        '156500');

insert into District values(708,        67,        '同江市',        '156400');

insert into District values(709,        67,        '富锦市',        '156100');

insert into District values(710,        68,        '新兴区',        '154604');

insert into District values(711,        68,        '桃山区',        '154600');

insert into District values(712,        68,        '茄子河区',        '154622');

insert into District values(713,        68,        '勃利县',        '154500');

insert into District values(714,        69,        '东安区',        '157000');

insert into District values(715,        69,        '爱民区',        '157009');

insert into District values(716,        69,        '阳明区',        '157013');

insert into District values(717,        69,        '西安区',        '157000');

insert into District values(718,        69,        '东宁县',        '157200');

insert into District values(719,        69,        '林口县',        '157600');

insert into District values(720,        69,        '绥芬河市',        '157300');

insert into District values(721,        69,        '海林市',        '157100');

insert into District values(722,        69,        '宁安市',        '157400');

insert into District values(723,        69,        '穆棱市',        '157500');

insert into District values(724,        70,        '爱辉区',        '164300');

insert into District values(725,        70,        '嫩江县',        '161400');

insert into District values(726,        70,        '逊克县',        '164400');

insert into District values(727,        70,        '孙吴县',        '164200');

insert into District values(728,        70,        '北安市',        '164000');

insert into District values(729,        70,        '五大连池市',        '164100');

insert into District values(730,        71,        '北林区',        '152000');

insert into District values(731,        71,        '望奎县',        '152100');

insert into District values(732,        71,        '兰西县',        '151500');

insert into District values(733,        71,        '青冈县',        '151600');

insert into District values(734,        71,        '庆安县',        '152400');

insert into District values(735,        71,        '明水县',        '151700');

insert into District values(736,        71,        '绥棱县',        '152200');

insert into District values(737,        71,        '安达市',        '151400');

insert into District values(738,        71,        '肇东市',        '151100');

insert into District values(739,        71,        '海伦市',        '152300');

insert into District values(740,        72,        '呼玛县',        '165100');

insert into District values(741,        72,        '塔河县',        '165200');

insert into District values(742,        72,        '漠河县',        '165300');

insert into District values(743,        72,        '加格达奇区',        '165000');

insert into District values(744,        72,        '松岭区',        '165012');

insert into District values(745,        72,        '新林区',        '165023');

insert into District values(746,        72,        '呼中区',        '165036');

insert into District values(747,        73,        '黄浦区',        '200001');

insert into District values(748,        73,        '卢湾区',        '200020');

insert into District values(749,        73,        '徐汇区',        '200030');

insert into District values(750,        73,        '长宁区',        '200050');

insert into District values(751,        73,        '静安区',        '200040');

insert into District values(752,        73,        '普陀区',        '200333');

insert into District values(753,        73,        '闸北区',        '200070');

insert into District values(754,        73,        '虹口区',        '200080');

insert into District values(755,        73,        '杨浦区',        '200082');

insert into District values(756,        73,        '闵行区',        '201100');

insert into District values(757,        73,        '宝山区',        '201900');

insert into District values(758,        73,        '嘉定区',        '201800');

insert into District values(759,        73,        '浦东新区',        '200135');

insert into District values(760,        73,        '金山区',        '200540');

insert into District values(761,        73,        '松江区',        '201600');

insert into District values(762,        73,        '青浦区',        '201700');

insert into District values(763,        73,        '南汇区',        '201300');

insert into District values(764,        73,        '奉贤区',        '201400');

insert into District values(765,        73,        '崇明县',        '202150');

insert into District values(766,        74,        '玄武区',        '210018');

insert into District values(767,        74,        '白下区',        '210002');

insert into District values(768,        74,        '秦淮区',        '210001');

insert into District values(769,        74,        '建邺区',        '210004');

insert into District values(770,        74,        '鼓楼区',        '210009');

insert into District values(771,        74,        '下关区',        '210011');

insert into District values(772,        74,        '浦口区',        '211800');

insert into District values(773,        74,        '栖霞区',        '210046');

insert into District values(774,        74,        '雨花台区',        '210012');

insert into District values(775,        74,        '江宁区',        '211100');

insert into District values(776,        74,        '六合区',        '211500');

insert into District values(777,        74,        '溧水县',        '211200');

insert into District values(778,        74,        '高淳县',        '211300');

insert into District values(779,        75,        '崇安区',        '214002');

insert into District values(780,        75,        '南长区',        '214021');

insert into District values(781,        75,        '北塘区',        '214044');

insert into District values(782,        75,        '锡山区',        '214101');

insert into District values(783,        75,        '惠山区',        '214174');

insert into District values(784,        75,        '滨湖区',        '214062');

insert into District values(785,        75,        '江阴市',        '214400');

insert into District values(786,        75,        '宜兴市',        '214200');

insert into District values(787,        75,        '新区',        '214028');

insert into District values(788,        76,        '云龙区',        '221009');

insert into District values(789,        76,        '鼓楼区',        '221005');

insert into District values(790,        76,        '九里区',        '221140');

insert into District values(791,        76,        '泉山区',        '221006');

insert into District values(792,        76,        '铜山县',        '221116');

insert into District values(793,        76,        '贾汪区',        '221011');

insert into District values(794,        76,        '丰县',        '221700');

insert into District values(795,        76,        '沛县',        '221600');

insert into District values(796,        76,        '睢宁县',        '221200');

insert into District values(797,        76,        '新沂市',        '221400');

insert into District values(798,        76,        '邳州市',        '221300');

insert into District values(799,        77,        '天宁区',        '213003');

insert into District values(800,        77,        '钟楼区',        '213002');

insert into District values(801,        77,        '戚墅堰区',        '213011');

insert into District values(802,        77,        '新北区',        '213001');

insert into District values(803,        77,        '武进区',        '213161');

insert into District values(804,        77,        '溧阳市',        '213300');

insert into District values(805,        77,        '金坛市',        '213200');

insert into District values(806,        78,        '沧浪区',        '215006');

insert into District values(807,        78,        '平江区',        '215005');

insert into District values(808,        78,        '金阊区',        '215008');

insert into District values(809,        78,        '虎丘区',        '215004');

insert into District values(810,        78,        '吴中区',        '215128');

insert into District values(811,        78,        '相城区',        '215131');

insert into District values(812,        78,        '常熟市',        '215500');

insert into District values(813,        78,        '张家港市',        '215600');

insert into District values(814,        78,        '昆山市',        '215300');

insert into District values(815,        78,        '吴江市',        '215200');

insert into District values(816,        78,        '太仓市',        '215400');

insert into District values(817,        78,        '工业园区',        '215028');

insert into District values(818,        78,        '高新区',        '215011');

insert into District values(819,        79,        '崇川区',        '226001');

insert into District values(820,        79,        '港闸区',        '226001');

insert into District values(821,        79,        '海安县',        '226600');

insert into District values(822,        79,        '如东县',        '226400');

insert into District values(823,        79,        '启东市',        '226200');

insert into District values(824,        79,        '如皋市',        '226500');

insert into District values(825,        79,        '通州市',        '226300');

insert into District values(826,        79,        '海门市',        '226100');

insert into District values(827,        79,        '经济技术开发区',        '226009');

insert into District values(828,        80,        '连云区',        '222042');

insert into District values(829,        80,        '新浦区',        '222003');

insert into District values(830,        80,        '海州区',        '222023');

insert into District values(831,        80,        '赣榆县',        '222100');

insert into District values(832,        80,        '东海县',        '222300');

insert into District values(833,        80,        '灌云县',        '222200');

insert into District values(834,        80,        '灌南县',        '223500');

insert into District values(835,        81,        '清河区',        '223001');

insert into District values(836,        81,        '楚州区',        '223200');

insert into District values(837,        81,        '淮阴区',        '223300');

insert into District values(838,        81,        '清浦区',        '223002');

insert into District values(839,        81,        '涟水县',        '223400');

insert into District values(840,        81,        '洪泽县',        '223100');

insert into District values(841,        81,        '盱眙县',        '211700');

insert into District values(842,        81,        '金湖县',        '211600');

insert into District values(843,        82,        '亭湖区',        '224005');

insert into District values(844,        82,        '盐都区',        '224055');

insert into District values(845,        82,        '响水县',        '224600');

insert into District values(846,        82,        '滨海县',        '224500');

insert into District values(847,        82,        '阜宁县',        '224400');

insert into District values(848,        82,        '射阳县',        '224300');

insert into District values(849,        82,        '建湖县',        '224700');

insert into District values(850,        82,        '东台市',        '224200');

insert into District values(851,        82,        '大丰市',        '224100');

insert into District values(852,        83,        '广陵区',        '225002');

insert into District values(853,        83,        '邗江区',        '225002');

insert into District values(854,        83,        '宝应县',        '225800');

insert into District values(855,        83,        '仪征市',        '211400');

insert into District values(856,        83,        '高邮市',        '225600');

insert into District values(857,        83,        '江都市',        '225200');

insert into District values(858,        83,        '维扬区',        '225002');

insert into District values(859,        83,        '经济开发区',        '225101');

insert into District values(860,        84,        '京口区',        '212001');

insert into District values(861,        84,        '润州区',        '212004');

insert into District values(862,        84,        '丹徒区',        '212001');

insert into District values(863,        84,        '丹阳市',        '212300');

insert into District values(864,        84,        '扬中市',        '212200');

insert into District values(865,        84,        '句容市',        '212400');

insert into District values(866,        84,        '新区',        '212132');

insert into District values(867,        85,        '海陵区',        '225300');

insert into District values(868,        85,        '高港区',        '225321');

insert into District values(869,        85,        '兴化市',        '225700');

insert into District values(870,        85,        '靖江市',        '214500');

insert into District values(871,        85,        '泰兴市',        '225400');

insert into District values(872,        85,        '姜堰市',        '225500');

insert into District values(873,        86,        '宿城区',        '223800');

insert into District values(874,        86,        '宿豫区',        '223800');

insert into District values(875,        86,        '沭阳县',        '223600');

insert into District values(876,        86,        '泗阳县',        '223700');

insert into District values(877,        86,        '泗洪县',        '223900');

insert into District values(878,        87,        '上城区',        '310002');

insert into District values(879,        87,        '下城区',        '310006');

insert into District values(880,        87,        '江干区',        '310016');

insert into District values(881,        87,        '拱墅区',        '310011');

insert into District values(882,        87,        '西湖区',        '310013');

insert into District values(883,        87,        '滨江区',        '310051');

insert into District values(884,        87,        '萧山区',        '311200');

insert into District values(885,        87,        '余杭区',        '311100');

insert into District values(886,        87,        '桐庐县',        '311500');

insert into District values(887,        87,        '淳安县',        '311700');

insert into District values(888,        87,        '建德市',        '311600');

insert into District values(889,        87,        '富阳市',        '311400');

insert into District values(890,        87,        '临安市',        '311300');

insert into District values(891,        88,        '海曙区',        '315000');

insert into District values(892,        88,        '江东区',        '315040');

insert into District values(893,        88,        '江北区',        '315040');

insert into District values(894,        88,        '北仑区',        '315800');

insert into District values(895,        88,        '镇海区',        '315200');

insert into District values(896,        88,        '鄞州区',        '315100');

insert into District values(897,        88,        '象山县',        '315700');

insert into District values(898,        88,        '宁海县',        '315600');

insert into District values(899,        88,        '余姚市',        '315400');

insert into District values(900,        88,        '慈溪市',        '315300');

insert into District values(901,        88,        '奉化市',        '315500');

insert into District values(902,        89,        '鹿城区',        '325000');

insert into District values(903,        89,        '龙湾区',        '325013');

insert into District values(904,        89,        '瓯海区',        '325005');

insert into District values(905,        89,        '洞头县',        '325700');

insert into District values(906,        89,        '永嘉县',        '315100');

insert into District values(907,        89,        '平阳县',        '325400');

insert into District values(908,        89,        '苍南县',        '325800');

insert into District values(909,        89,        '文成县',        '325300');

insert into District values(910,        89,        '泰顺县',        '325500');

insert into District values(911,        89,        '瑞安市',        '325200');

insert into District values(912,        89,        '乐清市',        '325600');

insert into District values(913,        90,        '秀洲区',        '314001');

insert into District values(914,        90,        '嘉善县',        '314100');

insert into District values(915,        90,        '海盐县',        '314300');

insert into District values(916,        90,        '海宁市',        '314400');

insert into District values(917,        90,        '平湖市',        '314200');

insert into District values(918,        90,        '桐乡市',        '314500');

insert into District values(919,        90,        '南湖区',        '314001');

insert into District values(920,        91,        '吴兴区',        '313000');

insert into District values(921,        91,        '南浔区',        '313009');

insert into District values(922,        91,        '德清县',        '313200');

insert into District values(923,        91,        '长兴县',        '313100');

insert into District values(924,        91,        '安吉县',        '313300');

insert into District values(925,        92,        '越城区',        '312000');

insert into District values(926,        92,        '绍兴县',        '312000');

insert into District values(927,        92,        '新昌县',        '312500');

insert into District values(928,        92,        '诸暨市',        '311800');

insert into District values(929,        92,        '上虞市',        '312300');

insert into District values(930,        92,        '嵊州市',        '312400');

insert into District values(931,        93,        '婺城区',        '321000');

insert into District values(932,        93,        '金东区',        '321000');

insert into District values(933,        93,        '武义县',        '321200');

insert into District values(934,        93,        '浦江县',        '322200');

insert into District values(935,        93,        '磐安县',        '322300');

insert into District values(936,        93,        '兰溪市',        '321100');

insert into District values(937,        93,        '义乌市',        '322000');

insert into District values(938,        93,        '东阳市',        '322100');

insert into District values(939,        93,        '永康市',        '321300');

insert into District values(940,        94,        '柯城区',        '324100');

insert into District values(941,        94,        '衢江区',        '324022');

insert into District values(942,        94,        '常山县',        '324200');

insert into District values(943,        94,        '开化县',        '324300');

insert into District values(944,        94,        '龙游县',        '324400');

insert into District values(945,        94,        '江山市',        '324100');

insert into District values(946,        95,        '定海区',        '316000');

insert into District values(947,        95,        '普陀区',        '316100');

insert into District values(948,        95,        '岱山县',        '316200');

insert into District values(949,        95,        '嵊泗县',        '202450');

insert into District values(950,        96,        '椒江区',        '318000');

insert into District values(951,        96,        '路桥区',        '318050');

insert into District values(952,        96,        '黄岩区',        '318020');

insert into District values(953,        96,        '玉环县',        '317600');

insert into District values(954,        96,        '三门县',        '317100');

insert into District values(955,        96,        '天台县',        '317200');

insert into District values(956,        96,        '仙居县',        '317300');

insert into District values(957,        96,        '温岭市',        '317500');

insert into District values(958,        96,        '临海市',        '317000');

insert into District values(959,        97,        '莲都区',        '323000');

insert into District values(960,        97,        '青田县',        '323900');

insert into District values(961,        97,        '缙云县',        '321400');

insert into District values(962,        97,        '遂昌县',        '323300');

insert into District values(963,        97,        '松阳县',        '323400');

insert into District values(964,        97,        '云和县',        '323600');

insert into District values(965,        97,        '庆元县',        '323800');

insert into District values(966,        97,        '景宁畲族自治县',        '323500');

insert into District values(967,        97,        '龙泉市',        '323700');

insert into District values(968,        98,        '瑶海区',        '230011');

insert into District values(969,        98,        '庐阳区',        '230001');

insert into District values(970,        98,        '蜀山区',        '230031');

insert into District values(971,        98,        '包河区',        '230041');

insert into District values(972,        98,        '长丰县',        '231100');

insert into District values(973,        98,        '肥东县',        '231600');

insert into District values(974,        98,        '肥西县',        '231200');

insert into District values(975,        98,        '经济技术开发区',        '230601');

insert into District values(976,        98,        '新站试验区',        '230011');

insert into District values(977,        98,        '政务文化新区',        '230066');

insert into District values(978,        98,        '高新技术产业开发区',        '230088');

insert into District values(979,        99,        '镜湖区',        '241000');

insert into District values(980,        99,        '鸠江区',        '241000');

insert into District values(981,        99,        '芜湖县',        '241100');

insert into District values(982,        99,        '繁昌县',        '241200');

insert into District values(983,        99,        '南陵县',        '242400');

insert into District values(984,        99,        '弋江区',        '');

insert into District values(985,        99,        '三山区',        '241000');

insert into District values(986,        100,        '龙子湖区',        '233000');

insert into District values(987,        100,        '蚌山区',        '233000');

insert into District values(988,        100,        '禹会区',        '233000');

insert into District values(989,        100,        '淮上区',        '233000');

insert into District values(990,        100,        '怀远县',        '233400');

insert into District values(991,        100,        '五河县',        '233300');

insert into District values(992,        100,        '固镇县',        '233700');

insert into District values(993,        101,        '大通区',        '232033');

insert into District values(994,        101,        '田家庵区',        '232000');

insert into District values(995,        101,        '谢家集区',        '232052');

insert into District values(996,        101,        '八公山区',        '232072');

insert into District values(997,        101,        '潘集区',        '232082');

insert into District values(998,        101,        '凤台县',        '232100');

insert into District values(999,        102,        '雨山区',        '243071');

insert into District values(1000,        102,        '花山区',        '243000');

insert into District values(1001,        102,        '金家庄区',        '243021');

insert into District values(1002,        102,        '当涂县',        '243100');

insert into District values(1003,        102,        '经济技术开发区',        '243041');

insert into District values(1004,        103,        '杜集区',        '235000');

insert into District values(1005,        103,        '相山区',        '235000');

insert into District values(1006,        103,        '烈山区',        '235000');

insert into District values(1007,        103,        '濉溪县',        '235100');

insert into District values(1008,        104,        '铜官山区',        '244000');

insert into District values(1009,        104,        '狮子山区',        '244000');

insert into District values(1010,        104,        '郊区',        '244000');

insert into District values(1011,        104,        '铜陵县',        '244100');

insert into District values(1012,        105,        '迎江区',        '246001');

insert into District values(1013,        105,        '大观区',        '246002');

insert into District values(1014,        105,        '怀宁县',        '246100');

insert into District values(1015,        105,        '枞阳县',        '246700');

insert into District values(1016,        105,        '潜山县',        '246300');

insert into District values(1017,        105,        '太湖县',        '246400');

insert into District values(1018,        105,        '宿松县',        '246500');

insert into District values(1019,        105,        '望江县',        '246200');

insert into District values(1020,        105,        '岳西县',        '246600');

insert into District values(1021,        105,        '桐城市',        '231400');

insert into District values(1022,        105,        '宜秀区',        '246003');

insert into District values(1023,        106,        '屯溪区',        '245000');

insert into District values(1024,        106,        '黄山区',        '242700');

insert into District values(1025,        106,        '徽州区',        '245061');

insert into District values(1026,        106,        '歙县',        '245200');

insert into District values(1027,        106,        '休宁县',        '245400');

insert into District values(1028,        106,        '黟县',        '245500');

insert into District values(1029,        106,        '祁门县',        '245600');

insert into District values(1030,        107,        '琅琊区',        '239000');

insert into District values(1031,        107,        '南谯区',        '239000');

insert into District values(1032,        107,        '来安县',        '239200');

insert into District values(1033,        107,        '全椒县',        '239500');

insert into District values(1034,        107,        '定远县',        '233200');

insert into District values(1035,        107,        '凤阳县',        '233100');

insert into District values(1036,        107,        '天长市',        '239300');

insert into District values(1037,        107,        '明光市',        '239400');

insert into District values(1038,        108,        '颍州区',        '236001');

insert into District values(1039,        108,        '颍东区',        '236058');

insert into District values(1040,        108,        '颍泉区',        '236045');

insert into District values(1041,        108,        '临泉县',        '236400');

insert into District values(1042,        108,        '太和县',        '236600');

insert into District values(1043,        108,        '阜南县',        '236300');

insert into District values(1044,        108,        '颍上县',        '236200');

insert into District values(1045,        108,        '界首市',        '236500');

insert into District values(1046,        108,        '经济开发区',        '236112');

insert into District values(1047,        109,        '埇桥区',        '234000');

insert into District values(1048,        109,        '砀山县',        '235300');

insert into District values(1049,        109,        '萧县',        '235200');

insert into District values(1050,        109,        '灵璧县',        '234200');

insert into District values(1051,        109,        '泗县',        '234300');

insert into District values(1052,        110,        '居巢区',        '238000');

insert into District values(1053,        110,        '庐江县',        '231500');

insert into District values(1054,        110,        '无为县',        '238300');

insert into District values(1055,        110,        '含山县',        '238100');

insert into District values(1056,        110,        '和县',        '238200');

insert into District values(1057,        111,        '金安区',        '237000');

insert into District values(1058,        111,        '裕安区',        '237010');

insert into District values(1059,        111,        '寿县',        '232200');

insert into District values(1060,        111,        '霍邱县',        '237400');

insert into District values(1061,        111,        '舒城县',        '231300');

insert into District values(1062,        111,        '金寨县',        '237300');

insert into District values(1063,        111,        '霍山县',        '237200');

insert into District values(1064,        112,        '谯城区',        '236800');

insert into District values(1065,        112,        '涡阳县',        '233600');

insert into District values(1066,        112,        '蒙城县',        '233500');

insert into District values(1067,        112,        '利辛县',        '236700');

insert into District values(1068,        113,        '贵池区',        '247100');

insert into District values(1069,        113,        '东至县',        '247200');

insert into District values(1070,        113,        '石台县',        '245100');

insert into District values(1071,        113,        '青阳县',        '242800');

insert into District values(1072,        114,        '宣州区',        '242000');

insert into District values(1073,        114,        '郎溪县',        '242100');

insert into District values(1074,        114,        '广德县',        '242200');

insert into District values(1075,        114,        '泾县',        '242500');

insert into District values(1076,        114,        '绩溪县',        '245300');

insert into District values(1077,        114,        '旌德县',        '242600');

insert into District values(1078,        114,        '宁国市',        '242300');

insert into District values(1079,        115,        '鼓楼区',        '350001');

insert into District values(1080,        115,        '台江区',        '350004');

insert into District values(1081,        115,        '仓山区',        '350007');

insert into District values(1082,        115,        '马尾区',        '350015');

insert into District values(1083,        115,        '晋安区',        '350011');

insert into District values(1084,        115,        '闽侯县',        '350100');

insert into District values(1085,        115,        '连江县',        '350500');

insert into District values(1086,        115,        '罗源县',        '350600');

insert into District values(1087,        115,        '闽清县',        '350800');

insert into District values(1088,        115,        '永泰县',        '350700');

insert into District values(1089,        115,        '平潭县',        '350400');

insert into District values(1090,        115,        '福清市',        '350300');

insert into District values(1091,        115,        '长乐市',        '350200');

insert into District values(1092,        116,        '思明区',        '361001');

insert into District values(1093,        116,        '海沧区',        '361026');

insert into District values(1094,        116,        '湖里区',        '361006');

insert into District values(1095,        116,        '集美区',        '361021');

insert into District values(1096,        116,        '同安区',        '361100');

insert into District values(1097,        116,        '翔安区',        '361101');

insert into District values(1098,        116,        '鼓浪屿区',        '361002');

insert into District values(1099,        116,        '象屿保税区',        '361006');

insert into District values(1100,        116,        '火炬高新区',        '361006');

insert into District values(1101,        117,        '城厢区',        '351100');

insert into District values(1102,        117,        '涵江区',        '351111');

insert into District values(1103,        117,        '荔城区',        '351100');

insert into District values(1104,        117,        '秀屿区',        '351152');

insert into District values(1105,        117,        '仙游县',        '351200');

insert into District values(1106,        118,        '梅列区',        '365000');

insert into District values(1107,        118,        '三元区',        '365001');

insert into District values(1108,        118,        '明溪县',        '365200');

insert into District values(1109,        118,        '清流县',        '365300');

insert into District values(1110,        118,        '宁化县',        '365400');

insert into District values(1111,        118,        '大田县',        '366100');

insert into District values(1112,        118,        '尤溪县',        '365100');

insert into District values(1113,        118,        '沙县',        '365500');

insert into District values(1114,        118,        '将乐县',        '353300');

insert into District values(1115,        118,        '泰宁县',        '354400');

insert into District values(1116,        118,        '建宁县',        '354500');

insert into District values(1117,        118,        '永安市',        '366000');

insert into District values(1118,        119,        '鲤城区',        '362000');

insert into District values(1119,        119,        '丰泽区',        '362000');

insert into District values(1120,        119,        '洛江区',        '362011');

insert into District values(1121,        119,        '泉港区',        '362114');

insert into District values(1122,        119,        '惠安县',        '362100');

insert into District values(1123,        119,        '安溪县',        '362400');

insert into District values(1124,        119,        '永春县',        '362600');

insert into District values(1125,        119,        '德化县',        '362500');

insert into District values(1126,        119,        '金门县',        '362000');

insert into District values(1127,        119,        '石狮市',        '362700');

insert into District values(1128,        119,        '晋江市',        '362200');

insert into District values(1129,        119,        '南安市',        '362300');

insert into District values(1130,        119,        '经济技术开发区',        '362005');

insert into District values(1131,        120,        '芗城区',        '363000');

insert into District values(1132,        120,        '龙文区',        '363005');

insert into District values(1133,        120,        '云霄县',        '363300');

insert into District values(1134,        120,        '漳浦县',        '363200');

insert into District values(1135,        120,        '诏安县',        '363500');

insert into District values(1136,        120,        '长泰县',        '363900');

insert into District values(1137,        120,        '东山县',        '363400');

insert into District values(1138,        120,        '南靖县',        '363600');

insert into District values(1139,        120,        '平和县',        '363700');

insert into District values(1140,        120,        '华安县',        '363800');

insert into District values(1141,        120,        '龙海市',        '363100');

insert into District values(1142,        121,        '延平区',        '353000');

insert into District values(1143,        121,        '顺昌县',        '353200');

insert into District values(1144,        121,        '浦城县',        '353400');

insert into District values(1145,        121,        '光泽县',        '354100');

insert into District values(1146,        121,        '松溪县',        '353500');

insert into District values(1147,        121,        '政和县',        '353600');

insert into District values(1148,        121,        '邵武市',        '354000');

insert into District values(1149,        121,        '武夷山市',        '354300');

insert into District values(1150,        121,        '建瓯市',        '353100');

insert into District values(1151,        121,        '建阳市',        '354200');

insert into District values(1152,        122,        '新罗区',        '364000');

insert into District values(1153,        122,        '长汀县',        '366300');

insert into District values(1154,        122,        '永定县',        '364100');

insert into District values(1155,        122,        '上杭县',        '364200');

insert into District values(1156,        122,        '武平县',        '364300');

insert into District values(1157,        122,        '连城县',        '366200');

insert into District values(1158,        122,        '漳平市',        '364400');

insert into District values(1159,        123,        '蕉城区',        '352100');

insert into District values(1160,        123,        '霞浦县',        '355100');

insert into District values(1161,        123,        '古田县',        '352200');

insert into District values(1162,        123,        '屏南县',        '352300');

insert into District values(1163,        123,        '寿宁县',        '355500');

insert into District values(1164,        123,        '周宁县',        '355400');

insert into District values(1165,        123,        '柘荣县',        '355300');

insert into District values(1166,        123,        '福安市',        '355000');

insert into District values(1167,        123,        '福鼎市',        '355200');

insert into District values(1168,        124,        '东湖区',        '330006');

insert into District values(1169,        124,        '西湖区',        '330009');

insert into District values(1170,        124,        '青云谱区',        '330001');

insert into District values(1171,        124,        '湾里区',        '330004');

insert into District values(1172,        124,        '青山湖区',        '330029');

insert into District values(1173,        124,        '南昌县',        '330200');

insert into District values(1174,        124,        '新建县',        '330100');

insert into District values(1175,        124,        '安义县',        '330500');

insert into District values(1176,        124,        '进贤县',        '331700');

insert into District values(1177,        124,        '经济技术开发区',        '330013');

insert into District values(1178,        124,        '红谷滩新区',        '330038');

insert into District values(1179,        124,        '高新技术产业开发区',        '330029');

insert into District values(1180,        124,        '桑海经济技术开发区',        '330115');

insert into District values(1181,        124,        '英雄经济开发区',        '330200');

insert into District values(1182,        125,        '昌江区',        '333000');

insert into District values(1183,        125,        '珠山区',        '333000');

insert into District values(1184,        125,        '浮梁县',        '333400');

insert into District values(1185,        125,        '乐平市',        '333300');

insert into District values(1186,        126,        '安源区',        '337000');

insert into District values(1187,        126,        '湘东区',        '337016');

insert into District values(1188,        126,        '莲花县',        '337100');

insert into District values(1189,        126,        '上栗县',        '337009');

insert into District values(1190,        126,        '芦溪县',        '337053');

insert into District values(1191,        127,        '庐山区',        '332005');

insert into District values(1192,        127,        '浔阳区',        '332000');

insert into District values(1193,        127,        '九江县',        '332100');

insert into District values(1194,        127,        '武宁县',        '332300');

insert into District values(1195,        127,        '修水县',        '332400');

insert into District values(1196,        127,        '永修县',        '330300');

insert into District values(1197,        127,        '德安县',        '330400');

insert into District values(1198,        127,        '星子县',        '332800');

insert into District values(1199,        127,        '都昌县',        '332600');

insert into District values(1200,        127,        '湖口县',        '332500');

insert into District values(1201,        127,        '彭泽县',        '332700');

insert into District values(1202,        127,        '瑞昌市',        '332200');

insert into District values(1203,        128,        '渝水区',        '338025');

insert into District values(1204,        128,        '分宜县',        '336600');

insert into District values(1205,        129,        '月湖区',        '335000');

insert into District values(1206,        129,        '余江县',        '335200');

insert into District values(1207,        129,        '贵溪市',        '335400');

insert into District values(1208,        130,        '章贡区',        '341000');

insert into District values(1209,        130,        '赣县',        '341100');

insert into District values(1210,        130,        '信丰县',        '341600');

insert into District values(1211,        130,        '大余县',        '341500');

insert into District values(1212,        130,        '上犹县',        '341200');

insert into District values(1213,        130,        '崇义县',        '341300');

insert into District values(1214,        130,        '安远县',        '342100');

insert into District values(1215,        130,        '龙南县',        '341700');

insert into District values(1216,        130,        '定南县',        '341900');

insert into District values(1217,        130,        '全南县',        '341800');

insert into District values(1218,        130,        '宁都县',        '342800');

insert into District values(1219,        130,        '于都县',        '342300');

insert into District values(1220,        130,        '兴国县',        '342400');

insert into District values(1221,        130,        '会昌县',        '342600');

insert into District values(1222,        130,        '寻乌县',        '342200');

insert into District values(1223,        130,        '石城县',        '342700');

insert into District values(1224,        130,        '瑞金市',        '342500');

insert into District values(1225,        130,        '南康市',        '341400');

insert into District values(1226,        131,        '吉州区',        '343000');

insert into District values(1227,        131,        '青原区',        '343009');

insert into District values(1228,        131,        '吉安县',        '343100');

insert into District values(1229,        131,        '吉水县',        '331600');

insert into District values(1230,        131,        '峡江县',        '331400');

insert into District values(1231,        131,        '新干县',        '331300');

insert into District values(1232,        131,        '永丰县',        '331500');

insert into District values(1233,        131,        '泰和县',        '343700');

insert into District values(1234,        131,        '遂川县',        '343900');

insert into District values(1235,        131,        '万安县',        '343800');

insert into District values(1236,        131,        '安福县',        '343200');

insert into District values(1237,        131,        '永新县',        '343400');

insert into District values(1238,        131,        '井冈山市',        '343600');

insert into District values(1239,        132,        '袁州区',        '336000');

insert into District values(1240,        132,        '奉新县',        '330700');

insert into District values(1241,        132,        '万载县',        '336100');

insert into District values(1242,        132,        '上高县',        '336400');

insert into District values(1243,        132,        '宜丰县',        '336300');

insert into District values(1244,        132,        '靖安县',        '330600');

insert into District values(1245,        132,        '铜鼓县',        '336200');

insert into District values(1246,        132,        '丰城市',        '331100');

insert into District values(1247,        132,        '樟树市',        '331200');

insert into District values(1248,        132,        '高安市',        '330800');

insert into District values(1249,        133,        '临川区',        '344100');

insert into District values(1250,        133,        '南城县',        '344700');

insert into District values(1251,        133,        '黎川县',        '344600');

insert into District values(1252,        133,        '南丰县',        '344500');

insert into District values(1253,        133,        '崇仁县',        '344200');

insert into District values(1254,        133,        '乐安县',        '344300');

insert into District values(1255,        133,        '宜黄县',        '344400');

insert into District values(1256,        133,        '金溪县',        '344800');

insert into District values(1257,        133,        '资溪县',        '335300');

insert into District values(1258,        133,        '东乡县',        '331800');

insert into District values(1259,        133,        '广昌县',        '344900');

insert into District values(1260,        134,        '信州区',        '334000');

insert into District values(1261,        134,        '上饶县',        '334100');

insert into District values(1262,        134,        '广丰县',        '334600');

insert into District values(1263,        134,        '玉山县',        '334700');

insert into District values(1264,        134,        '铅山县',        '334500');

insert into District values(1265,        134,        '横峰县',        '334300');

insert into District values(1266,        134,        '弋阳县',        '334400');

insert into District values(1267,        134,        '余干县',        '335100');

insert into District values(1268,        134,        '鄱阳县',        '333100');

insert into District values(1269,        134,        '万年县',        '335500');

insert into District values(1270,        134,        '婺源县',        '333200');

insert into District values(1271,        134,        '德兴市',        '334200');

insert into District values(1272,        135,        '历下区',        '250014');

insert into District values(1273,        135,        '市中区',        '250001');

insert into District values(1274,        135,        '槐荫区',        '250022');

insert into District values(1275,        135,        '天桥区',        '250031');

insert into District values(1276,        135,        '历城区',        '250100');

insert into District values(1277,        135,        '长清区',        '250300');

insert into District values(1278,        135,        '平阴县',        '250400');

insert into District values(1279,        135,        '济阳县',        '251400');

insert into District values(1280,        135,        '商河县',        '251600');

insert into District values(1281,        135,        '章丘市',        '250200');

insert into District values(1282,        135,        '高新区',        '250101');

insert into District values(1283,        135,        '经济开发区',        '250300');

insert into District values(1284,        136,        '市南区',        '266001');

insert into District values(1285,        136,        '市北区',        '266011');

insert into District values(1286,        136,        '四方区',        '266031');

insert into District values(1287,        136,        '黄岛区',        '266500');

insert into District values(1288,        136,        '崂山区',        '266100');

insert into District values(1289,        136,        '李沧区',        '266021');

insert into District values(1290,        136,        '城阳区',        '266041');

insert into District values(1291,        136,        '胶州市',        '266300');

insert into District values(1292,        136,        '即墨市',        '266200');

insert into District values(1293,        136,        '平度市',        '266700');

insert into District values(1294,        136,        '胶南市',        '266400');

insert into District values(1295,        136,        '莱西市',        '266600');

insert into District values(1296,        137,        '淄川区',        '255100');

insert into District values(1297,        137,        '张店区',        '255022');

insert into District values(1298,        137,        '博山区',        '255200');

insert into District values(1299,        137,        '临淄区',        '255400');

insert into District values(1300,        137,        '周村区',        '255300');

insert into District values(1301,        137,        '桓台县',        '256400');

insert into District values(1302,        137,        '高青县',        '256300');

insert into District values(1303,        137,        '沂源县',        '256100');

insert into District values(1304,        137,        '高新区',        '255086');

insert into District values(1305,        138,        '市中区',        '277101');

insert into District values(1306,        138,        '薛城区',        '277000');

insert into District values(1307,        138,        '峄城区',        '277300');

insert into District values(1308,        138,        '台儿庄区',        '277400');

insert into District values(1309,        138,        '山亭区',        '277200');

insert into District values(1310,        138,        '滕州市',        '277500');

insert into District values(1311,        139,        '东营区',        '257029');

insert into District values(1312,        139,        '河口区',        '257200');

insert into District values(1313,        139,        '垦利县',        '257500');

insert into District values(1314,        139,        '利津县',        '257400');

insert into District values(1315,        139,        '广饶县',        '257300');

insert into District values(1316,        140,        '芝罘区',        '264001');

insert into District values(1317,        140,        '福山区',        '265500');

insert into District values(1318,        140,        '牟平区',        '264100');

insert into District values(1319,        140,        '莱山区',        '264600');

insert into District values(1320,        140,        '长岛县',        '265800');

insert into District values(1321,        140,        '龙口市',        '265700');

insert into District values(1322,        140,        '莱阳市',        '265200');

insert into District values(1323,        140,        '莱州市',        '261400');

insert into District values(1324,        140,        '蓬莱市',        '265600');

insert into District values(1325,        140,        '招远市',        '265400');

insert into District values(1326,        140,        '栖霞市',        '265300');

insert into District values(1327,        140,        '海阳市',        '265100');

insert into District values(1328,        140,        '开发区',        '264006');

insert into District values(1329,        141,        '潍城区',        '261021');

insert into District values(1330,        141,        '寒亭区',        '261100');

insert into District values(1331,        141,        '坊子区',        '261200');

insert into District values(1332,        141,        '奎文区',        '261031');

insert into District values(1333,        141,        '临朐县',        '262600');

insert into District values(1334,        141,        '昌乐县',        '262400');

insert into District values(1335,        141,        '青州市',        '262500');

insert into District values(1336,        141,        '诸城市',        '262200');

insert into District values(1337,        141,        '寿光市',        '262700');

insert into District values(1338,        141,        '安丘市',        '262100');

insert into District values(1339,        141,        '高密市',        '261500');

insert into District values(1340,        141,        '昌邑市',        '261300');

insert into District values(1341,        141,        '经济开发区',        '261061');

insert into District values(1342,        141,        '滨海经济开发区',        '262737');

insert into District values(1343,        141,        '高新技术开发区',        '261061');

insert into District values(1344,        141,        '出口加工区',        '261205');

insert into District values(1345,        142,        '市中区',        '272133');

insert into District values(1346,        142,        '任城区',        '272113');

insert into District values(1347,        142,        '微山县',        '277600');

insert into District values(1348,        142,        '鱼台县',        '272300');

insert into District values(1349,        142,        '金乡县',        '272200');

insert into District values(1350,        142,        '嘉祥县',        '272400');

insert into District values(1351,        142,        '汶上县',        '272501');

insert into District values(1352,        142,        '泗水县',        '273200');

insert into District values(1353,        142,        '梁山县',        '272600');

insert into District values(1354,        142,        '曲阜市',        '273100');

insert into District values(1355,        142,        '兖州市',        '272000');

insert into District values(1356,        142,        '邹城市',        '273500');

insert into District values(1357,        143,        '泰山区',        '271000');

insert into District values(1358,        143,        '岱岳区',        '271000');

insert into District values(1359,        143,        '宁阳县',        '271400');

insert into District values(1360,        143,        '东平县',        '271500');

insert into District values(1361,        143,        '新泰市',        '271200');

insert into District values(1362,        143,        '肥城市',        '271600');

insert into District values(1363,        144,        '环翠区',        '264200');

insert into District values(1364,        144,        '文登市',        '264400');

insert into District values(1365,        144,        '荣成市',        '264300');

insert into District values(1366,        144,        '乳山市',        '264500');

insert into District values(1367,        144,        '经济技术开发区',        '264205');

insert into District values(1368,        144,        '高技术开发区',        '264209');

insert into District values(1369,        145,        '东港区',        '276800');

insert into District values(1370,        145,        '岚山区',        '276808');

insert into District values(1371,        145,        '五莲县',        '272300');

insert into District values(1372,        145,        '莒县',        '266500');

insert into District values(1373,        146,        '莱城区',        '271100');

insert into District values(1374,        146,        '钢城区',        '271100');

insert into District values(1375,        147,        '兰山区',        '276002');

insert into District values(1376,        147,        '罗庄区',        '276022');

insert into District values(1377,        147,        '河东区',        '276034');

insert into District values(1378,        147,        '沂南县',        '276300');

insert into District values(1379,        147,        '郯城县',        '276100');

insert into District values(1380,        147,        '沂水县',        '276400');

insert into District values(1381,        147,        '苍山县',        '277700');

insert into District values(1382,        147,        '费县',        '273400');

insert into District values(1383,        147,        '平邑县',        '273300');

insert into District values(1384,        147,        '莒南县',        '276600');

insert into District values(1385,        147,        '蒙阴县',        '276200');

insert into District values(1386,        147,        '临沭县',        '276700');

insert into District values(1387,        148,        '德城区',        '253011');

insert into District values(1388,        148,        '陵县',        '253500');

insert into District values(1389,        148,        '宁津县',        '253400');

insert into District values(1390,        148,        '庆云县',        '253700');

insert into District values(1391,        148,        '临邑县',        '251500');

insert into District values(1392,        148,        '齐河县',        '251100');

insert into District values(1393,        148,        '平原县',        '253100');

insert into District values(1394,        148,        '夏津县',        '253200');

insert into District values(1395,        148,        '武城县',        '253300');

insert into District values(1396,        148,        '乐陵市',        '253600');

insert into District values(1397,        148,        '禹城市',        '251200');

insert into District values(1398,        149,        '东昌府区',        '252000');

insert into District values(1399,        149,        '阳谷县',        '252300');

insert into District values(1400,        149,        '莘县',        '252400');

insert into District values(1401,        149,        '茌平县',        '252100');

insert into District values(1402,        149,        '东阿县',        '252200');

insert into District values(1403,        149,        '冠县',        '252500');

insert into District values(1404,        149,        '高唐县',        '252800');

insert into District values(1405,        149,        '临清市',        '252600');

insert into District values(1406,        150,        '滨城区',        '256613');

insert into District values(1407,        150,        '惠民县',        '251700');

insert into District values(1408,        150,        '阳信县',        '251800');

insert into District values(1409,        150,        '无棣县',        '251900');

insert into District values(1410,        150,        '沾化县',        '256800');

insert into District values(1411,        150,        '博兴县',        '256500');

insert into District values(1412,        150,        '邹平县',        '256200');

insert into District values(1413,        151,        '牡丹区',        '274009');

insert into District values(1414,        151,        '曹县',        '274400');

insert into District values(1415,        151,        '单县',        '274300');

insert into District values(1416,        151,        '成武县',        '274200');

insert into District values(1417,        151,        '巨野县',        '274900');

insert into District values(1418,        151,        '郓城县',        '274700');

insert into District values(1419,        151,        '鄄城县',        '274600');

insert into District values(1420,        151,        '定陶县',        '274100');

insert into District values(1421,        151,        '东明县',        '274500');

insert into District values(1422,        152,        '中原区',        '450007');

insert into District values(1423,        152,        '二七区',        '450052');

insert into District values(1424,        152,        '管城回族区',        '450000');

insert into District values(1425,        152,        '金水区',        '450003');

insert into District values(1426,        152,        '上街区',        '450041');

insert into District values(1427,        152,        '中牟县',        '451450');

insert into District values(1428,        152,        '巩义市',        '451200');

insert into District values(1429,        152,        '荥阳市',        '450100');

insert into District values(1430,        152,        '新密市',        '452300');

insert into District values(1431,        152,        '新郑市',        '451100');

insert into District values(1432,        152,        '登封市',        '452470');

insert into District values(1433,        152,        '高新技术开发区',        '450001');

insert into District values(1434,        152,        '惠济区',        '450053');

insert into District values(1435,        152,        '经济技术开发区',        '450016');

insert into District values(1436,        152,        '郑东新区',        '450008');

insert into District values(1437,        152,        '出口加工区',        '450016');

insert into District values(1438,        153,        '龙亭区',        '475100');

insert into District values(1439,        153,        '顺河回族区',        '475000');

insert into District values(1440,        153,        '鼓楼区',        '475000');

insert into District values(1441,        153,        '杞县',        '475200');

insert into District values(1442,        153,        '通许县',        '475400');

insert into District values(1443,        153,        '尉氏县',        '475500');

insert into District values(1444,        153,        '开封县',        '475100');

insert into District values(1445,        153,        '兰考县',        '475300');

insert into District values(1446,        153,        '金明区',        '475003');

insert into District values(1447,        153,        '禹王台区',        '475003');

insert into District values(1448,        154,        '老城区',        '471002');

insert into District values(1449,        154,        '西工区',        '471000');

insert into District values(1450,        154,        '瀍河回族区',        '471002');

insert into District values(1451,        154,        '涧西区',        '471003');

insert into District values(1452,        154,        '吉利区',        '471012');

insert into District values(1453,        154,        '洛龙区',        '471000');

insert into District values(1454,        154,        '孟津县',        '471100');

insert into District values(1455,        154,        '新安县',        '471800');

insert into District values(1456,        154,        '栾川县',        '471500');

insert into District values(1457,        154,        '嵩县',        '471400');

insert into District values(1458,        154,        '汝阳县',        '471200');

insert into District values(1459,        154,        '宜阳县',        '471600');

insert into District values(1460,        154,        '洛宁县',        '471700');

insert into District values(1461,        154,        '伊川县',        '471300');

insert into District values(1462,        154,        '偃师市',        '471900');

insert into District values(1463,        154,        '高新技术开发区',        '471003');

insert into District values(1464,        154,        '经济技术开发区',        '471023');

insert into District values(1465,        155,        '新华区',        '467002');

insert into District values(1466,        155,        '卫东区',        '467021');

insert into District values(1467,        155,        '石龙区',        '467045');

insert into District values(1468,        155,        '湛河区',        '467000');

insert into District values(1469,        155,        '宝丰县',        '467400');

insert into District values(1470,        155,        '叶县',        '467200');

insert into District values(1471,        155,        '鲁山县',        '467300');

insert into District values(1472,        155,        '郏县',        '467100');

insert into District values(1473,        155,        '舞钢市',        '462500');

insert into District values(1474,        155,        '汝州市',        '467500');

insert into District values(1475,        156,        '文峰区',        '455000');

insert into District values(1476,        156,        '北关区',        '455001');

insert into District values(1477,        156,        '殷都区',        '455004');

insert into District values(1478,        156,        '龙安区',        '455001');

insert into District values(1479,        156,        '安阳县',        '455000');

insert into District values(1480,        156,        '汤阴县',        '456150');

insert into District values(1481,        156,        '滑县',        '456400');

insert into District values(1482,        156,        '内黄县',        '456350');

insert into District values(1483,        156,        '林州市',        '456500');

insert into District values(1484,        157,        '鹤山区',        '458010');

insert into District values(1485,        157,        '山城区',        '458000');

insert into District values(1486,        157,        '淇滨区',        '458000');

insert into District values(1487,        157,        '浚县',        '456250');

insert into District values(1488,        157,        '淇县',        '456750');

insert into District values(1489,        158,        '红旗区',        '453000');

insert into District values(1490,        158,        '卫滨区',        '453000');

insert into District values(1491,        158,        '凤泉区',        '453011');

insert into District values(1492,        158,        '牧野区',        '453002');

insert into District values(1493,        158,        '新乡县',        '453700');

insert into District values(1494,        158,        '获嘉县',        '453800');

insert into District values(1495,        158,        '原阳县',        '453500');

insert into District values(1496,        158,        '延津县',        '453200');

insert into District values(1497,        158,        '封丘县',        '453300');

insert into District values(1498,        158,        '长垣县',        '453400');

insert into District values(1499,        158,        '卫辉市',        '453100');

insert into District values(1500,        158,        '辉县市',        '453600');

insert into District values(1501,        159,        '解放区',        '454000');

insert into District values(1502,        159,        '中站区',        '454191');

insert into District values(1503,        159,        '马村区',        '454171');

insert into District values(1504,        159,        '山阳区',        '454002');

insert into District values(1505,        159,        '修武县',        '454350');

insert into District values(1506,        159,        '博爱县',        '454450');

insert into District values(1507,        159,        '武陟县',        '454950');

insert into District values(1508,        159,        '温县',        '454850');

insert into District values(1509,        159,        '沁阳市',        '454550');

insert into District values(1510,        159,        '孟州市',        '454750');

insert into District values(1511,        160,        '华龙区',        '457001');

insert into District values(1512,        160,        '清丰县',        '457300');

insert into District values(1513,        160,        '南乐县',        '457400');

insert into District values(1514,        160,        '范县',        '457500');

insert into District values(1515,        160,        '台前县',        '457600');

insert into District values(1516,        160,        '濮阳县',        '457100');

insert into District values(1517,        161,        '魏都区',        '461000');

insert into District values(1518,        161,        '许昌县',        '461100');

insert into District values(1519,        161,        '鄢陵县',        '461200');

insert into District values(1520,        161,        '襄城县',        '461700');

insert into District values(1521,        161,        '禹州市',        '461670');

insert into District values(1522,        161,        '长葛市',        '461500');

insert into District values(1523,        162,        '源汇区',        '462000');

insert into District values(1524,        162,        '郾城区',        '462300');

insert into District values(1525,        162,        '召陵区',        '462300');

insert into District values(1526,        162,        '舞阳县',        '462400');

insert into District values(1527,        162,        '临颍县',        '462600');

insert into District values(1528,        163,        '湖滨区',        '472000');

insert into District values(1529,        163,        '渑池县',        '472400');

insert into District values(1530,        163,        '陕县',        '472100');

insert into District values(1531,        163,        '卢氏县',        '472200');

insert into District values(1532,        163,        '义马市',        '472300');

insert into District values(1533,        163,        '灵宝市',        '472500');

insert into District values(1534,        164,        '宛城区',        '473001');

insert into District values(1535,        164,        '卧龙区',        '473003');

insert into District values(1536,        164,        '南召县',        '474650');

insert into District values(1537,        164,        '方城县',        '473200');

insert into District values(1538,        164,        '西峡县',        '474550');

insert into District values(1539,        164,        '镇平县',        '474250');

insert into District values(1540,        164,        '内乡县',        '474350');

insert into District values(1541,        164,        '淅川县',        '474450');

insert into District values(1542,        164,        '社旗县',        '473300');

insert into District values(1543,        164,        '唐河县',        '473400');

insert into District values(1544,        164,        '新野县',        '473500');

insert into District values(1545,        164,        '桐柏县',        '474750');

insert into District values(1546,        164,        '邓州市',        '474150');

insert into District values(1547,        165,        '梁园区',        '476000');

insert into District values(1548,        165,        '睢阳区',        '476100');

insert into District values(1549,        165,        '民权县',        '476800');

insert into District values(1550,        165,        '睢县',        '476900');

insert into District values(1551,        165,        '宁陵县',        '476700');

insert into District values(1552,        165,        '柘城县',        '476200');

insert into District values(1553,        165,        '虞城县',        '476300');

insert into District values(1554,        165,        '夏邑县',        '476400');

insert into District values(1555,        165,        '永城市',        '476600');

insert into District values(1556,        166,        '浉河区',        '464000');

insert into District values(1557,        166,        '平桥区',        '464100');

insert into District values(1558,        166,        '罗山县',        '464200');

insert into District values(1559,        166,        '光山县',        '465450');

insert into District values(1560,        166,        '新县',        '465550');

insert into District values(1561,        166,        '商城县',        '465350');

insert into District values(1562,        166,        '固始县',        '465250');

insert into District values(1563,        166,        '潢川县',        '465150');

insert into District values(1564,        166,        '淮滨县',        '464400');

insert into District values(1565,        166,        '息县',        '464300');

insert into District values(1566,        167,        '川汇区',        '466000');

insert into District values(1567,        167,        '扶沟县',        '461300');

insert into District values(1568,        167,        '西华县',        '466600');

insert into District values(1569,        167,        '商水县',        '466100');

insert into District values(1570,        167,        '沈丘县',        '466300');

insert into District values(1571,        167,        '郸城县',        '477150');

insert into District values(1572,        167,        '淮阳县',        '466700');

insert into District values(1573,        167,        '太康县',        '461400');

insert into District values(1574,        167,        '鹿邑县',        '477200');

insert into District values(1575,        167,        '项城市',        '466200');

insert into District values(1576,        168,        '驿城区',        '463000');

insert into District values(1577,        168,        '西平县',        '463900');

insert into District values(1578,        168,        '上蔡县',        '463800');

insert into District values(1579,        168,        '平舆县',        '463400');

insert into District values(1580,        168,        '正阳县',        '463600');

insert into District values(1581,        168,        '确山县',        '463200');

insert into District values(1582,        168,        '泌阳县',        '463700');

insert into District values(1583,        168,        '汝南县',        '463300');

insert into District values(1584,        168,        '遂平县',        '463100');

insert into District values(1585,        168,        '新蔡县',        '463500');

insert into District values(1586,        169,        '济源市',        '454650');

insert into District values(1587,        170,        '江岸区',        '430014');

insert into District values(1588,        170,        '江汉区',        '430021');

insert into District values(1589,        170,        '硚口区',        '430033');

insert into District values(1590,        170,        '汉阳区',        '430050');

insert into District values(1591,        170,        '武昌区',        '430061');

insert into District values(1592,        170,        '青山区',        '430080');

insert into District values(1593,        170,        '洪山区',        '430070');

insert into District values(1594,        170,        '东西湖区',        '430040');

insert into District values(1595,        170,        '汉南区',        '430090');

insert into District values(1596,        170,        '蔡甸区',        '430100');

insert into District values(1597,        170,        '江夏区',        '430200');

insert into District values(1598,        170,        '黄陂区',        '432200');

insert into District values(1599,        170,        '新洲区',        '431400');

insert into District values(1600,        171,        '黄石港区',        '435000');

insert into District values(1601,        171,        '西塞山区',        '435001');

insert into District values(1602,        171,        '下陆区',        '435005');

insert into District values(1603,        171,        '铁山区',        '435006');

insert into District values(1604,        171,        '阳新县',        '435200');

insert into District values(1605,        171,        '大冶市',        '435100');

insert into District values(1606,        172,        '茅箭区',        '442012');

insert into District values(1607,        172,        '张湾区',        '442001');

insert into District values(1608,        172,        '郧县',        '442500');

insert into District values(1609,        172,        '郧西县',        '442600');

insert into District values(1610,        172,        '竹山县',        '442200');

insert into District values(1611,        172,        '竹溪县',        '442300');

insert into District values(1612,        172,        '房县',        '442100');

insert into District values(1613,        172,        '丹江口市',        '442700');

insert into District values(1614,        173,        '西陵区',        '443000');

insert into District values(1615,        173,        '伍家岗区',        '443001');

insert into District values(1616,        173,        '点军区',        '443006');

insert into District values(1617,        173,        '虢亭区',        '443007');

insert into District values(1618,        173,        '夷陵区',        '443100');

insert into District values(1619,        173,        '远安县',        '444200');

insert into District values(1620,        173,        '兴山县',        '443711');

insert into District values(1621,        173,        '秭归县',        '443600');

insert into District values(1622,        173,        '长阳土家族自治县',        '443500');

insert into District values(1623,        173,        '五峰土家族自治县',        '443400');

insert into District values(1624,        173,        '宜都市',        '443300');

insert into District values(1625,        173,        '当阳市',        '444100');

insert into District values(1626,        173,        '枝江市',        '443200');

insert into District values(1627,        173,        '经济技术开发区',        '443003');

insert into District values(1628,        174,        '襄城区',        '441021');

insert into District values(1629,        174,        '樊城区',        '441001');

insert into District values(1630,        174,        '襄阳区',        '441100');

insert into District values(1631,        174,        '南漳县',        '441500');

insert into District values(1632,        174,        '谷城县',        '441700');

insert into District values(1633,        174,        '保康县',        '441600');

insert into District values(1634,        174,        '老河口市',        '441800');

insert into District values(1635,        174,        '枣阳市',        '441200');

insert into District values(1636,        174,        '宜城市',        '441400');

insert into District values(1637,        175,        '梁子湖区',        '436064');

insert into District values(1638,        175,        '华容区',        '436030');

insert into District values(1639,        175,        '鄂城区',        '436000');

insert into District values(1640,        176,        '东宝区',        '448004');

insert into District values(1641,        176,        '掇刀区',        '448124');

insert into District values(1642,        176,        '京山县',        '431800');

insert into District values(1643,        176,        '沙洋县',        '448200');

insert into District values(1644,        176,        '钟祥市',        '431900');

insert into District values(1645,        177,        '孝南区',        '432100');

insert into District values(1646,        177,        '孝昌县',        '432900');

insert into District values(1647,        177,        '大悟县',        '432800');

insert into District values(1648,        177,        '云梦县',        '432500');

insert into District values(1649,        177,        '应城市',        '432400');

insert into District values(1650,        177,        '安陆市',        '432600');

insert into District values(1651,        177,        '汉川市',        '432300');

insert into District values(1652,        178,        '沙市区',        '434000');

insert into District values(1653,        178,        '荆州区',        '434020');

insert into District values(1654,        178,        '公安县',        '434300');

insert into District values(1655,        178,        '监利县',        '433300');

insert into District values(1656,        178,        '江陵县',        '434101');

insert into District values(1657,        178,        '石首市',        '434400');

insert into District values(1658,        178,        '洪湖市',        '433200');

insert into District values(1659,        178,        '松滋市',        '434200');

insert into District values(1660,        179,        '黄州区',        '438000');

insert into District values(1661,        179,        '团风县',        '438000');

insert into District values(1662,        179,        '红安县',        '438401');

insert into District values(1663,        179,        '罗田县',        '438600');

insert into District values(1664,        179,        '英山县',        '438700');

insert into District values(1665,        179,        '浠水县',        '438200');

insert into District values(1666,        179,        '蕲春县',        '435300');

insert into District values(1667,        179,        '黄梅县',        '435500');

insert into District values(1668,        179,        '麻城市',        '438300');

insert into District values(1669,        179,        '武穴市',        '435400');

insert into District values(1670,        180,        '咸安区',        '437000');

insert into District values(1671,        180,        '嘉鱼县',        '437200');

insert into District values(1672,        180,        '通城县',        '437400');

insert into District values(1673,        180,        '崇阳县',        '437500');

insert into District values(1674,        180,        '通山县',        '437600');

insert into District values(1675,        180,        '赤壁市',        '437300');

insert into District values(1676,        181,        '曾都区',        '441300');

insert into District values(1677,        181,        '广水市',        '432700');

insert into District values(1678,        182,        '恩施市',        '445000');

insert into District values(1679,        182,        '利川市',        '445400');

insert into District values(1680,        182,        '建始县',        '445300');

insert into District values(1681,        182,        '巴东县',        '444300');

insert into District values(1682,        182,        '宣恩县',        '445500');

insert into District values(1683,        182,        '咸丰县',        '445600');

insert into District values(1684,        182,        '来凤县',        '445700');

insert into District values(1685,        182,        '鹤峰县',        '445800');

insert into District values(1686,        183,        '仙桃市',        '433000');

insert into District values(1687,        183,        '潜江市',        '433100');

insert into District values(1688,        183,        '天门市',        '431700');

insert into District values(1689,        183,        '神农架林区',        '442400');

insert into District values(1690,        184,        '芙蓉区',        '410011');

insert into District values(1691,        184,        '天心区',        '410011');

insert into District values(1692,        184,        '岳麓区',        '410006');

insert into District values(1693,        184,        '开福区',        '410008');

insert into District values(1694,        184,        '雨花区',        '410011');

insert into District values(1695,        184,        '长沙县',        '410100');

insert into District values(1696,        184,        '望城县',        '410200');

insert into District values(1697,        184,        '宁乡县',        '410600');

insert into District values(1698,        184,        '浏阳市',        '410300');

insert into District values(1699,        185,        '荷塘区',        '412000');

insert into District values(1700,        185,        '芦淞区',        '412000');

insert into District values(1701,        185,        '石峰区',        '412005');

insert into District values(1702,        185,        '天元区',        '412007');

insert into District values(1703,        185,        '株洲县',        '412100');

insert into District values(1704,        185,        '攸县',        '412300');

insert into District values(1705,        185,        '茶陵县',        '412400');

insert into District values(1706,        185,        '炎陵县',        '412500');

insert into District values(1707,        185,        '醴陵市',        '412200');

insert into District values(1708,        186,        '雨湖区',        '411100');

insert into District values(1709,        186,        '岳塘区',        '411101');

insert into District values(1710,        186,        '湘潭县',        '411228');

insert into District values(1711,        186,        '湘乡市',        '411400');

insert into District values(1712,        186,        '韶山市',        '411300');

insert into District values(1713,        187,        '珠晖区',        '421002');

insert into District values(1714,        187,        '雁峰区',        '421001');

insert into District values(1715,        187,        '石鼓区',        '421001');

insert into District values(1716,        187,        '蒸湘区',        '421001');

insert into District values(1717,        187,        '南岳区',        '421900');

insert into District values(1718,        187,        '衡阳县',        '421200');

insert into District values(1719,        187,        '衡南县',        '421131');

insert into District values(1720,        187,        '衡山县',        '421300');

insert into District values(1721,        187,        '衡东县',        '421400');

insert into District values(1722,        187,        '祁东县',        '421600');

insert into District values(1723,        187,        '耒阳市',        '421800');

insert into District values(1724,        187,        '常宁市',        '421500');

insert into District values(1725,        188,        '双清区',        '422001');

insert into District values(1726,        188,        '大祥区',        '422000');

insert into District values(1727,        188,        '北塔区',        '422007');

insert into District values(1728,        188,        '邵东县',        '422800');

insert into District values(1729,        188,        '新邵县',        '422900');

insert into District values(1730,        188,        '邵阳县',        '422100');

insert into District values(1731,        188,        '隆回县',        '422200');

insert into District values(1732,        188,        '洞口县',        '422300');

insert into District values(1733,        188,        '绥宁县',        '422600');

insert into District values(1734,        188,        '新宁县',        '422700');

insert into District values(1735,        188,        '城步苗族自治县',        '422500');

insert into District values(1736,        188,        '武冈市',        '422400');

insert into District values(1737,        189,        '岳阳楼区',        '414000');

insert into District values(1738,        189,        '云溪区',        '414009');

insert into District values(1739,        189,        '君山区',        '414005');

insert into District values(1740,        189,        '岳阳县',        '414100');

insert into District values(1741,        189,        '华容县',        '414200');

insert into District values(1742,        189,        '湘阴县',        '410500');

insert into District values(1743,        189,        '平江县',        '414500');

insert into District values(1744,        189,        '汨罗市',        '414400');

insert into District values(1745,        189,        '临湘市',        '414300');

insert into District values(1746,        190,        '武陵区',        '415000');

insert into District values(1747,        190,        '鼎城区',        '415101');

insert into District values(1748,        190,        '安乡县',        '415600');

insert into District values(1749,        190,        '汉寿县',        '415900');

insert into District values(1750,        190,        '澧县',        '415500');

insert into District values(1751,        190,        '临澧县',        '415200');

insert into District values(1752,        190,        '桃源县',        '415700');

insert into District values(1753,        190,        '石门县',        '415300');

insert into District values(1754,        190,        '津市市',        '415400');

insert into District values(1755,        191,        '永定区',        '427000');

insert into District values(1756,        191,        '武陵源区',        '427400');

insert into District values(1757,        191,        '慈利县',        '427200');

insert into District values(1758,        191,        '桑植县',        '427100');

insert into District values(1759,        192,        '资阳区',        '413001');

insert into District values(1760,        192,        '赫山区',        '413002');

insert into District values(1761,        192,        '南县',        '413200');

insert into District values(1762,        192,        '桃江县',        '413400');

insert into District values(1763,        192,        '安化县',        '413500');

insert into District values(1764,        192,        '沅江市',        '413100');

insert into District values(1765,        193,        '北湖区',        '423000');

insert into District values(1766,        193,        '苏仙区',        '423000');

insert into District values(1767,        193,        '桂阳县',        '424400');

insert into District values(1768,        193,        '宜章县',        '424200');

insert into District values(1769,        193,        '永兴县',        '423300');

insert into District values(1770,        193,        '嘉禾县',        '424500');

insert into District values(1771,        193,        '临武县',        '424300');

insert into District values(1772,        193,        '汝城县',        '424100');

insert into District values(1773,        193,        '桂东县',        '423500');

insert into District values(1774,        193,        '安仁县',        '423600');

insert into District values(1775,        193,        '资兴市',        '423400');

insert into District values(1776,        194,        '冷水滩区',        '425100');

insert into District values(1777,        194,        '祁阳县',        '426100');

insert into District values(1778,        194,        '东安县',        '425900');

insert into District values(1779,        194,        '双牌县',        '425200');

insert into District values(1780,        194,        '道县',        '425300');

insert into District values(1781,        194,        '江永县',        '425400');

insert into District values(1782,        194,        '宁远县',        '425600');

insert into District values(1783,        194,        '蓝山县',        '425800');

insert into District values(1784,        194,        '新田县',        '425700');

insert into District values(1785,        194,        '江华瑶族自治县',        '425500');

insert into District values(1786,        194,        '零陵区',        '425002');

insert into District values(1787,        195,        '鹤城区',        '418000');

insert into District values(1788,        195,        '中方县',        '418005');

insert into District values(1789,        195,        '沅陵县',        '419600');

insert into District values(1790,        195,        '辰溪县',        '419500');

insert into District values(1791,        195,        '溆浦县',        '419300');

insert into District values(1792,        195,        '会同县',        '418300');

insert into District values(1793,        195,        '麻阳苗族自治县',        '419400');

insert into District values(1794,        195,        '新晃侗族自治县',        '419200');

insert into District values(1795,        195,        '芷江侗族自治县',        '419100');

insert into District values(1796,        195,        '靖州苗族侗族自治县',        '418400');

insert into District values(1797,        195,        '通道侗族自治县',        '418500');

insert into District values(1798,        195,        '洪江市',        '418116');

insert into District values(1799,        196,        '娄星区',        '417000');

insert into District values(1800,        196,        '双峰县',        '417700');

insert into District values(1801,        196,        '新化县',        '417600');

insert into District values(1802,        196,        '冷水江市',        '417500');

insert into District values(1803,        196,        '涟源市',        '417100');

insert into District values(1804,        197,        '吉首市',        '416000');

insert into District values(1805,        197,        '泸溪县',        '416100');

insert into District values(1806,        197,        '凤凰县',        '416200');

insert into District values(1807,        197,        '花垣县',        '416400');

insert into District values(1808,        197,        '保靖县',        '416500');

insert into District values(1809,        197,        '古丈县',        '416300');

insert into District values(1810,        197,        '永顺县',        '416700');

insert into District values(1811,        197,        '龙山县',        '416800');

insert into District values(1812,        198,        '荔湾区',        '510145');

insert into District values(1813,        198,        '越秀区',        '510030');

insert into District values(1814,        198,        '海珠区',        '510220');

insert into District values(1815,        198,        '天河区',        '510630');

insert into District values(1816,        198,        '白云区',        '510080');

insert into District values(1817,        198,        '黄埔区',        '510700');

insert into District values(1818,        198,        '番禺区',        '511400');

insert into District values(1819,        198,        '花都区',        '510800');

insert into District values(1820,        198,        '增城市',        '511300');

insert into District values(1821,        198,        '从化市',        '510900');

insert into District values(1822,        198,        '南沙区',        '511400');

insert into District values(1823,        198,        '萝岗区',        '510100');

insert into District values(1824,        199,        '武江区',        '512026');

insert into District values(1825,        199,        '浈江区',        '512023');

insert into District values(1826,        199,        '曲江区',        '512100');

insert into District values(1827,        199,        '始兴县',        '512500');

insert into District values(1828,        199,        '仁化县',        '512300');

insert into District values(1829,        199,        '翁源县',        '512600');

insert into District values(1830,        199,        '乳源瑶族自治县',        '512700');

insert into District values(1831,        199,        '新丰县',        '511100');

insert into District values(1832,        199,        '乐昌市',        '512200');

insert into District values(1833,        199,        '南雄市',        '512400');

insert into District values(1834,        200,        '罗湖区',        '518001');

insert into District values(1835,        200,        '福田区',        '518033');

insert into District values(1836,        200,        '南山区',        '518052');

insert into District values(1837,        200,        '宝安区',        '518101');

insert into District values(1838,        200,        '龙岗区',        '518116');

insert into District values(1839,        200,        '盐田区',        '518083');

insert into District values(1840,        200,        '光明新区',        '518107');

insert into District values(1841,        200,        '坪山新区',        '518118');

insert into District values(1842,        201,        '香洲区',        '519000');

insert into District values(1843,        201,        '斗门区',        '519100');

insert into District values(1844,        201,        '金湾区',        '519090');

insert into District values(1845,        202,        '龙湖区',        '515041');

insert into District values(1846,        202,        '金平区',        '515041');

insert into District values(1847,        202,        '濠江区',        '515071');

insert into District values(1848,        202,        '潮阳区',        '515100');

insert into District values(1849,        202,        '潮南区',        '515144');

insert into District values(1850,        202,        '澄海区',        '515800');

insert into District values(1851,        202,        '南澳县',        '515900');

insert into District values(1852,        203,        '禅城区',        '528000');

insert into District values(1853,        203,        '南海区',        '528200');

insert into District values(1854,        203,        '顺德区',        '528300');

insert into District values(1855,        203,        '三水区',        '528100');

insert into District values(1856,        203,        '高明区',        '528500');

insert into District values(1857,        204,        '蓬江区',        '529051');

insert into District values(1858,        204,        '江海区',        '529000');

insert into District values(1859,        204,        '新会区',        '529100');

insert into District values(1860,        204,        '台山市',        '529211');

insert into District values(1861,        204,        '开平市',        '529312');

insert into District values(1862,        204,        '鹤山市',        '529711');

insert into District values(1863,        204,        '恩平市',        '529411');

insert into District values(1864,        205,        '赤坎区',        '524033');

insert into District values(1865,        205,        '霞山区',        '524002');

insert into District values(1866,        205,        '坡头区',        '524057');

insert into District values(1867,        205,        '麻章区',        '524003');

insert into District values(1868,        205,        '遂溪县',        '524300');

insert into District values(1869,        205,        '徐闻县',        '524100');

insert into District values(1870,        205,        '廉江市',        '524400');

insert into District values(1871,        205,        '雷州市',        '524200');

insert into District values(1872,        205,        '吴川市',        '524500');

insert into District values(1873,        205,        '开发区',        '524022');

insert into District values(1874,        206,        '茂南区',        '525011');

insert into District values(1875,        206,        '茂港区',        '525027');

insert into District values(1876,        206,        '电白县',        '525400');

insert into District values(1877,        206,        '高州市',        '525200');

insert into District values(1878,        206,        '化州市',        '525100');

insert into District values(1879,        206,        '信宜市',        '525300');

insert into District values(1880,        207,        '端州区',        '526040');

insert into District values(1881,        207,        '鼎湖区',        '526070');

insert into District values(1882,        207,        '广宁县',        '526300');

insert into District values(1883,        207,        '怀集县',        '526400');

insert into District values(1884,        207,        '封开县',        '526500');

insert into District values(1885,        207,        '德庆县',        '526600');

insert into District values(1886,        207,        '高要市',        '526100');

insert into District values(1887,        207,        '四会市',        '526200');

insert into District values(1888,        207,        '高新技术产业开发区',        '526238');

insert into District values(1889,        208,        '惠城区',        '516001');

insert into District values(1890,        208,        '惠阳区',        '516200');

insert into District values(1891,        208,        '博罗县',        '516100');

insert into District values(1892,        208,        '惠东县',        '516300');

insert into District values(1893,        208,        '龙门县',        '516800');

insert into District values(1894,        208,        '大亚湾区',        '516080');

insert into District values(1895,        208,        '仲恺高新区',        '516080');

insert into District values(1896,        209,        '梅江区',        '514000');

insert into District values(1897,        209,        '梅县',        '514733');

insert into District values(1898,        209,        '大埔县',        '514200');

insert into District values(1899,        209,        '丰顺县',        '514300');

insert into District values(1900,        209,        '五华县',        '514400');

insert into District values(1901,        209,        '平远县',        '514600');

insert into District values(1902,        209,        '蕉岭县',        '514100');

insert into District values(1903,        209,        '兴宁市',        '514500');

insert into District values(1904,        210,        '城区',        '516601');

insert into District values(1905,        210,        '陆丰市',        '516500');

insert into District values(1906,        210,        '海丰县',        '516400');

insert into District values(1907,        210,        '陆河县',        '516700');

insert into District values(1908,        211,        '源城区',        '517000');

insert into District values(1909,        211,        '紫金县',        '517400');

insert into District values(1910,        211,        '龙川县',        '517300');

insert into District values(1911,        211,        '连平县',        '517100');

insert into District values(1912,        211,        '和平县',        '517200');

insert into District values(1913,        211,        '东源县',        '517500');

insert into District values(1914,        212,        '江城区',        '529525');

insert into District values(1915,        212,        '阳西县',        '529800');

insert into District values(1916,        212,        '阳东县',        '529931');

insert into District values(1917,        212,        '阳春市',        '529611');

insert into District values(1918,        213,        '清城区',        '511500');

insert into District values(1919,        213,        '佛冈县',        '511600');

insert into District values(1920,        213,        '阳山县',        '513100');

insert into District values(1921,        213,        '连山壮族瑶族自治县',        '513200');

insert into District values(1922,        213,        '连南瑶族自治县',        '513300');

insert into District values(1923,        213,        '清新县',        '511800');

insert into District values(1924,        213,        '英德市',        '513000');

insert into District values(1925,        213,        '连州市',        '513401');

insert into District values(1926,        214,        '南城区',        '523000');

insert into District values(1927,        214,        '石龙镇',        '523021');

insert into District values(1928,        214,        '长安镇',        '523068');

insert into District values(1929,        214,        '虎门镇',        '523061');

insert into District values(1930,        214,        '横沥镇',        '523032');

insert into District values(1931,        214,        '寮步镇',        '523058');

insert into District values(1932,        214,        '黄江镇',        '523054');

insert into District values(1933,        214,        '清溪镇',        '523046');

insert into District values(1934,        214,        '莞城区',        '523000');

insert into District values(1935,        214,        '万江区',        '523050');

insert into District values(1936,        214,        '东城区',        '523000');

insert into District values(1937,        214,        '石碣镇',        '523024');

insert into District values(1938,        214,        '茶山镇',        '523029');

insert into District values(1939,        214,        '石排镇',        '523025');

insert into District values(1940,        214,        '企石镇',        '523027');

insert into District values(1941,        214,        '桥头镇',        '523038');

insert into District values(1942,        214,        '谢岗镇',        '523044');

insert into District values(1943,        214,        '东坑镇',        '523034');

insert into District values(1944,        214,        '常平镇',        '523036');

insert into District values(1945,        214,        '大朗镇',        '523056');

insert into District values(1946,        214,        '塘厦镇',        '523710');

insert into District values(1947,        214,        '凤岗镇',        '523048');

insert into District values(1948,        214,        '厚街镇',        '523071');

insert into District values(1949,        214,        '沙田镇',        '523073');

insert into District values(1950,        214,        '道滘镇',        '523170');

insert into District values(1951,        214,        '洪梅镇',        '523083');

insert into District values(1952,        214,        '麻涌镇',        '523078');

insert into District values(1953,        214,        '中堂镇',        '523075');

insert into District values(1954,        214,        '高埗镇',        '523270');

insert into District values(1955,        214,        '樟木头镇',        '523041');

insert into District values(1956,        214,        '大岭山镇',        '523074');

insert into District values(1957,        214,        '望牛墩镇',        '523077');

insert into District values(1958,        215,        '中山市',        '528403');

insert into District values(1959,        216,        '湘桥区',        '521000');

insert into District values(1960,        216,        '潮安县',        '515638');

insert into District values(1961,        216,        '饶平县',        '515700');

insert into District values(1962,        217,        '榕城区',        '522095');

insert into District values(1963,        217,        '揭东县',        '515554');

insert into District values(1964,        217,        '揭西县',        '515400');

insert into District values(1965,        217,        '惠来县',        '515200');

insert into District values(1966,        217,        '普宁市',        '515300');

insert into District values(1967,        217,        '东山区',        '522031');

insert into District values(1968,        217,        '普侨区',        '515339');

insert into District values(1969,        217,        '大南山侨区',        '515237');

insert into District values(1970,        218,        '云城区',        '527300');

insert into District values(1971,        218,        '新兴县',        '527400');

insert into District values(1972,        218,        '郁南县',        '527100');

insert into District values(1973,        218,        '云安县',        '527500');

insert into District values(1974,        218,        '罗定市',        '527200');

insert into District values(1975,        219,        '兴宁区',        '530012');

insert into District values(1976,        219,        '青秀区',        '530022');

insert into District values(1977,        219,        '江南区',        '530031');

insert into District values(1978,        219,        '西乡塘区',        '530001');

insert into District values(1979,        219,        '良庆区',        '530200');

insert into District values(1980,        219,        '邕宁区',        '530200');

insert into District values(1981,        219,        '武鸣县',        '530100');

insert into District values(1982,        219,        '隆安县',        '532700');

insert into District values(1983,        219,        '马山县',        '530600');

insert into District values(1984,        219,        '上林县',        '530500');

insert into District values(1985,        219,        '宾阳县',        '530400');

insert into District values(1986,        219,        '横县',        '530300');

insert into District values(1987,        220,        '城中区',        '545001');

insert into District values(1988,        220,        '鱼峰区',        '545005');

insert into District values(1989,        220,        '柳南区',        '545005');

insert into District values(1990,        220,        '柳北区',        '545001');

insert into District values(1991,        220,        '柳江县',        '545100');

insert into District values(1992,        220,        '柳城县',        '545200');

insert into District values(1993,        220,        '鹿寨县',        '545600');

insert into District values(1994,        220,        '融安县',        '545400');

insert into District values(1995,        220,        '融水苗族自治县',        '545300');

insert into District values(1996,        220,        '三江侗族自治县',        '545500');

insert into District values(1997,        221,        '秀峰区',        '541001');

insert into District values(1998,        221,        '叠彩区',        '541001');

insert into District values(1999,        221,        '象山区',        '541002');

insert into District values(2000,        221,        '七星区',        '541004');

insert into District values(2001,        221,        '雁山区',        '541006');

insert into District values(2002,        221,        '阳朔县',        '541900');

insert into District values(2003,        221,        '临桂县',        '541100');

insert into District values(2004,        221,        '灵川县',        '541200');

insert into District values(2005,        221,        '全州县',        '541500');

insert into District values(2006,        221,        '兴安县',        '541300');

insert into District values(2007,        221,        '永福县',        '541800');

insert into District values(2008,        221,        '灌阳县',        '541600');

insert into District values(2009,        221,        '龙胜各族自治县',        '541700');

insert into District values(2010,        221,        '资源县',        '541400');

insert into District values(2011,        221,        '平乐县',        '542400');

insert into District values(2012,        221,        '荔浦县',        '546600');

insert into District values(2013,        221,        '恭城瑶族自治县',        '542500');

insert into District values(2014,        222,        '万秀区',        '543000');

insert into District values(2015,        222,        '蝶山区',        '543002');

insert into District values(2016,        222,        '长洲区',        '543002');

insert into District values(2017,        222,        '苍梧县',        '543100');

insert into District values(2018,        222,        '藤县',        '543300');

insert into District values(2019,        222,        '蒙山县',        '546700');

insert into District values(2020,        222,        '岑溪市',        '543200');

insert into District values(2021,        223,        '海城区',        '536000');

insert into District values(2022,        223,        '银海区',        '536000');

insert into District values(2023,        223,        '铁山港区',        '536017');

insert into District values(2024,        223,        '合浦县',        '536100');

insert into District values(2025,        224,        '港口区',        '538001');

insert into District values(2026,        224,        '防城区',        '538021');

insert into District values(2027,        224,        '上思县',        '535500');

insert into District values(2028,        224,        '东兴市',        '538100');

insert into District values(2029,        225,        '钦南区',        '535000');

insert into District values(2030,        225,        '钦北区',        '535000');

insert into District values(2031,        225,        '灵山县',        '535400');

insert into District values(2032,        225,        '浦北县',        '535300');

insert into District values(2033,        225,        '钦州港经济开发区',        '535008');

insert into District values(2034,        226,        '港北区',        '537100');

insert into District values(2035,        226,        '港南区',        '537132');

insert into District values(2036,        226,        '覃塘区',        '537121');

insert into District values(2037,        226,        '平南县',        '537300');

insert into District values(2038,        226,        '桂平市',        '537200');

insert into District values(2039,        227,        '玉州区',        '537000');

insert into District values(2040,        227,        '容县',        '537500');

insert into District values(2041,        227,        '陆川县',        '537700');

insert into District values(2042,        227,        '博白县',        '537600');

insert into District values(2043,        227,        '兴业县',        '537800');

insert into District values(2044,        227,        '北流市',        '537400');

insert into District values(2045,        228,        '右江区',        '533000');

insert into District values(2046,        228,        '田阳县',        '533600');

insert into District values(2047,        228,        '田东县',        '531500');

insert into District values(2048,        228,        '平果县',        '531400');

insert into District values(2049,        228,        '德保县',        '533700');

insert into District values(2050,        228,        '靖西县',        '533800');

insert into District values(2051,        228,        '那坡县',        '533900');

insert into District values(2052,        228,        '凌云县',        '533100');

insert into District values(2053,        228,        '乐业县',        '533200');

insert into District values(2054,        228,        '田林县',        '533300');

insert into District values(2055,        228,        '西林县',        '533500');

insert into District values(2056,        228,        '隆林各族自治县',        '533400');

insert into District values(2057,        229,        '八步区',        '542800');

insert into District values(2058,        229,        '昭平县',        '546800');

insert into District values(2059,        229,        '钟山县',        '542600');

insert into District values(2060,        229,        '富川瑶族自治县',        '542700');

insert into District values(2061,        230,        '金城江区',        '547000');

insert into District values(2062,        230,        '南丹县',        '547200');

insert into District values(2063,        230,        '天峨县',        '547300');

insert into District values(2064,        230,        '凤山县',        '547600');

insert into District values(2065,        230,        '东兰县',        '547400');

insert into District values(2066,        230,        '罗城仫佬族自治县',        '546400');

insert into District values(2067,        230,        '环江毛南族自治县',        '547100');

insert into District values(2068,        230,        '巴马瑶族自治县',        '547500');

insert into District values(2069,        230,        '都安瑶族自治县',        '530700');

insert into District values(2070,        230,        '大化瑶族自治县',        '530800');

insert into District values(2071,        230,        '宜州市',        '546300');

insert into District values(2072,        231,        '兴宾区',        '546100');

insert into District values(2073,        231,        '忻城县',        '546200');

insert into District values(2074,        231,        '象州县',        '545800');

insert into District values(2075,        231,        '武宣县',        '545900');

insert into District values(2076,        231,        '金秀瑶族自治县',        '545700');

insert into District values(2077,        231,        '合山市',        '546500');

insert into District values(2078,        232,        '江洲区',        '532200');

insert into District values(2079,        232,        '扶绥县',        '532100');

insert into District values(2080,        232,        '宁明县',        '532500');

insert into District values(2081,        232,        '龙州县',        '532400');

insert into District values(2082,        232,        '大新县',        '532300');

insert into District values(2083,        232,        '天等县',        '532800');

insert into District values(2084,        232,        '凭祥市',        '532600');

insert into District values(2085,        233,        '秀英区',        '570311');

insert into District values(2086,        233,        '龙华区',        '570105');

insert into District values(2087,        233,        '琼山区',        '571100');

insert into District values(2088,        233,        '美兰区',        '570203');

insert into District values(2089,        234,        '河西区',        '572000');

insert into District values(2090,        234,        '河东区',        '572000');

insert into District values(2091,        234,        '田独镇',        '572011');

insert into District values(2092,        234,        '凤凰镇',        '572023');

insert into District values(2093,        234,        '三亚市',        '572000');

insert into District values(2094,        234,        '崖城镇',        '572025');

insert into District values(2095,        234,        '天涯镇',        '572029');

insert into District values(2096,        234,        '育才乡',        '572032');

insert into District values(2097,        234,        '海棠湾镇',        '572014');

insert into District values(2098,        235,        '五指山市',        '572200');

insert into District values(2099,        235,        '琼海市',        '571400');

insert into District values(2100,        235,        '儋州市',        '571700');

insert into District values(2101,        235,        '文昌市',        '571300');

insert into District values(2102,        235,        '万宁市',        '571500');

insert into District values(2103,        235,        '东方市',        '572600');

insert into District values(2104,        235,        '定安县',        '571200');

insert into District values(2105,        235,        '屯昌县',        '571600');

insert into District values(2106,        235,        '澄迈县',        '571900');

insert into District values(2107,        235,        '临高县',        '571800');

insert into District values(2108,        235,        '白沙黎族自治县',        '572800');

insert into District values(2109,        235,        '昌江黎族自治县',        '572700');

insert into District values(2110,        235,        '乐东黎族自治县',        '572500');

insert into District values(2111,        235,        '陵水黎族自治县',        '572400');

insert into District values(2112,        235,        '保亭黎族苗族自治县',        '572300');

insert into District values(2113,        235,        '琼中黎族苗族自治县',        '572900');

insert into District values(2114,        235,        '西、南、中沙群岛办事处',        '573100');

insert into District values(2115,        236,        '万州区',        '404100');

insert into District values(2116,        236,        '涪陵区',        '408000');

insert into District values(2117,        236,        '渝中区',        '400010');

insert into District values(2118,        236,        '大渡口区',        '400080');

insert into District values(2119,        236,        '江北区',        '400020');

insert into District values(2120,        236,        '沙坪坝区',        '400030');

insert into District values(2121,        236,        '九龙坡区',        '400050');

insert into District values(2122,        236,        '南岸区',        '400064');

insert into District values(2123,        236,        '北碚区',        '400700');

insert into District values(2124,        236,        '万盛区',        '400800');

insert into District values(2125,        236,        '双桥区',        '400900');

insert into District values(2126,        236,        '渝北区',        '401120');

insert into District values(2127,        236,        '巴南区',        '401320');

insert into District values(2128,        236,        '黔江区',        '409700');

insert into District values(2129,        236,        '长寿区',        '401220');

insert into District values(2130,        236,        '綦江县',        '401420');

insert into District values(2131,        236,        '潼南县',        '402660');

insert into District values(2132,        236,        '铜梁县',        '402560');

insert into District values(2133,        236,        '大足县',        '402360');

insert into District values(2134,        236,        '荣昌县',        '402460');

insert into District values(2135,        236,        '璧山县',        '402760');

insert into District values(2136,        236,        '梁平县',        '405200');

insert into District values(2137,        236,        '城口县',        '405900');

insert into District values(2138,        236,        '丰都县',        '408200');

insert into District values(2139,        236,        '垫江县',        '408300');

insert into District values(2140,        236,        '武隆县',        '408500');

insert into District values(2141,        236,        '忠县',        '404300');

insert into District values(2142,        236,        '开县',        '405400');

insert into District values(2143,        236,        '云阳县',        '404500');

insert into District values(2144,        236,        '奉节县',        '404600');

insert into District values(2145,        236,        '巫山县',        '404700');

insert into District values(2146,        236,        '巫溪县',        '405800');

insert into District values(2147,        236,        '石柱土家族自治县',        '409100');

insert into District values(2148,        236,        '秀山土家族苗族自治县',        '409900');

insert into District values(2149,        236,        '酉阳土家族苗族自治县',        '409800');

insert into District values(2150,        236,        '彭水苗族土家族自治县',        '409600');

insert into District values(2151,        236,        '高新区',        '400039');

insert into District values(2152,        236,        '江津区',        '402260');

insert into District values(2153,        236,        '合川区',        '401520');

insert into District values(2154,        236,        '永川区',        '402160');

insert into District values(2155,        236,        '南川区',        '408400');

insert into District values(2156,        237,        '锦江区',        '610021');

insert into District values(2157,        237,        '青羊区',        '610031');

insert into District values(2158,        237,        '金牛区',        '610036');

insert into District values(2159,        237,        '武侯区',        '610041');

insert into District values(2160,        237,        '成华区',        '610066');

insert into District values(2161,        237,        '龙泉驿区',        '610100');

insert into District values(2162,        237,        '青白江区',        '610300');

insert into District values(2163,        237,        '新都区',        '610500');

insert into District values(2164,        237,        '温江区',        '611130');

insert into District values(2165,        237,        '金堂县',        '610400');

insert into District values(2166,        237,        '双流县',        '610200');

insert into District values(2167,        237,        '郫县',        '611700');

insert into District values(2168,        237,        '大邑县',        '611300');

insert into District values(2169,        237,        '蒲江县',        '611630');

insert into District values(2170,        237,        '新津县',        '611430');

insert into District values(2171,        237,        '都江堰市',        '611830');

insert into District values(2172,        237,        '彭州市',        '611930');

insert into District values(2173,        237,        '邛崃市',        '611530');

insert into District values(2174,        237,        '崇州市',        '611230');

insert into District values(2175,        237,        '高新区',        '610041');

insert into District values(2176,        237,        '高新西区',        '611731');

insert into District values(2177,        238,        '自流井区',        '643000');

insert into District values(2178,        238,        '贡井区',        '643020');

insert into District values(2179,        238,        '大安区',        '643010');

insert into District values(2180,        238,        '沿滩区',        '643030');

insert into District values(2181,        238,        '荣县',        '643100');

insert into District values(2182,        238,        '富顺县',        '643200');

insert into District values(2183,        239,        '东区',        '617067');

insert into District values(2184,        239,        '西区',        '617068');

insert into District values(2185,        239,        '仁和区',        '617061');

insert into District values(2186,        239,        '米易县',        '617200');

insert into District values(2187,        239,        '盐边县',        '617100');

insert into District values(2188,        240,        '江阳区',        '646000');

insert into District values(2189,        240,        '纳溪区',        '646300');

insert into District values(2190,        240,        '龙马潭区',        '646000');

insert into District values(2191,        240,        '泸县',        '646106');

insert into District values(2192,        240,        '合江县',        '646200');

insert into District values(2193,        240,        '叙永县',        '646400');

insert into District values(2194,        240,        '古蔺县',        '646500');

insert into District values(2195,        241,        '旌阳区',        '618000');

insert into District values(2196,        241,        '中江县',        '618100');

insert into District values(2197,        241,        '罗江县',        '618500');

insert into District values(2198,        241,        '广汉市',        '618300');

insert into District values(2199,        241,        '什邡市',        '618400');

insert into District values(2200,        241,        '绵竹市',        '618200');

insert into District values(2201,        242,        '涪城区',        '621000');

insert into District values(2202,        242,        '游仙区',        '621022');

insert into District values(2203,        242,        '三台县',        '621100');

insert into District values(2204,        242,        '盐亭县',        '621600');

insert into District values(2205,        242,        '安县',        '622650');

insert into District values(2206,        242,        '梓潼县',        '622150');

insert into District values(2207,        242,        '北川羌族自治县',        '622750');

insert into District values(2208,        242,        '平武县',        '622550');

insert into District values(2209,        242,        '江油市',        '621700');

insert into District values(2210,        242,        '农科区',        '621023');

insert into District values(2211,        242,        '经济技术开发区',        '621000');

insert into District values(2212,        242,        '高新区',        '621000');

insert into District values(2213,        242,        '仙海区',        '621007');

insert into District values(2214,        243,        '利州区',        '628017');

insert into District values(2215,        243,        '元坝区',        '628017');

insert into District values(2216,        243,        '朝天区',        '628017');

insert into District values(2217,        243,        '旺苍县',        '628200');

insert into District values(2218,        243,        '青川县',        '628100');

insert into District values(2219,        243,        '剑阁县',        '628300');

insert into District values(2220,        243,        '苍溪县',        '628400');

insert into District values(2221,        244,        '船山区',        '629000');

insert into District values(2222,        244,        '安居区',        '629000');

insert into District values(2223,        244,        '蓬溪县',        '629100');

insert into District values(2224,        244,        '射洪县',        '629200');

insert into District values(2225,        244,        '大英县',        '629300');

insert into District values(2226,        245,        '市中区',        '641000');

insert into District values(2227,        245,        '东兴区',        '641100');

insert into District values(2228,        245,        '威远县',        '642450');

insert into District values(2229,        245,        '资中县',        '641200');

insert into District values(2230,        245,        '隆昌县',        '642150');

insert into District values(2231,        246,        '市中区',        '614000');

insert into District values(2232,        246,        '沙湾区',        '614900');

insert into District values(2233,        246,        '五通桥区',        '614800');

insert into District values(2234,        246,        '金口河区',        '614700');

insert into District values(2235,        246,        '犍为县',        '614400');

insert into District values(2236,        246,        '井研县',        '613100');

insert into District values(2237,        246,        '夹江县',        '614100');

insert into District values(2238,        246,        '沐川县',        '614500');

insert into District values(2239,        246,        '峨边彝族自治县',        '614300');

insert into District values(2240,        246,        '马边彝族自治县',        '614600');

insert into District values(2241,        246,        '峨眉山市',        '614200');

insert into District values(2242,        247,        '顺庆区',        '637000');

insert into District values(2243,        247,        '高坪区',        '637100');

insert into District values(2244,        247,        '嘉陵区',        '637100');

insert into District values(2245,        247,        '南部县',        '637300');

insert into District values(2246,        247,        '营山县',        '637700');

insert into District values(2247,        247,        '蓬安县',        '637800');

insert into District values(2248,        247,        '仪陇县',        '637600');

insert into District values(2249,        247,        '西充县',        '637200');

insert into District values(2250,        247,        '阆中市',        '637400');

insert into District values(2251,        248,        '东坡区',        '620010');

insert into District values(2252,        248,        '仁寿县',        '620500');

insert into District values(2253,        248,        '彭山县',        '620860');

insert into District values(2254,        248,        '洪雅县',        '620360');

insert into District values(2255,        248,        '丹棱县',        '620200');

insert into District values(2256,        248,        '青神县',        '620460');

insert into District values(2257,        249,        '翠屏区',        '644000');

insert into District values(2258,        249,        '宜宾县',        '644600');

insert into District values(2259,        249,        '南溪县',        '644100');

insert into District values(2260,        249,        '江安县',        '644200');

insert into District values(2261,        249,        '长宁县',        '644300');

insert into District values(2262,        249,        '高县',        '645150');

insert into District values(2263,        249,        '珙县',        '644500');

insert into District values(2264,        249,        '筠连县',        '645250');

insert into District values(2265,        249,        '兴文县',        '644400');

insert into District values(2266,        249,        '屏山县',        '645350');

insert into District values(2267,        250,        '广安区',        '638000');

insert into District values(2268,        250,        '岳池县',        '638300');

insert into District values(2269,        250,        '武胜县',        '638400');

insert into District values(2270,        250,        '邻水县',        '638500');

insert into District values(2271,        250,        '华蓥市',        '638600');

insert into District values(2272,        251,        '通川区',        '635000');

insert into District values(2273,        251,        '达县',        '635000');

insert into District values(2274,        251,        '宣汉县',        '636150');

insert into District values(2275,        251,        '开江县',        '636250');

insert into District values(2276,        251,        '大竹县',        '635100');

insert into District values(2277,        251,        '渠县',        '635200');

insert into District values(2278,        251,        '万源市',        '636350');

insert into District values(2279,        252,        '雨城区',        '625000');

insert into District values(2280,        252,        '名山县',        '625100');

insert into District values(2281,        252,        '荥经县',        '625200');

insert into District values(2282,        252,        '汉源县',        '625300');

insert into District values(2283,        252,        '石棉县',        '625400');

insert into District values(2284,        252,        '天全县',        '625500');

insert into District values(2285,        252,        '芦山县',        '625600');

insert into District values(2286,        252,        '宝兴县',        '625700');

insert into District values(2287,        253,        '巴州区',        '636001');

insert into District values(2288,        253,        '通江县',        '636700');

insert into District values(2289,        253,        '南江县',        '636600');

insert into District values(2290,        253,        '平昌县',        '636400');

insert into District values(2291,        254,        '雁江区',        '641300');

insert into District values(2292,        254,        '安岳县',        '642350');

insert into District values(2293,        254,        '乐至县',        '641500');

insert into District values(2294,        254,        '简阳市',        '641400');

insert into District values(2295,        255,        '汶川县',        '623000');

insert into District values(2296,        255,        '理县',        '623100');

insert into District values(2297,        255,        '茂县',        '623200');

insert into District values(2298,        255,        '松潘县',        '623300');

insert into District values(2299,        255,        '九寨沟县',        '623400');

insert into District values(2300,        255,        '金川县',        '624100');

insert into District values(2301,        255,        '小金县',        '624200');

insert into District values(2302,        255,        '黑水县',        '623500');

insert into District values(2303,        255,        '马尔康县',        '624000');

insert into District values(2304,        255,        '壤塘县',        '624300');

insert into District values(2305,        255,        '阿坝县',        '624600');

insert into District values(2306,        255,        '若尔盖县',        '624500');

insert into District values(2307,        255,        '红原县',        '624400');

insert into District values(2308,        256,        '康定县',        '626000');

insert into District values(2309,        256,        '泸定县',        '626100');

insert into District values(2310,        256,        '丹巴县',        '626300');

insert into District values(2311,        256,        '九龙县',        '626200');

insert into District values(2312,        256,        '雅江县',        '627450');

insert into District values(2313,        256,        '道孚县',        '626400');

insert into District values(2314,        256,        '炉霍县',        '626500');

insert into District values(2315,        256,        '甘孜县',        '626700');

insert into District values(2316,        256,        '新龙县',        '626800');

insert into District values(2317,        256,        '德格县',        '627250');

insert into District values(2318,        256,        '白玉县',        '627150');

insert into District values(2319,        256,        '石渠县',        '627350');

insert into District values(2320,        256,        '色达县',        '626600');

insert into District values(2321,        256,        '理塘县',        '627550');

insert into District values(2322,        256,        '巴塘县',        '627650');

insert into District values(2323,        256,        '乡城县',        '627850');

insert into District values(2324,        256,        '稻城县',        '627750');

insert into District values(2325,        256,        '得荣县',        '627950');

insert into District values(2326,        257,        '西昌市',        '615000');

insert into District values(2327,        257,        '木里藏族自治县',        '615800');

insert into District values(2328,        257,        '盐源县',        '615700');

insert into District values(2329,        257,        '德昌县',        '615500');

insert into District values(2330,        257,        '会理县',        '615100');

insert into District values(2331,        257,        '会东县',        '615200');

insert into District values(2332,        257,        '宁南县',        '615400');

insert into District values(2333,        257,        '普格县',        '615300');

insert into District values(2334,        257,        '布拖县',        '615350');

insert into District values(2335,        257,        '金阳县',        '616250');

insert into District values(2336,        257,        '昭觉县',        '616150');

insert into District values(2337,        257,        '喜德县',        '616750');

insert into District values(2338,        257,        '冕宁县',        '615600');

insert into District values(2339,        257,        '越西县',        '616650');

insert into District values(2340,        257,        '甘洛县',        '616850');

insert into District values(2341,        257,        '美姑县',        '616450');

insert into District values(2342,        257,        '雷波县',        '616550');

insert into District values(2343,        258,        '南明区',        '550001');

insert into District values(2344,        258,        '云岩区',        '550001');

insert into District values(2345,        258,        '花溪区',        '550025');

insert into District values(2346,        258,        '乌当区',        '550018');

insert into District values(2347,        258,        '白云区',        '550014');

insert into District values(2348,        258,        '小河区',        '550009');

insert into District values(2349,        258,        '开阳县',        '550300');

insert into District values(2350,        258,        '息烽县',        '551100');

insert into District values(2351,        258,        '修文县',        '550200');

insert into District values(2352,        258,        '清镇市',        '551400');

insert into District values(2353,        258,        '金阳新区',        '550081');

insert into District values(2354,        259,        '钟山区',        '553000');

insert into District values(2355,        259,        '六枝特区',        '553400');

insert into District values(2356,        259,        '水城县',        '553000');

insert into District values(2357,        259,        '盘县',        '561601');

insert into District values(2358,        260,        '红花岗区',        '563000');

insert into District values(2359,        260,        '汇川区',        '563000');

insert into District values(2360,        260,        '遵义县',        '563100');

insert into District values(2361,        260,        '桐梓县',        '563200');

insert into District values(2362,        260,        '绥阳县',        '563300');

insert into District values(2363,        260,        '正安县',        '563400');

insert into District values(2364,        260,        '道真仡佬族苗族自治县',        '563500');

insert into District values(2365,        260,        '务川仡佬族苗族自治县',        '564300');

insert into District values(2366,        260,        '凤冈县',        '564200');

insert into District values(2367,        260,        '湄潭县',        '564100');

insert into District values(2368,        260,        '余庆县',        '564400');

insert into District values(2369,        260,        '习水县',        '564600');

insert into District values(2370,        260,        '赤水市',        '564700');

insert into District values(2371,        260,        '仁怀市',        '564500');

insert into District values(2372,        261,        '西秀区',        '561000');

insert into District values(2373,        261,        '平坝县',        '561100');

insert into District values(2374,        261,        '普定县',        '562100');

insert into District values(2375,        261,        '镇宁布依族苗族自治县',        '561200');

insert into District values(2376,        261,        '关岭布依族苗族自治县',        '561300');

insert into District values(2377,        261,        '紫云苗族布依族自治县',        '550800');

insert into District values(2378,        262,        '铜仁市',        '554300');

insert into District values(2379,        262,        '江口县',        '554400');

insert into District values(2380,        262,        '玉屏侗族自治县',        '554004');

insert into District values(2381,        262,        '石阡县',        '555100');

insert into District values(2382,        262,        '思南县',        '565100');

insert into District values(2383,        262,        '印江土家族苗族自治县',        '555200');

insert into District values(2384,        262,        '德江县',        '565200');

insert into District values(2385,        262,        '沿河土家族自治县',        '565300');

insert into District values(2386,        262,        '松桃苗族自治县',        '554100');

insert into District values(2387,        262,        '万山特区',        '554200');

insert into District values(2388,        263,        '兴义市',        '562400');

insert into District values(2389,        263,        '兴仁县',        '562300');

insert into District values(2390,        263,        '普安县',        '561500');

insert into District values(2391,        263,        '晴隆县',        '561400');

insert into District values(2392,        263,        '贞丰县',        '562200');

insert into District values(2393,        263,        '望谟县',        '552300');

insert into District values(2394,        263,        '册亨县',        '552200');

insert into District values(2395,        263,        '安龙县',        '552400');

insert into District values(2396,        264,        '毕节市',        '551700');

insert into District values(2397,        264,        '大方县',        '551600');

insert into District values(2398,        264,        '黔西县',        '551500');

insert into District values(2399,        264,        '金沙县',        '551800');

insert into District values(2400,        264,        '织金县',        '552100');

insert into District values(2401,        264,        '纳雍县',        '553300');

insert into District values(2402,        264,        '威宁彝族回族苗族自治县',        '553100');

insert into District values(2403,        264,        '赫章县',        '553200');

insert into District values(2404,        265,        '凯里市',        '556000');

insert into District values(2405,        265,        '黄平县',        '556100');

insert into District values(2406,        265,        '施秉县',        '556200');

insert into District values(2407,        265,        '三穗县',        '556500');

insert into District values(2408,        265,        '镇远县',        '557700');

insert into District values(2409,        265,        '岑巩县',        '557800');

insert into District values(2410,        265,        '天柱县',        '556600');

insert into District values(2411,        265,        '锦屏县',        '556700');

insert into District values(2412,        265,        '剑河县',        '556400');

insert into District values(2413,        265,        '台江县',        '556300');

insert into District values(2414,        265,        '黎平县',        '557300');

insert into District values(2415,        265,        '榕江县',        '557200');

insert into District values(2416,        265,        '从江县',        '557400');

insert into District values(2417,        265,        '雷山县',        '557100');

insert into District values(2418,        265,        '麻江县',        '557600');

insert into District values(2419,        265,        '丹寨县',        '557500');

insert into District values(2420,        266,        '都匀市',        '558000');

insert into District values(2421,        266,        '福泉市',        '550500');

insert into District values(2422,        266,        '荔波县',        '558400');

insert into District values(2423,        266,        '贵定县',        '551300');

insert into District values(2424,        266,        '瓮安县',        '550400');

insert into District values(2425,        266,        '独山县',        '558200');

insert into District values(2426,        266,        '平塘县',        '558300');

insert into District values(2427,        266,        '罗甸县',        '550100');

insert into District values(2428,        266,        '长顺县',        '550700');

insert into District values(2429,        266,        '龙里县',        '551200');

insert into District values(2430,        266,        '惠水县',        '550600');

insert into District values(2431,        266,        '三都水族自治县',        '558100');

insert into District values(2432,        267,        '五华区',        '650032');

insert into District values(2433,        267,        '盘龙区',        '650051');

insert into District values(2434,        267,        '官渡区',        '650220');

insert into District values(2435,        267,        '西山区',        '650100');

insert into District values(2436,        267,        '东川区',        '654100');

insert into District values(2437,        267,        '呈贡县',        '650500');

insert into District values(2438,        267,        '晋宁县',        '650600');

insert into District values(2439,        267,        '富民县',        '650400');

insert into District values(2440,        267,        '宜良县',        '652100');

insert into District values(2441,        267,        '石林彝族自治县',        '652200');

insert into District values(2442,        267,        '嵩明县',        '651700');

insert into District values(2443,        267,        '禄劝彝族苗族自治县',        '651500');

insert into District values(2444,        267,        '寻甸回族彝族自治县',        '655200');

insert into District values(2445,        267,        '安宁市',        '650300');

insert into District values(2446,        268,        '麒麟区',        '655000');

insert into District values(2447,        268,        '马龙县',        '655100');

insert into District values(2448,        268,        '陆良县',        '655600');

insert into District values(2449,        268,        '师宗县',        '655700');

insert into District values(2450,        268,        '罗平县',        '655800');

insert into District values(2451,        268,        '富源县',        '655500');

insert into District values(2452,        268,        '会泽县',        '654200');

insert into District values(2453,        268,        '沾益县',        '655331');

insert into District values(2454,        268,        '宣威市',        '655400');

insert into District values(2455,        269,        '红塔区',        '653100');

insert into District values(2456,        269,        '江川县',        '652600');

insert into District values(2457,        269,        '澄江县',        '652500');

insert into District values(2458,        269,        '通海县',        '652700');

insert into District values(2459,        269,        '华宁县',        '652800');

insert into District values(2460,        269,        '易门县',        '651100');

insert into District values(2461,        269,        '峨山彝族自治县',        '653200');

insert into District values(2462,        269,        '新平彝族傣族自治县',        '653400');

insert into District values(2463,        269,        '元江哈尼族彝族傣族自治县',        '653300');

insert into District values(2464,        270,        '隆阳区',        '678000');

insert into District values(2465,        270,        '施甸县',        '678200');

insert into District values(2466,        270,        '腾冲县',        '679100');

insert into District values(2467,        270,        '龙陵县',        '678300');

insert into District values(2468,        270,        '昌宁县',        '678100');

insert into District values(2469,        271,        '昭阳区',        '657000');

insert into District values(2470,        271,        '鲁甸县',        '657100');

insert into District values(2471,        271,        '巧家县',        '654600');

insert into District values(2472,        271,        '盐津县',        '657500');

insert into District values(2473,        271,        '大关县',        '657400');

insert into District values(2474,        271,        '永善县',        '657300');

insert into District values(2475,        271,        '绥江县',        '657700');

insert into District values(2476,        271,        '镇雄县',        '657200');

insert into District values(2477,        271,        '彝良县',        '657600');

insert into District values(2478,        271,        '威信县',        '657900');

insert into District values(2479,        271,        '水富县',        '657800');

insert into District values(2480,        272,        '古城区',        '674100');

insert into District values(2481,        272,        '玉龙纳西族自治县',        '674100');

insert into District values(2482,        272,        '永胜县',        '674200');

insert into District values(2483,        272,        '华坪县',        '674800');

insert into District values(2484,        272,        '宁蒗彝族自治县',        '674300');

insert into District values(2485,        273,        '思茅区',        '665000');

insert into District values(2486,        273,        '宁洱哈尼族彝族自治县',        '665100');

insert into District values(2487,        273,        '墨江哈尼族自治县',        '654800');

insert into District values(2488,        273,        '景东彝族自治县',        '676200');

insert into District values(2489,        273,        '景谷傣族彝族自治县',        '666400');

insert into District values(2490,        273,        '镇沅彝族哈尼族拉祜族自治县',        '666500');

insert into District values(2491,        273,        '江城哈尼族彝族自治县',        '665900');

insert into District values(2492,        273,        '孟连傣族拉祜族佤族自治县',        '665800');

insert into District values(2493,        273,        '澜沧拉祜族自治县',        '665600');

insert into District values(2494,        273,        '西盟佤族自治县',        '665700');

insert into District values(2495,        274,        '临翔区',        '677000');

insert into District values(2496,        274,        '凤庆县',        '675900');

insert into District values(2497,        274,        '云县',        '675800');

insert into District values(2498,        274,        '永德县',        '677600');

insert into District values(2499,        274,        '镇康县',        '677704');

insert into District values(2500,        274,        '双江拉祜族佤族布朗族傣族自治县',        '677300');

insert into District values(2501,        274,        '耿马傣族佤族自治县',        '677500');

insert into District values(2502,        274,        '沧源佤族自治县',        '677400');

insert into District values(2503,        275,        '楚雄市',        '675000');

insert into District values(2504,        275,        '双柏县',        '675100');

insert into District values(2505,        275,        '牟定县',        '675500');

insert into District values(2506,        275,        '南华县',        '675200');

insert into District values(2507,        275,        '姚安县',        '675300');

insert into District values(2508,        275,        '大姚县',        '675400');

insert into District values(2509,        275,        '永仁县',        '651400');

insert into District values(2510,        275,        '元谋县',        '651300');

insert into District values(2511,        275,        '武定县',        '651600');

insert into District values(2512,        275,        '禄丰县',        '651200');

insert into District values(2513,        276,        '个旧市',        '661000');

insert into District values(2514,        276,        '开远市',        '661600');

insert into District values(2515,        276,        '蒙自县',        '661100');

insert into District values(2516,        276,        '屏边苗族自治县',        '661200');

insert into District values(2517,        276,        '建水县',        '654300');

insert into District values(2518,        276,        '石屏县',        '662200');

insert into District values(2519,        276,        '弥勒县',        '652300');

insert into District values(2520,        276,        '泸西县',        '652400');

insert into District values(2521,        276,        '元阳县',        '662400');

insert into District values(2522,        276,        '红河县',        '654400');

insert into District values(2523,        276,        '金平苗族瑶族傣族自治县',        '661500');

insert into District values(2524,        276,        '绿春县',        '662500');

insert into District values(2525,        276,        '河口瑶族自治县',        '661300');

insert into District values(2526,        277,        '文山县',        '663000');

insert into District values(2527,        277,        '砚山县',        '663100');

insert into District values(2528,        277,        '西畴县',        '663500');

insert into District values(2529,        277,        '麻栗坡县',        '663600');

insert into District values(2530,        277,        '马关县',        '663700');

insert into District values(2531,        277,        '丘北县',        '663200');

insert into District values(2532,        277,        '广南县',        '663300');

insert into District values(2533,        277,        '富宁县',        '663400');

insert into District values(2534,        278,        '景洪市',        '666100');

insert into District values(2535,        278,        '勐海县',        '666200');

insert into District values(2536,        278,        '勐腊县',        '666300');

insert into District values(2537,        279,        '大理市',        '671000');

insert into District values(2538,        279,        '漾濞彝族自治县',        '672500');

insert into District values(2539,        279,        '祥云县',        '672100');

insert into District values(2540,        279,        '宾川县',        '671600');

insert into District values(2541,        279,        '弥渡县',        '675600');

insert into District values(2542,        279,        '南涧彝族自治县',        '675700');

insert into District values(2543,        279,        '巍山彝族回族自治县',        '672400');

insert into District values(2544,        279,        '永平县',        '672600');

insert into District values(2545,        279,        '云龙县',        '672700');

insert into District values(2546,        279,        '洱源县',        '671200');

insert into District values(2547,        279,        '剑川县',        '671300');

insert into District values(2548,        279,        '鹤庆县',        '671500');

insert into District values(2549,        280,        '瑞丽市',        '678600');

insert into District values(2550,        280,        '潞西市',        '678400');

insert into District values(2551,        280,        '梁河县',        '679200');

insert into District values(2552,        280,        '盈江县',        '679300');

insert into District values(2553,        280,        '陇川县',        '678700');

insert into District values(2554,        281,        '泸水县',        '673100');

insert into District values(2555,        281,        '福贡县',        '673400');

insert into District values(2556,        281,        '贡山独龙族怒族自治县',        '673500');

insert into District values(2557,        281,        '兰坪白族普米族自治县',        '671400');

insert into District values(2558,        282,        '香格里拉县',        '674400');

insert into District values(2559,        282,        '德钦县',        '674500');

insert into District values(2560,        282,        '维西傈僳族自治县',        '674600');

insert into District values(2561,        283,        '城关区',        '850000');

insert into District values(2562,        283,        '林周县',        '852000');

insert into District values(2563,        283,        '当雄县',        '851500');

insert into District values(2564,        283,        '尼木县',        '851300');

insert into District values(2565,        283,        '曲水县',        '850600');

insert into District values(2566,        283,        '堆龙德庆县',        '851400');

insert into District values(2567,        283,        '达孜县',        '850100');

insert into District values(2568,        283,        '墨竹工卡县',        '850200');

insert into District values(2569,        284,        '昌都县',        '854000');

insert into District values(2570,        284,        '江达县',        '854100');

insert into District values(2571,        284,        '贡觉县',        '854200');

insert into District values(2572,        284,        '类乌齐县',        '855600');

insert into District values(2573,        284,        '丁青县',        '855700');

insert into District values(2574,        284,        '察雅县',        '854300');

insert into District values(2575,        284,        '八宿县',        '854600');

insert into District values(2576,        284,        '左贡县',        '854400');

insert into District values(2577,        284,        '芒康县',        '854500');

insert into District values(2578,        284,        '洛隆县',        '855400');

insert into District values(2579,        284,        '边坝县',        '855500');

insert into District values(2580,        285,        '乃东县',        '856100');

insert into District values(2581,        285,        '扎囊县',        '850800');

insert into District values(2582,        285,        '贡嘎县',        '850700');

insert into District values(2583,        285,        '桑日县',        '856200');

insert into District values(2584,        285,        '琼结县',        '856800');

insert into District values(2585,        285,        '曲松县',        '856300');

insert into District values(2586,        285,        '措美县',        '856900');

insert into District values(2587,        285,        '洛扎县',        '851200');

insert into District values(2588,        285,        '加查县',        '856400');

insert into District values(2589,        285,        '隆子县',        '856600');

insert into District values(2590,        285,        '错那县',        '856700');

insert into District values(2591,        285,        '浪卡子县',        '851000');

insert into District values(2592,        286,        '日喀则市',        '857000');

insert into District values(2593,        286,        '南木林县',        '857100');

insert into District values(2594,        286,        '江孜县',        '857400');

insert into District values(2595,        286,        '定日县',        '858200');

insert into District values(2596,        286,        '萨迦县',        '857800');

insert into District values(2597,        286,        '拉孜县',        '858100');

insert into District values(2598,        286,        '昂仁县',        '858500');

insert into District values(2599,        286,        '谢通门县',        '858900');

insert into District values(2600,        286,        '白朗县',        '857300');

insert into District values(2601,        286,        '仁布县',        '857200');

insert into District values(2602,        286,        '康马县',        '857500');

insert into District values(2603,        286,        '定结县',        '857900');

insert into District values(2604,        286,        '仲巴县',        '858800');

insert into District values(2605,        286,        '亚东县',        '857600');

insert into District values(2606,        286,        '吉隆县',        '858700');

insert into District values(2607,        286,        '聂拉木县',        '858300');

insert into District values(2608,        286,        '萨嘎县',        '857800');

insert into District values(2609,        286,        '岗巴县',        '857700');

insert into District values(2610,        287,        '那曲县',        '852000');

insert into District values(2611,        287,        '嘉黎县',        '852400');

insert into District values(2612,        287,        '比如县',        '852300');

insert into District values(2613,        287,        '聂荣县',        '853500');

insert into District values(2614,        287,        '安多县',        '852600');

insert into District values(2615,        287,        '申扎县',        '853100');

insert into District values(2616,        287,        '索县',        '852200');

insert into District values(2617,        287,        '班戈县',        '852500');

insert into District values(2618,        287,        '巴青县',        '852100');

insert into District values(2619,        287,        '尼玛县',        '853200');

insert into District values(2620,        288,        '普兰县',        '859500');

insert into District values(2621,        288,        '札达县',        '859600');

insert into District values(2622,        288,        '噶尔县',        '859400');

insert into District values(2623,        288,        '日土县',        '859700');

insert into District values(2624,        288,        '革吉县',        '859100');

insert into District values(2625,        288,        '改则县',        '859200');

insert into District values(2626,        288,        '措勤县',        '859300');

insert into District values(2627,        289,        '林芝县',        '850400');

insert into District values(2628,        289,        '工布江达县',        '850300');

insert into District values(2629,        289,        '米林县',        '860500');

insert into District values(2630,        289,        '墨脱县',        '855300');

insert into District values(2631,        289,        '波密县',        '855200');

insert into District values(2632,        289,        '察隅县',        '855100');

insert into District values(2633,        289,        '朗县',        '856500');

insert into District values(2634,        290,        '新城区',        '710004');

insert into District values(2635,        290,        '碑林区',        '710001');

insert into District values(2636,        290,        '莲湖区',        '710003');

insert into District values(2637,        290,        '灞桥区',        '710038');

insert into District values(2638,        290,        '未央区',        '710014');

insert into District values(2639,        290,        '雁塔区',        '710061');

insert into District values(2640,        290,        '阎良区',        '710087');

insert into District values(2641,        290,        '临潼区',        '710600');

insert into District values(2642,        290,        '长安区',        '710100');

insert into District values(2643,        290,        '蓝田县',        '710500');

insert into District values(2644,        290,        '周至县',        '710400');

insert into District values(2645,        290,        '户县',        '710300');

insert into District values(2646,        290,        '高陵县',        '710200');

insert into District values(2647,        290,        '高新区',        '710075');

insert into District values(2648,        291,        '王益区',        '727000');

insert into District values(2649,        291,        '印台区',        '727007');

insert into District values(2650,        291,        '耀州区',        '727100');

insert into District values(2651,        291,        '宜君县',        '727200');

insert into District values(2652,        291,        '新区',        '727100');

insert into District values(2653,        292,        '渭滨区',        '721000');

insert into District values(2654,        292,        '金台区',        '721000');

insert into District values(2655,        292,        '陈仓区',        '721300');

insert into District values(2656,        292,        '凤翔县',        '721400');

insert into District values(2657,        292,        '岐山县',        '722400');

insert into District values(2658,        292,        '扶风县',        '722200');

insert into District values(2659,        292,        '眉县',        '722300');

insert into District values(2660,        292,        '陇县',        '721200');

insert into District values(2661,        292,        '千阳县',        '721100');

insert into District values(2662,        292,        '麟游县',        '721500');

insert into District values(2663,        292,        '凤县',        '721700');

insert into District values(2664,        292,        '太白县',        '721600');

insert into District values(2665,        293,        '秦都区',        '712000');

insert into District values(2666,        293,        '渭城区',        '712000');

insert into District values(2667,        293,        '杨陵区',        '712100');

insert into District values(2668,        293,        '三原县',        '713800');

insert into District values(2669,        293,        '泾阳县',        '713700');

insert into District values(2670,        293,        '兴平市',        '713100');

insert into District values(2671,        293,        '乾县',        '713300');

insert into District values(2672,        293,        '礼泉县',        '713200');

insert into District values(2673,        293,        '永寿县',        '713400');

insert into District values(2674,        293,        '彬县',        '713500');

insert into District values(2675,        293,        '长武县',        '713600');

insert into District values(2676,        293,        '旬邑县',        '711300');

insert into District values(2677,        293,        '淳化县',        '711200');

insert into District values(2678,        293,        '武功县',        '712200');

insert into District values(2679,        294,        '临渭区',        '714000');

insert into District values(2680,        294,        '华县',        '714100');

insert into District values(2681,        294,        '潼关县',        '714300');

insert into District values(2682,        294,        '大荔县',        '715100');

insert into District values(2683,        294,        '合阳县',        '715300');

insert into District values(2684,        294,        '澄城县',        '715200');

insert into District values(2685,        294,        '蒲城县',        '715500');

insert into District values(2686,        294,        '白水县',        '715600');

insert into District values(2687,        294,        '富平县',        '711700');

insert into District values(2688,        294,        '韩城市',        '715400');

insert into District values(2689,        294,        '华阴市',        '714200');

insert into District values(2690,        295,        '宝塔区',        '716000');

insert into District values(2691,        295,        '延长县',        '717100');

insert into District values(2692,        295,        '延川县',        '717200');

insert into District values(2693,        295,        '子长县',        '717300');

insert into District values(2694,        295,        '安塞县',        '717400');

insert into District values(2695,        295,        '志丹县',        '717500');

insert into District values(2696,        295,        '吴旗县',        '717600');

insert into District values(2697,        295,        '甘泉县',        '716100');

insert into District values(2698,        295,        '富县',        '727500');

insert into District values(2699,        295,        '洛川县',        '727400');

insert into District values(2700,        295,        '宜川县',        '716200');

insert into District values(2701,        295,        '黄龙县',        '715700');

insert into District values(2702,        295,        '黄陵县',        '727300');

insert into District values(2703,        296,        '汉台区',        '723000');

insert into District values(2704,        296,        '南郑县',        '723100');

insert into District values(2705,        296,        '城固县',        '723200');

insert into District values(2706,        296,        '洋县',        '723300');

insert into District values(2707,        296,        '西乡县',        '723500');

insert into District values(2708,        296,        '勉县',        '724200');

insert into District values(2709,        296,        '宁强县',        '724400');

insert into District values(2710,        296,        '略阳县',        '724300');

insert into District values(2711,        296,        '镇巴县',        '723600');

insert into District values(2712,        296,        '留坝县',        '724100');

insert into District values(2713,        296,        '佛坪县',        '723400');

insert into District values(2714,        296,        '经济开发区',        '723000');

insert into District values(2715,        297,        '榆阳区',        '719000');

insert into District values(2716,        297,        '神木县',        '719300');

insert into District values(2717,        297,        '府谷县',        '719400');

insert into District values(2718,        297,        '横山县',        '719100');

insert into District values(2719,        297,        '靖边县',        '718500');

insert into District values(2720,        297,        '定边县',        '718600');

insert into District values(2721,        297,        '绥德县',        '718000');

insert into District values(2722,        297,        '米脂县',        '718100');

insert into District values(2723,        297,        '佳县',        '719200');

insert into District values(2724,        297,        '吴堡县',        '718200');

insert into District values(2725,        297,        '清涧县',        '718300');

insert into District values(2726,        297,        '子洲县',        '718400');

insert into District values(2727,        298,        '汉滨区',        '725000');

insert into District values(2728,        298,        '汉阴县',        '725100');

insert into District values(2729,        298,        '石泉县',        '725200');

insert into District values(2730,        298,        '宁陕县',        '711600');

insert into District values(2731,        298,        '紫阳县',        '725300');

insert into District values(2732,        298,        '岚皋县',        '725400');

insert into District values(2733,        298,        '平利县',        '725500');

insert into District values(2734,        298,        '镇坪县',        '725600');

insert into District values(2735,        298,        '旬阳县',        '725700');

insert into District values(2736,        298,        '白河县',        '725800');

insert into District values(2737,        299,        '商州区',        '726000');

insert into District values(2738,        299,        '洛南县',        '726100');

insert into District values(2739,        299,        '丹凤县',        '726200');

insert into District values(2740,        299,        '商南县',        '726300');

insert into District values(2741,        299,        '山阳县',        '726400');

insert into District values(2742,        299,        '镇安县',        '711500');

insert into District values(2743,        299,        '柞水县',        '711400');

insert into District values(2744,        300,        '城关区',        '730030');

insert into District values(2745,        300,        '七里河区',        '730050');

insert into District values(2746,        300,        '西固区',        '730060');

insert into District values(2747,        300,        '安宁区',        '730070');

insert into District values(2748,        300,        '红古区',        '730080');

insert into District values(2749,        300,        '永登县',        '730300');

insert into District values(2750,        300,        '皋兰县',        '730200');

insert into District values(2751,        300,        '榆中县',        '730100');

insert into District values(2752,        301,        '嘉峪关市',        '735100');

insert into District values(2753,        302,        '金川区',        '737103');

insert into District values(2754,        302,        '永昌县',        '737200');

insert into District values(2755,        303,        '白银区',        '730900');

insert into District values(2756,        303,        '平川区',        '730913');

insert into District values(2757,        303,        '靖远县',        '730600');

insert into District values(2758,        303,        '会宁县',        '730700');

insert into District values(2759,        303,        '景泰县',        '730400');

insert into District values(2760,        304,        '秦州区',        '741000');

insert into District values(2761,        304,        '麦积区',        '741020');

insert into District values(2762,        304,        '清水县',        '741400');

insert into District values(2763,        304,        '秦安县',        '741600');

insert into District values(2764,        304,        '甘谷县',        '741200');

insert into District values(2765,        304,        '武山县',        '741300');

insert into District values(2766,        304,        '张家川回族自治县',        '741500');

insert into District values(2767,        305,        '凉州区',        '733000');

insert into District values(2768,        305,        '民勤县',        '733300');

insert into District values(2769,        305,        '古浪县',        '733100');

insert into District values(2770,        305,        '天祝藏族自治县',        '733200');

insert into District values(2771,        306,        '甘州区',        '734000');

insert into District values(2772,        306,        '肃南裕固族自治县',        '734400');

insert into District values(2773,        306,        '民乐县',        '734500');

insert into District values(2774,        306,        '临泽县',        '734200');

insert into District values(2775,        306,        '高台县',        '734300');

insert into District values(2776,        306,        '山丹县',        '734100');

insert into District values(2777,        307,        '崆峒区',        '744000');

insert into District values(2778,        307,        '泾川县',        '744300');

insert into District values(2779,        307,        '灵台县',        '744400');

insert into District values(2780,        307,        '崇信县',        '744200');

insert into District values(2781,        307,        '华亭县',        '744100');

insert into District values(2782,        307,        '庄浪县',        '744600');

insert into District values(2783,        307,        '静宁县',        '743400');

insert into District values(2784,        308,        '肃州区',        '735000');

insert into District values(2785,        308,        '金塔县',        '735300');

insert into District values(2786,        308,        '安西县',        '736100');

insert into District values(2787,        308,        '肃北蒙古族自治县',        '736300');

insert into District values(2788,        308,        '阿克塞哈萨克族自治县',        '736400');

insert into District values(2789,        308,        '玉门市',        '735200');

insert into District values(2790,        308,        '敦煌市',        '736200');

insert into District values(2791,        309,        '西峰区',        '745000');

insert into District values(2792,        309,        '庆城县',        '745100');

insert into District values(2793,        309,        '环县',        '745700');

insert into District values(2794,        309,        '华池县',        '745600');

insert into District values(2795,        309,        '合水县',        '745400');

insert into District values(2796,        309,        '正宁县',        '745300');

insert into District values(2797,        309,        '宁县',        '745200');

insert into District values(2798,        309,        '镇原县',        '744500');

insert into District values(2799,        310,        '安定区',        '744300');

insert into District values(2800,        310,        '通渭县',        '743300');

insert into District values(2801,        310,        '陇西县',        '748100');

insert into District values(2802,        310,        '渭源县',        '748200');

insert into District values(2803,        310,        '临洮县',        '730500');

insert into District values(2804,        310,        '漳县',        '748300');

insert into District values(2805,        310,        '岷县',        '748400');

insert into District values(2806,        311,        '武都区',        '746000');

insert into District values(2807,        311,        '成县',        '742500');

insert into District values(2808,        311,        '文县',        '746400');

insert into District values(2809,        311,        '宕昌县',        '748500');

insert into District values(2810,        311,        '康县',        '746500');

insert into District values(2811,        311,        '西和县',        '742100');

insert into District values(2812,        311,        '礼县',        '742200');

insert into District values(2813,        311,        '徽县',        '742300');

insert into District values(2814,        311,        '两当县',        '742400');

insert into District values(2815,        312,        '临夏市',        '731100');

insert into District values(2816,        312,        '临夏县',        '731800');

insert into District values(2817,        312,        '康乐县',        '731500');

insert into District values(2818,        312,        '永靖县',        '731600');

insert into District values(2819,        312,        '广河县',        '731300');

insert into District values(2820,        312,        '和政县',        '731200');

insert into District values(2821,        312,        '东乡族自治县',        '731400');

insert into District values(2822,        312,        '积石山保安族东乡族撒拉族自治县',        '731700');

insert into District values(2823,        313,        '合作市',        '747000');

insert into District values(2824,        313,        '临潭县',        '747500');

insert into District values(2825,        313,        '卓尼县',        '747600');

insert into District values(2826,        313,        '舟曲县',        '746300');

insert into District values(2827,        313,        '迭部县',        '747400');

insert into District values(2828,        313,        '玛曲县',        '747300');

insert into District values(2829,        313,        '碌曲县',        '747200');

insert into District values(2830,        313,        '夏河县',        '747100');

insert into District values(2831,        314,        '城东区',        '810000');

insert into District values(2832,        314,        '城中区',        '810000');

insert into District values(2833,        314,        '城西区',        '810000');

insert into District values(2834,        314,        '城北区',        '810000');

insert into District values(2835,        314,        '大通回族土族自治县',        '810100');

insert into District values(2836,        314,        '湟中县',        '811600');

insert into District values(2837,        314,        '湟源县',        '812100');

insert into District values(2838,        315,        '平安县',        '810600');

insert into District values(2839,        315,        '民和回族土族自治县',        '810800');

insert into District values(2840,        315,        '乐都县',        '810700');

insert into District values(2841,        315,        '互助土族自治县',        '810500');

insert into District values(2842,        315,        '化隆回族自治县',        '810900');

insert into District values(2843,        315,        '循化撒拉族自治县',        '811100');

insert into District values(2844,        316,        '门源回族自治县',        '810300');

insert into District values(2845,        316,        '祁连县',        '810400');

insert into District values(2846,        316,        '海晏县',        '812200');

insert into District values(2847,        316,        '刚察县',        '812300');

insert into District values(2848,        317,        '同仁县',        '811300');

insert into District values(2849,        317,        '尖扎县',        '811200');

insert into District values(2850,        317,        '泽库县',        '811400');

insert into District values(2851,        317,        '河南蒙古族自治县',        '811500');

insert into District values(2852,        318,        '共和县',        '813000');

insert into District values(2853,        318,        '同德县',        '813200');

insert into District values(2854,        318,        '贵德县',        '811700');

insert into District values(2855,        318,        '兴海县',        '813300');

insert into District values(2856,        318,        '贵南县',        '813100');

insert into District values(2857,        319,        '玛沁县',        '814000');

insert into District values(2858,        319,        '班玛县',        '814300');

insert into District values(2859,        319,        '甘德县',        '814100');

insert into District values(2860,        319,        '达日县',        '814200');

insert into District values(2861,        319,        '久治县',        '624700');

insert into District values(2862,        319,        '玛多县',        '813500');

insert into District values(2863,        320,        '玉树县',        '815000');

insert into District values(2864,        320,        '杂多县',        '815300');

insert into District values(2865,        320,        '称多县',        '815100');

insert into District values(2866,        320,        '治多县',        '815400');

insert into District values(2867,        320,        '囊谦县',        '815200');

insert into District values(2868,        320,        '曲麻莱县',        '815500');

insert into District values(2869,        321,        '格尔木市',        '816000');

insert into District values(2870,        321,        '德令哈市',        '817000');

insert into District values(2871,        321,        '乌兰县',        '817100');

insert into District values(2872,        321,        '都兰县',        '816100');

insert into District values(2873,        321,        '天峻县',        '817200');

insert into District values(2874,        321,        '大柴旦行委',        '817300');

insert into District values(2875,        322,        '兴庆区',        '750001');

insert into District values(2876,        322,        '西夏区',        '750021');

insert into District values(2877,        322,        '金凤区',        '750011');

insert into District values(2878,        322,        '永宁县',        '750100');

insert into District values(2879,        322,        '贺兰县',        '750200');

insert into District values(2880,        322,        '灵武市',        '750004');

insert into District values(2881,        323,        '大武口区',        '753000');

insert into District values(2882,        323,        '惠农区',        '753600');

insert into District values(2883,        323,        '平罗县',        '753400');

insert into District values(2884,        324,        '利通区',        '751100');

insert into District values(2885,        324,        '盐池县',        '751500');

insert into District values(2886,        324,        '同心县',        '751300');

insert into District values(2887,        324,        '青铜峡市',        '751600');

insert into District values(2888,        325,        '原州区',        '756000');

insert into District values(2889,        325,        '西吉县',        '756200');

insert into District values(2890,        325,        '隆德县',        '756300');

insert into District values(2891,        325,        '泾源县',        '756400');

insert into District values(2892,        325,        '彭阳县',        '756500');

insert into District values(2893,        326,        '沙坡头区',        '755000');

insert into District values(2894,        326,        '中宁县',        '755100');

insert into District values(2895,        326,        '海原县',        '755200');

insert into District values(2896,        327,        '天山区',        '830000');

insert into District values(2897,        327,        '沙依巴克区',        '830002');

insert into District values(2898,        327,        '新市区',        '830011');

insert into District values(2899,        327,        '水磨沟区',        '830017');

insert into District values(2900,        327,        '头屯河区',        '830022');

insert into District values(2901,        327,        '达坂城区',        '830039');

insert into District values(2902,        327,        '米东区',        '830019');

insert into District values(2903,        327,        '乌鲁木齐县',        '830063');

insert into District values(2904,        328,        '独山子区',        '834021');

insert into District values(2905,        328,        '克拉玛依区',        '834000');

insert into District values(2906,        328,        '白碱滩区',        '834008');

insert into District values(2907,        328,        '乌尔禾区',        '834012');

insert into District values(2908,        329,        '吐鲁番市',        '838000');

insert into District values(2909,        329,        '鄯善县',        '838200');

insert into District values(2910,        329,        '托克逊县',        '838100');

insert into District values(2911,        330,        '哈密市',        '839000');

insert into District values(2912,        330,        '巴里坤哈萨克自治县',        '839200');

insert into District values(2913,        330,        '伊吾县',        '839300');

insert into District values(2914,        331,        '昌吉市',        '831100');

insert into District values(2915,        331,        '阜康市',        '831500');

insert into District values(2916,        331,        '米泉市',        '831400');

insert into District values(2917,        331,        '呼图壁县',        '831200');

insert into District values(2918,        331,        '玛纳斯县',        '832200');

insert into District values(2919,        331,        '奇台县',        '831800');

insert into District values(2920,        331,        '吉木萨尔县',        '831700');

insert into District values(2921,        331,        '木垒哈萨克自治县',        '831900');

insert into District values(2922,        332,        '博乐市',        '833400');

insert into District values(2923,        332,        '精河县',        '833300');

insert into District values(2924,        332,        '温泉县',        '833500');

insert into District values(2925,        333,        '库尔勒市',        '841000');

insert into District values(2926,        333,        '轮台县',        '841600');

insert into District values(2927,        333,        '尉犁县',        '841500');

insert into District values(2928,        333,        '若羌县',        '841800');

insert into District values(2929,        333,        '且末县',        '841900');

insert into District values(2930,        333,        '焉耆回族自治县',        '841100');

insert into District values(2931,        333,        '和静县',        '841300');

insert into District values(2932,        333,        '和硕县',        '841200');

insert into District values(2933,        333,        '博湖县',        '841400');

insert into District values(2934,        334,        '阿克苏市',        '843000');

insert into District values(2935,        334,        '温宿县',        '843100');

insert into District values(2936,        334,        '库车县',        '842000');

insert into District values(2937,        334,        '沙雅县',        '842200');

insert into District values(2938,        334,        '新和县',        '842100');

insert into District values(2939,        334,        '拜城县',        '842300');

insert into District values(2940,        334,        '乌什县',        '843400');

insert into District values(2941,        334,        '阿瓦提县',        '843200');

insert into District values(2942,        334,        '柯坪县',        '843600');

insert into District values(2943,        335,        '阿图什市',        '845350');

insert into District values(2944,        335,        '阿克陶县',        '845550');

insert into District values(2945,        335,        '阿合奇县',        '843500');

insert into District values(2946,        335,        '乌恰县',        '845450');

insert into District values(2947,        336,        '喀什市',        '844000');

insert into District values(2948,        336,        '疏附县',        '844100');

insert into District values(2949,        336,        '疏勒县',        '844200');

insert into District values(2950,        336,        '英吉沙县',        '844500');

insert into District values(2951,        336,        '泽普县',        '844800');

insert into District values(2952,        336,        '莎车县',        '844700');

insert into District values(2953,        336,        '叶城县',        '844900');

insert into District values(2954,        336,        '麦盖提县',        '844600');

insert into District values(2955,        336,        '岳普湖县',        '844400');

insert into District values(2956,        336,        '伽师县',        '844300');

insert into District values(2957,        336,        '巴楚县',        '843800');

insert into District values(2958,        336,        '塔什库尔干塔吉克自治县',        '845250');

insert into District values(2959,        337,        '和田市',        '848000');

insert into District values(2960,        337,        '和田县',        '848000');

insert into District values(2961,        337,        '墨玉县',        '848100');

insert into District values(2962,        337,        '皮山县',        '845150');

insert into District values(2963,        337,        '洛浦县',        '848200');

insert into District values(2964,        337,        '策勒县',        '848300');

insert into District values(2965,        337,        '于田县',        '848400');

insert into District values(2966,        337,        '民丰县',        '848500');

insert into District values(2967,        338,        '伊宁市',        '835000');

insert into District values(2968,        338,        '奎屯市',        '833200');

insert into District values(2969,        338,        '伊宁县',        '835100');

insert into District values(2970,        338,        '察布查尔锡伯自治县',        '835300');

insert into District values(2971,        338,        '霍城县',        '835200');

insert into District values(2972,        338,        '巩留县',        '835400');

insert into District values(2973,        338,        '新源县',        '835800');

insert into District values(2974,        338,        '昭苏县',        '835600');

insert into District values(2975,        338,        '特克斯县',        '835500');

insert into District values(2976,        338,        '尼勒克县',        '835700');

insert into District values(2977,        339,        '塔城市',        '834700');

insert into District values(2978,        339,        '乌苏市',        '833300');

insert into District values(2979,        339,        '额敏县',        '834600');

insert into District values(2980,        339,        '沙湾县',        '832100');

insert into District values(2981,        339,        '托里县',        '834500');

insert into District values(2982,        339,        '裕民县',        '834800');

insert into District values(2983,        339,        '和布克赛尔蒙古自治县',        '834400');

insert into District values(2984,        340,        '阿勒泰市',        '836500');

insert into District values(2985,        340,        '布尔津县',        '836600');

insert into District values(2986,        340,        '富蕴县',        '836100');

insert into District values(2987,        340,        '福海县',        '836400');

insert into District values(2988,        340,        '哈巴河县',        '836700');

insert into District values(2989,        340,        '青河县',        '836200');

insert into District values(2990,        340,        '吉木乃县',        '836800');

insert into District values(2991,        341,        '石河子市',        '832000');

insert into District values(2992,        341,        '阿拉尔市',        '843300');

insert into District values(2993,        341,        '图木舒克市',        '843806');

insert into District values(2994,        341,        '五家渠市',        '831300');

insert into District values(2995,        342,        '香港',        '860600');

insert into District values(2996,        343,        '澳门',        '860700');

insert into District values(2997,        344,        '台湾',        '860800');
