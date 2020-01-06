-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2020 at 10:32 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `category_status` bit(1) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `depth` int(11) DEFAULT NULL,
  `featured` bit(1) DEFAULT NULL,
  `lineage` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_description`
--

CREATE TABLE `category_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `category_highlight` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(120) DEFAULT NULL,
  `sef_url` varchar(120) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `content_position` varchar(10) DEFAULT NULL,
  `content_type` varchar(10) DEFAULT NULL,
  `link_to_menu` bit(1) DEFAULT NULL,
  `product_group` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `content_description`
--

CREATE TABLE `content_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `sef_url` varchar(120) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `content_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_isocode` varchar(255) NOT NULL,
  `country_supported` bit(1) DEFAULT NULL,
  `geozone_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `country_description`
--

CREATE TABLE `country_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` bigint(20) NOT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_currency_code` varchar(255) NOT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `currency_supported` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` bigint(20) NOT NULL,
  `customer_anonymous` bit(1) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `billing_street_address` varchar(256) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_company` varchar(100) DEFAULT NULL,
  `billing_first_name` varchar(64) NOT NULL,
  `billing_last_name` varchar(64) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `billing_postcode` varchar(20) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_telephone` varchar(32) DEFAULT NULL,
  `customer_company` varchar(100) DEFAULT NULL,
  `review_avg` decimal(19,2) DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL,
  `customer_dob` datetime(6) DEFAULT NULL,
  `delivery_street_address` varchar(256) DEFAULT NULL,
  `delivery_city` varchar(100) DEFAULT NULL,
  `delivery_company` varchar(100) DEFAULT NULL,
  `delivery_first_name` varchar(64) DEFAULT NULL,
  `delivery_last_name` varchar(64) DEFAULT NULL,
  `delivery_postcode` varchar(20) DEFAULT NULL,
  `delivery_state` varchar(100) DEFAULT NULL,
  `delivery_telephone` varchar(32) DEFAULT NULL,
  `customer_email_address` varchar(96) NOT NULL,
  `customer_gender` varchar(1) DEFAULT NULL,
  `customer_nick` varchar(96) DEFAULT NULL,
  `customer_password` varchar(60) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `billing_country_id` int(11) NOT NULL,
  `billing_zone_id` bigint(20) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `delivery_country_id` int(11) DEFAULT NULL,
  `delivery_zone_id` bigint(20) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_attribute`
--

CREATE TABLE `customer_attribute` (
  `customer_attribute_id` bigint(20) NOT NULL,
  `customer_attr_txt_val` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `option_id` bigint(20) NOT NULL,
  `option_value_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `customer_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_optin`
--

