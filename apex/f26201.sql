prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.0'
,p_default_workspace_id=>1994635590243848076
,p_default_application_id=>26201
,p_default_id_offset=>6677150651428495118
,p_default_owner=>'WKSP_MARKETPLACE'
);
end;
/
 
prompt APPLICATION 26201 - Marketplace Dashboard
--
-- Application Export:
--   Application:     26201
--   Name:            Marketplace Dashboard
--   Date and Time:   19:08 Friday June 5, 2026
--   Exported By:     MARLON.PUENTES@UPTC.EDU.CO
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     19
--       Items:                   38
--       Processes:               22
--       Regions:                 43
--       Buttons:                 34
--       Dynamic Actions:          6
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:             11
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   8
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_MARKETPLACE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Marketplace Dashboard')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'MARKETPLACE-DASHBOARD')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'50C19388969E58962AFADF1FC0A7EA61F55B7019CE9ABFC39775902DC2BCA85D'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(10510729198838290900)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Marketplace Dashboard'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Marketplace Dashboard'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605183029Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461187051329
,p_version_scn=>'15775659138747'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(10510730087896290902)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(10510730920196290907)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510724829131290892)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510725140088290893)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510725439092290894)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510725742654290894)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510726013909290895)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510726302892290895)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510726552257290896)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510726950525290896)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510727179624290897)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510727474136290897)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510727755916290898)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510728125837290898)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510728447911290899)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10510728730927290899)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10510730920196290907)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10511006750378291669)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051337Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10511007344561291670)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(10511006750378291669)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051337Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10511007817700291671)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(10511006750378291669)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051337Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10510730087896290902)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:xSyh6kiKjaa_GeVRk7RUSyoEHUM5T8LtCrVt6CwRRP8'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10510946210983290938)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6715670152145847755)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Detalle PedidosCRUD'
,p_static_id=>'detalle-pedidoscrud'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17,18'
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10510944674834290933)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10510957511029290955)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Inventario'
,p_static_id=>'inventario'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6701821594215694281)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Inventario CRUD'
,p_static_id=>'inventario-crud'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13,14'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6730356403799937763)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Pagos CRUD'
,p_static_id=>'pagos-crud'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19,20'
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6715474474693186162)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Pedidos CRUD'
,p_static_id=>'pedidos-crud'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15,16'
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10510966770220291368)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Productos'
,p_static_id=>'productos'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051334Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051334Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6684873853699106449)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Productos CRUD'
,p_static_id=>'productos-crud'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9,10'
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10510974582042291495)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Vendedores'
,p_static_id=>'vendedores'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051335Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6700335869371640206)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Vendedores CRUD'
,p_static_id=>'vendedores-crud'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11,12'
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10511002915486291660)
,p_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_version_scn=>'SH256:vZlaQzOhNJ7PV5eMSNNW1Ji0696Q_ZRrv_2V9GknsZY'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10511003374996291662)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10511003852131291662)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Inventario'
,p_static_id=>'inventario'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10511004428383291663)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Productos'
,p_static_id=>'productos'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051337Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10511004760175291663)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Vendedores'
,p_static_id=>'vendedores'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260526051337Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000E8E494441547801EC9D0B7055C519C7BF9B047904094A04C14A922260851611736D85566215A7BE5B5BC5C788423BED88636BDBE9384E5BB5433B9D3AD38E9DA9';
wwv_flow_imp.g_varchar2_table(2) := 'F5510B3AA30D75A856AB636B2BF88096A0D852B40A0AE1658046C6C85B426EF77792A5373189C9D93DF7DCB36799FBE5DE7BB2FB7DDFFEBF5FBEB3C9122811FFC72B60A08007C8403C3F55C403E4293052C00364249F9FEC01F20C1829E0013292CF4FF6';
wwv_flow_imp.g_varchar2_table(3) := '0079068C14080D9051543FD919053C40CE94329E857880E2D1DD99A81E20674A19CF423C40F1E8EE4C540F9033A58C67211EA0787477266AE101FA08E9565EFBE08895573C38016B98FDDB331BAEFCCD45476CF603D735A4C55837EB57861681296D3E42';
wwv_flow_imp.g_varchar2_table(4) := 'BE827F3A7680FE3E7B61F5CAD90FDCAE6059AAE0C8653E686DCE645ADFC44472CB259779E288892C540AA5C35837EB57861681296D94461B952D44B355B3EF9FA9F488F5110B402C1C1194E54AA56D6346E436915CEC62C45A89BE07AF5643AF43B39C94';
wwv_flow_imp.g_varchar2_table(5) := 'F0450750D875EA7AC11F050588AF1A05CD4616AE561ACB82555CD71E00852D445B342EE4020B02108B528BCBF155A316C762D5937F44A040351A2BAD37A27904FE3FE4327280D8DBB0A80F45F617A2542000A910104506109B63E0F17B9B2839E9DD375F';
wwv_flow_imp.g_varchar2_table(6) := 'B874236AD1FBC8F09F8D042036C96C8EEDC2137E91299F59AD6AC1663B923DA77580A0BD63939CF2BA15D5F2D977DE466D6C67651DA052C9F1731ADB797A7FE60A049DC8DC4D670F5601F27B9ECEE216E1BB6AB527B2FA056E0DA0F61DBFFF61601142D3';
wwv_flow_imp.g_varchar2_table(7) := '35A5E038A8EBC5B0EFAD01A476FC73C226E1E7155C81DB6C45B402906A8BECF0D9A8D9CACBFB8956016E65D4CC388A15805416D68856BE6C3FBCBFEE15B0523363807CF7E9BE3A09B85ACDCFEB4CF334064824E3F73E92CC3F392935EE421600F2DF7925';
wwv_flow_imp.g_varchar2_table(8) := '131FB2CE19EF5B8D00EAB87D9189B7642A607C1B330228999AF9ACF315689312A3BFC85792EF2CC4EBB342CCF1538A48818C648C6A680A9011BD45A463B7A9A4E362CE681F640A9051F07414A8E85759CD6FC284CD323440FC9A49D8A07E5E9129705046';
wwv_flow_imp.g_varchar2_table(9) := '84CD28344099CCE1CAB041FD3C7714080D903B12F8959834030F90E7C74881F00065DA42DF378D32F693ED2B6050CBF000E5321EA09E4A99A2EBE1014AB84887DA5A056B39B8479AF7BF1758D3DE66D9BC7B7BAFC6188C79D8BED603095742A56FD00C52';
wwv_flow_imp.g_varchar2_table(10) := '0310B0000A80BCB16B93BCFDDEB6C09AF6BEABE06909ACE5E05ED977E860AFC6188C79D8E6F77748E0AF655B001E319C804A71D59787D30051C826D55582022B609AF7B704700C282D93E1238F95AA291364C2D95365EAE567C9F41B2E92593FB85A2EBC';
wwv_flow_imp.g_varchar2_table(11) := 'EBEB72C93DF3E58A47BE27572EB935305E738DCF9DABC630963993CEAD9531936BA442F93A74B835F04D0CA07A5B0145EC16D5E1FA5288A48E7112A066754B021A0AD9A2BA4AF9A8E1327EE6A932E5DA3AF9F20337CB5796DC22E7DF77834CBFE37239FD';
wwv_flow_imp.g_varchar2_table(12) := 'A60BE413577D56AA664D91CA693532ACEA38293FFE18291D7294644A4B02E335D7F8DC716A0C63993365FE793273C1D57281F275D5E3DF978B7F3D5F6AE7CE92AA199364A88A49EC26D5E180899C920A496F7997F4F6C9A47D8EDB14B7A866D569A4AC44';
wwv_flow_imp.g_varchar2_table(13) := '269E3355CE59708D5C72EF8D52FBAD0B65D297A6CB5123CA235BD6D0D1C7C8F88BB332FDBB5F942FDCFD0D39FF6773831C0E65DA825B242091636409C4E0D829809AD4ED8A3DCC984F8F974BEFB951A6DD78818C9C1CDF71DDF00963821CC865FC595384';
wwv_flow_imp.g_varchar2_table(14) := 'DBDCE6DD3B62287374219D01A845ED3580E7C4B327C9CC5BAE902195C3A253AD9F9EC9A5F6E68B64DCAC530388D89B75EF2279579D01481765E2E74F2BDA2A9C70E6C9416EC01EBC70E0833300E95ABCBA78997E5974CFEB9E6828BA9C4C13720EA077D7';
wwv_flow_imp.g_varchar2_table(15) := '6C913F7DF35E695CFE9AA936D6E6BFD3B03EC869FBEA0DD67C168B23E7001A766C85BCBFE9BFB2E2CEC7E4A99BEF93D7FEB05C5AF71C2CB8DEFB76ED0E6293C3B29F2C0E721A79E2F105CF23EA80CE0134F6947172FA79D3E5C489D5D2B271A7FCEBA1A5';
wwv_flow_imp.g_varchar2_table(16) := 'F2FB6BEE9427E7DF2D2B7EFEB8343EFDAAEC7A7DAB755DF189EF977FF9943C73D3FDF2F8DCBB82D8E4402E332E3B4746568DB11E376E87CE0184A083860E96AAC92705209D34F564A12BEDDEB64B1A5F582B2BEE5305BE75913C7AD94FE5C93977C973DF';
wwv_flow_imp.g_varchar2_table(17) := '5E282FFE68B1ACB9E75979FDE11765FD1F1B64CBF3AF49D3CB6FC98E351B03E335D7008431AFFCEA69F9C78F97C873DF5914F878E4D205F28CF289EF75CF294037EF0862020E30930B79B9684E02A40B0548C77FFC63F2A9BADA00A6C9334E0B3A13B792';
wwv_flow_imp.g_varchar2_table(18) := 'C115E5B2BB65B76CDFB04DB6AC5E2F6B9F5929FF7CF47959B5F02FF2E22F1E93A50BEAE56F3F7C38305E730D4018F3E6B3AB65C3AAFFC8F6B7B7063E060E1E74041862D06D880938E4A0F389F03936D74E0394AF2A851C3E4A9D7FA9CE34213B39808A42';
wwv_flow_imp.g_varchar2_table(19) := 'D321283A9D4A1B9D0303348CD7DAF418E6301FAB3D7F46E00F6088911FD7F5D7A901A8A7426AB0E854DA000103348CD7DAF498B481D2937EA907A82761FCF5BE29E001EA9B4E7E540F0A78807A10C65FEE9B021EA0BEE9E447F5A08007A80761D272D974';
wwv_flow_imp.g_varchar2_table(20) := '9D1E205305533EDF3980766E7AA7684B7A60EFBEA2CD2D6C62EE01B465BB6C5AFB56583D229B474E6FBDFA4664FEE372EC1C4008B9E5CD4659F5F44BB1837460CFFE20077221278E3CC8CF25730E208E1A387638B8FF8050348AB7AE61AD3AF3DA2AEFED';
wwv_flow_imp.g_varchar2_table(21) := 'D81579ED3434749C97FFBC3CC881A0E4347EDA29BC74CA9C036850F9902327F1146DE0E081B253DDD6B87DAC7D6975D099D62C5D25F95051F4FE5495F118406EDFB035E832F87C69C95F454303BC741C72E0AC8CA390FEC448CA58E700D2C273C645D138';
wwv_flow_imp.g_varchar2_table(22) := '15E7C094CEC4C1289DE9FD5D2D9DA0A2E8149F6ED5D50023FF1AE3188F012460020B3E01861840A30F59C941E7E4D473C7629C05A8637DC113307108CAC1288505284ED3818A625374FECE10DD2A98A03E001A0618EAED9107E330E630171FF8C22F9D86';
wwv_flow_imp.g_varchar2_table(23) := '18AE4373440CF5221500A975767A0014A7E94045B1293A9D0A03020C20B4F15E1B6330E630171FF8EA1420456F5209508AEA1BF9523D40914BEC76000F90DBF58D7C751EA0C825763B8007C8EDFA46BEBAFE0314794A3E409214F00015B05AFE34BE8062';
wwv_flow_imp.g_varchar2_table(24) := '870DB5FE95D7856386B0F3A39A474E5BDE688CCA7D6C7E9DEB40FCF4F8DF2FBC129C4FC5A66A5E60C0D107ABE496F729275E3A0710470C5486F329CEB03834E5D0936B85B47C70C8459F9315328742C4720FA0AA31F2C9CF4D0B7E8519013989E7D01398';
wwv_flow_imp.g_varchar2_table(25) := '3818A51B70826E132A60C11FBE89A10F5C35389C997114E2FF71052A9200E3AC8B732A40E2A093027250CAC12845E5045D43A5C1A253614080019936DEE71BE30085B91A16FCE19B18741B62121B70C82501B2854AB1801D28547E46930089834E0AC801';
wwv_flow_imp.g_varchar2_table(26) := '28A7F09C9E63DCEA808A00149D4E8501010664DA789F6F8C630E73BB9ECC7300ABA12136635C36A701EA5A3880E2F41CE3341DA828366069A36B6040966F5CD3C6580D0A3EF005A4F8ED1AD3F5F7A902A8A762029636BA06060CF9C6356D8CEDC957DAAE';
wwv_flow_imp.g_varchar2_table(27) := '7B80D25671CBEBF5005916346DEE3C4069ABB8E5F57A802C0B9A36774900286D3549D47A3D40052C973F8D2FA0D8FD0D5531706830A598FF71859D9B9A821C87940D0A9E5DF8E04C071A5052264306B4FF162AC70C9C4F154B81C8859CF8E935396AD88B';
wwv_flow_imp.g_varchar2_table(28) := '253F933C9C0268747965001185E2AF747066C521A789402673018733347E8B959CF8AF36C71EEDD67F77E00C40149A2E448146978F90B60F5A835F5FE69093434F60E27094715119C01003688809389CA1014EE5E00A1957714254A163F3EB14405A456E';
wwv_flow_imp.g_varchar2_table(29) := '11638F1E25805431B05CF88B5C1C807238CAE939C5E596A2A1A2E8742A00D0A67DE9677D9D67C6320750307CE11760880134C4243639004EE5E0E1DA9553CF4E024485E84680C46D6DDCF01364ECB0514217600F4277E296A2A1A2E8742A00D00610F9A6';
wwv_flow_imp.g_varchar2_table(30) := 'AFF3CC58E6000A86AF01A5ED7B306210EBE463AB14C095420EE4E3AA390B507EC18089EF7CE802DCE2E8081AAAD1EA7687D12D3000EBCD18032418F3342CF8C4373188951FDFE5D7E101CAE4DE4DB2301A2A3A0446A7C280A037630C9060CC4B132CDDD5';
wwv_flow_imp.g_varchar2_table(31) := '3B3C40DD79F3D792A9804133080F50AE24D11D2899958E286B835A860728A2B578B7C952203440B95C6973B296EAB3ED4901935A8606A8A7649CB8EE17D16705C2033450FC1EA8CF3217F940835A8606E88C87E678808A9C8BBEA66752CBD000B5279759';
wwv_flow_imp.g_varchar2_table(32) := 'D6FEEC3F2658814526B91B019493DCF326C1FDDCA250C0A886460095489BEF4045C140F8240E4B89510D4BC28716699532F7FEC11B13411238F733F5D71BD5D008A0F6E07E1FF47F6E12F7CA68FFC36A8D00C241460EDFC1B3B7E4299091B6074DB33606';
wwv_flow_imp.g_varchar2_table(33) := 'A8B6FE6BEA1EEABB9069216298DFD85E3BB3C8C600B587CF1993DCEEC77F2CA00256EE1C5600EAD8C91B6DC60A289C0FA514C8D6CF33DEFF28376205A0F6CDB458219AA4BC45AB404EECD5CA0A402CB783682B54E3CF5B540A64969D513FEF765BDEAD01';
wwv_flow_imp.g_varchar2_table(34) := '4442EA56A6BA90DF50A3453FAD50C31BB3F573EB6C06B30A10B7B2C392B9DE6682DE973D05D4B7EDD66B631520960A44EAD97AA2CAA77F1828A0E0A9AB0D7EE462E0A49BA9D601224656EDF0D5EDAC46BDF6DF992911627E3446050FEB8A04201CD38914';
wwv_flow_imp.g_varchar2_table(35) := '44753677FCF8F5D61F0532CBD417734D6D049D476711194004002276FC1D10F96E842885B14634CF5ADE3077977AA400E98040443752EFD5DEC87F97A67488EAD101CEBC1A348F2A48BEDF82004440BA5156ED8DB2ED5F151E2444B1601D2EE8EED767EB';
wwv_flow_imp.g_varchar2_table(36) := '0B074E475C3B3F89D6CEFAFAAC16BA28AB40525DA9860D9E9AA78012FF4348E9D31F054B6619B7A88CB4D565EBE76594D5288B45BF8275A0EEA4A12BD5AA0D5E36E84CF3F80ACAE48E2AABCCE5CA26622299E9816572178B0890A5C358AF36A5015A604A';
wwv_flow_imp.g_varchar2_table(37) := 'A70E58E6D6718BAA55DA295D627DC40A50772BE73704CE583C671D96AD9FBB22B0DF7DF5C96C3B64AA73CD73DF58AF36A5015A60DDE915F7B5A203286E417CFCFE29E001EA9F5E7E7417053C405D04F16FFBA78007A87F7AB933DAD24A3C4096844CAB1B';
wwv_flow_imp.g_varchar2_table(38) := '0F505A2B6F69DD1E204B42A6D58D0728AD95B7B46E0F902521D3EAC60394D6CA5B5AB707C89290E971D379A51EA0CE7AF877FD54C003D44FC1FCF0CE0AFC0F0000FFFF226A435D000000064944415403002D7D288AE823231A0000000049454E44AE4260';
wwv_flow_imp.g_varchar2_table(39) := '82';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10510732291504290911)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC9C799054D515C68F0644D6C10591881AC565ACE086416361B4A8A894FB6E5C526EC45894514215A5B112FF4A522E45CA1034C610C518B7B8';
wwv_flow_imp.g_varchar2_table(2) := '2F88C562511A8802092A903828A86C0EC8B00CFB324ADEEFE96D6EB733768F79DDFD5EDF8F9A336FB9EF9D7BCE77BEEFDEDB53DCDE75E6650FEE9009835039B0ABE99F100818010920E0E22B753309402C081A010920E8F22BF98005A0E20B012D81C481';
wwv_flow_imp.g_varchar2_table(3) := 'C011D00C103801424F5F02089D0181E72F01044E80D0D3970042648072CE212001E4A0D0498808480021565D39E71090007250E8244404248010ABAE9C7308480039287412020285394A008588E83A28042480A0CAAD640B1190000A11D1755008480041';
wwv_flow_imp.g_varchar2_table(4) := '955BC9162220011422A2EBA01008480041D555C9968880045022507AAC361190006AB3AECAAA440424801281D263B5898004509B75555625222001940854A61F53F06D222001B4098D1A4240400208A1CACAB14D04248036A151430808480021545939B6';
wwv_flow_imp.g_varchar2_table(5) := '898004D026346AA805048AE52001144348ED358D800450D3E55572C51090008A21A4F69A464002A8E9F22AB962084800C510527B4D2350C302A8E9BA29B9841090001202526EB289800490CDBA29EA841090001202526EB289800490CDBA29EA84109000';
wwv_flow_imp.g_varchar2_table(6) := '120232556E144CC90848002543A5076B110109A016ABAA9C4A46400228192A3D588B084800B55855E55432021240C950E9C12C20D0DE182580F622D6C6F3DB3F6FB14D2D5BAC79EB066BDABC36B6C68D4DB678FDF2D816362F33670DAB1759A1B9367774';
wwv_flow_imp.g_varchar2_table(7) := 'EFE103C32F461F581B61E8763B119000DA0918448788901C624254C8BC70ED325BBC6E85356E5C1591BF39B6E6AD1B6DD3F6ADB16DFFACC59CB5D6A56B7347F71E3E30FC62F48139A1344622C39A23E14918AD21FBF5F72480AFC7C7203C64C71CD11BBF';
wwv_flow_imp.g_varchar2_table(8) := '2479F397042FE2A22CCD4E28C4801193134663248A6609A224DC2580566072A477846FDAFCC588DECAA35FDC8A50ECDABBCE7AD5F7B5034FACB7FA33065AFF4B06D9C09F0CB1D3EEBEC686DC33D4CEBDFF463B6FEC4D76FE43C3ED824746D8E54FDF6657';
wwv_flow_imp.g_varchar2_table(9) := '3CFFCBD838E71E6D3CC3B3BCC3BBF81870F960EB77DA31B16FFAA02F8BFAFCA2F3FCDF08A33912666324525F109A1DF27172576DC0E89AC3393AD2C74B8B683903E95BCBBE53D7DD6D9F23F6B7FAB38EB7EF0F3FC74E1F75AD5DF1DCAFECBC076EB2D3EE';
wwv_flow_imp.g_varchar2_table(10) := 'BCC606DD7AB10DB861881D75E5603BF4EC81D6EBB0BEB6D7417DAC5B9F3DAC6BAF3AEBB26777EBDCA3ABEDD2F15B66BBEC121BE7DCA38D6778967778171FF53F1A6427DC7876EC9B3EE8EBE2276FB1B347DF10C7D06FC8B1B6DF910759A76EBB5BE13F27';
wwv_flow_imp.g_varchar2_table(11) := '082786A6E8F309B9163E17EA750D09E09B971052B0866F8A467A08E37BEABC47B778E43DFAAAC176E9DF46DA458F8DB453EFB8DA065C7FBA1D3CF868DBFB90FDFCC72B76BEDB6EBB598F037BC5319C30EC2C3BE5D757DA458F8EB4F31FBCD9065E777A1C';
wwv_flow_imp.g_varchar2_table(12) := '73871EF9822037725CBC7E45F419656DC5624D7347410BA0395A27B3CC81147E91BAECD1DDEACF1C6867DC759D5D30EEE7F1C8FBDD0B075987EEF984F2DF49CB7997BD7AD8A1E71E1FC77CE92323E31CC8A543DDCED89D1098ED9AA219212DB157238E60';
wwv_flow_imp.g_varchar2_table(13) := '0500F95927FBA0D71DD2DB4EF8D9D976FEB8E136E0A7436C8FC3BFED3767F29C1CC8E5FCB137C7B9F53A7CE78CE58410B20882144021F9BBEFBF979D38E23C3B6BD4F5D6EFD4633249F46241B36422B7D3EEBA36CE959CDD3B4DD1D2AF29D099203801F0';
wwv_flow_imp.g_varchar2_table(14) := 'D7107FE4EF7BCA1176CE986176D029473A3ED4FC915C87FC6EA8D50F392E976B532402B0C9DD08E424380130FABBDAF6FDC11176F2888BDC65768FDF20726684FE437F68070D3E2AF7F6A6ED5B72E7A19C0427804D2D5B73B53DF2B29373E7219E2082A3';
wwv_flow_imp.g_varchar2_table(15) := 'AE3825977AF3B68DB9F3504E8213001FFC42296E29796EDBB62DF75888D80427805CB5A3938667DE8C7E87FD33F7C93782062068017C34758EBD35E6A56009F0C63DCFDAD27FBC176CFE241EB40000E0C3D7E6D8CB37DD6FF3A7CCE632085BF6CFF971CE';
wwv_flow_imp.g_varchar2_table(16) := '4B5FCF3EF9FFDF82052F00005CBF6495FDFBDE09F6CAC8B1B670CA3BDCAA4923B7C9B78EB3D7EF7EDAC8B926936C6752410BE09063EBAD53E79DFF45A079C10A9B71EF787BE1DAD136E38FE36DC5DC8FDB0967FA1E5F33FF139BFDE789F6D4D5A3E2DC56';
wwv_flow_imp.g_varchar2_table(17) := 'CE5F960B92DCFB9F3420771DE249D002D8F7E0BE76E4C9C7D9FE877F27AFF69BD6ACB78593DEB1D76E7F3412C3EF6DFA5DCFD8072FCDB4B58D4D79CFA5F162D3AA75F69FE7A6DBCC512FDA53578DB2576F7DC81A26CCB296E6FCBFF193F3C0334FB29EBD';
wwv_flow_imp.g_varchar2_table(18) := 'F74C631A158B29680180F2EEDD3ADB81FD0FB1EF0D19140B815191FBCE36ADD9608BDE6CB0590F4DB209C3FE64CFFE7894BD7EFB6336E3FE57ECC3A9EF5AD3829D23AA7BA752C7758B56C631CC1E3BC9A6DCF6577BF2B23BED85A17FB0771F996A0BA6CD';
wwv_flow_imp.g_varchar2_table(19) := 'B59675F9A42737887FD245A7C639572ACE34F713BC005C719C1098115816401408E3DADD71EB862DB66CEE47B670E2DBF6D6E8976DD2C871F6CCC577DA8B378CB1C9BF78389E2D66DC37DE1AFE3EDD3E183FCB56BEBFD4567DD4681B1AD7D8C695CDB669';
wwv_flow_imp.g_varchar2_table(20) := 'F57ADBBC6EA3EDD8FE99D98E1DB171CE3DDA788667798777F131E7B1A936FB8189B16FFAA0AFC72FFC8D8D1FFE401C43C32B33EDD3F796D8E75B5A5C98B92339900B3931E223F65CA34EDADA57940564CA13234260590051200C33039F15F6D97FDF363B';
wwv_flow_imp.g_varchar2_table(21) := 'DCD6D2621B5734DBCA86A5F16CB170F23B36FB89A936EB2F136DF22D0FDBC4110FDA4BC3EEB317AF1F632F5C37DA9EBFEA1E7BE2923BECF10B7E1B1BE7DCA38D6778967778171FF39E9E6E0DAFCE8A7DD3077DD9E7AD8703E17BEC5917CF663EE9C9A9F5';
wwv_flow_imp.g_varchar2_table(22) := '37C2BEAB19A048FD11049F150E3BBEBFB174F0058128205B1117656BF6C98E48890DD11E357860BCC411E98B432F0114C728EF095F108802B2413C8C111722628803432018647596E7D0BB70ED1C7907C3074B180CBFF4415F88D1273B222536CF9D4E4B';
wwv_flow_imp.g_varchar2_table(23) := '4040022801A4628F403C8C111722628803432018647506795B33D7CE9177307CB01CC3F04B1FF4552C26B597868004501A4E7AAA46119000B25858C59C180212406250CA5116119000B25835C59C180212406250CA5116119000B25835C59C1802124062';
wwv_flow_imp.g_varchar2_table(24) := '50CA51251048BA0F09206944E52F53084800992A97824D1A0109206944E52F53084800992A97824D1A81A005B076C5EAA4F1CC9CBFD031C8900092E7D6A78B3E49DE69C63C2EFEEFC28C459C6CB8610B60C9727B7FE6BC6411CD90B7395367D9BAD5CD19';
wwv_flow_imp.g_varchar2_table(25) := '8A38F950831600707E1A8960D68469B668DE022E8330963DE41C3AF92976F0020084AD9BB7D892F91F1BA458FEE1526ED5A4911BA3FEBC69B38D9C6B32C9762615B400D861C5EE2B8719A458F076432C0496468C94AE2DABC72D1B36C7B3DBB467A718B9';
wwv_flow_imp.g_varchar2_table(26) := 'F9A33EB9B3C32CABB9251177D002608715DF02C176431F4C84C0D2889192590131307A564D107E7045CE1DE159D241FA7F4D9C1ECF6E85AF91333BCFD86156D816D275D002A0D06C2F64BB21FB6C2105A322F79D3931307AFA82488328203BC284EC2C6D';
wwv_flow_imp.g_varchar2_table(27) := '7CC2B3A47339B823B99123DB31C9D9DD0FF918BC005CF19D1098115816401408E3DADDD1098219C21705330524441818C4C4983530C8EA9BF3E78E7E1BE7BC83E1038263F8A50FFA72642706C8EE2F6D9C4F8EE4402EE4C4882FE283CA4E93007662119F';
wwv_flow_imp.g_varchar2_table(28) := '210496051005C23033F059816F67881F68E517A2C02021C2C02026C6AC81B114F10D02FBE6B771CE3B183E2038865FFAA0AF56C2886F4178BE4DA290F4E4143FA05F7908480079707CF50241F059816F6760E9E00B025140B6AFBE55993B3ED91129B121';
wwv_flow_imp.g_varchar2_table(29) := '5ABE4D02018BF4C5EB200114C728EF095F108802B2413C8C650644C41007864030C8EA2CCFA177E1DA39F20E860F46730CBFF4415F88D1273B222536CF5D4D9C963B0909200184211EC6880B1131C48121100CB23A83BCAD996BE7C83B183E18CD31FCD2';
wwv_flow_imp.g_varchar2_table(30) := '077D2510B65C440848001108FA0917010920DCDA2BF30801092002413FE1222001845B7B651E2190620144D1E9470894190109A0CC00CB7DBA119000D25D1F45576604248032032CF7E946400248777D145D99119000CA0CF03772AF972A8680045031A8';
wwv_flow_imp.g_varchar2_table(31) := 'D5511A11085A00FC7FFB3416A59231858E41D002D0F70299E97B812A39DCA4AC2F3698B0CB2A6561552C1C7697B1C1A6621DA6B0A3A06700EA8108D862C89643AE4330963DE49C46F2571AFFE00500E06C3164CB21A4600F2EF76AD1C88D519FAD96E45C';
wwv_flow_imp.g_varchar2_table(32) := '8B39B637A7A005C00E2B765F39D020057B7011024B23464AD796D5231BEC99DDD87F4C6EFEA84FEEEC30CB6A6E49C41DB400D861C5B740B0DDD0071321B03462A4746260F4CC82201CE11DE9D960CFECE6E7C73939B3F38C1D665C876A410B80A2B3BD90';
wwv_flow_imp.g_varchar2_table(33) := 'ED86ECB385148C8ADC77E6C4C0E8E90B8219A2DAA280ECC400D959DA30CA3BC2B7467A722347B66392B3CB31E463F00270C57742604660590051208C6B7747270866085F14CC1490106160101363D6C020AB6FCE9F3BFA6D9CF30E860F088EE1973EE8CB';
wwv_flow_imp.g_varchar2_table(34) := '919D1820BBBFB4713E399203B9901323BE880F2A3B2D4502D8195435CF1002CB028802619819F8ACC0B733B41517A2C02021C2C02026C6AC813132FB06817DF3DB38E71D0C1F101CC32F7DD0575BB14078BE4DA290F4E4D4D63B21DF97008A541F41F059';
wwv_flow_imp.g_varchar2_table(35) := '816F6760E9E00B025140B6222ECAD6EC931D91121BA2E5DB2410B0485F1C7A09A03846794FF8824014900DE2612C3320228638300482415667790EBD0BD7CE9177307C309A63F8A50FFA428C3ED91129B179EE745A020212400920157B04E2618CB81011';
wwv_flow_imp.g_varchar2_table(36) := '431C1802C120AB33C8DB9AB9768EBC83E183D11CC32F7DD057B198D45E1A0212406938E9A91A4540024843611543D5109000AA06BD3A4E030212401AAAA018AA8680045035E8D5711A109000D25005C55035042480AA41AF8E41A0DA260154BB02EABFAA';
wwv_flow_imp.g_varchar2_table(37) := '08480055855F9D571B0109A0DA1550FF55454002A82AFCEABCDA080427802E1D3BE530E7FFDBE72E023D091D832A0AA03A8CEBD261F75CC7FA5EA0FCEF05AAEBD435874D2827E109A0A3278025CB8D5D56A114BB304F7697B1C1C6DDAFEBD4CD9D06730C';
wwv_flow_imp.g_varchar2_table(38) := '4F00D10CB077E7BA5C81D965C51643B61CE66ED6F809CB1E72F6C9DFA7EB5EE6CF8E350E412EBDE00440E67B77EE69BE08D862C8964348C11E5C9EA9452337467DB65A92B3CB11F28738FA937F900220714440E13B7EAB0397B1410AF6E0220496468C94';
wwv_flow_imp.g_varchar2_table(39) := '7143867FB1C19ED98DFDC7E4E68FFAE40E06A1929FB2062B0092A7F00774EF9D371B701F21B03462A4746260F44C4C10745226738477A467833DB35B6177CC80FDEAF63330286C0BE93A680150E88EBB768804D0D3FAF5DC2F3AD699FF6752DA9D18183D';
wwv_flow_imp.g_varchar2_table(40) := '7D413043545B14909D18203B4B1B467947F8D648CF880FF1EBF73C30CAB527E9056FC10BC031C009E180EEFBE6C4E0DAFCA3130433842F0A660A488830308889316B6090D537DF27E77E1BE7BC83E1038263F8A50FFA72642706C8EE2F6DF0E7CC911E81';
wwv_flow_imp.g_varchar2_table(41) := '33E2B3F4736D3A9A4900ADB0C089819112E2F489FE42F2757F2347141824441818C4C49835304666DF20B06F7E1BE7BC83E1038263F8A50FFA6A25ECF81684275646FA037AF436477A728A1FD0AF3C0424803C38BE7A01715827F7E9BAB7F98270A2285C';
wwv_flow_imp.g_varchar2_table(42) := '325905FF758C3EC03BB2130F6285F0C4CA481FE29F35DB0BBF04D04EC49C209C2858323961F593A2A9000001F34944415430E242440C6262080483ACBE1576EBB7B973DEC307A339865FFA80E8719FD187584776E221B642BF69BB4E5B3C12404215817C';
wwv_flow_imp.g_varchar2_table(43) := '8CB8101183981802C118997D83C0BEF96DEE9CF7F0C1688EE1973EE82BA1B083772301044F81B0019000C2AE7FF0D94B00C153206C002480B0EB1F7CF6151440F0580B8014222001A4B0280AA97208480095C35A3DA5100109208545514895434002A81C';
wwv_flow_imp.g_varchar2_table(44) := 'D6EA298508480095288AFA482D0212406A4BA3C02A818004500994D5476A119000525B1A0556090424804AA0AC3E528B800490DAD2D4466069CF4202487B85145F59119000CA0AAF9CA71D010920ED15527C65454002282BBC729E76042480B45748F195';
wwv_flow_imp.g_varchar2_table(45) := '1581320AA0AC71CBB91048040109201118E524AB08480059AD9CE24E040109201118E524AB08480059AD9CE24E0401092011180B9CE83233084800992995022D07021240395095CFCC20200164A6540AB41C084800E540553E338380049099526523D0AC';
wwv_flow_imp.g_varchar2_table(46) := '45290164AD628A375104248044E194B3AC21200164AD628A375104248044E194B3AC21200164AD628A375104121440A271C99910A8080212404560562769454002486B651457451090002A02B33A492B0212405A2BA3B82A8280049004CCF29159042480';
wwv_flow_imp.g_varchar2_table(47) := 'CC964E812781800490048AF29159042480CC964E812781800490048AF29159042480CC962E1D81673D8AFF010000FFFF341D85CD00000006494441540300B817AD888F0771580000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10510732592556290911)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D0B945D5579C7BF99BC139240404344C850117035D0A2645895589352DF2F282A11B124045C6D7DD056FA505C0B6D59AB5AEB0B6DB5C590';
wwv_flow_imp.g_varchar2_table(2) := '88AFB82CF2B0582D62525794F250D1C6A80825443109C490218F99C9636ECFEFDCBB27E7DEB9F3C8CC3DFBEC73F77FD6FD72CED9E79CFDEDEFB7CFF7DFFB9CB939D369FA1101118896800420DAAE57E022602601D05520021113900044DCF90A3D6E0244';
wwv_flow_imp.g_varchar2_table(3) := '2F0180824C042225200188B4E315B60840400200059908444A40021069C72BECB809B8E825008E8496221021010940849DAE9045C011900038125A8A40840424001176BA428E9B40367A09409686D6452032021280C83A5CE18A40968004204B43EB2210';
wwv_flow_imp.g_varchar2_table(4) := '19010940641DAE70E326D018BD04A09188B6452022021280883A5BA18A402301094023116D8B40440424001175B6428D9B40B3E82500CDA8A84C042221200188A4A315A6083423200168464565221009010940241DAD30E326305CF41280E1C8A85C0422';
wwv_flow_imp.g_varchar2_table(5) := '20200168D2C91B5FBB7A36F6C0659F5BE0ECDE4B3E7BBAAC3C0C5CBFB925FDD9A4ABA32F8A5600EE59BEA6EBBEE5AB57DCBB7CF5FB92E59AFB96DFB43E593E9A5865EA4C7B1A1B3874E0D7CE3A3A0EFD5C561E06AEDFDC92FEA46F134BFA38EDEBA4CF57';
wwv_flow_imp.g_varchar2_table(6) := '632BEE5F7EE3D25895200A01A84FF6B4F32B936CE0D1A4D3D774985D972C579855B808BA92757DDA9B40D2C7695F277D6ED89A8A753AF14FC4A12A0AD6463F2385D2B60240D25747F79BD6D7277BDAF92331D1BE380924C260582A0AC94CA192D8A35C43';
wwv_flow_imp.g_varchar2_table(7) := 'ED3C43682B013892F4AB1F25E9ABA3BB12DEF4335E025D5C436E8680188CB7A250CF6B0B0120F113B55E7324E90D2537FD88400B09A462905C67E96D42BBCC0A4A2D00D5C41F9CE233756B617FAB2A11684A80C16545755670D3FAD085A0690499C2520A';
wwv_flow_imp.g_varchar2_table(8) := '4035F157A7237EEDE15D2624AD8A802F0295A5552158BD866BD297D756FA299D00701FC6543F81A0113F81A04F10045624D7E47AAECD205A73148D288D00A0B0FCAE9E873247119F0E15015F04069F1170ADFA723A513FA51000EEB312854D7E6FAF27FA';
wwv_flow_imp.g_varchar2_table(9) := '13ED709D9F3B81AEE45A0D6236309648831780E4A96BFAC0652CC1E818110884403A1B28C32D41D0029024FF9AA443B164A18F08948B00B7ABA18B40B002C0FD7ED2DD7AD09740D0A7BC041081DA40166410410A401598EEF783BC62D4A8F11048FFD3D9';
wwv_flow_imp.g_varchar2_table(10) := '784E1CEF39633D2F3801A84D9934F28FB507755C29083013A85DDB41B5372801E0693FA08222A4C688408B08706D872602C10800BF3BE55B552D62AD6A4420480289085CCEB51E4AE38211804956D1D3FE50AE0AB5234F025D795FEB47D3F82004A03A2D';
wwv_flow_imp.g_varchar2_table(11) := 'D243BFA3E9381D5B660295A5D56BBEF8180A1700A643C9B4E8BAE251A80522E08F4072CD5FCE332F7F1E9B7B2A5C00429A0E3547A45211C8854057C526153EF0152A005505D4D43F97CB4B95968040656935075AD7D4A3ADA950010841018F16988E1781';
wwv_flow_imp.g_varchar2_table(12) := '5612283A070A1380AAF269F46FE5C5A4BACA48A0D85940610250B1CECBCBD85D6AB308B49A40A5C0670185094002515FF74D20E823026615DE33386110E3A9A01001B86FF96A25FF787A4BE7B42B81AEA2BE1750880024BD785D62FA888008D408F0BD80';
wwv_flow_imp.g_varchar2_table(13) := 'DAAAD7857701A88DFE854D79BCD2953311183B81AEEA83F1B19FD08A23BD0B40C54CC96FFA1181A10406AC93BF4F3974C7184AC67B48E7784F1CEF79454D75C6DB5E9D2702BE087458C78B7DF9727EBC0B40E258338004823E22309440A5BD6700B5FBFF';
wwv_flow_imp.g_varchar2_table(14) := 'A171AB4404442025E0FB3980EF1980F7294E4A55FF884049088CE74B411309CDB700789FE24C048ECE1501FF042A5E6F917D0B80D7E0FC779E3C8A40B9087813005EFC512E346AAD081442C0EBF701BC09C0241BD0F4BF90EB494EDB99C04463F3260049';
wwv_flow_imp.g_varchar2_table(15) := '43F5003081A08F088C4660C0E317827C0AC068716BBF08884042C0E717823C0A40871E00269DAB8F088444C0A30054240021F5BCDA123081B1E54A2B02F02800260130FD88C0980878CB159F0230A6C87590088880D9C6D7AE9EED8383170178E0B2CF2D';
wwv_flow_imp.g_varchar2_table(16) := 'F0118C7C8840BB10983E67EA313E62F122003E02910F11888940AB629500B48AA4EA11811212900094B0D3D464116815012F0270F8E08097071AAD82A27A44A06802BE72C68B00140D53FE45A09D08B4321609402B69065ED7C18143D668FB0FF5D59505';
wwv_flow_imp.g_varchar2_table(17) := '1E829AD7620212801603F55D1D094D12F7F4EFB59DBDBB53DBB66FA76DDDB3DD1EE979DC7EB6EBB1417B64F7E3D6685B9FDE515756777C723E7550177562F8C0173EF1ED3B5EF96B2D0109406B79E6561BC946D2918024224949B292D024F1B67DBF4992';
wwv_flow_imp.g_varchar2_table(18) := 'BF27B59EFE7DB6FF60BF1D3C7C6842EDE17C8CBAA813DBD9DB63F8C227BE11086C5B223A3D8908611372AA93BD12900078C53D7667D98427D94936928E04ECA925F8D86BCBEF480402A34DDB1211C252614A660FDB6AA2909FF7F86A6E75C4128056139D';
wwv_flow_imp.g_varchar2_table(19) := '407D24FDCE641ACF889A4D7846E091AA9D3E67A6CD7EF63C9BBFE8145BB8E4B7ED79AF3ECFCEBAE445B6F8ADAFB0977E68A5BDECA3ABECB59F7A9BBDEEC677D885375D6D17DDFC17F6A6AFBCDB2EBDF5DAD458A78C7D1CC3B19CC3B9D4F182CBFE20AD93';
wwv_flow_imp.g_varchar2_table(20) := 'BAF1316FE17CC3E7486DCA8A821304621BE91CEDF34F4002E09FF9108F2406A32549BF339962933C430E4A0AA64C9A6CB34F3EDE4E5F768E9D7DD952BBE0FD6FB64BBEF057F64737FFA5BDE6937F66175CFFC776FE3517D93957BEC4CE7AD38BEDB9AF7C';
wwv_flow_imp.g_varchar2_table(21) := '819DF0DC93ECF85317D8310B8EB359CF986B33E7CDB619736659C79449661D1DA9B14E19FB388663398773A9E38CD7BF30ADF3FCA46E7CBCFCE357A53E2F5A7375DA867357BCC4BA5EB4C8E6759D68C3FD1013B1216EDB3433180E93F7F24EEF1EE57090';
wwv_flow_imp.g_varchar2_table(22) := '00F7F4240489C1147A70476D65DAACE936FFEC85B6E88D4BECE5375C656FB8E56FED359FF8533BF7EA57D9A2D72FB1F9BF73AA4D9A35AD76B4FFC58CE366A76D38FDC2F3EC85EFBAD05EFEB12BEDD2DBDE9BCE369E7FE932A3ED9DD327D7350C2120D66D';
wwv_flow_imp.g_varchar2_table(23) := 'C9ED4235F6DD75FBB5E1978004C02FEFD41B537DEEEBB9A72721D2C2DA3F334F986367BEAADB2EF8FBCBECE22F5C6317FCDD5BECEC4B97DABC53E6D78E087FC10CE2CC379E9FB69DD9C92B3E78451AD394E366D6359ED8113F840031ACDBA98D2104F228';
wwv_flow_imp.g_varchar2_table(24) := '9000E44175843A7B9227E54CF51BEFEBE79F736A3A8A5EF89977DAF3AF7AA9CD3FAB6B845ACAB36BEAD4A976DC19CF4A637ADDBFBE3D8DF1E4C5A7D705801020863B93E71F753BB4913B010940EE888F3820F999FA1E29317B56F769F6EA8FBDD52EB8EE';
wwv_flow_imp.g_varchar2_table(25) := 'CDC67D74765FBBAD2306C4F8A26BDF98C6BCF085CFAB0B7167F2FC63A744A08E49DE1B9D793B50FD55024C71B3C93F6BFEB1B6ECDAE5B6F43DCB6D4ED733AB0745F42F319FFFD717DBCBDEF71683850BBDE7C03E4328DDB696F9129000E4CB77B0F6ECC8';
wwv_flow_imp.g_varchar2_table(26) := '36B7EB19B6F4FA4B6DC1E2D306F7C7BA72FCEF2EB497FEE30A83090CB81DE839B097555986405EAB1280BCC836D49BBDE73FEFEDAFB6B9CF98D77044BC9B33E61E633071040E0E1C76AB5AE64C4002903360AACF4E69A72F9863279C7612C5B20C0198F0';
wwv_flow_imp.g_varchar2_table(27) := '65268A980570CBC4BA2C5F0212807CF90EA9BDEFC93DD6F3C4AE21E5B117F4EEDE6B7BB63F3588011118DCD04A6E042400B9A11DA6E24315BBF7D3770EB333DEE2FFF9E7FF304BD8C44B60F8C8F3DC2301C893EE3075EFFCC163F68D6BD7DABE277B8639';
wwv_flow_imp.g_varchar2_table(28) := '229E6218DC7DDDE76DDBFD0FC7137440914A000AEA8C5D3FF9957DE3CF6FB41F7F6943412D28D6ED810307D2D8BFF68E4FD98E1F6D29B631117B970014D8F9FDFBFA6CD39737DAAD2B3F660F7EF6DB51CC0818F189F5B62B6F48631FE89BD83B0B0AECBE';
wwv_flow_imp.g_varchar2_table(29) := 'B6702D01F0DC8D73E6CDB593CFA8FF9A6FEF537B6DF3ADDFB3DBAFFA84311D7EE4AE07AD72A87D7E15D6BFBFD77EFAF57BD3D88891580F3DDD37487EDA8CE92913D80C166A252590F73F1280BC0937A97FE1A2D3ECDC979D9F5EF48DBB990EDF9B3C10FB';
wwv_flow_imp.g_varchar2_table(30) := 'F74B3E64775E73A33DB8F66E7B62F3D6C6C382DFDEFDF0F6B4ED77FDCD5ABBE5D20FDB0FFFEDAEA6537DC470F12B97184C820FAA0D1B280128A853A71F3323BDE88713027E0DD6F3F00EDB7CDB3DF6ADF7DC6C5FB9F803F68DAB6FB4EF7DE436FBC51DF7';
wwv_flow_imp.g_varchar2_table(31) := 'D9933FDD6A9583C5CF12FAF7F55ACF23DBED275FFDAE3D70C39D691BBF78E1F5F6F56B3E93B6FDC99FFF6A086137E22FB9F80F5306430E5081370212006FA89B3BCA0AC169E79C69CF3CF9C4A6071E3C7CC8763DB6C3B67C6793DD7FD37FD95DEFBED9BE';
wwv_flow_imp.g_varchar2_table(32) := 'F4867FB0DBAEBAC1EE7EEFCDA9303CB8E66E7BE8F67BEDB17B36DB6F1EF9B5F5EDDDDFB4AEA329A48E3D5B77DAB6071EB64DB76C347C2042F8FCCA151FB15BDEFC61BBF35D9FB11FDDBCDE1EFAF60FD33636ABDF253D316AC46F46A89832094031DC8778';
wwv_flow_imp.g_varchar2_table(33) := '45084EFCAD67DBE9DD8BD2DB83454B9E9F8AC168F7C5FB9F7CDA766CDA9A0AC3E6DBEFB107D6DC65DFFDE057ED9BEFBAC9BE7AD947EC8BC9689CDA45D7DB2D6FFA27BBF5F28FDA6D577EDC6EFF934FDA1D6FFB17FBCF77DE98AE53C6BE75977CE0C839C9';
wwv_flow_imp.g_varchar2_table(34) := 'B9D4F1B5777EDAD65FBFCE7EFCB90D860F44089F07778D2C302EE989C5253D310E095E054D09F8289400F8A07C943E108363E7CF4BC5E0EC658B070581D19319C268A2D0D45DC5ACBFB7CF7A7BF6D9FE9D7B6CDFF6DDB6F7F15DF6D4D61DE93A65EC1BE8';
wwv_flow_imp.g_varchar2_table(35) := '1FDF5379929DB6714F4FC233BD77494F2C4DDBA4C2C20948000AEF82D11BE00481D193198213059E1F200A18C9873060A3D778F44790E018F593E4187EB3C94EDB7898A7843F7ABE459D2101288AFC04FD220A18A280917C0803C6E88B2110CE48548CA4';
wwv_flow_imp.g_varchar2_table(36) := '1DC938C619E7520FC6688E513F498EE157C93EC18E2CF8740940C11D90A77B04C219898A91B42319C738E3DC3CDBA7BA8727E06B8F04C01769F911810009480002EC143549047C119000F8222D3F221020010940809DA226C54DC067F412009FB4E54B04';
wwv_flow_imp.g_varchar2_table(37) := '0223200108AC43D41C11F0494002E093B67C8940600424008175889A133701DFD14B007C13973F110888800420A0CE505344C0370109806FE2F227020111900078EE8CFEDE7ECF1ECBE32E763645F49404C033F5FEDE3EDBBD437F19A811FBF6FFFB55FA';
wwv_flow_imp.g_varchar2_table(38) := 'BE82C6726DE74B4002902FDFA6B5FFE2FB9BEDB14DFA43180E0E82F8F00F7FE636B5F4484002E011B673C52CE089ADDB250209108470D3C61F246BFA144140025004F5C42722F0CB9F6FB1FBBFBE314A2120F137DEF22D83418223FA4F510024009EC9F3';
wwv_flow_imp.g_varchar2_table(39) := '5A2DCCB96D1402A6C36E5FBB2DFBF6F6A662D72CF16182B55BCCA1C72301F0DC43D3664CB3B37EFF0543FE28881302A6C3CC0A7828D60E62E092FEC7EBEFB707BEF9DDA6233EEF17E47563B0F1DC1DD1BB9300147009F0AA2DDEA9C73BF7789967631310';
wwv_flow_imp.g_varchar2_table(40) := '031E8A393178E8BE4D5616417009EFA6F82EE99FDED5D318A6F18251DE3F088B213B55E0858004C00BE6E64E10025EE68910300A363B0A3178E297DB2D2B08CC10B2A240D2353B37CF327C324321D1314678A6F62EE187BBB7679A4FACC4CC0B4679FF60';
wwv_flow_imp.g_varchar2_table(41) := '9EED2C43DD45B651025024FD9A6F84805190A4604424414894DAEEBA058280654581A423F910068C64442030660E8D46E20E67D963496C8C7AA813C30F864F6628243AD66C84770D2716622236A6FAC44ACC6EBF96C511900014C77E8867928211910421';
wwv_flow_imp.g_varchar2_table(42) := '5110045EE1CD6D02D3E521273414200C18C9884060CC1C1A8DC41DCEB2C792D818F55027D6E8A9AD7000000C9449444154E0B2E9A64B78929E1888859888ADE9092A2C8C8004A030F4A33B4610788537B7094C97492646D1A31185D1BD8CFF08121D23D1';
wwv_flow_imp.g_varchar2_table(43) := '31DAE6FE8600098F11C3F83DE8CCBC094800F226DCC2FA492646D1AC28907008034602220E2423B3068C990346A23A1BAE496EBF5B721E7560D489E103C32F233B46A263B46DB8BA55DE9C40D1A51280A27BA005FE11068C04441C4846660D1833078C44';
wwv_flow_imp.g_varchar2_table(44) := '7546F23633B7DF2D398F3A30EAC4F081B5A0D9AA2200021280003A414D1081A20848008A222FBF221000010940009DA026C4492084A8250021F482DA20020511900014045E6E452004021280107A416D1081820848000A022FB7711308257A0940283DA1';
wwv_flow_imp.g_varchar2_table(45) := '768840010424000540974B110885800420949E503B44A00002128002A0CB65DC04428A5E0210526FA82D22E0998004C033F0FEDE7EE36D3A9EDD96C2DD58DF37508A604AD2480980E78EEAEFEDB3AD9B1FF1EC357C77BC7528FC56B65F0B250005F4296F';
wwv_flow_imp.g_varchar2_table(46) := 'D8D1057F043CAF1A83C99192F65D0B2D320940413DC205CFFBFB78075F414D28DC2DEF258481A6FEC5758504A038F6E91FC3E41D7C2401C9506053BCBAE61908A33EEF25E496C8AB7339AB232001A8C391FF06AFDBE2D55A594F2401C98010F016DE7614';
wwv_flow_imp.g_varchar2_table(47) := '03929ED8DC1B851B477D98F00AB22C17ADE74F4002903FE33A0FFCF51B5EADC53BFC1A2F788480B7F03A31E03941596F114878848CA447D8788D38B1D5C148361044DE31089364B3AD3F2106270128A85778871FEFDCE3E26F14029A8418F09CC0DD2290';
wwv_flow_imp.g_varchar2_table(48) := '444E10482C8E09C94878C48A84677A4FC22364243DB134B695C4E705A6BC7F50EF186CA4E36F5B02E08F75534F5CFC08013382E1A6C12410E60481C4622AED44C10903098838908C4D9D4DA0903A31EA27C931FCD206DA42C22356247CE3F4DEB925E989';
wwv_flow_imp.g_varchar2_table(49) := '9158497C5E60EAF669590C01094031DC87786546C034783431C89EE844C10903098838908C2425C9E98C51D91989DBCCDC7EB7E45CEAC1A813A37E921CC32F6DC8B6A971BD31E98991581B8FD37631042400C5701FD12B0942A23831E03681E932B70A24';
wwv_flow_imp.g_varchar2_table(50) := 'D488276776929CCE18959D91B8CDCCED774BCECD5437EA2A6DA38D8CF2B499578F33D2130B318D5A411B1F106A681280507BA6D62E1287DB04A6CB080209C5141A4314F8A31D18894702D64ECB6D810F0C9F243A964D76DA48C2D3E6DC1AA18A5B464002';
wwv_flow_imp.g_varchar2_table(51) := 'D03294FE2A42143044813FDA81917859714020484C44C219C9EA8C0476E6CAB24B770E7560D4E74674FCE09344C794ECFEFABED59E2400AD265A707D0883331213917046B23A23819DB9B2ECD29D431D1875161C9ADCE7404002900354552902590221AF';
wwv_flow_imp.g_varchar2_table(52) := '4B0042EE1DB54D0472262001C819B0AA17819009480042EE1DB54D0472262001C819B0AA8F9B40E8D14B0042EF21B54F0472242001C811AEAA1681D009480042EF21B54F0472242001C811AEAA8E9B4019A2970094A197D44611C88980042027B0AA5604';
wwv_flow_imp.g_varchar2_table(53) := 'CA404002E0A197A64C9A3CE8A5BFB77F705D2BF504C4A69E878F2D098007CA533AB302D067BC55C783DB52B980497F6FDF609B674E993EB85EC695B2B45902E0A1A710809953A60D7AFAC5F737EBCF830DD2B094054C5CD1DC69B30C666E5BCBFC084800';
wwv_flow_imp.g_varchar2_table(54) := 'F2635B57F3DCA9C70C6E33D2FDEF77BE6FBCC36FB030D215467E5E3506138760EEB423AC5C9996F9109000E4C37548AD5CD40B661D3F58CE05CF3BFC78FF1E4930B82392155E304AECBC63301B328C664ED6F43FCB24CF7509409E741BEA46044E9831B7';
wwv_flow_imp.g_varchar2_table(55) := 'AE94F7EF31FDE5259D31CC08103B6265D427F62C0C921F46D9B232AE97A9CD1200CFBD75C28C63ED39C79E64D96702CC067849273302DEC44B8290289E9B969B3B467B5E23CEDB8519F18935EB8CDF929C3267BE29F9B354FCAC4B00FC70AEF3C203AE53';
wwv_flow_imp.g_varchar2_table(56) := '669F680B925B022EFEEC4E2706240A62C0349999419904C1253C6D27E919ED798D78364ED6891D06CF999B08A2A6FD20F16E1200EFC88F3864C43B65F6FC540878F27D644F750D31609ACCCC202B08CC10421005121D616274C71A139EB65723A9FF97C4';
wwv_flow_imp.g_varchar2_table(57) := 'E75688C48741FD5E6DF9242001F049BB892F660324C1825927A4B7068C88D9DB83EC294E1098423B51608465A68091808803864060242846B2662D5B2FEBD97DAC730E461D243746BDF8C0F0CBC88E3031BA63C3253CF5BBA43F73DE4223F1B915A2BCDD';
wwv_flow_imp.g_varchar2_table(58) := 'AC6CF1480002EA312706DC1EF09C00316066309C20B8A6230C18098838600804468262246BD648E0AC65F7B1CE39187590DC18F5E20373BE875B4E9934D918E5B9B757D20F47A9F8720940F17DD0B4054E0C9819640561ACA2D0B4D21C0A49740CA16A96';
wwv_flow_imp.g_varchar2_table(59) := 'F0FA955E0ED05B58A504A08530F3ACCA0982BB5D4014D291F5D8938C517641F2409104241131660D24E644DAC4F918755127F53BC367EA3F7980C7941EA1625AAF849F0871FFE74A00FC336FA9478481A44318484012114320484C92D419B7158D462267';
wwv_flow_imp.g_varchar2_table(60) := 'CBDCB12C391FA32EEAA47E67F86C69206D50591943900094B1D7C6D966C4A2D148E46CD938ABD6692525E04500264DE9DC53523E6AB608B435012F02D0D604159C08E440C0D7A02901C8A1F354657C04CA1AB104A0AC3DA7768B400B08781180BEA70FEC';
wwv_flow_imp.g_varchar2_table(61) := '6D415B5585084443C057CE781180687A4D818A40C9087811802577ACD26F014A7661A8B9632790C791BE72C68B00D4006DA92DB5100111189980B75CF128001DDE821A99ADF68A40E804FCE58A4701081DBADA2702A110A8781B2CBD0940C52AFF1D0A5E';
wwv_flow_imp.g_varchar2_table(62) := 'B543045A45A0ECF57813804E1BD85076586ABF087822E06DB0F42600876CB2B7698DA74E921B11C885C061EBF4365876E612812A150111183781DF5BB7D2DB60E94D00AA41757853B671D3D78922304602F91CE63747BC09401596BFA79B557FFA5704CA';
wwv_flow_imp.g_varchar2_table(63) := '46C06F8E7815800E1BF86CD9BA43ED1501CF04BC3D00242EAF02A00781209789C0F0047C3E00A4155E0540CF01402E6B070239C5B0B69A2339D5DEA45AAF02807F7D21080A3211184AA062F6D8D0D27C4BBC0B80BE10946F87AAF6F212282237BC0BC0E2';
wwv_flow_imp.g_varchar2_table(64) := '755725BF0AF4FBAB8EF25E126A794404B65473C36FC4DE05A01A5E45BF0DA882D0BF2524905393DF9F53BD23565B8800F87ED2392201ED14810008149513850840F549A76E0302B8EED4843008787FFAEFC22E440070DE61870B99F2E05B2602211128F2';
wwv_flow_imp.g_varchar2_table(65) := '0B72850940F581876601215D886ACBE8045A7F44C7866A2EB4BEE6B1D4589800D0B8C3D6B192A54C04622550F44CB85001D0B380582F7BC55D23B0B6C8D19F36142A003440B30028C86224903CF92FFC3958E102509D05986E0562CC8092C5DCCAE656CC';
wwv_flow_imp.g_varchar2_table(66) := 'DE5FBBF65B59ED51D755B800D0E2EE75ABD69AE981A0E92712021D1BCE5BB7EA7D21041B84000042B7025090C54020A46B3D1801A84D87742B104306441C63F23BFF65B56B3D080AC1080034B815E0DE887599088444A0456D59B938FDCF702DAAAD05D5';
wwv_flow_imp.g_varchar2_table(67) := '042500C4C3BD91440012B23623B0B63B7DD6155654C109007806AC736D25794ACABA4C04CA4FA0634392FC41DEDE062900DC230D4804CA7FDD2B02082423FF15CB5809D1821400402102BA1D8084AC6802E3F55F4966B1A18EFC2EA66005C035101148D6';
wwv_flow_imp.g_varchar2_table(68) := '839C3E25EDD247049A12E0697FEDDA6DBA3F94C2E0050050898AAE3D6C9DA79ABE2C64FA099D40C706AED5C5813DED1F8E5A290480C6734BD0BDEE8A654CABD89689406804B836B946B956436BDB70ED298D00B8009856A1B0C9F6DAC4F411815C098CAD';
wwv_flow_imp.g_varchar2_table(69) := 'F2EAA8CFB539B6E3C339AA7402003A14B67BDDAA95120268C88A23504DFCEE6466CA35595C3BC6EFB99402E0C2057AB784C0E1D0D21F81B53CE4EB2E71E23B54A5160017445608B80F333D2C34FDB49CC016AEADEE75AB3A120BEE2BBDE38DB62D04C005';
wwv_flow_imp.g_varchar2_table(70) := '8F10701FD69D2833B7077498490C4C3FE323909C95267D75B45F752AD75652D6569FB612806CCF348A41B28FEF12240F0EF5DE8184853ECD09A409CFC0D15D1DE9D3A45F5C925FE9350F69E4D2B615806CD88841F7BA556B135BD95D9B1D3043488EA989';
wwv_flow_imp.g_varchar2_table(71) := '823961D862FA697702491FA78340FAFF4D48F6DA08CFD43E4DF8761CE987EBD42804A031780401EB1E148555A93024DBA726D67160BFCDC13A274F7D96B34A65F219B2F23070FDE696F46BCD923EBE6259B2BE9244C716B7F108DF78ED376E4729008D10';
wwv_flow_imp.g_varchar2_table(72) := '1AB797DCB16A0F76EEE7DFB2CDD9795FBEFC21597918B87E73CBC63E1E6D3B96FD1280587A5A718A40130212802650542402B1109000C4D2D38A53049A1090003481A2A2B809C414BD0420A6DE56AC22D0404002D000449B2210130109404CBDAD5845A0';
wwv_flow_imp.g_varchar2_table(73) := '818004A0018836E326105BF41280D87A5CF18A40868004200343AB22101B0109406C3DAE7845204340029081A1D5B809C418BD0420C65E57CC2250232001A881D042046224200188B1D715B308D40848006A20B4889B40ACD14B0062ED79C52D02090109';
wwv_flow_imp.g_varchar2_table(74) := '4002411F118895800420D69E57DC22901090002410F4899B40CCD14B0062EE7DC51E3D010940F4978000C44C40021073EF2BF6E8094800A2BF04E206107BF4FF0F0000FFFF5152698900000006494441540300B49A4AD3C1BAAB640000000049454E44AE';
wwv_flow_imp.g_varchar2_table(75) := '426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10510732899092290912)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000001D5494441547801EC94BF4B425114C7BF5990A6624559D02FFA8135D4D2504350343534B5B544D0128D2ED51C34FA073404110E41B43404051195432869839088';
wwv_flow_imp.g_varchar2_table(2) := 'FD109432B3345EFE9657E7A1F1B6771E0842BC075FEEB9F77DDFB91FCEB9F7E9DC8BBB622DA5438D1F0D40AB80560155154817B348E505082D40C1660226AD9228A6B597F43B523941D5C56603240C390C2C4F61D6B98669C71226371730BE3A2789625A';
wwv_flow_imp.g_varchar2_table(3) := '9B3FB063786506E4E552B0014AF522F2C53C2B6FA15460F9C8C4066810EBF07613C2A57D0F9EAD23B8B60FE1DD3995E4711CE3627D1FD71B4E3C9C7961B69829374B6C80C6263D3A07BAD13F3E828EFE2EF4F6F6A0ADC922A9C36AC5E0980D7DA3439258';
wwv_flow_imp.g_varchar2_table(4) := '3B974D6C80B2BFEA031B2015FF4432F6A10890153220AFA2B16C6003E88D0664BFD308FB43787D8C20E8F64B31CD499579EC390A4BFBEF3D2D6FA034B0012A6780FA4C67C136312AF59BE624F95C6953F97B3680FCA36AC66C00EAAB7606A8F7D46F1AE5';
wwv_flow_imp.g_varchar2_table(5) := '3DA735F95C4D8BD82D5093548D970D908B09ECFF4021956133B0015A7546247C6104CFEF10F185F0741BF8FB0F507C7FE543E0C483A82B80E6BCBEFA0094D1D2680281E89322CC5FF530C6454914B7974C683334833CE4E58A5D016E42B53E0D40ABC0FF';
wwv_flow_imp.g_varchar2_table(6) := 'AF80D2ADF8010000FFFF9D02DAC500000006494441540300864F1B10B117938A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10510731962668290910)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD07BC5C55D9EFF147A42484141230899450420F4D08C5848E8214E952AE7051F4DA0B82CA2B7685170B622FAFA25EE052A45B4014A9414A';
wwv_flow_imp.g_varchar2_table(2) := '88088498401248404F80134880348978E73F64E1CEC99C993D33BBACB5D7EF7EDE4592995DD6F35DFB9EE7BFF74CE26AF79D70E1BF1918700D700D700D700D700DC4750DAC66FC3F04104000010410884CC08C0010DD9253300208208000020400AE0104';
wwv_flow_imp.g_varchar2_table(3) := '1040000104A21350C13C01900203010410400081C8040800912D38E52280000208C42EF06AFD0480571DF82F02082080000251091000A25A6E8A4500010410885DC0D54F007012FC8A0002082080404402048088169B5211400001046217F84FFD0480FF';
wwv_flow_imp.g_varchar2_table(4) := '58F03B041040000104A211200044B3D4148A0002082010BB40B27E02405283DF23800002082010890001209285A64C0410400081D80556AE9F00B0B2077F420001041040200A01024014CB4C910820800002B10BF4AD9F00D057843F2380000208201081';
wwv_flow_imp.g_varchar2_table(5) := '0001208245A6440410400081D80556AD9F00B0AA09AF2080000208205079010240E59798021140000104621768543F01A0910AAF2180000208205071010240C51798F210400001046217685C3F01A0B10BAF2280000208205069010240A59797E2104000';
wwv_flow_imp.g_varchar2_table(6) := '01046217E8AF7E02407F32BC8E00020820804085050800155E5C4A4300010410885DA0FFFA0900FDDBF00E02082080000295152000547669290C0104104020768166F513009AE9F01E02082080000215152000547461290B01041040207681E6F513009A';
wwv_flow_imp.g_varchar2_table(7) := 'FBF02E02082080000295142000547259290A0104104020768156F513005A09F13E02082080000215142000547051290901041040207681D6F513005A1BB10502082080000295132000546E4929080104104020768134F51300D228B10D02082080000215';
wwv_flow_imp.g_varchar2_table(8) := '132000546C4129070104104020768174F51300D239B11502082080000295122000546A39290601041040207681B4F51300D24AB11D02082080000215122000546831290501041040207681F4F51300D25BB1250208208000029511200054662929040104';
wwv_flow_imp.g_varchar2_table(9) := '104020768176EA2700B4A3C5B608208000020854448000509185A40C0410400081D805DAAB9F00D09E175B2380000208205009010240259691221040000104621768B77E0240BB626C8F000208208040050408001558444A4000010410885DA0FDFA0900';
wwv_flow_imp.g_varchar2_table(10) := 'ED9BB107020820800002C10B1000825F420A4000010410885DA093FA09009DA8B10F020820800002810B1000025F40A68F0002082010BB4067F513003A73632F0410400001048216200004BD7C4C1E010410402076814EEB2700742AC77E082080000208';
wwv_flow_imp.g_varchar2_table(11) := '042C40000878F1983A0208208040EC029DD74F00E8DC8E3D1140000104100856800010ECD231710410400081D805BAA99F00D08D1EFB22800002082010A8000120D08563DA0820800002B10B74573F01A03B3FF6460001041040204801024090CBC6A411';
wwv_flow_imp.g_varchar2_table(12) := '400001046217E8B67E0240B782EC8F0002082080408002048000178D292380000208C42ED07DFD0480EE0D3902020820800002C1091000825B32268C0002082010BB4016F51300B250E41808208000020804264000086CC1982E0208208040EC02D9D44F';
wwv_flow_imp.g_varchar2_table(13) := '00C8C691A32080000208201094000120A8E562B20820800002B10B64553F01202B498E830002082080404002048080168BA92280000208C42E905DFD0480EC2C3912020820800002C108100082592A268A0002082010BB4096F51300B2D4E45808208000';
wwv_flow_imp.g_varchar2_table(14) := '0208042240000864A198260208208040EC02D9D64F00C8D693A32180000208201084000120886562920820800002B10B645D3F01206B518E8700020820804000020480001689292280000208C42E907DFD0480EC4D3922020820800002DE0B1000BC5F22';
wwv_flow_imp.g_varchar2_table(15) := '26880002082010BB401EF51300F250E598082080000208782E4000F07C81981E0208208040EC02F9D44F00C8C795A3228000020820E0B50001C0EBE561720820800002B10BE4553F01202F598E8B000208208080C70204008F1787A92180000208C42E90';
wwv_flow_imp.g_varchar2_table(16) := '5FFD0480FC6C3932020820800002DE0A1000BC5D1A26860002082010BB409EF51300F2D4E5D8082080000208782A4000F0746198160208208040EC02F9D64F00C8D797A3238000020820E0A50001C0CB6561520820800002B10BE45D3F01206F618E8F00';
wwv_flow_imp.g_varchar2_table(17) := '0208208080870204000F1785292180000208C42E907FFD0480FC8D3903020820800002DE091000BC5B1226840002082010BB4011F513008A50E61C08208000020878264000F06C41980E0208208040EC02C5D44F0028C699B3208000020820E0950001C0';
wwv_flow_imp.g_varchar2_table(18) := 'ABE560320820800002B10B14553F01A02869CE83000208208080470204008F1683A92080000208C42E505CFD0480E2AC3913020820800002DE081000BC590A26820002082010BB4091F513008AD4E65C08208000020878224000F0642198060208208040';
wwv_flow_imp.g_varchar2_table(19) := 'EC02C5D64F0028D69BB3218000020820E0850001C08B6560120820800002B10B145D3F01A06871CE87000208208080070204000F1681292080000208C42E507CFD0480E2CD3923020820800002A50B10004A5F0226800002082010BB4019F51300CA50E7';
wwv_flow_imp.g_varchar2_table(20) := '9C082080000208942C4000287901383D0208208040EC02E5D44F0028C79DB322800002082050AA0001A0547E4E8E0002082010BB4059F51300CA92E7BC0820800002089428400028119F532380000208C42E505EFD0480F2EC3933020820800002A50910';
wwv_flow_imp.g_varchar2_table(21) := '004AA3E7C40820800002B10B94593F01A04C7DCE8D0002082080404902048092E0392D0208208040EC02E5D64F0028D79FB3238000020820508A0001A014764E8A0002082010BB40D9F51300CA5E01CE8F400B81975F596E1A8B972FB585CB5EAA8FDE25';
wwv_flow_imp.g_varchar2_table(22) := '0BCC8D9E45BDA631F7C579E6C6AC857FB7BE63FA7373ACD5E8BB8FFBB33BAE7ED5B9DC707370F3D21C3534DF1665F1360208942C4000287901387D9C026A901A6A966A9EAE91AAC16AA8F1BA663D6B41AD99D7C6DC179EAE35FAF9F5D1BB64612D00BC3A';
wwv_flow_imp.g_varchar2_table(23) := '162E5B540B058B6CF1CBCB5E1B2FFFAB161AFA8C34D28DF6D36BC963BBF3E957378F9E45AFCE4B73D4D09C357FD5A1A19A7A560495852B428C6A97419A79B10D02D51328BF220240F96BC00C2A2AA0E6A626A786D75BBB6357035423AC37C65A43579354';
wwv_flow_imp.g_varchar2_table(24) := 'B3ECA935CFDE150DDD355A35DD2AB0A80E0DD5B570455051BD1AAA5D06758F154F2C7A1221417632AC82033520E0A30001C0C755614E4109A849A959F53668F26A723D2B1ABC1AA01A6150C515345985040D1969C84C760A087A82A0D1530B070B6B4F0F';
wwv_flow_imp.g_varchar2_table(25) := '642DF382A6C66910C845C0878312007C5805E6108C801A8F1ABD46F26E5ECDAAB77617BFB076974B93CF7639150C3464DB530B53B276C1406BD0930806D99E99A321506D010240B5D797EABA1050B35F58BBE3ECADDDD9ABD1D41F55D71EDDF7D61ABD06';
wwv_flow_imp.g_varchar2_table(26) := '8DBE0BDC0C765528D01A2CAC85AE1E170C6A1F2568AD7A568402AD6106A7E21008642CE0C7E108007EAC03B3F04040CDA2B7D6EC355CB3EFA93596DE5AC357A3F1608A4CA18540DF50E09E14F4AC0804FAF8A0C521781B8168040800D12C3585F61550C3';
wwv_flow_imp.g_varchar2_table(27) := '5743E8AD357D7DC6AC66D15B6BF61A7DB7E5CFE10A2814F47D4AE00241B85531F390057C993B01C09795601E8508A8E9F7D61ABE1E13ABE1EBF3E4DE5AD357932864021D9C648DD7AF6E6B0E58D3868C186623C78CB631DB6E6E9BEEB2B58D9DB8BD6D75';
wwv_flow_imp.g_varchar2_table(28) := 'E0CEB6C311136CE7E3F7B53DDEFD369BF0C1C36DAF8F1F656FF9EC4976D0974FB1C3BEFD3E3BFCFB1FB0B7FFE84376C44F3F62EFB8E49376C2E59FB613AFFC2F3BE9DAB3EB43BFD76B47FEFC63F56DB4ADF6D1BE3A868E75C0278FAF1F5BE7D0B974CE71';
wwv_flow_imp.g_varchar2_table(29) := '07EF569F83E6327AAB31F5B9698E83D61E649A7307A516B28BD6DA05827AF0AB7D6CD05BBB26746D1432014E8280270204004F168269E427A01FECFA01EF9A7E6FADE197FD487FCDD557B7B5D75DC7466C3ACA36DC79AC6DB9FFCEB6E3317BD99EA7BDAD';
wwv_flow_imp.g_varchar2_table(30) := 'DEC00FFAF2C976D4F73E64275DF7593BEEEAB3ECD8CB3F65875DF8613BE03BA7D984734FB43D3F77ACED76E611B6CB870FB571EFDACFB63971A26DF6F65D6CCC5B77B48DF6DDCED6DF75331BB1C3C6366493F56DF086236C9DD1EBDAA0F587DAEAEBAC65';
wwv_flow_imp.g_varchar2_table(31) := 'AB0D58C35EB7C6EBCD5EF7BAFAD0EFF5DADAC307D7B7D1B6DA47FBEA183AD6C8095BD48FAD73E85C3AE70EEF7F6B7D0E9ACB7E5F3BB93E37CDF1884B4FAFCF59733FF45BEFAD0591DA7BB500A1DA54E3766F1D5FAF59B50F5D6F9859893F85140634744D';
wwv_flow_imp.g_varchar2_table(32) := '28102A10F4D6C2809E0C19FF0F815C04FC396889FF5FCF1F0466523D01D7F4F5035D3FD87B4B68FA6B0E58CB866C3CC2B6D87B471BF78E89B6CFA78FB303CF3DD9DE71D19976EC5567D991BFF8B81D74C17B6CEF2F9C60BB7EF450DBEEE47D6CD3C377A9';
wwv_flow_imp.g_varchar2_table(33) := '37F0113B8CB1811BAD6BA1FFBFA19B8DAC059131A600A1DA54E38E1F3CA85EB36A3FF4671FB693AEF9AC1DF9B38FDA21DF3CCDF6FCC411F6A693F6B33113B6AD87238593220D5C18D093215D3BBDB53050E4F9391702450A10008AD4E65CB90BBCD6F857';
wwv_flow_imp.g_varchar2_table(34) := '7C5B5F3FD0F33EA91E770F1B39DC36DB6D1BDBF6C83D6DEF338EB1E37E717AEDAEFD9376D8773F60E33F71B8ED70D2BEB6C19E5BD91BB61D63AB0F1990F794823BFEDAEB0DB1616347DBA67B6F6F5BBF63824DF8E4D1F570A48F278EF8C987EAA63B1DBB';
wwv_flow_imp.g_varchar2_table(35) := 'B76DB4CB1626EB220AD4B5D35B0B8E0A02FACE004F058A50AFFE397CAA9000E0D36A30978E057A6B776AFA41EDEEF63B3E508B1D5F6DF6236CF33DB7B3DD4F39C80E3FF7B4FAE3EE437EF241DBE333C7D84EA71E601BEEB58DADB1EEA01647E2EDB40283';
wwv_flow_imp.g_varchar2_table(36) := '46AE5B37DDF69D7BDB5E9F3BDE64AD8F170EFAD2C9F5A7055A8BF5478FCCED7B070A02FACE004F05D2AE18DB8522B05A2813659E08341250E3D75FD9EBADDDA9E90775A36DBA794D8FF1C7ECB0856DF3F63DECD02F9EBAA2D97FC076FFF451B6F9D1E36D';
wwv_flow_imp.g_varchar2_table(37) := 'F0B6A3BB393CFB76213062C731F5A7055A8BB7FCE8BDF5B579CBD927D98E47EF656FDC6E131BB4F6A02E8EDE78575D63BAD614367B6BA1B3F156BC8A407F027EBD4E00F06B3D984D4A01FDF0758D3FE52EA9361B307860ED51FEB6B6C7BB0EB6232F787F';
wwv_flow_imp.g_varchar2_table(38) := 'FD31FE842F1F6F3BBFFB401BBAD386A98EC146E509AC3F7E33DBEE947D6CDF73DE69FA32E2215F7FB7ED72F2FEF5351D3C7470661323086446C9814A1420009488CFA9DB1758B8ECA5FAFFA46D6FED8EBFFDBD57DD63CD016BDAC8ED37B6ED8FDFCB8EFE';
wwv_flow_imp.g_varchar2_table(39) := 'D147ECE88BCFA83DCA3FDA363B62575B7BD3F556DD8157821218B6E51B6DAB63DE5C5FD3C3FFEFC7ECB0EFBCCF7679E7FEB6E14E9BDBEBD6E8FEC71F4120A8CBA1F4C9FA3681EEFF7F806F15319F4A0AE8CB7DFA6B7C3D8BE6775DDF5A0307D896FBED64';
wwv_flow_imp.g_varchar2_table(40) := 'FB9E7D7CED0EFF5376C0574EB1ED4FDCC7068C1EDAF5B13980DF0243C6AC6F5B1DFB66DBFB8B27DA31FFEFCCFA35B0C95EDBD96A6BADDED5C4934140D76A57076367040A1220001404CD693A17E8AD7DD6AA2FF775F377F7F5E5BD4D76DECA267EF4083B';
wwv_flow_imp.g_varchar2_table(41) := 'E6B2336DD78F1D666F1CBF45E79362CFE005D65C73CDFA35F0E6338EAA3DF9F944FDDAD86087CDBAAA4B4160EE8B4F9BAED9AE0EC4CE1514F0AF2402807F6BC28C5608E84E6AEE8BF36A3F4C17AE78A5FD5F060E1B64DB1CBE7BED6EEF0C7BF3178EB38D';
wwv_flow_imp.g_varchar2_table(42) := 'F7DFBEFD83B047E5051406746DECF3E593ECE88B4EB71D8F9E6843860FEBA86E8580DEDA478EE9972C000010004944415454FAA2A0AEE18E0EC24E081420400028009953B42FA01F9C736B77529DDCF5EB6E7FCCB69BDBFEA71F6747FDF274DBF9B4B798';
wwv_flow_imp.g_varchar2_table(43) := 'FEA5BBF667C11E310A0C1832C8B63B655F3BECE71FAE5F4363B6DBBC230605015DC3BA963B3A003B554AC0C76256F37152CC296E01FD832B7AE4AF1FA0ED48A8F16FB6C7B676F039A7D6FFB9DC51FB6CD5CEEE6C8BC02A02BA86269C73A21DFC95536CF3';
wwv_flow_imp.g_varchar2_table(44) := '3DB65BE5FD562FE81A5608D035DD6A5BDE47A068010240D1E29CAFA9807E50EA1F5C69BA519F37D5F8C7EEB5831D76C1FFB13DCE3ADA066F3DAACF16FC1181EE04866FBFB1ED7ED65176E8F9EFB12D6AD79AAEB9B4475408D09757756DA7DD87EDAA26E0';
wwv_flow_imp.g_varchar2_table(45) := '673D04003FD725CA59E95169BBCD7FF309E36A8FF93F6EBB9DF1761BB8F1F028DD28BA3881A19B8FB2F1B56BEDD0FFF9A08DAD5D7B69CFEC4280AEF1B4FBB01D02790BAC96F709383E0269057A16F5A6DDD4868E1D696FFBEF536DF74F1E69AB0F1E907A';
wwv_flow_imp.g_varchar2_table(46) := '3F3644200B81B5470CB1DD6AD79EAEC1F5B74EF70F442904E8E3802CCECF31C212F075B604005F5726B279CD7D719EA5FDC2DFF627EC6D877EF3BDB6EE36E97EF0464649B9050AE81A7CCB79A79AAEC934A755086827E8A63926DB20D0A90001A05339F6';
wwv_flow_imp.g_varchar2_table(47) := 'CB4C409F8DA669FE6BAF3BD8F6FFC249A97FD86636410E84400B01058083BFFABF4DD7688B4D6DE1B245A66BBED576BC5F15017FEB2000F8BB36D1CC6CE1B2975AD63A68F4BAB6D7E7DF61A376EEEE1F6A6979223640A04381E1E336B203BEF24ED3B5DA';
wwv_flow_imp.g_varchar2_table(48) := 'EA1069AEF956C7E07D04BA152000742BC8FE5D0B2CACDD11353B883EE39FF8A9A36DC4A6FC2FEF3573E2BDF205066F38C2F63FFB041B386C9DA69359BC7C992D5EBEB4E936BC590D019FAB2000F8BC3A11CCAD77C98296554EFCD0DB69FE2D95D8C01701';
wwv_flow_imp.g_varchar2_table(49) := '8580DDDF7F48D3E9E8BB008B5F26003445E2CDDC050800B91373826602ADFE5AD4E8DDC6DA1BF7D8B2D921780F01EF0474CDEADA6D36319E0034D3A9CA7B7ED74100F07B7D2A3FBBC5B547A1CD8ADCEC801D9BBDCD7B08782BB0F5C1E3BD9D1B13434002';
wwv_flow_imp.g_varchar2_table(50) := '04002930BC1518BD135FFAF376719858538111DB35FF6BAA2FBFF2AFA6FBF366F802BE574000F07D852A3E3F7D165AF112292F5201FD2F0C362B9D6BBF990EEF1521400028429973742C30FF91A73ADE971D11285360CE7DD3CB3C3DE72E5DC0FF091000';
wwv_flow_imp.g_varchar2_table(51) := 'FC5FA3A86738FDF793A3AE9FE2C31598FDA707C39D3C338F42800010C532875B64CF7D33ED1FF73C1A6E01CC3C4A015DB3BA76A32C9EA2EB0221FC870010C22A453EC77B7F7C83BDF8D4FCC815283F14015DAB937EF0EB50A6CB3C2316200044BCF8A194';
wwv_flow_imp.g_varchar2_table(52) := 'BE64C14B76CB399713024259B088E7A9E67FD3972FB6E52FF28FFC447C19985918D51300C258A7E867B9A8E779FBD3E72EB1B9F7F2C5AAE82F064F01E63D30DB6E3CFB17F6CF675AFF6F5B785A02D38A4C800010D982875CEEE2E75FB47BBF7E9D3D7CF9';
wwv_flow_imp.g_varchar2_table(53) := '1D2197C1DC2B28A06BF2962F5D6ACB1772E75FC1E56DBBA45076200084B252CCB32EA0BF3BAD1FB6BF3BF3A7F6FCDFF82B827514FE539A80AEC13F9EF54B4269692BC089BB11200074A3C7BEA5092C9CF9B4DDFCD94BECBE6F5CC7E7ADA5AD42BC275E3C';
wwv_flow_imp.g_varchar2_table(54) := 'FF05BBB776EDDDF85FBFB467A71344E3BD121A551ECE6B048070D68A99F611D0D38099774DB56B4FFDB64D3EFFD7B664EE737DB6E08F08642BB070D63CBBAF76AD5D77DA776D56EDDACBF6E81C0D8162050800C57A73B61C045EFED7727BECCE87ECB7A7';
wwv_flow_imp.g_varchar2_table(55) := 'FF8FDD7BDEB5F6D2F479399C8543C62C30FFE1B976CF79D7D8EFCEF899CDAC5D6B315B507B738190DE250084B45ACCB5A98082C0AC7B1EB11BCFFEA5DD7AD6C536F74F0F37DD9E3711682530EFF61976D7672EB39B3E7791CDBE675AABCD791F81A00408';
wwv_flow_imp.g_varchar2_table(56) := '00412D577C93DD68AB4DDA2E5A41A067FA1C9BF4BDEBEB1F0F3C72D16DF6CAD297DB3E0E3BC429A06BE5810BFF58BB762EB05B2EB8D2E64C9BD511C490E1433BDA8F9D4216086BEE0480B0D62BBAD98E1937D63A09010E6AC98297ECC16B26D9D5FFEB7C';
wwv_flow_imp.g_varchar2_table(57) := 'BBFDF397DADC5B782AE06CF87565817977CCB03F7FE94ABBFC84AFD9DF7E73AF2D59B068E50DDAF893AED91DF61BDFC61E6C8A40F1020480E2CD39639B020A01BB1E34C1BAB9A3D25381BF3F34DB267DF77ABBFAC46FDA9FCFBFD6FE31F9B13667C2E655';
wwv_flow_imp.g_varchar2_table(58) := '13E8FDEB1376FF777E6B971F7F9EDDF2AD2BED8907667455E25A030798AE555DB35D1D889D8314086DD20480D0562CD2F90E5867A0E98E6AECCE5B9B7EC876C3B06CC9527BE2CE47ECB673AEB0AB4EF8BADDF1C5CB6CC6557FB617E63CDBCD61D9370001';
wwv_flow_imp.g_varchar2_table(59) := 'ADF1C397DD5E5FF3CB8E3BD7FEF0C54BECD15BFF6AAF2C5BDED5EC754DEADA1C7FC844D3B5DAD5C1D81981820408000541739A6C04466DB6A16DBFF72E5D7D2C909CC93F97FED39EFAEB2C9B72C92DF6DB8FFDC4AE39F97CBBF32BBFB21957FFD9163FDE';
wwv_flow_imp.g_varchar2_table(60) := '9BDC94DF0728F0FC8C7FD8ECEBEFB77BCEBDA6BEB65AE387AFB8B3BEE6FF7EF995AE2B52E3D7E37E357E5D9B5D1F9003042C10DED40900E1AD59F433D61D961EB1EA51AB7EF8EA877056284B5F5C624F4E79D4A65C7C8B5D77FA8F6B4F08BE61B79D7D89';
wwv_flow_imp.g_varchar2_table(61) := '3D72D1EDF6F73F77F77838AB39729CFE059E9D3CBBBE56777DFE0ABBFEA40BECC64FFFDCEEF9C5EF6DF67DD34C6BDBFF9EEDBDA36B4ED79E1ABFAEC5F6F6666B04FC102000F8B10ECCA203011704F444408F5FBBF98E407FA7FFE7D265F68F479EB007AF';
wwv_flow_imp.g_varchar2_table(62) := 'B9D36EFFFA9576E531E7D91F3FF0539B74CE9536FD5777D9FC07E7F4B72BAFE72C20FB59D74CB67BBF76ADDDF0BE1FD9A5477ED5FE78CEA5F5B59AF3D063B66871E75FE2EB6FEA34FEFE64783D4401024088ABC69C57125010D0E3577D47404F05DEB0D1';
wwv_flow_imp.g_varchar2_table(63) := 'A895DECFF20FFA32E1B33D4FDBDCC933EC2F97DE6A377DE1E27A28B8E17D3FAC7D7470854DBBE40E7BEACEBFD9CBCF67DF7CB2AC23A4632D7AFA797BE69E9975DB7BCEBDBAD6EC7F586FF6B2BFF7A29B6CD6DD8FD882A7E7E75A92EEF6756D71C79F2B33';
wwv_flow_imp.g_varchar2_table(64) := '072F588000503038A7CB57406160CBDDC6D5BF899DD75381BE1528142C78FAB9DA47078FD95FAFBAC3EE38FF6ABBF25D17D43F3EB8E9F49FD95DDFB8A6FEB4E0F13B1EB667A6CDB1E52F2CED7B88E8FFBCB8F7055B30B3C7FE7EF70C7BE8D2DB6CF2B77E';
wwv_flow_imp.g_varchar2_table(65) := '63B2BBECB8FFB6EBDFF703BBF9BCCBEBB6B3EFFB5BADD917F34F3EBBBBFD89C71C687ACCAF6B2BFA8502A01F81305F260084B96ECCBA85807E58279F0AE80E2E8F8F089A4D431F1FCC7F7C9ECDB96B5AFD69C1DDDFBADE6EFECCC5F6AB53BE69571D7B9E';
wwv_flow_imp.g_varchar2_table(66) := '5DF7AE6FD79BDC1D5FBADCEEFFEEEFEC918B6FB7C77F33C59EBCED119BFFD01C5BF2E4F3CD0E1FC47BAA41B53C7DD763F5DA54A36ABDFBAB57D56B97C1A5477FD5AE7BCF77ED86332FB4DBBF76A54DFDD5247BEC8E074D76FF7EF95F85D6996CFADCED17';
wwv_flow_imp.g_varchar2_table(67) := '4ACFC94A1020009480CE298B155018D01D9CFB88A0A82703CDAAFCE7F2E5B6F8F997EA4DEEA90766DAA3B73C600F5E7DA7DD7DE18D76E7B7AFB59B3E7FB15DFB911FD43F5ED0F70EF485B6DF9EF67DFBD3C72EB45B3F7DB1DDFD95ABECBE6F5E6F0FFDF8';
wwv_flow_imp.g_varchar2_table(68) := '0F36F517B7DADF2E9B64B37F3DC5E6FCE1C17A8078F6FED9B51031D75E78E2597BF1A9F9F652CFF3B6E8D985B6FCA565A67FE9AEDE58FFFD6FB3DAD0EFF59ADED336DA56FB68DFF90FCD351D4B0D5CC7D639742E9D73CAF77F579F83E6A27F2E5773D31C';
wwv_flow_imp.g_varchar2_table(69) := 'AF3FE95BF579EB3379D5A05AFEF48D2BEAB5A946D5FAF8FDD34D0D5E06F64A33A9FCDF734D9F47FCF95B57F50CA1D645000875E5987747020A03C927030A03FACE40D14F07D24E5E1F2F68E80B6D2FCC5F604FCFE9B19E1973ECF129D36DE6A4876DEAEF';
wwv_flow_imp.g_varchar2_table(70) := 'EFB387AEBFCB1EB8E236BBE7E737DA5D3FFC4D3D40FCF1AB97D642C445F6DB8FFFC47EF3E11FD9AF3FF003BBFEBDDFB35FBDF31BF57FE94E8FD62F3DEA1CD3D0EFF5AFDFE93D6DA36DB58FF6BDE9F317998EA506AE63EB1C3A97CE39E3E607EA73D05CE6';
wwv_flow_imp.g_varchar2_table(71) := '4C9B659A9BE6B868F162D39CD3D658F476AEE16BEDF578DFDDE9EBDA287A2E9C0F813205080065EA73EE5205F4035F6140DF19483E1DF03910940A16E8C95DC3D7C740C986AFB50FB424A6ED9540B893210084BB76CC3C63010241C6A0251DCE35FCBE77';
wwv_flow_imp.g_varchar2_table(72) := 'F8FA18A8A429715A04BC14200078B92C4CCA07814681409F13ABB1F094A0FC1552A3D7D09DBDC6B8896F32EEF0CB5F97D8661072BD048090578FB9172AA040A0A147C7EE6303351C170A0806F92C879ABC8642971ABD9CE5AECFEE357467AF316CE4F07C';
wwv_flow_imp.g_varchar2_table(73) := '26C05111A8A80001A0A20B4B59C509B850D02818E8AE540D4BCD4BC3D72F1B16A7D5F84C6AF01A325293D7905DB2D12B74A9D1CBB9F151781581A205C23E1F0120ECF563F61E0B2818E8AE540D4BCD4B435F365453D353030D353905040D353F0D850435';
wwv_flow_imp.g_varchar2_table(74) := '438F4B6B6B6AAA454375A9B16BA85ED5AE210FDDC96BC8484D5E43766D9D888D1140A02D0102405B5C6C8C4036020A071A6A720A081A6A7E1A0A096A866A8C0A096EA859AA71BAA146AAC0E0861AAC1B6AB8C9D1CEAC93FBB9DFBBE3BA5F754E9DDF0D37';
wwv_flow_imp.g_varchar2_table(75) := '27CD514373D6FC35548B86EA5263D750BDAA5DA39DB9B12D023E09843E170240E82BC8FC2B2DA090E0869AA51AA71B6AA40A0C6EA8C1BAA1869B1C6AC46947723FF77B775CF7ABCEA9F3BBE1E6A4396A68CE955E188A43A0020204800A2C222520800002';
wwv_flow_imp.g_varchar2_table(76) := '08142D10FEF90800E1AF2115208000020820D0B60001A06D32764000010410885DA00AF51300AAB08AD4800002082080409B02048036C1D81C010410402076816AD44F00A8C63A52050208208000026D091000DAE262630410400081D805AA523F01A02A';
wwv_flow_imp.g_varchar2_table(77) := '2B491D082080000208B421400068038B4D11400001046217A84EFD0480EAAC2595208000020820905A8000909A8A0D11400001046217A852FD04802AAD26B52080000208209052800090128ACD10400001046217A856FD04806AAD27D520800002082090';
wwv_flow_imp.g_varchar2_table(78) := '4A8000908A898D10400001046217A85AFD0480AAAD28F5208000020820904280009002894D10400001046217A85EFD0480EAAD2915218000020820D0528000D092880D10400001046217A862FD04802AAE2A35218000020820D0428000D00288B7114000';
wwv_flow_imp.g_varchar2_table(79) := '01046217A866FD04806AAE2B55218000020820D0548000D094873711400001046217A86AFD0480AAAE2C75218000020820D0448000D00487B710400001046217A86EFD0480EAAE2D95218000020820D0AF0001A05F1ADE4000010410885DA0CAF51300AA';
wwv_flow_imp.g_varchar2_table(80) := 'BCBAD4860002082080403F0204807E607819010410402076816AD74F00A8F6FA521D0208208000020D0508000D59781101041040207681AAD74F00A8FA0A075EDFD29796045E01D347000104FC142000F8B92ECC6A85C0D24504801514FC1298C0BCD94F';
wwv_flow_imp.g_varchar2_table(81) := '053663A6BBB240F5FF4400A8FE1A075DE1DC69B3829E3F938F57E099393DF1164FE5410810008258A67827F9C2730B6DC1D3CFC50B40E5410AE89AD5B51BE4E499745D2086FF10006258E5C06B7C6CCA34E3BB00812F6244D3D7B53A75D25F22AA985243';
wwv_flow_imp.g_varchar2_table(82) := '15200084BA7211CD7BD992A5F6F01D53080111AD79A8A5AAF9DF7FD35DA14E9F79BF2610C76F080071AC73F055BA10C017AB825FCACA16A0C7FE34FFCA2E6F250B2300547259AB599442C093D39FB039536756B340AA0A5640D7248FFD835DBE55261ECB';
wwv_flow_imp.g_varchar2_table(83) := '0B04805856BA2275D643C08C276CF20D93F848A0226B1A72197AE4FFD0AD93EDC9DA3519721DCC3D4E0102409CF137415A0000100049444154EB1E7CD50A02FA5E80EEBC822F8602821350E3D7B5A747FE7CDB3FB8E56B31E178DE2600C4B3D695AB5421';
wwv_flow_imp.g_varchar2_table(84) := '40775E7A1AA01FC6952B9082BC1348367E5D7BDE4D900921D0860001A00D2C36F5538020E0E7BA54695634FE2AAD66F35A627A970010D36A57BCD6641078F4BEA9FC0342155FEF22CAA3F117A1CC39CA1220009425CF7953096CB4D526A9B64B6EA420F0';
wwv_flow_imp.g_varchar2_table(85) := 'CC93F34CDFCAD6C703FCD5C1A40EBF4F23A08F9474EDE833FE4E1FF50F193E34CDA9D8C62B81B8264300886BBD83AB76CCB8B1D6490870852A0CCC7C607AFD6F0DF054C0A9F06B230177B73FE9EA9BEBDFEAD7B5D368BB34AFE99ADD61BFF16936651B04';
wwv_flow_imp.g_varchar2_table(86) := '4A1320009446CF89D30A2804EC7AD004EBE68E4A3FCC934F05080369F5ABBD5DB2E97773B7EF94D61A38C074ADEA9A75AFF16B3802B1CD940010DB8A075AEF8075069AEEA8C6EEBCB5E9876C3765340A03FA9840CDA09BE3B2AFFF025A633DDE5700D49D';
wwv_flow_imp.g_varchar2_table(87) := '7E164D5F55EB9AD4B539FE9089A66B55AF3110F05D8000E0FB0A31BF9504466DB6A16DBFF72E5D7D2C903CA00B03FA9840CD409FFBAA39281024B7E3F7610AA8E1EB9FE855D3D7DA6A8DF599BE9E066551911ABF1EF7ABF1EBDACCE2981CA32C81F8CE4B';
wwv_flow_imp.g_varchar2_table(88) := '00886FCD83AF5877587AC4AA47ADFAE1AB1FC25915950C04BA4354D37081408D24ABF3709C7C04D4F015DED4F0F52FF4A9E1EBCBA06AFA5ADBACCEAA6B4ED79E1ABFAEC5AC8ECB71102852800050A436E7CA54C005013D11D0E3D76EBE23D0DFC4D43474';
wwv_flow_imp.g_varchar2_table(89) := 'B7A827046A242E10B850A086D3DFBEBC9EAF80EC15CA5CB3576053C3D75AA9E1E7F12FF4D1F8F35DD3328F1EE3B9090031AE7AC56A5610D0E3577D47404F05DEB0D1A8DC2A7481C08502351C8502DD6DBA50A0A694DB04223CB01ABD46F2CEDE357B85B2';
wwv_flow_imp.g_varchar2_table(90) := 'BC9A7D925A77FBBAB6B8E34FAAF0FBD0050800A1AF20F35F49406160CBDDC6D5BF899DD75381954E58FB834281EE365D2850535283EA1B0CD4C0080735B006FFA706AF211FDDD16B2854C951214B23CF3BFB0653AA7FD9548D7FE231079A1EF3EBDA6AB4';
wwv_flow_imp.g_varchar2_table(91) := '1DAF554120CE1A080071AE7BE5ABD60FEBE45301FD20CFE3238266907D83811A58321C2403821A9E0B086A826A86CD8E1DD27BAA454375A946D5AAA1062F836493978FEEE83514AA8AAED33DE257D3E76EBF687DCE57B40001A06871CE57B880C280EEE0';
wwv_flow_imp.g_varchar2_table(92) := 'DC4704453D196856A8C281869A9C9E1CA8E1B980A026A83B5E354635480D354B0D7DCCA0A106AAA186EA861AAC1B6AB88D46B339E9BD46FBB8D7DCB1DDF974FEE4D0BC34470DCD59F3D7502D1AAA4B35AA560DD52E039DB7CCE19A3E8FF8CB5C8572CF1D';
wwv_flow_imp.g_varchar2_table(93) := 'EBD90900B1AE7CA4752B0C249F0C280CE83B03453F1D48CBAF06A9A166A9A1B0A0A106AAA186EA861AAC1B6AB88D861A72B3D1681FF79A3BB63B9FCE9F1C9A97E6A8A139A7ADB1E8ED5CC3D7DA27EFF4756D143D17CE87409902048032F53977A902FA81';
wwv_flow_imp.g_varchar2_table(94) := 'AF30A0EF0C249F0EF81C084A050BF4E4AEE1EB63A064C3D7DA075A12D3CE5420DE831100E25D7B2AEF234020E80312E81F5DC3EF7B87AF8F81022D896923908B00012017560E5A05814681409F13ABB1F094A0FC1556A3D7D09DBDC6B8896F32EEF0CB5F';
wwv_flow_imp.g_varchar2_table(95) := '97D06610F37C090031AF3EB5B725A040A0A147C7EE6303351C170A08066D71A6DE584D5E43A14B8D5ECE72D7B7F4357467AF316CE4F0D4C764430410302300701520D0A5800B058D8281EE4AD5B0D4BC347CFDB26197045DEFAE06AF212335790DD9251B';
wwv_flow_imp.g_varchar2_table(96) := 'BD42971ABD9CBB3E210740A02E10F77F080071AF3FD5E728A060A0BB52352C352F0D7DD9504D4D4F0D34D4E4141034D4FC341412D40C739C5AA187562D1AAA4B8D5D43F5AA760D79E84E5E43466AF21AB22B74A29C0C81C8040800912D38E5FA21A070A0';
wwv_flow_imp.g_varchar2_table(97) := 'A126A780A0A1E6A7A190A066A8C6A890E0869AA51AA71B6AA40A0C6EA8C1BAA1869B1CED549DDCCFFDDE1DD7FDAA73EAFC6EB839698E1A9AB3E6AFA15A3454971ABB86EA55ED1AEDCC8D6D11C85220F663110062BF02A8DF6B01850437D42CD538DD5023';
wwv_flow_imp.g_varchar2_table(98) := '556070430DD60D35DCE450234E3B92FBB9DFBBE3BA5F754E9DDF0D3727CD514373F61A96C9218000DF01E01A40000104108851809A7902C035800002082080408402048008179D9211400081D805A89FBF06C8358000020820804094023C018872D9291A';
wwv_flow_imp.g_varchar2_table(99) := '010410885980DA254000900203010410400081C8040800912D38E522800002B10B50FFAB020480571DF82F02082080000251091000A25A6E8A450001046217A07E2740007012FC8A0002082080404402048088169B5211400081D805A8FF3F020480FF58';
wwv_flow_imp.g_varchar2_table(100) := 'F03B041040000104A211200044B3D4148A000208C42E40FD490102405283DF23800002082010890001209285A64C041040207601EA5F598000B0B2077F420001041040200A01024014CB4C9108208040EC02D4DF578000D057843F238000020820108100';
wwv_flow_imp.g_varchar2_table(101) := '01208245A644041040207601EA5F558000B0AA09AF2080000208205079010240E597980211400081D805A8BF910001A0910AAF2180000208205071010240C51798F210400081D805A8BFB10001A0B10BAF2280000208205069010240A59797E210400081';
wwv_flow_imp.g_varchar2_table(102) := 'D805A8BF3F0102407F32BC8E00020820804085050800155E5C4A430001046217A0FEFE050800FDDBF00E02082080000295152000547669290C010410885D80FA9B0910009AE9F01E02082080000215152000547461290B010410885D80FA9B0B10009AFB';
wwv_flow_imp.g_varchar2_table(103) := 'F06EC9024B5F5A52F20C383D020820504D01024035D7B532552D5D4400A8CC624656C8BCD94F4556B16FE5329F560204805642BC5FAAC0DC69B34A3D3F2747A0538167E6F474BA2BFB2150880001A010664ED2A9C00BCF2DB4054F3FD7E9EEEC87402902';
wwv_flow_imp.g_varchar2_table(104) := 'BA6675ED9672724E5A17E03FAD050800AD8DD8A26481C7A64C33BE0B50F22270FAD402BA56A74EFA4BEAEDD91081B204080065C973DED402CB962CB587EF984208482DC6866509A8F9DF7FD35D659D9EF3BE26C06FD2081000D228B14DE9022E04F0C5AA';
wwv_flow_imp.g_varchar2_table(105) := 'D2978209F423A0C7FE34FF7E7078D94B01028097CBC2A41A0928043C39FD099B337566A3B7790D81D204744DF2D8BF34FE554ECC0BE9040800E99CD8CA13817A0898F1844DBE61121F0978B226314F438FFC1FBA75B23D59BB266376A0F63005080061AE';
wwv_flow_imp.g_varchar2_table(106) := '5BF4B35610D0F70274E7153D0600850BA8F1EBDAD3237FBEED5F387F8B13F2765A0102405A29B6F34E402140775E7A1AA01FC6DE4D9009554E20D9F875ED55AE400A8A4A800010D57257B358824035D7D5A7AA68FC3EAD46F3B9F06E7A0102407A2BB6F4';
wwv_flow_imp.g_varchar2_table(107) := '5C2019041EBD6F2AFF8090E7EB15C2F468FC21AC1273EC548000D0A91CFB1522B0D1569BB47D1E0581679E9C67FA56B63E1EE0AF0EB64D18FD0EFA4849D78E3EE3EFF451FF90E143A3772C1E8033B623400068478B6D0B1718336EAC751202DC44150666';
wwv_flow_imp.g_varchar2_table(108) := '3E30BDFEB706782AE054F8B59180BBDB9F74F5CDF56FF5EBDA69B45D9AD774CDEEB0DFF8349BB20D02A50910004AA3E7C469051402763D6882757347A51FE6C9A7028481B4FAD5DE2ED9F4BBB9DB774A6B0D1C60BA5675CDBAD7F8B53801CED49E0001A0';
wwv_flow_imp.g_varchar2_table(109) := '3D2FB62E4960C03A034D77546377DEDAF443B69B69340A03FA9840CDA09BE3B2AFFF025A633DDE5700D49D7E164D5F55EB9AD4B539FE9089A66B55AF3110F05D8000E0FB0A31BF9504466DB6A16DBFF72E5D7D2C903CA00B03FA9840CD409FFBAA392810';
wwv_flow_imp.g_varchar2_table(110) := '24B7E3F7610AA8E1EB9FE855D3D7DA6A8DF599BE9E066551911ABF1EF7ABF1EBDACCE2981CA35301F66B578000D0AE18DB972EA03B2C3D62D5A356FDF0D50FE1AC26950C04BA4354D37081408D24ABF3709C7C04D4F015DED4F0F52FF4A9E1EBCBA06AFA';
wwv_flow_imp.g_varchar2_table(111) := '5ADBACCEAA6B4ED79E1ABFAEC5AC8ECB71102852800050A436E7CA54C005013D11D0E3D76EBE23D0DFC4D43474B7A827046A242E10B850A086D3DFBEBC9EAF80EC15CA5CB3576053C3D75AA9E1E7F12FF4D1F8F35DD36E8ECEBEED0B1000DA37630FCF04';
wwv_flow_imp.g_varchar2_table(112) := '1404F4F855DF11D05381376C342AB719BA40E042811A8E4281EE365D285053CA6D02111E588D5E237967EF9ABD42595ECD3E49ADBB7D5D5BDCF12755F87DE8020480D05790F9AF24A030B0E56EE3EADFC4CEEBA9C04A27ACFD41A140779B2E14A829A941';
wwv_flow_imp.g_varchar2_table(113) := 'F50D066A6084831A5883FF5383D7908FEEE83514AAE4A890A591E79D7D8329D5BF6CAAC63FF198034D8FF9756D35DA8ED77C10600E9D0810003A51631FEF05F4C33AF954403FC8F3F888A01944DF60A006960C07C980A086E702829AA09A61B36387F49E';
wwv_flow_imp.g_varchar2_table(114) := '6AD1505DAA51B56AA8C1CB20D9E4E5A33B7A0D85AAA2EB748FF8D5F4B9DB2F5A9FF3152D4000285A9CF3152EA030A03B38F71141514F069A15AA70A0A126A727076A782E20A809EA8E578D510D5243CD52431F3368A8816AA8A1BAA106EB861A6EA3D16C';
wwv_flow_imp.g_varchar2_table(115) := '4E7AAFD13EEE35776C773E9D3F39342FCD514373D6FC35548B86EA528DAA5543B5CB40E72D73B8A6CF23FE3257A1BB73B37767020480CEDCD82B50018581E4930185017D67A0E8A70369F9D42035D42C35141634D44035D450DD508375430DB7D150436E';
wwv_flow_imp.g_varchar2_table(116) := '361AEDE35E73C776E7D3F99343F3D21C3534E7B43516BD9D6BF85AFBE49DBEAE8DA2E7C2F9102853800050A63EE72E55403FF01506F49D81E4D3019F0341A960819EDC357C7D0C946CF85AFB404B62DA2B09F0874E0508009DCAB15FE5040804D55852D7';
wwv_flow_imp.g_varchar2_table(117) := 'F0FBDEE1EB63A06A5448150864234000C8C691A35450A05120D0E7C46A2C3C25287FC1D5E8357467AF316EE29B8C3BFCF2D7A5E81970BECE0508009DDBB16764020A041A7A74EC3E3650C371A1806090CF05A126AFA1D0A5462F67B9EB5BFA1ABAB3D718';
wwv_flow_imp.g_varchar2_table(118) := '3672783E13E0A8085454800050D185A5ACE2045C2868140C7457AA86A5E6A5E1EB970D8BD36A7C2635780D19A9C96BC82ED9E815BAD4E8E5DCF828BC1A9F001577234000E8468F7D116822A060A0BB52352C352F0D7DD9504D4D4F0D34D4E4141034D4FC';
wwv_flow_imp.g_varchar2_table(119) := '341412D40C9B1C3AA8B7548B86EA5263D750BDAA5D431EBA93D790919ABC86EC822A94C9221098000120B00563BAD5105038D050935340D050F3D350485033546354487043CD528DD30D3552050637D460DD50C34D8E76D492FBB9DFBBE3BA5F754E9DDF';
wwv_flow_imp.g_varchar2_table(120) := '0D3727CD514373D6FC35548B86EA5263D750BDAA5DA39DB9B12D0249017EDF9D0001A03B3FF646205701850437D42CD538DD5023556070430DD60D35DCE450234E3B92FBB9DFBBE3BA5F754E9DDF0D3727CD514373CE158683238040D7020480AE093900';
wwv_flow_imp.g_varchar2_table(121) := '0208208040F1029CB15B010240B782EC8F0002082080408002048000178D2923800002B10B507FF7020480EE0D3902020820800002C1091000825B32268C000208C42E40FD59081000B250E41808208000020804264000086CC1982E02082010BB00F567';
wwv_flow_imp.g_varchar2_table(122) := '234000C8C691A32080000208201094000120A8E562B208208040EC02D49F950001202B498E830002082080404002048080168BA922800002B10B507F76020480EC2C3912020820800002C108100082592A268A000208C42E40FD590A1000B2D4E4580820';
wwv_flow_imp.g_varchar2_table(123) := '80000208042240000864A1982602082010BB00F5672B4000C8D693A321800002082010840001208865629208208040EC02D49FB50001206B518E87000208208040000204800016892922800002B10B507FF6020480EC4D3922020820800002DE0B1000BC';
wwv_flow_imp.g_varchar2_table(124) := '5F222688000208C42E40FD79081000F250E598082080000208782E4000F07C81981E02082010BB00F5E7234000C8C795A322800002577B325600000FA3494441540820E0B50001C0EBE5617208208040EC02D49F970001202F598E8B000208208080C702';
wwv_flow_imp.g_varchar2_table(125) := '04008F1787A921800002B10B507F7E020480FC6C3932020820800002DE0A1000BC5D1A2686000208C42E40FD790A1000F2D4E5D8082080000208782A4000F07461981602082010BB00F5E72B4000C8D797A3B71058E3F5AB37DD62E94B4B9ABECF9B0820';
wwv_flow_imp.g_varchar2_table(126) := '8000029D0910003A7363AF8C04D658EDF54D8FB4741101A029106F7A2B306FF6534DE7B6F61A6B357D9F3711C85B800090B730C76F2AB0C66ACD9F00CC9D36ABE9FEBC8980AF02CFCCE9693AB556D77ED39D7913810C04080019207288CE055AFD107CE1';
wwv_flow_imp.g_varchar2_table(127) := 'B985B6E0E9E73A3F017B22508280AE595DBBCD4EDDEADA6FB66F0CEF5163FE020480FC8D39431381A16BADD3E4DD57DF7A6CCA34E3BB00AF5AF05FFF0574AD4E9DF49796134D73EDB73C081B20D0850001A00B3C76ED5E40774143D71AD4F440CB962CB5';
wwv_flow_imp.g_varchar2_table(128) := '87EF98420868AAC49B3E08A8F9DF7FD35D2DA7A26B5ED77ECB0DA3DD80C28B10200014A1CC399A0AAC377058D3F7F5A60B01ADBE58A56D19089421A0C7FE699ABFE6C6DDBF1418650B1000CA5E01CE6FBA135A6FE0D096120A014F4E7FC2E64C9DD9725B';
wwv_flow_imp.g_varchar2_table(129) := '3640A048015D93691EFB6B4EBAFB5F7BF501FA2DA31F015E2E468000508C33676921A03BA2347F2DAA1E02663C61936F98C447022D4C793B7F013DF27FE8D6C9F664ED9A4C73365DE3A307AD976653B6412077010240EEC49C208D809E02B4F383514140';
wwv_flow_imp.g_varchar2_table(130) := 'DF0BD09D579AE3B30D02590AA8F1EBDAD323FF56DFF64F9E37CDC75DC9EDE3FC3D5517254000284A9AF3B4145008D878C8C896DBB90D140274E7A5A701FA61EC5EE75704F21248367E5D7BED9C47D7368FFEDB1163DBBC050800790B73FCB604F40372F3';
wwv_flow_imp.g_varchar2_table(131) := '611B58AB7F2238795082405283DFE721D04DE3D7B54CF34FBF2A6C599C0001A0386BCE9452A0FE2460F0C8B642800E9D0C028FDE37957F4048288CAE04BA69FC3AB19AFFE841234CC1567F6620E0930001C0A7D5602EAF09B810A06F4CBFF662CADF2808';
wwv_flow_imp.g_varchar2_table(132) := '3CF3E43CD3B7B2F5F1007F7530251C9BBD26A08F9474EDE833FE761FF5BB83E80B7F9B0FDD80E6EF4052FDCA46450A10008AD4E65C6D092804E84B5369FE8A607F07561898F9C0F4FADF1AE0A9407F4ABC2E0177B73FE9EA9BEBDFEAD7B5A3D73B19BA66';
wwv_flow_imp.g_varchar2_table(133) := '371E3CAA935DD90781C2040800855173A24E045C08D0F7027447D5C931B48F7E98279F0A1006A4C24836FD6EEEF69DA4AE515DAB0AAEEE357E4D2FC096C50A10008AF5E66C1D0A2808E88E4A7756FA5CB5C3C3D4776B1406F431819A417D03FE535901AD';
wwv_flow_imp.g_varchar2_table(134) := 'B11EEF2B00EA4E3F8BA62F2C5D93BA36758DEA5AD56B0C047C172000F8BE42CC6F2501DD596D3C78A4E987AD7EE8AEF466077F7061401F13A819E8735F350705820E0EC72E9E09A8E1EB9FE855D3D7DA6A8DF599BE9E066531555D83BA16F559BFAECD2C';
wwv_flow_imp.g_varchar2_table(135) := '8E19EF31A8BC68010240D1E29CAF6B01DD61E9876D9641C04D2A19087487A8A6E102811A89DB8E5FFD1450C3577853C3D7BFD0A786AF2F83AAE96B6DB39A358D3F2B498E53A60001A04C7DCEDD95403208D4FFAAD51A6B7575BC463BAB69E86E514F08D4';
wwv_flow_imp.g_varchar2_table(136) := '485C2070A1400DA7D17EBC96BF80EC15CA5CB3576053C3D75AA9E1B7F32FF4A59D2D8D3FAD54FBDBB147F1020480E2CD3963C6020A02FADF12D0E7AFFA0256277F7530ED945C2070A1400D47A140779B2E14A829A53D1EDBB51650A3D748DED9BB66AF50';
wwv_flow_imp.g_varchar2_table(137) := '9657B34FCEACFE987FD806C6A3FEA40ABF0F5D800010FA0A32FF95041406F4BF29A020A01FDAFA56F64A1BE4F0078502DD6DBA50A0A6A406D53718A881110E1A2F801ABC867C7447AFA1502547852C8D3CEFEC1BCD6A8DD7AF5EFFAEC9D6C3C7D47E1D66';
wwv_flow_imp.g_varchar2_table(138) := 'BAB61A6DC76B5908708C3204080065A873CEDC05F4C3FAD5EF098CB222C340B2B0BEC1400D2C190E9201410DCF0504354135C3E4B142FEBD6AD1505DAA51B56AA8C1CB20D9E4E5A33B7A0D85AAA2EB764D5FD70C77FB45EB73BEA2050800458B73BEC205';
wwv_flow_imp.g_varchar2_table(139) := 'FA8681D1FAA75973F8BE403B85291C68A8C9E9C9811A9E0B086A82BAE355635483D450B3D4D0C70C1A6AA01A6AA86EA8C1BAA186DB68B49A63A37DDC6BEED8EE7C3A7F72685E9AA386E6ACF96BA8160DD5A51A55AB866A9741AB39E5FDBE6BFABAD3774D';
wwv_flow_imp.g_varchar2_table(140) := '5FD74CDEE7E5F8FF11E077E5081000CA71E7AC2509E8077BF2FB020A03FACE40111F157452B21AA4869AA586C282861AA8861AAA1B6AB06EA8E1361A6AC8CD46A37DDC6BEED8EE7C3A7F72685E9AA386E6DC49BD45ECE31ABEFE077A924DBF8873730E04';
wwv_flow_imp.g_varchar2_table(141) := '7C122000F8B41ACCA550011706F49D01F705421708D4240A9D0C27CB4D406BA990A7EF84241B3EFF033DB991B77960362F4B800050963CE7F54E201908F428589F03BB40E0EB1302EF103D98901ABE9ABDD6CE357C853C7D27C483E9310504BC11200078';
wwv_flow_imp.g_varchar2_table(142) := 'B3144CC437816420704F080805FEAC921ABD869ABD46DF47FAFAA8C79FD93293FE0478BD3C01024079F69C39300105020D3516DD512A14D4EF30876D606A3EA3078D303D6AE66941B60BAB26AF21DBBE8D5E4F6A7467AFC123FD6CDD395AF5050800D55F';
wwv_flow_imp.g_varchar2_table(143) := '632ACC5940A140CDA755305003231C345E0C35780D19A9C96B2854D503D6D057FF011E852E1A7D63BF705F65E6650A1000CAD4E7DC9516E81B0CD4C0924F0DF471829A9C9E1C68A8F9692824A81956014775B8A1BAD4D83554AF6A9741A3264FA3AFC2EA';
wwv_flow_imp.g_varchar2_table(144) := '5383EF020400DF5788F9555240E140C33D39704F0F5C48D0A36D35460D35490D354C354E0D35510D050637D460DD704DB7EFAFAD30FB6EEFFEEC8EAB5FDDF9747E3734270DCD5143F3ADCF7DC5DDBBEA51F85163D750BDAA5D06ADE6C4FBD515A0B27205';
wwv_flow_imp.g_varchar2_table(145) := '0800E5FA7376045A0AA8496AA861AA716AA8896A2830B8A106EB861A6EA3A1A6DC6C34DA47AFB9E3EA57773E9DDF0DCD494373D4D07C5B16C606082050AA0001A0547E4E8E000208C42A40DD650B1000CA5E01CE8F0002082080400902048012D0392502';
wwv_flow_imp.g_varchar2_table(146) := '082010BB00F5972F4000287F0D9801020820800002850B10000A27E78408208040EC02D4EF830001C08755600E082080000208142C400028189CD321800002B10B50BF1F0204003FD6815920800002082050A80001A0506E4E86000208C42E40FDBE0810';
wwv_flow_imp.g_varchar2_table(147) := '007C5909E6810002082080408102048002B1391502082010BB00F5FB234000F0672D9809020820800002850910000AA3E64408208040EC02D4EF930001C0A7D5602E0820800002081424400028089AD320800002B10B50BF5F020400BFD683D920800002';
wwv_flow_imp.g_varchar2_table(148) := '082050880001A010664E82000208C42E40FDBE0910007C5B11E683000208208040010204800290390502082010BB00F5FB274000F06F4D9811020820800002B90B10007227E60408208040EC02D4EFA30001C0C755614E082080000208E42C4000C81998';
wwv_flow_imp.g_varchar2_table(149) := 'C323800002B10B50BF9F0204003FD7855921800002082090AB000120575E0E8E000208C42E40FDBE0A10007C5D19E6850002082080408E0204801C71393402082010BB00F5FB2B4000F0776D9819020820800002B909100072A3E5C008208040EC02D4EF';
wwv_flow_imp.g_varchar2_table(150) := 'B30001C0E7D5616E082080000208E4244000C80996C322800002B10B50BFDF020400BFD787D9218000020820908B00012017560E8A000208C42E40FDBE0B10007C5F21E6870002082080400E0204801C50392402082010BB00F5FB2F4000F07F8D982102';
wwv_flow_imp.g_varchar2_table(151) := '0820800002990B10003227E58008208040EC02D41F820001208455628E082080000208642C4000C81894C321800002B10B507F1802048030D6895922800002082090A9000120534E0E86000208C42E40FDA1081000425929E68900020820804086020480';
wwv_flow_imp.g_varchar2_table(152) := '0C31391402082010BB00F5872340000867AD98290208208000029909100032A3E44008208040EC02D41F92000120A4D562AE08208000020864244000C80892C320800002B10B507F58020480B0D68BD9228000020820908900012013460E82000208C42E';
wwv_flow_imp.g_varchar2_table(153) := '40FDA1091000425B31E68B000208208040060204800C10390402082010BB00F587274000086FCD98310208208000025D0B1000BA26E40008208040EC02D41FA2000120C45563CE08208000020874294000E81290DD11400081D805A83F4C01024098EBC6';
wwv_flow_imp.g_varchar2_table(154) := 'AC114000010410E84A8000D0151F3B23800002B10B507FA802048050578E79238000020820D0850001A00B3C76450001046217A0FE70050800E1AE1D33470001041040A063010240C774EC88000208C42E40FD210B1000425E3DE68E0002082080408702';
wwv_flow_imp.g_varchar2_table(155) := '04800EE1D80D010410885D80FAC316200084BD7ECC1E0104104000818E0408001DB1B11302082010BB00F5872E4000087D05993F0208208000021D0810003A406317041040207601EA0F5F800010FE1A52010208208000026D0B1000DA26630704104020';
wwv_flow_imp.g_varchar2_table(156) := '7601EAAF820001A00AAB480D082080000208B429400068138CCD11400081D805A8BF1A0204806AAC2355208000020820D0960001A02D2E36460001046217A0FEAA081000AAB292D4810002082080401B02048036B0D814010410885D80FAAB234000A8CE';
wwv_flow_imp.g_varchar2_table(157) := '5A5209020820800002A9050800A9A9D810010410885D80FAAB244000A8D26A520B0208208000022905080029A1D80C010410885D80FAAB254000A8D67A520D020820800002A9040800A998D808010410885D80FAAB264000A8DA8A520F02082080000229';
wwv_flow_imp.g_varchar2_table(158) := '0408002990D804010410885D80FAAB274000A8DE9A52110208208000022D0508002D89D800010410885D80FAAB284000A8E2AA52130208208000022D0408002D80781B010410885D80FAAB294000A8E6BA52150208208000024D0508004D797813010410';
wwv_flow_imp.g_varchar2_table(159) := '885D80FAAB2A4000A8EACA52170208208000024D0408004D70780B010410885D80FAAB2B4000A8EEDA5219020820800002FD0A1000FAA5E10D041040207601EAAFB20001A0CAAB4B6D082080000208F4234000E807869711400081D805A8BFDA0204806A';
wwv_flow_imp.g_varchar2_table(160) := 'AF2FD5218000020820D0508000D090851711400081D805A8BFEA020480AAAF30F5218000020820D0408000D000859710400081D805A8BFFA020480EAAF3115228000020820B08A00016015125E400001046217A0FE1804080031AC3235228000020820D0';
wwv_flow_imp.g_varchar2_table(161) := '478000D007843F22800002B10B507F1C02048038D6992A11400001041058498000B012077F400001046217A0FE58040800B1AC3475228000020820901020002430F82D02082010BB00F5C72340008867ADA914010410400081D7040800AF51F01B041040';
wwv_flow_imp.g_varchar2_table(162) := '207601EA8F49800010D36A532B0208208000022B0408002B20F805010410885D80FAE3122000C4B5DE548B0002082080405D80005067E03F08208040EC02D41F9B000120B615A75E0410400001046A0204801A02FF87000208C42E40FDF1091000E25B73';
wwv_flow_imp.g_varchar2_table(163) := '2A460001041040C008005C0408208040F40200C42840008871D5A91901041040207A010240F4970000082010BB00F5C72940008873DDA91A010410402072010240E41700E5238040EC02D41FAB000120D695A76E0410400081A8050800512F3FC5238040';
wwv_flow_imp.g_varchar2_table(164) := 'EC02D41FAF000120DEB5A772041040008188050800112F3EA5238040EC02D41FB3000120E6D5A776041040008168050800D12E3D85238040EC02D41FB7C0FF070000FFFF4E76D30C00000006494441540300E7161A87269021750000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(165) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10510733188359290912)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10510734503251290914)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/bodegas_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6701813724096694271)
,p_lov_name=>'BODEGAS.NOMBRE'
,p_static_id=>'bodegas-nombre'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'BODEGAS'
,p_return_column_name=>'ID_BODEGA'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:79dhkMzsZimZjPH-3DFInWyU_9ZUIy7ZRVbCLpdrCOo'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10511005454950291666)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(10511005454950291666)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260526051337Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10511006272714291668)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10511005946895291667)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/categorias_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6684867368744106441)
,p_lov_name=>'CATEGORIAS.NOMBRE'
,p_static_id=>'categorias-nombre'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CATEGORIAS'
,p_return_column_name=>'ID_CATEGORIA'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:bvpqom9QRpDtkOj8SBrSvisRU0TETlEz09lbolO7suk'
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/clientes_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6715467783841186153)
,p_lov_name=>'CLIENTES.NOMBRE'
,p_static_id=>'clientes-nombre'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CLIENTES'
,p_return_column_name=>'ID_CLIENTE'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:Bg5OVG6_JZBUq_M0dhrMYWFuWQlabVA6jTo2eMGJLNc'
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/metodos_pago_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6730348785792937750)
,p_lov_name=>'METODOS_PAGO.NOMBRE'
,p_static_id=>'metodos-pago-nombre'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'METODOS_PAGO'
,p_return_column_name=>'ID_METODO'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:M94L8kU-9gpEBFCocmflupmX6rAU-Mq6tIFHMONKt14'
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/pedidos_estado
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6715662751280847746)
,p_lov_name=>'PEDIDOS.ESTADO'
,p_static_id=>'pedidos-estado'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PEDIDOS'
,p_return_column_name=>'ID_PEDIDO'
,p_display_column_name=>'ESTADO'
,p_default_sort_column_name=>'ESTADO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:J5o4TLa6Q8wSrZgDif3YirRn-sJnbR-ub9_2NAtjQ04'
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/productos_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6701813066311694269)
,p_lov_name=>'PRODUCTOS.NOMBRE'
,p_static_id=>'productos-nombre'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PRODUCTOS'
,p_return_column_name=>'ID_PRODUCTO'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:i1waO2Wp1q877GVlPRl1WlyhiFDbhy_4520e6y0BlSQ'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/vendedores_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6684866616698106440)
,p_lov_name=>'VENDEDORES.NOMBRE'
,p_static_id=>'vendedores-nombre'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'VENDEDORES'
,p_return_column_name=>'ID_VENDEDOR'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:4bmv34PlzvBhBN8ijquVZg5JggAF1CilEo-nyHhNsWg'
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(10510734755863290915)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(10510729605644290901)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10510957145553290954)
,p_short_name=>'Dashboard'
,p_static_id=>'dashboard'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6715679963130847884)
,p_short_name=>'Detalle PedidosCRUD'
,p_static_id=>'detalle-pedidoscrud'
,p_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>17
,p_created_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10510729835231290901)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10510966383321291368)
,p_short_name=>'Inventario'
,p_static_id=>'inventario'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260526051334Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051334Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6701832298566694616)
,p_short_name=>'Inventario CRUD'
,p_static_id=>'inventario-crud'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6730367379611938117)
,p_short_name=>'Pagos CRUD'
,p_static_id=>'pagos-crud'
,p_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>19
,p_created_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6715483013071186469)
,p_short_name=>'Pedidos CRUD'
,p_static_id=>'pedidos-crud'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
,p_created_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10510974157287291494)
,p_short_name=>'Productos'
,p_static_id=>'productos'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051335Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6684885939760106779)
,p_short_name=>'Productos CRUD'
,p_static_id=>'productos-crud'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
,p_created_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10510982060157291616)
,p_short_name=>'Vendedores'
,p_static_id=>'vendedores'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6700370630715640548)
,p_short_name=>'Vendedores CRUD'
,p_static_id=>'vendedores-crud'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_created_on=>wwv_flow_imp.dz('20260605144737Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(10510730512016290903)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:RQZ7_KKNFF7leXIrwskeQw4WaazlZwly2sNGWk8hwQo'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10510728887885290899)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10510729198838290900)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_last_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Marketplace Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_last_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510945646683290937)
,p_plug_name=>'Marketplace Dashboard'
,p_static_id=>'marketplace-dashboard'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10511005137846291664)
,p_plug_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_list_id=>wwv_flow_imp.id(10511002915486291660)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2888245825625742894
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20260526051337Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051337Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605045702Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_last_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510956469725290954)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510952316796290951)
,p_plug_name=>'Comportamiento Clientes'
,p_static_id=>'comportamiento-clientes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260602050859Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10510952707874290951)
,p_region_id=>wwv_flow_imp.id(10510952316796290951)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260602050859Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10510953206161290951)
,p_chart_id=>wwv_flow_imp.id(10510952707874290951)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ESTADO, COUNT(*) AS TOTAL',
'FROM PEDIDOS',
'GROUP BY ESTADO',
'ORDER BY TOTAL DESC'))
,p_max_row_count=>20
,p_series_type=>'pie'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'ESTADO'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260602050859Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510953793112290952)
,p_plug_name=>'Control Inventario'
,p_static_id=>'control-inventario'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10510954154330290952)
,p_region_id=>wwv_flow_imp.id(10510953793112290952)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10510955913979290953)
,p_chart_id=>wwv_flow_imp.id(10510954154330290952)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'CONTROL_INVENTARIO'
,p_include_rowid_column=>false
,p_series_type=>'bar'
,p_items_value_column_name=>'STOCK_ACTUAL'
,p_items_label_column_name=>'PRODUCTO'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10510954689036290953)
,p_chart_id=>wwv_flow_imp.id(10510954154330290952)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10510955282743290953)
,p_chart_id=>wwv_flow_imp.id(10510954154330290952)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510946903779290944)
,p_plug_name=>unistr('Ingresos por Categor\00EDa')
,p_static_id=>unistr('ingresos-por-categor\00EDa')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10510947339359290945)
,p_region_id=>wwv_flow_imp.id(10510946903779290944)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10510949023808290948)
,p_chart_id=>wwv_flow_imp.id(10510947339359290945)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'INGRESOS_POR_CATEGORIA'
,p_include_rowid_column=>false
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL_INGRESOS'
,p_items_label_column_name=>'CATEGORIA'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10510947842197290946)
,p_chart_id=>wwv_flow_imp.id(10510947339359290945)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10510948416811290947)
,p_chart_id=>wwv_flow_imp.id(10510947339359290945)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12333655016556212935)
,p_plug_name=>'KPI 1 - Ventas del Mes'
,p_static_id=>'kpi-1-ventas-del-mes'
,p_title=>'KPI 1 - Ventas del Mes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260605044502Z')
,p_updated_on=>wwv_flow_imp.dz('20260605044502Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12333655058617212936)
,p_region_id=>wwv_flow_imp.id(12333655016556212935)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260605044502Z')
,p_updated_on=>wwv_flow_imp.dz('20260605044502Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12333655151640212937)
,p_chart_id=>wwv_flow_imp.id(12333655058617212936)
,p_static_id=>'ventas'
,p_seq=>10
,p_name=>'Ventas ($)'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TO_CHAR(pe.FECHA_PEDIDO, ''Mon YYYY'') AS MES_LABEL,',
'    SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO) AS TOTAL_VENTAS',
'FROM PEDIDOS pe',
'JOIN DETALLE_PEDIDOS dp ON pe.ID_PEDIDO = dp.ID_PEDIDO',
'WHERE pe.ESTADO != ''CANCELADO''',
'GROUP BY',
'    TO_CHAR(pe.FECHA_PEDIDO, ''YYYY-MM''),',
'    TO_CHAR(pe.FECHA_PEDIDO, ''Mon YYYY'')',
'ORDER BY TO_CHAR(pe.FECHA_PEDIDO, ''YYYY-MM'')'))
,p_series_type=>'line'
,p_items_value_column_name=>'TOTAL_VENTAS'
,p_items_label_column_name=>'MES_LABEL'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260605044502Z')
,p_updated_on=>wwv_flow_imp.dz('20260605044502Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12333655321022212938)
,p_chart_id=>wwv_flow_imp.id(12333655058617212936)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260605044502Z')
,p_updated_on=>wwv_flow_imp.dz('20260605044502Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12333655443149212939)
,p_chart_id=>wwv_flow_imp.id(12333655058617212936)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260605044502Z')
,p_updated_on=>wwv_flow_imp.dz('20260605044502Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12333655473599212940)
,p_plug_name=>'KPI 2 - Numero de Pedidos por Mes'
,p_static_id=>'kpi-2-numero-de-pedidos-por-mes'
,p_title=>'KPI 2 - Numero de Pedidos por Mes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260605044959Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045055Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12333655621723212941)
,p_region_id=>wwv_flow_imp.id(12333655473599212940)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260605044959Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045055Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12333655712015212942)
,p_chart_id=>wwv_flow_imp.id(12333655621723212941)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TO_CHAR(pe.FECHA_PEDIDO, ''Mon YYYY'') AS MES_LABEL,',
'    COUNT(DISTINCT pe.ID_PEDIDO) AS NUM_PEDIDOS',
'FROM PEDIDOS pe',
'WHERE pe.ESTADO != ''CANCELADO''',
'GROUP BY',
'    TO_CHAR(pe.FECHA_PEDIDO, ''YYYY-MM''),',
'    TO_CHAR(pe.FECHA_PEDIDO, ''Mon YYYY'')',
'ORDER BY TO_CHAR(pe.FECHA_PEDIDO, ''YYYY-MM'')'))
,p_series_type=>'bar'
,p_items_value_column_name=>'NUM_PEDIDOS'
,p_items_label_column_name=>'MES_LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260605044959Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045055Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12333655817536212943)
,p_chart_id=>wwv_flow_imp.id(12333655621723212941)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260605044959Z')
,p_updated_on=>wwv_flow_imp.dz('20260605044959Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12333655929035212944)
,p_chart_id=>wwv_flow_imp.id(12333655621723212941)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260605044959Z')
,p_updated_on=>wwv_flow_imp.dz('20260605044959Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12333656008290212945)
,p_plug_name=>'KPI 3 - Top 10 Productos mas Vendidos'
,p_static_id=>'kpi-3-top-10-productos-mas-vendidos'
,p_title=>'KPI 3 - Top 10 Productos mas Vendidos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260605045248Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045248Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12333656078830212946)
,p_region_id=>wwv_flow_imp.id(12333656008290212945)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260605045248Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045248Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12333656230981212947)
,p_chart_id=>wwv_flow_imp.id(12333656078830212946)
,p_static_id=>'new'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    pr.NOMBRE AS PRODUCTO,',
'    SUM(dp.CANTIDAD) AS UNIDADES_VENDIDAS',
'FROM PRODUCTOS pr',
'JOIN DETALLE_PEDIDOS dp ON pr.ID_PRODUCTO = dp.ID_PRODUCTO',
'JOIN PEDIDOS pe ON dp.ID_PEDIDO = pe.ID_PEDIDO',
'WHERE pe.ESTADO != ''CANCELADO''',
'GROUP BY pr.NOMBRE',
'ORDER BY SUM(dp.CANTIDAD) DESC',
'FETCH FIRST 10 ROWS ONLY'))
,p_series_type=>'bar'
,p_items_value_column_name=>'UNIDADES_VENDIDAS'
,p_items_label_column_name=>'PRODUCTO'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260605045248Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045248Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12333656308115212948)
,p_chart_id=>wwv_flow_imp.id(12333656078830212946)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260605045248Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045248Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12333656375840212949)
,p_chart_id=>wwv_flow_imp.id(12333656078830212946)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260605045248Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045248Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12333656540171212950)
,p_plug_name=>'KPI 4 - Vendedor con Mayor Facturacion'
,p_static_id=>'kpi-4-vendedor-con-mayor-facturacion'
,p_title=>'KPI 4 - Vendedor con Mayor Facturacion'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260605045420Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045420Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12333656635024212951)
,p_region_id=>wwv_flow_imp.id(12333656540171212950)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260605045420Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045420Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12333656739662212952)
,p_chart_id=>wwv_flow_imp.id(12333656635024212951)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'TABLE'
,p_query_table=>'RENTABILIDAD_VENDEDOR'
,p_include_rowid_column=>false
,p_series_type=>'donut'
,p_items_value_column_name=>'TOTAL_INGRESOS'
,p_items_label_column_name=>'VENDEDOR'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260605045420Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045420Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12333653436524212919)
,p_name=>'New'
,p_static_id=>'new'
,p_title=>'KPIs Marketplace'
,p_template=>4073835273271169698
,p_display_sequence=>1
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    (SELECT SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO)',
'     FROM DETALLE_PEDIDOS dp',
'     JOIN PEDIDOS pe ON dp.ID_PEDIDO = pe.ID_PEDIDO',
'     WHERE pe.ESTADO != ''CANCELADO''',
'     AND TO_CHAR(pe.FECHA_PEDIDO, ''YYYY-MM'') = (',
'         SELECT TO_CHAR(MAX(FECHA_PEDIDO), ''YYYY-MM'')',
'         FROM PEDIDOS WHERE ESTADO != ''CANCELADO''',
'     )',
'    ) AS "KPI 1 Ventas del Mes",',
'',
'    (SELECT COUNT(DISTINCT pe.ID_PEDIDO)',
'     FROM PEDIDOS pe',
'     WHERE pe.ESTADO != ''CANCELADO''',
'     AND TO_CHAR(pe.FECHA_PEDIDO, ''YYYY-MM'') = (',
'         SELECT TO_CHAR(MAX(FECHA_PEDIDO), ''YYYY-MM'')',
'         FROM PEDIDOS WHERE ESTADO != ''CANCELADO''',
'     )',
'    ) AS "KPI 2 Num Pedidos",',
'',
'    (SELECT pr.NOMBRE',
'     FROM PRODUCTOS pr',
'     JOIN DETALLE_PEDIDOS dp ON pr.ID_PRODUCTO = dp.ID_PRODUCTO',
'     JOIN PEDIDOS pe ON dp.ID_PEDIDO = pe.ID_PEDIDO',
'     WHERE pe.ESTADO != ''CANCELADO''',
'     GROUP BY pr.NOMBRE',
'     ORDER BY SUM(dp.CANTIDAD) DESC',
'     FETCH FIRST 1 ROWS ONLY',
'    ) AS "KPI 3 Producto Top",',
'',
'    (SELECT ve.NOMBRE || '' '' || ve.APELLIDO',
'     FROM VENDEDORES ve',
'     JOIN PRODUCTOS pr ON ve.ID_VENDEDOR = pr.ID_VENDEDOR',
'     JOIN DETALLE_PEDIDOS dp ON pr.ID_PRODUCTO = dp.ID_PRODUCTO',
'     JOIN PEDIDOS pe ON dp.ID_PEDIDO = pe.ID_PEDIDO',
'     WHERE pe.ESTADO != ''CANCELADO''',
'     GROUP BY ve.NOMBRE, ve.APELLIDO',
'     ORDER BY SUM(dp.CANTIDAD * dp.PRECIO_UNITARIO) DESC',
'     FETCH FIRST 1 ROWS ONLY',
'    ) AS "KPI 4 Vendedor Top"',
'',
'FROM DUAL'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260602044247Z')
,p_updated_on=>wwv_flow_imp.dz('20260605045702Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12333654521230212930)
,p_query_column_id=>1
,p_column_alias=>'KPI 1 Ventas del Mes'
,p_column_display_sequence=>10
,p_column_heading=>'Kpi 1 Ventas Del Mes'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260602051237Z')
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12333654601649212931)
,p_query_column_id=>2
,p_column_alias=>'KPI 2 Num Pedidos'
,p_column_display_sequence=>20
,p_column_heading=>'Kpi 2 Num Pedidos'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260602051237Z')
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12333654669529212932)
,p_query_column_id=>3
,p_column_alias=>'KPI 3 Producto Top'
,p_column_display_sequence=>30
,p_column_heading=>'Kpi 3 Producto Top'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260602051237Z')
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12333654837746212933)
,p_query_column_id=>4
,p_column_alias=>'KPI 4 Vendedor Top'
,p_column_display_sequence=>40
,p_column_heading=>'Kpi 4 Vendedor Top'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260602051237Z')
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510949595297290949)
,p_plug_name=>'Ranking Vendedores'
,p_static_id=>'ranking-vendedores'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10510950033020290949)
,p_region_id=>wwv_flow_imp.id(10510949595297290949)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10510951674025290950)
,p_chart_id=>wwv_flow_imp.id(10510950033020290949)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'RENTABILIDAD_VENDEDOR'
,p_include_rowid_column=>false
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL_INGRESOS'
,p_items_label_column_name=>'VENDEDOR'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10510950546064290949)
,p_chart_id=>wwv_flow_imp.id(10510950033020290949)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10510951098085290950)
,p_chart_id=>wwv_flow_imp.id(10510950033020290949)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Inventario'
,p_alias=>'INVENTARIO'
,p_step_title=>'Inventario'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_last_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510965801464291367)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260526051334Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051334Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510959259097291243)
,p_plug_name=>'Control Inventarioes'
,p_static_id=>'inventario'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CONTROL_INVENTARIO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10510959444926291243)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>3833808793497796125
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510964377961291362)
,p_db_column_name=>'ALERTA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Alerta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051334Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510962361552291355)
,p_db_column_name=>'BODEGA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Bodega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510962033037291354)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510962769257291357)
,p_db_column_name=>'CIUDAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510964035093291361)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510961158118291350)
,p_db_column_name=>'ID_PRODUCTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Producto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510961582958291353)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510963167119291358)
,p_db_column_name=>'STOCK_ACTUAL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Stock Actual'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510963574860291359)
,p_db_column_name=>'STOCK_MINIMO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Stock Minimo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051333Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510964686853291363)
,p_db_column_name=>'UNIDADES_VENDIDAS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Unidades Vendidas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051334Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10510982787229291625)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_PRODUCTO:PRODUCTO:CATEGORIA:BODEGA:CIUDAD:STOCK_ACTUAL:STOCK_MINIMO:DIFERENCIA:ALERTA:UNIDADES_VENDIDAS'
,p_sort_column_1=>'ID_PRODUCTO'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10510965064325291365)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10510959259097291243)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260526051334Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051334Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Productos'
,p_alias=>'PRODUCTOS'
,p_step_title=>'Productos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260526051334Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_last_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510973634602291494)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051335Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510967481362291370)
,p_plug_name=>'Ranking Productos'
,p_static_id=>'productos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'RANKING_PRODUCTOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10510967583308291370)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>3833816931879796252
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510969615109291481)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510971572416291489)
,p_db_column_name=>'EN_PEDIDOS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'En Pedidos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510968840444291478)
,p_db_column_name=>'ID_PRODUCTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Producto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510971955767291490)
,p_db_column_name=>'POSICION_EN_CATEGORIA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Posicion En Categoria'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510972541540291491)
,p_db_column_name=>'POSICION_GLOBAL'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Posicion Global'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510970401563291484)
,p_db_column_name=>'PRECIO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510969244533291480)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510971232172291487)
,p_db_column_name=>'TOTAL_INGRESOS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Total Ingresos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510970757289291486)
,p_db_column_name=>'UNIDADES_VENDIDAS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Unidades Vendidas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510969988505291483)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10510989833423291643)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_PRODUCTO:PRODUCTO:CATEGORIA:VENDEDOR:PRECIO:UNIDADES_VENDIDAS:TOTAL_INGRESOS:EN_PEDIDOS:POSICION_EN_CATEGORIA:POSICION_GLOBAL'
,p_sort_column_1=>'ID_PRODUCTO'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10510972933382291493)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10510967481362291370)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051335Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Vendedores'
,p_alias=>'VENDEDORES'
,p_step_title=>'Vendedores'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260526051335Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_last_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510981509138291616)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510975298013291497)
,p_plug_name=>'Rentabilidad Vendedor'
,p_static_id=>'vendedores'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'RENTABILIDAD_VENDEDOR'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10510975432455291497)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>3833824781026796379
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510978043529291605)
,p_db_column_name=>'CALIFICACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Calificacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510977224375291602)
,p_db_column_name=>'ID_VENDEDOR'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Vendedor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510978838701291608)
,p_db_column_name=>'PEDIDOS_CON_VENTAS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pedidos Con Ventas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510980420448291613)
,p_db_column_name=>'POSICION_RANKING'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Posicion Ranking'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510978431110291606)
,p_db_column_name=>'PRODUCTOS_ACTIVOS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Productos Activos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510979987115291612)
,p_db_column_name=>'TICKET_PROMEDIO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ticket Promedio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510979647236291610)
,p_db_column_name=>'TOTAL_INGRESOS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Total Ingresos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510979209985291609)
,p_db_column_name=>'UNIDADES_VENDIDAS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Unidades Vendidas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10510977587140291604)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10510996825696291653)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_VENDEDOR:VENDEDOR:CALIFICACION:PRODUCTOS_ACTIVOS:PEDIDOS_CON_VENTAS:UNIDADES_VENDIDAS:TOTAL_INGRESOS:TICKET_PROMEDIO:POSICION_RANKING'
,p_sort_column_1=>'ID_VENDEDOR'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10510980827045291615)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10510975298013291497)
,p_button_name=>'RESET_REPORT'
,p_static_id=>'reset-report'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2084305881903810008
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20260526051336Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051336Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Productos CRUD'
,p_alias=>'PRODUCTOS-CRUD'
,p_step_title=>'Productos CRUD'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6684886001442106779)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6684876035977106758)
,p_plug_name=>'Productos CRUD'
,p_static_id=>'productos-crud'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCTOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6684877392538106762)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:RP,10:P10_ID_PRODUCTO:\&ID_PRODUCTO.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6684880340416106769)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Descripcion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6684883309684106775)
,p_name=>'ID_CATEGORIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CATEGORIA'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Categoria'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6684878395669106765)
,p_name=>'ID_PRODUCTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PRODUCTO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6684882333582106773)
,p_name=>'ID_VENDEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_VENDEDOR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Vendedor'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6684879340281106767)
,p_name=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6684881322352106771)
,p_name=>'PRECIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRECIO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Precio'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6684876116732106759)
,p_internal_uid=>6684876116732106759
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6684876846959106761)
,p_interactive_grid_id=>wwv_flow_imp.id(6684876116732106759)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6684876920554106762)
,p_report_id=>wwv_flow_imp.id(6684876846959106761)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6684877858267106764)
,p_view_id=>wwv_flow_imp.id(6684876920554106762)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6684877392538106762)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6684878884406106766)
,p_view_id=>wwv_flow_imp.id(6684876920554106762)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6684878395669106765)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6684879830950106768)
,p_view_id=>wwv_flow_imp.id(6684876920554106762)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6684879340281106767)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6684880830130106770)
,p_view_id=>wwv_flow_imp.id(6684876920554106762)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6684880340416106769)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6684881872671106772)
,p_view_id=>wwv_flow_imp.id(6684876920554106762)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6684881322352106771)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6684882897124106774)
,p_view_id=>wwv_flow_imp.id(6684876920554106762)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6684882333582106773)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6684883831502106776)
,p_view_id=>wwv_flow_imp.id(6684876920554106762)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6684883309684106775)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6684884304105106777)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6684876035977106758)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:10::'
,p_created_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6684884792700106777)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6684876035977106758)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6684885185128106778)
,p_event_id=>wwv_flow_imp.id(6684884792700106777)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6684876035977106758)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605131839Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131839Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Editar Producto'
,p_alias=>'EDITAR-PRODUCTO'
,p_page_mode=>'MODAL'
,p_step_title=>'Editar Producto'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260605131834Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605131836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6684869705393106444)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6684864657233106436)
,p_plug_name=>'Editar Producto'
,p_static_id=>'editar-producto'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCTOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6684870171983106445)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6684869705393106444)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6684870695113106445)
,p_button_id=>wwv_flow_imp.id(6684870171983106445)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6684871985267106447)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6684869705393106444)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ID_PRODUCTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6684871174446106446)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6684869705393106444)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10_ID_PRODUCTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6684871549191106446)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6684869705393106444)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_ID_PRODUCTO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6684865793581106439)
,p_name=>'P10_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_item_source_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6684867203078106441)
,p_name=>'P10_ID_CATEGORIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_item_source_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_prompt=>'Id Categoria'
,p_source=>'ID_CATEGORIA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIAS.NOMBRE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6684864948098106437)
,p_name=>'P10_ID_PRODUCTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_item_source_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_source=>'ID_PRODUCTO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6684866577298106440)
,p_name=>'P10_ID_VENDEDOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_item_source_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_prompt=>'Id Vendedor'
,p_source=>'ID_VENDEDOR'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'VENDEDORES.NOMBRE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6684865360078106438)
,p_name=>'P10_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_item_source_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6684866102720106439)
,p_name=>'P10_PRECIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_item_source_plug_id=>wwv_flow_imp.id(6684864657233106436)
,p_prompt=>'Precio'
,p_source=>'PRECIO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605131835Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131835Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6684873196974106448)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6684873196974106448
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6684872379594106447)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6684864657233106436)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar Producto'
,p_static_id=>'initialize-form-editar-producto'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6684872379594106447
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6684872719404106447)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6684864657233106436)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Editar Producto'
,p_static_id=>'process-form-editar-producto'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6684872719404106447
,p_created_on=>wwv_flow_imp.dz('20260605131836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605131836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Vendedores CRUD'
,p_alias=>'VENDEDORES-CRUD'
,p_step_title=>'Vendedores CRUD'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6700370716465640548)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260605144737Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6700358820173640524)
,p_plug_name=>'Vendedores CRUD'
,p_static_id=>'vendedores-crud'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'VENDEDORES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6700363173740640534)
,p_name=>'APELLIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APELLIDO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apellido'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6700360143979640528)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:RP,12:P12_ID_VENDEDOR:\&ID_VENDEDOR.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
,p_updated_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6700367180945640542)
,p_name=>'CALIFICACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALIFICACION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Calificacion'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6700366108199640540)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Descripcion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6700364151076640536)
,p_name=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6700368133718640543)
,p_name=>'FECHA_REGISTRO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_REGISTRO'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fecha Registro'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6700361189128640530)
,p_name=>'ID_VENDEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_VENDEDOR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6700362124030640532)
,p_name=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6700365179209640538)
,p_name=>'TELEFONO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TELEFONO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Telefono'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605144736Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6700358995317640524)
,p_internal_uid=>6700358995317640524
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6700359637088640527)
,p_interactive_grid_id=>wwv_flow_imp.id(6700358995317640524)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6700359781081640527)
,p_report_id=>wwv_flow_imp.id(6700359637088640527)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700360624869640529)
,p_view_id=>wwv_flow_imp.id(6700359781081640527)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6700360143979640528)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700361637464640531)
,p_view_id=>wwv_flow_imp.id(6700359781081640527)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6700361189128640530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700362604795640533)
,p_view_id=>wwv_flow_imp.id(6700359781081640527)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6700362124030640532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700363640345640535)
,p_view_id=>wwv_flow_imp.id(6700359781081640527)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6700363173740640534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700364655369640537)
,p_view_id=>wwv_flow_imp.id(6700359781081640527)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6700364151076640536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700365693295640539)
,p_view_id=>wwv_flow_imp.id(6700359781081640527)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6700365179209640538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700366651278640541)
,p_view_id=>wwv_flow_imp.id(6700359781081640527)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6700366108199640540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700367608161640543)
,p_view_id=>wwv_flow_imp.id(6700359781081640527)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(6700367180945640542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6700368534005640545)
,p_view_id=>wwv_flow_imp.id(6700359781081640527)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(6700368133718640543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6700369054919640546)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6700358820173640524)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:12::'
,p_created_on=>wwv_flow_imp.dz('20260605144737Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6700369466424640546)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6700358820173640524)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260605144737Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6700369860884640547)
,p_event_id=>wwv_flow_imp.id(6700369466424640546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6700358820173640524)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605144737Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144737Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Editar Vendedor'
,p_alias=>'EDITAR-VENDEDOR'
,p_page_mode=>'MODAL'
,p_step_title=>'Editar Vendedor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260605144732Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6700331676702640201)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6700325729793640194)
,p_plug_name=>'Editar Vendedor'
,p_static_id=>'editar-vendedor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'VENDEDORES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6700332030420640202)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6700331676702640201)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6700332572294640202)
,p_button_id=>wwv_flow_imp.id(6700332030420640202)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6700333813814640204)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6700331676702640201)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P12_ID_VENDEDOR'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6700333090162640203)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6700331676702640201)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P12_ID_VENDEDOR'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6700333491331640204)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6700331676702640201)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P12_ID_VENDEDOR'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6700326819053640196)
,p_name=>'P12_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_item_source_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_prompt=>'Apellido'
,p_source=>'APELLIDO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6700328452186640198)
,p_name=>'P12_CALIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_item_source_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_prompt=>'Calificacion'
,p_source=>'CALIFICACION'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6700328053711640198)
,p_name=>'P12_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_item_source_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6700327220539640197)
,p_name=>'P12_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_item_source_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6700328806494640198)
,p_name=>'P12_FECHA_REGISTRO'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_item_source_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_prompt=>'Fecha Registro'
,p_source=>'FECHA_REGISTRO'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6700326039564640195)
,p_name=>'P12_ID_VENDEDOR'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_item_source_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_source=>'ID_VENDEDOR'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6700326492168640196)
,p_name=>'P12_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_item_source_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6700327691080640197)
,p_name=>'P12_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_item_source_plug_id=>wwv_flow_imp.id(6700325729793640194)
,p_prompt=>'Telefono'
,p_source=>'TELEFONO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6700335016554640205)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6700335016554640205
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6700334272407640204)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6700325729793640194)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar Vendedor'
,p_static_id=>'initialize-form-editar-vendedor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6700334272407640204
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6700334627793640205)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6700325729793640194)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Editar Vendedor'
,p_static_id=>'process-form-editar-vendedor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6700334627793640205
,p_created_on=>wwv_flow_imp.dz('20260605144733Z')
,p_updated_on=>wwv_flow_imp.dz('20260605144733Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Inventario CRUD'
,p_alias=>'INVENTARIO-CRUD'
,p_step_title=>'Inventario CRUD'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605163631Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6701832349784694616)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6701822364984694592)
,p_plug_name=>'Inventario CRUD'
,p_static_id=>'inventario-crud'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'INVENTARIO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_on=>wwv_flow_imp.dz('20260605163631Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6701823682036694596)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:RP,14:P14_ID_INVENTARIO:\&ID_INVENTARIO.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6701827697744694606)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605154315Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6701829641661694611)
,p_name=>'FECHA_ACTUALIZACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_ACTUALIZACION'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fecha Actualizacion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605153532Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6701826691385694604)
,p_name=>'ID_BODEGA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_BODEGA'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Id Bodega'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161125Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6701824645739694600)
,p_name=>'ID_INVENTARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_INVENTARIO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(6701813066311694269)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6701825611837694602)
,p_name=>'ID_PRODUCTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PRODUCTO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Producto'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605163631Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6701828635276694609)
,p_name=>'STOCK_MINIMO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STOCK_MINIMO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock Minimo'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605154315Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6701822488104694593)
,p_internal_uid=>6701822488104694593
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6701823111367694595)
,p_interactive_grid_id=>wwv_flow_imp.id(6701822488104694593)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6701823228875694595)
,p_report_id=>wwv_flow_imp.id(6701823111367694595)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6701824164197694598)
,p_view_id=>wwv_flow_imp.id(6701823228875694595)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6701823682036694596)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6701825186539694601)
,p_view_id=>wwv_flow_imp.id(6701823228875694595)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6701824645739694600)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6701826198523694604)
,p_view_id=>wwv_flow_imp.id(6701823228875694595)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6701825611837694602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6701827168024694606)
,p_view_id=>wwv_flow_imp.id(6701823228875694595)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6701826691385694604)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6701828188788694608)
,p_view_id=>wwv_flow_imp.id(6701823228875694595)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6701827697744694606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6701829113976694610)
,p_view_id=>wwv_flow_imp.id(6701823228875694595)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6701828635276694609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6701830174575694613)
,p_view_id=>wwv_flow_imp.id(6701823228875694595)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6701829641661694611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6701830689870694613)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6701822364984694592)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:14::'
,p_created_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6701831003204694614)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6701822364984694592)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6701831499941694615)
,p_event_id=>wwv_flow_imp.id(6701831003204694614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6701822364984694592)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605145637Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145637Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Editar Inventario'
,p_alias=>'EDITAR-INVENTARIO'
,p_page_mode=>'MODAL'
,p_step_title=>'Editar Inventario'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260605145633Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6701817380002694276)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6701812214715694267)
,p_plug_name=>'Editar Inventario'
,p_static_id=>'editar-inventario'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'INVENTARIO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6701817789796694276)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6701817380002694276)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6701818201483694277)
,p_button_id=>wwv_flow_imp.id(6701817789796694276)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6701819554504694279)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6701817380002694276)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P14_ID_INVENTARIO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6701818791531694278)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6701817380002694276)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_ID_INVENTARIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6701819164173694278)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6701817380002694276)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P14_ID_INVENTARIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6701814325749694273)
,p_name=>'P14_CANTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_item_source_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_prompt=>'Cantidad'
,p_source=>'CANTIDAD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6701815144745694274)
,p_name=>'P14_FECHA_ACTUALIZACION'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_item_source_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_prompt=>'Fecha Actualizacion'
,p_source=>'FECHA_ACTUALIZACION'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6701813638305694271)
,p_name=>'P14_ID_BODEGA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_item_source_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_prompt=>'Id Bodega'
,p_source=>'ID_BODEGA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BODEGAS.NOMBRE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6701812525997694268)
,p_name=>'P14_ID_INVENTARIO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_item_source_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_source=>'ID_INVENTARIO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6701812924556694269)
,p_name=>'P14_ID_PRODUCTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_item_source_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_prompt=>'Id Producto'
,p_source=>'ID_PRODUCTO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRODUCTOS.NOMBRE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6701814710809694273)
,p_name=>'P14_STOCK_MINIMO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_item_source_plug_id=>wwv_flow_imp.id(6701812214715694267)
,p_prompt=>'Stock Minimo'
,p_source=>'STOCK_MINIMO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6701820818222694280)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6701820818222694280
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6701819932123694279)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6701812214715694267)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar Inventario'
,p_static_id=>'initialize-form-editar-inventario'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6701819932123694279
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6701820465873694280)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6701812214715694267)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Editar Inventario'
,p_static_id=>'process-form-editar-inventario'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6701820465873694280
,p_created_on=>wwv_flow_imp.dz('20260605145634Z')
,p_updated_on=>wwv_flow_imp.dz('20260605145634Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Pedidos CRUD'
,p_alias=>'PEDIDOS-CRUD'
,p_step_title=>'Pedidos CRUD'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605163233Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6715483165827186469)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6715475137799186451)
,p_plug_name=>'Pedidos CRUD'
,p_static_id=>'pedidos-crud'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PEDIDOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605163233Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715476444062186455)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:RP,16:P16_ID_PEDIDO:\&ID_PEDIDO.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715480427948186464)
,p_name=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715479498584186462)
,p_name=>'FECHA_PEDIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_PEDIDO'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fecha Pedido'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715478400653186460)
,p_name=>'ID_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CLIENTE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Cliente'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715477421991186458)
,p_name=>'ID_PEDIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PEDIDO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260605163233Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6715475247405186451)
,p_internal_uid=>6715475247405186451
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6715475999432186454)
,p_interactive_grid_id=>wwv_flow_imp.id(6715475247405186451)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6715476008245186454)
,p_report_id=>wwv_flow_imp.id(6715475999432186454)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715476978801186457)
,p_view_id=>wwv_flow_imp.id(6715476008245186454)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6715476444062186455)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715477971314186459)
,p_view_id=>wwv_flow_imp.id(6715476008245186454)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6715477421991186458)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715478978859186461)
,p_view_id=>wwv_flow_imp.id(6715476008245186454)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6715478400653186460)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715479965155186463)
,p_view_id=>wwv_flow_imp.id(6715476008245186454)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6715479498584186462)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715480962498186465)
,p_view_id=>wwv_flow_imp.id(6715476008245186454)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6715480427948186464)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715481499685186466)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6715475137799186451)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:16::'
,p_created_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6715481812422186467)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6715475137799186451)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6715482226853186467)
,p_event_id=>wwv_flow_imp.id(6715481812422186467)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6715475137799186451)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161836Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161836Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Editar Pedido'
,p_alias=>'EDITAR-PEDIDO'
,p_page_mode=>'MODAL'
,p_step_title=>'Editar Pedido'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260605161832Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6715470397184186157)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6715466878017186151)
,p_plug_name=>'Editar Pedido'
,p_static_id=>'editar-pedido'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PEDIDOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715470752955186158)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6715470397184186157)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6715471298096186158)
,p_button_id=>wwv_flow_imp.id(6715470752955186158)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715472530867186159)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6715470397184186157)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P16_ID_PEDIDO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715471702603186159)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6715470397184186157)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P16_ID_PEDIDO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715472192277186159)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6715470397184186157)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P16_ID_PEDIDO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6715468724581186155)
,p_name=>'P16_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6715466878017186151)
,p_item_source_plug_id=>wwv_flow_imp.id(6715466878017186151)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6715468335394186155)
,p_name=>'P16_FECHA_PEDIDO'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6715466878017186151)
,p_item_source_plug_id=>wwv_flow_imp.id(6715466878017186151)
,p_prompt=>'Fecha Pedido'
,p_source=>'FECHA_PEDIDO'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6715467684189186153)
,p_name=>'P16_ID_CLIENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6715466878017186151)
,p_item_source_plug_id=>wwv_flow_imp.id(6715466878017186151)
,p_prompt=>'Id Cliente'
,p_source=>'ID_CLIENTE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CLIENTES.NOMBRE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6715467292570186153)
,p_name=>'P16_ID_PEDIDO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6715466878017186151)
,p_item_source_plug_id=>wwv_flow_imp.id(6715466878017186151)
,p_source=>'ID_PEDIDO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6715473766884186160)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6715473766884186160
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6715472986625186160)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6715466878017186151)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar Pedido'
,p_static_id=>'initialize-form-editar-pedido'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6715472986625186160
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6715473315965186160)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6715466878017186151)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Editar Pedido'
,p_static_id=>'process-form-editar-pedido'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6715473315965186160
,p_created_on=>wwv_flow_imp.dz('20260605161833Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161833Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Detalle PedidosCRUD'
,p_alias=>'DETALLE-PEDIDOSCRUD'
,p_step_title=>'Detalle PedidosCRUD'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6715680014649847884)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6715670846754847868)
,p_plug_name=>'Detalle PedidosCRUD'
,p_static_id=>'detalle-pedidoscrud'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DETALLE_PEDIDOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715672197914847871)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:RP,18:P18_ID_DETALLE:\&ID_DETALLE.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715676393723847878)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715673197904847873)
,p_name=>'ID_DETALLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_DETALLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715674374722847875)
,p_name=>'ID_PEDIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PEDIDO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Pedido'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715675320689847876)
,p_name=>'ID_PRODUCTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PRODUCTO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Producto'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6715677315832847880)
,p_name=>'PRECIO_UNITARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRECIO_UNITARIO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Precio Unitario'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6715670937184847868)
,p_internal_uid=>6715670937184847868
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6715671672963847870)
,p_interactive_grid_id=>wwv_flow_imp.id(6715670937184847868)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6715671797769847870)
,p_report_id=>wwv_flow_imp.id(6715671672963847870)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715672681868847873)
,p_view_id=>wwv_flow_imp.id(6715671797769847870)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6715672197914847871)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715673810001847874)
,p_view_id=>wwv_flow_imp.id(6715671797769847870)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6715673197904847873)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715674811113847876)
,p_view_id=>wwv_flow_imp.id(6715671797769847870)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6715674374722847875)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715675860460847878)
,p_view_id=>wwv_flow_imp.id(6715671797769847870)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6715675320689847876)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715676876298847879)
,p_view_id=>wwv_flow_imp.id(6715671797769847870)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6715676393723847878)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6715677838687847881)
,p_view_id=>wwv_flow_imp.id(6715671797769847870)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6715677315832847880)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715678371277847881)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6715670846754847868)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:18::'
,p_created_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6715678786251847882)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6715670846754847868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6715679191459847883)
,p_event_id=>wwv_flow_imp.id(6715678786251847882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6715670846754847868)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161957Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161957Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Editar Detalle Pedido'
,p_alias=>'EDITAR-DETALLE-PEDIDO'
,p_page_mode=>'MODAL'
,p_step_title=>'Editar Detalle Pedido'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260605161955Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605163935Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6715666028670847751)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6715661938004847744)
,p_plug_name=>'Editar Detalle Pedido'
,p_static_id=>'editar-detalle-pedido'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DETALLE_PEDIDOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715666405135847752)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6715666028670847751)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6715666944618847752)
,p_button_id=>wwv_flow_imp.id(6715666405135847752)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715668259328847753)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6715666028670847751)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P18_ID_DETALLE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715667481233847753)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6715666028670847751)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P18_ID_DETALLE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6715667805395847753)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6715666028670847751)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P18_ID_DETALLE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6715663717659847749)
,p_name=>'P18_CANTIDAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_item_source_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_prompt=>'Cantidad'
,p_source=>'CANTIDAD'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6715662287240847746)
,p_name=>'P18_ID_DETALLE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_item_source_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_source=>'ID_DETALLE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6715662626016847746)
,p_name=>'P18_ID_PEDIDO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_item_source_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_prompt=>'Id Pedido'
,p_source=>'ID_PEDIDO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT ID_PEDIDO || '' - '' || ESTADO AS display, ID_PEDIDO AS return_value FROM PEDIDOS ORDER BY ID_PEDIDO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>' -- Seleccione Pedido --'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605162902Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6715663344456847748)
,p_name=>'P18_ID_PRODUCTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_item_source_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_prompt=>'Id Producto'
,p_source=>'ID_PRODUCTO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605163935Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6715664158907847749)
,p_name=>'P18_PRECIO_UNITARIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_item_source_plug_id=>wwv_flow_imp.id(6715661938004847744)
,p_prompt=>'Precio Unitario'
,p_source=>'PRECIO_UNITARIO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6715669486070847754)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6715669486070847754
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6715668660689847754)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6715661938004847744)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar Detalle Pedido'
,p_static_id=>'initialize-form-editar-detalle-pedido'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6715668660689847754
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6715669077167847754)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6715661938004847744)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Editar Detalle Pedido'
,p_static_id=>'process-form-editar-detalle-pedido'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6715669077167847754
,p_created_on=>wwv_flow_imp.dz('20260605161956Z')
,p_updated_on=>wwv_flow_imp.dz('20260605161956Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Pagos CRUD'
,p_alias=>'PAGOS-CRUD'
,p_step_title=>'Pagos CRUD'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605182814Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6730367417762938117)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10510729605644290901)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6730357469966938088)
,p_plug_name=>'Pagos CRUD'
,p_static_id=>'pagos-crud'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PAGOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182814Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6730358758589938093)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:RP,20:P20_ID_PAGO:\&ID_PAGO.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6730364773485938111)
,p_name=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Display1;Return1,Display2;Return2'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605182814Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6730362733392938107)
,p_name=>'FECHA_PAGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_PAGO'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fecha Pago'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD/MM/YYYY'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605182642Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6730361738485938104)
,p_name=>'ID_METODO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_METODO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Metodo'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605182814Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6730359748243938096)
,p_name=>'ID_PAGO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PAGO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260605182813Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6730360700087938100)
,p_name=>'ID_PEDIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PEDIDO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id Pedido'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605182813Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6730363789279938109)
,p_name=>'MONTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Monto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(6715662751280847746)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(6730357599014938088)
,p_internal_uid=>6730357599014938088
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6730358291904938091)
,p_interactive_grid_id=>wwv_flow_imp.id(6730357599014938088)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6730358323860938092)
,p_report_id=>wwv_flow_imp.id(6730358291904938091)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6730359224957938095)
,p_view_id=>wwv_flow_imp.id(6730358323860938092)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(6730358758589938093)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6730360245187938099)
,p_view_id=>wwv_flow_imp.id(6730358323860938092)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(6730359748243938096)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6730361203571938103)
,p_view_id=>wwv_flow_imp.id(6730358323860938092)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(6730360700087938100)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6730362256900938106)
,p_view_id=>wwv_flow_imp.id(6730358323860938092)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(6730361738485938104)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6730363286318938108)
,p_view_id=>wwv_flow_imp.id(6730358323860938092)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(6730362733392938107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6730364255561938110)
,p_view_id=>wwv_flow_imp.id(6730358323860938092)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(6730363789279938109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6730365200665938113)
,p_view_id=>wwv_flow_imp.id(6730358323860938092)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6730364773485938111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6730365795728938113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6730357469966938088)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:20::'
,p_created_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6730366196519938114)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(6730357469966938088)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6730366521091938115)
,p_event_id=>wwv_flow_imp.id(6730366196519938114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6730357469966938088)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605182352Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182352Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Editar Pago'
,p_alias=>'EDITAR-PAGO'
,p_page_mode=>'MODAL'
,p_step_title=>'Editar Pago'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260605182348Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260605183029Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_last_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6730352377895937756)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6730347540687937746)
,p_plug_name=>'Editar Pago'
,p_static_id=>'editar-pago'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PAGOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6730352732379937757)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6730352377895937756)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(6730353226774937758)
,p_button_id=>wwv_flow_imp.id(6730352732379937757)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6730354599984937760)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6730352377895937756)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P20_ID_PAGO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6730353776611937759)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6730352377895937756)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P20_ID_PAGO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6730354174370937759)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6730352377895937756)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P20_ID_PAGO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6730350175404937753)
,p_name=>'P20_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_item_source_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6730349382887937752)
,p_name=>'P20_FECHA_PAGO'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_item_source_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_prompt=>'Fecha Pago'
,p_source=>'FECHA_PAGO'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6730348629428937750)
,p_name=>'P20_ID_METODO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_item_source_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_prompt=>'Id Metodo'
,p_source=>'ID_METODO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'METODOS_PAGO.NOMBRE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6730347848040937748)
,p_name=>'P20_ID_PAGO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_item_source_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_source=>'ID_PAGO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6730348274508937749)
,p_name=>'P20_ID_PEDIDO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_item_source_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_prompt=>'Id Pedido'
,p_source=>'ID_PEDIDO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605183029Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6730349719175937753)
,p_name=>'P20_MONTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_item_source_plug_id=>wwv_flow_imp.id(6730347540687937746)
,p_prompt=>'Monto'
,p_source=>'MONTO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6730355713690937762)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6730355713690937762
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6730354947589937760)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(6730347540687937746)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar Pago'
,p_static_id=>'initialize-form-editar-pago'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6730354947589937760
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6730355305292937761)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(6730347540687937746)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Editar Pago'
,p_static_id=>'process-form-editar-pago'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6730355305292937761
,p_created_on=>wwv_flow_imp.dz('20260605182349Z')
,p_updated_on=>wwv_flow_imp.dz('20260605182349Z')
,p_created_by=>'MARLON.PUENTES@UPTC.EDU.CO'
,p_updated_by=>'MARLON.PUENTES@UPTC.EDU.CO'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Marketplace Dashboard - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_last_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10510938612099290925)
,p_plug_name=>'Marketplace Dashboard'
,p_static_id=>'marketplace-dashboard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10510940160013290928)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10510938612099290925)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10510939544516290927)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10510938612099290925)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10510939883287290928)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10510938612099290925)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10510939094637290927)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10510938612099290925)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10510944262057290932)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3833793610628795814
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10510943892948290932)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>3833793241519795814
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10510940610673290929)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3833789959244795811
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10510941593816290930)
,p_page_process_id=>wwv_flow_imp.id(10510940610673290929)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10510942102261290930)
,p_page_process_id=>wwv_flow_imp.id(10510940610673290929)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10510941113347290930)
,p_page_process_id=>wwv_flow_imp.id(10510940610673290929)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10510942538545290931)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3833791887116795813
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10510943454378290932)
,p_page_process_id=>wwv_flow_imp.id(10510942538545290931)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10510943000597290931)
,p_page_process_id=>wwv_flow_imp.id(10510942538545290931)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260526051329Z')
,p_updated_on=>wwv_flow_imp.dz('20260526051329Z')
,p_created_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
,p_updated_by=>'WILIANLOPEZGUZMAN@GMAIL.COM'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
