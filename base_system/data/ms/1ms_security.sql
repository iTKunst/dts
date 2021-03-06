USE sgvc;

ALTER TABLE `user`
	CHANGE COLUMN `user_id` `user_id` BIGINT(20) NOT NULL AUTO_INCREMENT FIRST,
	ADD COLUMN `role` ENUM('USER','ADMIN') NOT NULL DEFAULT 'USER' AFTER `status_id`,
	ADD PRIMARY KEY (`user_id`);
		

-- Admin user (password == demo)	
INSERT INTO `user` (`user_role_id`, `user_name`, `first_name`, `last_name`, `password`, `organisation`, `email`, `status_id`, `role`) VALUES (1, 'admin', 'Admin', 'Admin', '$2a$10$ebyC4Z5WtCXXc.HGDc1Yoe6CLFzcntFmfse6/pTj7CeDY5I05w16C', 'XST', 'demo@localhost', 2, 'ADMIN');


ALTER TABLE `user`
	CHANGE COLUMN `user_role_id` `user_role_id` BIGINT(20) NULL DEFAULT NULL AFTER `user_id`,
	CHANGE COLUMN `user_name` `user_name` VARCHAR(75) NULL DEFAULT NULL COLLATE 'utf8_general_ci' AFTER `user_role_id`,
	CHANGE COLUMN `first_name` `first_name` VARCHAR(75) NULL DEFAULT NULL COLLATE 'utf8_general_ci' AFTER `user_name`,
	CHANGE COLUMN `last_name` `last_name` VARCHAR(75) NULL DEFAULT NULL COLLATE 'utf8_general_ci' AFTER `first_name`,
	CHANGE COLUMN `organisation` `organisation` VARCHAR(75) NULL DEFAULT NULL COLLATE 'utf8_general_ci' AFTER `password`,
	CHANGE COLUMN `status_id` `status_id` BIGINT(20) NULL DEFAULT NULL AFTER `email`,
	ADD UNIQUE INDEX `email` (`email`);
