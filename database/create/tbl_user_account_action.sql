CREATE TABLE `tbl_user_account_action` (
  `ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ACCOUNT_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_ID` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `PERMISSION_TYPE` char(32) COLLATE utf8_unicode_ci DEFAULT 'PERMONANT',
  `ASSIGNED_DATE` datetime DEFAULT NULL,
  `START_DATETIME` datetime DEFAULT NULL,
  `END_DATETIME` datetime DEFAULT NULL,
  `TIMEZONE_ADJUSTMENT_MILLIS` int(10) DEFAULT '0',
  `COMMENT` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT '0',
  `SORT_ORDER` int(6) DEFAULT '1',
  `INSERT_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATETIME` datetime DEFAULT NULL,
  `UPDATE_USER_ID` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPDATE_DATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_ACCOUNT_ID` (`USER_ACCOUNT_ID`,`ACTION_ID`),
  KEY `fk_action_id` (`ACTION_ID`),
  CONSTRAINT `fk_action_id` FOREIGN KEY (`ACTION_ID`) REFERENCES `tbl_action` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_account_id` FOREIGN KEY (`USER_ACCOUNT_ID`) REFERENCES `tbl_user_account` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