CREATE TABLE `customer_optin` (
  `customer_optin_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first` varchar(255) DEFAULT NULL,
  `last` varchar(255) DEFAULT NULL,
  `optin_date` datetime(6) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `merchant_id` int(11) NOT NULL,
  `optin_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_option`
--

CREATE TABLE `customer_option` (
  `customer_option_id` bigint(20) NOT NULL,
  `customer_opt_active` bit(1) DEFAULT NULL,
  `customer_opt_code` varchar(255) DEFAULT NULL,
  `customer_option_type` varchar(10) DEFAULT NULL,
  `customer_opt_public` bit(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_option_desc`
--

CREATE TABLE `customer_option_desc` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `customer_option_comment` longtext DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `customer_option_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_option_set`
--

CREATE TABLE `customer_option_set` (
  `customer_optionset_id` bigint(20) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `customer_option_id` bigint(20) NOT NULL,
  `customer_option_value_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_option_value`
--

CREATE TABLE `customer_option_value` (
  `customer_option_value_id` bigint(20) NOT NULL,
  `customer_opt_val_code` varchar(255) DEFAULT NULL,
  `customer_opt_val_image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_opt_val_description`
--

CREATE TABLE `customer_opt_val_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `customer_opt_val_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_review`
--

CREATE TABLE `customer_review` (
  `customer_review_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `review_date` datetime(6) DEFAULT NULL,
  `reviews_rating` double DEFAULT NULL,
  `reviews_read` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `customers_id` bigint(20) DEFAULT NULL,
  `reviewed_customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_review_description`
--

CREATE TABLE `customer_review_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `customer_review_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `file_history`
--

CREATE TABLE `file_history` (
  `file_history_id` bigint(20) NOT NULL,
  `accounted_date` datetime(6) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `date_deleted` datetime(6) DEFAULT NULL,
  `download_count` int(11) NOT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `filesize` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `geozone`
--

CREATE TABLE `geozone` (
  `geozone_id` bigint(20) NOT NULL,
  `geozone_code` varchar(255) DEFAULT NULL,
  `geozone_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `geozone_description`
--

CREATE TABLE `geozone_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `geozone_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `manufacturer_image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer_description`
--

CREATE TABLE `manufacturer_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date_last_click` datetime(6) DEFAULT NULL,
  `manufacturers_url` varchar(255) DEFAULT NULL,
  `url_clicked` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `manufacturer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_configuration`
--

CREATE TABLE `merchant_configuration` (
  `merchant_config_id` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `config_key` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_language`
--

CREATE TABLE `merchant_language` (
  `stores_merchant_id` int(11) NOT NULL,
  `languages_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_log`
--

CREATE TABLE `merchant_log` (
  `merchant_log_id` bigint(20) NOT NULL,
  `log` longtext DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_store`
--

CREATE TABLE `merchant_store` (
  `merchant_id` int(11) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `store_code` varchar(100) NOT NULL,
  `continueshoppingurl` varchar(150) DEFAULT NULL,
  `currency_format_national` bit(1) DEFAULT NULL,
  `domain_name` varchar(80) DEFAULT NULL,
  `in_business_since` date DEFAULT NULL,
  `invoice_template` varchar(25) DEFAULT NULL,
  `is_retailer` bit(1) DEFAULT NULL,
  `seizeunitcode` varchar(5) DEFAULT NULL,
  `store_email` varchar(60) NOT NULL,
  `store_logo` varchar(100) DEFAULT NULL,
  `store_template` varchar(25) DEFAULT NULL,
  `store_address` varchar(255) DEFAULT NULL,
  `store_city` varchar(100) DEFAULT NULL,
  `store_name` varchar(100) NOT NULL,
  `store_phone` varchar(50) DEFAULT NULL,
  `store_postal_code` varchar(15) DEFAULT NULL,
  `store_state_prov` varchar(100) DEFAULT NULL,
  `use_cache` bit(1) DEFAULT NULL,
  `weightunitcode` varchar(5) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `currency_id` bigint(20) NOT NULL,
  `language_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `zone_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `module_configuration`
--

CREATE TABLE `module_configuration` (
  `module_conf_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `details` longtext DEFAULT NULL,
  `configuration` longtext DEFAULT NULL,
  `custom_ind` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `regions` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `optin`
--

CREATE TABLE `optin` (
  `optin_id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `billing_street_address` varchar(256) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_company` varchar(100) DEFAULT NULL,
  `billing_first_name` varchar(64) NOT NULL,
  `billing_last_name` varchar(64) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `billing_postcode` varchar(20) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_telephone` varchar(32) DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `confirmed_address` bit(1) DEFAULT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `cc_cvv` varchar(255) DEFAULT NULL,
  `cc_expires` varchar(255) DEFAULT NULL,
  `cc_number` varchar(255) DEFAULT NULL,
  `cc_owner` varchar(255) DEFAULT NULL,
  `currency_value` decimal(19,2) DEFAULT NULL,
  `customer_agreed` bit(1) DEFAULT NULL,
  `customer_email_address` varchar(50) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `date_purchased` date DEFAULT NULL,
  `delivery_street_address` varchar(256) DEFAULT NULL,
  `delivery_city` varchar(100) DEFAULT NULL,
  `delivery_company` varchar(100) DEFAULT NULL,
  `delivery_first_name` varchar(64) DEFAULT NULL,
  `delivery_last_name` varchar(64) DEFAULT NULL,
  `delivery_postcode` varchar(20) DEFAULT NULL,
  `delivery_state` varchar(100) DEFAULT NULL,
  `delivery_telephone` varchar(32) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `last_modified` datetime(6) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `order_date_finished` datetime(6) DEFAULT NULL,
  `order_type` varchar(255) DEFAULT NULL,
  `payment_module_code` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `shipping_module_code` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `order_total` decimal(19,2) DEFAULT NULL,
  `billing_country_id` int(11) NOT NULL,
  `billing_zone_id` bigint(20) DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `delivery_country_id` int(11) DEFAULT NULL,
  `delivery_zone_id` bigint(20) DEFAULT NULL,
  `merchantid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_account`
--

CREATE TABLE `order_account` (
  `order_account_id` bigint(20) NOT NULL,
  `order_account_bill_day` int(11) NOT NULL,
  `order_account_end_date` date DEFAULT NULL,
  `order_account_start_date` date NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_account_product`
--

CREATE TABLE `order_account_product` (
  `order_account_product_id` bigint(20) NOT NULL,
  `order_account_product_accnt_dt` date DEFAULT NULL,
  `order_account_product_end_dt` date DEFAULT NULL,
  `order_account_product_eot` datetime(6) DEFAULT NULL,
  `order_account_product_l_st_dt` datetime(6) DEFAULT NULL,
  `order_account_product_l_trx_st` int(11) NOT NULL,
  `order_account_product_pm_fr_ty` int(11) NOT NULL,
  `order_account_product_st_dt` date NOT NULL,
  `order_account_product_status` int(11) NOT NULL,
  `order_account_id` bigint(20) NOT NULL,
  `order_product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_attribute`
--

CREATE TABLE `order_attribute` (
  `order_attribute_id` bigint(20) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_product_id` bigint(20) NOT NULL,
  `onetime_charge` decimal(19,2) NOT NULL,
  `product_name` varchar(64) NOT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_sku` varchar(255) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_attribute`
--

CREATE TABLE `order_product_attribute` (
  `order_product_attribute_id` bigint(20) NOT NULL,
  `product_attribute_is_free` bit(1) NOT NULL,
  `product_attribute_name` varchar(255) DEFAULT NULL,
  `product_attribute_price` decimal(15,4) NOT NULL,
  `product_attribute_val_name` varchar(255) DEFAULT NULL,
  `product_attribute_weight` decimal(15,4) DEFAULT NULL,
  `product_option_id` bigint(20) NOT NULL,
  `product_option_value_id` bigint(20) NOT NULL,
  `order_product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_download`
--

CREATE TABLE `order_product_download` (
  `order_product_download_id` bigint(20) NOT NULL,
  `download_count` int(11) NOT NULL,
  `download_maxdays` int(11) NOT NULL,
  `order_product_filename` varchar(255) NOT NULL,
  `order_product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_price`
--

CREATE TABLE `order_product_price` (
  `order_product_price_id` bigint(20) NOT NULL,
  `default_price` bit(1) NOT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_price_code` varchar(64) NOT NULL,
  `product_price_name` varchar(255) DEFAULT NULL,
  `product_price_special` decimal(19,2) DEFAULT NULL,
  `prd_price_special_end_dt` datetime(6) DEFAULT NULL,
  `prd_price_special_st_dt` datetime(6) DEFAULT NULL,
  `order_product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_status_history`
--

CREATE TABLE `order_status_history` (
  `order_status_history_id` bigint(20) NOT NULL,
  `comments` longtext DEFAULT NULL,
  `customer_notified` int(11) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_total`
--

CREATE TABLE `order_total` (
  `order_account_id` bigint(20) NOT NULL,
  `module` varchar(60) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `order_total_type` varchar(255) DEFAULT NULL,
  `order_value_type` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `text` longtext DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` decimal(15,4) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `permission_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `cond` int(11) DEFAULT NULL,
  `date_available` datetime(6) DEFAULT NULL,
  `preorder` bit(1) DEFAULT NULL,
  `product_height` decimal(19,2) DEFAULT NULL,
  `product_free` bit(1) DEFAULT NULL,
  `product_length` decimal(19,2) DEFAULT NULL,
  `quantity_ordered` int(11) DEFAULT NULL,
  `review_avg` decimal(19,2) DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL,
  `product_ship` bit(1) DEFAULT NULL,
  `product_virtual` bit(1) DEFAULT NULL,
  `product_weight` decimal(19,2) DEFAULT NULL,
  `product_width` decimal(19,2) DEFAULT NULL,
  `ref_sku` varchar(255) DEFAULT NULL,
  `rental_duration` int(11) DEFAULT NULL,
  `rental_period` int(11) DEFAULT NULL,
  `rental_status` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `manufacturer_id` bigint(20) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `tax_class_id` bigint(20) DEFAULT NULL,
  `product_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE `product_attribute` (
  `product_attribute_id` bigint(20) NOT NULL,
  `product_attribute_default` bit(1) DEFAULT NULL,
  `product_attribute_discounted` bit(1) DEFAULT NULL,
  `product_attribute_for_disp` bit(1) DEFAULT NULL,
  `product_attribute_required` bit(1) DEFAULT NULL,
  `product_attribute_free` bit(1) DEFAULT NULL,
  `product_atribute_price` decimal(19,2) DEFAULT NULL,
  `product_attribute_weight` decimal(19,2) DEFAULT NULL,
  `product_attribute_sort_ord` int(11) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `option_id` bigint(20) NOT NULL,
  `option_value_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_availability`
--

CREATE TABLE `product_availability` (
  `product_avail_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `free_shipping` bit(1) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_ord_max` int(11) DEFAULT NULL,
  `quantity_ord_min` int(11) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `region_variant` varchar(255) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

CREATE TABLE `product_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `download_lnk` varchar(255) DEFAULT NULL,
  `product_highlight` varchar(255) DEFAULT NULL,
  `sef_url` varchar(255) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_digital`
--

CREATE TABLE `product_digital` (
  `product_digital_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `product_image_id` bigint(20) NOT NULL,
  `default_image` bit(1) DEFAULT NULL,
  `image_crop` bit(1) DEFAULT NULL,
  `image_type` int(11) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_image_url` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_image_description`
--

CREATE TABLE `product_image_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `alt_tag` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `product_image_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

CREATE TABLE `product_option` (
  `product_option_id` bigint(20) NOT NULL,
  `product_option_code` varchar(255) DEFAULT NULL,
  `product_option_sort_ord` int(11) DEFAULT NULL,
  `product_option_type` varchar(10) DEFAULT NULL,
  `product_option_read` bit(1) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_option_desc`
--

CREATE TABLE `product_option_desc` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `product_option_comment` longtext DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `product_option_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_option_value`
--

CREATE TABLE `product_option_value` (
  `product_option_value_id` bigint(20) NOT NULL,
  `product_option_val_code` varchar(255) DEFAULT NULL,
  `product_opt_for_disp` bit(1) DEFAULT NULL,
  `product_opt_val_image` varchar(255) DEFAULT NULL,
  `product_opt_val_sort_ord` int(11) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_option_value_description`
--

CREATE TABLE `product_option_value_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `product_option_value_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_price`
--

CREATE TABLE `product_price` (
  `product_price_id` bigint(20) NOT NULL,
  `product_price_code` varchar(255) NOT NULL,
  `default_price` bit(1) DEFAULT NULL,
  `product_price_amount` decimal(19,2) NOT NULL,
  `product_price_special_amount` decimal(19,2) DEFAULT NULL,
  `product_price_special_end_date` date DEFAULT NULL,
  `product_price_special_st_date` date DEFAULT NULL,
  `product_price_type` varchar(20) DEFAULT NULL,
  `product_avail_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_price_description`
--

CREATE TABLE `product_price_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `product_price_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_relationship`
--

CREATE TABLE `product_relationship` (
  `product_relationship_id` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `related_product_id` bigint(20) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `product_review_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `review_date` datetime(6) DEFAULT NULL,
  `reviews_rating` double DEFAULT NULL,
  `reviews_read` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `customers_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_review_description`
--

CREATE TABLE `product_review_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `product_review_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `product_type_id` bigint(20) NOT NULL,
  `prd_type_add_to_cart` bit(1) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `prd_type_code` varchar(255) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_type_description`
--

CREATE TABLE `product_type_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `product_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shiping_origin`
--

CREATE TABLE `shiping_origin` (
  `ship_origin_id` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `street_address` varchar(256) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL,
  `zone_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_quote`
--

CREATE TABLE `shipping_quote` (
  `shipping_quote_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `delivery_street_address` varchar(256) DEFAULT NULL,
  `delivery_city` varchar(100) DEFAULT NULL,
  `delivery_company` varchar(100) DEFAULT NULL,
  `delivery_first_name` varchar(64) DEFAULT NULL,
  `delivery_last_name` varchar(64) DEFAULT NULL,
  `delivery_postcode` varchar(20) DEFAULT NULL,
  `delivery_state` varchar(100) DEFAULT NULL,
  `delivery_telephone` varchar(32) DEFAULT NULL,
  `shipping_number_days` int(11) DEFAULT NULL,
  `free_shipping` bit(1) DEFAULT NULL,
  `quote_handling` decimal(19,2) DEFAULT NULL,
  `module` varchar(255) NOT NULL,
  `option_code` varchar(255) DEFAULT NULL,
  `option_delivery_date` datetime(6) DEFAULT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `option_shipping_date` datetime(6) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `quote_price` decimal(19,2) DEFAULT NULL,
  `quote_date` datetime(6) DEFAULT NULL,
  `delivery_country_id` int(11) DEFAULT NULL,
  `delivery_zone_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `shp_cart_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `shp_cart_code` varchar(255) NOT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_attr_item`
--

CREATE TABLE `shopping_cart_attr_item` (
  `shp_cart_attr_item_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `product_attr_id` bigint(20) NOT NULL,
  `shp_cart_item_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_item`
--

CREATE TABLE `shopping_cart_item` (
  `shp_cart_item_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shp_cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sm_group`
--

CREATE TABLE `sm_group` (
  `group_id` int(11) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `group_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sm_transaction`
--

CREATE TABLE `sm_transaction` (
  `transaction_id` bigint(20) NOT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `transaction_date` datetime(6) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_configuration`
--

CREATE TABLE `system_configuration` (
  `system_config_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `config_key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_notification`
--

CREATE TABLE `system_notification` (
  `system_notif_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `config_key` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` bigint(20) NOT NULL,
  `tax_class_code` varchar(10) NOT NULL,
  `tax_class_title` varchar(32) NOT NULL,
  `merchant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `tax_rate_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `tax_code` varchar(255) DEFAULT NULL,
  `piggyback` bit(1) DEFAULT NULL,
  `store_state_prov` varchar(100) DEFAULT NULL,
  `tax_priority` int(11) DEFAULT NULL,
  `tax_rate` decimal(7,4) NOT NULL,
  `country_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `tax_class_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_description`
--

CREATE TABLE `tax_rate_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `tax_rate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `admin_email` varchar(255) DEFAULT NULL,
  `admin_name` varchar(100) DEFAULT NULL,
  `admin_password` varchar(60) DEFAULT NULL,
  `admin_a1` varchar(255) DEFAULT NULL,
  `admin_a2` varchar(255) DEFAULT NULL,
  `admin_a3` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `admin_first_name` varchar(255) DEFAULT NULL,
  `last_access` datetime(6) DEFAULT NULL,
  `admin_last_name` varchar(255) DEFAULT NULL,
  `login_access` datetime(6) DEFAULT NULL,
  `admin_q1` varchar(255) DEFAULT NULL,
  `admin_q2` varchar(255) DEFAULT NULL,
  `admin_q3` varchar(255) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_connection`
--

CREATE TABLE `user_connection` (
  `provider_id` varchar(255) NOT NULL,
  `provider_user_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `expire_time` bigint(20) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `profile_url` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `user_rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `zone_id` bigint(20) NOT NULL,
  `zone_code` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zone_description`
--

CREATE TABLE `zone_description` (
  `description_id` bigint(20) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `updt_id` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `zone_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `UK43eimtph12w3in686ufqyrfen` (`merchant_id`,`code`),
  ADD KEY `FK2y94svpmqttx80mshyny85wqr` (`parent_id`);

--
-- Indexes for table `category_description`
--
ALTER TABLE `category_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UKj86xg9q2umw8u8et9sbfbsph5` (`category_id`,`language_id`),
  ADD KEY `FKtbbtihri94lo8wwou6gs9acrt` (`language_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `UKarp2mu6w0ldc2fsbsvrr2h2oq` (`merchant_id`,`code`);

--
-- Indexes for table `content_description`
--
ALTER TABLE `content_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UKfrkqw8gr1kexiuv0h76s6xvpr` (`content_id`,`language_id`),
  ADD KEY `FKbfq2ntr9ebqrdeueuy94gordd` (`language_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `UK_ojpfhnup1d46c2gtjfn0kdptw` (`country_isocode`),
  ADD KEY `FKdkldrhiqa274imykuh0p8icb` (`geozone_id`);

--
-- Indexes for table `country_description`
--
ALTER TABLE `country_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UKlkb1vgcxje49l1ky7n8qt1wk8` (`country_id`,`language_id`),
  ADD KEY `FKorknwk5v8t484n6goauqlw2jj` (`language_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `UK_166n2gj29i7mri2bgrjm8hqy8` (`currency_currency_code`),
  ADD UNIQUE KEY `UK_7n17ygajjchsso2n0lyxrsyif` (`currency_code`),
  ADD UNIQUE KEY `UK_ntgaxtcgi6crpijka4yu7927o` (`currency_name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FKfaowmep2brbb0f973vnuw9cr3` (`billing_country_id`),
  ADD KEY `FKduvvfcfgokno59eki42x1biuq` (`billing_zone_id`),
  ADD KEY `FKptjfm48g49mrkhravgibb02h7` (`language_id`),
  ADD KEY `FK6cwqotnrr8rh9hrw0sn1kt1e6` (`delivery_country_id`),
  ADD KEY `FK8yqdxfoqy25vvy56gs68k9p4` (`delivery_zone_id`),
  ADD KEY `FKjmp2kgdhcnqs121y0wfh82pdw` (`merchant_id`);

--
-- Indexes for table `customer_attribute`
--
ALTER TABLE `customer_attribute`
  ADD PRIMARY KEY (`customer_attribute_id`),
  ADD UNIQUE KEY `UKsoy0ia28b7ehe2rru8c5q5v87` (`option_id`,`customer_id`),
  ADD KEY `FKkt9jyeddekdvrhcx806k7os0g` (`customer_id`),
  ADD KEY `FKsipgdm09ffity5b9g5c50jx3w` (`option_value_id`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD KEY `FK37ejf8g2duw45e5lopd3l8w6p` (`group_id`),
  ADD KEY `FKbopjkmu9mriivehbk9yd6rbvw` (`customer_id`);

--
-- Indexes for table `customer_optin`
--
ALTER TABLE `customer_optin`
  ADD PRIMARY KEY (`customer_optin_id`),
  ADD UNIQUE KEY `UKmaibabrcxys6ij7ifc1iqggb` (`email`,`optin_id`),
  ADD KEY `FKr9yh0yi3o1r2pf3ol642ei6gj` (`merchant_id`),
  ADD KEY `FKr1uwied13q1bdptgap3vdu8xb` (`optin_id`);

--
-- Indexes for table `customer_option`
--
ALTER TABLE `customer_option`
  ADD PRIMARY KEY (`customer_option_id`),
  ADD UNIQUE KEY `UK3b7r9dspg90juo2u8iu3e45bn` (`merchant_id`,`customer_opt_code`),
  ADD KEY `CUST_OPT_CODE_IDX` (`customer_opt_code`);

--
-- Indexes for table `customer_option_desc`
--
ALTER TABLE `customer_option_desc`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UK2mhxxxmla4klhbm68vuhectmn` (`customer_option_id`,`language_id`),
  ADD KEY `FKhalrtqiqm06t2s17lwnu2icos` (`language_id`);

--
-- Indexes for table `customer_option_set`
--
ALTER TABLE `customer_option_set`
  ADD PRIMARY KEY (`customer_optionset_id`),
  ADD UNIQUE KEY `UK1lqrcukylq7x2te82cai3t7y9` (`customer_option_id`,`customer_option_value_id`),
  ADD KEY `FKo2ohdbcnl065c2u3icfya9688` (`customer_option_value_id`);

--
-- Indexes for table `customer_option_value`
--
ALTER TABLE `customer_option_value`
  ADD PRIMARY KEY (`customer_option_value_id`),
  ADD UNIQUE KEY `UKsukgvqnjcdoybbfq9gm8abavu` (`merchant_id`,`customer_opt_val_code`),
  ADD KEY `CUST_OPT_VAL_CODE_IDX` (`customer_opt_val_code`);

--
-- Indexes for table `customer_opt_val_description`
--
ALTER TABLE `customer_opt_val_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UKc9ph5ry410o66gc1rwnd648lr` (`customer_opt_val_id`,`language_id`),
  ADD KEY `FKigy69gv3asw6r90hno6vc3vu4` (`language_id`);

--
-- Indexes for table `customer_review`
--
ALTER TABLE `customer_review`
  ADD PRIMARY KEY (`customer_review_id`),
  ADD UNIQUE KEY `UKpe13frashysxlaqa4rcms49j6` (`customers_id`,`reviewed_customer_id`),
  ADD KEY `FKrt9to366jismmfdap0onydy9c` (`reviewed_customer_id`);

--
-- Indexes for table `customer_review_description`
--
ALTER TABLE `customer_review_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UK70jse47ia0srsp2t9p97nrpp1` (`customer_review_id`,`language_id`),
  ADD KEY `FKellhkha3lu8w2b5kuuujj5d38` (`language_id`);

--
-- Indexes for table `file_history`
--
ALTER TABLE `file_history`
  ADD PRIMARY KEY (`file_history_id`),
  ADD UNIQUE KEY `UKrd7na1n326tk1wbqnd2v77xfe` (`merchant_id`,`file_id`);

--
-- Indexes for table `geozone`
--
ALTER TABLE `geozone`
  ADD PRIMARY KEY (`geozone_id`);

--
-- Indexes for table `geozone_description`
--
ALTER TABLE `geozone_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UK9c0pjwa1uruwhqnv6x7rb4x1j` (`geozone_id`,`language_id`),
  ADD KEY `FKb5ti8ksr90esthy3knbjut8n1` (`language_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`),
  ADD UNIQUE KEY `UKp2mxknv7k8tgyovc42u5ohasj` (`merchant_id`,`code`);

--
-- Indexes for table `manufacturer_description`
--
ALTER TABLE `manufacturer_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UKn2xody8lg6steenheu0anried` (`manufacturer_id`,`language_id`),
  ADD KEY `FK3afpqu1x4cmhbrux611kpvu5i` (`language_id`);

--
-- Indexes for table `merchant_configuration`
--
ALTER TABLE `merchant_configuration`
  ADD PRIMARY KEY (`merchant_config_id`),
  ADD UNIQUE KEY `UKq3kc48q2c3fmku9qb12k91b27` (`merchant_id`,`config_key`);

--
-- Indexes for table `merchant_language`
--
ALTER TABLE `merchant_language`
  ADD KEY `FK9rwrfjsumvmq3dnnl5at4whfw` (`languages_language_id`),
  ADD KEY `FKj2fld4p6gttsjajxd4eul3fyj` (`stores_merchant_id`);

--
-- Indexes for table `merchant_log`
--
ALTER TABLE `merchant_log`
  ADD PRIMARY KEY (`merchant_log_id`),
  ADD KEY `FK2sbquy58b7aw2s0hf47531db1` (`merchant_id`);

--
-- Indexes for table `merchant_store`
--
ALTER TABLE `merchant_store`
  ADD PRIMARY KEY (`merchant_id`),
  ADD UNIQUE KEY `UK_acooxdls88ynobig2dpu6whum` (`store_code`),
  ADD KEY `FKi8ejnku0mrte0hku5i1lpcjt8` (`country_id`),
  ADD KEY `FKs3ilgl79s6f9rcsgate0vmw1c` (`currency_id`),
  ADD KEY `FKoc6wtwuhiwk6lc2q677bl7e5w` (`language_id`),
  ADD KEY `FK66mkgbwobrqrkeo0iatcm3dib` (`parent_id`),
  ADD KEY `FK6rwca37ioi3tqpfxupmuyrgd0` (`zone_id`);

--
-- Indexes for table `module_configuration`
--
ALTER TABLE `module_configuration`
  ADD PRIMARY KEY (`module_conf_id`);

--
-- Indexes for table `optin`
--
ALTER TABLE `optin`
  ADD PRIMARY KEY (`optin_id`),
  ADD UNIQUE KEY `UK38ltbua8g8pplg8k4w0jxnh69` (`merchant_id`,`code`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK5ynmp6ibx15b6xilw3d8ssqt6` (`billing_country_id`),
  ADD KEY `FKhuynwr7s98867e5ooemlmcagu` (`billing_zone_id`),
  ADD KEY `FK4g9gno7ww2i06rxkfl3vbrgcu` (`currency_id`),
  ADD KEY `FK4fi5e3yv4cl23arphenx4cc4a` (`delivery_country_id`),
  ADD KEY `FKehld6io3ukp9wm0fypp04dbfg` (`delivery_zone_id`),
  ADD KEY `FKgdi0met0f4kt5mvhkt1hh51un` (`merchantid`);

--
-- Indexes for table `order_account`
--
ALTER TABLE `order_account`
  ADD PRIMARY KEY (`order_account_id`),
  ADD KEY `FKtdb599f1si18ktq25o4w5tsau` (`order_id`);

--
-- Indexes for table `order_account_product`
--
ALTER TABLE `order_account_product`
  ADD PRIMARY KEY (`order_account_product_id`),
  ADD KEY `FK238g8uilgxlh5fa6ieub3ods` (`order_account_id`),
  ADD KEY `FKl3rvhrb6nq9sdb1nai9cr9klm` (`order_product_id`);

--
-- Indexes for table `order_attribute`
--
ALTER TABLE `order_attribute`
  ADD PRIMARY KEY (`order_attribute_id`),
  ADD KEY `FKpfbrs3waqlbp0yeohck8sx91c` (`order_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `FKl5mnj9n0di7k1v90yxnthkc73` (`order_id`);

--
-- Indexes for table `order_product_attribute`
--
ALTER TABLE `order_product_attribute`
  ADD PRIMARY KEY (`order_product_attribute_id`),
  ADD KEY `FK9w04pur2suf544spmowxfr3xg` (`order_product_id`);

--
-- Indexes for table `order_product_download`
--
ALTER TABLE `order_product_download`
  ADD PRIMARY KEY (`order_product_download_id`),
  ADD KEY `FKmy1bxlfoja5v2pmo9vq76l7ry` (`order_product_id`);

--
-- Indexes for table `order_product_price`
--
ALTER TABLE `order_product_price`
  ADD PRIMARY KEY (`order_product_price_id`),
  ADD KEY `FKoh8f95nugkcqxflqo1rist0g1` (`order_product_id`);

--
-- Indexes for table `order_status_history`
--
ALTER TABLE `order_status_history`
  ADD PRIMARY KEY (`order_status_history_id`),
  ADD KEY `FKnmcbg3mmbt8wfva97ra40nmp3` (`order_id`);

--
-- Indexes for table `order_total`
--
ALTER TABLE `order_total`
  ADD PRIMARY KEY (`order_account_id`),
  ADD KEY `FKsyu55314fmsbvx76nxyvo2ejj` (`order_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`),
  ADD UNIQUE KEY `UK_l3pmqryh8vgle52647itattb9` (`permission_name`);

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD KEY `FKono3u9yciwi4w10tu2xf2gvxg` (`group_id`),
  ADD KEY `FKcn775l61gpimtyac31up3vbg5` (`permission_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `UKmsy2l9x6ji651n5yrpflbqc3c` (`merchant_id`,`sku`),
  ADD KEY `FK89igr5j06uw5ps04djxgom0l1` (`manufacturer_id`),
  ADD KEY `FKj80n6400wnfqrt86qimf9k6ys` (`customer_id`),
  ADD KEY `FKlvugcfbptp5ey8cp4x65ck4p` (`tax_class_id`),
  ADD KEY `FKlabq3c2e90ybbxk58rc48byqo` (`product_type_id`);

--
-- Indexes for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`product_attribute_id`),
  ADD UNIQUE KEY `UKd10bjk5oofj1a7e3xbct88mj9` (`option_id`,`option_value_id`,`product_id`),
  ADD KEY `FKlefs59y5kmsbu017n1wp10gf2` (`product_id`),
  ADD KEY `FK136df306o3xt00l44t3708t23` (`option_value_id`);

--
-- Indexes for table `product_availability`
--
ALTER TABLE `product_availability`
  ADD PRIMARY KEY (`product_avail_id`),
  ADD KEY `FKjd7yvpi4dongh1kb4sqwro0m1` (`merchant_id`),
  ADD KEY `FK3sgpu0mqt3cncaw0k1x3okkq8` (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `FKkud35ls1d40wpjb5htpp14q4e` (`category_id`);

--
-- Indexes for table `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UKn8onply0evnma0i5p5c9gxy0s` (`product_id`,`language_id`),
  ADD KEY `FKku17r6yhalvxil8504iqr59ju` (`language_id`);

--
-- Indexes for table `product_digital`
--
ALTER TABLE `product_digital`
  ADD PRIMARY KEY (`product_digital_id`),
  ADD UNIQUE KEY `UKg6qeecrifgaebprc185e880lq` (`product_id`,`file_name`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `FK6oo0cvcdtb6qmwsga468uuukk` (`product_id`);

--
-- Indexes for table `product_image_description`
--
ALTER TABLE `product_image_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UK6y94rqwurfscf7w7y42gnakfa` (`product_image_id`,`language_id`),
  ADD KEY `FKqr8g6kxnfke72qcwxdmwpqe6j` (`language_id`);

--
-- Indexes for table `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`product_option_id`),
  ADD UNIQUE KEY `UKcueag9xcotjhcm8lw6cwg4ciw` (`merchant_id`,`product_option_code`),
  ADD KEY `PRD_OPTION_CODE_IDX` (`product_option_code`);

--
-- Indexes for table `product_option_desc`
--
ALTER TABLE `product_option_desc`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UKq2vbyw6wuwqonud6pa6sixn57` (`product_option_id`,`language_id`),
  ADD KEY `FKp3ifcq30la3xh2hor0s4pb6j6` (`language_id`);

--
-- Indexes for table `product_option_value`
--
ALTER TABLE `product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`),
  ADD UNIQUE KEY `UK5gus3qerf7649mgredge03qgl` (`merchant_id`,`product_option_val_code`),
  ADD KEY `PRD_OPTION_VAL_CODE_IDX` (`product_option_val_code`);

--
-- Indexes for table `product_option_value_description`
--
ALTER TABLE `product_option_value_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UK1vmuygxxf688xmi4s4jfid6sf` (`product_option_value_id`,`language_id`),
  ADD KEY `FKkrhgf4hps8ynjj4wcof292qtt` (`language_id`);

--
-- Indexes for table `product_price`
--
ALTER TABLE `product_price`
  ADD PRIMARY KEY (`product_price_id`),
  ADD KEY `FKth2oyk1000w7vut9aro9a8mhi` (`product_avail_id`);

--
-- Indexes for table `product_price_description`
--
ALTER TABLE `product_price_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UKcxb8qgr4bg8a36cod9wkkailj` (`product_price_id`,`language_id`),
  ADD KEY `FK2vyx638admfe7pfepeicyblrs` (`language_id`);

--
-- Indexes for table `product_relationship`
--
ALTER TABLE `product_relationship`
  ADD PRIMARY KEY (`product_relationship_id`),
  ADD KEY `FK7opqd0ko4gr45r2lpmiyr9sai` (`product_id`),
  ADD KEY `FKg6fbs35996omj1d4iw2upkdmn` (`related_product_id`),
  ADD KEY `FKegrxb6o6wlsw2i1fnh34ifwpg` (`merchant_id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`product_review_id`),
  ADD UNIQUE KEY `UKceks6ffaawgis0aa58s7fpxfc` (`customers_id`,`product_id`),
  ADD KEY `FKkaqmhakwt05p3n0px81b9pdya` (`product_id`);

--
-- Indexes for table `product_review_description`
--
ALTER TABLE `product_review_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UK12abuw7g7vx45bgvq1ygydxbu` (`product_review_id`,`language_id`),
  ADD KEY `FK3wrvfyaqeji5ax62poagpadst` (`language_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_type_id`),
  ADD KEY `FKngfrya457x3tdwc3rr90jcr69` (`merchant_id`);

--
-- Indexes for table `product_type_description`
--
ALTER TABLE `product_type_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UK8xd9w50ra7erihiv86qvxhh4b` (`product_type_id`,`language_id`),
  ADD KEY `FK1kksm1bur0ue7684apw7k5m9s` (`language_id`);

--
-- Indexes for table `shiping_origin`
--
ALTER TABLE `shiping_origin`
  ADD PRIMARY KEY (`ship_origin_id`),
  ADD KEY `FK1sodi5w3xrkk8roguytwpg413` (`country_id`),
  ADD KEY `FKahnd2m0h56gj13kqcc7u9su18` (`merchant_id`),
  ADD KEY `FKqlt6eky3radsqa21sh4ku4bxy` (`zone_id`);

--
-- Indexes for table `shipping_quote`
--
ALTER TABLE `shipping_quote`
  ADD PRIMARY KEY (`shipping_quote_id`),
  ADD KEY `FKlqymoy371jgpl2l3qmynr54gh` (`delivery_country_id`),
  ADD KEY `FK3beir3ypxv4iw1y0ybvxu6bwu` (`delivery_zone_id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`shp_cart_id`),
  ADD UNIQUE KEY `UK_g6b5qebd5yvy3msjrus23vw51` (`shp_cart_code`),
  ADD KEY `SHP_CART_CODE_IDX` (`shp_cart_code`),
  ADD KEY `SHP_CART_CUSTOMER_IDX` (`customer_id`),
  ADD KEY `FK34a665fn3dmkxhgs968u2aa6s` (`merchant_id`);

--
-- Indexes for table `shopping_cart_attr_item`
--
ALTER TABLE `shopping_cart_attr_item`
  ADD PRIMARY KEY (`shp_cart_attr_item_id`),
  ADD KEY `FKt3iw5nxx7h55j5vta1tyrvgv3` (`shp_cart_item_id`);

--
-- Indexes for table `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  ADD PRIMARY KEY (`shp_cart_item_id`),
  ADD KEY `FK10kmhpldycqc7cvn24tesj8yx` (`shp_cart_id`);

--
-- Indexes for table `sm_group`
--
ALTER TABLE `sm_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `UK_5yavgmoqcvpwodpntbt8046ib` (`group_name`);

--
-- Indexes for table `sm_transaction`
--
ALTER TABLE `sm_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `FKdgyct8065xy9kp7entj7lcgsj` (`order_id`);

--
-- Indexes for table `system_configuration`
--
ALTER TABLE `system_configuration`
  ADD PRIMARY KEY (`system_config_id`);

--
-- Indexes for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`system_notif_id`),
  ADD UNIQUE KEY `UK8wv4eyixlmqcjohfw29vhxceo` (`merchant_id`,`config_key`),
  ADD KEY `FK2j4j1cpbkn0h5vg6pxeup4ue` (`user_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`),
  ADD UNIQUE KEY `UK4bosvt4pv3waxai9yfa76nn0a` (`merchant_id`,`tax_class_code`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD UNIQUE KEY `UKjeva529krcnmobeqftq4e26pc` (`tax_code`,`merchant_id`),
  ADD KEY `FK6nx17w066c6xyoixlox1w1ljr` (`country_id`),
  ADD KEY `FKdfopp56727rdxxsikrokhlc5g` (`merchant_id`),
  ADD KEY `FKhm0j4gnvkomofkt9icu5a2rwj` (`parent_id`),
  ADD KEY `FKdpsh7ijtsvl76sdf3owmw85ti` (`tax_class_id`),
  ADD KEY `FKslh4l8myhwh28bh4otco52b7d` (`zone_id`);

--
-- Indexes for table `tax_rate_description`
--
ALTER TABLE `tax_rate_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UKgi5fqf4m874igqntxqy2ja5a` (`tax_rate_id`,`language_id`),
  ADD KEY `FKm6rc5u361xdpyxnp18sn0p2bh` (`language_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UKbv6fvl31f24qukpmrnqaq5h8w` (`merchant_id`,`admin_name`),
  ADD KEY `FKj9k2portqypgs993xn20pywtr` (`language_id`);

--
-- Indexes for table `user_connection`
--
ALTER TABLE `user_connection`
  ADD PRIMARY KEY (`provider_id`,`provider_user_id`,`user_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD KEY `FK1affuy6buav1nuigp9musflp9` (`group_id`),
  ADD KEY `FK1c1dsw3q36679vaiqwvtv36a6` (`user_id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`zone_id`),
  ADD UNIQUE KEY `UK_sdhgvsfolxelu1uw6157vvt17` (`zone_code`),
  ADD KEY `FKjd0ph7dy8trl6m0lyid2eicsb` (`country_id`);

--
-- Indexes for table `zone_description`
--
ALTER TABLE `zone_description`
  ADD PRIMARY KEY (`description_id`),
  ADD UNIQUE KEY `UK1lywe2n7c0qe9mvn1mjogivmi` (`zone_id`,`language_id`),
  ADD KEY `FK3bhgm7w9u4lmb1oct3icvp55j` (`language_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK2y94svpmqttx80mshyny85wqr` FOREIGN KEY (`parent_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `FK4chm5kmqglsek38bmj82xtcvp` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `category_description`
--
ALTER TABLE `category_description`
  ADD CONSTRAINT `FKcf1yvvfw0o7fvhxpryuetekcb` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `FKtbbtihri94lo8wwou6gs9acrt` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `FKkhljxdts61bnfuhwmn2oj8wbi` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `content_description`
--
ALTER TABLE `content_description`
  ADD CONSTRAINT `FKbfq2ntr9ebqrdeueuy94gordd` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKlu77slp5yqo5p281lk6vdpppi` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `FKdkldrhiqa274imykuh0p8icb` FOREIGN KEY (`geozone_id`) REFERENCES `geozone` (`geozone_id`);

--
-- Constraints for table `country_description`
--
ALTER TABLE `country_description`
  ADD CONSTRAINT `FKcqt2eksj1ucfg822rlx0ah55m` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FKorknwk5v8t484n6goauqlw2jj` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK6cwqotnrr8rh9hrw0sn1kt1e6` FOREIGN KEY (`delivery_country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FK8yqdxfoqy25vvy56gs68k9p4` FOREIGN KEY (`delivery_zone_id`) REFERENCES `zone` (`zone_id`),
  ADD CONSTRAINT `FKduvvfcfgokno59eki42x1biuq` FOREIGN KEY (`billing_zone_id`) REFERENCES `zone` (`zone_id`),
  ADD CONSTRAINT `FKfaowmep2brbb0f973vnuw9cr3` FOREIGN KEY (`billing_country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FKjmp2kgdhcnqs121y0wfh82pdw` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`),
  ADD CONSTRAINT `FKptjfm48g49mrkhravgibb02h7` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `customer_attribute`
--
ALTER TABLE `customer_attribute`
  ADD CONSTRAINT `FKkt9jyeddekdvrhcx806k7os0g` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `FKm7j9jcewyjmeh5ai9nsuuvi8i` FOREIGN KEY (`option_id`) REFERENCES `customer_option` (`customer_option_id`),
  ADD CONSTRAINT `FKsipgdm09ffity5b9g5c50jx3w` FOREIGN KEY (`option_value_id`) REFERENCES `customer_option_value` (`customer_option_value_id`);

--
-- Constraints for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD CONSTRAINT `FK37ejf8g2duw45e5lopd3l8w6p` FOREIGN KEY (`group_id`) REFERENCES `sm_group` (`group_id`),
  ADD CONSTRAINT `FKbopjkmu9mriivehbk9yd6rbvw` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `customer_optin`
--
ALTER TABLE `customer_optin`
  ADD CONSTRAINT `FKr1uwied13q1bdptgap3vdu8xb` FOREIGN KEY (`optin_id`) REFERENCES `optin` (`optin_id`),
  ADD CONSTRAINT `FKr9yh0yi3o1r2pf3ol642ei6gj` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `customer_option`
--
ALTER TABLE `customer_option`
  ADD CONSTRAINT `FKdum9l2iu04mak11vja3rik25s` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `customer_option_desc`
--
ALTER TABLE `customer_option_desc`
  ADD CONSTRAINT `FK201v4egnnqx20q6qky676mks2` FOREIGN KEY (`customer_option_id`) REFERENCES `customer_option` (`customer_option_id`),
  ADD CONSTRAINT `FKhalrtqiqm06t2s17lwnu2icos` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `customer_option_set`
--
ALTER TABLE `customer_option_set`
  ADD CONSTRAINT `FKiuve99ti5qr9j3qvth1yujjmh` FOREIGN KEY (`customer_option_id`) REFERENCES `customer_option` (`customer_option_id`),
  ADD CONSTRAINT `FKo2ohdbcnl065c2u3icfya9688` FOREIGN KEY (`customer_option_value_id`) REFERENCES `customer_option_value` (`customer_option_value_id`);

--
-- Constraints for table `customer_option_value`
--
ALTER TABLE `customer_option_value`
  ADD CONSTRAINT `FKbko1uy19v04ih6kxqfmll6qam` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `customer_opt_val_description`
--
ALTER TABLE `customer_opt_val_description`
  ADD CONSTRAINT `FKigy69gv3asw6r90hno6vc3vu4` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKmej30yqti7y4t4iqsq15t9yc3` FOREIGN KEY (`customer_opt_val_id`) REFERENCES `customer_option_value` (`customer_option_value_id`);

--
-- Constraints for table `customer_review`
--
ALTER TABLE `customer_review`
  ADD CONSTRAINT `FKrt9to366jismmfdap0onydy9c` FOREIGN KEY (`reviewed_customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `FKtnsb170ewuhjtok3p50nuaby2` FOREIGN KEY (`customers_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `customer_review_description`
--
ALTER TABLE `customer_review_description`
  ADD CONSTRAINT `FK3nu9inejlfrkcig7ppv3glhrh` FOREIGN KEY (`customer_review_id`) REFERENCES `customer_review` (`customer_review_id`),
  ADD CONSTRAINT `FKellhkha3lu8w2b5kuuujj5d38` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `file_history`
--
ALTER TABLE `file_history`
  ADD CONSTRAINT `FK5af1oi3bg5513rvlo5le3kn7w` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `geozone_description`
--
ALTER TABLE `geozone_description`
  ADD CONSTRAINT `FKb5ti8ksr90esthy3knbjut8n1` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKmq8egxrpyx60s17ng3kbx80ex` FOREIGN KEY (`geozone_id`) REFERENCES `geozone` (`geozone_id`);

--
-- Constraints for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD CONSTRAINT `FKi7iwd1i0u4djj3g8xrohy7lc2` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `manufacturer_description`
--
ALTER TABLE `manufacturer_description`
  ADD CONSTRAINT `FK2cpxn0kaionj660yaqdln4sfi` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`),
  ADD CONSTRAINT `FK3afpqu1x4cmhbrux611kpvu5i` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `merchant_configuration`
--
ALTER TABLE `merchant_configuration`
  ADD CONSTRAINT `FKfe4kl75tt58f3p01ma990jk2n` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `merchant_language`
--
ALTER TABLE `merchant_language`
  ADD CONSTRAINT `FK9rwrfjsumvmq3dnnl5at4whfw` FOREIGN KEY (`languages_language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKj2fld4p6gttsjajxd4eul3fyj` FOREIGN KEY (`stores_merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `merchant_log`
--
ALTER TABLE `merchant_log`
  ADD CONSTRAINT `FK2sbquy58b7aw2s0hf47531db1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `merchant_store`
--
ALTER TABLE `merchant_store`
  ADD CONSTRAINT `FK66mkgbwobrqrkeo0iatcm3dib` FOREIGN KEY (`parent_id`) REFERENCES `merchant_store` (`merchant_id`),
  ADD CONSTRAINT `FK6rwca37ioi3tqpfxupmuyrgd0` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`),
  ADD CONSTRAINT `FKi8ejnku0mrte0hku5i1lpcjt8` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FKoc6wtwuhiwk6lc2q677bl7e5w` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKs3ilgl79s6f9rcsgate0vmw1c` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`);

--
-- Constraints for table `optin`
--
ALTER TABLE `optin`
  ADD CONSTRAINT `FKbwy7klvqr4nj5wws0lp6qeyit` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK4fi5e3yv4cl23arphenx4cc4a` FOREIGN KEY (`delivery_country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FK4g9gno7ww2i06rxkfl3vbrgcu` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK5ynmp6ibx15b6xilw3d8ssqt6` FOREIGN KEY (`billing_country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FKehld6io3ukp9wm0fypp04dbfg` FOREIGN KEY (`delivery_zone_id`) REFERENCES `zone` (`zone_id`),
  ADD CONSTRAINT `FKgdi0met0f4kt5mvhkt1hh51un` FOREIGN KEY (`merchantid`) REFERENCES `merchant_store` (`merchant_id`),
  ADD CONSTRAINT `FKhuynwr7s98867e5ooemlmcagu` FOREIGN KEY (`billing_zone_id`) REFERENCES `zone` (`zone_id`);

--
-- Constraints for table `order_account`
--
ALTER TABLE `order_account`
  ADD CONSTRAINT `FKtdb599f1si18ktq25o4w5tsau` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `order_account_product`
--
ALTER TABLE `order_account_product`
  ADD CONSTRAINT `FK238g8uilgxlh5fa6ieub3ods` FOREIGN KEY (`order_account_id`) REFERENCES `order_account` (`order_account_id`),
  ADD CONSTRAINT `FKl3rvhrb6nq9sdb1nai9cr9klm` FOREIGN KEY (`order_product_id`) REFERENCES `order_product` (`order_product_id`);

--
-- Constraints for table `order_attribute`
--
ALTER TABLE `order_attribute`
  ADD CONSTRAINT `FKpfbrs3waqlbp0yeohck8sx91c` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `FKl5mnj9n0di7k1v90yxnthkc73` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `order_product_attribute`
--
ALTER TABLE `order_product_attribute`
  ADD CONSTRAINT `FK9w04pur2suf544spmowxfr3xg` FOREIGN KEY (`order_product_id`) REFERENCES `order_product` (`order_product_id`);

--
-- Constraints for table `order_product_download`
--
ALTER TABLE `order_product_download`
  ADD CONSTRAINT `FKmy1bxlfoja5v2pmo9vq76l7ry` FOREIGN KEY (`order_product_id`) REFERENCES `order_product` (`order_product_id`);

--
-- Constraints for table `order_product_price`
--
ALTER TABLE `order_product_price`
  ADD CONSTRAINT `FKoh8f95nugkcqxflqo1rist0g1` FOREIGN KEY (`order_product_id`) REFERENCES `order_product` (`order_product_id`);

--
-- Constraints for table `order_status_history`
--
ALTER TABLE `order_status_history`
  ADD CONSTRAINT `FKnmcbg3mmbt8wfva97ra40nmp3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `order_total`
--
ALTER TABLE `order_total`
  ADD CONSTRAINT `FKsyu55314fmsbvx76nxyvo2ejj` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD CONSTRAINT `FKcn775l61gpimtyac31up3vbg5` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  ADD CONSTRAINT `FKono3u9yciwi4w10tu2xf2gvxg` FOREIGN KEY (`group_id`) REFERENCES `sm_group` (`group_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK89igr5j06uw5ps04djxgom0l1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`),
  ADD CONSTRAINT `FKd6g3hw493iyhotyyo2k31te6n` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`),
  ADD CONSTRAINT `FKj80n6400wnfqrt86qimf9k6ys` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `FKlabq3c2e90ybbxk58rc48byqo` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`product_type_id`),
  ADD CONSTRAINT `FKlvugcfbptp5ey8cp4x65ck4p` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_class` (`tax_class_id`);

--
-- Constraints for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD CONSTRAINT `FK136df306o3xt00l44t3708t23` FOREIGN KEY (`option_value_id`) REFERENCES `product_option_value` (`product_option_value_id`),
  ADD CONSTRAINT `FK9bv3sx347ljlhjp2vtghkd9om` FOREIGN KEY (`option_id`) REFERENCES `product_option` (`product_option_id`),
  ADD CONSTRAINT `FKlefs59y5kmsbu017n1wp10gf2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_availability`
--
ALTER TABLE `product_availability`
  ADD CONSTRAINT `FK3sgpu0mqt3cncaw0k1x3okkq8` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FKjd7yvpi4dongh1kb4sqwro0m1` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK2k3smhbruedlcrvu6clued06x` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FKkud35ls1d40wpjb5htpp14q4e` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `product_description`
--
ALTER TABLE `product_description`
  ADD CONSTRAINT `FK9iiotbwtk1n1b6dgga729sg9q` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FKku17r6yhalvxil8504iqr59ju` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `product_digital`
--
ALTER TABLE `product_digital`
  ADD CONSTRAINT `FKr5um4hejfu56oysveb3e5xs8j` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK6oo0cvcdtb6qmwsga468uuukk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_image_description`
--
ALTER TABLE `product_image_description`
  ADD CONSTRAINT `FK9k3u9pf3teymlxchgu9p4jd9e` FOREIGN KEY (`product_image_id`) REFERENCES `product_image` (`product_image_id`),
  ADD CONSTRAINT `FKqr8g6kxnfke72qcwxdmwpqe6j` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `product_option`
--
ALTER TABLE `product_option`
  ADD CONSTRAINT `FK170kledavgj3195k0thrne5ap` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `product_option_desc`
--
ALTER TABLE `product_option_desc`
  ADD CONSTRAINT `FKp3ifcq30la3xh2hor0s4pb6j6` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKtrmohor3afrj5vhs5rawi8vu0` FOREIGN KEY (`product_option_id`) REFERENCES `product_option` (`product_option_id`);

--
-- Constraints for table `product_option_value`
--
ALTER TABLE `product_option_value`
  ADD CONSTRAINT `FKatyp79676dqksps89ustg7rxl` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `product_option_value_description`
--
ALTER TABLE `product_option_value_description`
  ADD CONSTRAINT `FKkrhgf4hps8ynjj4wcof292qtt` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKnl1ctkjjk7dn2g94n3w2lf6ro` FOREIGN KEY (`product_option_value_id`) REFERENCES `product_option_value` (`product_option_value_id`);

--
-- Constraints for table `product_price`
--
ALTER TABLE `product_price`
  ADD CONSTRAINT `FKth2oyk1000w7vut9aro9a8mhi` FOREIGN KEY (`product_avail_id`) REFERENCES `product_availability` (`product_avail_id`);

--
-- Constraints for table `product_price_description`
--
ALTER TABLE `product_price_description`
  ADD CONSTRAINT `FK2vyx638admfe7pfepeicyblrs` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKghwl7kccj71r4u0qdwegbles6` FOREIGN KEY (`product_price_id`) REFERENCES `product_price` (`product_price_id`);

--
-- Constraints for table `product_relationship`
--
ALTER TABLE `product_relationship`
  ADD CONSTRAINT `FK7opqd0ko4gr45r2lpmiyr9sai` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FKegrxb6o6wlsw2i1fnh34ifwpg` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`),
  ADD CONSTRAINT `FKg6fbs35996omj1d4iw2upkdmn` FOREIGN KEY (`related_product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `FKkaqmhakwt05p3n0px81b9pdya` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FKofeixop0udspl2l0l617um4j4` FOREIGN KEY (`customers_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `product_review_description`
--
ALTER TABLE `product_review_description`
  ADD CONSTRAINT `FK3wrvfyaqeji5ax62poagpadst` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKcv4tyhkx5sid0tqeofg3f4oa0` FOREIGN KEY (`product_review_id`) REFERENCES `product_review` (`product_review_id`);

--
-- Constraints for table `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `FKngfrya457x3tdwc3rr90jcr69` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `product_type_description`
--
ALTER TABLE `product_type_description`
  ADD CONSTRAINT `FK1kksm1bur0ue7684apw7k5m9s` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FK8xbcuethanr8qr5ul080whnnv` FOREIGN KEY (`product_type_id`) REFERENCES `product_price` (`product_price_id`);

--
-- Constraints for table `shiping_origin`
--
ALTER TABLE `shiping_origin`
  ADD CONSTRAINT `FK1sodi5w3xrkk8roguytwpg413` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FKahnd2m0h56gj13kqcc7u9su18` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`),
  ADD CONSTRAINT `FKqlt6eky3radsqa21sh4ku4bxy` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`);

--
-- Constraints for table `shipping_quote`
--
ALTER TABLE `shipping_quote`
  ADD CONSTRAINT `FK3beir3ypxv4iw1y0ybvxu6bwu` FOREIGN KEY (`delivery_zone_id`) REFERENCES `zone` (`zone_id`),
  ADD CONSTRAINT `FKlqymoy371jgpl2l3qmynr54gh` FOREIGN KEY (`delivery_country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `FK34a665fn3dmkxhgs968u2aa6s` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `shopping_cart_attr_item`
--
ALTER TABLE `shopping_cart_attr_item`
  ADD CONSTRAINT `FKt3iw5nxx7h55j5vta1tyrvgv3` FOREIGN KEY (`shp_cart_item_id`) REFERENCES `shopping_cart_item` (`shp_cart_item_id`);

--
-- Constraints for table `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  ADD CONSTRAINT `FK10kmhpldycqc7cvn24tesj8yx` FOREIGN KEY (`shp_cart_id`) REFERENCES `shopping_cart` (`shp_cart_id`);

--
-- Constraints for table `sm_transaction`
--
ALTER TABLE `sm_transaction`
  ADD CONSTRAINT `FKdgyct8065xy9kp7entj7lcgsj` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD CONSTRAINT `FK2j4j1cpbkn0h5vg6pxeup4ue` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKociw21uspehpp8xxqn2wxd4so` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD CONSTRAINT `FK7oovh2wiim8s1nuppyxl8dcms` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`);

--
-- Constraints for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD CONSTRAINT `FK6nx17w066c6xyoixlox1w1ljr` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FKdfopp56727rdxxsikrokhlc5g` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`),
  ADD CONSTRAINT `FKdpsh7ijtsvl76sdf3owmw85ti` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_class` (`tax_class_id`),
  ADD CONSTRAINT `FKhm0j4gnvkomofkt9icu5a2rwj` FOREIGN KEY (`parent_id`) REFERENCES `tax_rate` (`tax_rate_id`),
  ADD CONSTRAINT `FKslh4l8myhwh28bh4otco52b7d` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`);

--
-- Constraints for table `tax_rate_description`
--
ALTER TABLE `tax_rate_description`
  ADD CONSTRAINT `FKcy14oyw2f30xg3mdswvcsy66` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rate` (`tax_rate_id`),
  ADD CONSTRAINT `FKm6rc5u361xdpyxnp18sn0p2bh` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK9dej7b0qqgemnlna4bq7m96mp` FOREIGN KEY (`merchant_id`) REFERENCES `merchant_store` (`merchant_id`),
  ADD CONSTRAINT `FKj9k2portqypgs993xn20pywtr` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `user_group`
--
ALTER TABLE `user_group`
  ADD CONSTRAINT `FK1affuy6buav1nuigp9musflp9` FOREIGN KEY (`group_id`) REFERENCES `sm_group` (`group_id`),
  ADD CONSTRAINT `FK1c1dsw3q36679vaiqwvtv36a6` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `zone`
--
ALTER TABLE `zone`
  ADD CONSTRAINT `FKjd0ph7dy8trl6m0lyid2eicsb` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints for table `zone_description`
--
ALTER TABLE `zone_description`
  ADD CONSTRAINT `FK3bhgm7w9u4lmb1oct3icvp55j` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FKkgubo9lvv7fyi3yug7692evh9` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
