-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.25-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.2.0.4675
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 simpleapp_development 的数据库结构
DROP DATABASE IF EXISTS `simpleapp_development`;
CREATE DATABASE IF NOT EXISTS `simpleapp_development` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `simpleapp_development`;


-- 导出  表 simpleapp_development.articles 结构
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.articles 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'The test first acticle', 'method delete_all Importance_2\r\nRuby on Rails latest stable (v4.2.7) - 0 notes - Class: ActiveRecord::Base\r\n1.0.0\r\n1.1.1\r\n1.1.6\r\n1.2.0\r\n1.2.6\r\n2.0.0\r\n2.0.3\r\n(16)\r\n2.1.0\r\n2.2.1\r\n(11)\r\n2.3.2\r\n(2)\r\n2.3.8\r\n3.0.0\r\n3.0.5\r\n3.0.9\r\n3.1.0\r\n3.2.1\r\n3.2.3\r\n3.2.8\r\n3.2.13\r\n4.0.2\r\n4.1.8\r\n4.2.1\r\n4.2.7\r\nWhat\'s this?\r\nRelated methods\r\nClass methods (218)\r\nImportance_1_sm === (<= v3.2.13)\r\nImportance_1_sm abstract_class? (<= v3.1.0)\r\nImportance_1_sm accessible_attributes (<= v2.3.8)\r\nImportance_0_sm active_connection_name (<= v2.1.0)\r\nImportance_1_sm add_conditions!  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm add_group!  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm add_joins!  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm add_limit!  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm add_lock!  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm add_order!  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm aggregate_mapping  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm all (<= v2.3.8)\r\nImportance_0_sm all_attributes_exists?  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm allow_concurrency (<= v2.3.8)\r\nImportance_1_sm allow_concurrency= (<= v2.3.8)\r\nImportance_0_sm arel_engine (<= v3.2.13)\r\nImportance_0_sm arel_table (<= v3.2.13)\r\nImportance_0_sm array_of_strings?  Icon_private_sm (<= v2.3.8)\r\nImportance_2_sm attr_accessible (<= v2.3.8)\r\nImportance_0_sm attribute_condition  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm attribute_method? (<= v3.1.0)\r\nImportance_1_sm attribute_names (<= v3.1.0)\r\nImportance_1_sm attributes_protected_by_def...  Icon_private_sm (<= v3.1.0)\r\nImportance_2_sm attr_protected (<= v2.3.8)\r\nImportance_1_sm attr_readonly (<= v3.1.0)\r\nImportance_1_sm base_class (<= v3.1.0)\r\nImportance_0_sm before_remove_const (<= v3.1.0)\r\nImportance_2_sm benchmark (<= v2.3.8)\r\nImportance_0_sm build_default_scope  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm class_name (<= v2.3.8)\r\nImportance_1_sm class_name_of_active_record...  Icon_protected_sm (<= v2.3.8)\r\nImportance_1_sm class_of_active_record_desc...  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm clear_active_connection_name (<= v2.1.0)\r\nImportance_0_sm clear_active_connections! (<= v3.2.13)\r\nImportance_0_sm clear_all_cached_connections!  Icon_private_sm (<= v2.1.0)\r\nImportance_0_sm clear_cache! (<= v3.1.0)\r\nImportance_1_sm clear_connection_cache! (<= v1.0.0)\r\nImportance_1_sm clear_reloadable_connections! (<= v2.1.0)\r\nImportance_0_sm colorize_logging (<= v3.0.9)\r\nImportance_1_sm colorize_logging= (<= v3.0.9)\r\nImportance_1_sm column_defaults (<= v3.1.0)\r\nImportance_1_sm column_methods_hash (<= v3.1.0)\r\nImportance_1_sm column_names (<= v3.1.0)\r\nImportance_1_sm columns (<= v3.1.0)\r\nImportance_1_sm columns_hash (<= v3.1.0)\r\nImportance_1_sm compute_table_name  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm compute_type  Icon_protected_sm (<= v3.1.0)\r\nImportance_2_sm configurations (<= v3.2.13)\r\nImportance_1_sm connected? (<= v3.2.13)\r\nImportance_2_sm connection (<= v3.2.13)\r\nImportance_1_sm connection= (<= v2.1.0)\r\nImportance_1_sm connection_config (<= v3.2.13)\r\nImportance_1_sm connection_handler (<= v3.2.13)\r\nImportance_0_sm connection_id (<= v3.2.13)\r\nImportance_0_sm connection_id= (<= v3.2.13)\r\nImportance_0_sm connection_pool (<= v3.2.13)\r\nImportance_0_sm construct_attributes_from_a...  Icon_private_sm (<= v3.0.9)\r\nImportance_0_sm construct_conditions_from_a...  Icon_private_sm (<= v1.1.6)\r\nImportance_0_sm construct_finder_arel  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm construct_finder_sql  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm content_columns (<= v3.1.0)\r\nImportance_2_sm count (<= v1.0.0)\r\nImportance_2_sm count_by_sql (<= v3.1.0)\r\nImportance_3_sm create (<= v3.1.0)\r\nImportance_0_sm current_scope  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm current_scope=  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm current_scoped_methods  Icon_protected_sm (<= v3.0.9)\r\nImportance_1_sm decrement_counter (<= v2.3.8)\r\nImportance_5_sm default_scope  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm default_select  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm default_timezone (<= v3.2.13)\r\nImportance_2_sm define_attr_method  Icon_private_sm (<= v2.3.8)\r\nImportance_2_sm delete (<= v2.3.8)\r\nImportance_2_sm delete_all (<= v2.3.8)\r\nImportance_1_sm descends_from_active_record? (<= v3.1.0)\r\nImportance_2_sm destroy (<= v2.3.8)\r\nImportance_2_sm destroy_all (<= v2.3.8)\r\nImportance_0_sm determine_deprecated_finder  Icon_private_sm (<= v1.2.6)\r\nImportance_0_sm determine_finder  Icon_private_sm (<= v2.1.0)\r\nImportance_0_sm determine_instantiator  Icon_private_sm (<= v2.1.0)\r\nImportance_0_sm encode_quoted_value  Icon_protected_sm (<= v3.1.0)\r\nImportance_3_sm establish_connection (<= v3.2.13)\r\nImportance_1_sm evaluate_default_scope  Icon_protected_sm (<= v3.1.0)\r\nImportance_5_sm exists? (<= v2.3.8)\r\nImportance_1_sm expand_attribute_names_for_...  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm expand_hash_conditions_for_...  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm expand_id_conditions  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm expand_range_bind_variables  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm extract_attribute_names_fro...  Icon_private_sm (<= v2.1.0)\r\nImportance_0_sm extract_options_from_args!  Icon_protected_sm (<= v1.0.0)\r\nImportance_5_sm find (<= v2.3.8)\r\nImportance_3_sm find_by_sql (<= v3.1.0)\r\nImportance_0_sm finder_needs_type_condition? (<= v3.1.0)\r\nImportance_0_sm find_every  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm find_from_ids  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm find_initial  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm find_last  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm find_one  Icon_private_sm (<= v2.3.8)\r\nImportance_2_sm find_some  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm find_sti_class  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm first (<= v2.3.8)\r\nImportance_0_sm full_table_name_prefix (<= v3.1.0)\r\nImportance_0_sm generated_feature_methods (<= v3.2.13)\r\nImportance_0_sm get_primary_key (<= v2.3.8)\r\nImportance_4_sm human_attribute_name (<= v2.3.8)\r\nImportance_2_sm human_name (<= v2.3.8)\r\nImportance_1_sm i18n_scope (<= v3.1.0)\r\nImportance_0_sm ignore_default_scope=  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm ignore_default_scope?  Icon_protected_sm (<= v3.1.0)\r\nImportance_3_sm increment_counter (<= v2.3.8)\r\nImportance_3_sm inheritance_column (<= v3.1.0)\r\nImportance_1_sm inheritance_column= (<= v3.1.0)\r\nImportance_0_sm inherited (<= v3.2.13)\r\nImportance_0_sm initialize_generated_modules (<= v3.2.13)\r\nImportance_1_sm inspect (<= v3.2.13)\r\nImportance_1_sm instantiate (<= v3.1.0)\r\nImportance_1_sm last (<= v2.3.8)\r\nImportance_1_sm log_connections (<= v2.1.0)\r\nImportance_1_sm logger (<= v3.2.13)\r\nImportance_1_sm lookup_ancestors (<= v3.1.0)\r\nImportance_0_sm matches_dynamic_finder?  Icon_private_sm (<= v2.1.0)\r\nImportance_0_sm matches_dynamic_finder_with...  Icon_private_sm (<= v2.1.0)\r\nImportance_1_sm merge_conditions (<= v2.3.8)\r\nImportance_1_sm merge_includes  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm merge_joins  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm method_missing  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm mysql2_connection (<= v3.2.13)\r\nImportance_1_sm mysql_connection (<= v3.2.13)\r\nImportance_4_sm new (<= v3.2.13)\r\nImportance_0_sm parse_config!  Icon_private_sm (<= v1.2.6)\r\nImportance_0_sm parse_sqlite_config!  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm pluralize_table_names (<= v3.1.0)\r\nImportance_1_sm postgresql_connection (<= v3.2.13)\r\nImportance_1_sm primary_key (<= v2.3.8)\r\nImportance_1_sm primary_key_prefix_type (<= v3.1.0)\r\nImportance_1_sm protected_attributes (<= v2.3.8)\r\nImportance_0_sm quote_bound_value  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm quoted_table_name (<= v3.1.0)\r\nImportance_0_sm quote_value (<= v3.1.0)\r\nImportance_0_sm raise_if_bind_arity_mismatch  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm read_methods (<= v1.0.0)\r\nImportance_1_sm readonly_attributes (<= v3.1.0)\r\nImportance_0_sm relation  Icon_private_sm (<= v3.2.13)\r\nImportance_0_sm remove_connection (<= v3.2.13)\r\nImportance_1_sm remove_stale_cached_threads!  Icon_private_sm (<= v2.1.0)\r\nImportance_0_sm replace_bind_variables  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm replace_named_bind_variables  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm require_mysql (<= v2.1.0)\r\nImportance_2_sm reset_column_information (<= v3.1.0)\r\nImportance_0_sm reset_column_information_an... (<= v3.0.9)\r\nImportance_1_sm reset_counters (<= v2.3.8)\r\nImportance_0_sm reset_primary_key (<= v2.3.8)\r\nImportance_0_sm reset_scoped_methods  Icon_protected_sm (<= v3.0.9)\r\nImportance_0_sm reset_sequence_name (<= v3.1.0)\r\nImportance_0_sm reset_subclasses (<= v3.0.9)\r\nImportance_1_sm reset_table_name (<= v3.1.0)\r\nImportance_0_sm respond_to? (<= v3.1.0)\r\nImportance_0_sm retrieve_connection (<= v3.2.13)\r\nImportance_0_sm reverse_sql_order  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm safe_to_array  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm sanitize (<= v3.1.0)\r\nImportance_1_sm sanitize_conditions  Icon_protected_sm (<= v3.1.0)\r\nImportance_3_sm sanitize_sql  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm sanitize_sql_array  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm sanitize_sql_for_assignment  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm sanitize_sql_for_conditions  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm sanitize_sql_hash  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm sanitize_sql_hash_for_assig...  Icon_protected_sm (<= v3.1.0)\r\nImportance_2_sm sanitize_sql_hash_for_condi...  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm schema_format (<= v3.2.13)\r\nImportance_1_sm scope  Icon_protected_sm (<= v2.3.8)\r\nImportance_1_sm scoped?  Icon_protected_sm (<= v2.3.8)\r\nImportance_0_sm scoped_methods (<= v3.0.9)\r\nImportance_0_sm scoped_methods=  Icon_protected_sm (<= v1.0.0)\r\nImportance_1_sm self_and_descendants_from_a... (<= v2.3.8)\r\nImportance_1_sm self_and_descendents_from_a... (<= v2.2.1)\r\nImportance_1_sm sequence_name (<= v3.1.0)\r\nImportance_1_sm sequence_name= (<= v3.1.0)\r\nImportance_4_sm serialize (<= v3.1.0)\r\nImportance_1_sm serialized_attributes (<= v3.0.9)\r\nImportance_1_sm set_inheritance_column (<= v3.1.0)\r\nImportance_0_sm set_locking_column (<= v1.1.6)\r\nImportance_2_sm set_primary_key (<= v2.3.8)\r\nImportance_0_sm set_readonly_option!  Icon_protected_sm (<= v2.3.8)\r\nImportance_2_sm set_sequence_name (<= v3.1.0)\r\nImportance_1_sm set_table_name (<= v3.1.0)\r\nImportance_1_sm silence (<= v2.3.8)\r\nImportance_0_sm single_threaded_active_conn... (<= v2.1.0)\r\nImportance_0_sm single_threaded_scoped_methods  Icon_protected_sm (<= v2.1.0)\r\nImportance_1_sm sqlite3_connection (<= v3.2.13)\r\nImportance_1_sm sqlite_connection (<= v2.3.8)\r\nImportance_0_sm sti_name (<= v3.1.0)\r\nImportance_0_sm subclasses (<= v3.0.9)\r\nImportance_0_sm symbolized_base_class (<= v3.1.0)\r\nImportance_0_sm symbolized_sti_name (<= v3.1.0)\r\nImportance_1_sm table_exists? (<= v3.1.0)\r\nImportance_3_sm table_name (<= v3.1.0)\r\nImportance_1_sm table_name= (<= v3.1.0)\r\nImportance_1_sm table_name_prefix (<= v3.1.0)\r\nImportance_1_sm table_name_suffix (<= v3.1.0)\r\nImportance_1_sm threaded_connections (<= v1.0.0)\r\nImportance_1_sm threaded_connections= (<= v1.0.0)\r\nImportance_1_sm thread_safe_active_connections (<= v2.1.0)\r\nImportance_0_sm thread_safe_scoped_methods  Icon_protected_sm (<= v2.1.0)\r\nImportance_1_sm timestamped_migrations (<= v3.2.13)\r\nImportance_0_sm type_condition  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm type_name_with_module  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm undecorated_table_name  Icon_private_sm (<= v3.1.0)\r\nImportance_2_sm unscoped (<= v3.1.0)\r\nImportance_2_sm update (<= v2.3.8)\r\nImportance_5_sm update_all (<= v2.3.8)\r\nImportance_2_sm update_counters (<= v2.3.8)\r\nImportance_0_sm validate_find_options  Icon_protected_sm (<= v2.3.8)\r\nImportance_1_sm verification_timeout (<= v2.3.8)\r\nImportance_1_sm verification_timeout= (<= v2.3.8)\r\nImportance_1_sm verify_active_connections! (<= v2.1.0)\r\nImportance_3_sm with_exclusive_scope  Icon_protected_sm (<= v3.1.0)\r\nImportance_3_sm with_scope  Icon_protected_sm (<= v3.1.0)\r\nInstance methods (107)\r\nImportance_1_sm <=> (<= v3.2.13)\r\nImportance_1_sm == (<= v3.2.13)\r\nImportance_2_sm [] (<= v3.0.9)\r\nImportance_1_sm []= (<= v3.0.9)\r\nImportance_1_sm arel_attributes_values  Icon_private_sm (<= v3.1.0)\r\nImportance_2_sm assign_attributes (<= v3.1.0)\r\nImportance_2_sm assign_multiparameter_attri...  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm attribute_for_inspect (<= v3.1.0)\r\nImportance_1_sm attribute_names (<= v3.1.0)\r\nImportance_1_sm attribute_present? (<= v3.1.0)\r\nImportance_3_sm attributes (<= v3.1.0)\r\nImportance_3_sm attributes= (<= v3.1.0)\r\nImportance_1_sm attributes_before_type_cast (<= v2.3.8)\r\nImportance_1_sm attributes_from_column_defi...  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm attributes_protected_by_def...  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm attributes_with_quotes  Icon_private_sm (<= v2.3.8)\r\nImportance_2_sm becomes (<= v2.3.8)\r\nImportance_1_sm cache_key (<= v3.1.0)\r\nImportance_1_sm clear_timestamp_attributes  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm clone (<= v2.3.8)\r\nImportance_0_sm clone_attributes  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm clone_attribute_value  Icon_protected_sm (<= v3.1.0)\r\nImportance_1_sm column_for_attribute (<= v3.1.0)\r\nImportance_1_sm comma_pair_list  Icon_private_sm (<= v3.1.0)\r\nImportance_4_sm connection (<= v3.2.13)\r\nImportance_0_sm convert_number_column_value  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm create  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm create_or_update  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm decrement (<= v2.3.8)\r\nImportance_1_sm decrement! (<= v2.3.8)\r\nImportance_1_sm define_question_method  Icon_private_sm (<= v1.2.6)\r\nImportance_1_sm define_read_method  Icon_private_sm (<= v1.2.6)\r\nImportance_1_sm define_read_method_for_seri...  Icon_private_sm (<= v1.2.6)\r\nImportance_1_sm define_read_methods  Icon_private_sm (<= v1.2.6)\r\nImportance_1_sm delete (<= v2.3.8)\r\nImportance_1_sm destroy (<= v2.3.8)\r\nImportance_1_sm destroyed? (<= v2.3.8)\r\nImportance_1_sm dup (<= v3.2.13)\r\nImportance_1_sm encode_with (<= v3.2.13)\r\nImportance_1_sm ensure_proper_type  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm eql? (<= v3.2.13)\r\nImportance_1_sm evaluate_read_method  Icon_private_sm (<= v1.2.6)\r\nImportance_0_sm execute_callstack_for_multi...  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm extract_callstack_for_multi...  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm extract_max_param_for_multi...  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm find_parameter_position  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm freeze (<= v3.2.13)\r\nImportance_1_sm frozen? (<= v3.2.13)\r\nImportance_1_sm has_attribute? (<= v3.1.0)\r\nImportance_1_sm hash (<= v3.2.13)\r\nImportance_1_sm id (<= v2.3.8)\r\nImportance_1_sm id= (<= v2.3.8)\r\nImportance_0_sm id_before_type_cast (<= v2.3.8)\r\nImportance_1_sm increment (<= v2.3.8)\r\nImportance_3_sm increment! (<= v2.3.8)\r\nImportance_1_sm initialize_copy (<= v3.0.9)\r\nImportance_1_sm initialize_dup (<= v3.2.13)\r\nImportance_1_sm init_with (<= v3.2.13)\r\nImportance_1_sm inspect (<= v3.2.13)\r\nImportance_0_sm instantiate_time_object  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm interpolate_and_sanitize_sql  Icon_private_sm (<= v3.0.9)\r\nImportance_0_sm interpolate_sanitized_sql  Icon_private_sm (<= v3.0.9)\r\nImportance_1_sm interpolate_sql  Icon_private_sm (<= v3.0.0)\r\nImportance_0_sm log_protected_attribute_rem...  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm mass_assignment_options  Icon_protected_sm (<= v3.1.0)\r\nImportance_0_sm mass_assignment_role  Icon_protected_sm (<= v3.1.0)\r\nImportance_2_sm method_missing  Icon_private_sm (<= v1.2.6)\r\nImportance_1_sm new_record? (<= v2.3.8)\r\nImportance_0_sm object_from_yaml  Icon_private_sm (<= v3.0.9)\r\nImportance_0_sm populate_with_current_scope...  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm query_attribute  Icon_private_sm (<= v1.2.6)\r\nImportance_1_sm quote  Icon_private_sm (<= v1.2.6)\r\nImportance_0_sm quote_columns  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm quoted_column_names  Icon_private_sm (<= v2.3.8)\r\nImportance_0_sm quoted_comma_pair_list  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm quoted_id (<= v3.1.0)\r\nImportance_1_sm quote_value  Icon_private_sm (<= v3.1.0)\r\nImportance_2_sm read_attribute  Icon_private_sm (<= v1.2.6)\r\nImportance_0_sm read_attribute_before_type_...  Icon_private_sm (<= v1.2.6)\r\nImportance_0_sm read_date_parameter_value  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm readonly! (<= v3.2.13)\r\nImportance_1_sm readonly? (<= v3.2.13)\r\nImportance_0_sm read_other_parameter_value  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm read_time_parameter_value  Icon_private_sm (<= v3.1.0)\r\nImportance_0_sm read_value_from_parameter  Icon_private_sm (<= v3.1.0)\r\nImportance_3_sm reload (<= v2.3.8)\r\nImportance_0_sm remove_attributes_protected...  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm remove_readonly_attributes  Icon_private_sm (<= v2.3.8)\r\nImportance_1_sm respond_to? (<= v1.2.6)\r\nImportance_3_sm save (<= v2.3.8)\r\nImportance_1_sm save! (<= v2.3.8)\r\nImportance_0_sm set_serialized_attributes  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm to_ary  Icon_private_sm (<= v3.2.13)\r\nImportance_2_sm toggle (<= v2.3.8)\r\nImportance_1_sm toggle! (<= v2.3.8)\r\nImportance_4_sm to_param (<= v3.1.0)\r\nImportance_3_sm to_xml (<= v1.1.6)\r\nImportance_1_sm to_yaml (<= v3.2.13)\r\nImportance_0_sm type_cast_attribute_value  Icon_private_sm (<= v3.1.0)\r\nImportance_1_sm unserializable_attribute?  Icon_private_sm (<= v1.2.6)\r\nImportance_1_sm unserialize_attribute  Icon_private_sm (<= v1.2.6)\r\nImportance_1_sm update  Icon_private_sm (<= v2.3.8)\r\nImportance_5_sm update_attribute (<= v2.3.8)\r\nImportance_5_sm update_attributes (<= v2.3.8)\r\nImportance_1_sm update_attributes! (<= v2.3.8)\r\nImportance_1_sm write_attribute  Icon_private_sm (<= v1.2.6)\r\nImportance_1_sm yaml_initialize (<= v3.2.13)\r\nIcon_private_sm = private\r\nIcon_protected_sm = protected\r\n\r\nMethod deprecated or moved\r\nThis method is deprecated or moved on the latest stable version. The last existing version (v2.3.8) is shown here.\r\n\r\nThese similar methods exist in v4.2.7:\r\n\r\nActiveRecord::Relation#delete_all\r\nActiveRecord::Associations::CollectionAssociation#delete_all\r\nActiveRecord::Associations::CollectionProxy#delete_all\r\nActiveRecord::NullRelation#delete_all\r\ndelete_all(conditions = nil) public\r\nDeletes the records matching conditions without instantiating the records first, and hence not calling the destroy method nor invoking callbacks. This is a single SQL DELETE statement that goes straight to the database, much more efficient than destroy_all. Be careful with relations though, in particular :dependent rules defined on associations are not honored. Returns the number of rows affected.\r\n\r\nParameters\r\n\r\nconditions - Conditions are specified the same way as with find method.\r\nExample\r\n\r\n  Post.delete_all("person_id = 5 AND (category = \'Something\' OR category = \'Else\')")\r\n  Post.delete_all(["person_id = ? AND (category = ? OR category = ?)", 5, \'Something\', \'Else\'])\r\nBoth calls delete the affected posts all at once with a single DELETE statement. If you need to destroy dependent associations or call your before_* or after_destroy callbacks, use the destroy_all method instead.', 2, '2016-10-24 09:08:14', '2016-10-24 09:08:14'),
	(2, 'test article', 'This is test from testuser21', 1, '2016-10-24 09:24:33', '2016-10-24 09:24:33');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;


