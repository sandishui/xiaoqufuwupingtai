/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : xiaoqu

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2018-01-31 17:56:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(10) DEFAULT NULL COMMENT '父级编码',
  `area_code` varchar(10) DEFAULT NULL COMMENT '地区编码',
  `area_name` varchar(50) DEFAULT NULL COMMENT '中文名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8 COMMENT='地区表';

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '0', '110000', '北京市');
INSERT INTO `area` VALUES ('2', '0', '120000', '天津市');
INSERT INTO `area` VALUES ('3', '0', '130000', '河北省');
INSERT INTO `area` VALUES ('4', '0', '140000', '山西省');
INSERT INTO `area` VALUES ('5', '0', '150000', '内蒙古');
INSERT INTO `area` VALUES ('6', '0', '210000', '辽宁省');
INSERT INTO `area` VALUES ('7', '0', '220000', '吉林省');
INSERT INTO `area` VALUES ('8', '0', '230000', '黑龙江');
INSERT INTO `area` VALUES ('9', '0', '310000', '上海市');
INSERT INTO `area` VALUES ('10', '0', '320000', '江苏省');
INSERT INTO `area` VALUES ('11', '0', '330000', '浙江省');
INSERT INTO `area` VALUES ('12', '0', '340000', '安徽省');
INSERT INTO `area` VALUES ('13', '0', '350000', '福建省');
INSERT INTO `area` VALUES ('14', '0', '360000', '江西省');
INSERT INTO `area` VALUES ('15', '0', '370000', '山东省');
INSERT INTO `area` VALUES ('16', '0', '410000', '河南省');
INSERT INTO `area` VALUES ('17', '0', '420000', '湖北省');
INSERT INTO `area` VALUES ('18', '0', '430000', '湖南省');
INSERT INTO `area` VALUES ('19', '0', '440000', '广东省');
INSERT INTO `area` VALUES ('20', '0', '450000', '广  西');
INSERT INTO `area` VALUES ('21', '0', '460000', '海南省');
INSERT INTO `area` VALUES ('22', '0', '500000', '重庆市');
INSERT INTO `area` VALUES ('23', '0', '510000', '四川省');
INSERT INTO `area` VALUES ('24', '0', '520000', '贵州省');
INSERT INTO `area` VALUES ('25', '0', '530000', '云南省');
INSERT INTO `area` VALUES ('26', '0', '540000', '西  藏');
INSERT INTO `area` VALUES ('27', '0', '610000', '陕西省');
INSERT INTO `area` VALUES ('28', '0', '620000', '甘肃省');
INSERT INTO `area` VALUES ('29', '0', '630000', '青海省');
INSERT INTO `area` VALUES ('30', '0', '640000', '宁  夏');
INSERT INTO `area` VALUES ('31', '0', '650000', '新  疆');
INSERT INTO `area` VALUES ('32', '0', '710000', '台湾省');
INSERT INTO `area` VALUES ('33', '0', '810000', '香  港');
INSERT INTO `area` VALUES ('34', '0', '820000', '澳  门');
INSERT INTO `area` VALUES ('440', '110000', '110100', '北京市');
INSERT INTO `area` VALUES ('441', '130000', '130100', '石家庄市');
INSERT INTO `area` VALUES ('442', '130000', '130200', '唐山市');
INSERT INTO `area` VALUES ('443', '130000', '130300', '秦皇岛市');
INSERT INTO `area` VALUES ('444', '130000', '130400', '邯郸市');
INSERT INTO `area` VALUES ('445', '130000', '130500', '邢台市');
INSERT INTO `area` VALUES ('446', '130000', '130600', '保定市');
INSERT INTO `area` VALUES ('447', '130000', '130700', '张家口市');
INSERT INTO `area` VALUES ('448', '130000', '130800', '承德市');
INSERT INTO `area` VALUES ('449', '130000', '130900', '沧州市');
INSERT INTO `area` VALUES ('450', '130000', '131000', '廊坊市');
INSERT INTO `area` VALUES ('451', '130000', '131100', '衡水市');
INSERT INTO `area` VALUES ('452', '140000', '140100', '太原市');
INSERT INTO `area` VALUES ('453', '140000', '140200', '大同市');
INSERT INTO `area` VALUES ('454', '140000', '140300', '阳泉市');
INSERT INTO `area` VALUES ('455', '140000', '140400', '长治市');
INSERT INTO `area` VALUES ('456', '140000', '140500', '晋城市');
INSERT INTO `area` VALUES ('457', '140000', '140600', '朔州市');
INSERT INTO `area` VALUES ('458', '140000', '140700', '晋中市');
INSERT INTO `area` VALUES ('459', '140000', '140800', '运城市');
INSERT INTO `area` VALUES ('460', '140000', '140900', '忻州市');
INSERT INTO `area` VALUES ('461', '140000', '141000', '临汾市');
INSERT INTO `area` VALUES ('462', '140000', '141100', '吕梁市');
INSERT INTO `area` VALUES ('463', '150000', '150100', '呼和浩特市');
INSERT INTO `area` VALUES ('464', '150000', '150200', '包头市');
INSERT INTO `area` VALUES ('465', '150000', '150300', '乌海市');
INSERT INTO `area` VALUES ('466', '150000', '150400', '赤峰市');
INSERT INTO `area` VALUES ('467', '150000', '150500', '通辽市');
INSERT INTO `area` VALUES ('468', '150000', '150600', '鄂尔多斯市');
INSERT INTO `area` VALUES ('469', '150000', '150700', '呼伦贝尔市');
INSERT INTO `area` VALUES ('470', '150000', '150800', '巴彦淖尔市');
INSERT INTO `area` VALUES ('471', '150000', '150900', '乌兰察布市');
INSERT INTO `area` VALUES ('472', '150000', '152200', '兴安盟');
INSERT INTO `area` VALUES ('473', '150000', '152500', '锡林郭勒盟');
INSERT INTO `area` VALUES ('474', '150000', '152900', '阿拉善盟');
INSERT INTO `area` VALUES ('475', '210000', '210100', '沈阳市');
INSERT INTO `area` VALUES ('476', '210000', '210200', '大连市');
INSERT INTO `area` VALUES ('477', '210000', '210300', '鞍山市');
INSERT INTO `area` VALUES ('478', '210000', '210400', '抚顺市');
INSERT INTO `area` VALUES ('479', '210000', '210500', '本溪市');
INSERT INTO `area` VALUES ('480', '210000', '210600', '丹东市');
INSERT INTO `area` VALUES ('481', '210000', '210700', '锦州市');
INSERT INTO `area` VALUES ('482', '210000', '210800', '营口市');
INSERT INTO `area` VALUES ('483', '210000', '210900', '阜新市');
INSERT INTO `area` VALUES ('484', '210000', '211000', '辽阳市');
INSERT INTO `area` VALUES ('485', '210000', '211100', '盘锦市');
INSERT INTO `area` VALUES ('486', '210000', '211200', '铁岭市');
INSERT INTO `area` VALUES ('487', '210000', '211300', '朝阳市');
INSERT INTO `area` VALUES ('488', '210000', '211400', '葫芦岛市');
INSERT INTO `area` VALUES ('489', '220000', '220100', '长春市');
INSERT INTO `area` VALUES ('490', '220000', '220200', '吉林市');
INSERT INTO `area` VALUES ('491', '220000', '220300', '四平市');
INSERT INTO `area` VALUES ('492', '220000', '220400', '辽源市');
INSERT INTO `area` VALUES ('493', '220000', '220500', '通化市');
INSERT INTO `area` VALUES ('494', '220000', '220600', '白山市');
INSERT INTO `area` VALUES ('495', '220000', '220700', '松原市');
INSERT INTO `area` VALUES ('496', '220000', '220800', '白城市');
INSERT INTO `area` VALUES ('497', '220000', '222400', '延边朝鲜族自治州');
INSERT INTO `area` VALUES ('498', '230000', '230100', '哈尔滨市');
INSERT INTO `area` VALUES ('499', '230000', '230200', '齐齐哈尔市');
INSERT INTO `area` VALUES ('500', '230000', '230300', '鸡西市');
INSERT INTO `area` VALUES ('501', '230000', '230400', '鹤岗市');
INSERT INTO `area` VALUES ('502', '230000', '230500', '双鸭山市');
INSERT INTO `area` VALUES ('503', '230000', '230600', '大庆市');
INSERT INTO `area` VALUES ('504', '230000', '230700', '伊春市');
INSERT INTO `area` VALUES ('505', '230000', '230800', '佳木斯市');
INSERT INTO `area` VALUES ('506', '230000', '230900', '七台河市');
INSERT INTO `area` VALUES ('507', '230000', '231000', '牡丹江市');
INSERT INTO `area` VALUES ('508', '230000', '231100', '黑河市');
INSERT INTO `area` VALUES ('509', '230000', '231200', '绥化市');
INSERT INTO `area` VALUES ('510', '230000', '232700', '大兴安岭地区');
INSERT INTO `area` VALUES ('511', '310000', '310100', '市辖区');
INSERT INTO `area` VALUES ('512', '310000', '310200', '县');
INSERT INTO `area` VALUES ('513', '320000', '320100', '南京市');
INSERT INTO `area` VALUES ('514', '320000', '320200', '无锡市');
INSERT INTO `area` VALUES ('515', '320000', '320300', '徐州市');
INSERT INTO `area` VALUES ('516', '320000', '320400', '常州市');
INSERT INTO `area` VALUES ('517', '320000', '320500', '苏州市');
INSERT INTO `area` VALUES ('518', '320000', '320600', '南通市');
INSERT INTO `area` VALUES ('519', '320000', '320700', '连云港市');
INSERT INTO `area` VALUES ('520', '320000', '320800', '淮安市');
INSERT INTO `area` VALUES ('521', '320000', '320900', '盐城市');
INSERT INTO `area` VALUES ('522', '320000', '321000', '扬州市');
INSERT INTO `area` VALUES ('523', '320000', '321100', '镇江市');
INSERT INTO `area` VALUES ('524', '320000', '321200', '泰州市');
INSERT INTO `area` VALUES ('525', '320000', '321300', '宿迁市');
INSERT INTO `area` VALUES ('526', '330000', '330100', '杭州市');
INSERT INTO `area` VALUES ('527', '330000', '330200', '宁波市');
INSERT INTO `area` VALUES ('528', '330000', '330300', '温州市');
INSERT INTO `area` VALUES ('529', '330000', '330400', '嘉兴市');
INSERT INTO `area` VALUES ('530', '330000', '330500', '湖州市');
INSERT INTO `area` VALUES ('531', '330000', '330600', '绍兴市');
INSERT INTO `area` VALUES ('532', '330000', '330700', '金华市');
INSERT INTO `area` VALUES ('533', '330000', '330800', '衢州市');
INSERT INTO `area` VALUES ('534', '330000', '330900', '舟山市');
INSERT INTO `area` VALUES ('535', '330000', '331000', '台州市');
INSERT INTO `area` VALUES ('536', '330000', '331100', '丽水市');
INSERT INTO `area` VALUES ('537', '340000', '340100', '合肥市');
INSERT INTO `area` VALUES ('538', '340000', '340200', '芜湖市');
INSERT INTO `area` VALUES ('539', '340000', '340300', '蚌埠市');
INSERT INTO `area` VALUES ('540', '340000', '340400', '淮南市');
INSERT INTO `area` VALUES ('541', '340000', '340500', '马鞍山市');
INSERT INTO `area` VALUES ('542', '340000', '340600', '淮北市');
INSERT INTO `area` VALUES ('543', '340000', '340700', '铜陵市');
INSERT INTO `area` VALUES ('544', '340000', '340800', '安庆市');
INSERT INTO `area` VALUES ('545', '340000', '341000', '黄山市');
INSERT INTO `area` VALUES ('546', '340000', '341100', '滁州市');
INSERT INTO `area` VALUES ('547', '340000', '341200', '阜阳市');
INSERT INTO `area` VALUES ('548', '340000', '341300', '宿州市');
INSERT INTO `area` VALUES ('549', '340000', '341400', '巢湖市');
INSERT INTO `area` VALUES ('550', '340000', '341500', '六安市');
INSERT INTO `area` VALUES ('551', '340000', '341600', '亳州市');
INSERT INTO `area` VALUES ('552', '340000', '341700', '池州市');
INSERT INTO `area` VALUES ('553', '340000', '341800', '宣城市');
INSERT INTO `area` VALUES ('554', '350000', '350100', '福州市');
INSERT INTO `area` VALUES ('555', '350000', '350200', '厦门市');
INSERT INTO `area` VALUES ('556', '350000', '350300', '莆田市');
INSERT INTO `area` VALUES ('557', '350000', '350400', '三明市');
INSERT INTO `area` VALUES ('558', '350000', '350500', '泉州市');
INSERT INTO `area` VALUES ('559', '350000', '350600', '漳州市');
INSERT INTO `area` VALUES ('560', '350000', '350700', '南平市');
INSERT INTO `area` VALUES ('561', '350000', '350800', '龙岩市');
INSERT INTO `area` VALUES ('562', '350000', '350900', '宁德市');
INSERT INTO `area` VALUES ('563', '360000', '360100', '南昌市');
INSERT INTO `area` VALUES ('564', '360000', '360200', '景德镇市');
INSERT INTO `area` VALUES ('565', '360000', '360300', '萍乡市');
INSERT INTO `area` VALUES ('566', '360000', '360400', '九江市');
INSERT INTO `area` VALUES ('567', '360000', '360500', '新余市');
INSERT INTO `area` VALUES ('568', '360000', '360600', '鹰潭市');
INSERT INTO `area` VALUES ('569', '360000', '360700', '赣州市');
INSERT INTO `area` VALUES ('570', '360000', '360800', '吉安市');
INSERT INTO `area` VALUES ('571', '360000', '360900', '宜春市');
INSERT INTO `area` VALUES ('572', '360000', '361000', '抚州市');
INSERT INTO `area` VALUES ('573', '360000', '361100', '上饶市');
INSERT INTO `area` VALUES ('574', '370000', '370100', '济南市');
INSERT INTO `area` VALUES ('575', '370000', '370200', '青岛市');
INSERT INTO `area` VALUES ('576', '370000', '370300', '淄博市');
INSERT INTO `area` VALUES ('577', '370000', '370400', '枣庄市');
INSERT INTO `area` VALUES ('578', '370000', '370500', '东营市');
INSERT INTO `area` VALUES ('579', '370000', '370600', '烟台市');
INSERT INTO `area` VALUES ('580', '370000', '370700', '潍坊市');
INSERT INTO `area` VALUES ('581', '370000', '370800', '济宁市');
INSERT INTO `area` VALUES ('582', '370000', '370900', '泰安市');
INSERT INTO `area` VALUES ('583', '370000', '371000', '威海市');
INSERT INTO `area` VALUES ('584', '370000', '371100', '日照市');
INSERT INTO `area` VALUES ('585', '370000', '371200', '莱芜市');
INSERT INTO `area` VALUES ('586', '370000', '371300', '临沂市');
INSERT INTO `area` VALUES ('587', '370000', '371400', '德州市');
INSERT INTO `area` VALUES ('588', '370000', '371500', '聊城市');
INSERT INTO `area` VALUES ('589', '370000', '371600', '滨州市');
INSERT INTO `area` VALUES ('590', '370000', '371700', '荷泽市');
INSERT INTO `area` VALUES ('591', '410000', '410100', '郑州市');
INSERT INTO `area` VALUES ('592', '410000', '410200', '开封市');
INSERT INTO `area` VALUES ('593', '410000', '410300', '洛阳市');
INSERT INTO `area` VALUES ('594', '410000', '410400', '平顶山市');
INSERT INTO `area` VALUES ('595', '410000', '410500', '安阳市');
INSERT INTO `area` VALUES ('596', '410000', '410600', '鹤壁市');
INSERT INTO `area` VALUES ('597', '410000', '410700', '新乡市');
INSERT INTO `area` VALUES ('598', '410000', '410800', '焦作市');
INSERT INTO `area` VALUES ('599', '410000', '410900', '濮阳市');
INSERT INTO `area` VALUES ('600', '410000', '411000', '许昌市');
INSERT INTO `area` VALUES ('601', '410000', '411100', '漯河市');
INSERT INTO `area` VALUES ('602', '410000', '411200', '三门峡市');
INSERT INTO `area` VALUES ('603', '410000', '411300', '南阳市');
INSERT INTO `area` VALUES ('604', '410000', '411400', '商丘市');
INSERT INTO `area` VALUES ('605', '410000', '411500', '信阳市');
INSERT INTO `area` VALUES ('606', '410000', '411600', '周口市');
INSERT INTO `area` VALUES ('607', '410000', '411700', '驻马店市');
INSERT INTO `area` VALUES ('608', '420000', '420100', '武汉市');
INSERT INTO `area` VALUES ('609', '420000', '420200', '黄石市');
INSERT INTO `area` VALUES ('610', '420000', '420300', '十堰市');
INSERT INTO `area` VALUES ('611', '420000', '420500', '宜昌市');
INSERT INTO `area` VALUES ('612', '420000', '420600', '襄樊市');
INSERT INTO `area` VALUES ('613', '420000', '420700', '鄂州市');
INSERT INTO `area` VALUES ('614', '420000', '420800', '荆门市');
INSERT INTO `area` VALUES ('615', '420000', '420900', '孝感市');
INSERT INTO `area` VALUES ('616', '420000', '421000', '荆州市');
INSERT INTO `area` VALUES ('617', '420000', '421100', '黄冈市');
INSERT INTO `area` VALUES ('618', '420000', '421200', '咸宁市');
INSERT INTO `area` VALUES ('619', '420000', '421300', '随州市');
INSERT INTO `area` VALUES ('620', '420000', '422800', '恩施土家族苗族自治州');
INSERT INTO `area` VALUES ('621', '420000', '429000', '省直辖行政单位');
INSERT INTO `area` VALUES ('622', '430000', '430100', '长沙市');
INSERT INTO `area` VALUES ('623', '430000', '430200', '株洲市');
INSERT INTO `area` VALUES ('624', '430000', '430300', '湘潭市');
INSERT INTO `area` VALUES ('625', '430000', '430400', '衡阳市');
INSERT INTO `area` VALUES ('626', '430000', '430500', '邵阳市');
INSERT INTO `area` VALUES ('627', '430000', '430600', '岳阳市');
INSERT INTO `area` VALUES ('628', '430000', '430700', '常德市');
INSERT INTO `area` VALUES ('629', '430000', '430800', '张家界市');
INSERT INTO `area` VALUES ('630', '430000', '430900', '益阳市');
INSERT INTO `area` VALUES ('631', '430000', '431000', '郴州市');
INSERT INTO `area` VALUES ('632', '430000', '431100', '永州市');
INSERT INTO `area` VALUES ('633', '430000', '431200', '怀化市');
INSERT INTO `area` VALUES ('634', '430000', '431300', '娄底市');
INSERT INTO `area` VALUES ('635', '430000', '433100', '湘西土家族苗族自治州');
INSERT INTO `area` VALUES ('636', '440000', '440100', '广州市');
INSERT INTO `area` VALUES ('637', '440000', '440200', '韶关市');
INSERT INTO `area` VALUES ('638', '440000', '440300', '深圳市');
INSERT INTO `area` VALUES ('639', '440000', '440400', '珠海市');
INSERT INTO `area` VALUES ('640', '440000', '440500', '汕头市');
INSERT INTO `area` VALUES ('641', '440000', '440600', '佛山市');
INSERT INTO `area` VALUES ('642', '440000', '440700', '江门市');
INSERT INTO `area` VALUES ('643', '440000', '440800', '湛江市');
INSERT INTO `area` VALUES ('644', '440000', '440900', '茂名市');
INSERT INTO `area` VALUES ('645', '440000', '441200', '肇庆市');
INSERT INTO `area` VALUES ('646', '440000', '441300', '惠州市');
INSERT INTO `area` VALUES ('647', '440000', '441400', '梅州市');
INSERT INTO `area` VALUES ('648', '440000', '441500', '汕尾市');
INSERT INTO `area` VALUES ('649', '440000', '441600', '河源市');
INSERT INTO `area` VALUES ('650', '440000', '441700', '阳江市');
INSERT INTO `area` VALUES ('651', '440000', '441800', '清远市');
INSERT INTO `area` VALUES ('652', '440000', '441900', '东莞市');
INSERT INTO `area` VALUES ('653', '440000', '442000', '中山市');
INSERT INTO `area` VALUES ('654', '440000', '445100', '潮州市');
INSERT INTO `area` VALUES ('655', '440000', '445200', '揭阳市');
INSERT INTO `area` VALUES ('656', '440000', '445300', '云浮市');
INSERT INTO `area` VALUES ('657', '450000', '450100', '南宁市');
INSERT INTO `area` VALUES ('658', '450000', '450200', '柳州市');
INSERT INTO `area` VALUES ('659', '450000', '450300', '桂林市');
INSERT INTO `area` VALUES ('660', '450000', '450400', '梧州市');
INSERT INTO `area` VALUES ('661', '450000', '450500', '北海市');
INSERT INTO `area` VALUES ('662', '450000', '450600', '防城港市');
INSERT INTO `area` VALUES ('663', '450000', '450700', '钦州市');
INSERT INTO `area` VALUES ('664', '450000', '450800', '贵港市');
INSERT INTO `area` VALUES ('665', '450000', '450900', '玉林市');
INSERT INTO `area` VALUES ('666', '450000', '451000', '百色市');
INSERT INTO `area` VALUES ('667', '450000', '451100', '贺州市');
INSERT INTO `area` VALUES ('668', '450000', '451200', '河池市');
INSERT INTO `area` VALUES ('669', '450000', '451300', '来宾市');
INSERT INTO `area` VALUES ('670', '450000', '451400', '崇左市');
INSERT INTO `area` VALUES ('671', '460000', '460100', '海口市');
INSERT INTO `area` VALUES ('672', '460000', '460200', '三亚市');
INSERT INTO `area` VALUES ('673', '460000', '469000', '省直辖县级行政单位');
INSERT INTO `area` VALUES ('674', '500000', '500100', '市辖区');
INSERT INTO `area` VALUES ('675', '500000', '500200', '县');
INSERT INTO `area` VALUES ('676', '500000', '500300', '市');
INSERT INTO `area` VALUES ('677', '510000', '510100', '成都市');
INSERT INTO `area` VALUES ('678', '510000', '510300', '自贡市');
INSERT INTO `area` VALUES ('679', '510000', '510400', '攀枝花市');
INSERT INTO `area` VALUES ('680', '510000', '510500', '泸州市');
INSERT INTO `area` VALUES ('681', '510000', '510600', '德阳市');
INSERT INTO `area` VALUES ('682', '510000', '510700', '绵阳市');
INSERT INTO `area` VALUES ('683', '510000', '510800', '广元市');
INSERT INTO `area` VALUES ('684', '510000', '510900', '遂宁市');
INSERT INTO `area` VALUES ('685', '510000', '511000', '内江市');
INSERT INTO `area` VALUES ('686', '510000', '511100', '乐山市');
INSERT INTO `area` VALUES ('687', '510000', '511300', '南充市');
INSERT INTO `area` VALUES ('688', '510000', '511400', '眉山市');
INSERT INTO `area` VALUES ('689', '510000', '511500', '宜宾市');
INSERT INTO `area` VALUES ('690', '510000', '511600', '广安市');
INSERT INTO `area` VALUES ('691', '510000', '511700', '达州市');
INSERT INTO `area` VALUES ('692', '510000', '511800', '雅安市');
INSERT INTO `area` VALUES ('693', '510000', '511900', '巴中市');
INSERT INTO `area` VALUES ('694', '510000', '512000', '资阳市');
INSERT INTO `area` VALUES ('695', '510000', '513200', '阿坝藏族羌族自治州');
INSERT INTO `area` VALUES ('696', '510000', '513300', '甘孜藏族自治州');
INSERT INTO `area` VALUES ('697', '510000', '513400', '凉山彝族自治州');
INSERT INTO `area` VALUES ('698', '520000', '520100', '贵阳市');
INSERT INTO `area` VALUES ('699', '520000', '520200', '六盘水市');
INSERT INTO `area` VALUES ('700', '520000', '520300', '遵义市');
INSERT INTO `area` VALUES ('701', '520000', '520400', '安顺市');
INSERT INTO `area` VALUES ('702', '520000', '522200', '铜仁地区');
INSERT INTO `area` VALUES ('703', '520000', '522300', '黔西南布依族苗族自治州');
INSERT INTO `area` VALUES ('704', '520000', '522400', '毕节地区');
INSERT INTO `area` VALUES ('705', '520000', '522600', '黔东南苗族侗族自治州');
INSERT INTO `area` VALUES ('706', '520000', '522700', '黔南布依族苗族自治州');
INSERT INTO `area` VALUES ('707', '530000', '530100', '昆明市');
INSERT INTO `area` VALUES ('708', '530000', '530300', '曲靖市');
INSERT INTO `area` VALUES ('709', '530000', '530400', '玉溪市');
INSERT INTO `area` VALUES ('710', '530000', '530500', '保山市');
INSERT INTO `area` VALUES ('711', '530000', '530600', '昭通市');
INSERT INTO `area` VALUES ('712', '530000', '530700', '丽江市');
INSERT INTO `area` VALUES ('713', '530000', '530800', '思茅市');
INSERT INTO `area` VALUES ('714', '530000', '530900', '临沧市');
INSERT INTO `area` VALUES ('715', '530000', '532300', '楚雄彝族自治州');
INSERT INTO `area` VALUES ('716', '530000', '532500', '红河哈尼族彝族自治州');
INSERT INTO `area` VALUES ('717', '530000', '532600', '文山壮族苗族自治州');
INSERT INTO `area` VALUES ('718', '530000', '532800', '西双版纳傣族自治州');
INSERT INTO `area` VALUES ('719', '530000', '532900', '大理白族自治州');
INSERT INTO `area` VALUES ('720', '530000', '533100', '德宏傣族景颇族自治州');
INSERT INTO `area` VALUES ('721', '530000', '533300', '怒江傈僳族自治州');
INSERT INTO `area` VALUES ('722', '530000', '533400', '迪庆藏族自治州');
INSERT INTO `area` VALUES ('723', '540000', '540100', '拉萨市');
INSERT INTO `area` VALUES ('724', '540000', '542100', '昌都地区');
INSERT INTO `area` VALUES ('725', '540000', '542200', '山南地区');
INSERT INTO `area` VALUES ('726', '540000', '542300', '日喀则地区');
INSERT INTO `area` VALUES ('727', '540000', '542400', '那曲地区');
INSERT INTO `area` VALUES ('728', '540000', '542500', '阿里地区');
INSERT INTO `area` VALUES ('729', '540000', '542600', '林芝地区');
INSERT INTO `area` VALUES ('730', '610000', '610100', '西安市');
INSERT INTO `area` VALUES ('731', '610000', '610200', '铜川市');
INSERT INTO `area` VALUES ('732', '610000', '610300', '宝鸡市');
INSERT INTO `area` VALUES ('733', '610000', '610400', '咸阳市');
INSERT INTO `area` VALUES ('734', '610000', '610500', '渭南市');
INSERT INTO `area` VALUES ('735', '610000', '610600', '延安市');
INSERT INTO `area` VALUES ('736', '610000', '610700', '汉中市');
INSERT INTO `area` VALUES ('737', '610000', '610800', '榆林市');
INSERT INTO `area` VALUES ('738', '610000', '610900', '安康市');
INSERT INTO `area` VALUES ('739', '610000', '611000', '商洛市');
INSERT INTO `area` VALUES ('740', '620000', '620100', '兰州市');
INSERT INTO `area` VALUES ('741', '620000', '620200', '嘉峪关市');
INSERT INTO `area` VALUES ('742', '620000', '620300', '金昌市');
INSERT INTO `area` VALUES ('743', '620000', '620400', '白银市');
INSERT INTO `area` VALUES ('744', '620000', '620500', '天水市');
INSERT INTO `area` VALUES ('745', '620000', '620600', '武威市');
INSERT INTO `area` VALUES ('746', '620000', '620700', '张掖市');
INSERT INTO `area` VALUES ('747', '620000', '620800', '平凉市');
INSERT INTO `area` VALUES ('748', '620000', '620900', '酒泉市');
INSERT INTO `area` VALUES ('749', '620000', '621000', '庆阳市');
INSERT INTO `area` VALUES ('750', '620000', '621100', '定西市');
INSERT INTO `area` VALUES ('751', '620000', '621200', '陇南市');
INSERT INTO `area` VALUES ('752', '620000', '622900', '临夏回族自治州');
INSERT INTO `area` VALUES ('753', '620000', '623000', '甘南藏族自治州');
INSERT INTO `area` VALUES ('754', '630000', '630100', '西宁市');
INSERT INTO `area` VALUES ('755', '630000', '632100', '海东地区');
INSERT INTO `area` VALUES ('756', '630000', '632200', '海北藏族自治州');
INSERT INTO `area` VALUES ('757', '630000', '632300', '黄南藏族自治州');
INSERT INTO `area` VALUES ('758', '630000', '632500', '海南藏族自治州');
INSERT INTO `area` VALUES ('759', '630000', '632600', '果洛藏族自治州');
INSERT INTO `area` VALUES ('760', '630000', '632700', '玉树藏族自治州');
INSERT INTO `area` VALUES ('761', '630000', '632800', '海西蒙古族藏族自治州');
INSERT INTO `area` VALUES ('762', '640000', '640100', '银川市');
INSERT INTO `area` VALUES ('763', '640000', '640200', '石嘴山市');
INSERT INTO `area` VALUES ('764', '640000', '640300', '吴忠市');
INSERT INTO `area` VALUES ('765', '640000', '640400', '固原市');
INSERT INTO `area` VALUES ('766', '640000', '640500', '中卫市');
INSERT INTO `area` VALUES ('767', '650000', '650100', '乌鲁木齐市');
INSERT INTO `area` VALUES ('768', '650000', '650200', '克拉玛依市');
INSERT INTO `area` VALUES ('769', '650000', '652100', '吐鲁番地区');
INSERT INTO `area` VALUES ('770', '650000', '652200', '哈密地区');
INSERT INTO `area` VALUES ('771', '650000', '652300', '昌吉回族自治州');
INSERT INTO `area` VALUES ('772', '650000', '652700', '博尔塔拉蒙古自治州');
INSERT INTO `area` VALUES ('773', '650000', '652800', '巴音郭楞蒙古自治州');
INSERT INTO `area` VALUES ('774', '650000', '652900', '阿克苏地区');
INSERT INTO `area` VALUES ('775', '650000', '653000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `area` VALUES ('776', '650000', '653100', '喀什地区');
INSERT INTO `area` VALUES ('777', '650000', '653200', '和田地区');
INSERT INTO `area` VALUES ('778', '650000', '654000', '伊犁哈萨克自治州');
INSERT INTO `area` VALUES ('779', '650000', '654200', '塔城地区');
INSERT INTO `area` VALUES ('780', '650000', '654300', '阿勒泰地区');
INSERT INTO `area` VALUES ('781', '650000', '659000', '省直辖行政单位');

-- ----------------------------
-- Table structure for housing_estate
-- ----------------------------
DROP TABLE IF EXISTS `housing_estate`;
CREATE TABLE `housing_estate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `code` varchar(50) DEFAULT NULL COMMENT '小区编码',
  `name` varchar(50) DEFAULT NULL COMMENT '小区名称',
  `quantity` varchar(10) DEFAULT NULL COMMENT '住户数',
  `province_code` varchar(10) DEFAULT NULL COMMENT '省编码',
  `city_code` varchar(10) DEFAULT NULL COMMENT '市编码',
  `address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='小区表';

-- ----------------------------
-- Records of housing_estate
-- ----------------------------
INSERT INTO `housing_estate` VALUES ('1', '21212', '测试', '700', '130000', '130900', '测试地址3');
INSERT INTO `housing_estate` VALUES ('2', '222221', '大声道1', '33331', '150000', '150100', '测试地址1');
INSERT INTO `housing_estate` VALUES ('3', '444444', '测试1', '555', '130000', '130900', '测试地址1');

-- ----------------------------
-- Table structure for owner
-- ----------------------------
DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `name` varchar(50) DEFAULT NULL COMMENT '业主姓名',
  `idCard` varchar(18) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL COMMENT '性别，0男1女',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号',
  `housing_estate_code` varchar(10) DEFAULT NULL COMMENT '小区编码',
  `address` varchar(200) DEFAULT NULL,
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `openid` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='业主表';

-- ----------------------------
-- Records of owner
-- ----------------------------
INSERT INTO `owner` VALUES ('1', '测试', null, 'sex_1', '133333333', '21212', null, '12345', 'assddf12223reswfsd', '2017-08-14 09:58:00');
INSERT INTO `owner` VALUES ('2', '测测从', null, 'sex_0', '8888888', '222221', null, '4321', 'rerrrrrrrrrr', '2017-08-01 10:00:40');
INSERT INTO `owner` VALUES ('10', '卡的接口2222', '152105198310030634', 'sex_1', '13439658509', '21212', '看金晶科技看看就22222', '0', '123', '2017-08-19 21:16:28');
INSERT INTO `owner` VALUES ('14', '课时费的三大', '152105198310030634', 'sex_1', '13439658500', '21212', '15号楼一单元101', '0', '123', '2017-08-19 21:16:30');
INSERT INTO `owner` VALUES ('15', '你肯定', '152105198310030634', 'sex_1', '13333333333', '21212', '河北省-沧州市-测试地址-98号楼2单元306', '0', '123', '2017-08-19 22:01:25');
INSERT INTO `owner` VALUES ('16', '你肯kkkkkkkkk', '152105198310030634', 'sex_1', '13333333333', '21212', '河北省-沧州市-测试地址-98号楼2单元306', '0', '', '2017-08-19 22:02:26');
INSERT INTO `owner` VALUES ('17', '贫困生就', '152105198310030634', 'sex_1', '13333333333', '444444', '河北省-沧州市-详细地址-67号楼8单元888', '0', '', '2017-08-19 22:05:37');
INSERT INTO `owner` VALUES ('18', '的刷卡机离开的家', '152105198310030634', 'sex_1', '17788888888', '21212', '河北省-沧州市-测试地址-sadsadasdasd', '0', 'o0vhRxKq63_gc_nQ4ODYHBxMQeG8', '2017-08-20 22:05:34');
INSERT INTO `owner` VALUES ('19', '就是手机', '152105198310030634', 'sex_1', '13366669999', '444444', '河北省-沧州市-详细地址-康达驾校你辛苦', '0', 'o0vhRxKq63_gc_nQ4ODYHBxMQeG8', '2017-08-20 22:07:09');
INSERT INTO `owner` VALUES ('20', '测试业主', '152105198310038634', 'sex_1', '13466669999', '21212', '河北省-沧州市-测试地址3-玫瑰园xxxx', '0', 'o0vhRxKq63_gc_nQ4ODYHBxMQeG8', '2017-08-30 17:17:04');
INSERT INTO `owner` VALUES ('21', '快快快', '152105198310030634', 'sex_1', '13699998888', '444444', '河北省-沧州市-测试地址1-柯斯达解决的你', '0', '', '2017-08-30 17:18:40');

-- ----------------------------
-- Table structure for reclamation_order
-- ----------------------------
DROP TABLE IF EXISTS `reclamation_order`;
CREATE TABLE `reclamation_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `scrap_code` varchar(50) DEFAULT NULL COMMENT '废品编码',
  `owner_id` varchar(50) DEFAULT NULL COMMENT '业主id',
  `sc_id` varchar(50) DEFAULT NULL COMMENT '废品回收员id',
  `rd_id` varchar(50) DEFAULT NULL COMMENT '废品分捡站id',
  `amount` int(11) DEFAULT NULL COMMENT '回收数量',
  `unit` varchar(20) DEFAULT NULL COMMENT '回收单位',
  `money` int(11) DEFAULT NULL COMMENT '回收金额',
  `sc_status` varchar(5) DEFAULT NULL COMMENT '回收标识（数据字典可查）',
  `rd_status` varchar(5) DEFAULT NULL COMMENT '分捡标识（数据字典可查）',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='废品回收订单表';

-- ----------------------------
-- Records of reclamation_order
-- ----------------------------
INSERT INTO `reclamation_order` VALUES ('1', '999999', '12121', '15', '1', null, '555', 'kg', '777', 'sc_1', 'rd_0', '2017-08-19 23:45:32', '2017-08-19 23:45:32');
INSERT INTO `reclamation_order` VALUES ('2', 'R-2017-08-19-1503157926091', '', '', null, null, null, '', null, '', '', '2017-08-19 23:52:06', null);
INSERT INTO `reclamation_order` VALUES ('3', 'R-2017-08-19-1503158015864', '12121', '20', '1', null, null, 'kg', null, 'del', 'rd_0', '2017-08-30 20:28:43', '2017-08-30 20:28:43');
INSERT INTO `reclamation_order` VALUES ('4', 'R-2017-08-19-1503158101134', '12121', '20', '1', null, '4', 'kg', '240', 'sc_1', 'rd_0', '2017-08-30 20:28:44', '2017-08-30 20:28:44');
INSERT INTO `reclamation_order` VALUES ('5', 'R-2017-08-19-1503158147917', '12121', '20', '1', null, null, 'kg', null, 'sc_0', 'rd_0', '2017-08-30 20:28:50', '2017-08-30 20:28:50');

-- ----------------------------
-- Table structure for scrap
-- ----------------------------
DROP TABLE IF EXISTS `scrap`;
CREATE TABLE `scrap` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `scrap_code` varchar(50) DEFAULT NULL COMMENT '废品编码',
  `scrap_name` varchar(50) DEFAULT NULL COMMENT '废品名称',
  `category` varchar(50) DEFAULT NULL COMMENT '类别，（数据字典可查）',
  `unit` varchar(20) DEFAULT NULL COMMENT '回收单位',
  `price` int(11) DEFAULT NULL COMMENT '价格（元/千克）',
  `score` int(11) DEFAULT NULL COMMENT '积分（分/千克）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='废品表';

-- ----------------------------
-- Records of scrap
-- ----------------------------
INSERT INTO `scrap` VALUES ('1', '12121', '测试', 'scrap_002', 'kg', '60', '10');

-- ----------------------------
-- Table structure for scrap_collector
-- ----------------------------
DROP TABLE IF EXISTS `scrap_collector`;
CREATE TABLE `scrap_collector` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，UUID',
  `name` varchar(50) DEFAULT NULL COMMENT '回收员姓名',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别，0男1女',
  `idCard` varchar(50) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号',
  `housing_estate_code` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `income` bigint(20) DEFAULT NULL COMMENT '收入（元）',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='废品回收员表';

-- ----------------------------
-- Records of scrap_collector
-- ----------------------------
INSERT INTO `scrap_collector` VALUES ('1', '测试', 'sex_0', '152105199009050021', '3333333', '21212', 'o0vhRxKq63_gc_nQ4ODYHBxMQeG8', '7890', '2017-08-14 11:11:00');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0' COMMENT '上级机构',
  `name` varchar(32) NOT NULL COMMENT '部门/11111',
  `code` varchar(128) DEFAULT NULL COMMENT '机构编码',
  `sort` int(11) DEFAULT '0' COMMENT '序号',
  `linkman` varchar(64) DEFAULT NULL COMMENT '联系人',
  `linkman_no` varchar(32) DEFAULT NULL COMMENT '联系人电话',
  `remark` varchar(128) DEFAULT NULL COMMENT '机构描述',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT '0' COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='部门';

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES ('1', '0', '系统承建单位', null, '99', 'system', '15888888888', null, '2016-06-06 06:06:06', '1', '2016-06-06 06:06:06', '1');
INSERT INTO `sys_department` VALUES ('2', '0', '注册用户', null, '97', '无人', '15888888888', null, '2015-04-28 22:39:34', '1', '2015-04-28 22:39:34', '1');
INSERT INTO `sys_department` VALUES ('3', '0', '第三方用户', null, '90', '无人', '15888888888', null, '2015-06-01 12:39:41', '1', '2015-06-01 12:39:41', '1');
INSERT INTO `sys_department` VALUES ('4', '0', 'FLY的狐狸', 'ABC000', '100', null, null, null, '2016-07-31 18:12:30', '1', '2016-07-31 18:12:30', '1');
INSERT INTO `sys_department` VALUES ('5', '4', '开发部', 'ABC001', '101', null, null, null, '2016-07-31 18:15:29', '1', '2016-07-31 18:15:29', '1');
INSERT INTO `sys_department` VALUES ('6', '4', '财务部', 'ABC003', '103', null, null, null, '2016-07-31 18:16:06', '1', '2016-07-31 18:16:06', '1');
INSERT INTO `sys_department` VALUES ('7', '4', '人事部', 'ABC004', '104', null, null, null, '2016-07-31 18:16:30', '1', '2016-07-31 18:16:30', '1');
INSERT INTO `sys_department` VALUES ('8', '5', '测试部', 'ABC0011', '101', null, null, null, '2016-07-31 18:16:52', '1', '2016-07-31 18:16:52', '1');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dict_tabname` varchar(256) DEFAULT NULL COMMENT '名称',
  `dict_colname` varchar(64) DEFAULT NULL COMMENT '类型',
  `dict_option` varchar(256) DEFAULT NULL COMMENT '备注',
  `dict_text` varchar(256) DEFAULT NULL,
  `dict_sort` int(2) DEFAULT NULL,
  `dict_name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='数据字典主表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '日志配置', 'systemLog', '212', '212', '1', '2');
INSERT INTO `sys_dict` VALUES ('2', '目录类型', 'articleType', 'wqq', 'wqw', '2', 'qw');
INSERT INTO `sys_dict` VALUES ('11', '目录类型', 'folderType', null, null, null, null);
INSERT INTO `sys_dict` VALUES ('100', '系统参数', 'systemParam', null, null, null, null);
INSERT INTO `sys_dict` VALUES ('101', '友情链接类型', 'friendlyLinkType', null, null, null, null);
INSERT INTO `sys_dict` VALUES ('102', '栏目类型', 'materialType', null, null, null, null);
INSERT INTO `sys_dict` VALUES ('103', 'scrap', 'category', 'scrap_001', '电子产品', '1', '废品类别');
INSERT INTO `sys_dict` VALUES ('104', 'scrap', 'category', 'scrap_002', '硬纸板', '2', '废品类别');
INSERT INTO `sys_dict` VALUES ('105', 'owner', 'sex', 'sex_0', '男', '1', '性别');
INSERT INTO `sys_dict` VALUES ('106', 'owner', 'sex', 'sex_1', '女', '2', '性别');
INSERT INTO `sys_dict` VALUES ('107', 'reclamation_order', 'sc_status', 'sc_0', '未回收', '1', '回收状态');
INSERT INTO `sys_dict` VALUES ('108', 'reclamation_order', 'sc_status', 'sc_1', '已回收', '2', '回收状态');
INSERT INTO `sys_dict` VALUES ('109', 'reclamation_order', 'rd_status', 'rd_0', '未分捡', '1', '分捡状态');
INSERT INTO `sys_dict` VALUES ('110', 'reclamation_order', 'rd_status', 'rd_1', '已分捡', '2', '分捡状态');
INSERT INTO `sys_dict` VALUES ('111', 'reclamation_order', 'sc_status', 'del', '已删除', '0', '订单状态');

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dict_type` varchar(64) NOT NULL COMMENT '数据字典类型',
  `detail_name` varchar(256) DEFAULT NULL COMMENT '名称',
  `detail_code` varchar(32) DEFAULT NULL COMMENT '代码',
  `detail_sort` varchar(32) DEFAULT NULL COMMENT '排序号',
  `detail_type` varchar(32) DEFAULT NULL COMMENT '类型',
  `detail_state` varchar(32) DEFAULT NULL COMMENT '状态',
  `detail_content` varchar(256) DEFAULT NULL COMMENT '内容',
  `detail_remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES ('1', 'folderType', '目录', '1', '1', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('2', 'folderType', 'a标签', '2', '2', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('3', 'folderType', 'a标签target', '3', '3', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('4', 'folderType', 'html标签', '4', '4', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('11', 'articleType', '正常', '1', '1', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('12', 'articleType', '预览', '2', '2', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('13', 'articleType', '程序', '3', '3', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('21', 'friendlyLinkType', '友情链接', null, '1', null, null, null, null, '2015-05-06 15:18:59', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('22', 'friendlyLinkType', '关于我们', null, '2', null, null, null, null, '2015-05-06 15:19:20', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('51', 'systemLog', 'sys_dict', '数据字典主表', '1', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('52', 'systemLog', 'sys_dict_detail', '数据字典', '2', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('53', 'systemLog', 'sys_menu', '菜单管理', '3', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('54', 'systemLog', 'sys_department', '组织机构', '4', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('55', 'systemLog', 'sys_user', '用户管理', '5', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('56', 'systemLog', 'sys_user_role', '用户角色授权', '6', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('57', 'systemLog', 'sys_role', '角色管理', '7', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('58', 'systemLog', 'sys_role_folder', '角色目录授权', '8', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('59', 'systemLog', 'sys_role_menu', '角色菜单授权', '9', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('60', 'systemLog', 'tb_folder', '目录管理', '10', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('61', 'systemLog', 'tb_article', '文章管理', '11', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('62', 'systemLog', 'tb_articlelike', '喜欢的文章管理', '12', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('63', 'systemLog', 'tb_comment', '评论管理', '13', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('64', 'systemLog', 'tb_tags', '标签管理', '14', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('65', 'systemLog', 'tb_contact', '联系人', '15', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('66', 'systemLog', 'tb_error', '错误管理', '16', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('67', 'systemLog', 'tb_friendlylink', '友情链接', '17', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('68', 'systemLog', 'tb_pageview', '访问量统计', '18', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('101', 'systemParam', '门头沟信息网', '1', '1', null, null, null, null, '2015-01-30 00:00:00', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('102', 'materialType', '文章', '1', '1', null, null, null, null, '2016-03-31 22:35:05', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('103', 'materialType', '图片', '2', '2', null, null, null, null, '2016-03-31 22:35:17', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('104', 'materialType', '视频', '3', '3', null, null, null, null, '2016-03-31 22:35:28', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('105', 'materialType', '其他', '9', '9', null, null, null, null, '2016-03-31 22:35:39', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('106', 'materialType', '栏目', '6', '6', null, null, null, null, '2016-03-31 23:46:27', '1', null, null);
INSERT INTO `sys_dict_detail` VALUES ('107', 'systemLog', 'tb_site', '站点管理', '19', null, null, null, null, '2016-04-14 00:02:45', '1', null, null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `icon` varchar(20) DEFAULT NULL COMMENT '图标',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '名称/11111',
  `urlkey` varchar(256) DEFAULT NULL COMMENT '菜单key',
  `url` varchar(256) DEFAULT NULL COMMENT '链接地址',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `type` int(11) DEFAULT '1' COMMENT '类型//select/1,根目录,2,a标签,3,a标签_blank,4,外部url',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `level` int(11) DEFAULT '1' COMMENT '级别',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('13', '0', '&#xe616;', '权限管理模块', 'authc', '', '1', '1', '1', '1', '2017-08-16 11:17:06', '1', '2017-08-16 11:17:06', null);
INSERT INTO `sys_menu` VALUES ('14', '13', '&#xe613;', '菜单管理', 'system-menu-list', 'system-menu-list.jsp', '1', '4', '2', '1', '2017-08-16 11:19:45', '1', '2017-08-16 11:19:45', null);
INSERT INTO `sys_menu` VALUES ('15', '13', '&#xe60d;', '角色管理', 'system-role-list', 'system-role-list.jsp', '1', '4', '3', '1', '2017-08-16 11:20:45', '1', '2017-08-16 11:20:45', null);
INSERT INTO `sys_menu` VALUES ('16', '13', '&#xe62d;', '用户管理', 'system-admin-list', 'system-admin-list.jsp', '1', '4', '4', '1', '2017-08-16 11:21:16', '1', '2017-08-16 11:21:16', null);
INSERT INTO `sys_menu` VALUES ('17', '0', '&#xe613;', '废品管理模块', 'scope', '', '1', '1', '5', '1', '2017-08-16 11:22:28', '1', '2017-08-16 11:22:28', null);
INSERT INTO `sys_menu` VALUES ('18', '17', '&#xe616;', '废品管理', 'scrap-list', 'scrap-list.jsp', '1', '4', '6', '1', '2017-08-16 11:23:19', '1', '2017-08-16 11:23:19', null);
INSERT INTO `sys_menu` VALUES ('19', '0', '&#xe60d;', '废品回收员管理模块', 'scrap-collector', '', '1', '1', '7', '1', '2017-08-16 11:24:09', '1', '2017-08-16 11:24:09', null);
INSERT INTO `sys_menu` VALUES ('20', '19', '&#xe620;', '废品回收员管理', 'scrap-collector-list', 'scrap-collector-list.jsp', '1', '4', '8', '1', '2017-08-16 11:25:44', '1', '2017-08-16 11:25:44', null);
INSERT INTO `sys_menu` VALUES ('21', '0', '&#xe616;', '业主管理模块', 'owner', '', '1', '1', '9', '1', '2017-08-16 11:50:24', '1', '2017-08-16 11:50:24', null);
INSERT INTO `sys_menu` VALUES ('22', '21', '&#xe616;', '业主管理', 'owner-list', 'owner-list.jsp', '1', '4', '10', '1', '2017-08-16 11:51:04', '1', '2017-08-16 11:51:04', null);
INSERT INTO `sys_menu` VALUES ('23', '0', '&#xe616;', '小区管理模块', 'housing-estate', '', '1', '1', '11', '1', '2017-08-16 11:51:30', '1', '2017-08-16 11:51:30', null);
INSERT INTO `sys_menu` VALUES ('24', '23', '&#xe616;', '小区管理', 'housing-estate-list', 'housing-estate-list.jsp', '1', '4', '12', '1', '2017-08-16 11:52:02', '1', '2017-08-16 11:52:02', null);
INSERT INTO `sys_menu` VALUES ('25', '0', '&#xe62e;', '系统管理模块', 'system', '', '1', '1', '13', '1', '2017-08-16 11:52:45', '1', '2017-08-16 11:52:45', null);
INSERT INTO `sys_menu` VALUES ('26', '25', '&#xe634;', '数据字典', 'system-dict-list', 'system-dict-list.jsp', '1', '4', '14', '1', '2017-08-16 11:53:20', '1', '2017-08-16 11:53:20', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '名称/11111/',
  `status` int(11) DEFAULT '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `remark` text COMMENT '说明//textarea',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '1', '0', null, '2016-10-28 21:05:17', '1', '2016-10-28 21:05:17', null);
INSERT INTO `sys_role` VALUES ('2', '测试zzz', '1', '1', null, '2017-08-12 19:33:40', '1', '2017-08-12 19:33:40', null);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roleid` int(11) NOT NULL COMMENT '角色id',
  `menuid` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('10', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('11', '2', '14');
INSERT INTO `sys_role_menu` VALUES ('12', '2', '15');
INSERT INTO `sys_role_menu` VALUES ('13', '2', '16');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `realname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `role_id` int(11) DEFAULT '0' COMMENT '角色ID',
  `usertype` int(11) DEFAULT '2' COMMENT '类型//select/1,管理员,2,普通用户,3,前台用户,4,第三方用户',
  `state` int(11) DEFAULT '10' COMMENT '状态',
  `third_id` varchar(200) DEFAULT NULL COMMENT '第三方ID',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `email` varchar(64) DEFAULT NULL COMMENT 'email',
  `tel` varchar(32) DEFAULT NULL COMMENT '手机号',
  `address` varchar(32) DEFAULT NULL COMMENT '地址',
  `title_url` varchar(200) DEFAULT NULL COMMENT '头像地址',
  `remark` varchar(1000) DEFAULT NULL COMMENT '说明',
  `theme` varchar(64) DEFAULT 'default' COMMENT '主题',
  `back_site_id` int(11) DEFAULT '0' COMMENT '后台选择站点ID',
  `create_site_id` int(11) DEFAULT '1' COMMENT '创建站点ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) DEFAULT '0' COMMENT '创建者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_id` int(11) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1532 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '202CB962AC59075B964B07152D234B70', '0', '系统管理员', '1', '1', '1', null, '2017-08-12 21:07:19', null, null, null, null, null, 'default', '0', '1', null, '0', null, null);
INSERT INTO `sys_user` VALUES ('7', 'aaa', 'aaaaaa', '0', 'AAA', '1', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'sasa', 'default', '0', '1', '2017-08-12 23:34:11', '1', '2017-08-12 23:34:11', null);
INSERT INTO `sys_user` VALUES ('8', 'sss', 'ssssss', '0', 'SSS', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'ssas', 'default', '0', '1', '2017-08-12 23:35:59', '1', '2017-08-12 23:35:59', null);
INSERT INTO `sys_user` VALUES ('9', 'zzz', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('10', 'zzz1', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('11', 'zzz2', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('13', 'zzz3', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('14', 'zzz4', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('16', 'zzz6', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('17', 'zzz7', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('18', 'zzz8', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('19', 'zzz9', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('111', 'zzz111', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('112', 'zzz121', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('113', 'zzz135', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('115', 'zzz55', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('1145', 'zzz145', '453E41D218E071CCFB2D1C99CE23906A', '0', 'ZZZZ', '2', '2', '1', null, null, '12121@qq', '111111111111111', null, null, 'zzzz', 'default', '0', '1', '2017-08-12 23:39:18', '1', '2017-08-13 00:41:42', null);
INSERT INTO `sys_user` VALUES ('1528', 'sasasa', '698d51a19d8a121ce581499d7b701668', '1', null, '11', '2', '10', null, null, '11@11.com', '1111', null, null, null, 'default', '0', '1', '2018-01-31 15:54:48', '0', '2018-01-31 15:54:48', null);
INSERT INTO `sys_user` VALUES ('1529', 'ss12233', '310dcbbf4cce62f762a2aaa148d556bd', '1', null, '3333', '2', '10', null, null, '11@333com', '111133', null, null, '3333', 'default', '0', '1', '2018-01-31 16:32:08', '0', '2018-01-31 16:32:08', null);

-- ----------------------------
-- Table structure for tb_heartbeat
-- ----------------------------
DROP TABLE IF EXISTS `tb_heartbeat`;
CREATE TABLE `tb_heartbeat` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_heartbeat
-- ----------------------------
