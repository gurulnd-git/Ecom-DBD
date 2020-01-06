CREATE TABLE `category` (
	`category_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`category_image` varchar(100),
	`category_status` bit(1),
	`code` varchar(100) NOT NULL,
	`depth` int(11),
	`featured` bit(1),
	`lineage` varchar(255),
	`sort_order` int(11),
	`visible` bit(1),
	`merchant_id` int(11) NOT NULL,
	`parent_id` bigint(20)
);

CREATE TABLE `category_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`category_highlight` varchar(255),
	`meta_description` varchar(255),
	`meta_keywords` varchar(255),
	`meta_title` varchar(120),
	`sef_url` varchar(120),
	`language_id` int(11) NOT NULL,
	`category_id` bigint(20) NOT NULL
);

CREATE TABLE `content` (
	`content_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`code` varchar(100) NOT NULL,
	`content_position` varchar(10),
	`content_type` varchar(10),
	`link_to_menu` bit(1),
	`product_group` varchar(255),
	`sort_order` int(11),
	`visible` bit(1),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `content_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`meta_description` varchar(255),
	`meta_keywords` varchar(255),
	`meta_title` varchar(255),
	`sef_url` varchar(120),
	`language_id` int(11) NOT NULL,
	`content_id` bigint(20) NOT NULL
);

CREATE TABLE `country` (
	`country_id` int(11) NOT NULL,
	`country_isocode` varchar(255) NOT NULL,
	`country_supported` bit(1),
	`geozone_id` bigint(20)
);

CREATE TABLE `country_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`country_id` int(11) NOT NULL
);

CREATE TABLE `currency` (
	`currency_id` bigint(20) NOT NULL,
	`currency_code` varchar(255),
	`currency_currency_code` varchar(255) NOT NULL,
	`currency_name` varchar(255),
	`currency_supported` bit(1)
);

CREATE TABLE `customer` (
	`customer_id` bigint(20) NOT NULL,
	`customer_anonymous` bit(1),
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`billing_street_address` varchar(256),
	`billing_city` varchar(100),
	`billing_company` varchar(100),
	`billing_first_name` varchar(64) NOT NULL,
	`billing_last_name` varchar(64) NOT NULL,
	`latitude` varchar(100),
	`longitude` varchar(100),
	`billing_postcode` varchar(20),
	`billing_state` varchar(100),
	`billing_telephone` varchar(32),
	`customer_company` varchar(100),
	`review_avg` DECIMAL(19.0,2.0),
	`review_count` int(11),
	`customer_dob` DATETIME(6),
	`delivery_street_address` varchar(256),
	`delivery_city` varchar(100),
	`delivery_company` varchar(100),
	`delivery_first_name` varchar(64),
	`delivery_last_name` varchar(64),
	`delivery_postcode` varchar(20),
	`delivery_state` varchar(100),
	`delivery_telephone` varchar(32),
	`customer_email_address` varchar(96) NOT NULL,
	`customer_gender` varchar(1),
	`customer_nick` varchar(96),
	`customer_password` varchar(60),
	`provider` varchar(255),
	`billing_country_id` int(11) NOT NULL,
	`billing_zone_id` bigint(20),
	`language_id` int(11) NOT NULL,
	`delivery_country_id` int(11),
	`delivery_zone_id` bigint(20),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `customer_attribute` (
	`customer_attribute_id` bigint(20) NOT NULL,
	`customer_attr_txt_val` varchar(255),
	`customer_id` bigint(20) NOT NULL,
	`option_id` bigint(20) NOT NULL,
	`option_value_id` bigint(20) NOT NULL
);

CREATE TABLE `customer_group` (
	`customer_id` bigint(20) NOT NULL,
	`group_id` int(11) NOT NULL
);

CREATE TABLE `customer_optin` (
	`customer_optin_id` bigint(20) NOT NULL,
	`email` varchar(255) NOT NULL,
	`first` varchar(255),
	`last` varchar(255),
	`optin_date` DATETIME(6),
	`value` longtext,
	`merchant_id` int(11) NOT NULL,
	`optin_id` bigint(20)
);

CREATE TABLE `customer_option` (
	`customer_option_id` bigint(20) NOT NULL,
	`customer_opt_active` bit(1),
	`customer_opt_code` varchar(255),
	`customer_option_type` varchar(10),
	`customer_opt_public` bit(1),
	`sort_order` int(11),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `customer_option_desc` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`customer_option_comment` longtext,
	`language_id` int(11) NOT NULL,
	`customer_option_id` bigint(20) NOT NULL
);

CREATE TABLE `customer_option_set` (
	`customer_optionset_id` bigint(20) NOT NULL,
	`sort_order` int(11),
	`customer_option_id` bigint(20) NOT NULL,
	`customer_option_value_id` bigint(20) NOT NULL
);

CREATE TABLE `customer_option_value` (
	`customer_option_value_id` bigint(20) NOT NULL,
	`customer_opt_val_code` varchar(255),
	`customer_opt_val_image` varchar(255),
	`sort_order` int(11),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `customer_opt_val_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`customer_opt_val_id` bigint(20)
);

CREATE TABLE `customer_review` (
	`customer_review_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`review_date` DATETIME(6),
	`reviews_rating` double,
	`reviews_read` bigint(20),
	`status` int(11),
	`customers_id` bigint(20),
	`reviewed_customer_id` bigint(20)
);

CREATE TABLE `customer_review_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`customer_review_id` bigint(20)
);

