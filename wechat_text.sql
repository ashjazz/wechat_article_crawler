CREATE TABLE `wechat_text` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `spider_get_time` varchar(25) DEFAULT NULL COMMENT '爬取时间',
  `spider_get_url` text COMMENT '爬取连接',
  `article_title` text COMMENT '文章标题',
  `article_author` varchar(20) DEFAULT NULL COMMENT '文章作者',
  `weixin_name` varchar(20) NOT NULL DEFAULT '' COMMENT '微信号',
  `weixin_nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '微信公众号名称',
  `article_publish_time` varchar(25) DEFAULT NULL COMMENT '发布时间',
  `article_brief` text COMMENT '文章概述',
  `article_content` longtext COMMENT '文章内容',
  `is_original` varchar(2) NOT NULL DEFAULT '是' COMMENT '是否原创',
  `weixin_avatar` text COMMENT '公众号头像',
  `weixin_introduce` text COMMENT '公众号简介',
  `article_images` text COMMENT '文章内容图片',
  `weixin_tmp_url` text COMMENT '临时url',
  `biz` varchar(20) NOT NULL DEFAULT '' COMMENT '公众号biz',
  `text_idx` tinyint(2) NOT NULL DEFAULT '1' COMMENT '文章顺序',
  `keyword` varchar(20) DEFAULT '' COMMENT '关键字',
  `is_processed` tinyint(2) DEFAULT '0' COMMENT '是否处理 0：否 1：是',
  `is_sub` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否替换链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `wechat_img_upload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `article_id` int(10) NOT NULL COMMENT '文章id',
  `weixin_name` varchar(20) NOT NULL COMMENT '微信公众号id',
  `img_id` int(10) NOT NULL COMMENT '图片标签id',
  `is_upload` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否上传 0：否 1：是',
  `img_url` text NOT NULL COMMENT '阿里云图片临时url',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  KEY `img_id` (`img_id`) USING BTREE,
  KEY `img_find` (`article_id`,`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `wechat_text_sub` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `spider_get_time` varchar(25) DEFAULT NULL COMMENT '爬取时间',
  `spider_get_url` text COMMENT '爬取连接',
  `article_title` text COMMENT '文章标题',
  `article_author` varchar(20) DEFAULT NULL COMMENT '文章作者',
  `weixin_name` varchar(20) NOT NULL DEFAULT '' COMMENT '微信号',
  `weixin_nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '微信公众号名称',
  `article_publish_time` varchar(25) DEFAULT NULL COMMENT '发布时间',
  `article_brief` text COMMENT '文章概述',
  `article_content` longtext COMMENT '文章内容（可发布）',
  `is_original` varchar(2) NOT NULL DEFAULT '是' COMMENT '是否原创',
  `weixin_avatar` text COMMENT '公众号头像',
  `weixin_introduce` text COMMENT '公众号简介',
  `article_images` text COMMENT '文章内容图片',
  `weixin_tmp_url` text COMMENT '临时url',
  `biz` varchar(20) NOT NULL DEFAULT '' COMMENT '公众号biz',
  `text_idx` tinyint(2) NOT NULL DEFAULT '1' COMMENT '文章顺序',
  `keyword` varchar(20) DEFAULT '' COMMENT '关键字',
  `is_processed` tinyint(2) DEFAULT '0' COMMENT '是否处理 0：否 1：是',
  `is_sub` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否替换链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

