DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '权限名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT '权限表';

INSERT INTO `permission` VALUES (1, 'add');
INSERT INTO `permission` VALUES (2, 'delete');
INSERT INTO `permission` VALUES (3, 'query');
INSERT INTO `permission` VALUES (4, 'update');

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `rid` bigint(20) NOT NULL COMMENT '角色id',
  `pid` bigint(20) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT '权限角色关系表';

INSERT INTO `permission_role` VALUES (1,1,1);
INSERT INTO `permission_role` VALUES (2,1,2);
INSERT INTO `permission_role` VALUES (3,1,3);
INSERT INTO `permission_role` VALUES (4,1,4);
INSERT INTO `permission_role` VALUES (5,2,1);
INSERT INTO `permission_role` VALUES (6,2,3);

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8  COMMENT '角色表';

INSERT INTO `role` VALUES (1, 'admin');
INSERT INTO `role` VALUES (2, 'customer');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT '用户表';

INSERT INTO `user` VALUES (1, 'hlhdidi', '123');
INSERT INTO `user` VALUES (2, 'xyycici', '1992');

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` bigint(20) NOT NULL COMMENT '用户id',
  `rid` bigint(20) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT '用户角色关系表';

INSERT INTO `user_role` VALUES (1,1, 1);
INSERT INTO `user_role` VALUES (2,2, 2);