CREATE TABLE `file_history` (
	`file_history_id` bigint(20) NOT NULL,
	`accounted_date` DATETIME(6),
	`date_added` DATETIME(6) NOT NULL,
	`date_deleted` DATETIME(6),
	`download_count` int(11) NOT NULL,
	`file_id` bigint(20),
	`filesize` int(11) NOT NULL,
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `geozone` (
	`geozone_id` bigint(20) NOT NULL,
	`geozone_code` varchar(255),
	`geozone_name` varchar(255)
);

CREATE TABLE `geozone_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`geozone_id` bigint(20)
);

CREATE TABLE `language` (
	`language_id` int(11) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`code` varchar(255) NOT NULL,
	`sort_order` int(11)
);

CREATE TABLE `manufacturer` (
	`manufacturer_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`code` varchar(100) NOT NULL,
	`manufacturer_image` varchar(255),
	`sort_order` int(11),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `manufacturer_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`date_last_click` DATETIME(6),
	`manufacturers_url` varchar(255),
	`url_clicked` int(11),
	`language_id` int(11) NOT NULL,
	`manufacturer_id` bigint(20) NOT NULL
);

CREATE TABLE `merchant_configuration` (
	`merchant_config_id` bigint(20) NOT NULL,
	`active` bit(1),
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`config_key` varchar(255),
	`type` varchar(255),
	`value` longtext,
	`merchant_id` int(11)
);

CREATE TABLE `merchant_language` (
	`stores_merchant_id` int(11) NOT NULL,
	`languages_language_id` int(11) NOT NULL
);

CREATE TABLE `merchant_log` (
	`merchant_log_id` bigint(20) NOT NULL,
	`log` longtext,
	`module` varchar(25),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `merchant_store` (
	`merchant_id` int(11) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`store_code` varchar(100) NOT NULL,
	`continueshoppingurl` varchar(150),
	`currency_format_national` bit(1),
	`domain_name` varchar(80),
	`in_business_since` DATE,
	`invoice_template` varchar(25),
	`is_retailer` bit(1),
	`seizeunitcode` varchar(5),
	`store_email` varchar(60) NOT NULL,
	`store_logo` varchar(100),
	`store_template` varchar(25),
	`store_address` varchar(255),
	`store_city` varchar(100),
	`store_name` varchar(100) NOT NULL,
	`store_phone` varchar(50),
	`store_postal_code` varchar(15),
	`store_state_prov` varchar(100),
	`use_cache` bit(1),
	`weightunitcode` varchar(5),
	`country_id` int(11) NOT NULL,
	`currency_id` bigint(20) NOT NULL,
	`language_id` int(11) NOT NULL,
	`parent_id` int(11),
	`zone_id` bigint(20)
);

CREATE TABLE `module_configuration` (
	`module_conf_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`code` varchar(255) NOT NULL,
	`details` longtext,
	`configuration` longtext,
	`custom_ind` bit(1),
	`image` varchar(255),
	`module` varchar(255),
	`regions` varchar(255),
	`type` varchar(255)
);

CREATE TABLE `optin` (
	`optin_id` bigint(20) NOT NULL,
	`code` varchar(255) NOT NULL,
	`description` varchar(255),
	`end_date` DATETIME(6),
	`type` varchar(255) NOT NULL,
	`start_date` DATETIME(6),
	`merchant_id` int(11)
);

CREATE TABLE `orders` (
	`order_id` bigint(20) NOT NULL,
	`billing_street_address` varchar(256),
	`billing_city` varchar(100),
	`billing_company` varchar(100),
	`billing_first_name` varchar(64) NOT NULL,
	`billing_last_name` varchar(64) NOT NULL,
	`latitude` varchar(100),
	`longitude` varchar(100),
	`billing_postcode` varchar(20),
	`billing_state` varchar(100),
	`billing_telephone` varchar(32),
	`channel` varchar(255),
	`confirmed_address` bit(1),
	`card_type` varchar(255),
	`cc_cvv` varchar(255),
	`cc_expires` varchar(255),
	`cc_number` varchar(255),
	`cc_owner` varchar(255),
	`currency_value` DECIMAL(19.0,2.0),
	`customer_agreed` bit(1),
	`customer_email_address` varchar(50) NOT NULL,
	`customer_id` bigint(20),
	`date_purchased` DATE,
	`delivery_street_address` varchar(256),
	`delivery_city` varchar(100),
	`delivery_company` varchar(100),
	`delivery_first_name` varchar(64),
	`delivery_last_name` varchar(64),
	`delivery_postcode` varchar(20),
	`delivery_state` varchar(100),
	`delivery_telephone` varchar(32),
	`ip_address` varchar(255),
	`last_modified` DATETIME(6),
	`locale` varchar(255),
	`order_date_finished` DATETIME(6),
	`order_type` varchar(255),
	`payment_module_code` varchar(255),
	`payment_type` varchar(255),
	`shipping_module_code` varchar(255),
	`order_status` varchar(255),
	`order_total` DECIMAL(19.0,2.0),
	`billing_country_id` int(11) NOT NULL,
	`billing_zone_id` bigint(20),
	`currency_id` bigint(20),
	`delivery_country_id` int(11),
	`delivery_zone_id` bigint(20),
	`merchantid` int(11)
);

