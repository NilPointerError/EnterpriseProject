CREATE TABLE `t_otp` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `token_SN` varchar(255) NOT NULL COMMENT '令牌id',
  `token_status` int DEFAULT NULL COMMENT '令牌状态 -2 注销 -1 禁用 0-锁定 1-启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),  UNIQUE KEY (`token_SN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='电子密码器表';  

CREATE TABLE `t_otp_admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` varchar(255) DEFAULT NULL COMMENT '管理员userid',
   `token_SN` varchar(255) DEFAULT NULL COMMENT '令牌id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员与电子密码器表';
 