-- 导出  表 simpleapp_development.ar_internal_metadata 结构
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.ar_internal_metadata 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2016-09-22 09:40:48', '2016-09-22 09:40:48');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;


-- 导出  表 simpleapp_development.credentials 结构
DROP TABLE IF EXISTS `credentials`;
CREATE TABLE IF NOT EXISTS `credentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match` varchar(128) NOT NULL,
  `params` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pkey` (`match`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.credentials 的数据：~45 rows (大约)
/*!40000 ALTER TABLE `credentials` DISABLE KEYS */;
INSERT INTO `credentials` (`id`, `match`, `params`, `created_at`, `updated_at`) VALUES
	(348, 'users#index#1', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(349, 'users#new#1', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(350, 'users#show#1', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(351, 'users#edit#1', 'session[:user][\'role_id\']==3 || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(352, 'articles#index#1', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(353, 'articles#create#1', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(354, 'articles#new#1', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(355, 'articles#update#1', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(356, 'articles#show#1', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(357, 'articles#edit#1', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(358, 'users#index#2', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(359, 'users#new#2', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(360, 'users#show#2', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(361, 'users#edit#2', 'session[:user][\'role_id\']==3 || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(362, 'articles#index#2', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(363, 'articles#create#2', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(364, 'articles#new#2', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(365, 'articles#update#2', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(366, 'articles#show#2', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(367, 'articles#edit#2', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(368, 'rules#index#3', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(369, 'rules#new#3', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(370, 'rules#edit#3', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(371, 'rules#create#3', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(372, 'rules#update#3', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(373, 'rules#show#3', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(374, 'roles#build_credentials#3', 'true', '2016-10-24 10:51:56', '2016-10-24 10:51:56'),
	(375, 'roles#index#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(376, 'roles#show#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(377, 'roles#remove#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(378, 'roles#add#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(379, 'roles#edit#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(380, 'roles#new#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(381, 'roles#create#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(382, 'roles#update#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(383, 'users#index#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(384, 'users#new#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(385, 'users#show#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(386, 'users#edit#3', 'session[:user][\'role_id\']==3 || session[:user][\'id\']==params[\'id\'].to_i', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(387, 'articles#index#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(388, 'articles#create#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(389, 'articles#new#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(390, 'articles#update#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(391, 'articles#show#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57'),
	(392, 'articles#edit#3', 'true', '2016-10-24 10:51:57', '2016-10-24 10:51:57');
/*!40000 ALTER TABLE `credentials` ENABLE KEYS */;


-- 导出  表 simpleapp_development.roles 结构
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.roles 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'operator', 'operator', 4, '2016-10-18 09:42:17', '2016-10-18 09:57:28'),
	(2, 'manager', 'manager of user', 1, '2016-10-18 09:42:33', '2016-10-18 09:42:33'),
	(3, 'admin', 'administrator', 2, '2016-10-18 09:42:50', '2016-10-18 09:42:50'),
	(4, 'public', 'guest user', 0, '2016-10-18 09:51:58', '2016-10-18 09:51:58');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- 导出  表 simpleapp_development.roles_rules 结构
DROP TABLE IF EXISTS `roles_rules`;
CREATE TABLE IF NOT EXISTS `roles_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `rule_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.roles_rules 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `roles_rules` DISABLE KEYS */;
INSERT INTO `roles_rules` (`id`, `role_id`, `rule_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2016-10-21 12:04:07', '2016-10-21 12:04:08'),
	(2, 1, 2, '2016-10-21 12:04:29', '2016-10-21 12:04:30'),
	(3, 1, 3, '2016-10-21 12:05:21', '2016-10-21 12:05:23'),
	(4, 3, 5, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(5, 3, 6, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(6, 3, 7, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(7, 3, 8, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(8, 3, 9, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(9, 3, 10, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(10, 3, 11, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(12, 1, 4, '2016-10-21 12:05:21', '2016-10-21 12:05:23'),
	(13, 3, 12, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(14, 3, 13, '2016-10-24 14:44:50', '2016-10-24 14:44:52'),
	(15, 3, 15, '2016-10-24 08:54:10', '2016-10-24 08:54:10'),
	(16, 3, 16, '2016-10-24 08:54:12', '2016-10-24 08:54:12'),
	(17, 3, 14, '2016-10-24 08:54:16', '2016-10-24 08:54:16'),
	(18, 1, 19, '2016-10-24 09:04:24', '2016-10-24 09:04:24'),
	(19, 1, 17, '2016-10-24 09:04:26', '2016-10-24 09:04:26'),
	(20, 1, 18, '2016-10-24 09:04:29', '2016-10-24 09:04:29'),
	(21, 1, 20, '2016-10-24 09:04:33', '2016-10-24 09:04:33'),
	(22, 1, 21, '2016-10-24 09:04:35', '2016-10-24 09:04:35'),
	(23, 1, 22, '2016-10-24 09:06:44', '2016-10-24 09:06:44'),
	(24, 3, 24, '2016-10-24 09:10:46', '2016-10-24 09:10:46'),
	(25, 3, 23, '2016-10-24 09:10:50', '2016-10-24 09:10:50'),
	(26, 3, 25, '2016-10-24 09:10:52', '2016-10-24 09:10:52');
/*!40000 ALTER TABLE `roles_rules` ENABLE KEYS */;


-- 导出  表 simpleapp_development.rules 结构
DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller_name` varchar(128) NOT NULL,
  `action_name` varchar(128) NOT NULL,
  `params` varchar(255) NOT NULL DEFAULT 'true',
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.rules 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` (`id`, `controller_name`, `action_name`, `params`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'index', 'true', NULL, '2016-10-18 09:10:52', '2016-10-18 09:10:52'),
	(2, 'users', 'new', 'true', NULL, '2016-10-18 09:44:07', '2016-10-18 09:44:07'),
	(3, 'users', 'show', 'true', NULL, '2016-10-18 10:04:16', '2016-10-18 10:04:16'),
	(4, 'users', 'edit', 'session[:user][\'role_id\']==3 || session[:user][\'id\']==params[\'id\'].to_i', NULL, '2016-10-20 09:23:15', '2016-10-24 10:51:50'),
	(5, 'rules', 'index', 'true', NULL, '2016-10-24 14:41:02', '2016-10-24 14:41:04'),
	(6, 'rules', 'new', 'true', NULL, '2016-10-24 14:41:44', '2016-10-24 14:41:46'),
	(7, 'rules', 'edit', 'true', NULL, '2016-10-24 14:42:02', '2016-10-24 14:42:04'),
	(8, 'rules', 'create', 'true', NULL, '2016-10-24 14:42:44', '2016-10-24 14:42:46'),
	(9, 'rules', 'update', 'true', NULL, '2016-10-24 14:43:55', '2016-10-24 14:43:56'),
	(10, 'rules', 'show', 'true', NULL, '2016-10-24 14:44:17', '2016-10-24 14:44:19'),
	(11, 'roles', 'build_credentials', 'true', NULL, '2016-10-18 09:44:07', '2016-10-18 09:44:07'),
	(12, 'roles', 'index', 'true', NULL, '2016-10-18 09:44:07', '2016-10-18 09:44:07'),
	(13, 'roles', 'show', 'true', NULL, '2016-10-24 08:00:48', '2016-10-24 08:00:48'),
	(14, 'roles', 'edit', 'true', NULL, '2016-10-24 08:15:04', '2016-10-24 08:15:04'),
	(15, 'roles', 'remove', 'true', NULL, '2016-10-24 08:50:35', '2016-10-24 08:50:35'),
	(16, 'roles', 'add', 'true', NULL, '2016-10-24 08:50:45', '2016-10-24 08:50:45'),
	(17, 'articles', 'create', 'true', NULL, '2016-10-24 09:02:29', '2016-10-24 09:02:29'),
	(18, 'articles', 'new', 'true', NULL, '2016-10-24 09:02:37', '2016-10-24 09:02:37'),
	(19, 'articles', 'index', 'true', NULL, '2016-10-24 09:02:48', '2016-10-24 09:02:48'),
	(20, 'articles', 'update', 'true', NULL, '2016-10-24 09:02:56', '2016-10-24 09:02:56'),
	(21, 'articles', 'show', 'true', NULL, '2016-10-24 09:03:07', '2016-10-24 09:03:07'),
	(22, 'articles', 'edit', 'true', NULL, '2016-10-24 09:06:30', '2016-10-24 09:06:30'),
	(23, 'roles', 'create', 'true', NULL, '2016-10-24 09:10:01', '2016-10-24 09:10:01'),
	(24, 'roles', 'new', 'true', NULL, '2016-10-24 09:10:10', '2016-10-24 09:10:10'),
	(25, 'roles', 'update', 'true', NULL, '2016-10-24 09:10:19', '2016-10-24 09:10:19');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;


-- 导出  表 simpleapp_development.schema_migrations 结构
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.schema_migrations 的数据：~8 rows (大约)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20160922091051'),
	('20160922101422'),
	('20160922102716'),
	('20160923024321'),
	('20161009064017'),
	('20161018091417'),
	('20161018092629'),
	('20161018093510');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


-- 导出  表 simpleapp_development.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `age` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `encrypt_password` varchar(128) DEFAULT NULL,
  `password_salt` varchar(64) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  simpleapp_development.users 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `gender`, `age`, `avatar`, `encrypt_password`, `password_salt`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 'testuser21', 0, 22, '211110.jpg', '44bff6aa1e1f6c8f34bdce1819c60dd16230656c', 'hzdnesov', 1, '2016-10-18 03:17:31', '2016-10-20 09:09:06'),
	(2, 'testuser1', 0, 33, '221111d.jpg', '44bff6aa1e1f6c8f34bdce1819c60dd16230656c', 'hzdnesov', 3, '2016-10-20 08:16:55', '2016-10-20 09:09:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