CREATE TABLE `order_account` (
	`order_account_id` bigint(20) NOT NULL,
	`order_account_bill_day` int(11) NOT NULL,
	`order_account_end_date` DATE,
	`order_account_start_date` DATE NOT NULL,
	`order_id` bigint(20) NOT NULL
);

CREATE TABLE `order_account_product` (
	`order_account_product_id` bigint(20) NOT NULL,
	`order_account_product_accnt_dt` DATE,
	`order_account_product_end_dt` DATE,
	`order_account_product_eot` DATETIME(6),
	`order_account_product_l_st_dt` DATETIME(6),
	`order_account_product_l_trx_st` int(11) NOT NULL,
	`order_account_product_pm_fr_ty` int(11) NOT NULL,
	`order_account_product_st_dt` DATE NOT NULL,
	`order_account_product_status` int(11) NOT NULL,
	`order_account_id` bigint(20) NOT NULL,
	`order_product_id` bigint(20) NOT NULL
);

CREATE TABLE `order_attribute` (
	`order_attribute_id` bigint(20) NOT NULL,
	`identifier` varchar(255) NOT NULL,
	`value` varchar(255) NOT NULL,
	`order_id` bigint(20) NOT NULL
);

CREATE TABLE `order_product` (
	`order_product_id` bigint(20) NOT NULL,
	`onetime_charge` DECIMAL(19.0,2.0) NOT NULL,
	`product_name` varchar(64) NOT NULL,
	`product_quantity` int(11),
	`product_sku` varchar(255),
	`order_id` bigint(20) NOT NULL
);

CREATE TABLE `order_product_attribute` (
	`order_product_attribute_id` bigint(20) NOT NULL,
	`product_attribute_is_free` bit(1) NOT NULL,
	`product_attribute_name` varchar(255),
	`product_attribute_price` DECIMAL(15.0,4.0) NOT NULL,
	`product_attribute_val_name` varchar(255),
	`product_attribute_weight` DECIMAL(15.0,4.0),
	`product_option_id` bigint(20) NOT NULL,
	`product_option_value_id` bigint(20) NOT NULL,
	`order_product_id` bigint(20) NOT NULL
);

CREATE TABLE `order_product_download` (
	`order_product_download_id` bigint(20) NOT NULL,
	`download_count` int(11) NOT NULL,
	`download_maxdays` int(11) NOT NULL,
	`order_product_filename` varchar(255) NOT NULL,
	`order_product_id` bigint(20) NOT NULL
);

CREATE TABLE `order_product_price` (
	`order_product_price_id` bigint(20) NOT NULL,
	`default_price` bit(1) NOT NULL,
	`product_price` DECIMAL(19.0,2.0) NOT NULL,
	`product_price_code` varchar(64) NOT NULL,
	`product_price_name` varchar(255),
	`product_price_special` DECIMAL(19.0,2.0),
	`prd_price_special_end_dt` DATETIME(6),
	`prd_price_special_st_dt` DATETIME(6),
	`order_product_id` bigint(20) NOT NULL
);

CREATE TABLE `order_status_history` (
	`order_status_history_id` bigint(20) NOT NULL,
	`comments` longtext,
	`customer_notified` int(11),
	`date_added` DATETIME(6) NOT NULL,
	`status` varchar(255),
	`order_id` bigint(20) NOT NULL
);

CREATE TABLE `order_total` (
	`order_account_id` bigint(20) NOT NULL,
	`module` varchar(60),
	`code` varchar(255) NOT NULL,
	`order_total_type` varchar(255),
	`order_value_type` varchar(255),
	`sort_order` int(11) NOT NULL,
	`text` longtext,
	`title` varchar(255),
	`value` DECIMAL(15.0,4.0) NOT NULL,
	`order_id` bigint(20) NOT NULL
);

CREATE TABLE `permission` (
	`permission_id` int(11) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`permission_name` varchar(255)
);

CREATE TABLE `permission_group` (
	`permission_id` int(11) NOT NULL,
	`group_id` int(11) NOT NULL
);

CREATE TABLE `product` (
	`product_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`available` bit(1),
	`cond` int(11),
	`date_available` DATETIME(6),
	`preorder` bit(1),
	`product_height` DECIMAL(19.0,2.0),
	`product_free` bit(1),
	`product_length` DECIMAL(19.0,2.0),
	`quantity_ordered` int(11),
	`review_avg` DECIMAL(19.0,2.0),
	`review_count` int(11),
	`product_ship` bit(1),
	`product_virtual` bit(1),
	`product_weight` DECIMAL(19.0,2.0),
	`product_width` DECIMAL(19.0,2.0),
	`ref_sku` varchar(255),
	`rental_duration` int(11),
	`rental_period` int(11),
	`rental_status` int(11),
	`sku` varchar(255),
	`sort_order` int(11),
	`manufacturer_id` bigint(20),
	`merchant_id` int(11) NOT NULL,
	`customer_id` bigint(20),
	`tax_class_id` bigint(20),
	`product_type_id` bigint(20)
);

CREATE TABLE `product_attribute` (
	`product_attribute_id` bigint(20) NOT NULL,
	`product_attribute_default` bit(1),
	`product_attribute_discounted` bit(1),
	`product_attribute_for_disp` bit(1),
	`product_attribute_required` bit(1),
	`product_attribute_free` bit(1),
	`product_atribute_price` DECIMAL(19.0,2.0),
	`product_attribute_weight` DECIMAL(19.0,2.0),
	`product_attribute_sort_ord` int(11),
	`product_id` bigint(20) NOT NULL,
	`option_id` bigint(20) NOT NULL,
	`option_value_id` bigint(20) NOT NULL
);

CREATE TABLE `product_availability` (
	`product_avail_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`available` bit(1),
	`owner` varchar(255),
	`date_available` DATE,
	`free_shipping` bit(1),
	`quantity` int(11) NOT NULL,
	`quantity_ord_max` int(11),
	`quantity_ord_min` int(11),
	`status` bit(1),
	`region` varchar(255),
	`region_variant` varchar(255),
	`merchant_id` int(11),
	`product_id` bigint(20) NOT NULL
);

