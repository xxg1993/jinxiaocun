

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;


LOCK TABLES `admin` WRITE;

insert  into `admin`(`name`,`password`) values ('1234','1234');

UNLOCK TABLES;


DROP TABLE IF EXISTS `operate`;
CREATE TABLE `operate` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;


LOCK TABLES `operate` WRITE;

insert  into `operate`(`name`,`password`) values ('111','222');
insert  into `operate`(`name`,`password`) values ('222','222');

UNLOCK TABLES;


DROP TABLE IF EXISTS `servicer`;
CREATE TABLE `servicer` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;


LOCK TABLES `servicer` WRITE;

insert  into `servicer`(`name`,`password`) values ('111','111');
insert  into `servicer`(`name`,`password`) values ('222','222');

UNLOCK TABLES;



DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit` (
`flag`  varchar(255) NOT NULL,
`server` varchar(255) NOT NULL,
`id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `jzphone` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;


LOCK TABLES `visit` WRITE;

insert  into `visit`(`flag`,`server`,`id`,`name`,`sex`,`year`,`month`,`day`,`phone`,`jzphone`,`company`,`adress`) values ('n','111','1','111','111','110','q@163.com','ÄÐ','111','111','111','111');
insert  into `visit`(`flag`,`server`,`id`,`name`,`sex`,`year`,`month`,`day`,`phone`,`jzphone`,`company`,`adress`) values ('y','111','2','222','111','110','q@163.com','ÄÐ','111','111','111','111');

UNLOCK TABLES;






DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
   `month` varchar(255) NOT NULL,
   `day` varchar(255) NOT NULL, 
    `hour` varchar(255) NOT NULL, 
   `minute` varchar(255) NOT NULL, 
   `work` varchar(255) NOT NULL, 
  `phone` varchar(255) NOT NULL,
  `times` varchar(255) NOT NULL
  

) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

LOCK TABLES `orders` WRITE;

insert  into `orders`(`id`,`name`,`year`,`month`,`day`,`hour`,`minute`,`work`,`phone`,`times`) values ('1','111','2015','03','21','08','30','¸´²é','1234567','201503210830');

UNLOCK TABLES;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `jzphone` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `flag`  varchar(255) NOT NULL,
`server` varchar(255) NOT NULL,
`time` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

LOCK TABLES `users` WRITE;

insert  into `users`(`id`,`name`,`sex`,`year`,`month`,`day`,`phone`,`jzphone`,`company`,`adress`,`flag`,`server`,`time`) values ('1','111','111','110','q@163.com','ÄÐ','111','111','111','111','y','111','2015-04-18 21:16:15');
insert  into `users`(`id`,`name`,`sex`,`year`,`month`,`day`,`phone`,`jzphone`,`company`,`adress`,`flag`,`server`,`time`) values ('2','222','111','110','q@163.com','ÄÐ','111','111','111','111','n','111','2015-04-18 21:16:16');

UNLOCK TABLES;



