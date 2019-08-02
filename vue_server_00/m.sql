SET NAMES UTF8;
DROP DATABASE IF EXISTS m;
CREATE DATABASE m CHARSET=UTF8;
USE m;

/*用户信息*/
CREATE TABLE m_user(
   uid INT PRIMARY KEY AUTO_INCREMENT,
   uname VARCHAR(32),
   upwd VARCHAR(32),
   email VARCHAR(64),
   phone VARCHAR(16),

   avatar VARCHAR(128),        #头像图片路径
   user_name VARCHAR(32),      #用户名，如王小明
   gender INT                  #性别  0-女  1-男
);

INSERT INTO m_user VALUES(null,'tom',md5('123'),'ding@qq.com', '13501234567', '01.png', '丁伟', '1');
INSERT INTO m_user VALUES(NULL, 'dingding',md5('123'), 'ding@qq.com', '13501234567', '01.png', '丁伟', '1');
INSERT INTO m_user VALUES(NULL, 'pengpeng',md5('123'), 'peng@qq.com', '13345688888', '01.png', '大鹏', '0');


/*商品列表*/
CREATE TABLE m_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(25),            #图片路径
  title VARCHAR(128),         #主标题
  price DECIMAL(10,2)        #价格
);
INSERT INTO m_product VALUES(NULL,'01.jpg','依依衣舍韩版2017春装新款女装宽松显瘦直筒裤破洞牛仔裤 ',199.00);
INSERT INTO m_product VALUES(NULL,'02.jpg','依依衣舍韩版2017春装新款女装宽松显瘦直筒裤破洞牛仔裤 ',199.00);
INSERT INTO m_product VALUES(NULL,'03.jpg','依依衣舍韩版2017春装新款女装宽松显瘦直筒裤破洞牛仔裤 ',199.00);
INSERT INTO m_product VALUES(NULL,'04.jpg','依依衣舍韩版2017春装新款女装宽松显瘦直筒裤破洞牛仔裤 ',199.00);
INSERT INTO m_product VALUES(NULL,'05.jpg','依依衣舍韩版2017春装新款女装宽松显瘦直筒裤破洞牛仔裤 ',199.00);
INSERT INTO m_product VALUES(NULL,'01.jpg','依依衣舍韩版2017春装新款女装宽松显瘦直筒裤破洞牛仔裤 ',199.00);
INSERT INTO m_product VALUES(NULL,'01.jpg','依依衣舍韩版2017春装新款女装宽松显瘦直筒裤破洞牛仔裤 ',199.00);
INSERT INTO m_product VALUES(NULL,'01.jpg','依依衣舍韩版2017春装新款女装宽松显瘦直筒裤破洞牛仔裤 ',199.00);
INSERT INTO m_product VALUES(NULL,'01.jpg','依依衣舍韩版2017春装新款女装宽松显瘦直筒裤破洞牛仔裤 ',199.00);

/*购物车*/
CREATE TABLE m_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(25),
  price   DECIMAL(10,2),
  title   VARCHAR(255),
  count   INT, 
  uid     INT
);
INSERT INTO m_cart VALUES(null,'21.jpg',199,'依依衣舍韩版2017春装新款女装',1,1);
INSERT INTO m_cart VALUES(null,'22.jpg',289,'韩版2018新款女装',1,1);
INSERT INTO m_cart VALUES(null,'23.jpg',499,'依依衣舍韩版2019秋装',1,1);