CREATE TABLE `product_category` (
	`product_id` bigint(20) NOT NULL,
	`category_id` bigint(20) NOT NULL
);

CREATE TABLE `product_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`meta_description` varchar(255),
	`meta_keywords` varchar(255),
	`meta_title` varchar(255),
	`download_lnk` varchar(255),
	`product_highlight` varchar(255),
	`sef_url` varchar(255),
	`language_id` int(11) NOT NULL,
	`product_id` bigint(20) NOT NULL
);

CREATE TABLE `product_digital` (
	`product_digital_id` bigint(20) NOT NULL,
	`file_name` varchar(255) NOT NULL,
	`product_id` bigint(20) NOT NULL
);

CREATE TABLE `product_image` (
	`product_image_id` bigint(20) NOT NULL,
	`default_image` bit(1),
	`image_crop` bit(1),
	`image_type` int(11),
	`product_image` varchar(255),
	`product_image_url` varchar(255),
	`product_id` bigint(20) NOT NULL
);

CREATE TABLE `product_image_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`alt_tag` varchar(100),
	`language_id` int(11) NOT NULL,
	`product_image_id` bigint(20) NOT NULL
);

CREATE TABLE `product_option` (
	`product_option_id` bigint(20) NOT NULL,
	`product_option_code` varchar(255),
	`product_option_sort_ord` int(11),
	`product_option_type` varchar(10),
	`product_option_read` bit(1),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `product_option_desc` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`product_option_comment` longtext,
	`language_id` int(11) NOT NULL,
	`product_option_id` bigint(20) NOT NULL
);

CREATE TABLE `product_option_value` (
	`product_option_value_id` bigint(20) NOT NULL,
	`product_option_val_code` varchar(255),
	`product_opt_for_disp` bit(1),
	`product_opt_val_image` varchar(255),
	`product_opt_val_sort_ord` int(11),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `product_option_value_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`product_option_value_id` bigint(20)
);

CREATE TABLE `product_price` (
	`product_price_id` bigint(20) NOT NULL,
	`product_price_code` varchar(255) NOT NULL,
	`default_price` bit(1),
	`product_price_amount` DECIMAL(19.0,2.0) NOT NULL,
	`product_price_special_amount` DECIMAL(19.0,2.0),
	`product_price_special_end_date` DATE,
	`product_price_special_st_date` DATE,
	`product_price_type` varchar(20),
	`product_avail_id` bigint(20) NOT NULL
);

CREATE TABLE `product_price_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`product_price_id` bigint(20) NOT NULL
);

