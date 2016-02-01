CREATE TABLE `cybersource_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kb_payment_method_id` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `cc_first_name` varchar(255) DEFAULT NULL,
  `cc_last_name` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `cc_exp_month` varchar(255) DEFAULT NULL,
  `cc_exp_year` varchar(255) DEFAULT NULL,
  `cc_number` varchar(255) DEFAULT NULL,
  `cc_last_4` varchar(255) DEFAULT NULL,
  `cc_start_month` varchar(255) DEFAULT NULL,
  `cc_start_year` varchar(255) DEFAULT NULL,
  `cc_issue_number` varchar(255) DEFAULT NULL,
  `cc_verification_value` varchar(255) DEFAULT NULL,
  `cc_track_data` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kb_account_id` varchar(255) DEFAULT NULL,
  `kb_tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cybersource_payment_methods_on_kb_account_id` (`kb_account_id`),
  KEY `index_cybersource_payment_methods_on_kb_payment_method_id` (`kb_payment_method_id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE `cybersource_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cybersource_response_id` int(11) NOT NULL,
  `api_call` varchar(255) NOT NULL,
  `kb_payment_id` varchar(255) NOT NULL,
  `kb_payment_transaction_id` varchar(255) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `payment_processor_account_id` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `amount_in_cents` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kb_account_id` varchar(255) NOT NULL,
  `kb_tenant_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cybersource_transactions_on_kb_payment_id` (`kb_payment_id`),
  KEY `index_cybersource_transactions_on_cybersource_response_id` (`cybersource_response_id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE `cybersource_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_call` varchar(255) NOT NULL,
  `kb_payment_id` varchar(255) DEFAULT NULL,
  `kb_payment_transaction_id` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `payment_processor_account_id` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `authorization` varchar(255) DEFAULT NULL,
  `fraud_review` tinyint(1) DEFAULT NULL,
  `test` tinyint(1) DEFAULT NULL,
  `params_merchant_reference_code` varchar(255) DEFAULT NULL,
  `params_request_id` varchar(255) DEFAULT NULL,
  `params_decision` varchar(255) DEFAULT NULL,
  `params_reason_code` varchar(255) DEFAULT NULL,
  `params_request_token` varchar(255) DEFAULT NULL,
  `params_currency` varchar(255) DEFAULT NULL,
  `params_amount` varchar(255) DEFAULT NULL,
  `params_authorization_code` varchar(255) DEFAULT NULL,
  `params_avs_code` varchar(255) DEFAULT NULL,
  `params_avs_code_raw` varchar(255) DEFAULT NULL,
  `params_cv_code` varchar(255) DEFAULT NULL,
  `params_authorized_date_time` varchar(255) DEFAULT NULL,
  `params_processor_response` varchar(255) DEFAULT NULL,
  `params_reconciliation_id` varchar(255) DEFAULT NULL,
  `params_subscription_id` varchar(255) DEFAULT NULL,
  `avs_result_code` varchar(255) DEFAULT NULL,
  `avs_result_message` varchar(255) DEFAULT NULL,
  `avs_result_street_match` varchar(255) DEFAULT NULL,
  `avs_result_postal_match` varchar(255) DEFAULT NULL,
  `cvv_result_code` varchar(255) DEFAULT NULL,
  `cvv_result_message` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kb_account_id` varchar(255) DEFAULT NULL,
  `kb_tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cybersource_responses_on_kb_payment_id_kb_tenant_id` (`kb_payment_id`, `kb_tenant_id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;