DROP TABLE IF EXISTS `usersafterinf`;
CREATE TABLE `usersafterinf` (
`id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstIll1` varchar(255) NOT NULL,
  `firstIll2` varchar(255) NOT NULL,
  `firstIll3` varchar(255) NOT NULL,
  `firstIll4` varchar(255) NOT NULL,
  `familyHistory1` varchar(255) NOT NULL,
  `familyHistory2` varchar(255) NOT NULL,
  `familyHistory3` varchar(255) NOT NULL,
  `familyHistory4` varchar(255) NOT NULL,
  `posture` varchar(255) NOT NULL,
  `leftdiopter` varchar(255) NOT NULL,
  `rightdiopter` varchar(255) NOT NULL,
  `leftaxis` varchar(255) NOT NULL,
  `rightaxis` varchar(255) NOT NULL,
  `leftpd` varchar(255) NOT NULL,
  `rightpd` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

LOCK TABLES `usersafterinf` WRITE;

insert  into `usersafterinf`(`id`,`name`,`firstill1`,`firstIll2`,`firstIll3`,`firstIll4`,`familyhistory1`,`familyhistory2`,`familyhistory3`,`familyhistory4`,`posture`,`leftdiopter`,`rightdiopter`,`leftaxis`,`rightaxis`,`leftpd`,`rightpd`,`time`) values ('1','111','111','110','q@163.com','ÄÐ','111','111','111','1','111','111','110','q@163.com','ÄÐ','111','111','2015-04-18 21:16:15');

UNLOCK TABLES;



DROP TABLE IF EXISTS `peijingxinxi`;
CREATE TABLE `peijingxinxi` (
`id` varchar(255) NOT NULL,
`name` varchar(255) NOT NULL,
`vrnake` varchar(255) NOT NULL,
`vrsphere` varchar(255) NOT NULL,
`vrcylinder` varchar(255) NOT NULL,
`vraxis` varchar(255) NOT NULL,
`vrprism` varchar(255) NOT NULL,
`vlnake` varchar(255) NOT NULL,
`vlsphere` varchar(255) NOT NULL,
`vlcylinder` varchar(255) NOT NULL,
`vlaxis` varchar(255) NOT NULL,
`vlprism` varchar(255) NOT NULL,
`rrnake` varchar(255) NOT NULL,
`rrsphere` varchar(255) NOT NULL,
`rrcylinder` varchar(255) NOT NULL,
`rraxis` varchar(255) NOT NULL,
`rrprism` varchar(255) NOT NULL,
`rlnake` varchar(255) NOT NULL,
`rlsphere` varchar(255) NOT NULL,
`rlcylinder` varchar(255) NOT NULL,
`rlaxis` varchar(255) NOT NULL,
`rlprism` varchar(255) NOT NULL,
`vrbottom` varchar(255) NOT NULL,
`vrprism2` varchar(255) NOT NULL,
`vrbottom2` varchar(255) NOT NULL,
`vrfixed` varchar(255) NOT NULL,
`vrcomment` varchar(255) NOT NULL,
`vlbottom` varchar(255) NOT NULL,
`vlprism2` varchar(255) NOT NULL,
`vlbottom2` varchar(255) NOT NULL,
`vlfixed` varchar(255) NOT NULL,
`vlcomment` varchar(255) NOT NULL,
`rrbottom` varchar(255) NOT NULL,
`rrprism2` varchar(255) NOT NULL,
`rrbottom2` varchar(255) NOT NULL,
`rrfixed` varchar(255) NOT NULL,
`rrcomment` varchar(255) NOT NULL,
`rlbottom` varchar(255) NOT NULL,
`rlprism2` varchar(255) NOT NULL,
`rlbottom2` varchar(255) NOT NULL,
`rlfixed` varchar(255) NOT NULL,
`rlcomment` varchar(255) NOT NULL,
`glass` varchar(255) NOT NULL,
`glassnum` varchar(255) NOT NULL,
`glassprice` varchar(255) NOT NULL,
`mounting` varchar(255) NOT NULL,
`mountingnum` varchar(255) NOT NULL,
`mountingprice` varchar(255) NOT NULL,
`allmountingprice` varchar(255) NOT NULL,
`optometrist` varchar(255) NOT NULL,
`decisionmaker` varchar(255) NOT NULL,
`trier` varchar(255) NOT NULL,
`receiver` varchar(255) NOT NULL,
`time` varchar(255) NOT NULL,

  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

LOCK TABLES `peijingxinxi` WRITE;

insert  into `peijingxinxi`(`id`,`name`,`vrnake`,`vrsphere`,`vrcylinder`,`vraxis`,`vrprism`,`vlnake`,`vlsphere`,`vlcylinder`,`vlaxis`,`vlprism`,`rrnake`,`rrsphere`,`rrcylinder`,`rraxis`,`rrprism`,`rlnake`,`rlsphere`,`rlcylinder`,`rlaxis`,`rlprism`,`vrbottom`,`vrprism2`,`vrbottom2`,`vrfixed`,`vrcomment`,`vlbottom`,`vlprism2`,`vlbottom2`,`vlfixed`,`vlcomment`,`rrbottom`,`rrprism2`,`rrbottom2`,`rrfixed`,`rrcomment`,`rlbottom`,`rlprism2`,`rlbottom2`,`rlfixed`,`rlcomment`,`glass`,`glassnum`,`glassprice`,`mounting`,`mountingnum`,`mountingprice`,`allmountingprice`,`optometrist`,`decisionmaker`,`trier`,`receiver`,`time`) values ('1', '111', '1', '1', '1', '1', '1','1', '1', '1', '1', '1', '1', '1', '1', '1','1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1','1', '1', '1', '1', '1', '1', '1', '1','1', '1', '1', '1', '1', '1', '1', '1','1', '1', '1', '1', '1','2015-04-18 21:16:16');

UNLOCK TABLES;



DROP TABLE IF EXISTS `interview`;
CREATE TABLE `interview` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) default NULL,
  `time` varchar(255) NOT NULL,
  `feel` varchar(255) default NULL,
   `supervise` varchar(255) NOT NULL,
  `advise` varchar(255) default NULL,
  `nowtime` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;


LOCK TABLES `interview` WRITE;

insert  into `interview`(`id`,`name`,`time`,`feel`,`supervise`,`advise`,`nowtime`) values ('1','111','5','haha','aaaa','qqqq','2015-04-18 21:16:15');

UNLOCK TABLES;
