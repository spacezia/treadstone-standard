-- CreateTable
CREATE TABLE `organizations_organization` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `activated` BOOLEAN NULL DEFAULT true,
    `description` VARCHAR(191) NULL,
    `logo` VARCHAR(191) NULL,
    `managerId` INTEGER NULL,
    `creatorId` INTEGER NULL,
    `name` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `orgid` VARCHAR(191) NULL,
    `website` VARCHAR(191) NULL,
    `uuid` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `organizations_department` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `parentId` INTEGER NULL,
    `isRoot` BOOLEAN NULL DEFAULT false,
    `isLeaf` BOOLEAN NULL DEFAULT false,
    `isFolder` BOOLEAN NULL DEFAULT false,
    `order` INTEGER NULL DEFAULT 0,
    `depath` INTEGER NULL DEFAULT 0,
    `npath` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `remark` VARCHAR(191) NULL,
    `organizationId` INTEGER NULL,
    `name` VARCHAR(191) NULL,
    `organizationName` VARCHAR(191) NULL,
    `departmentId` INTEGER NULL,

    UNIQUE INDEX `organizations_department_departmentId_key`(`departmentId`),
    INDEX `organizations_department_organizationId_idx`(`organizationId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `organizations_member` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `activated` BOOLEAN NULL DEFAULT true,
    `departmentName` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `gender` INTEGER NULL DEFAULT 0,
    `nickname` VARCHAR(191) NULL,
    `phone` VARCHAR(191) NULL,
    `position` VARCHAR(191) NULL,
    `userId` INTEGER NULL,
    `username` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `avatar` VARCHAR(191) NULL,
    `organizationId` INTEGER NULL,
    `departmentId` INTEGER NULL,
    `organizationName` VARCHAR(191) NULL,
    `serial` VARCHAR(191) NULL,
    `uuid` VARCHAR(191) NULL,
    `superuser` BOOLEAN NULL DEFAULT false,
    `developer` BOOLEAN NULL DEFAULT false,
    `dingtalkUserId` VARCHAR(191) NULL,
    `weworkUserId` VARCHAR(191) NULL,
    `password` VARCHAR(191) NULL,
    `secret` VARCHAR(191) NULL,

    UNIQUE INDEX `organizations_member_userId_key`(`userId`),
    UNIQUE INDEX `organizations_member_serial_key`(`serial`),
    UNIQUE INDEX `organizations_member_dingtalkUserId_key`(`dingtalkUserId`),
    UNIQUE INDEX `organizations_member_weworkUserId_key`(`weworkUserId`),
    INDEX `organizations_member_organizationId_idx`(`organizationId`),
    INDEX `organizations_member_userId_idx`(`userId`),
    INDEX `organizations_member_departmentId_idx`(`departmentId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `organizations_resource` (
    `alias` VARCHAR(191) NULL,
    `available` BOOLEAN NULL DEFAULT true,
    `display` BOOLEAN NULL DEFAULT true,
    `icon` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `scene` ENUM('APPLICATION', 'MENU', 'API', 'ELEMENT') NULL DEFAULT 'ELEMENT',
    `scope` ENUM('ALL', 'ROLES', 'MEMBERS', 'CREATOR') NULL DEFAULT 'ROLES',
    `operation` ENUM('READ', 'CREATE', 'UPDATE', 'DELETE') NULL DEFAULT 'READ',
    `appId` VARCHAR(191) NULL,
    `applicationId` INTEGER NULL,
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `parentId` INTEGER NULL,
    `isRoot` BOOLEAN NULL DEFAULT false,
    `isFolder` BOOLEAN NULL DEFAULT false,
    `isLeaf` BOOLEAN NULL DEFAULT false,
    `order` INTEGER NULL DEFAULT 0,
    `depath` INTEGER NULL DEFAULT 0,
    `bizId` VARCHAR(191) NULL,
    `npath` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `url` VARCHAR(191) NULL,
    `members` VARCHAR(191) NULL,

    UNIQUE INDEX `organizations_resource_uuid_key`(`uuid`),
    INDEX `organizations_resource_applicationId_idx`(`applicationId`),
    UNIQUE INDEX `organizations_resource_applicationId_alias_key`(`applicationId`, `alias`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `organizations_role` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `activated` BOOLEAN NULL DEFAULT true,
    `alias` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `organizationId` INTEGER NULL,
    `remark` VARCHAR(191) NULL,
    `organizationName` VARCHAR(191) NULL,

    INDEX `organizations_role_organizationId_idx`(`organizationId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users_user` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `activated` BOOLEAN NULL DEFAULT true,
    `avatar` VARCHAR(191) NULL,
    `birthday` DATETIME(3) NULL,
    `gender` INTEGER NULL DEFAULT 0,
    `name` VARCHAR(191) NULL,
    `nickname` VARCHAR(191) NULL,
    `password` VARCHAR(191) NULL,
    `position` VARCHAR(191) NULL,
    `role` VARCHAR(191) NULL,
    `serial` VARCHAR(191) NULL,
    `superuser` BOOLEAN NULL DEFAULT false,
    `memberId` INTEGER NULL,
    `email` VARCHAR(191) NULL,
    `username` VARCHAR(191) NULL,
    `phone` VARCHAR(191) NULL,
    `dingtalkUserId` VARCHAR(191) NULL,
    `weworkUserId` VARCHAR(191) NULL,

    UNIQUE INDEX `users_user_serial_key`(`serial`),
    UNIQUE INDEX `users_user_email_key`(`email`),
    UNIQUE INDEX `users_user_username_key`(`username`),
    UNIQUE INDEX `users_user_phone_key`(`phone`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `systems_captcha` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `code` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `expired` DATETIME(3) NULL,
    `phone` VARCHAR(191) NULL,
    `recipientName` VARCHAR(191) NULL,
    `recipientId` VARCHAR(191) NULL,
    `scene` VARCHAR(191) NULL DEFAULT 'PHONE_LOGIN',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `systems_dictionary` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `parentId` INTEGER NULL,
    `isRoot` BOOLEAN NULL DEFAULT false,
    `isLeaf` BOOLEAN NULL DEFAULT false,
    `isFolder` BOOLEAN NULL DEFAULT false,
    `order` INTEGER NULL DEFAULT 0,
    `depath` INTEGER NULL DEFAULT 0,
    `npath` VARCHAR(191) NULL,
    `alias` VARCHAR(191) NULL,
    `key` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `options` JSON NULL,
    `remark` VARCHAR(191) NULL,
    `scene` VARCHAR(191) NULL,
    `value` VARCHAR(191) NULL,
    `widget` VARCHAR(191) NULL,
    `content` JSON NULL,
    `attachment` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `systems_notification` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `agentid` INTEGER NULL,
    `amount` DECIMAL(10, 2) NULL DEFAULT 0,
    `content` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `hidden` BOOLEAN NULL DEFAULT false,
    `executed` BOOLEAN NULL DEFAULT false,
    `msgtype` VARCHAR(191) NULL,
    `readed` BOOLEAN NULL DEFAULT false,
    `recipientId` VARCHAR(191) NULL,
    `recipientName` VARCHAR(191) NULL,
    `relationid` VARCHAR(191) NULL,
    `remark` VARCHAR(191) NULL,
    `scene` VARCHAR(191) NULL,
    `schedule` DATETIME(3) NULL,
    `title` VARCHAR(191) NULL,
    `domain` VARCHAR(191) NULL,
    `toall` BOOLEAN NULL DEFAULT false,
    `toparty` VARCHAR(191) NULL,
    `touser` VARCHAR(191) NULL,
    `url` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `viewId` VARCHAR(191) NULL,
    `appId` VARCHAR(191) NULL,
    `applicationId` INTEGER NULL,
    `applicationName` VARCHAR(191) NULL,
    `platform` VARCHAR(191) NULL,
    `params` JSON NULL,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `systems_attachment` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `name` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `size` INTEGER NULL DEFAULT 0,
    `suffix` VARCHAR(191) NULL,
    `url` VARCHAR(191) NULL,
    `scene` VARCHAR(191) NULL,
    `bizId` INTEGER NULL,
    `mimetype` VARCHAR(191) NULL,

    INDEX `systems_attachment_bizId_idx`(`bizId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `systems_signlog` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `ipaddr` VARCHAR(191) NULL,
    `operation` VARCHAR(191) NULL,
    `platform` VARCHAR(191) NULL,
    `scene` VARCHAR(191) NULL,
    `uaInfo` VARCHAR(191) NULL,
    `userId` INTEGER NULL,
    `username` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `systems_operation` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `creatorId` VARCHAR(191) NULL,
    `creatorName` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `scene` VARCHAR(191) NULL,
    `tags` VARCHAR(191) NULL,
    `bizId` INTEGER NULL,
    `appId` VARCHAR(191) NULL,

    INDEX `systems_operation_bizId_idx`(`bizId`),
    INDEX `systems_operation_appId_idx`(`appId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `applications` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `title` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `logo` VARCHAR(191) NULL,
    `type` ENUM('WEBAPP', 'NESTJS') NULL DEFAULT 'WEBAPP',
    `appId` VARCHAR(191) NULL,
    `appSecret` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `activated` BOOLEAN NULL DEFAULT true,
    `thumb` VARCHAR(191) NULL,
    `domain` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `callbackPath` VARCHAR(191) NULL,
    `publicKey` TEXT NULL,
    `primary` BOOLEAN NULL DEFAULT false,
    `scene` VARCHAR(191) NULL DEFAULT 'ANT_DESIGN_PRO',
    `published` BOOLEAN NULL DEFAULT false,
    `deployed` BOOLEAN NULL DEFAULT false,
    `public` BOOLEAN NULL DEFAULT true,
    `creatorId` INTEGER NULL,
    `creatorName` VARCHAR(191) NULL,
    `backend` BOOLEAN NULL DEFAULT false,

    UNIQUE INDEX `applications_name_key`(`name`),
    UNIQUE INDEX `applications_appId_key`(`appId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `application_versions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `name` VARCHAR(191) NULL,
    `serial` VARCHAR(191) NULL,
    `version` INTEGER NULL DEFAULT 1,
    `description` VARCHAR(191) NULL,
    `status` VARCHAR(191) NULL DEFAULT 'DRAFT',
    `applicationName` VARCHAR(191) NULL,
    `packageUrl` VARCHAR(191) NULL,
    `publishTime` DATETIME(3) NULL,
    `applicationId` INTEGER NULL,

    INDEX `application_versions_applicationId_idx`(`applicationId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `application_menus` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `parentId` INTEGER NULL,
    `isRoot` BOOLEAN NULL DEFAULT false,
    `isFolder` BOOLEAN NULL DEFAULT false,
    `isLeaf` BOOLEAN NULL DEFAULT false,
    `order` INTEGER NULL DEFAULT 0,
    `name` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `redirect` VARCHAR(191) NULL,
    `depath` INTEGER NULL DEFAULT 0,
    `npath` VARCHAR(191) NULL,
    `wrappers` VARCHAR(191) NULL,
    `access` VARCHAR(191) NULL,
    `icon` VARCHAR(191) NULL,
    `hideInMenu` BOOLEAN NULL DEFAULT false,
    `hideChildrenMenu` BOOLEAN NULL DEFAULT false,
    `containerId` INTEGER NULL,
    `applicationId` INTEGER NULL,
    `path` VARCHAR(191) NULL,
    `type` VARCHAR(191) NULL,

    INDEX `application_menus_applicationId_idx`(`applicationId`),
    UNIQUE INDEX `application_menus_parentId_name_key`(`parentId`, `name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `application_members` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `order` INTEGER NULL DEFAULT 0,
    `name` VARCHAR(191) NULL,
    `username` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `avatar` VARCHAR(191) NULL,
    `role` ENUM('VISITOR', 'DEVELOPER', 'ADMINISTRATOR') NOT NULL DEFAULT 'VISITOR',
    `applicationId` INTEGER NULL,
    `memberId` INTEGER NULL,

    INDEX `application_members_applicationId_idx`(`applicationId`),
    INDEX `application_members_memberId_idx`(`memberId`),
    UNIQUE INDEX `application_members_applicationId_memberId_key`(`applicationId`, `memberId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `application_containers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `name` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `type` ENUM('CONTAINER', 'COMPONENT') NULL DEFAULT 'CONTAINER',
    `activated` BOOLEAN NULL DEFAULT false,
    `isPlayground` BOOLEAN NULL DEFAULT false,
    `isInternal` BOOLEAN NULL DEFAULT false,
    `description` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `states` JSON NULL,
    `references` JSON NULL,
    `params` JSON NULL,
    `actions` JSON NULL,
    `props` JSON NULL,
    `useeffects` JSON NULL,
    `usememos` JSON NULL,
    `userequests` JSON NULL,
    `hooks` JSON NULL,
    `imports` JSON NULL,
    `applicationId` INTEGER NULL,
    `creatorId` VARCHAR(191) NULL,
    `menuId` INTEGER NULL,

    UNIQUE INDEX `application_containers_menuId_key`(`menuId`),
    INDEX `application_containers_menuId_idx`(`menuId`),
    INDEX `application_containers_applicationId_idx`(`applicationId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `application_components` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `parentId` INTEGER NULL,
    `isRoot` BOOLEAN NULL DEFAULT false,
    `isFolder` BOOLEAN NULL DEFAULT false,
    `isLeaf` BOOLEAN NULL DEFAULT false,
    `order` INTEGER NULL DEFAULT 0,
    `depath` INTEGER NULL DEFAULT 0,
    `npath` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `boilerplate` VARCHAR(191) NULL,
    `documentUrl` VARCHAR(191) NULL,
    `package` VARCHAR(191) NULL,
    `reference` VARCHAR(191) NULL,
    `accessKey` VARCHAR(191) NULL,
    `props` JSON NULL,
    `config` JSON NULL,
    `states` JSON NULL,
    `relation` JSON NULL,
    `isDraft` BOOLEAN NULL DEFAULT false,
    `isDirect` BOOLEAN NULL DEFAULT false,
    `isPersonal` BOOLEAN NULL DEFAULT false,
    `isInternal` BOOLEAN NULL DEFAULT false,
    `defaultPackage` BOOLEAN NULL DEFAULT false,
    `containerId` INTEGER NULL,
    `creatorId` VARCHAR(191) NULL,
    `applicationId` INTEGER NULL,
    `name` VARCHAR(191) NULL,

    INDEX `application_components_containerId_idx`(`containerId`),
    INDEX `application_components_applicationId_idx`(`applicationId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `backend_modules` (
    `icon` VARCHAR(191) NULL,
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `parentId` INTEGER NULL,
    `isRoot` BOOLEAN NULL DEFAULT false,
    `isFolder` BOOLEAN NULL DEFAULT false,
    `isLeaf` BOOLEAN NULL DEFAULT false,
    `order` INTEGER NULL DEFAULT 0,
    `depath` INTEGER NULL DEFAULT 0,
    `npath` VARCHAR(191) NULL,
    `idpath` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `serial` VARCHAR(191) NULL,
    `access` VARCHAR(191) NULL,
    `controllerId` INTEGER NULL,
    `entityId` INTEGER NULL,
    `type` ENUM('GENERIC', 'TREE') NULL DEFAULT 'GENERIC',
    `applicationId` INTEGER NULL,
    `path` VARCHAR(191) NULL,

    INDEX `backend_modules_applicationId_idx`(`applicationId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `backend_controllers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `name` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `type` ENUM('GENERIC', 'TREE') NULL DEFAULT 'GENERIC',
    `description` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `npath` VARCHAR(191) NULL,
    `applicationId` INTEGER NULL,
    `moduleId` INTEGER NULL,

    UNIQUE INDEX `backend_controllers_moduleId_key`(`moduleId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `backend_entities` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `name` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `tableName` VARCHAR(191) NULL,
    `tree` BOOLEAN NULL DEFAULT false,
    `uniques` JSON NULL,
    `applicationId` INTEGER NULL,
    `npath` VARCHAR(191) NULL,
    `type` ENUM('GENERIC', 'TREE') NULL DEFAULT 'GENERIC',
    `moduleId` INTEGER NULL,

    UNIQUE INDEX `backend_entities_moduleId_key`(`moduleId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `backend_fields` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `dbtype` VARCHAR(191) NULL,
    `len` INTEGER NULL,
    `primary` BOOLEAN NULL DEFAULT false,
    `required` BOOLEAN NULL DEFAULT false,
    `unique` BOOLEAN NULL DEFAULT false,
    `nullable` BOOLEAN NULL DEFAULT true,
    `default` JSON NULL,
    `comment` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `precision` INTEGER NULL,
    `scale` INTEGER NULL,
    `isForeign` BOOLEAN NULL DEFAULT false,
    `autoincrement` BOOLEAN NULL DEFAULT false,
    `reference` JSON NULL,
    `referenceField` VARCHAR(191) NULL,
    `referenceType` VARCHAR(191) NULL,
    `enums` JSON NULL,
    `entityId` INTEGER NULL,
    `relatedId` INTEGER NULL,
    `foreign` JSON NULL,
    `props` JSON NULL,
    `entityName` VARCHAR(191) NULL,
    `relatedName` VARCHAR(191) NULL,
    `operator` VARCHAR(191) NULL,
    `mode` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `index` INTEGER NULL DEFAULT 0,
    `maximum` INTEGER NULL,
    `minimum` INTEGER NULL,
    `maxLength` INTEGER NULL,
    `minLength` INTEGER NULL,
    `pattern` VARCHAR(191) NULL,
    `dataType` VARCHAR(191) NULL DEFAULT 'string',
    `type` VARCHAR(191) NULL DEFAULT 'String',
    `scene` VARCHAR(191) NULL DEFAULT 'ORDINARY',
    `rules` JSON NULL,
    `apiProperty` JSON NULL,

    INDEX `backend_fields_entityId_idx`(`entityId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `datasource_databases` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `title` VARCHAR(191) NULL,
    `database` VARCHAR(191) NULL,
    `username` VARCHAR(191) NULL,
    `password` VARCHAR(191) NULL,
    `port` INTEGER NULL,
    `creatorId` INTEGER NULL,
    `type` VARCHAR(191) NULL DEFAULT 'MYSQL',
    `activated` BOOLEAN NULL DEFAULT true,
    `description` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `host` VARCHAR(191) NULL DEFAULT '127.0.0.1',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `datasource_servicegroups` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `title` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `host` VARCHAR(191) NULL,
    `basePath` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `version` VARCHAR(191) NULL,
    `params` JSON NULL,
    `order` INTEGER NULL DEFAULT 0,
    `importMethod` VARCHAR(191) NULL DEFAULT 'LINK',
    `importUrl` VARCHAR(191) NULL,
    `applicationId` INTEGER NULL,
    `creatorId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `datasource_dataservices` (
    `authRequired` BOOLEAN NULL DEFAULT false,
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `name` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `summary` VARCHAR(191) NULL,
    `method` VARCHAR(191) NULL DEFAULT 'GET',
    `params` JSON NULL,
    `responses` JSON NULL,
    `requestBody` JSON NULL,
    `schemaId` INTEGER NULL,
    `reference` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `groupName` VARCHAR(191) NULL,
    `tags` VARCHAR(191) NULL,
    `creatorId` INTEGER NULL,
    `order` INTEGER NULL DEFAULT 0,
    `groupId` INTEGER NULL,
    `applicationId` INTEGER NULL,

    INDEX `datasource_dataservices_groupId_idx`(`groupId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `datasource_dataschemas` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `path` VARCHAR(191) NULL,
    `summary` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `type` VARCHAR(191) NULL,
    `properties` JSON NULL,
    `description` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `groupId` INTEGER NULL,
    `creatorId` INTEGER NULL,
    `name` VARCHAR(191) NULL,

    INDEX `datasource_dataschemas_groupId_idx`(`groupId`),
    UNIQUE INDEX `datasource_dataschemas_groupId_name_key`(`groupId`, `name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `materials_material` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `name` VARCHAR(191) NULL,
    `alias` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `path` VARCHAR(191) NULL,
    `url` VARCHAR(191) NULL,
    `boilerplate` VARCHAR(191) NULL,
    `propType` VARCHAR(191) NULL DEFAULT 'NORMAL',
    `package` VARCHAR(191) NULL,
    `thumb` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `props` JSON NULL,
    `config` JSON NULL,
    `columns` JSON NULL,
    `states` JSON NULL,
    `sections` JSON NULL,
    `materialId` INTEGER NULL,
    `creatorId` INTEGER NULL,
    `isPersonal` BOOLEAN NULL DEFAULT false,
    `editable` BOOLEAN NULL DEFAULT true,

    UNIQUE INDEX `materials_material_uuid_key`(`uuid`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `material_components` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `name` VARCHAR(191) NULL,
    `alias` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `key` VARCHAR(191) NULL,
    `package` VARCHAR(191) NULL,
    `documentUrl` VARCHAR(191) NULL,
    `thumb` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `order` INTEGER NULL DEFAULT 0,
    `boilerplate` VARCHAR(191) NULL,
    `tags` VARCHAR(191) NULL,
    `actionsEnable` BOOLEAN NULL DEFAULT false,
    `attrs` JSON NULL,
    `columnType` VARCHAR(191) NULL,
    `columnsEnable` BOOLEAN NULL DEFAULT false,
    `extraEnable` BOOLEAN NULL DEFAULT false,
    `materialName` VARCHAR(191) NULL,
    `isLayout` BOOLEAN NULL DEFAULT false,
    `isOfficial` BOOLEAN NULL DEFAULT true,
    `isContainer` BOOLEAN NULL DEFAULT false,
    `isFontIcon` BOOLEAN NULL DEFAULT false,
    `componentType` VARCHAR(191) NULL,
    `defaulted` BOOLEAN NULL DEFAULT false,
    `sections` JSON NULL,
    `actions` JSON NULL,
    `materialId` INTEGER NULL,
    `creatorId` INTEGER NULL,

    UNIQUE INDEX `material_components_uuid_key`(`uuid`),
    INDEX `material_components_materialId_idx`(`materialId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `material_component_props` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `created` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NULL,
    `uuid` VARCHAR(191) NULL,
    `deleted` BOOLEAN NULL DEFAULT false,
    `parentId` INTEGER NULL,
    `isRoot` BOOLEAN NULL DEFAULT false,
    `isFolder` BOOLEAN NULL DEFAULT false,
    `isLeaf` BOOLEAN NULL DEFAULT false,
    `order` INTEGER NULL DEFAULT 0,
    `depath` INTEGER NULL DEFAULT 0,
    `npath` VARCHAR(191) NULL,
    `name` VARCHAR(191) NULL,
    `parentName` VARCHAR(191) NULL,
    `dataType` VARCHAR(191) NULL,
    `defaultType` VARCHAR(191) NULL,
    `defaultValue` VARCHAR(191) NULL,
    `value` VARCHAR(191) NULL,
    `renderCode` VARCHAR(191) NULL,
    `valueType` VARCHAR(255) NULL,
    `editable` BOOLEAN NULL DEFAULT true,
    `remark` VARCHAR(191) NULL,
    `widget` VARCHAR(191) NULL,
    `propType` VARCHAR(191) NULL,
    `required` BOOLEAN NULL DEFAULT false,
    `options` JSON NULL,
    `source` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `version` VARCHAR(191) NULL,
    `args` JSON NULL,
    `schema` JSON NULL,
    `componentId` INTEGER NULL,
    `materialId` INTEGER NULL,

    UNIQUE INDEX `material_component_props_uuid_key`(`uuid`),
    INDEX `material_component_props_componentId_idx`(`componentId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_MemberToRole` (
    `A` INTEGER NOT NULL,
    `B` INTEGER NOT NULL,

    UNIQUE INDEX `_MemberToRole_AB_unique`(`A`, `B`),
    INDEX `_MemberToRole_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_ResourceToRole` (
    `A` INTEGER NOT NULL,
    `B` INTEGER NOT NULL,

    UNIQUE INDEX `_ResourceToRole_AB_unique`(`A`, `B`),
    INDEX `_ResourceToRole_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `organizations_department` ADD CONSTRAINT `organizations_department_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `organizations_department`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `organizations_department` ADD CONSTRAINT `organizations_department_organizationId_fkey` FOREIGN KEY (`organizationId`) REFERENCES `organizations_organization`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `organizations_member` ADD CONSTRAINT `organizations_member_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users_user`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `organizations_member` ADD CONSTRAINT `organizations_member_organizationId_fkey` FOREIGN KEY (`organizationId`) REFERENCES `organizations_organization`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `organizations_member` ADD CONSTRAINT `organizations_member_departmentId_fkey` FOREIGN KEY (`departmentId`) REFERENCES `organizations_department`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `organizations_resource` ADD CONSTRAINT `organizations_resource_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `organizations_resource`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `organizations_resource` ADD CONSTRAINT `organizations_resource_applicationId_fkey` FOREIGN KEY (`applicationId`) REFERENCES `applications`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `organizations_role` ADD CONSTRAINT `organizations_role_organizationId_fkey` FOREIGN KEY (`organizationId`) REFERENCES `organizations_organization`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `systems_dictionary` ADD CONSTRAINT `systems_dictionary_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `systems_dictionary`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `application_versions` ADD CONSTRAINT `application_versions_applicationId_fkey` FOREIGN KEY (`applicationId`) REFERENCES `applications`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `application_menus` ADD CONSTRAINT `application_menus_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `application_menus`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `application_menus` ADD CONSTRAINT `application_menus_applicationId_fkey` FOREIGN KEY (`applicationId`) REFERENCES `applications`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `application_members` ADD CONSTRAINT `application_members_applicationId_fkey` FOREIGN KEY (`applicationId`) REFERENCES `applications`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `application_containers` ADD CONSTRAINT `application_containers_applicationId_fkey` FOREIGN KEY (`applicationId`) REFERENCES `applications`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `application_containers` ADD CONSTRAINT `application_containers_menuId_fkey` FOREIGN KEY (`menuId`) REFERENCES `application_menus`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `application_components` ADD CONSTRAINT `application_components_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `application_components`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `application_components` ADD CONSTRAINT `application_components_containerId_fkey` FOREIGN KEY (`containerId`) REFERENCES `application_containers`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `application_components` ADD CONSTRAINT `application_components_applicationId_fkey` FOREIGN KEY (`applicationId`) REFERENCES `applications`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `backend_modules` ADD CONSTRAINT `backend_modules_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `backend_modules`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `backend_modules` ADD CONSTRAINT `backend_modules_applicationId_fkey` FOREIGN KEY (`applicationId`) REFERENCES `applications`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `backend_controllers` ADD CONSTRAINT `backend_controllers_moduleId_fkey` FOREIGN KEY (`moduleId`) REFERENCES `backend_modules`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `backend_entities` ADD CONSTRAINT `backend_entities_moduleId_fkey` FOREIGN KEY (`moduleId`) REFERENCES `backend_modules`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `backend_fields` ADD CONSTRAINT `backend_fields_entityId_fkey` FOREIGN KEY (`entityId`) REFERENCES `backend_entities`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `datasource_dataservices` ADD CONSTRAINT `datasource_dataservices_groupId_fkey` FOREIGN KEY (`groupId`) REFERENCES `datasource_servicegroups`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `datasource_dataschemas` ADD CONSTRAINT `datasource_dataschemas_groupId_fkey` FOREIGN KEY (`groupId`) REFERENCES `datasource_servicegroups`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `material_components` ADD CONSTRAINT `material_components_materialId_fkey` FOREIGN KEY (`materialId`) REFERENCES `materials_material`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `material_component_props` ADD CONSTRAINT `material_component_props_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `material_component_props`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `material_component_props` ADD CONSTRAINT `material_component_props_componentId_fkey` FOREIGN KEY (`componentId`) REFERENCES `material_components`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_MemberToRole` ADD CONSTRAINT `_MemberToRole_A_fkey` FOREIGN KEY (`A`) REFERENCES `organizations_member`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_MemberToRole` ADD CONSTRAINT `_MemberToRole_B_fkey` FOREIGN KEY (`B`) REFERENCES `organizations_role`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_ResourceToRole` ADD CONSTRAINT `_ResourceToRole_A_fkey` FOREIGN KEY (`A`) REFERENCES `organizations_resource`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_ResourceToRole` ADD CONSTRAINT `_ResourceToRole_B_fkey` FOREIGN KEY (`B`) REFERENCES `organizations_role`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