CREATE TABLE `product_relationship` (
	`product_relationship_id` bigint(20) NOT NULL,
	`active` bit(1),
	`code` varchar(255),
	`product_id` bigint(20),
	`related_product_id` bigint(20),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `product_review` (
	`product_review_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`review_date` DATETIME(6),
	`reviews_rating` double,
	`reviews_read` bigint(20),
	`status` int(11),
	`customers_id` bigint(20),
	`product_id` bigint(20)
);

CREATE TABLE `product_review_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`product_review_id` bigint(20)
);

CREATE TABLE `product_type` (
	`product_type_id` bigint(20) NOT NULL,
	`prd_type_add_to_cart` bit(1),
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`prd_type_code` varchar(255),
	`merchant_id` int(11)
);

CREATE TABLE `product_type_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`product_type_id` bigint(20) NOT NULL
);

CREATE TABLE `shiping_origin` (
	`ship_origin_id` bigint(20) NOT NULL,
	`active` bit(1),
	`street_address` varchar(256),
	`city` varchar(100),
	`postcode` varchar(20),
	`state` varchar(100),
	`country_id` int(11),
	`merchant_id` int(11) NOT NULL,
	`zone_id` bigint(20)
);

CREATE TABLE `shipping_quote` (
	`shipping_quote_id` bigint(20) NOT NULL,
	`cart_id` bigint(20),
	`customer_id` bigint(20),
	`delivery_street_address` varchar(256),
	`delivery_city` varchar(100),
	`delivery_company` varchar(100),
	`delivery_first_name` varchar(64),
	`delivery_last_name` varchar(64),
	`delivery_postcode` varchar(20),
	`delivery_state` varchar(100),
	`delivery_telephone` varchar(32),
	`shipping_number_days` int(11),
	`free_shipping` bit(1),
	`quote_handling` DECIMAL(19.0,2.0),
	`module` varchar(255) NOT NULL,
	`option_code` varchar(255),
	`option_delivery_date` DATETIME(6),
	`option_name` varchar(255),
	`option_shipping_date` DATETIME(6),
	`order_id` bigint(20),
	`quote_price` DECIMAL(19.0,2.0),
	`quote_date` DATETIME(6),
	`delivery_country_id` int(11),
	`delivery_zone_id` bigint(20)
);

CREATE TABLE `shopping_cart` (
	`shp_cart_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`customer_id` bigint(20),
	`shp_cart_code` varchar(255) NOT NULL,
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `shopping_cart_attr_item` (
	`shp_cart_attr_item_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`product_attr_id` bigint(20) NOT NULL,
	`shp_cart_item_id` bigint(20) NOT NULL
);

CREATE TABLE `shopping_cart_item` (
	`shp_cart_item_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`product_id` bigint(20) NOT NULL,
	`quantity` int(11),
	`shp_cart_id` bigint(20) NOT NULL
);

CREATE TABLE `sm_group` (
	`group_id` int(11) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`group_name` varchar(255),
	`group_type` varchar(255)
);

CREATE TABLE `sm_transaction` (
	`transaction_id` bigint(20) NOT NULL,
	`amount` DECIMAL(19.0,2.0),
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`details` longtext,
	`payment_type` varchar(255),
	`transaction_date` DATETIME(6),
	`transaction_type` varchar(255),
	`order_id` bigint(20)
);

CREATE TABLE `system_configuration` (
	`system_config_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`config_key` varchar(255),
	`value` varchar(255)
);

CREATE TABLE `system_notification` (
	`system_notif_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`end_date` DATE,
	`config_key` varchar(255),
	`start_date` DATE,
	`value` varchar(255),
	`merchant_id` int(11),
	`user_id` bigint(20)
);

CREATE TABLE `tax_class` (
	`tax_class_id` bigint(20) NOT NULL,
	`tax_class_code` varchar(10) NOT NULL,
	`tax_class_title` varchar(32) NOT NULL,
	`merchant_id` int(11)
);

CREATE TABLE `tax_rate` (
	`tax_rate_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`tax_code` varchar(255),
	`piggyback` bit(1),
	`store_state_prov` varchar(100),
	`tax_priority` int(11),
	`tax_rate` DECIMAL(7.0,4.0) NOT NULL,
	`country_id` int(11) NOT NULL,
	`merchant_id` int(11) NOT NULL,
	`parent_id` bigint(20),
	`tax_class_id` bigint(20) NOT NULL,
	`zone_id` bigint(20)
);

CREATE TABLE `tax_rate_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`tax_rate_id` bigint(20)
);

CREATE TABLE `user` (
	`user_id` bigint(20) NOT NULL,
	`active` bit(1),
	`admin_email` varchar(255),
	`admin_name` varchar(100),
	`admin_password` varchar(60),
	`admin_a1` varchar(255),
	`admin_a2` varchar(255),
	`admin_a3` varchar(255),
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`admin_first_name` varchar(255),
	`last_access` DATETIME(6),
	`admin_last_name` varchar(255),
	`login_access` DATETIME(6),
	`admin_q1` varchar(255),
	`admin_q2` varchar(255),
	`admin_q3` varchar(255),
	`language_id` int(11),
	`merchant_id` int(11) NOT NULL
);

CREATE TABLE `user_connection` (
	`provider_id` varchar(255) NOT NULL,
	`provider_user_id` varchar(255) NOT NULL,
	`user_id` varchar(255) NOT NULL,
	`access_token` varchar(255),
	`display_name` varchar(255),
	`expire_time` bigint(20),
	`image_url` varchar(255),
	`profile_url` varchar(255),
	`refresh_token` varchar(255),
	`secret` varchar(255),
	`user_rank` int(11) NOT NULL
);

CREATE TABLE `user_group` (
	`user_id` bigint(20) NOT NULL,
	`group_id` int(11) NOT NULL
);

CREATE TABLE `zone` (
	`zone_id` bigint(20) NOT NULL,
	`zone_code` varchar(255) NOT NULL,
	`country_id` int(11) NOT NULL
);

CREATE TABLE `zone_description` (
	`description_id` bigint(20) NOT NULL,
	`date_created` DATETIME(6),
	`date_modified` DATETIME(6),
	`updt_id` varchar(20),
	`description` longtext,
	`name` varchar(120) NOT NULL,
	`title` varchar(100),
	`language_id` int(11) NOT NULL,
	`zone_id` bigint(20) NOT NULL
);

ALTER TABLE `category` ADD CONSTRAINT `category_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `category` ADD CONSTRAINT `category_fk1` FOREIGN KEY (`parent_id`) REFERENCES `category`(`category_id`);

ALTER TABLE `category_description` ADD CONSTRAINT `category_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `category_description` ADD CONSTRAINT `category_description_fk1` FOREIGN KEY (`category_id`) REFERENCES `category`(`category_id`);

ALTER TABLE `content` ADD CONSTRAINT `content_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `content_description` ADD CONSTRAINT `content_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `content_description` ADD CONSTRAINT `content_description_fk1` FOREIGN KEY (`content_id`) REFERENCES `content`(`content_id`);

ALTER TABLE `country` ADD CONSTRAINT `country_fk0` FOREIGN KEY (`geozone_id`) REFERENCES `geozone`(`geozone_id`);

ALTER TABLE `country_description` ADD CONSTRAINT `country_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `country_description` ADD CONSTRAINT `country_description_fk1` FOREIGN KEY (`country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `customer` ADD CONSTRAINT `customer_fk0` FOREIGN KEY (`billing_country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `customer` ADD CONSTRAINT `customer_fk1` FOREIGN KEY (`billing_zone_id`) REFERENCES `zone`(`zone_id`);

ALTER TABLE `customer` ADD CONSTRAINT `customer_fk2` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `customer` ADD CONSTRAINT `customer_fk3` FOREIGN KEY (`delivery_country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `customer` ADD CONSTRAINT `customer_fk4` FOREIGN KEY (`delivery_zone_id`) REFERENCES `zone`(`zone_id`);

ALTER TABLE `customer` ADD CONSTRAINT `customer_fk5` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `customer_attribute` ADD CONSTRAINT `customer_attribute_fk0` FOREIGN KEY (`customer_id`) REFERENCES `customer`(`customer_id`);

ALTER TABLE `customer_attribute` ADD CONSTRAINT `customer_attribute_fk1` FOREIGN KEY (`option_id`) REFERENCES `customer_option`(`customer_option_id`);

ALTER TABLE `customer_attribute` ADD CONSTRAINT `customer_attribute_fk2` FOREIGN KEY (`option_value_id`) REFERENCES `customer_option_value`(`customer_option_value_id`);

ALTER TABLE `customer_group` ADD CONSTRAINT `customer_group_fk0` FOREIGN KEY (`customer_id`) REFERENCES `customer`(`customer_id`);

ALTER TABLE `customer_group` ADD CONSTRAINT `customer_group_fk1` FOREIGN KEY (`group_id`) REFERENCES `sm_group`(`group_id`);

ALTER TABLE `customer_optin` ADD CONSTRAINT `customer_optin_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `customer_optin` ADD CONSTRAINT `customer_optin_fk1` FOREIGN KEY (`optin_id`) REFERENCES `optin`(`optin_id`);

ALTER TABLE `customer_option` ADD CONSTRAINT `customer_option_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `customer_option_desc` ADD CONSTRAINT `customer_option_desc_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `customer_option_desc` ADD CONSTRAINT `customer_option_desc_fk1` FOREIGN KEY (`customer_option_id`) REFERENCES `customer_option`(`customer_option_id`);

ALTER TABLE `customer_option_set` ADD CONSTRAINT `customer_option_set_fk0` FOREIGN KEY (`customer_option_id`) REFERENCES `customer_option`(`customer_option_id`);

ALTER TABLE `customer_option_set` ADD CONSTRAINT `customer_option_set_fk1` FOREIGN KEY (`customer_option_value_id`) REFERENCES `customer_option_value`(`customer_option_value_id`);

ALTER TABLE `customer_option_value` ADD CONSTRAINT `customer_option_value_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `customer_opt_val_description` ADD CONSTRAINT `customer_opt_val_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `customer_opt_val_description` ADD CONSTRAINT `customer_opt_val_description_fk1` FOREIGN KEY (`customer_opt_val_id`) REFERENCES `customer_option_value`(`customer_option_value_id`);

ALTER TABLE `customer_review` ADD CONSTRAINT `customer_review_fk0` FOREIGN KEY (`customers_id`) REFERENCES `customer`(`customer_id`);

ALTER TABLE `customer_review` ADD CONSTRAINT `customer_review_fk1` FOREIGN KEY (`reviewed_customer_id`) REFERENCES `customer`(`customer_id`);

ALTER TABLE `customer_review_description` ADD CONSTRAINT `customer_review_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `customer_review_description` ADD CONSTRAINT `customer_review_description_fk1` FOREIGN KEY (`customer_review_id`) REFERENCES `customer_review`(`customer_review_id`);

ALTER TABLE `file_history` ADD CONSTRAINT `file_history_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `geozone_description` ADD CONSTRAINT `geozone_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `geozone_description` ADD CONSTRAINT `geozone_description_fk1` FOREIGN KEY (`geozone_id`) REFERENCES `geozone`(`geozone_id`);

ALTER TABLE `manufacturer` ADD CONSTRAINT `manufacturer_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `manufacturer_description` ADD CONSTRAINT `manufacturer_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `manufacturer_description` ADD CONSTRAINT `manufacturer_description_fk1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer`(`manufacturer_id`);

ALTER TABLE `merchant_configuration` ADD CONSTRAINT `merchant_configuration_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `merchant_language` ADD CONSTRAINT `merchant_language_fk0` FOREIGN KEY (`stores_merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `merchant_language` ADD CONSTRAINT `merchant_language_fk1` FOREIGN KEY (`languages_language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `merchant_log` ADD CONSTRAINT `merchant_log_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `merchant_store` ADD CONSTRAINT `merchant_store_fk0` FOREIGN KEY (`country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `merchant_store` ADD CONSTRAINT `merchant_store_fk1` FOREIGN KEY (`currency_id`) REFERENCES `currency`(`currency_id`);

ALTER TABLE `merchant_store` ADD CONSTRAINT `merchant_store_fk2` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `merchant_store` ADD CONSTRAINT `merchant_store_fk3` FOREIGN KEY (`parent_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `merchant_store` ADD CONSTRAINT `merchant_store_fk4` FOREIGN KEY (`zone_id`) REFERENCES `zone`(`zone_id`);

ALTER TABLE `optin` ADD CONSTRAINT `optin_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk0` FOREIGN KEY (`billing_country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk1` FOREIGN KEY (`billing_zone_id`) REFERENCES `zone`(`zone_id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk2` FOREIGN KEY (`currency_id`) REFERENCES `currency`(`currency_id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk3` FOREIGN KEY (`delivery_country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk4` FOREIGN KEY (`delivery_zone_id`) REFERENCES `zone`(`zone_id`);

ALTER TABLE `orders` ADD CONSTRAINT `orders_fk5` FOREIGN KEY (`merchantid`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `order_account` ADD CONSTRAINT `order_account_fk0` FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`);

ALTER TABLE `order_account_product` ADD CONSTRAINT `order_account_product_fk0` FOREIGN KEY (`order_account_id`) REFERENCES `order_account`(`order_account_id`);

ALTER TABLE `order_account_product` ADD CONSTRAINT `order_account_product_fk1` FOREIGN KEY (`order_product_id`) REFERENCES `order_product`(`order_product_id`);

ALTER TABLE `order_attribute` ADD CONSTRAINT `order_attribute_fk0` FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`);

ALTER TABLE `order_product` ADD CONSTRAINT `order_product_fk0` FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`);

ALTER TABLE `order_product_attribute` ADD CONSTRAINT `order_product_attribute_fk0` FOREIGN KEY (`order_product_id`) REFERENCES `order_product`(`order_product_id`);

ALTER TABLE `order_product_download` ADD CONSTRAINT `order_product_download_fk0` FOREIGN KEY (`order_product_id`) REFERENCES `order_product`(`order_product_id`);

ALTER TABLE `order_product_price` ADD CONSTRAINT `order_product_price_fk0` FOREIGN KEY (`order_product_id`) REFERENCES `order_product`(`order_product_id`);

ALTER TABLE `order_status_history` ADD CONSTRAINT `order_status_history_fk0` FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`);

ALTER TABLE `order_total` ADD CONSTRAINT `order_total_fk0` FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`);

ALTER TABLE `permission_group` ADD CONSTRAINT `permission_group_fk0` FOREIGN KEY (`permission_id`) REFERENCES `permission`(`permission_id`);

ALTER TABLE `permission_group` ADD CONSTRAINT `permission_group_fk1` FOREIGN KEY (`group_id`) REFERENCES `sm_group`(`group_id`);

ALTER TABLE `product` ADD CONSTRAINT `product_fk0` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer`(`manufacturer_id`);

ALTER TABLE `product` ADD CONSTRAINT `product_fk1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `product` ADD CONSTRAINT `product_fk2` FOREIGN KEY (`customer_id`) REFERENCES `customer`(`customer_id`);

ALTER TABLE `product` ADD CONSTRAINT `product_fk3` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_class`(`tax_class_id`);

ALTER TABLE `product` ADD CONSTRAINT `product_fk4` FOREIGN KEY (`product_type_id`) REFERENCES `product_type`(`product_type_id`);

ALTER TABLE `product_attribute` ADD CONSTRAINT `product_attribute_fk0` FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`);

ALTER TABLE `product_attribute` ADD CONSTRAINT `product_attribute_fk1` FOREIGN KEY (`option_id`) REFERENCES `product_option`(`product_option_id`);

ALTER TABLE `product_attribute` ADD CONSTRAINT `product_attribute_fk2` FOREIGN KEY (`option_value_id`) REFERENCES `product_option_value`(`product_option_value_id`);

ALTER TABLE `product_availability` ADD CONSTRAINT `product_availability_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `product_availability` ADD CONSTRAINT `product_availability_fk1` FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`);

ALTER TABLE `product_category` ADD CONSTRAINT `product_category_fk0` FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`);

ALTER TABLE `product_category` ADD CONSTRAINT `product_category_fk1` FOREIGN KEY (`category_id`) REFERENCES `category`(`category_id`);

ALTER TABLE `product_description` ADD CONSTRAINT `product_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `product_description` ADD CONSTRAINT `product_description_fk1` FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`);

ALTER TABLE `product_digital` ADD CONSTRAINT `product_digital_fk0` FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`);

ALTER TABLE `product_image` ADD CONSTRAINT `product_image_fk0` FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`);

ALTER TABLE `product_image_description` ADD CONSTRAINT `product_image_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `product_image_description` ADD CONSTRAINT `product_image_description_fk1` FOREIGN KEY (`product_image_id`) REFERENCES `product_image`(`product_image_id`);

ALTER TABLE `product_option` ADD CONSTRAINT `product_option_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `product_option_desc` ADD CONSTRAINT `product_option_desc_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `product_option_desc` ADD CONSTRAINT `product_option_desc_fk1` FOREIGN KEY (`product_option_id`) REFERENCES `product_option`(`product_option_id`);

ALTER TABLE `product_option_value` ADD CONSTRAINT `product_option_value_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `product_option_value_description` ADD CONSTRAINT `product_option_value_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `product_option_value_description` ADD CONSTRAINT `product_option_value_description_fk1` FOREIGN KEY (`product_option_value_id`) REFERENCES `product_option_value`(`product_option_value_id`);

ALTER TABLE `product_price` ADD CONSTRAINT `product_price_fk0` FOREIGN KEY (`product_avail_id`) REFERENCES `product_availability`(`product_avail_id`);

ALTER TABLE `product_price_description` ADD CONSTRAINT `product_price_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `product_price_description` ADD CONSTRAINT `product_price_description_fk1` FOREIGN KEY (`product_price_id`) REFERENCES `product_price`(`product_price_id`);

ALTER TABLE `product_relationship` ADD CONSTRAINT `product_relationship_fk0` FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`);

ALTER TABLE `product_relationship` ADD CONSTRAINT `product_relationship_fk1` FOREIGN KEY (`related_product_id`) REFERENCES `product`(`product_id`);

ALTER TABLE `product_relationship` ADD CONSTRAINT `product_relationship_fk2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `product_review` ADD CONSTRAINT `product_review_fk0` FOREIGN KEY (`customers_id`) REFERENCES `customer`(`customer_id`);

ALTER TABLE `product_review` ADD CONSTRAINT `product_review_fk1` FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`);

ALTER TABLE `product_review_description` ADD CONSTRAINT `product_review_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `product_review_description` ADD CONSTRAINT `product_review_description_fk1` FOREIGN KEY (`product_review_id`) REFERENCES `product_review`(`product_review_id`);

ALTER TABLE `product_type` ADD CONSTRAINT `product_type_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `product_type_description` ADD CONSTRAINT `product_type_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `product_type_description` ADD CONSTRAINT `product_type_description_fk1` FOREIGN KEY (`product_type_id`) REFERENCES `product_price`(`product_price_id`);

ALTER TABLE `shiping_origin` ADD CONSTRAINT `shiping_origin_fk0` FOREIGN KEY (`country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `shiping_origin` ADD CONSTRAINT `shiping_origin_fk1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `shiping_origin` ADD CONSTRAINT `shiping_origin_fk2` FOREIGN KEY (`zone_id`) REFERENCES `zone`(`zone_id`);

ALTER TABLE `shipping_quote` ADD CONSTRAINT `shipping_quote_fk0` FOREIGN KEY (`delivery_country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `shipping_quote` ADD CONSTRAINT `shipping_quote_fk1` FOREIGN KEY (`delivery_zone_id`) REFERENCES `zone`(`zone_id`);

ALTER TABLE `shopping_cart` ADD CONSTRAINT `shopping_cart_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `shopping_cart_attr_item` ADD CONSTRAINT `shopping_cart_attr_item_fk0` FOREIGN KEY (`shp_cart_item_id`) REFERENCES `shopping_cart_item`(`shp_cart_item_id`);

ALTER TABLE `shopping_cart_item` ADD CONSTRAINT `shopping_cart_item_fk0` FOREIGN KEY (`shp_cart_id`) REFERENCES `shopping_cart`(`shp_cart_id`);

ALTER TABLE `sm_transaction` ADD CONSTRAINT `sm_transaction_fk0` FOREIGN KEY (`order_id`) REFERENCES `orders`(`order_id`);

ALTER TABLE `system_notification` ADD CONSTRAINT `system_notification_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `system_notification` ADD CONSTRAINT `system_notification_fk1` FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`);

ALTER TABLE `tax_class` ADD CONSTRAINT `tax_class_fk0` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `tax_rate` ADD CONSTRAINT `tax_rate_fk0` FOREIGN KEY (`country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `tax_rate` ADD CONSTRAINT `tax_rate_fk1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `tax_rate` ADD CONSTRAINT `tax_rate_fk2` FOREIGN KEY (`parent_id`) REFERENCES `tax_rate`(`tax_rate_id`);

ALTER TABLE `tax_rate` ADD CONSTRAINT `tax_rate_fk3` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_class`(`tax_class_id`);

ALTER TABLE `tax_rate` ADD CONSTRAINT `tax_rate_fk4` FOREIGN KEY (`zone_id`) REFERENCES `zone`(`zone_id`);

ALTER TABLE `tax_rate_description` ADD CONSTRAINT `tax_rate_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `tax_rate_description` ADD CONSTRAINT `tax_rate_description_fk1` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rate`(`tax_rate_id`);

ALTER TABLE `user` ADD CONSTRAINT `user_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `user` ADD CONSTRAINT `user_fk1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store`(`merchant_id`);

ALTER TABLE `user_group` ADD CONSTRAINT `user_group_fk0` FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`);

ALTER TABLE `user_group` ADD CONSTRAINT `user_group_fk1` FOREIGN KEY (`group_id`) REFERENCES `sm_group`(`group_id`);

ALTER TABLE `zone` ADD CONSTRAINT `zone_fk0` FOREIGN KEY (`country_id`) REFERENCES `country`(`country_id`);

ALTER TABLE `zone_description` ADD CONSTRAINT `zone_description_fk0` FOREIGN KEY (`language_id`) REFERENCES `language`(`language_id`);

ALTER TABLE `zone_description` ADD CONSTRAINT `zone_description_fk1` FOREIGN KEY (`zone_id`) REFERENCES `zone`(`zone_id`);

