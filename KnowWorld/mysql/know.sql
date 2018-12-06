#创建数据库
SET NAMES UTF8;
DROP DATABASE  IF EXISTS know;
CREATE DATABASE know CHARSET=UTF8;
USE know;

#网站基本信息
CREATE TABLE know_site_info(
	site_name VARCHAR(16),
	logo VARCHAR(64),
	copyright VARCHAR(64)
);
INSERT INTO know_site_info VALUES('Know World','img/logo.png','2018 All Rights Reserved 看世界文化传媒有限公司 版权所有');

#导航条目
CREATE TABLE know_navbar_item(
	name VARCHAR(16),
	url VARCHAR(64),
	title VARCHAR(32)
);
INSERT INTO know_navbar_item VALUES
('首页','/index.html','网站首页'),
('时政','/index.html','各国最新政策'),
('体育','/index.html','体育相关新闻'),
('旅游','/index.html','世界各地旅游信息'),
('教育','/index.html','教育信息');

#轮播图
CREATE TABLE know_carousel_item(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	pic VARCHAR(128),
	url VARCHAR(128),
	title VARCHAR(32)
);
INSERT INTO know_carousel_item VALUES
(NULL,'img/pic_1,jpg','/m1.html','新闻1'),
(NULL,'img/pic_2,jpg','/m2.html','新闻2'),
(NULL,'img/pic_3,jpg','/m3.html','新闻3'),
(NULL,'img/pic_4,jpg','/m4.html','新闻4');

#实时热点
CREATE TABLE know_pop(
	pop_id INT NOT NULL,
	pop_img VARCHAR(128),
	pop_title VARCHAR(16),
	pop_content VARCHAR(2048)
);
INSERT INTO know_pop VALUES
('1','/img/pop/pop_1.jpg','新闻1','内容1...'),
('2','/img/pop/pop_2.jpg','新闻2','内容2...'),
('3','/img/pop/pop_3.jpg','新闻3','内容3...'),
('4','/img/pop/pop_4.jpg','新闻4','内容4...'),
('5','/img/pop/pop_5.jpg','新闻5','内容5...'),
('6','/img/pop/pop_6.jpg','新闻6','内容6...'),
('6','/img/pop/pop_7.jpg','新闻7','内容7...'),
('6','/img/pop/pop_8.jpg','新闻8','内容8...'),
('6','/img/pop/pop_9.jpg','新闻9','内容9...');

#创建用户表
CREATE TABLE know_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(16),
	upwd  VARCHAR(16),
	phone VARCHAR(16),
	email VARCHAR(32),
	age TINYINT,
	gender TINYINT,        #女-0 男-1
	avatar VARCHAR(128),
	isOnline BOOL
);
INSERT INTO know_user VALUES
(NULL,'aaa','123456','13812345678','aaa@163.com','18','0','/img/avatar/aaa.jpg','0');

