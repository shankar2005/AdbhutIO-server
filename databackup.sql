--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'profiles', 'artist');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'profiles', 'client');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'profiles', 'manager');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'profiles', 'project');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'profiles', 'work');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'profiles', 'projectfee');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'profiles', 'projectdemo');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'profiles', 'artistrequest');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'profiles', 'artistfeedback');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'misc', 'location');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'misc', 'skill');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (17, 'authtoken', 'token');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (18, 'authtoken', 'tokenproxy');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (19, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (20, 'misc', 'language');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (21, 'misc', 'genre');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (22, 'profiles', 'templateprojects');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (23, 'profiles', 'role');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (24, 'profiles', 'chatgptmessage');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (25, 'profiles', 'socialprofile');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (26, 'ipn', 'paypalipn');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (27, 'profiles', 'templateprojectskill');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view permission', 1, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view group', 2, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add user', 3, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change user', 3, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete user', 3, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view user', 3, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add artist', 4, 'add_artist');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change artist', 4, 'change_artist');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete artist', 4, 'delete_artist');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view artist', 4, 'view_artist');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add client', 5, 'add_client');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change client', 5, 'change_client');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete client', 5, 'delete_client');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view client', 5, 'view_client');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add manager', 6, 'add_manager');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change manager', 6, 'change_manager');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete manager', 6, 'delete_manager');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view manager', 6, 'view_manager');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add project', 7, 'add_project');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change project', 7, 'change_project');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete project', 7, 'delete_project');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view project', 7, 'view_project');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add work', 8, 'add_work');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change work', 8, 'change_work');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete work', 8, 'delete_work');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view work', 8, 'view_work');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add project fee', 9, 'add_projectfee');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change project fee', 9, 'change_projectfee');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete project fee', 9, 'delete_projectfee');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view project fee', 9, 'view_projectfee');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add project demo', 10, 'add_projectdemo');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change project demo', 10, 'change_projectdemo');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete project demo', 10, 'delete_projectdemo');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view project demo', 10, 'view_projectdemo');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add artist request', 11, 'add_artistrequest');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change artist request', 11, 'change_artistrequest');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete artist request', 11, 'delete_artistrequest');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view artist request', 11, 'view_artistrequest');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add artist feedback', 12, 'add_artistfeedback');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change artist feedback', 12, 'change_artistfeedback');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete artist feedback', 12, 'delete_artistfeedback');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view artist feedback', 12, 'view_artistfeedback');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add location', 13, 'add_location');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change location', 13, 'change_location');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete location', 13, 'delete_location');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view location', 13, 'view_location');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add skill', 14, 'add_skill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change skill', 14, 'change_skill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete skill', 14, 'delete_skill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view skill', 14, 'view_skill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add content type', 15, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change content type', 15, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete content type', 15, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view content type', 15, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add log entry', 16, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change log entry', 16, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete log entry', 16, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view log entry', 16, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can add Token', 17, 'add_token');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can change Token', 17, 'change_token');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can delete Token', 17, 'delete_token');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can view Token', 17, 'view_token');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can add token', 18, 'add_tokenproxy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can change token', 18, 'change_tokenproxy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can delete token', 18, 'delete_tokenproxy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can view token', 18, 'view_tokenproxy');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (73, 'Can add session', 19, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (74, 'Can change session', 19, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (75, 'Can delete session', 19, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (76, 'Can view session', 19, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (77, 'Can add language', 20, 'add_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (78, 'Can change language', 20, 'change_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (79, 'Can delete language', 20, 'delete_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (80, 'Can view language', 20, 'view_language');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (81, 'Can add genre', 21, 'add_genre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (82, 'Can change genre', 21, 'change_genre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (83, 'Can delete genre', 21, 'delete_genre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (84, 'Can view genre', 21, 'view_genre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (85, 'Can add template projects', 22, 'add_templateprojects');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (86, 'Can change template projects', 22, 'change_templateprojects');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (87, 'Can delete template projects', 22, 'delete_templateprojects');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (88, 'Can view template projects', 22, 'view_templateprojects');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (89, 'Can add role', 23, 'add_role');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (90, 'Can change role', 23, 'change_role');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (91, 'Can delete role', 23, 'delete_role');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (92, 'Can view role', 23, 'view_role');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (93, 'Can add chat gpt message', 24, 'add_chatgptmessage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (94, 'Can change chat gpt message', 24, 'change_chatgptmessage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (95, 'Can delete chat gpt message', 24, 'delete_chatgptmessage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (96, 'Can view chat gpt message', 24, 'view_chatgptmessage');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (97, 'Can add social profile', 25, 'add_socialprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (98, 'Can change social profile', 25, 'change_socialprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (99, 'Can delete social profile', 25, 'delete_socialprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (100, 'Can view social profile', 25, 'view_socialprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (101, 'Can add PayPal IPN', 26, 'add_paypalipn');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (102, 'Can change PayPal IPN', 26, 'change_paypalipn');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (103, 'Can delete PayPal IPN', 26, 'delete_paypalipn');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (104, 'Can view PayPal IPN', 26, 'view_paypalipn');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (105, 'Can add template project skill', 27, 'add_templateprojectskill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (106, 'Can change template project skill', 27, 'change_templateprojectskill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (107, 'Can delete template project skill', 27, 'delete_templateprojectskill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (108, 'Can view template project skill', 27, 'view_templateprojectskill');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (34, 'pbkdf2_sha256$260000$5S8BxTJXIVosNvBnPEgC3Q$KK19suSOU2Yb1Ouax4uh76AO9KmpfnmtyqLO8Y9SBzY=', NULL, false, 'admi217@gmail.com', 'admina', '', 'admi217@gmail.com', false, true, '2023-03-09 04:26:05.098-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (35, 'pbkdf2_sha256$260000$TkWfVWVxzvi4M82Su0mzVK$M9d6a0OlONsdE7eitq2ouj62abCfsLA4vYu/YRy134Y=', NULL, false, 'adi217@gmail.com', 'admina', '', 'adi217@gmail.com', false, true, '2023-03-09 04:28:17.359-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (36, 'pbkdf2_sha256$260000$ogixY2z6q6Zt6zwbUX8UWz$xnjtPoFcoOYMtfulr6GfuEigfYoiPu/5A3DJEVBKVyk=', NULL, false, 'adi45217@gmail.com', 'admina', '', 'adi45217@gmail.com', false, true, '2023-03-09 04:29:25.633-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$260000$cp1uXika48lU3oCmGPmkhN$zoQSFq3LuqzztWzidFMUofroRVffK58KzRQg+JocT20=', '2023-03-14 12:32:49.333-07', true, 'admin', '', '', '', true, true, '2023-01-13 02:12:42-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$260000$JOMyx47xCBCZzCBCihfHwC$sIAb3SLR9dpD0debTBZhiXkfDCGkc4rfBnBj/GnkQeU=', '2023-01-27 05:48:33.425-08', true, 'aditya', '', '', 'aditya@gmail.com', true, true, '2023-01-25 22:15:17.788-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (3, 'pbkdf2_sha256$260000$5P6B5EtGXBXyAwsXfWJRQN$c3G+ib50DdylskHr2GKIpRQd5fa79ZBxjqsRyGKLoBw=', '2023-02-27 05:59:18.835-08', true, 'himanshugarg', '', '', 'himan.gargcoder@gmail.com', true, true, '2023-02-26 23:21:04.617-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (30, 'pbkdf2_sha256$260000$oFCcxwbRO67jABm7GdYNU1$MetNz4GVLh4/s1C+3lnYRTlmzcM7nlNB+7hJu0wYd+4=', NULL, false, 'admin5508917@gmail.com', 'admina', '', 'admin5508917@gmail.com', false, true, '2023-03-09 03:53:56.678-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (31, 'pbkdf2_sha256$260000$RmVwgUqE48ttNYyfC0YtIG$qKdn3oQ4q+Zw0YD0gy6IACFWYPufx4/Hn0b5wKoITNw=', NULL, false, 'admin8917@gmail.com', 'admina', '', 'admin8917@gmail.com', false, true, '2023-03-09 03:54:07.831-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (32, 'pbkdf2_sha256$260000$D2yJk85R1aQSijsm4XLsiy$dBcOllkgCOUnZKLJnw9O2xo2p9qOc5Ar3RNU+twYjG8=', NULL, false, 'muskan@gmail.com', '', '', '', false, true, '2023-03-09 04:20:25.447-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (33, 'pbkdf2_sha256$260000$pjsSWOjfOAmIhIwMtV1RdP$24jcvi8UlShmT1Auxoxd8cHUZ3liOkwDeJmBAfrg6EY=', NULL, false, 'admin545217@gmail.com', 'admina', '', 'admin545217@gmail.com', false, true, '2023-03-09 04:20:47.719-08');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (37, 'pbkdf2_sha256$260000$rYWHxgRVskvkJjP0VWNXjf$TP31kGVW/b2Gtw/3izq58VvVbifhdgqc+QS4keNvY+Q=', '2023-03-09 04:33:54.227-08', false, 'muskan123@gmail.com', 'admina', '', 'muskan123@gmail.com', false, true, '2023-03-09 04:31:27.652-08');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.authtoken_token (key, created, user_id) VALUES ('1df2d3a9b8875ecf5b2c3587bd81e72d67582c5e', '2023-01-18 07:07:28.231-08', 1);
INSERT INTO public.authtoken_token (key, created, user_id) VALUES ('2908f1845c4bf506690c301ed4af5cd16d601440', '2023-01-27 10:44:23.559-08', 2);
INSERT INTO public.authtoken_token (key, created, user_id) VALUES ('31ab60907639d9cd5f4433658ac889cd1f62a8fb', '2023-02-26 23:21:04.753-08', 3);
INSERT INTO public.authtoken_token (key, created, user_id) VALUES ('424a80892f446a7d22b8ab73b86020ebc65f129f', '2023-03-09 03:54:07.935-08', 31);
INSERT INTO public.authtoken_token (key, created, user_id) VALUES ('7e6957ae089d6c5ef8c140ca991fd99b0d5c2a43', '2023-03-09 04:33:54.236-08', 37);
INSERT INTO public.authtoken_token (key, created, user_id) VALUES ('881d8d2d8e6c8cb332fabc8e4041bc676b29b43e', '2023-03-09 03:53:56.803-08', 30);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2023-01-13 02:13:00.34-08', '1', 'Rewa', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2023-01-13 02:13:04.134-08', '2', 'Noida', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2023-01-13 02:13:18.538-08', '1', 'Dancing', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2023-01-13 02:13:21.25-08', '2', 'Painting', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2023-01-13 02:13:23.907-08', '3', 'Programming', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2023-01-13 02:13:26.266-08', '4', 'Singing', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2023-01-13 02:13:27.97-08', '5', 'Acting', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2023-01-13 02:16:09.427-08', '1', 'Hindi', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2023-01-13 02:16:13.435-08', '2', 'English', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2023-01-13 02:16:51.839-08', '1', 'vatsal shukla', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2023-01-13 02:18:52.391-08', '1', 'Test Genre', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2023-01-13 02:19:25.049-08', '2', 'Shankar', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2023-01-13 02:20:27.304-08', '1', 'Instagram Demo', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2023-01-13 02:20:50.359-08', '2', 'Youtube Demo', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2023-01-13 02:21:16.989-08', '3', 'Soundcloud Demo', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2023-01-13 02:21:28.217-08', '3', 'Soundcloud Demo', 2, '[{"changed": {"fields": ["Details"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2023-01-13 02:21:53.469-08', '4', 'Image Demo', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2023-01-13 02:22:19.97-08', '5', 'Video Example', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2023-01-13 02:22:23.021-08', '4', 'Image Demo', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2023-01-13 02:22:57.603-08', '2', 'Shankar', 2, '[{"changed": {"fields": ["Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (21, '2023-01-13 02:23:03.079-08', '1', 'vatsal shukla', 2, '[{"changed": {"fields": ["Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (22, '2023-01-13 02:24:39.549-08', '2', 'Shankar', 2, '[{"changed": {"fields": ["Email", "Social links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (23, '2023-01-13 02:24:52.267-08', '1', 'Maruf', 1, '[{"added": {}}]', 6, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (24, '2023-01-13 02:25:01.72-08', '1', 'vatsal shukla', 2, '[{"changed": {"fields": ["Has manager", "Manager"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (25, '2023-01-13 03:21:31.747-08', '1', 'Instagram Demo', 2, '[{"changed": {"fields": ["Skill"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (26, '2023-01-14 07:11:46.313-08', '1', 'TemplateProjects object (1)', 1, '[{"added": {}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (27, '2023-01-14 07:12:33.64-08', '2', 'Movie', 1, '[{"added": {}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (28, '2023-01-14 08:43:37.792-08', '1', 'vatsal shukla', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (29, '2023-01-14 08:52:51.189-08', '3', 'Musical', 1, '[{"added": {}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (30, '2023-01-16 00:47:57.696-08', '5', 'Actor', 2, '[{"changed": {"fields": ["Name"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (31, '2023-01-16 00:48:17.236-08', '4', 'Voice Over Artist', 2, '[{"changed": {"fields": ["Name"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (32, '2023-01-16 00:48:38.686-08', '3', 'Website Developer', 2, '[{"changed": {"fields": ["Name"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (33, '2023-01-16 00:49:09.873-08', '2', 'Photographer', 2, '[{"changed": {"fields": ["Name"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (34, '2023-01-16 00:49:29.056-08', '1', 'Vocalist', 2, '[{"changed": {"fields": ["Name"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (35, '2023-01-16 00:49:39.276-08', '6', 'Writer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (36, '2023-01-16 00:49:58.736-08', '7', 'Music Producer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (37, '2023-01-16 00:50:10.405-08', '8', 'Rapper', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (38, '2023-01-16 00:50:17.576-08', '9', 'Anchor', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (39, '2023-01-16 00:50:38.066-08', '10', 'Director', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (40, '2023-01-16 00:50:46.881-08', '11', 'Video Producer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (41, '2023-01-16 00:51:00.995-08', '12', 'Influencer\', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (42, '2023-01-16 00:51:06.066-08', '12', 'Influencer', 2, '[{"changed": {"fields": ["Name"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (43, '2023-01-16 00:51:25.516-08', '13', '2D Animation Artist', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (44, '2023-01-16 00:51:34.315-08', '14', '3D Animation Artist', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (45, '2023-01-16 00:51:49.341-08', '15', 'Static Graphics Designer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (46, '2023-01-16 00:51:56.29-08', '16', 'Website Designer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (47, '2023-01-16 00:52:04.296-08', '17', 'Augmented Reality Developer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (48, '2023-01-16 00:52:09.58-08', '18', 'Game Developer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (49, '2023-01-16 00:52:29.777-08', '19', 'Photographer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (50, '2023-01-16 00:52:47.498-08', '19', 'Photographer', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (51, '2023-01-16 00:54:36.95-08', '20', 'Virtual Reality Developer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (52, '2023-01-16 00:56:34.45-08', '21', 'Lyricist', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (53, '2023-01-16 00:59:53.119-08', '3', 'Musical', 2, '[{"changed": {"fields": ["Details", "Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (54, '2023-01-16 01:00:04.401-08', '22', 'Video Editor', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (55, '2023-01-16 01:00:18.677-08', '3', 'Musical', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (56, '2023-01-16 01:09:08.894-08', '4', 'Fiction & Reality', 1, '[{"added": {}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (57, '2023-01-16 01:11:09.242-08', '4', 'Fiction & Reality', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (58, '2023-01-16 01:12:18.848-08', '1', 'Chat Show', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (59, '2023-01-16 01:12:42.125-08', '2', 'Documentary', 2, '[{"changed": {"fields": ["Name", "Details"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (60, '2023-01-16 02:52:09.974-08', '1', 'Chat Show', 2, '[{"changed": {"fields": ["Details"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (61, '2023-01-16 02:53:36.695-08', '2', 'Documentary', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (62, '2023-01-16 02:54:37.833-08', '5', 'Web3 solutions', 1, '[{"added": {}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (63, '2023-01-16 02:55:07.597-08', '6', 'Artwork', 1, '[{"added": {}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (64, '2023-01-16 03:00:32.399-08', '3', 'Soundcloud Demo', 2, '[{"changed": {"fields": ["Skill"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (65, '2023-01-16 03:00:42.432-08', '5', 'Video Example', 2, '[{"changed": {"fields": ["Skill"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (66, '2023-01-16 03:01:47.806-08', '5', 'Video Example', 2, '[{"changed": {"fields": ["Skill"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (67, '2023-01-16 03:06:52.006-08', '2', 'Shankar', 2, '[]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (68, '2023-01-16 03:07:00.483-08', '1', 'vatsal shukla', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (69, '2023-01-16 03:10:09.674-08', '2', 'Shankar', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (70, '2023-01-16 06:53:54.71-08', '2', 'Music Videos', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (71, '2023-01-16 06:54:03.727-08', '3', 'Videographer', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (72, '2023-01-16 06:54:40.823-08', '3', 'Faridabad', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (73, '2023-01-16 06:56:00.912-08', '3', 'Amogh Verma', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (74, '2023-01-16 06:57:15.122-08', '6', 'Best Work', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (75, '2023-01-16 06:57:49.973-08', '6', 'Best Work - Amogh Verma', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (76, '2023-01-16 07:00:16.021-08', '4', 'Motion Graphics', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (77, '2023-01-16 07:00:19.48-08', '5', '2D Animation', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (78, '2023-01-16 07:01:28.742-08', '6', 'Films', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (79, '2023-01-16 07:01:34.661-08', '7', 'Web Series', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (80, '2023-01-16 07:01:45.037-08', '4', 'Mumbai', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (81, '2023-01-16 07:02:23.064-08', '4', 'Anand Tiwari', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (82, '2023-01-16 07:02:40.452-08', '7', 'Instagram - Anand Tiwari', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (83, '2023-01-16 07:04:11.127-08', '8', ' - Anand Tiwari', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (84, '2023-01-16 07:04:31.673-08', '8', 'Work-2 - Anand Tiwari', 2, '[{"changed": {"fields": ["Name"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (85, '2023-01-16 07:04:39.617-08', '7', 'Work-1 - Anand Tiwari', 2, '[{"changed": {"fields": ["Name", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (86, '2023-01-16 07:04:44.631-08', '7', 'Work-1 - Anand Tiwari', 2, '[{"changed": {"fields": ["Show in top feed"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (87, '2023-01-16 07:04:59.2-08', '7', 'Best Work - Anand Tiwari', 2, '[{"changed": {"fields": ["Name"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (88, '2023-01-16 07:05:17.172-08', '4', 'Anand Tiwari', 2, '[{"changed": {"fields": ["Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (89, '2023-01-16 07:06:02.279-08', '23', 'Singer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (90, '2023-01-16 07:06:30.488-08', '8', 'Rapper', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (91, '2023-01-16 07:06:45.919-08', '5', 'Uttarakhand', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (92, '2023-01-16 07:07:13.016-08', '5', 'Bella Officials', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (93, '2023-01-16 07:07:26.812-08', '9', 'Best Work - Bella Officials', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (94, '2023-01-16 07:07:51.982-08', '10', 'Work-1 - vatsal shukla', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (95, '2023-01-16 07:08:07.558-08', '11', 'Work3 - vatsal shukla', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (96, '2023-01-16 07:08:10.042-08', '5', 'Bella Officials', 2, '[{"changed": {"fields": ["Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (97, '2023-01-16 07:08:32.293-08', '12', 'Work 3 - Anand Tiwari', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (98, '2023-01-16 07:09:36.35-08', '9', 'Hiphop', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (99, '2023-01-16 07:09:59.047-08', '6', 'Chhatisgarh', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (100, '2023-01-16 07:10:15.757-08', '6', 'Shantanu', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (101, '2023-01-16 07:10:38.965-08', '13', 'Best work - vatsal shukla', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (102, '2023-01-16 07:11:32.917-08', '13', 'Best work - Shantanu', 2, '[{"changed": {"fields": ["Owner"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (103, '2023-01-16 07:11:58.707-08', '14', 'Work 2 - Shantanu', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (104, '2023-01-16 07:12:10.566-08', '15', 'Work 3 - Shantanu', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (105, '2023-01-16 07:12:19.326-08', '6', 'Shantanu', 2, '[{"changed": {"fields": ["Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (106, '2023-01-16 07:14:55.553-08', '10', 'Work-1 - Bella Officials', 2, '[{"changed": {"fields": ["Owner"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (107, '2023-01-16 07:16:17.234-08', '15', 'Work 3 - Shantanu', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (108, '2023-01-16 07:16:24.433-08', '14', 'Work 2 - Shantanu', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (109, '2023-01-16 07:16:28.213-08', '13', 'Best work - Shantanu', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (110, '2023-01-16 07:16:33.538-08', '12', 'Work 3 - Anand Tiwari', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (111, '2023-01-16 07:16:54.393-08', '11', 'Work3 - Bella Officials', 2, '[{"changed": {"fields": ["Owner", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (112, '2023-01-16 07:17:02.478-08', '11', 'Work 2 - Bella Officials', 2, '[{"changed": {"fields": ["Name"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (113, '2023-01-16 07:17:10.382-08', '10', 'Work-1 - Bella Officials', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (114, '2023-01-16 07:17:18.865-08', '9', 'Best Work - Bella Officials', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (115, '2023-01-16 07:18:37.572-08', '12', 'Work 3 - Anand Tiwari', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (116, '2023-01-16 07:18:57.216-08', '11', 'Work 2 - Bella Officials', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (117, '2023-01-16 07:19:16.132-08', '10', 'Work-1 - Bella Officials', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (118, '2023-01-16 07:19:20.744-08', '9', 'Best Work - Bella Officials', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (119, '2023-01-16 07:19:52.117-08', '8', 'Work-2 - Anand Tiwari', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (120, '2023-01-16 07:20:00.878-08', '7', 'Best Work - Anand Tiwari', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (121, '2023-01-16 07:20:20.613-08', '7', 'Best Work - Anand Tiwari', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (122, '2023-01-17 01:46:38.488-08', '10', 'Classical', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (123, '2023-01-17 01:47:00.399-08', '11', 'Western', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (124, '2023-01-17 01:47:03.023-08', '12', 'Sufi', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (125, '2023-01-17 01:47:07.102-08', '13', 'Indi Pop', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (126, '2023-01-17 01:47:09.255-08', '14', 'Rock', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (127, '2023-01-17 01:47:11.999-08', '15', 'Bollywood', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (128, '2023-01-17 01:47:15.703-08', '23', 'Singer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (129, '2023-01-17 01:47:38.598-08', '16', 'Videographer', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (130, '2023-01-17 01:47:42.645-08', '17', 'Video Edtor', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (131, '2023-01-17 01:47:46.598-08', '18', 'Line Producer', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (132, '2023-01-17 01:47:48.519-08', '19', 'Film', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (133, '2023-01-17 01:47:53.574-08', '20', 'Web Series', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (134, '2023-01-17 01:47:56.239-08', '21', 'Ad Shoots', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (135, '2023-01-17 01:48:00.277-08', '22', 'Reality Shows', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (136, '2023-01-17 01:48:05.215-08', '23', 'Music Videos', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (137, '2023-01-17 01:48:08.815-08', '24', 'Talk Shows', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (138, '2023-01-17 01:48:14.503-08', '25', 'Documentary', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (139, '2023-01-17 01:48:18.911-08', '26', 'Wildlife Film', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (140, '2023-01-17 01:48:23.991-08', '11', 'Video Producer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (141, '2023-01-17 01:48:46.167-08', '27', 'Frontend', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (142, '2023-01-17 01:48:48.676-08', '28', 'Backend''', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (143, '2023-01-17 01:48:56.122-08', '29', 'Fullstack', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (144, '2023-01-17 01:49:00.182-08', '30', 'UI / UX Designer', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (145, '2023-01-17 01:49:02.421-08', '31', 'HTML', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (146, '2023-01-17 01:49:04.351-08', '32', 'CSS', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (147, '2023-01-17 01:49:06.719-08', '33', 'Python', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (148, '2023-01-17 01:49:08.606-08', '34', 'Django', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (149, '2023-01-17 01:49:09.794-08', '3', 'Website Developer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (150, '2023-01-17 01:49:54.055-08', '35', 'Jazz & Blues', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (151, '2023-01-17 01:50:10.166-08', '36', 'Electronic', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (152, '2023-01-17 01:50:23.382-08', '37', 'Sound Engineer', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (153, '2023-01-17 01:50:27.566-08', '38', 'Devotional', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (154, '2023-01-17 01:50:31.486-08', '39', 'Motivational', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (155, '2023-01-17 01:50:35.967-08', '40', 'Flexible', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (156, '2023-01-17 01:50:45.007-08', '41', 'Orchestral', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (157, '2023-01-17 01:50:48.35-08', '42', 'Fusion', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (158, '2023-01-17 01:50:51.918-08', '43', 'Modern Classical', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (159, '2023-01-17 01:50:55.15-08', '44', 'Carnatic', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (160, '2023-01-17 01:50:56.776-08', '7', 'Music Producer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (161, '2023-01-17 01:51:22.372-08', '45', 'Micro (10k - 100k)', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (162, '2023-01-17 01:51:50.15-08', '46', 'Macro  (100k -  10M)', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (163, '2023-01-17 01:51:58.094-08', '47', 'Comedy', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (164, '2023-01-17 01:52:01.798-08', '48', 'Food', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (165, '2023-01-17 01:52:04.592-08', '49', 'Fashion', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (166, '2023-01-17 01:52:07.422-08', '50', 'Travel', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (167, '2023-01-17 01:52:10.306-08', '51', 'Tech', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (168, '2023-01-17 01:52:12.577-08', '52', 'GK', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (169, '2023-01-17 01:52:16.319-08', '53', 'Film Review', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (170, '2023-01-17 01:52:18.606-08', '54', 'Auto', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (171, '2023-01-17 01:52:21.67-08', '55', 'Social Cause', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (172, '2023-01-17 01:52:23.103-08', '12', 'Influencer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (173, '2023-01-17 01:52:38.19-08', '56', 'Lead Roles', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (174, '2023-01-17 01:52:41.974-08', '57', 'Character Roles', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (175, '2023-01-17 01:52:44.046-08', '58', 'Comic', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (176, '2023-01-17 01:52:57.973-08', '59', 'Villain', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (177, '2023-01-17 01:53:01.318-08', '60', 'Theatre', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (178, '2023-01-17 01:53:03.228-08', '5', 'Actor', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (179, '2023-01-17 01:53:17.006-08', '61', 'Soft Tone Male', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (180, '2023-01-17 01:53:20.863-08', '62', 'Soft Tone Female', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (181, '2023-01-17 01:53:26.814-08', '63', 'Heavy Tone Male', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (182, '2023-01-17 01:53:42.063-08', '64', 'Heavy Tone Female', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (183, '2023-01-17 01:53:47.007-08', '65', 'Celebrity', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (184, '2023-01-17 01:53:48.921-08', '4', 'Voice Over Artist', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (185, '2023-01-17 01:54:12.326-08', '66', 'Fictional', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (186, '2023-01-17 01:54:14.213-08', '67', 'Ads', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (187, '2023-01-17 01:54:23.252-08', '68', 'Lyricist', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (188, '2023-01-17 01:54:26.844-08', '6', 'Writer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (189, '2023-01-17 01:54:34.992-08', '68', 'Lyricist', 2, '[]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (190, '2023-01-17 01:54:47.158-08', '28', 'Backend', 2, '[{"changed": {"fields": ["Name"]}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (191, '2023-01-17 01:55:06.802-08', '69', 'Suspense', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (192, '2023-01-17 01:55:08.999-08', '70', 'Horror', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (193, '2023-01-17 01:55:11.07-08', '71', 'Action', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (194, '2023-01-17 01:55:12.638-08', '6', 'Writer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (195, '2023-01-17 01:55:33.462-08', '72', '2D Animation', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (196, '2023-01-17 01:55:36.173-08', '73', '3D animation', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (197, '2023-01-17 01:55:39.895-08', '74', 'Illustration', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (198, '2023-01-17 01:55:58.06-08', '75', 'Marketting Collatrals', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (199, '2023-01-17 01:56:02.822-08', '76', 'VFX', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (200, '2023-01-17 01:56:05.895-08', '77', 'Vector Art', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (201, '2023-01-17 01:56:09.109-08', '78', 'Motion Graphics', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (202, '2023-01-17 01:56:16.121-08', '15', 'Graphics Designer', 2, '[{"changed": {"fields": ["Name", "Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (203, '2023-01-17 01:56:27.694-08', '79', 'Lead Director', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (204, '2023-01-17 01:56:32.086-08', '80', 'Assistant Director', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (205, '2023-01-17 01:57:16.406-08', '81', 'short films', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (206, '2023-01-17 01:57:26.06-08', '82', 'Talk Shows', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (207, '2023-01-17 01:57:29.246-08', '83', 'Promo Videos', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (208, '2023-01-17 01:57:30.925-08', '10', 'Director', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (209, '2023-01-17 09:17:09.927-08', '221', 'Amogh Verma', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (210, '2023-01-17 09:17:24.197-08', '222', 'Amogh Verma', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (211, '2023-01-17 09:18:35.676-08', '223', 'Anand Tiwari', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (212, '2023-01-17 09:19:08.992-08', '224', 'bellaofficials', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (213, '2023-01-17 09:19:27.644-08', '225', 'Shantanu', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (214, '2023-01-17 09:19:56.499-08', '226', 'Harish (MC Uneek)', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (215, '2023-01-17 09:20:28.903-08', '227', 'Vasu Kainth', 2, '[{"changed": {"fields": ["Profile pic", "Budget range", "Am notes"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (216, '2023-01-17 09:21:01.323-08', '229', 'Mahendra Singh Khatri (UL Rapi Boy)', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (217, '2023-01-17 09:21:22.99-08', '230', 'Mohd Anash Ibraheem', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (218, '2023-01-17 09:21:53.815-08', '231', 'Shlok aka The Shloka', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (219, '2023-01-17 09:22:39.715-08', '232', 'Giftson Durai', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (220, '2023-01-17 09:23:49.537-08', '233', 'Shweta Gupta', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (221, '2023-01-17 09:27:22.305-08', '279', 'Amogh Verma', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (222, '2023-01-17 09:27:34.788-08', '280', 'Amogh Verma', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (223, '2023-01-17 09:27:44.376-08', '281', 'Anand Tiwari', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (224, '2023-01-17 09:27:57.706-08', '283', 'Shantanu', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (225, '2023-01-17 09:28:07.261-08', '284', 'Harish (MC Uneek)', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (226, '2023-01-17 09:28:29.538-08', '285', 'Vasu Kainth', 2, '[{"changed": {"fields": ["Profile pic", "Budget range", "Am notes"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (227, '2023-01-17 09:28:41.53-08', '287', 'Mahendra Singh Khatri (UL Rapi Boy)', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (228, '2023-01-17 09:29:23.574-08', '288', 'Mohd Anash Ibraheem', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (229, '2023-01-17 09:29:49.076-08', '289', 'Shlok aka The Shloka', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (230, '2023-01-17 09:30:07.244-08', '290', 'Giftson Durai', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (231, '2023-01-17 09:30:19.52-08', '291', 'Shweta Gupta', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (232, '2023-01-17 09:31:09.645-08', '293', 'Sanchit Bhatt', 2, '[{"changed": {"fields": ["Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (233, '2023-01-17 09:31:33.587-08', '295', 'Shruti Wagh', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (234, '2023-01-17 09:31:54.852-08', '296', 'Sheikh Naved', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (235, '2023-01-17 09:33:29.851-08', '298', 'Anushka Maheshwari', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (236, '2023-01-17 09:33:59.553-08', '299', 'Arjun Kanungo', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (237, '2023-01-17 09:34:25.603-08', '300', 'Abhilash Vashne', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (238, '2023-01-17 09:34:44.406-08', '299', 'Arjun Kanungo', 2, '[{"changed": {"fields": ["Profile pic"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (239, '2023-01-17 09:34:48.608-08', '301', 'Abhilash Vashney', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (240, '2023-01-17 09:35:23.361-08', '302', 'Souvik Chakraborty', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (317, '2023-01-17 10:19:15.383-08', '962', 'Rakshanda Khan -  - Work_ID 962', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (241, '2023-01-17 09:35:57.595-08', '303', 'Sananda Ghosh', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (242, '2023-01-17 09:36:21.643-08', '304', 'Shubham Gaur', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (243, '2023-01-17 09:41:06.185-08', '306', 'Ashish Ddavidd', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (244, '2023-01-17 09:44:31.02-08', '312', 'Sahil Vaid', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (245, '2023-01-17 09:46:42.197-08', '313', 'Hemang Sharma', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (246, '2023-01-17 09:47:09.302-08', '314', 'Nandkumar Menon', 2, '[{"changed": {"fields": ["Artist intro", "Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (247, '2023-01-17 09:48:07.984-08', '335', 'Sumit Kaul', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (248, '2023-01-17 09:48:42.857-08', '336', 'Shreyas Talpade', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (249, '2023-01-17 09:50:27.632-08', '154', 'Lead roles', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (250, '2023-01-17 09:50:32.815-08', '155', 'Character roles', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (251, '2023-01-17 09:50:36.831-08', '156', 'Comic', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (252, '2023-01-17 09:50:47.712-08', '157', 'Villain', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (253, '2023-01-17 09:50:52.671-08', '158', 'Theatre', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (254, '2023-01-17 09:50:53.625-08', '42', 'Actress', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (255, '2023-01-17 09:51:30.323-08', '40', 'Actor', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (256, '2023-01-17 09:51:36.899-08', '42', 'Actress', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (257, '2023-01-17 09:52:38.127-08', '159', 'Micro (10K -100K)', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (258, '2023-01-17 09:52:41.384-08', '160', 'Macro (100k- 10M)', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (259, '2023-01-17 09:52:48.104-08', '161', 'Comedy', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (260, '2023-01-17 09:52:57.2-08', '162', 'Food', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (261, '2023-01-17 09:53:02.423-08', '163', 'Fashion', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (262, '2023-01-17 09:53:07.288-08', '164', 'Travel', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (263, '2023-01-17 09:53:11.751-08', '165', 'Tech', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (264, '2023-01-17 09:53:19.392-08', '166', 'GK', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (265, '2023-01-17 09:53:25.855-08', '167', 'Film Review', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (266, '2023-01-17 09:53:29.44-08', '168', 'Auto', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (267, '2023-01-17 09:53:32.662-08', '169', 'Social Causes', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (268, '2023-01-17 09:53:33.434-08', '41', 'Influencer', 2, '[{"changed": {"fields": ["Name", "Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (269, '2023-01-17 09:53:46.611-08', '39', 'Voice Over Artist', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (270, '2023-01-17 09:54:01.59-08', '170', 'Heavy Tone Female', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (271, '2023-01-17 09:54:13.885-08', '39', 'Voice Over Artist', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (272, '2023-01-17 09:54:27.367-08', '171', 'Bollywood', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (273, '2023-01-17 09:54:43.515-08', '172', 'Indian Classical', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (274, '2023-01-17 09:54:52.257-08', '173', 'Jazz & Blues', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (275, '2023-01-17 09:54:56.801-08', '174', 'Sufi', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (276, '2023-01-17 09:55:00.39-08', '175', 'Electronic', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (277, '2023-01-17 09:55:03.944-08', '176', 'Sound Engineer', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (278, '2023-01-17 09:55:09.187-08', '177', 'Devotional', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (279, '2023-01-17 09:55:13.453-08', '178', 'Motivational', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (280, '2023-01-17 09:55:21.43-08', '179', 'Orchestral', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (281, '2023-01-17 09:55:25.231-08', '180', 'Fusion', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (282, '2023-01-17 09:55:28.718-08', '181', 'Modern Classical', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (283, '2023-01-17 09:55:32.438-08', '182', 'Carnatic', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (284, '2023-01-17 09:55:33.182-08', '38', 'Music producer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (285, '2023-01-17 09:55:45.806-08', '183', 'Fictional', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (286, '2023-01-17 09:55:52.238-08', '184', 'Ads', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (287, '2023-01-17 09:56:12.102-08', '185', 'Suspense', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (288, '2023-01-17 09:56:15.678-08', '186', 'Horror', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (289, '2023-01-17 09:56:19.848-08', '187', 'Action', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (290, '2023-01-17 09:56:21.044-08', '37', 'Writer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (291, '2023-01-17 09:56:59.364-08', '36', 'Writer', 2, '[{"changed": {"fields": ["Name", "Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (292, '2023-01-17 09:57:18.975-08', '188', 'Illustration', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (293, '2023-01-17 09:57:34.591-08', '189', 'VFX artist', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (294, '2023-01-17 09:57:39.398-08', '190', 'Vector art', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (295, '2023-01-17 09:57:42.412-08', '31', 'Graphic Designer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (296, '2023-01-17 09:58:11.528-08', '191', 'Western', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (297, '2023-01-17 09:58:18.343-08', '192', 'Indi Pop', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (298, '2023-01-17 09:58:32.096-08', '35', 'Singer', 2, '[{"changed": {"fields": ["Name", "Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (299, '2023-01-17 09:59:39.696-08', '34', 'Music Producer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (300, '2023-01-17 10:00:17.164-08', '33', 'Singer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (301, '2023-01-17 10:00:31.375-08', '193', 'Assistant Director', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (302, '2023-01-17 10:00:59.759-08', '194', 'promo videos', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (303, '2023-01-17 10:01:03.291-08', '32', 'Director', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (304, '2023-01-17 10:01:20.206-08', '195', 'Line Producer', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (305, '2023-01-17 10:01:51.542-08', '196', 'Wildlife Film', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (306, '2023-01-17 10:01:53.578-08', '30', 'Video Producer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (307, '2023-01-17 10:16:55.273-08', '972', 'Shreyas Talpade - Instagram Link - Work_ID 972', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (308, '2023-01-17 10:17:06.593-08', '971', 'Shreyas Talpade - Instagram Link - Work_ID 971', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (309, '2023-01-17 10:17:18.062-08', '970', 'Shreyas Talpade - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (310, '2023-01-17 10:17:44.168-08', '969', 'Sumit Kaul - Instagram Link - Work_ID 969', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (311, '2023-01-17 10:17:54.913-08', '968', 'Sumit Kaul - Instagram Link - Work_ID 968', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (312, '2023-01-17 10:18:05.072-08', '967', 'Sumit Kaul - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (313, '2023-01-17 10:18:16.602-08', '966', 'Raveena Ravi - Instagram Link - Work_ID 966', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (314, '2023-01-17 10:18:28.378-08', '965', 'Raveena Ravi - Instagram Link - Work_ID 965', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (315, '2023-01-17 10:18:37.568-08', '964', 'Raveena Ravi - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (316, '2023-01-17 10:19:10.268-08', '963', 'Rakshanda Khan -  - Work_ID 963', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (318, '2023-01-17 10:19:20.693-08', '961', 'Rakshanda Khan -  - Best Work ', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (319, '2023-01-17 10:19:31.767-08', '960', 'Prachi Saathi - Instagram Link - Work_ID 960', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (320, '2023-01-17 10:19:41.708-08', '959', 'Prachi Saathi - Instagram Link - Work_ID 959', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (321, '2023-01-17 10:19:54.223-08', '958', 'Prachi Saathi - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (322, '2023-01-17 10:20:17.462-08', '957', 'Mohan Kapur - Instagram Link - Work_ID 957', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (323, '2023-01-17 10:20:28.857-08', '956', 'Mohan Kapur - Instagram Link - Work_ID 956', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (324, '2023-01-17 10:20:38.107-08', '955', 'Mohan Kapur - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (325, '2023-01-17 10:20:47.547-08', '954', 'Manish Wadhwa - Instagram Link - Work_ID 954', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (326, '2023-01-17 10:20:53.094-08', '954', 'Manish Wadhwa - Instagram Link - Work_ID 954', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (327, '2023-01-17 10:21:08.213-08', '953', 'Manish Wadhwa - Instagram Link - Work_ID 953', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (328, '2023-01-17 10:21:16.904-08', '952', 'Manish Wadhwa - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (329, '2023-01-17 10:21:28.708-08', '951', 'Anuj Gurwara - Instagram Link - Work_ID 951', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (330, '2023-01-17 10:21:39.718-08', '950', 'Anuj Gurwara - Instagram Link - Work_ID 950', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (331, '2023-01-17 10:21:51.784-08', '949', 'Anuj Gurwara - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (332, '2023-01-17 10:22:04.839-08', '948', 'Manoj Sharma - Instagram Link - Work_ID 948', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (333, '2023-01-17 10:22:14.809-08', '947', 'Manoj Sharma - Instagram Link - Work_ID 947', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (334, '2023-01-17 10:22:25.703-08', '946', 'Manoj Sharma - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (335, '2023-01-17 10:22:34.823-08', '945', 'RJ Rajul - Instagram Link - Work_ID 945', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (336, '2023-01-17 10:22:43.984-08', '944', 'RJ Rajul - Instagram Link - Work_ID 944', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (337, '2023-01-17 10:22:52.519-08', '943', 'RJ Rajul - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (338, '2023-01-17 10:22:57.438-08', '943', 'RJ Rajul - Instagram Link - Best Work ', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (339, '2023-01-17 10:23:07.469-08', '942', 'Mansi Shah - Instagram Link - Work_ID 942', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (340, '2023-01-17 10:23:17.449-08', '941', 'Mansi Shah - Instagram Link - Work_ID 941', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (341, '2023-01-17 10:23:27.184-08', '940', 'Mansi Shah - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (342, '2023-01-17 10:23:40.623-08', '939', 'Carolyn - Instagram Link - Work_ID 939', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (343, '2023-01-17 10:23:49.189-08', '938', 'Carolyn - Instagram Link - Work_ID 938', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (344, '2023-01-17 10:23:59.589-08', '937', 'Carolyn - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (345, '2023-01-17 10:24:09.243-08', '936', 'Akansha Sharma -  - Work_ID 936', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (346, '2023-01-17 10:24:14.928-08', '936', 'Akansha Sharma - Instagram Link - Work_ID 936', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (347, '2023-01-17 10:24:26.609-08', '935', 'Akansha Sharma - Instagram Link - Work_ID 935', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (348, '2023-01-17 10:24:37.079-08', '934', 'Akansha Sharma - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (349, '2023-01-17 10:24:47.469-08', '933', 'Sonal Kaushal - Instagram Link - Work_ID 933', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (350, '2023-01-17 10:25:16.518-08', '799', 'Amogh Verma - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (351, '2023-01-17 10:25:22.594-08', '800', 'Amogh Verma -  - Work_ID 800', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (352, '2023-01-17 10:25:28.858-08', '801', 'Amogh Verma -  - Work_ID 801', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (353, '2023-01-17 10:25:43.109-08', '802', 'Amogh Verma - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (354, '2023-01-17 10:25:48.768-08', '803', 'Amogh Verma -  - Work_ID 803', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (355, '2023-01-17 10:25:56.734-08', '804', 'Amogh Verma -  - Work_ID 804', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (356, '2023-01-17 10:26:06.199-08', '805', 'Anand Tiwari - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (357, '2023-01-17 10:26:14.734-08', '806', 'Anand Tiwari - Instagram Link - Work_ID 806', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (358, '2023-01-17 10:26:24.404-08', '807', 'Anand Tiwari - Instagram Link - Work_ID 807', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (359, '2023-01-17 10:26:33.849-08', '808', 'bellaofficials - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (360, '2023-01-17 10:26:44.479-08', '809', 'bellaofficials - Instagram Link - Work_ID 809', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (361, '2023-01-17 10:26:52.818-08', '810', 'bellaofficials -  - Work_ID 810', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (362, '2023-01-17 10:26:57.939-08', '810', 'bellaofficials - Instagram Link - Work_ID 810', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (363, '2023-01-17 10:28:06.928-08', '805', 'Anand Tiwari - Instagram Link - Best Work ', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (364, '2023-01-17 10:28:16.383-08', '811', 'Shantanu - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (365, '2023-01-17 10:28:36.188-08', '812', 'Shantanu - Youtube Link - Work_ID 812', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (366, '2023-01-17 10:29:00.212-08', '282', 'bellaofficials', 2, '[{"changed": {"fields": ["Profile pic", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (367, '2023-01-17 10:29:43.353-08', '812', 'Shantanu - Youtube Link - Work_ID 812', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (368, '2023-01-17 10:29:58.868-08', '813', 'Shantanu - Youtube Link - Work_ID 813', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (369, '2023-01-17 10:30:22.729-08', '814', 'Harish (MC Uneek) - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (370, '2023-01-17 10:30:34.983-08', '815', 'Harish (MC Uneek) - Instagram Link - Work_ID 815', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (371, '2023-01-17 10:30:43.983-08', '816', 'Harish (MC Uneek) - Instagram Link - Work_ID 816', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (372, '2023-01-17 10:30:56.313-08', '817', 'Vasu Kainth - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (373, '2023-01-17 10:31:06.453-08', '818', 'Vasu Kainth - Instagram Link - Work_ID 818', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (374, '2023-01-17 10:31:12.693-08', '818', 'Vasu Kainth - Instagram Link - Work_ID 818', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (375, '2023-01-17 10:31:26.473-08', '819', 'Vasu Kainth - Instagram Link - Work_ID 819', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (376, '2023-01-17 10:31:35.958-08', '820', 'Subhodeep Dasgupta - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (377, '2023-01-17 10:31:45.653-08', '821', 'Subhodeep Dasgupta - Youtube Link - Work_ID 821', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (378, '2023-01-17 10:31:52.233-08', '822', 'Subhodeep Dasgupta - Youtube Link - Work_ID 822', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (379, '2023-01-17 10:32:08.593-08', '823', 'Mahendra Singh Khatri (UL Rapi Boy) - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (380, '2023-01-17 10:33:43.324-08', '826', 'Mohd Anash Ibraheem - Other Document - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (381, '2023-01-17 10:33:54.099-08', '827', 'Mohd Anash Ibraheem -  - Work_ID 827', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (382, '2023-01-17 10:34:00.833-08', '828', 'Mohd Anash Ibraheem -  - Work_ID 828', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (383, '2023-01-17 10:34:08.729-08', '829', 'Shlok aka The Shloka - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (384, '2023-01-17 10:34:15.884-08', '830', 'Shlok aka The Shloka - Youtube Link - Work_ID 830', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (385, '2023-01-17 10:34:27.024-08', '831', 'Shlok aka The Shloka - Youtube Link - Work_ID 831', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (386, '2023-01-17 10:34:33.419-08', '832', 'Giftson Durai - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (387, '2023-01-17 10:34:46.882-08', '833', 'Giftson Durai - Youtube Link - Work_ID 833', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (388, '2023-01-17 10:34:50.087-08', '834', 'Giftson Durai - Youtube Link - Work_ID 834', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (389, '2023-01-17 10:34:53.612-08', '835', 'Shweta Gupta - Other Document - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (390, '2023-01-17 10:35:02.997-08', '836', 'Shweta Gupta - Other Document - Work_ID 836', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (391, '2023-01-17 10:35:22.357-08', '837', 'Shweta Gupta - Other Document - Work_ID 837', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (392, '2023-01-17 10:35:25.922-08', '838', 'Ramiz B. - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (393, '2023-01-17 10:35:29.552-08', '839', 'Ramiz B. - Youtube Link - Work_ID 839', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (394, '2023-01-17 10:35:32.601-08', '840', 'Ramiz B. - Youtube Link - Work_ID 840', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (395, '2023-01-17 10:35:48.597-08', '841', 'Sanchit Bhatt - Other Document - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (396, '2023-01-17 10:35:58.662-08', '842', 'Sanchit Bhatt - Other Document - Work_ID 842', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (397, '2023-01-17 10:36:10.117-08', '843', 'Sanchit Bhatt - Other Document - Work_ID 843', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (398, '2023-01-17 10:36:15.857-08', '844', 'Sarvadnya Kulkarni - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (399, '2023-01-17 10:36:19.526-08', '845', 'Sarvadnya Kulkarni -  - Work_ID 845', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (400, '2023-01-17 10:36:22.316-08', '846', 'Sarvadnya Kulkarni -  - Work_ID 846', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (401, '2023-01-17 10:36:25.582-08', '847', 'Shruti Wagh - Other Document - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (402, '2023-01-17 10:36:51.629-08', '848', 'Shruti Wagh - Other Document - Work_ID 848', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (403, '2023-01-17 10:36:54.809-08', '849', 'Shruti Wagh - Other Document - Work_ID 849', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (404, '2023-01-17 10:36:57.689-08', '850', 'Sheikh Naved - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (405, '2023-01-17 10:37:00.699-08', '851', 'Sheikh Naved - Youtube Link - Work_ID 851', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (406, '2023-01-17 10:37:03.049-08', '852', 'Sheikh Naved - Youtube Link - Work_ID 852', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (407, '2023-01-17 10:37:11.034-08', '853', 'RJ Love Shah - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (408, '2023-01-17 10:37:16.884-08', '854', 'RJ Love Shah -  - Work_ID 854', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (409, '2023-01-17 10:37:22.249-08', '855', 'RJ Love Shah - Instagram Link - Work_ID 855', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (410, '2023-01-17 10:37:33.378-08', '854', 'RJ Love Shah - Instagram Link - Work_ID 854', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (411, '2023-01-17 10:37:43.804-08', '857', 'Anushka Maheshwari - Instagram Link - Work_ID 857', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (412, '2023-01-17 10:37:50.509-08', '856', 'Anushka Maheshwari - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (413, '2023-01-17 10:38:11.429-08', '858', 'Anushka Maheshwari - Instagram Link - Work_ID 858', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (414, '2023-01-17 10:38:23.129-08', '859', 'Arjun Kanungo - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (415, '2023-01-17 10:38:32.099-08', '860', 'Arjun Kanungo - Instagram Link - Work_ID 860', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (416, '2023-01-17 10:38:41.749-08', '861', 'Arjun Kanungo - Instagram Link - Work_ID 861', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (417, '2023-01-17 10:38:51.044-08', '862', 'Abhilash Vashne - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (418, '2023-01-17 10:38:54.074-08', '863', 'Abhilash Vashne -  - Work_ID 863', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (419, '2023-01-17 10:38:56.118-08', '864', 'Abhilash Vashne -  - Work_ID 864', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (420, '2023-01-17 10:39:12.917-08', '865', 'Abhilash Vashney -  - Best Work ', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (421, '2023-01-17 10:39:15.277-08', '866', 'Abhilash Vashney -  - Work_ID 866', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (422, '2023-01-17 10:39:17.867-08', '867', 'Abhilash Vashney -  - Work_ID 867', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (423, '2023-01-17 10:39:32.204-08', '869', 'Souvik Chakraborty - Other Document - Work_ID 869', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (424, '2023-01-17 10:40:19.097-08', '870', 'Souvik Chakraborty - Other Document - Work_ID 870', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (425, '2023-01-17 10:40:23.898-08', '871', 'Sananda Ghosh - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (426, '2023-01-17 10:40:26.667-08', '872', 'Sananda Ghosh - Youtube Link - Work_ID 872', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (427, '2023-01-17 10:40:29.368-08', '873', 'Sananda Ghosh - Youtube Link - Work_ID 873', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (428, '2023-01-17 10:40:31.857-08', '874', 'Shubham Gaur - Other Document - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (429, '2023-01-17 10:40:44.667-08', '875', 'Shubham Gaur - Other Document - Work_ID 875', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (594, '2023-01-17 11:15:21.43-08', '44', '3D Animation Artist', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (430, '2023-01-17 10:40:47.498-08', '876', 'Shubham Gaur - Other Document - Work_ID 876', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (431, '2023-01-17 10:40:50.737-08', '877', 'Mahrukh Ali Ansari - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (432, '2023-01-17 10:40:53.637-08', '878', 'Mahrukh Ali Ansari - Youtube Link - Work_ID 878', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (433, '2023-01-17 10:40:56.927-08', '879', 'Mahrukh Ali Ansari -  - Work_ID 879', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (434, '2023-01-17 10:41:01.348-08', '880', 'Ashish Ddavidd - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (435, '2023-01-17 10:41:13.882-08', '881', 'Ashish Ddavidd - Youtube Link - Work_ID 881', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (436, '2023-01-17 10:41:17.618-08', '882', 'Ashish Ddavidd - Youtube Link - Work_ID 882', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (437, '2023-01-17 10:41:24.838-08', '883', 'Wajahat Hasan - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (438, '2023-01-17 10:41:31.573-08', '884', 'Wajahat Hasan - Instagram Link - Work_ID 884', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (439, '2023-01-17 10:41:37.253-08', '885', 'Wajahat Hasan - Instagram Link - Work_ID 885', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (440, '2023-01-17 10:41:47.888-08', '886', 'Nikhil Lalwani - Other Document - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (441, '2023-01-17 10:41:51.198-08', '887', 'Nikhil Lalwani - Other Document - Work_ID 887', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (442, '2023-01-17 10:41:54.238-08', '888', 'Nikhil Lalwani - Other Document - Work_ID 888', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (443, '2023-01-17 10:41:54.683-08', '888', 'Nikhil Lalwani - Other Document - Work_ID 888', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (444, '2023-01-17 10:42:03.744-08', '889', 'Ashish Singh - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (445, '2023-01-17 10:42:15.394-08', '890', 'Ashish Singh - Instagram Link - Work_ID 890', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (446, '2023-01-17 10:42:32.313-08', '891', 'Ashish Singh - Instagram Link - Work_ID 891', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (447, '2023-01-17 10:42:35.349-08', '892', 'Prasanna V. - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (448, '2023-01-17 10:42:37.953-08', '893', 'Prasanna V. - Youtube Link - Work_ID 893', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (449, '2023-01-17 10:42:40.388-08', '894', 'Prasanna V. - Youtube Link - Work_ID 894', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (450, '2023-01-17 10:42:42.753-08', '895', 'Adarsh Anand - Youtube Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (451, '2023-01-17 10:42:45.483-08', '896', 'Adarsh Anand - Instagram Link - Work_ID 896', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (452, '2023-01-17 10:42:55.329-08', '897', 'Adarsh Anand - Youtube Link - Work_ID 897', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (453, '2023-01-17 10:43:01.384-08', '898', 'Sahil Vaid - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (454, '2023-01-17 10:43:10.434-08', '898', 'Sahil Vaid - Instagram Link - Best Work ', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (455, '2023-01-17 10:43:16.878-08', '899', 'Sahil Vaid - Instagram Link - Work_ID 899', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (456, '2023-01-17 10:43:23.594-08', '900', 'Sahil Vaid - Instagram Link - Work_ID 900', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (457, '2023-01-17 10:43:38.594-08', '901', 'Hemang Sharma - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (458, '2023-01-17 10:43:46.033-08', '902', 'Hemang Sharma - Instagram Link - Work_ID 902', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (459, '2023-01-17 10:43:54.123-08', '903', 'Hemang Sharma -  - Work_ID 903', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (460, '2023-01-17 10:44:25.313-08', '904', 'Nandkumar Menon - Soundcloud Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (461, '2023-01-17 10:44:37.133-08', '905', 'Nandkumar Menon - Soundcloud Link - Work_ID 905', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (462, '2023-01-17 10:44:43.203-08', '906', 'Nandkumar Menon - Soundcloud Link - Work_ID 906', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (463, '2023-01-17 10:44:58.363-08', '907', 'Melodee Austin - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (464, '2023-01-17 10:45:02.578-08', '908', 'Melodee Austin - Instagram Link - Work_ID 908', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (465, '2023-01-17 10:45:06.913-08', '909', 'Melodee Austin - Instagram Link - Work_ID 909', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (466, '2023-01-17 10:45:13.633-08', '910', 'Nitin Jai Singh - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (467, '2023-01-17 10:45:20.888-08', '911', 'Nitin Jai Singh - Instagram Link - Work_ID 911', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (468, '2023-01-17 10:45:27.112-08', '912', 'Nitin Jai Singh - Instagram Link - Work_ID 912', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (469, '2023-01-17 10:45:35.198-08', '913', 'Tanya Nambiar - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (470, '2023-01-17 10:45:54.778-08', '914', 'Tanya Nambiar - Instagram Link - Work_ID 914', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (471, '2023-01-17 10:46:01.688-08', '915', 'Tanya Nambiar - Instagram Link - Work_ID 915', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (472, '2023-01-17 10:46:07.088-08', '916', 'Dj Adi - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (473, '2023-01-17 10:46:13.028-08', '917', 'Dj Adi - Instagram Link - Work_ID 917', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (474, '2023-01-17 10:46:18.662-08', '918', 'Dj Adi - Instagram Link - Work_ID 918', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (475, '2023-01-17 10:46:24.917-08', '919', 'Chinmayi Sripada - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (476, '2023-01-17 10:46:30.637-08', '920', 'Chinmayi Sripada - Instagram Link - Work_ID 920', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (477, '2023-01-17 10:46:48.257-08', '921', 'Chinmayi Sripada - Instagram Link - Work_ID 921', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (478, '2023-01-17 10:46:55.258-08', '920', 'Chinmayi Sripada - Instagram Link - Work_ID 920', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (479, '2023-01-17 10:47:09.398-08', '916', 'Dj Adi - Instagram Link - Best Work ', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (480, '2023-01-17 10:47:36.864-08', '922', 'Sanket Mhatre - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (481, '2023-01-17 10:47:44.689-08', '923', 'Sanket Mhatre - Instagram Link - Work_ID 923', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (482, '2023-01-17 10:47:51.374-08', '924', 'Sanket Mhatre - Instagram Link - Work_ID 924', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (483, '2023-01-17 10:47:57.454-08', '925', 'Darrpan - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (484, '2023-01-17 10:48:05.524-08', '926', 'Darrpan - Instagram Link - Work_ID 926', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (485, '2023-01-17 10:48:12.444-08', '927', 'Darrpan - Instagram Link - Work_ID 927', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (486, '2023-01-17 10:48:18.719-08', '928', 'Rajesh Kava - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (487, '2023-01-17 10:48:25.899-08', '929', 'Rajesh Kava - Instagram Link - Work_ID 929', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (488, '2023-01-17 10:48:32.169-08', '930', 'Rajesh Kava - Instagram Link - Work_ID 930', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (489, '2023-01-17 10:48:37.434-08', '931', 'Sonal Kaushal - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (490, '2023-01-17 10:48:42.574-08', '932', 'Sonal Kaushal - Instagram Link - Work_ID 932', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (491, '2023-01-17 10:48:52.984-08', '932', 'Sonal Kaushal - Instagram Link - Work_ID 932', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (492, '2023-01-17 10:55:08.11-08', '808', 'bellaofficials - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (493, '2023-01-17 10:55:31.181-08', '805', 'Anand Tiwari - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (494, '2023-01-17 10:55:41.977-08', '806', 'Anand Tiwari - Instagram Link - Work_ID 806', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (495, '2023-01-17 10:55:44.131-08', '807', 'Anand Tiwari - Instagram Link - Work_ID 807', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (496, '2023-01-17 10:55:48.116-08', '809', 'bellaofficials - Instagram Link - Work_ID 809', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (497, '2023-01-17 10:55:51.456-08', '810', 'bellaofficials - Instagram Link - Work_ID 810', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (498, '2023-01-17 10:55:56.366-08', '809', 'bellaofficials - Instagram Link - Work_ID 809', 2, '[]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (499, '2023-01-17 10:56:15.201-08', '814', 'Harish (MC Uneek) - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (500, '2023-01-17 10:56:16.816-08', '815', 'Harish (MC Uneek) - Instagram Link - Work_ID 815', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (501, '2023-01-17 10:56:19.116-08', '816', 'Harish (MC Uneek) - Instagram Link - Work_ID 816', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (502, '2023-01-17 10:56:21.266-08', '817', 'Vasu Kainth - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (503, '2023-01-17 10:56:23.206-08', '818', 'Vasu Kainth - Instagram Link - Work_ID 818', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (504, '2023-01-17 10:56:25.506-08', '819', 'Vasu Kainth - Instagram Link - Work_ID 819', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (505, '2023-01-17 10:56:43.636-08', '824', 'Mahendra Singh Khatri (UL Rapi Boy) - Instagram Link - Work_ID 824', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (506, '2023-01-17 10:56:48.566-08', '825', 'Mahendra Singh Khatri (UL Rapi Boy) - Youtube Link - Work_ID 825', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (507, '2023-01-17 10:57:11.056-08', '853', 'RJ Love Shah - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (508, '2023-01-17 10:57:13.236-08', '854', 'RJ Love Shah - Instagram Link - Work_ID 854', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (509, '2023-01-17 10:57:15.993-08', '855', 'RJ Love Shah - Instagram Link - Work_ID 855', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (510, '2023-01-17 10:57:18.284-08', '856', 'Anushka Maheshwari - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (511, '2023-01-17 10:57:21.944-08', '857', 'Anushka Maheshwari - Instagram Link - Work_ID 857', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (512, '2023-01-17 10:57:24.534-08', '858', 'Anushka Maheshwari - Instagram Link - Work_ID 858', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (513, '2023-01-17 10:57:27.359-08', '859', 'Arjun Kanungo - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (514, '2023-01-17 10:57:29.794-08', '860', 'Arjun Kanungo - Instagram Link - Work_ID 860', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (515, '2023-01-17 10:57:32.464-08', '861', 'Arjun Kanungo - Instagram Link - Work_ID 861', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (516, '2023-01-17 10:57:36.394-08', '862', 'Abhilash Vashne - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (517, '2023-01-17 10:58:07.954-08', '972', 'Shreyas Talpade - Instagram Link - Work_ID 972', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (518, '2023-01-17 10:58:10.504-08', '971', 'Shreyas Talpade - Instagram Link - Work_ID 971', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (519, '2023-01-17 10:58:12.972-08', '970', 'Shreyas Talpade - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (520, '2023-01-17 10:58:15.561-08', '969', 'Sumit Kaul - Instagram Link - Work_ID 969', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (521, '2023-01-17 10:58:18.151-08', '968', 'Sumit Kaul - Instagram Link - Work_ID 968', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (522, '2023-01-17 10:58:20.292-08', '967', 'Sumit Kaul - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (523, '2023-01-17 10:58:22.557-08', '966', 'Raveena Ravi - Instagram Link - Work_ID 966', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (524, '2023-01-17 10:58:24.796-08', '965', 'Raveena Ravi - Instagram Link - Work_ID 965', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (525, '2023-01-17 10:58:27.107-08', '964', 'Raveena Ravi - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (526, '2023-01-17 10:58:30.462-08', '960', 'Prachi Saathi - Instagram Link - Work_ID 960', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (527, '2023-01-17 10:58:47.597-08', '959', 'Prachi Saathi - Instagram Link - Work_ID 959', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (528, '2023-01-17 10:58:49.858-08', '958', 'Prachi Saathi - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (529, '2023-01-17 10:58:52.507-08', '957', 'Mohan Kapur - Instagram Link - Work_ID 957', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (530, '2023-01-17 10:58:56.108-08', '956', 'Mohan Kapur - Instagram Link - Work_ID 956', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (531, '2023-01-17 10:58:58.477-08', '955', 'Mohan Kapur - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (532, '2023-01-17 10:59:00.837-08', '954', 'Manish Wadhwa - Instagram Link - Work_ID 954', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (533, '2023-01-17 10:59:02.892-08', '953', 'Manish Wadhwa - Instagram Link - Work_ID 953', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (534, '2023-01-17 10:59:04.968-08', '952', 'Manish Wadhwa - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (535, '2023-01-17 10:59:07.357-08', '951', 'Anuj Gurwara - Instagram Link - Work_ID 951', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (536, '2023-01-17 10:59:09.897-08', '950', 'Anuj Gurwara - Instagram Link - Work_ID 950', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (537, '2023-01-17 10:59:12.848-08', '949', 'Anuj Gurwara - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (595, '2023-01-17 11:15:23.044-08', '6', 'Artwork', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (538, '2023-01-17 10:59:14.867-08', '948', 'Manoj Sharma - Instagram Link - Work_ID 948', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (539, '2023-01-17 10:59:42.663-08', '947', 'Manoj Sharma - Instagram Link - Work_ID 947', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (540, '2023-01-17 10:59:45.408-08', '946', 'Manoj Sharma - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (541, '2023-01-17 10:59:48.008-08', '945', 'RJ Rajul - Instagram Link - Work_ID 945', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (542, '2023-01-17 10:59:50.368-08', '944', 'RJ Rajul - Instagram Link - Work_ID 944', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (543, '2023-01-17 10:59:52.658-08', '943', 'RJ Rajul - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (544, '2023-01-17 10:59:54.803-08', '942', 'Mansi Shah - Instagram Link - Work_ID 942', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (545, '2023-01-17 10:59:56.863-08', '941', 'Mansi Shah - Instagram Link - Work_ID 941', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (546, '2023-01-17 11:00:01.298-08', '940', 'Mansi Shah - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (547, '2023-01-17 11:00:03.648-08', '939', 'Carolyn - Instagram Link - Work_ID 939', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (548, '2023-01-17 11:00:05.908-08', '938', 'Carolyn - Instagram Link - Work_ID 938', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (549, '2023-01-17 11:00:09.008-08', '937', 'Carolyn - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (550, '2023-01-17 11:00:11.788-08', '936', 'Akansha Sharma - Instagram Link - Work_ID 936', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (551, '2023-01-17 11:00:14.248-08', '935', 'Akansha Sharma - Instagram Link - Work_ID 935', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (552, '2023-01-17 11:00:17.819-08', '934', 'Akansha Sharma - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (553, '2023-01-17 11:00:41.738-08', '933', 'Sonal Kaushal - Instagram Link - Work_ID 933', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (554, '2023-01-17 11:00:43.918-08', '932', 'Sonal Kaushal - Instagram Link - Work_ID 932', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (555, '2023-01-17 11:00:47.143-08', '931', 'Sonal Kaushal - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (556, '2023-01-17 11:00:50.743-08', '930', 'Rajesh Kava - Instagram Link - Work_ID 930', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (557, '2023-01-17 11:00:53.543-08', '929', 'Rajesh Kava - Instagram Link - Work_ID 929', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (558, '2023-01-17 11:00:55.498-08', '928', 'Rajesh Kava - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (559, '2023-01-17 11:00:58.704-08', '927', 'Darrpan - Instagram Link - Work_ID 927', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (560, '2023-01-17 11:01:00.958-08', '926', 'Darrpan - Instagram Link - Work_ID 926', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (561, '2023-01-17 11:01:03.238-08', '925', 'Darrpan - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (562, '2023-01-17 11:01:05.598-08', '924', 'Sanket Mhatre - Instagram Link - Work_ID 924', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (563, '2023-01-17 11:01:07.723-08', '923', 'Sanket Mhatre - Instagram Link - Work_ID 923', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (564, '2023-01-17 11:01:10.668-08', '922', 'Sanket Mhatre - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (565, '2023-01-17 11:01:13.358-08', '921', 'Chinmayi Sripada - Instagram Link - Work_ID 921', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (566, '2023-01-17 11:01:16.189-08', '920', 'Chinmayi Sripada - Instagram Link - Work_ID 920', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (567, '2023-01-17 11:01:19.268-08', '919', 'Chinmayi Sripada - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (568, '2023-01-17 11:01:21.348-08', '918', 'Dj Adi - Instagram Link - Work_ID 918', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (569, '2023-01-17 11:01:45.648-08', '917', 'Dj Adi - Instagram Link - Work_ID 917', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (570, '2023-01-17 11:02:01.244-08', '916', 'Dj Adi - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (571, '2023-01-17 11:02:03.394-08', '915', 'Tanya Nambiar - Instagram Link - Work_ID 915', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (572, '2023-01-17 11:02:05.984-08', '914', 'Tanya Nambiar - Instagram Link - Work_ID 914', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (573, '2023-01-17 11:02:08.283-08', '913', 'Tanya Nambiar - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (574, '2023-01-17 11:02:10.703-08', '912', 'Nitin Jai Singh - Instagram Link - Work_ID 912', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (575, '2023-01-17 11:02:12.638-08', '911', 'Nitin Jai Singh - Instagram Link - Work_ID 911', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (576, '2023-01-17 11:02:14.754-08', '910', 'Nitin Jai Singh - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (577, '2023-01-17 11:02:17.104-08', '909', 'Melodee Austin - Instagram Link - Work_ID 909', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (578, '2023-01-17 11:02:18.914-08', '908', 'Melodee Austin - Instagram Link - Work_ID 908', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (579, '2023-01-17 11:02:21.508-08', '907', 'Melodee Austin - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (580, '2023-01-17 11:02:35.918-08', '903', 'Hemang Sharma - Instagram Link - Work_ID 903', 2, '[{"changed": {"fields": ["Demo type", "Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (581, '2023-01-17 11:02:37.898-08', '902', 'Hemang Sharma - Instagram Link - Work_ID 902', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (582, '2023-01-17 11:02:40.323-08', '901', 'Hemang Sharma - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (583, '2023-01-17 11:02:47.769-08', '900', 'Sahil Vaid - Instagram Link - Work_ID 900', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (584, '2023-01-17 11:02:49.763-08', '899', 'Sahil Vaid - Instagram Link - Work_ID 899', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (585, '2023-01-17 11:02:51.664-08', '898', 'Sahil Vaid - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (586, '2023-01-17 11:02:58.918-08', '896', 'Adarsh Anand - Youtube Link - Work_ID 896', 2, '[{"changed": {"fields": ["Demo type"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (587, '2023-01-17 11:03:07.783-08', '891', 'Ashish Singh - Instagram Link - Work_ID 891', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (588, '2023-01-17 11:03:10.649-08', '890', 'Ashish Singh - Instagram Link - Work_ID 890', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (589, '2023-01-17 11:03:13.177-08', '889', 'Ashish Singh - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (590, '2023-01-17 11:03:22.387-08', '885', 'Wajahat Hasan - Instagram Link - Work_ID 885', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (591, '2023-01-17 11:03:24.756-08', '884', 'Wajahat Hasan - Instagram Link - Work_ID 884', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (592, '2023-01-17 11:03:27.247-08', '883', 'Wajahat Hasan - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Weblink"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (593, '2023-01-17 11:15:09.27-08', '43', '2D animation Artist', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (596, '2023-01-17 11:15:59.221-08', '45', 'Anchor', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (597, '2023-01-17 11:16:35.533-08', '46', 'Video Editor', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (598, '2023-01-17 11:17:08.799-08', '1', 'Chat Show', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (599, '2023-01-17 11:17:53.202-08', '2', 'Documentary', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (600, '2023-01-17 11:18:39.232-08', '4', 'Fiction & Reality', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (601, '2023-01-17 11:19:12.448-08', '3', 'Musical', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (602, '2023-01-17 11:19:50.557-08', '197', 'Frontend', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (603, '2023-01-17 11:19:52.693-08', '198', 'Backend', 1, '[{"added": {}}]', 21, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (604, '2023-01-17 11:19:54.001-08', '47', 'Website Developer', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (605, '2023-01-17 11:20:02.037-08', '5', 'Web3 solutions', 2, '[{"changed": {"fields": ["Skills"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (606, '2023-01-18 07:07:28.233-08', '1', '1df2d3a9b8875ecf5b2c3587bd81e72d67582c5e', 1, '[{"added": {}}]', 18, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (607, '2023-01-18 07:09:16.82-08', '1', 'Project object (1)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (608, '2023-01-18 07:16:25.198-08', '1', 'admin-- Project--Lead', 2, '[{"changed": {"fields": ["Project template"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (609, '2023-01-18 07:17:41.17-08', '1', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (610, '2023-01-18 07:34:52.041-08', '3', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (611, '2023-01-18 09:12:55.205-08', '12', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (612, '2023-01-18 09:12:55.21-08', '11', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (613, '2023-01-18 09:12:55.215-08', '10', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (614, '2023-01-18 09:12:55.219-08', '9', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (615, '2023-01-18 09:12:55.224-08', '8', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (616, '2023-01-18 09:12:55.228-08', '7', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (617, '2023-01-18 09:12:55.232-08', '6', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (618, '2023-01-18 09:12:55.236-08', '5', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (619, '2023-01-18 09:12:55.24-08', '4', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (620, '2023-01-18 09:42:31.664-08', '13', 'admin-- Project--Lead', 3, '', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (621, '2023-01-18 09:45:34.916-08', '337', 'Manoj Muntashir Shukla', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (622, '2023-01-18 09:46:03.55-08', '37', 'Writer', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (623, '2023-01-18 09:46:17.39-08', '38', 'Music producer', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (624, '2023-01-18 09:46:17.395-08', '35', 'Singer', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (625, '2023-01-18 09:47:03.538-08', '973', 'Amogh Verma - Instagram Link - Best Work ', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (626, '2023-01-18 09:47:15.779-08', '973', 'Manoj Muntashir Shukla - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Owner"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (627, '2023-01-18 09:47:52.499-08', '337', 'Manoj Muntashir Shukla', 2, '[{"changed": {"fields": ["Skill", "Genre", "Languages", "Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (628, '2023-01-18 09:48:13.656-08', '974', 'Manoj Muntashir Shukla - Instagram Link - Work_ID 974', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (629, '2023-01-18 09:48:32.596-08', '975', 'Manoj Muntashir Shukla - Instagram Link - Work_ID 975', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (630, '2023-01-18 09:48:34.824-08', '337', 'Manoj Muntashir Shukla', 2, '[{"changed": {"fields": ["Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (631, '2023-01-18 09:49:45.611-08', '338', 'Maseera Khan', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (632, '2023-01-18 09:50:01.471-08', '976', 'Maseera Khan - Youtube Link - Best Work ', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (633, '2023-01-18 09:50:10.876-08', '977', 'Maseera Khan - Youtube Link - Work_ID 977', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (634, '2023-01-18 09:50:23.326-08', '978', 'Maseera Khan - Youtube Link - Work_ID 978', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (635, '2023-01-18 09:50:25.324-08', '338', 'Maseera Khan', 2, '[{"changed": {"fields": ["Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (636, '2023-01-18 09:51:21.729-08', '339', 'Megha Sukhija', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (637, '2023-01-18 09:51:55.416-08', '979', 'Amogh Verma - Instagram Link - Best Work ', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (638, '2023-01-18 09:52:10.846-08', '980', 'Megha Sukhija - Instagram Link - Work_ID 980', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (639, '2023-01-18 09:52:28.501-08', '981', 'Megha Sukhija - Instagram Link - Work_ID 981', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (640, '2023-01-18 09:52:37.467-08', '339', 'Megha Sukhija', 2, '[{"changed": {"fields": ["Profile pic", "Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (641, '2023-01-18 09:52:43.726-08', '979', 'Megha Sukhija - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Owner"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (642, '2023-01-18 09:54:37.5-08', '340', 'Azeem Banatwalla', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (643, '2023-01-18 09:55:00.589-08', '982', 'Azeem Banatwalla - Instagram Link - Work_ID 982', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (644, '2023-01-18 09:55:14.498-08', '983', 'Amogh Verma - Instagram Link - Work_ID 983', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (645, '2023-01-18 09:55:34.118-08', '984', 'Azeem Banatwalla - Instagram Link - Work_ID 984', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (646, '2023-01-18 09:55:41.304-08', '983', 'Azeem Banatwalla - Instagram Link - Work_ID 983', 2, '[{"changed": {"fields": ["Owner"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (647, '2023-01-18 09:55:44.688-08', '982', 'Azeem Banatwalla - Instagram Link - Best Work ', 2, '[{"changed": {"fields": ["Show in top feed"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (648, '2023-01-18 09:56:42.177-08', '341', 'Aditi Mitall', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (649, '2023-01-18 09:57:08.704-08', '985', 'Aditi Mitall - Instagram Link - Best Work ', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (650, '2023-01-18 09:57:23.078-08', '986', 'Aditi Mitall - Instagram Link - Work_ID 986', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (651, '2023-01-18 09:57:45.004-08', '987', 'Amogh Verma - Instagram Link - Work_ID 987', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (652, '2023-01-18 09:57:53.75-08', '341', 'Aditi Mitall', 2, '[{"changed": {"fields": ["Works links"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (653, '2023-01-18 23:18:22.494-08', '19', 'admin-- Project--DreamProject', 2, '[{"changed": {"fields": ["Stage"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (654, '2023-01-18 23:18:29.339-08', '14', 'admin-- Project--DreamProject', 2, '[{"changed": {"fields": ["Stage"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (655, '2023-01-19 05:53:57.698-08', '48', '', 3, '', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (656, '2023-01-19 21:38:15.908-08', '341', 'Aditi Mitall', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (657, '2023-01-19 21:38:24.621-08', '340', 'Azeem Banatwalla', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (658, '2023-01-19 21:40:16.293-08', '341', 'Aditi Mitall', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (659, '2023-01-19 21:40:34.061-08', '340', 'Azeem Banatwalla', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (660, '2023-01-19 21:41:31.46-08', '334', 'Raveena Ravi', 2, '[{"changed": {"fields": ["Skill", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (661, '2023-01-19 21:42:32.005-08', '303', 'Sananda Ghosh', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (662, '2023-01-19 21:44:32.944-08', '326', 'Mansi Shah', 2, '[{"changed": {"fields": ["Skill", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (663, '2023-01-19 21:44:43.19-08', '331', 'Mohan Kapur', 2, '[{"changed": {"fields": ["Artist intro", "Skill", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (664, '2023-01-19 21:45:08.283-08', '293', 'Sanchit Bhatt', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (665, '2023-01-19 21:46:26.22-08', '279', 'Amogh Verma', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (666, '2023-01-19 21:47:25.207-08', '841', 'Sanchit Bhatt - Other Document - Work_ID 841', 2, '[{"changed": {"fields": ["Show in top feed"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (667, '2023-01-19 21:48:08.714-08', '280', 'Amogh Verma', 2, '[{"changed": {"fields": ["Skill"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (668, '2023-01-19 21:48:36.78-08', '286', 'Subhodeep Dasgupta', 2, '[{"changed": {"fields": ["Skill", "Budget range"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (669, '2023-01-20 02:20:27.307-08', '19', 'admin-- Project--DreamProject', 2, '[{"changed": {"fields": ["Brief"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (670, '2023-01-20 02:20:37.202-08', '14', 'admin-- Project--DreamProject', 2, '[{"changed": {"fields": ["Brief"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (671, '2023-01-20 09:13:43.311-08', '1', 'admin', 2, '[{"changed": {"fields": ["Recommended artists"]}}]', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (672, '2023-01-27 05:58:46.238-08', '27', 'admin-- Project--Lead', 2, '[{"changed": {"fields": ["Brief"]}}]', 7, 2);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (673, '2023-01-27 10:44:23.562-08', '2', '2908f1845c4bf506690c301ed4af5cd16d601440', 1, '[{"added": {}}]', 18, 2);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (674, '2023-02-27 06:02:41.727-08', '47', 'Website Developer', 2, '[{"changed": {"fields": ["Genres"]}}]', 14, 3);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (675, '2023-03-09 01:41:20.621-08', '1', 'Client', 2, '[{"changed": {"fields": ["User"]}}]', 23, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (676, '2023-03-09 01:59:13.121-08', '1', 'Client', 2, '[]', 23, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (677, '2023-03-09 01:59:18.708-08', '2', 'Client', 1, '[{"added": {}}]', 23, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (678, '2023-03-09 01:59:25.667-08', '3', 'Client', 1, '[{"added": {}}]', 23, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (679, '2023-03-09 02:53:15.603-08', '15', 'admin42257@gmail.com c15 u15', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (680, '2023-03-09 02:53:15.616-08', '14', 'admin457@gmail.com c14 u14', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (681, '2023-03-09 03:53:33.466-08', '29', 'admin5508917@gmail.com c29 u29', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (682, '2023-03-09 03:53:33.473-08', '28', 'admin545508917@gmail.com c28 u28', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (683, '2023-03-09 03:53:33.476-08', '27', 'admin54558917@gmail.com c27 u27', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (684, '2023-03-09 03:53:33.48-08', '26', 'admin548917@gmail.com c26 u26', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (685, '2023-03-09 03:53:33.484-08', '25', 'admin54817@gmail.com c25 u25', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (686, '2023-03-09 03:53:33.488-08', '24', 'admin00117@gmail.com c24 u24', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (687, '2023-03-09 03:53:33.494-08', '23', 'admin00015547@gmail.com c23 u23', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (688, '2023-03-09 03:53:33.499-08', '22', 'admin0015547@gmail.com c22 u22', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (689, '2023-03-09 03:53:33.503-08', '21', 'admin00157@gmail.com c21 u21', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (690, '2023-03-09 03:53:33.507-08', '20', 'admin11454157@gmail.com c20 u20', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (691, '2023-03-09 03:53:33.511-08', '19', 'admin1145157@gmail.com c19 u19', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (692, '2023-03-09 03:53:33.515-08', '18', 'admin11157@gmail.com c18 u18', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (693, '2023-03-09 03:53:33.519-08', '17', 'admin4220057@gmail.com c17 u17', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (694, '2023-03-09 03:53:33.524-08', '16', 'admin422057@gmail.com c16 u16', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (695, '2023-03-09 03:53:33.527-08', '13', 'admin4554657@gmail.com c13 u13', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (696, '2023-03-09 03:53:33.531-08', '12', 'admin455657@gmail.com c12 u12', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (697, '2023-03-09 03:53:33.534-08', '11', 'admin123455657@gmail.com c11 u11', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (698, '2023-03-09 03:53:33.539-08', '10', 'admin12345657@gmail.com c10 u10', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (699, '2023-03-09 03:53:33.543-08', '9', 'admin1234567@gmail.com c9 u9', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (700, '2023-03-09 03:53:33.549-08', '8', 'admin123456@gmail.com c8 u8', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (701, '2023-03-09 03:53:33.553-08', '7', 'admin12345@gmail.com c7 u7', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (702, '2023-03-09 03:53:33.556-08', '6', 'admin1234@gmail.com c6 u6', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (703, '2023-03-09 03:53:33.561-08', '5', 'admin123@gmail.com c5 u5', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (704, '2023-03-09 03:53:33.566-08', '4', 'null c4 u4', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (705, '2023-03-09 03:53:50.634-08', '23', 'admin00015547@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (706, '2023-03-09 03:53:50.647-08', '24', 'admin00117@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (707, '2023-03-09 03:53:50.65-08', '22', 'admin0015547@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (708, '2023-03-09 03:53:50.654-08', '21', 'admin00157@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (709, '2023-03-09 03:53:50.657-08', '18', 'admin11157@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (710, '2023-03-09 03:53:50.661-08', '19', 'admin1145157@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (711, '2023-03-09 03:53:50.665-08', '20', 'admin11454157@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (712, '2023-03-09 03:53:50.669-08', '11', 'admin123455657@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (713, '2023-03-09 03:53:50.672-08', '10', 'admin12345657@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (714, '2023-03-09 03:53:50.675-08', '9', 'admin1234567@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (715, '2023-03-09 03:53:50.679-08', '8', 'admin123456@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (716, '2023-03-09 03:53:50.684-08', '7', 'admin12345@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (717, '2023-03-09 03:53:50.687-08', '6', 'admin1234@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (718, '2023-03-09 03:53:50.691-08', '5', 'admin123@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (719, '2023-03-09 03:53:50.696-08', '17', 'admin4220057@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (720, '2023-03-09 03:53:50.701-08', '16', 'admin422057@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (721, '2023-03-09 03:53:50.704-08', '15', 'admin42257@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (722, '2023-03-09 03:53:50.708-08', '13', 'admin4554657@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (723, '2023-03-09 03:53:50.713-08', '12', 'admin455657@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (724, '2023-03-09 03:53:50.717-08', '14', 'admin457@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (725, '2023-03-09 03:53:50.721-08', '28', 'admin545508917@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (726, '2023-03-09 03:53:50.726-08', '27', 'admin54558917@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (727, '2023-03-09 03:53:50.73-08', '25', 'admin54817@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (728, '2023-03-09 03:53:50.735-08', '26', 'admin548917@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (729, '2023-03-09 03:53:50.739-08', '29', 'admin5508917@gmail.com', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (730, '2023-03-09 03:53:50.742-08', '4', 'null', 3, '', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (731, '2023-03-09 04:11:42.848-08', '1', 'admin', 2, '[]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (732, '2023-03-09 04:20:25.554-08', '32', 'muskan@gmail.com', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (733, '2023-03-09 04:22:12.255-08', '3', 'himanshugarg c3 u32', 2, '[{"changed": {"fields": ["User"]}}]', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (734, '2023-03-09 04:22:29.694-08', '3', 'himanshugarg c3 u32', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (735, '2023-03-09 04:22:52.987-08', '32', 'Muskan c32 u32', 1, '[{"added": {}}]', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (736, '2023-03-09 06:57:17.708-08', '5', 'Web 3.0 Solutions', 2, '[{"changed": {"fields": ["Name"]}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (737, '2023-03-10 07:59:41.632-08', '1', 'chatGPT message', 1, '[{"added": {}}]', 24, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (738, '2023-03-10 09:03:49.163-08', '49', 'Augmented Reality Developer 49', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (739, '2023-03-10 09:05:02.137-08', '50', 'Game Developer 50', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (740, '2023-03-10 09:09:00.665-08', '51', 'Website Designer 51', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (741, '2023-03-10 09:12:41.897-08', '52', 'Virtual Reality Developer 52', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (742, '2023-03-14 14:24:43.474-07', '6', 'Artwork 6', 2, '[{"added": {"name": "template project skill", "object": "TemplateProjectSkill object (1)"}}, {"added": {"name": "template project skill", "object": "TemplateProjectSkill object (2)"}}, {"added": {"name": "template project skill", "object": "TemplateProjectSkill object (3)"}}, {"added": {"name": "template project skill", "object": "TemplateProjectSkill object (4)"}}]', 22, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (743, '2023-03-14 14:35:12.506-07', '5', 'Web 3.0 Solutions 5', 2, '[{"added": {"name": "template project skill", "object": "Web 3.0 Solutions<-->Website Designer id-5"}}, {"added": {"name": "template project skill", "object": "Web 3.0 Solutions<-->Website Developer id-6"}}, {"added": {"name": "template project skill", "object": "Web 3.0 Solutions<-->Augmented Reality Developer id-7"}}, {"added": {"name": "template project skill", "object": "Web 3.0 Solutions<-->Virtual Reality Developer id-8"}}, {"added": {"name": "template project skill", "object": "Web 3.0 Solutions<-->Game Developer id-9"}}, {"added": {"name": "template project skill", "object": "Web 3.0 Solutions<-->Writer id-10"}}, {"added": {"name": "template project skill", "object": "Web 3.0 Solutions<-->2D animation Artist id-11"}}, {"added": {"name": "template project skill", "object": "Web 3.0 Solutions<-->3D Animation Artist id-12"}}, {"added": {"name": "template project skill", "object": "Web 3.0 Solutions<-->Graphic Designer id-13"}}]', 22, 1);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2023-03-14 23:31:33.046741-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2023-03-14 23:31:33.170483-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2023-03-14 23:31:33.203747-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-03-14 23:31:33.215045-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-14 23:31:33.226646-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-03-14 23:31:33.250598-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-03-14 23:31:33.262393-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-03-14 23:31:33.274954-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-03-14 23:31:33.284544-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-03-14 23:31:33.297488-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-03-14 23:31:33.301211-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-14 23:31:33.311649-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-03-14 23:31:33.330335-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-14 23:31:33.341035-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-03-14 23:31:33.353648-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-03-14 23:31:33.363944-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-14 23:31:33.374915-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'authtoken', '0001_initial', '2023-03-14 23:31:33.401549-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'authtoken', '0002_auto_20160226_1747', '2023-03-14 23:31:33.432827-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'authtoken', '0003_tokenproxy', '2023-03-14 23:31:33.436967-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'misc', '0001_initial', '2023-03-14 23:31:33.454146-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'misc', '0002_language', '2023-03-14 23:31:33.464883-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'misc', '0003_genre', '2023-03-14 23:31:33.475528-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'misc', '0004_skill_genres', '2023-03-14 23:31:33.505758-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'profiles', '0001_initial', '2023-03-14 23:31:34.119711-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'profiles', '0002_auto_20230113_1545', '2023-03-14 23:31:34.243508-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'profiles', '0003_auto_20230113_1548', '2023-03-14 23:31:34.331095-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'profiles', '0004_work_skill', '2023-03-14 23:31:34.388392-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'profiles', '0005_templateprojects', '2023-03-14 23:31:34.460339-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'profiles', '0006_remove_work_skill', '2023-03-14 23:31:34.504723-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'profiles', '0007_auto_20230117_1515', '2023-03-14 23:31:34.578656-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'profiles', '0008_projectfee_project_template', '2023-03-14 23:31:34.623195-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'profiles', '0009_auto_20230118_2044', '2023-03-14 23:31:34.749156-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'profiles', '0010_alter_project_stage', '2023-03-14 23:31:34.776339-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'profiles', '0011_client_recommended_artists', '2023-03-14 23:31:34.812991-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'profiles', '0012_project_advance_status_and_more', '2023-03-14 23:31:35.566473-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'profiles', '0013_auto_20230306_2329', '2023-03-14 23:31:35.785437-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'profiles', '0014_artist_employment_status', '2023-03-14 23:31:35.82134-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (39, 'profiles', '0015_remove_client_bio', '2023-03-14 23:31:35.851121-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (40, 'profiles', '0016_auto_20230309_1449', '2023-03-14 23:31:35.999562-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (41, 'profiles', '0017_remove_client_bio', '2023-03-14 23:31:36.029878-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (42, 'profiles', '0018_auto_20230309_1507', '2023-03-14 23:31:36.085415-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (43, 'profiles', '0019_auto_20230309_2121', '2023-03-14 23:31:36.122578-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (44, 'profiles', '0020_templateprojectskill', '2023-03-14 23:31:36.215434-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (45, 'profiles', '0021_alter_templateprojects_skills', '2023-03-15 00:53:01.629415-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (46, 'profiles', '0022_auto_20230315_0158', '2023-03-15 00:53:01.642253-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (47, 'profiles', '0023_auto_20230315_0232', '2023-03-15 00:53:01.646257-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (48, 'profiles', '0024_auto_20230315_0244', '2023-03-15 00:53:01.648776-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (49, 'profiles', '0025_auto_20230315_1311', '2023-03-15 00:53:01.652519-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (50, 'profiles', '0026_auto_20230315_1311', '2023-03-15 00:53:01.654613-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (51, 'profiles', '0027_auto_20230315_1323', '2023-03-15 00:55:53.417771-07');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (52, 'sessions', '0001_initial', '2023-03-15 00:59:40.989436-07');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('3w5zq8v51jcye0kv0gqon95bpaz8onh1', '.eJxVjDsOwjAQBe_iGln-ZGOHkp4zRJvdNQ4gW4qTCnF3iJQC2jcz76VG3NY8bk2WcWZ1VladfrcJ6SFlB3zHcquaalmXedK7og_a9LWyPC-H-3eQseVvnTAwRy_OEUKiaAgG8UzJyOCst9jHHnwHoZuEg3EUomEwzgJZsCjq_QH3NjfE:1pGH3N:0StfqsHoTtj6XWi60JFdxEHxu5tLNWzrydalW-D8kIU', '2023-01-27 02:12:53.086-08');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('x50zmvcmbdvmw9vhi2b3ji96mjwmtoj9', '.eJxVjDkOwjAURO_iGlne4oWSPmewvPyPA8iW4qRC3B1HSgHFNDPvzZv4sG_F7x1Wv2RyJZxcfrsY0hPqMeRHqPdGU6vbukR6IPRcO51bhtftZP8OSuhl2MEKYzWiVs4pcJFrzCZPRkiII8AZTGCZAMnQiaykVQoTDgN5SIyRzxffmjgW:1pcM76:udY4uMtApRPgEYzbMMPExxPetSR9Oox4R9OoYZPlZTg', '2023-03-29 01:04:00.625333-07');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('476drohiowmagjbwj9onr4rg3cbc1urm', '.eJxVjDsOwjAQBe_iGln-ZGOHkp4zRJvdNQ4gW4qTCnF3iJQC2jcz76VG3NY8bk2WcWZ1VladfrcJ6SFlB3zHcquaalmXedK7og_a9LWyPC-H-3eQseVvnTAwRy_OEUKiaAgG8UzJyOCst9jHHnwHoZuEg3EUomEwzgJZsCjq_QH3NjfE:1pHqL8:tEtdkMUt0mIccSD6GtUPi2sQX_jD5CEBhLEYJ6IllG0', '2023-01-31 10:05:42.044-08');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('82r3m29vo0mrv5gkbjff62i697t39kvv', '.eJxVjMsOwiAUBf-FtSHQ0vbi0r3fQO4DpGpoUtqV8d-VpAvdnpk5LxVw33LYa1zDLOqsOnX63Qj5EUsDcsdyWzQvZVtn0k3RB636ukh8Xg737yBjza1mtgMkSZY9iPU9eiQCtBbIjMxkBgFy3dQDQSQ7OmO8T4n9V5_QqfcHBn44cA:1pKvXz:rKjQ3o2FqoTozmxO5mC84KEyhMYnl8NcAdf7JB9ql2k', '2023-02-08 22:15:43.305-08');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('d5l5lxbgx1x88idvw8rva33xs4hpfza8', '.eJxVjDsOwjAQBe_iGln-xfFS0nMGa51d4wCypTipEHeHSCmgfTPzXiLitpa4dV7iTOIstDj9bgmnB9cd0B3rrcmp1XWZk9wVedAur434eTncv4OCvXxr0NkmBxaMCz5lsoTEasxgXWLUBr0xyB7NYEl5thwgD8EHbcCPoIJ4fwDiajdZ:1pcAO9:4S9nXydRXSoZw3JhmDK014EBOqG2lRlMFFGjYcqoVeM', '2023-03-28 12:32:49.34-07');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('fj55cyq3lmhe15z7p99671qqn9i7rlfs', '.eJxVjDsOwjAQBe_iGln-ZGOHkp4zRJvdNQ4gW4qTCnF3iJQC2jcz76VG3NY8bk2WcWZ1VladfrcJ6SFlB3zHcquaalmXedK7og_a9LWyPC-H-3eQseVvnTAwRy_OEUKiaAgG8UzJyOCst9jHHnwHoZuEg3EUomEwzgJZsCjq_QH3NjfE:1pIRw2:NoWMJhy8NRlxtyYHIrk_NGhpO232q-SywgQSb8KNlMg', '2023-02-02 02:14:18.802-08');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('fx76g2lmi78jn1ekkika00bo50jxttyx', '.eJxVjDsOwjAQBe_iGln-ZGOHkp4zRJvdNQ4gW4qTCnF3iJQC2jcz76VG3NY8bk2WcWZ1VladfrcJ6SFlB3zHcquaalmXedK7og_a9LWyPC-H-3eQseVvnTAwRy_OEUKiaAgG8UzJyOCst9jHHnwHoZuEg3EUomEwzgJZsCjq_QH3NjfE:1pIuxK:t4pZg_NB-3AC3RYhpVhrEK8-JPpGR35vklj3uSX7lU0', '2023-02-03 09:13:34.462-08');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('igbnlr455y6ejgv5yb3g8oa1ovv87pi9', '.eJxVjMsOwiAUBf-FtSHQ0vbi0r3fQO4DpGpoUtqV8d-VpAvdnpk5LxVw33LYa1zDLOqsOnX63Qj5EUsDcsdyWzQvZVtn0k3RB636ukh8Xg737yBjza1mtgMkSZY9iPU9eiQCtBbIjMxkBgFy3dQDQSQ7OmO8T4n9V5_QqfcHBn44cA:1pLP5l:GRt4euUJusYMsfdIWImWOmXc4Y9XJkjdPGBuzEcPito', '2023-02-10 05:48:33.435-08');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('m2zgzfo4njdxzkycc6c5dxcbe3lnsew7', '.eJxVjDsOwjAQBe_iGln-ZGOHkp4zRJvdNQ4gW4qTCnF3iJQC2jcz76VG3NY8bk2WcWZ1VladfrcJ6SFlB3zHcquaalmXedK7og_a9LWyPC-H-3eQseVvnTAwRy_OEUKiaAgG8UzJyOCst9jHHnwHoZuEg3EUomEwzgJZsCjq_QH3NjfE:1pIOh5:xDvpeSt2_7KTwIZAmKhWd5TKrBJVicKkJIuDqt2SUZ0', '2023-02-01 22:46:39.655-08');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('pxlt9iqrx94r4imkejhp463ljew6xpx0', '.eJxVjDsOwjAQBe_iGln-ZYMp6XMGa9de4wCypTipEHeHSCmgfTPzXiLgtpawdV7CnMRF2FGcfkfC-OC6k3THemsytrouM8ldkQftcmqJn9fD_Tso2Mu31qA1DJRM8tkoQ2SBB22zchhJRfDaRWDFfIbEjnwGayOO5Mh4C0Di_QEEqDgq:1paFT0:icWEW46XDiW3SizjphDY6git3LNlbrIc-a0xD_OXZjw', '2023-03-23 05:33:54.243-07');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('qejc72mgvisdg0hzew1llotvitkiozkx', '.eJxVjDsOwjAQBe_iGln-xfFS0nMGa51d4wCypTipEHeHSCmgfTPzXiLitpa4dV7iTOIstDj9bgmnB9cd0B3rrcmp1XWZk9wVedAur434eTncv4OCvXxr0NkmBxaMCz5lsoTEasxgXWLUBr0xyB7NYEl5thwgD8EHbcCPoIJ4fwDiajdZ:1paCkC:2oA-DNeePSB2gbVYXqx35381yMwykn0UjkEClW-rN9w', '2023-03-23 02:39:28.247-07');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('rm897c8zy1bf65rzxovid34qcrfq3k6h', '.eJxVjDEOwjAMRe-SGUUkTiFlZO8ZIju2SQGlUtNOiLtDpQ6w_vfef5mE61LS2mROI5uLAXP43QjzQ-oG-I71Ntk81WUeyW6K3Wmzw8TyvO7u30HBVr51RtUI2CuQl6giJNKBB3LUaQjHPmbigExnL54pEyg7ODG4qIGimPcHLtY5rw:1pWe2A:yKeTOor-9vu4pEEnTMU9aRo3tdjiesYGuIYQ9CBR0Dg', '2023-03-13 06:59:18.849-07');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('x7ku7w04khj0yda8cylluea2qx62ug7r', '.eJxVjEEOwiAURO_C2hCg5QMu3fcM5MMHqRqalHZlvLsl6UJ3k5n35s087lvxe0urn4ldmWSX3y5gfKbaB3pgvS88LnVb58A7ws-18Wmh9Lqd7N9BwVYOWxkhowOLWigXSBGBljmjcQOYaEAOOZM5olSjVVpZEAAWRrRdM8g-X78QNp4:1pU30j:_UOirQbbOFZKGv39DpQR6mEf6tofno14ZlcA8isHJ18', '2023-03-06 02:03:05.1-08');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('y3mxo5905ygd13dt5innqwzzwfer9djg', '.eJxVjDsOwjAQBe_iGln-ZGOHkp4zRJvdNQ4gW4qTCnF3iJQC2jcz76VG3NY8bk2WcWZ1VladfrcJ6SFlB3zHcquaalmXedK7og_a9LWyPC-H-3eQseVvnTAwRy_OEUKiaAgG8UzJyOCst9jHHnwHoZuEg3EUomEwzgJZsCjq_QH3NjfE:1pHL8Q:BGqblDWt5XEBcOg1HHLJSXRe3WloCaAtRIzomgqCnr0', '2023-01-30 00:46:30.531-08');


--
-- Data for Name: misc_genre; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.misc_genre (id, name) VALUES (114, 'Music video');
INSERT INTO public.misc_genre (id, name) VALUES (115, ' Videographer');
INSERT INTO public.misc_genre (id, name) VALUES (116, 'Motion Graphic');
INSERT INTO public.misc_genre (id, name) VALUES (117, ' 2d animation');
INSERT INTO public.misc_genre (id, name) VALUES (118, 'Films');
INSERT INTO public.misc_genre (id, name) VALUES (119, ' Web series');
INSERT INTO public.misc_genre (id, name) VALUES (120, 'Rapper');
INSERT INTO public.misc_genre (id, name) VALUES (121, 'Hip Hop');
INSERT INTO public.misc_genre (id, name) VALUES (122, ' Rapper');
INSERT INTO public.misc_genre (id, name) VALUES (123, ' Lyricist');
INSERT INTO public.misc_genre (id, name) VALUES (124, 'Flexible');
INSERT INTO public.misc_genre (id, name) VALUES (125, 'Ad shoot');
INSERT INTO public.misc_genre (id, name) VALUES (126, ' Video Editor');
INSERT INTO public.misc_genre (id, name) VALUES (127, 'Drama');
INSERT INTO public.misc_genre (id, name) VALUES (128, ' Emotion');
INSERT INTO public.misc_genre (id, name) VALUES (129, 'pop');
INSERT INTO public.misc_genre (id, name) VALUES (130, 'Marketing Collatrals');
INSERT INTO public.misc_genre (id, name) VALUES (131, 'Short films');
INSERT INTO public.misc_genre (id, name) VALUES (132, '3D Animation');
INSERT INTO public.misc_genre (id, name) VALUES (133, ' motion graphic');
INSERT INTO public.misc_genre (id, name) VALUES (134, ' marketing collatral');
INSERT INTO public.misc_genre (id, name) VALUES (135, 'Music videos');
INSERT INTO public.misc_genre (id, name) VALUES (136, 'Soft tone male');
INSERT INTO public.misc_genre (id, name) VALUES (137, 'Soft Tone Male');
INSERT INTO public.misc_genre (id, name) VALUES (138, 'Soft Tone Female');
INSERT INTO public.misc_genre (id, name) VALUES (139, 'Rock');
INSERT INTO public.misc_genre (id, name) VALUES (140, 'Character roles');
INSERT INTO public.misc_genre (id, name) VALUES (141, 'Ad shoots');
INSERT INTO public.misc_genre (id, name) VALUES (142, ' music videos');
INSERT INTO public.misc_genre (id, name) VALUES (143, ' talk shows');
INSERT INTO public.misc_genre (id, name) VALUES (144, ' reality shows');
INSERT INTO public.misc_genre (id, name) VALUES (145, ' films');
INSERT INTO public.misc_genre (id, name) VALUES (146, ' documentary');
INSERT INTO public.misc_genre (id, name) VALUES (147, ' lead director');
INSERT INTO public.misc_genre (id, name) VALUES (148, 'Motion Graphics');
INSERT INTO public.misc_genre (id, name) VALUES (149, ' 2D Animation');
INSERT INTO public.misc_genre (id, name) VALUES (150, 'Heavy Tone Male');
INSERT INTO public.misc_genre (id, name) VALUES (151, 'Documentary');
INSERT INTO public.misc_genre (id, name) VALUES (152, 'Soft Tone male');
INSERT INTO public.misc_genre (id, name) VALUES (153, 'Character Roles');
INSERT INTO public.misc_genre (id, name) VALUES (154, 'Lead roles');
INSERT INTO public.misc_genre (id, name) VALUES (155, 'Character roles');
INSERT INTO public.misc_genre (id, name) VALUES (156, 'Comic');
INSERT INTO public.misc_genre (id, name) VALUES (157, 'Villain');
INSERT INTO public.misc_genre (id, name) VALUES (158, 'Theatre');
INSERT INTO public.misc_genre (id, name) VALUES (159, 'Micro (10K -100K)');
INSERT INTO public.misc_genre (id, name) VALUES (160, 'Macro (100k- 10M)');
INSERT INTO public.misc_genre (id, name) VALUES (161, 'Comedy');
INSERT INTO public.misc_genre (id, name) VALUES (162, 'Food');
INSERT INTO public.misc_genre (id, name) VALUES (163, 'Fashion');
INSERT INTO public.misc_genre (id, name) VALUES (164, 'Travel');
INSERT INTO public.misc_genre (id, name) VALUES (165, 'Tech');
INSERT INTO public.misc_genre (id, name) VALUES (166, 'GK');
INSERT INTO public.misc_genre (id, name) VALUES (167, 'Film Review');
INSERT INTO public.misc_genre (id, name) VALUES (168, 'Auto');
INSERT INTO public.misc_genre (id, name) VALUES (169, 'Social Causes');
INSERT INTO public.misc_genre (id, name) VALUES (170, 'Heavy Tone Female');
INSERT INTO public.misc_genre (id, name) VALUES (171, 'Bollywood');
INSERT INTO public.misc_genre (id, name) VALUES (172, 'Indian Classical');
INSERT INTO public.misc_genre (id, name) VALUES (173, 'Jazz & Blues');
INSERT INTO public.misc_genre (id, name) VALUES (174, 'Sufi');
INSERT INTO public.misc_genre (id, name) VALUES (175, 'Electronic');
INSERT INTO public.misc_genre (id, name) VALUES (176, 'Sound Engineer');
INSERT INTO public.misc_genre (id, name) VALUES (177, 'Devotional');
INSERT INTO public.misc_genre (id, name) VALUES (178, 'Motivational');
INSERT INTO public.misc_genre (id, name) VALUES (179, 'Orchestral');
INSERT INTO public.misc_genre (id, name) VALUES (180, 'Fusion');
INSERT INTO public.misc_genre (id, name) VALUES (181, 'Modern Classical');
INSERT INTO public.misc_genre (id, name) VALUES (182, 'Carnatic');
INSERT INTO public.misc_genre (id, name) VALUES (183, 'Fictional');
INSERT INTO public.misc_genre (id, name) VALUES (184, 'Ads');
INSERT INTO public.misc_genre (id, name) VALUES (185, 'Suspense');
INSERT INTO public.misc_genre (id, name) VALUES (186, 'Horror');
INSERT INTO public.misc_genre (id, name) VALUES (187, 'Action');
INSERT INTO public.misc_genre (id, name) VALUES (188, 'Illustration');
INSERT INTO public.misc_genre (id, name) VALUES (189, 'VFX artist');
INSERT INTO public.misc_genre (id, name) VALUES (190, 'Vector art');
INSERT INTO public.misc_genre (id, name) VALUES (191, 'Western');
INSERT INTO public.misc_genre (id, name) VALUES (192, 'Indi Pop');
INSERT INTO public.misc_genre (id, name) VALUES (193, 'Assistant Director');
INSERT INTO public.misc_genre (id, name) VALUES (194, 'promo videos');
INSERT INTO public.misc_genre (id, name) VALUES (195, 'Line Producer');
INSERT INTO public.misc_genre (id, name) VALUES (196, 'Wildlife Film');
INSERT INTO public.misc_genre (id, name) VALUES (197, 'Frontend');
INSERT INTO public.misc_genre (id, name) VALUES (198, 'Backend');


--
-- Data for Name: misc_language; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.misc_language (id, name) VALUES (1, 'Hindi');
INSERT INTO public.misc_language (id, name) VALUES (2, 'English');
INSERT INTO public.misc_language (id, name) VALUES (3, '');
INSERT INTO public.misc_language (id, name) VALUES (4, ' English');
INSERT INTO public.misc_language (id, name) VALUES (5, ' Telugu');
INSERT INTO public.misc_language (id, name) VALUES (6, 'Hindi/ english');
INSERT INTO public.misc_language (id, name) VALUES (7, 'hindi');
INSERT INTO public.misc_language (id, name) VALUES (8, 'Telugu');
INSERT INTO public.misc_language (id, name) VALUES (9, ' Kannada');
INSERT INTO public.misc_language (id, name) VALUES (10, ' Hindi');
INSERT INTO public.misc_language (id, name) VALUES (11, ' hindi');
INSERT INTO public.misc_language (id, name) VALUES (12, 'Punjabi');
INSERT INTO public.misc_language (id, name) VALUES (13, ' urdu');
INSERT INTO public.misc_language (id, name) VALUES (14, ' marathi');
INSERT INTO public.misc_language (id, name) VALUES (15, ' Malayalam');
INSERT INTO public.misc_language (id, name) VALUES (16, ' Malayalam (few lines)');
INSERT INTO public.misc_language (id, name) VALUES (17, 'Gujrati');
INSERT INTO public.misc_language (id, name) VALUES (18, 'Tamil');
INSERT INTO public.misc_language (id, name) VALUES (19, 'Kannada');
INSERT INTO public.misc_language (id, name) VALUES (20, 'Tamil/ Telugu');


--
-- Data for Name: misc_location; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.misc_location (id, name) VALUES (45, 'Faridabad, Delhi');
INSERT INTO public.misc_location (id, name) VALUES (46, 'Mumbai');
INSERT INTO public.misc_location (id, name) VALUES (47, 'Uttrakhand');
INSERT INTO public.misc_location (id, name) VALUES (48, 'Chhattisgarh');
INSERT INTO public.misc_location (id, name) VALUES (49, 'Hyderabad');
INSERT INTO public.misc_location (id, name) VALUES (50, 'New Delhi, Delhi');
INSERT INTO public.misc_location (id, name) VALUES (51, 'Uttarakhand');
INSERT INTO public.misc_location (id, name) VALUES (52, 'Madhya Pradesh');
INSERT INTO public.misc_location (id, name) VALUES (53, '');
INSERT INTO public.misc_location (id, name) VALUES (54, 'Tamil Nadu');
INSERT INTO public.misc_location (id, name) VALUES (55, 'Delhi');
INSERT INTO public.misc_location (id, name) VALUES (56, 'Maharashtra');
INSERT INTO public.misc_location (id, name) VALUES (57, 'Uttar Pradesh');
INSERT INTO public.misc_location (id, name) VALUES (58, 'Kolkata');
INSERT INTO public.misc_location (id, name) VALUES (59, 'UP');
INSERT INTO public.misc_location (id, name) VALUES (60, 'Bangalore');
INSERT INTO public.misc_location (id, name) VALUES (61, 'Gujarat');
INSERT INTO public.misc_location (id, name) VALUES (62, 'Surat');
INSERT INTO public.misc_location (id, name) VALUES (63, 'Karnataka');


--
-- Data for Name: misc_skill; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.misc_skill (id, name) VALUES (30, 'Video Producer');
INSERT INTO public.misc_skill (id, name) VALUES (31, 'Graphic Designer');
INSERT INTO public.misc_skill (id, name) VALUES (32, 'Director');
INSERT INTO public.misc_skill (id, name) VALUES (33, 'Singer');
INSERT INTO public.misc_skill (id, name) VALUES (34, 'Music Producer');
INSERT INTO public.misc_skill (id, name) VALUES (36, 'Writer');
INSERT INTO public.misc_skill (id, name) VALUES (39, 'Voice Over Artist');
INSERT INTO public.misc_skill (id, name) VALUES (40, 'Actor');
INSERT INTO public.misc_skill (id, name) VALUES (41, 'Influencer');
INSERT INTO public.misc_skill (id, name) VALUES (42, 'Actress');
INSERT INTO public.misc_skill (id, name) VALUES (43, '2D animation Artist');
INSERT INTO public.misc_skill (id, name) VALUES (44, '3D Animation Artist');
INSERT INTO public.misc_skill (id, name) VALUES (45, 'Anchor');
INSERT INTO public.misc_skill (id, name) VALUES (46, 'Video Editor');
INSERT INTO public.misc_skill (id, name) VALUES (47, 'Website Developer');
INSERT INTO public.misc_skill (id, name) VALUES (49, 'Augmented Reality Developer');
INSERT INTO public.misc_skill (id, name) VALUES (50, 'Game Developer');
INSERT INTO public.misc_skill (id, name) VALUES (51, 'Website Designer');
INSERT INTO public.misc_skill (id, name) VALUES (52, 'Virtual Reality Developer');


--
-- Data for Name: misc_skill_genres; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (1, 30, 195);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (2, 30, 196);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (3, 30, 135);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (4, 30, 141);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (5, 30, 142);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (6, 30, 143);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (7, 30, 144);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (8, 30, 146);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (9, 30, 115);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (10, 30, 118);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (11, 30, 119);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (12, 30, 151);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (13, 30, 126);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (14, 31, 130);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (15, 31, 132);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (16, 31, 133);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (17, 31, 116);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (18, 31, 117);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (19, 31, 148);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (20, 31, 188);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (21, 31, 189);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (22, 31, 190);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (23, 32, 193);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (24, 32, 194);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (25, 32, 131);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (26, 32, 135);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (27, 32, 141);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (28, 32, 142);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (29, 32, 143);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (30, 32, 144);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (31, 32, 146);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (32, 32, 147);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (33, 32, 119);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (34, 32, 151);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (35, 33, 192);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (36, 33, 139);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (37, 33, 172);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (38, 33, 171);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (39, 33, 174);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (40, 33, 120);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (41, 33, 122);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (42, 33, 191);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (43, 34, 129);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (44, 34, 139);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (45, 34, 171);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (46, 34, 172);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (47, 34, 173);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (48, 34, 174);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (49, 34, 175);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (50, 34, 176);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (51, 34, 177);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (52, 34, 178);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (53, 34, 179);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (54, 34, 180);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (55, 34, 181);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (56, 34, 182);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (57, 34, 121);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (58, 34, 124);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (59, 36, 161);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (60, 36, 187);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (61, 36, 183);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (62, 36, 184);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (63, 36, 185);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (64, 36, 186);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (65, 36, 123);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (66, 36, 127);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (67, 39, 136);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (68, 39, 137);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (69, 39, 138);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (70, 39, 170);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (71, 39, 150);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (72, 39, 152);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (73, 40, 140);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (74, 40, 153);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (75, 40, 154);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (76, 40, 155);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (77, 40, 156);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (78, 40, 157);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (79, 40, 158);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (80, 41, 160);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (81, 41, 161);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (82, 41, 162);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (83, 41, 163);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (84, 41, 164);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (85, 41, 165);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (86, 41, 166);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (87, 41, 167);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (88, 41, 168);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (89, 41, 169);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (90, 41, 159);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (91, 42, 140);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (92, 42, 153);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (93, 42, 154);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (94, 42, 155);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (95, 42, 156);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (96, 42, 157);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (97, 42, 158);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (98, 43, 117);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (99, 44, 132);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (100, 45, 154);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (101, 46, 126);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (102, 47, 197);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (103, 47, 157);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (104, 47, 198);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (105, 49, 198);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (106, 50, 198);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (107, 51, 197);
INSERT INTO public.misc_skill_genres (id, skill_id, genre_id) VALUES (108, 52, 132);


--
-- Data for Name: profiles_manager; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_manager (id, name, phone, email) VALUES (1, 'Maruf', 123456789, 'maruf@contact.com');


--
-- Data for Name: profiles_artist; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (279, 'Amogh Verma', 'userdata/Amogh Verma_work_files/amogh_varma.jfif', 0, 'alluniversein@gmail.com', 886040144, '', '', false, '', '', 'suitable for ad videos', '', 5, 7, false, '', 45, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (280, 'Amogh Verma', 'userdata/Amogh Verma_work_files/amogh_varma.jfif', 0, 'alluniversein@gmail.com', 886040144, '', '', false, '', '', '2d animation, motion graphics', '', 6, 6, false, '', 45, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (281, 'Anand Tiwari', 'userdata/Anand Tiwari_work_files/anand_tiwari.jfif', 0, '', 0, '', '', false, '', '', 'Amazing actor and an exceptional film maker', '', 8, 0, false, '', 46, NULL, 'Film maker, Actor, Founder of We are yuva', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (282, 'bellaofficials', 'userdata/bellaofficials_work_files/322031949_3062928664005969_3449577563268625870_n.jpg', 0, 'fhighmusic@gmail.com', 0, '', '', false, '', '', 'Sounds comfortable over a variety of sounds', '', 7, 0, false, '', 47, NULL, 'Rapper, singer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (283, 'Shantanu', 'userdata/Shantanu_work_files/shantanu.jfif', 0, 'Sbhagat201@gmail.com', 0, '', '', false, '', '12,000-15,000', 'young rapper with good skills', '', 5, 0, false, '', 48, NULL, 'Rapper, singer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (284, 'Harish (MC Uneek)', 'userdata/Harish (MC Uneek)_work_files/mc___uneek.jpg', 0, 'mcuneekofficial@gmail.com', 0, '', '', false, '', '', 'Good voice, done a commercial for Vijay sales', '', 6, 0, false, '', 49, NULL, 'Rapper and Musician from Hyderabad', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (285, 'Vasu Kainth', 'userdata/Vasu Kainth_work_files/313216828_672785994261427_8639839057342405639_n.jpg', 0, 'business.vasukainth@gmail.com', 0, '', '', false, '', '30,000-35,000', 'soulful voice', '', 6, 0, false, '', 46, NULL, 'Singer and a video maker from Mumbai', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (286, 'Subhodeep Dasgupta', 'avatar.png', 0, 'deepdg19@gmail.com', 0, '', '', false, '', '12k', 'ads', '', 5, 6, false, '', 50, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (287, 'Mahendra Singh Khatri (UL Rapi Boy)', 'userdata/Mahendra Singh Khatri (UL Rapi Boy)_work_files/mahendra-singh-khatri.jpg', 0, 'ukrapiboy100@gmail.com', 0, '', '', false, '', '', 'young rapper with good skills', '', 6, 0, false, '', 51, NULL, 'Rapper', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (288, 'Mohd Anash Ibraheem', 'userdata/Mohd Anash Ibraheem_work_files/1655123471243.jfif', 0, 'Anashibraheem2408@gmail.com', 0, '', '', false, '', '', 'young writer', '', 4, 5, false, '', 52, NULL, 'Writer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (289, 'Shlok aka The Shloka', 'userdata/Shlok aka The Shloka_work_files/300370870_2249665528514336_3665002193970379416_n.jfif', 0, 'theshloka@gmail.com', 0, '', '', false, '', '2,50,000-3,00,000  (₹2.5-3 lakh)', 'devotional rapping and songs', '', 0, 0, false, '', 53, NULL, 'musician', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (290, 'Giftson Durai', 'userdata/Giftson Durai_work_files/316892839_656912009480623_5908588123917348629_n.jpg', 0, 'gdrecords.producer@gmail.com', 0, '', '', false, '', '1 L for ads of 30-45 sec', 'telegu singer, original composition', '', 0, 0, false, '', 54, NULL, 'singer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (291, 'Shweta Gupta', 'userdata/Shweta Gupta_work_files/220127383948647.612f7f36dfeab.jpg', 0, 'shw3tagupta@gmail.com', 0, '', '', false, '', '', 'Create marketing and ad design, LOGO', '', 6, 6, false, '', 55, NULL, 'Graphic designer and Pamplet maker', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (292, 'Ramiz B.', 'avatar.png', 0, 'thisisramiz@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'english award winning film', '', 6, 7, false, '', 46, NULL, 'Director, Short film Maker', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (293, 'Sanchit Bhatt', 'avatar.png', 0, 'sanchitbhatt20@gmail.com', 0, '', '', false, '', '', 'motion graphics + 2d animation', '', 5, 0, false, '', 55, NULL, 'Graphic and motion designer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (294, 'Sarvadnya Kulkarni', 'avatar.png', 0, 'sarvadnya.k24@gmail.com', 0, '', '', false, 'Less Than 10,000', '45-55k pm', 'Romantic music video', '', 6, 6, false, '', 46, NULL, 'Director, music video maker', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (295, 'Shruti Wagh', 'userdata/Shruti Wagh_work_files/e70650235777469.639086c03b5fd.jpg', 0, 'shru13wagh@gmail.com', 0, '', '', false, '', '', 'logos, ads', '', 5, 0, false, '', 56, NULL, 'Creative concept artist', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (296, 'Sheikh Naved', 'userdata/Sheikh Naved_work_files/ab6761610000e5ebb340aa6404423e6561a5e2ca.jfif', 0, 'naved.the.sheikh@gmail.com', 0, '', '', false, '', '', 'Enthusiastic voice over artist and also a great singer and news anchor', '', 8, 0, false, '', 53, NULL, 'Voice artist, Anchor, Singer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (297, 'RJ Love Shah', 'avatar.png', 0, 'orbisthestudio@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Voice artist at Radio FM 95', '', 5, 0, false, '', 53, NULL, 'Voice artist, anchor, RJ', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (298, 'Anushka Maheshwari', 'userdata/Anushka Maheshwari_work_files/anushka_maheshwari.jfif', 0, 'anushkamaheshwariii@gmail.com', 0, '', '', false, '', '', 'Beautiful voice', '', 7, 0, false, '', 57, NULL, 'Singer, Musician', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (299, 'Arjun Kanungo', 'userdata/Arjun Kanungo_work_files/311043999_423989716543549_2173594500669843272_n.jpg', 0, 'arjunkanungolive@gmail.com', 0, '', '', false, '', '15 lakhs', 'Has a good voice, writes great songs', '', 8, 0, false, '', 46, NULL, 'Singer, Music producer, Song writer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (300, 'Abhilash Vashne', 'userdata/Abhilash Vashne_work_files/241373076_3136410549923764_5476441695000243762_n.jpg', 0, 'Abhivarsh05@gmail.com', 0, '', '', false, '', '', 'monologues, good acting skills', '', 0, 0, false, '', 53, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (301, 'Abhilash Vashney', 'userdata/Abhilash Vashney_work_files/241373076_3136410549923764_5476441695000243762_n.jpg', 0, 'Abhivarsh05@gmail.com', 0, '', '', false, '', '', '', '', 0, 0, false, '', 53, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (302, 'Souvik Chakraborty', 'userdata/Souvik Chakraborty_work_files/a949dd641fbc8e3936d6bd2f53002c27_medium.jpeg', 0, 'souikfilms@gmail.com', 0, '', '', false, '', '15-20k for direction on shoot days', 'Award winning filmmaker and director, worked as a producer for shows on MTV, Colors, Star Plus, Hotstar, and Zee TV', '', 7, 6, false, '', 46, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (303, 'Sananda Ghosh', 'userdata/Sananda Ghosh_work_files/channels4_profile.jpg', 0, 'sanandaghosh5@gmail.com', 0, '', '', false, '', '', 'motion graphics + 2d', '', 7, 0, false, '', 58, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (304, 'Shubham Gaur', 'userdata/Shubham Gaur_work_files/Shubham-Gaur-wiki-biography.webp', 0, 'sobhigur@gmail.com', 0, '', '', false, '', '', 'Heavy voice, done ads such as meesho, hindi learning, etc', '', 7, 0, false, '', 53, NULL, 'Voice over artist', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (305, 'Mahrukh Ali Ansari', 'avatar.png', 0, 'alimahrukh06@gmail.com', 0, '', '', false, 'Less Than 10,000', '', '', '', 5, 6, false, '', 59, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (306, 'Ashish Ddavidd', 'userdata/Ashish Ddavidd_work_files/unnamed.jpg', 0, 'tubelighton@gmail.com', 0, '', '', false, '', '', 'Funny RJ, makes youtube videos by collaborating with different artists', '', 6, 0, false, '', 46, NULL, 'Voice Over Artist & Singer from New Delhi, India.', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (307, 'Wajahat Hasan', 'avatar.png', 0, 'infowajahathasan@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Cartoon/Animations (Suneo in Doraemon) voice artist', '', 6, 0, false, '', 53, NULL, 'Singer, Actor, Voice artist', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (308, 'Nikhil Lalwani', 'avatar.png', 0, 'nikhil.lalwani1111@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Soothing and peaceful voice', '', 6, 0, false, '', 53, NULL, 'Voice artist, poetry writer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (309, 'Ashish Singh', 'avatar.png', 0, '', 0, '', '', false, 'Less Than 10,000', '', 'Bigg Boss Voice Artist', '', 7, 0, false, '', 53, NULL, 'Voice artist, Mr Boss', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (310, 'Prasanna V.', 'avatar.png', 0, 'prasannavoiceover@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Voice of Dabur red paste, many other TV Ads, has a bonzer voice', '', 8, 0, false, '', 53, NULL, 'Voice over artist, Certified Radio jockey', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (311, 'Adarsh Anand', 'avatar.png', 0, 'adarsh.anand17@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Funny cartoon voice', '', 7, 0, false, '', 46, NULL, 'Voice over artist, anchor, comedian', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (312, 'Sahil Vaid', 'userdata/Sahil Vaid_work_files/315727320_529597492368097_255903454081081423_n.jfif', 0, 'disha@worldofkri.com', 0, '', '', false, '', '', 'Amazing actor and a voice over artist with exceptional skills', '', 9, 0, false, '', 46, NULL, 'Indian dubbing artist and actor who is known for his roles in Bittoo Boss and many other bollywood movies', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (313, 'Hemang Sharma', 'userdata/Hemang Sharma_work_files/262639019_626376968710077_3208952478994175770_n.jpg', 0, 'hemang.sharma@gmail.com', 0, '', '', false, '', '', 'Serious yet calm voice tones', '', 6, 0, false, '', 46, NULL, 'Voice Actor, Radio Professional, TV Host, Trainer, Event Host, Theatre Actor & Podcaster.', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (314, 'Nandkumar Menon', 'userdata/Nandkumar Menon_work_files/1664189575290.jfif', 0, 'n_k_menon@yahoo.co.uk', 0, '', '', false, '', '', '', '', 6, 0, false, '', 46, NULL, 'NK (Nandkumar Menon), an English, Hindi Voice Over Artist, based in Mumbai.
Offers a range of work, covering Corp AVs, TV/ Radio (Adverts, Tag
Lines, Promos) Explainer Video’s, Tutorials, Documentaries, , IVR and
more', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (315, 'Melodee Austin', 'avatar.png', 0, 'melodee.austin@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Good Barritone Voice, Phone Missing. Need to find.', '', 6, 0, false, '', 60, NULL, 'Voice Over Artiste & Emcee, Former RJ', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (316, 'Nitin Jai Singh', 'avatar.png', 0, 'jai@binarychai.com', 0, '', '', false, 'Less Than 10,000', '', 'Story teller, all about love, no contact', '', 6, 0, false, '', 53, NULL, 'Storytelling', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (317, 'Tanya Nambiar', 'avatar.png', 0, 'nambiar.tanya@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Voice over for nescafe, mirragio, spicejet', '', 7, 0, false, '', 53, NULL, 'Voice over artist and singer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (318, 'Dj Adi', 'avatar.png', 0, 'djadeendia@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Good baritone voice, singer, funny memes', '', 5, 0, false, '', 53, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (319, 'Chinmayi Sripada', 'avatar.png', 0, 'chinmayi.team@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'singer, nothing related to voice artist', '', 6, 0, false, '', 53, NULL, 'Singer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (320, 'Sanket Mhatre', 'avatar.png', 0, 'vocalsanket@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Voice of Deadpool, Batman, amazing voice', '', 8, 0, false, '', 53, NULL, 'Voice artist of Ben10, Allu Arjun', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (321, 'Darrpan', 'avatar.png', 0, 'darrpan@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'anchor in filmfare 2022/ Sony Channel', '', 7, 0, false, '', 53, NULL, 'Voice artist, Tedx speaker,Voice trainer', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (322, 'Rajesh Kava', 'avatar.png', 0, 'rajeshkavacontact9@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Cartoon/Animations (Bas Karo Henry) voice artist', '', 8, 0, false, '', 53, NULL, 'TedX speaker, voice of horid henry, beyblade, etc', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (323, 'Sonal Kaushal', 'avatar.png', 0, 'sonalkaushal.3@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Cartoon/Animations (Doraemon, Chotta Bheem) voice artist', '', 9, 0, false, '', 46, NULL, 'Voice artist, Animation voice', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (324, 'Akansha Sharma', 'avatar.png', 0, 'akankshasharma.as19@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Cartoon/Animations (Shinchan) voice artist', '', 8, 0, false, '', 53, NULL, 'Comedian, Voice of Sinchan', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (325, 'Carolyn', 'avatar.png', 0, 'carolynpereira30@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'voice in various accents', '', 7, 0, false, '', 53, NULL, 'Voice over artist
Recipe developer | Content creator', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (326, 'Mansi Shah', 'avatar.png', 0, 'mansishah2101@gmail.com', 0, '', '', false, '', '', 'Gujarati voice artist, anchor', '', 6, 0, false, '', 61, NULL, 'Anchor, Actress, Voice artist', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (327, 'RJ Rajul', 'avatar.png', 0, 'rajulsurana50@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Mirchi Love 91.9', '', 7, 0, false, '', 62, NULL, 'Radio jock, host, singer, voice artist', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (328, 'Manoj Sharma', 'avatar.png', 0, 'manvida345manoj@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Kannada Colors Cinema', '', 6, 0, false, '', 63, NULL, 'Singer, voice over artist', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (329, 'Anuj Gurwara', 'avatar.png', 0, 'anujgurwara@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Voice of God', '', 5, 0, false, '', 49, NULL, 'Host, singer, voice artist', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (330, 'Manish Wadhwa', 'avatar.png', 0, 'manishwadhwa.in', 0, '', '', false, 'Less Than 10,000', '', 'Great expressions, great voice', '', 6, 0, false, '', 53, NULL, 'Actor', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (331, 'Mohan Kapur', 'avatar.png', 0, 'parull@gmail.com', 0, '', '', false, '', '', 'Predominant in hindi films and dubbed in various hollywood movies such as LIve free or die, etc', '', 6, 0, false, '', 53, NULL, 'Yusuf Khan in MS. MARVEL & THE MARVELS.', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (332, 'Prachi Saathi', 'avatar.png', 0, 'prachisaathi@gmail.com', 0, '', '', false, 'Less Than 10,000', '', 'Superb dubbing actress and a great dancer', '', 7, 0, false, '', 53, NULL, 'Bharata Natyam Performer & Voice artist', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (333, 'Rakshanda Khan', 'avatar.png', 0, 'akshat.gaur@talentuno.co', 0, '', '', false, 'Less Than 10,000', '', '', '', 6, 0, false, '', 53, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (334, 'Raveena Ravi', 'avatar.png', 0, 'raveena116@gmail.com', 0, '', '', false, '', '', 'Good Tamil voice over, however hindi should also be included', '', 7, 0, false, '', 53, NULL, 'Actor, Voice actor', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (335, 'Sumit Kaul', 'userdata/Sumit Kaul_work_files/324260942_490500756529171_6042049112781377344_n.jpg', 0, 'kaulmesumit@gmail.com', 0, '', '', false, '', '', 'back to the outback movie', '', 8, 0, false, '', 46, NULL, 'actor and voice actor known for playing Rajkumar Justin Maurya in Chakravartin Ashoka Samrat.', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (336, 'Shreyas Talpade', 'userdata/Shreyas Talpade_work_files/312170239_816814169536065_1509668737494906466_n.jfif', 0, 'inquiries.shreyas@gmail.com', 0, '', '', false, '', '', 'Winsome actor with such a soulful voice, Voice of Pushpa, Timon from the jungle king', '', 9, 0, false, '', 46, NULL, 'Actor. Entrepreneur. Director. Producer.', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (337, 'Manoj Muntashir Shukla', 'userdata/Manoj Muntashir Shukla_work_files/323705470_123362793955666_567720886651296584_n.jpg', 0, '', 0, '', '', false, '', '', '', '', 0, 0, false, '', NULL, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (338, 'Maseera Khan', 'userdata/Maseera Khan_work_files/280545644_512702737223118_5297173568750886437_n.jpg', 0, '', 0, '', '', false, '', '', '', '', 0, 0, false, '', 55, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (339, 'Megha Sukhija', 'userdata/Megha Sukhija_work_files/311993523_1530434114071202_1008168159456865843_n.jpg', 0, '', 0, '', '', false, '', '', '', '', 0, 0, false, '', NULL, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (340, 'Azeem Banatwalla', 'userdata/Azeem Banatwalla_work_files/301657970_437179975117661_809912893394697193_n.jfif', 0, '', 0, '', '', false, '', '', '', '', 0, 0, false, '', NULL, NULL, '', false, false);
INSERT INTO public.profiles_artist (id, name, profile_pic, age, email, phone, other_arts, social_links, has_manager, budget_range, budget_idea, am_notes, pm_notes, professional_rating, attitude_rating, has_agreement, agreement, location_id, manager_id, artist_intro, full_time, part_time) VALUES (341, 'Aditi Mitall', 'userdata/Aditi Mitall_work_files/307767640_163876419629373_4893878478552769146_n.jpg', 0, '', 0, '', '', false, '', '', '', '', 0, 0, false, '', 46, NULL, '', false, false);


--
-- Data for Name: profiles_artist_genre; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (177, 279, 114);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (178, 279, 115);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (179, 280, 116);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (180, 280, 117);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (181, 281, 118);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (182, 281, 119);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (183, 282, 120);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (184, 283, 121);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (185, 283, 122);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (186, 283, 123);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (187, 284, 120);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (188, 285, 124);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (189, 286, 115);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (190, 286, 125);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (191, 286, 126);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (192, 287, 120);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (193, 288, 128);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (194, 288, 127);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (195, 289, 120);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (196, 290, 129);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (197, 291, 130);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (198, 292, 131);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (199, 293, 132);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (200, 293, 133);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (201, 293, 134);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (202, 294, 135);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (203, 295, 130);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (204, 296, 136);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (205, 297, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (206, 298, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (207, 299, 139);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (208, 300, 140);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (209, 301, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (210, 302, 141);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (211, 302, 142);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (212, 302, 143);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (213, 302, 144);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (214, 302, 145);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (215, 302, 146);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (216, 302, 147);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (217, 303, 148);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (218, 303, 149);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (219, 304, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (220, 305, 115);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (221, 305, 151);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (222, 306, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (223, 307, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (224, 308, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (225, 309, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (226, 310, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (227, 311, 136);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (228, 312, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (229, 313, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (230, 314, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (231, 315, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (232, 316, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (233, 317, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (234, 318, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (235, 319, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (236, 320, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (237, 321, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (238, 322, 152);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (239, 323, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (240, 324, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (241, 325, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (242, 326, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (243, 327, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (244, 328, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (245, 329, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (246, 330, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (247, 331, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (248, 332, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (249, 333, 153);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (250, 334, 138);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (251, 335, 150);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (252, 336, 137);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (253, 337, 128);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (254, 337, 127);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (255, 338, 183);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (256, 338, 185);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (257, 338, 127);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (258, 339, 159);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (259, 340, 161);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (260, 340, 156);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (261, 341, 161);
INSERT INTO public.profiles_artist_genre (id, artist_id, genre_id) VALUES (262, 341, 156);


--
-- Data for Name: profiles_artist_languages; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (185, 279, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (186, 280, 3);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (187, 281, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (188, 282, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (189, 282, 4);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (190, 283, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (191, 284, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (192, 284, 5);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (193, 285, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (194, 285, 4);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (195, 286, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (196, 287, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (197, 288, 6);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (198, 289, 7);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (199, 290, 8);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (200, 290, 9);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (201, 291, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (202, 291, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (203, 292, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (204, 293, 3);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (205, 294, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (206, 295, 3);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (207, 296, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (208, 296, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (209, 297, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (210, 298, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (211, 298, 11);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (212, 299, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (213, 299, 12);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (214, 300, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (215, 301, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (216, 302, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (217, 303, 3);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (218, 304, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (219, 304, 11);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (220, 305, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (221, 306, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (222, 307, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (223, 308, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (224, 309, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (225, 310, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (226, 310, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (227, 311, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (228, 312, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (229, 313, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (230, 313, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (231, 313, 13);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (232, 313, 14);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (233, 314, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (234, 314, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (235, 314, 15);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (236, 315, 16);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (237, 315, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (238, 315, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (239, 316, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (240, 317, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (241, 318, 17);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (242, 318, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (243, 319, 18);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (244, 320, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (245, 321, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (246, 322, 7);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (247, 323, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (248, 324, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (249, 325, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (250, 326, 17);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (251, 326, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (252, 327, 17);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (253, 327, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (254, 328, 19);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (255, 329, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (256, 329, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (257, 330, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (258, 331, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (259, 331, 10);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (260, 332, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (261, 332, 4);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (262, 333, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (263, 334, 20);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (264, 335, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (265, 336, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (266, 337, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (267, 337, 4);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (268, 338, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (269, 338, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (270, 339, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (271, 339, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (272, 340, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (273, 340, 2);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (274, 341, 1);
INSERT INTO public.profiles_artist_languages (id, artist_id, language_id) VALUES (275, 341, 2);


--
-- Data for Name: profiles_artist_skill; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (166, 279, 46);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (167, 279, 30);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (168, 280, 43);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (169, 280, 44);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (170, 280, 31);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (171, 281, 32);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (172, 282, 33);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (173, 283, 34);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (174, 283, 36);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (175, 284, 33);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (176, 285, 34);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (177, 286, 46);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (178, 286, 30);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (179, 287, 33);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (180, 289, 33);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (181, 291, 31);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (182, 292, 32);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (183, 293, 43);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (184, 293, 44);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (185, 293, 31);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (186, 294, 32);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (187, 295, 31);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (188, 296, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (189, 297, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (190, 298, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (191, 299, 34);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (192, 300, 40);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (193, 300, 41);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (194, 301, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (195, 302, 32);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (196, 303, 43);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (197, 303, 44);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (198, 303, 31);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (199, 304, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (200, 305, 30);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (201, 306, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (202, 307, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (203, 308, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (204, 309, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (205, 310, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (206, 311, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (207, 312, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (208, 313, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (209, 314, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (210, 315, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (211, 316, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (212, 317, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (213, 318, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (214, 319, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (215, 320, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (216, 321, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (217, 322, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (218, 323, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (219, 324, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (220, 325, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (221, 326, 45);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (222, 326, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (223, 327, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (224, 328, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (225, 329, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (226, 330, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (227, 331, 40);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (228, 331, 45);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (229, 331, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (230, 332, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (231, 333, 42);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (232, 334, 33);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (233, 334, 45);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (234, 334, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (235, 335, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (236, 336, 39);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (237, 337, 36);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (238, 338, 36);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (239, 339, 41);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (240, 340, 40);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (241, 340, 41);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (242, 340, 45);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (243, 341, 41);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (244, 341, 42);
INSERT INTO public.profiles_artist_skill (id, artist_id, skill_id) VALUES (245, 341, 45);


--
-- Data for Name: profiles_work; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (799, '', '', 'https://www.youtube.com/watch?v=NemNA0RvNIE', true, false, false, true, '', 'Youtube Link', 279);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (802, '', '', 'https://www.youtube.com/watch?v=WvN1hAZFzFg', true, false, false, true, '', 'Youtube Link', 280);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (805, '', '', 'https://www.instagram.com/p/CJyP938J9ve/embed', true, false, false, true, '', 'Instagram Link', 281);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (806, '', '', 'https://www.instagram.com/p/CQvQdjtl3CX/embed', false, false, false, true, '', 'Instagram Link', 281);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (807, '', '', 'https://www.instagram.com/p/CC26iKKjJZf/embed', false, false, false, true, '', 'Instagram Link', 281);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (808, '', '', 'https://www.instagram.com/p/Cm0qgHoBhMM/embed', true, false, false, true, '', 'Instagram Link', 282);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (809, '', '', 'https://www.instagram.com/p/Cl1VfBvAJ2C/embed', false, false, false, true, '', 'Instagram Link', 282);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (810, '', '', 'https://www.instagram.com/p/CeECy4CpbdS/embed', false, false, false, true, '', 'Instagram Link', 282);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (811, '', '', 'https://youtu.be/fXfoiZ1V9qc', true, false, false, true, '', 'Youtube Link', 283);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (812, '', '', 'https://www.youtube.com/watch?v=mh5y_Q3pREo', false, false, false, true, '', 'Youtube Link', 283);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (813, '', '', 'https://www.youtube.com/watch?v=GXkWYI9ijRY', false, false, false, true, '', 'Youtube Link', 283);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (814, '', '', 'https://www.instagram.com/p/B26luhxH_UV/embed', true, false, false, true, '', 'Instagram Link', 284);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (815, '', '', 'https://www.instagram.com/p/BnlhHzNA5LM/embed', false, false, false, true, '', 'Instagram Link', 284);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (816, '', '', 'https://www.instagram.com/p/CY1SMnjldTu/embed', false, false, false, true, '', 'Instagram Link', 284);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (817, '', '', 'https://www.instagram.com/p/Cl5w_SEpH8L/embed', true, false, false, true, '', 'Instagram Link', 285);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (818, '', '', 'https://www.instagram.com/p/CjsAXeYJaIW/embed', false, false, false, true, '', 'Instagram Link', 285);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (819, '', '', 'https://www.instagram.com/p/CkpurjoJGWY/embed', false, false, false, true, '', 'Instagram Link', 285);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (820, '', '', 'https://youtu.be/cn_LN1gdaO4', true, false, false, true, '', 'Youtube Link', 286);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (821, '', '', 'https://youtu.be/SV8EbTD6r7E', false, false, false, true, '', 'Youtube Link', 286);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (822, '', '', 'https://youtu.be/BUzwPsa1C7s', false, false, false, true, '', 'Youtube Link', 286);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (823, '', '', 'https://www.instagram.com/p/Cl3br56g1OP/', true, false, false, true, '', 'Instagram Link', 287);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (824, '', '', 'https://www.instagram.com/p/CjfmCg-jyKU/embed', false, false, false, true, '', 'Instagram Link', 287);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (825, '', '', 'https://www.youtube.com/@SHLOVIJ', false, false, false, true, '', 'Youtube Link', 287);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (826, '', '', 'https://www.linkedin.com/in/mohd-anash-ibraheem-120b07240/', true, false, false, true, '', 'Other Document', 288);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (829, '', '', 'https://www.youtube.com/watch?v=jTAxcOCUCgA', true, false, false, true, '', 'Youtube Link', 289);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (830, '', '', 'https://www.youtube.com/watch?v=P5-sx67VWmA', false, false, false, true, '', 'Youtube Link', 289);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (831, '', '', 'https://www.youtube.com/watch?v=vYcpFO5gwHA', false, false, false, true, '', 'Youtube Link', 289);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (832, '', '', 'https://www.youtube.com/watch?v=c4TZ96ih8CA', true, false, false, true, '', 'Youtube Link', 290);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (833, '', '', 'https://www.youtube.com/watch?v=syI6GWyN2Js', false, false, false, true, '', 'Youtube Link', 290);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (834, '', '', 'https://www.youtube.com/watch?v=pRG4pYmKL78', false, false, false, true, '', 'Youtube Link', 290);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (835, '', '', 'https://www.behance.net/gallery/140591245/Thanksgiving-menu-design/modules/794428625', true, false, false, true, '', 'Other Document', 291);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (836, '', '', 'https://behance.net/gallery/127320177/Dhara-Eid-Poster-design-Eid-ad-cooking-oil/modules/722428619', false, false, false, true, '', 'Other Document', 291);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (837, '', '', 'https://behance.net/gallery/127395089/Safal-stickers-IPL-x-frozen-snacks-stickers/modules/722674729', false, false, false, true, '', 'Other Document', 291);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (838, '', '', 'https://youtu.be/56c0lD2dkbA', true, false, false, true, '', 'Youtube Link', 292);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (839, '', '', 'https://youtu.be/wjZmzvOpzUE', false, false, false, true, '', 'Youtube Link', 292);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (840, '', '', 'https://youtu.be/IPkuBzvXz0g', false, false, false, true, '', 'Youtube Link', 292);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (841, '', '', 'https://behance.net/gallery/129432107/Coffee-Pup-Social-media-post/modules/733482423', false, false, false, true, '', 'Other Document', 293);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (842, '', '', 'https://www.behance.net/gallery/148408047/Cinematic_Text-Animation/modules/838306629', false, false, false, true, '', 'Other Document', 293);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (843, '', '', 'https://www.behance.net/gallery/121245055/Motion-Graphics-04/modules/689841093', false, false, false, true, '', 'Other Document', 293);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (844, '', '', 'https://youtu.be/bFC3QeVE8pk', true, false, false, true, '', 'Youtube Link', 294);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (847, '', '', 'https://www.behance.net/gallery/160064431/1-Day-task-of-designing/modules/903093367', true, false, false, true, '', 'Other Document', 295);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (848, '', '', 'https://www.behance.net/gallery/159212307/Public-Welfare-Posters/modules/898344731', false, false, false, true, '', 'Other Document', 295);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (849, '', '', 'https://www.behance.net/gallery/159215519/Marathi-Ad-Design/modules/898363043', false, false, false, true, '', 'Other Document', 295);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (850, '', '', 'https://youtu.be/fy3kamO0b_Y', true, false, false, true, '', 'Youtube Link', 296);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (851, '', '', 'https://youtu.be/MgVPhOEHVOU', false, false, false, true, '', 'Youtube Link', 296);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (852, '', '', 'https://youtu.be/Wn0k-Z77SXw', false, false, false, true, '', 'Youtube Link', 296);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (853, '', '', 'https://instagram.com/p/CnJesy-Bv1I/embed', true, false, false, true, '', 'Instagram Link', 297);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (854, '', '', 'https://www.instagram.com/p/CcrtH1zl_yl/embed', false, false, false, true, '', 'Instagram Link', 297);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (855, '', '', 'https://www.instagram.com/p/CmWjsmJOQqS/embed', false, false, false, true, '', 'Instagram Link', 297);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (856, '', '', 'https://www.instagram.com/p/CKZCXXajS8c/embed', true, false, false, true, '', 'Instagram Link', 298);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (857, '', '', 'https://www.instagram.com/p/CSTb-fNj0gp/embed', false, false, false, true, '', 'Instagram Link', 298);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (858, '', '', 'https://www.instagram.com/p/CGbzg3zA6Up/embed', false, false, false, true, '', 'Instagram Link', 298);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (859, '', '', 'https://www.instagram.com/p/CjFuyLDjJpH/embed', true, false, false, true, '', 'Instagram Link', 299);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (860, '', '', 'https://www.instagram.com/p/CfG9aEBKMwk/embed', false, false, false, true, '', 'Instagram Link', 299);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (861, '', '', 'https://www.instagram.com/p/Cdf1s9HFJWz/embed', false, false, false, true, '', 'Instagram Link', 299);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (862, '', '', 'https://www.instagram.com/p/B_mj4LEDIjr/embed', true, false, false, true, '', 'Instagram Link', 300);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (868, '', '', 'https://creativepool.com/', true, false, false, true, '', '', 302);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (869, '', '', 'https://creativepool.com/souvikfilms/projects/promotional-video-for-sonyliv-original-for-sonyliv', false, false, false, true, '', 'Other Document', 302);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (870, '', '', 'https://creativepool.com/souvikfilms/projects/amazon-original-for-amazon-prime', false, false, false, true, '', 'Other Document', 302);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (871, '', '', 'https://www.youtube.com/watch?v=LdVcxkHLpUs', true, false, false, true, '', 'Youtube Link', 303);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (872, '', '', 'https://www.youtube.com/watch?v=jPeJfEVH7-M', false, false, false, true, '', 'Youtube Link', 303);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (873, '', '', 'https://www.youtube.com/watch?v=-uxJaZ6A-0k', false, false, false, true, '', 'Youtube Link', 303);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (874, '', '', 'https://drive.google.com/file/d/13pk-jxcg6ndTDfhPOu0DqcMR-7Ijvwp4/view?usp=sharing', true, false, false, true, '', 'Other Document', 304);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (875, '', '', 'https://drive.google.com/file/d/14c37LF7SUG6nsD_PVqEbXAMlaHK7nKP7/view?usp=sharing', false, false, false, true, '', 'Other Document', 304);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (876, '', '', 'https://drive.google.com/file/d/1MZhBJ5hXYdj3nE-tBTxpsZfLpLkL6Ar6/view?usp=sharing', false, false, false, true, '', 'Other Document', 304);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (877, '', '', 'https://www.youtube.com/watch?v=bbVNE5yNJDQ', true, false, false, true, '', 'Youtube Link', 305);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (878, '', '', 'https://www.youtube.com/watch?v=UHPha4cGhII', false, false, false, true, '', 'Youtube Link', 305);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (880, '', '', 'https://youtu.be/I_KSgW6uOfo', true, false, false, true, '', 'Youtube Link', 306);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (881, '', '', 'https://youtu.be/TntVDiwXGqs', false, false, false, true, '', 'Youtube Link', 306);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (882, '', '', 'https://youtu.be/ACXy1aumSxU', false, false, false, true, '', 'Youtube Link', 306);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (883, '', '', 'https://www.instagram.com/p/CdlRkY9Jzi3/embed', true, false, false, true, '', 'Instagram Link', 307);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (884, '', '', 'https://www.instagram.com/p/CbO-pFqlSHM/embed', false, false, false, true, '', 'Instagram Link', 307);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (885, '', '', 'https://www.instagram.com/p/CajgJGblQpj/embed', false, false, false, true, '', 'Instagram Link', 307);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (886, '', '', 'https://drive.google.com/file/d/1Yap9hoET01n0THek_adxdtoFO7_lEP6N/view?usp=sharing', true, false, false, true, '', 'Other Document', 308);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (887, '', '', 'https://drive.google.com/file/d/1Yc8RPow-oolrNzlcEbJO7kddilAv3i7n/view?usp=sharing', false, false, false, true, '', 'Other Document', 308);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (888, '', '', 'https://drive.google.com/file/d/1Yi_WRanjRu2qhoFYh54CMYbvRyYBC6sZ/view?usp=sharing', false, false, false, true, '', 'Other Document', 308);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (889, '', '', 'https://www.instagram.com/p/CnJ9JWuhMmh/embed', true, false, false, true, '', 'Instagram Link', 309);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (890, '', '', 'https://www.instagram.com/p/ClULOArBcpe/embed', false, false, false, true, '', 'Instagram Link', 309);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (891, '', '', 'https://www.instagram.com/p/Cln-VPxDqSX/embed', false, false, false, true, '', 'Instagram Link', 309);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (892, '', '', 'https://youtu.be/zbJ_tpWhL40', true, false, false, true, '', 'Youtube Link', 310);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (893, '', '', 'https://youtu.be/BQ9CfPx1aUk', false, false, false, true, '', 'Youtube Link', 310);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (894, '', '', 'https://youtu.be/gpalZxvs7tE', false, false, false, true, '', 'Youtube Link', 310);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (895, '', '', 'https://youtu.be/v75zuYswZdU', true, false, false, true, '', 'Youtube Link', 311);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (896, '', '', 'https://youtu.be/_6Kz1vGVlVo', false, false, false, true, '', 'Youtube Link', 311);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (897, '', '', 'https://youtu.be/LwyFsu7SXQc', false, false, false, true, '', 'Youtube Link', 311);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (898, '', '', 'https://www.instagram.com/p/CbmGXoPr-vf/embed', true, false, false, true, '', 'Instagram Link', 312);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (899, '', '', 'https://www.instagram.com/p/CWrzxZZI5st/embed', false, false, false, true, '', 'Instagram Link', 312);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (900, '', '', 'https://www.instagram.com/p/CPX37dLhQqT/embed', false, false, false, true, '', 'Instagram Link', 312);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (901, '', '', 'https://www.instagram.com/p/CW8TIisjpFf/embed', true, false, false, true, '', 'Instagram Link', 313);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (902, '', '', 'https://www.instagram.com/p/CW8TYPWD3HM/embed', false, false, false, true, '', 'Instagram Link', 313);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (903, '', '', 'https://www.instagram.com/p/CW8UdoLDkuk/embed', false, false, false, true, '', 'Instagram Link', 313);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (904, '', '', 'https://soundcloud.com/user-274570467/tvc-walt-disney-world-resort', true, false, false, true, '', 'Soundcloud Link', 314);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (905, '', '', 'https://soundcloud.com/user-274570467/tvc-hindi-marriot', false, false, false, true, '', 'Soundcloud Link', 314);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (906, '', '', 'https://soundcloud.com/user-274570467/tag-line-scorpio', false, false, false, true, '', 'Soundcloud Link', 314);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (907, '', '', 'https://www.instagram.com/p/CnWnqbbr3fX/embed', true, false, false, true, '', 'Instagram Link', 315);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (908, '', '', 'https://www.instagram.com/p/Cms16bsvay1/embed', false, false, false, true, '', 'Instagram Link', 315);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (909, '', '', 'https://www.instagram.com/p/ClqaX7rMT9q/embed', false, false, false, true, '', 'Instagram Link', 315);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (910, '', '', 'https://www.instagram.com/p/CmZiY3JjPrL/embed', true, false, false, true, '', 'Instagram Link', 316);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (911, '', '', 'https://www.instagram.com/p/CmSAWVcJcSG/embed', false, false, false, true, '', 'Instagram Link', 316);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (912, '', '', 'https://www.instagram.com/p/CnEwkMqpKH4/embed', false, false, false, true, '', 'Instagram Link', 316);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (913, '', '', 'https://www.instagram.com/p/CnFS1X6okPs/embed', true, false, false, true, '', 'Instagram Link', 317);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (914, '', '', 'https://www.instagram.com/p/Cm9hvFwof8x/embed', false, false, false, true, '', 'Instagram Link', 317);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (915, '', '', 'https://www.instagram.com/p/CgymJgOgAwb/embed', false, false, false, true, '', 'Instagram Link', 317);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (916, '', '', 'https://www.instagram.com/p/CfN5v6aKg3R/embed', true, false, false, true, '', 'Instagram Link', 318);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (917, '', '', 'https://www.instagram.com/p/CefYJXXq3bb/embed', false, false, false, true, '', 'Instagram Link', 318);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (918, '', '', 'https://www.instagram.com/p/CgoC72IFjJH/embed', false, false, false, true, '', 'Instagram Link', 318);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (919, '', '', 'https://www.instagram.com/p/Cmq4fwLIPmO/embed', true, false, false, true, '', 'Instagram Link', 319);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (920, '', '', 'https://www.instagram.com/p/ChAIJoEupmY/embed', false, false, false, true, '', 'Instagram Link', 319);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (921, '', '', 'https://www.instagram.com/p/CkU0dQsLwk6/embed', false, false, false, true, '', 'Instagram Link', 319);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (922, '', '', 'https://www.instagram.com/p/CirwzzFgr6x/embed', true, false, false, true, '', 'Instagram Link', 320);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (923, '', '', 'https://www.instagram.com/p/Ci47q5lov2t/embed', false, false, false, true, '', 'Instagram Link', 320);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (924, '', '', 'https://www.instagram.com/p/CjUbtQVAJcx/embed', false, false, false, true, '', 'Instagram Link', 320);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (925, '', '', 'https://www.instagram.com/p/CjQJlwVtHG8/embed', true, false, false, true, '', 'Instagram Link', 321);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (926, '', '', 'https://www.instagram.com/p/CkLsn-FpZtc/embed', false, false, false, true, '', 'Instagram Link', 321);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (927, '', '', 'https://www.instagram.com/p/Cb7ti2JJtxf/embed', false, false, false, true, '', 'Instagram Link', 321);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (928, '', '', 'https://www.instagram.com/p/Cmj-N8chq1d/embed', true, false, false, true, '', 'Instagram Link', 322);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (929, '', '', 'https://www.instagram.com/p/CmzQAKyBz8m/embed', false, false, false, true, '', 'Instagram Link', 322);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (930, '', '', 'https://www.instagram.com/p/Cm9qGdgBiqK/embed', false, false, false, true, '', 'Instagram Link', 322);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (931, '', '', 'https://www.instagram.com/p/CcaPAwBD6Hi/embed', true, false, false, true, '', 'Instagram Link', 323);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (932, '', '', 'https://www.instagram.com/p/CbZWOaeI5tO/embed', false, false, false, true, '', 'Instagram Link', 323);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (933, '', '', 'https://www.instagram.com/p/CY5iZQ_jmJa/embed', false, false, false, true, '', 'Instagram Link', 323);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (934, '', '', 'https://www.instagram.com/p/CmZFLsAsdjd/embed', true, false, false, true, '', 'Instagram Link', 324);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (935, '', '', 'https://www.instagram.com/p/Cln8ZyqDk7h/embed', false, false, false, true, '', 'Instagram Link', 324);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (936, '', '', 'https://www.instagram.com/p/ClTPB2vPe5N/embed', false, false, false, true, '', 'Instagram Link', 324);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (937, '', '', 'https://www.instagram.com/p/BwW5vq_F_Oe/embed', true, false, false, true, '', 'Instagram Link', 325);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (938, '', '', 'https://www.instagram.com/p/BuvtYU3lkF5/embed', false, false, false, true, '', 'Instagram Link', 325);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (939, '', '', 'https://www.instagram.com/p/BzLGzUnFwpk/embed', false, false, false, true, '', 'Instagram Link', 325);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (940, '', '', 'https://www.instagram.com/p/CPmsybHnzlK/embed', true, false, false, true, '', 'Instagram Link', 326);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (941, '', '', 'https://www.instagram.com/p/CmTeGUmAJC2/embed', false, false, false, true, '', 'Instagram Link', 326);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (942, '', '', 'https://www.instagram.com/p/CcAlaTTlTgO/embed', false, false, false, true, '', 'Instagram Link', 326);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (943, '', '', 'https://www.instagram.com/p/CmvtY4LIvYR/embed', true, false, false, true, '', 'Instagram Link', 327);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (944, '', '', 'https://www.instagram.com/p/CeLjVKVqrU1/embed', false, false, false, true, '', 'Instagram Link', 327);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (945, '', '', 'https://www.instagram.com/p/CmLMYZthAg3/embed', false, false, false, true, '', 'Instagram Link', 327);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (946, '', '', 'https://www.instagram.com/p/CYoEvwmhXMn/embed', true, false, false, true, '', 'Instagram Link', 328);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (947, '', '', 'https://www.instagram.com/p/CQNrYIfIAiG/embed', false, false, false, true, '', 'Instagram Link', 328);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (948, '', '', 'https://www.instagram.com/p/CRSvcjJFgSD/embed', false, false, false, true, '', 'Instagram Link', 328);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (949, '', '', 'https://www.instagram.com/p/ClkvMF5qv6M/embed', true, false, false, true, '', 'Instagram Link', 329);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (950, '', '', 'https://www.instagram.com/p/ChH6ekzB0GQ/embed', false, false, false, true, '', 'Instagram Link', 329);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (951, '', '', 'https://www.instagram.com/p/Chy0LhMK1in/embed', false, false, false, true, '', 'Instagram Link', 329);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (952, '', '', 'https://www.instagram.com/p/CSeqPoqo43g/embed', true, false, false, true, '', 'Instagram Link', 330);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (953, '', '', 'https://www.instagram.com/p/CR5nlkMCfvu/embed', false, false, false, true, '', 'Instagram Link', 330);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (954, '', '', 'https://www.instagram.com/p/CM4T-1GJPqb/embed', false, false, false, true, '', 'Instagram Link', 330);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (955, '', '', 'https://www.instagram.com/p/CgziBG6IBUu/embed', true, false, false, true, '', 'Instagram Link', 331);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (956, '', '', 'https://www.instagram.com/p/Cf8OhEAOVQz/embed', false, false, false, true, '', 'Instagram Link', 331);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (957, '', '', 'https://www.instagram.com/p/CbIyEROPSQD/embed', false, false, false, true, '', 'Instagram Link', 331);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (958, '', '', 'https://www.instagram.com/p/CjicZSghPz2/embed', true, false, false, true, '', 'Instagram Link', 332);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (959, '', '', 'https://www.instagram.com/p/CdCo-bZDJOX/embed', false, false, false, true, '', 'Instagram Link', 332);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (960, '', '', 'https://www.instagram.com/p/CjItpLOBuVe/embed', false, false, false, true, '', 'Instagram Link', 332);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (964, '', '', 'https://www.instagram.com/p/CkyViJwDQV8/embed', true, false, false, true, '', 'Instagram Link', 334);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (965, '', '', 'https://www.instagram.com/p/CBgDk1aFgHe/embed', false, false, false, true, '', 'Instagram Link', 334);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (966, '', '', 'https://www.instagram.com/p/CBueNPqDrch/embed', false, false, false, true, '', 'Instagram Link', 334);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (967, '', '', 'https://www.instagram.com/p/Cik5ln4N1aL/embed', true, false, false, true, '', 'Instagram Link', 335);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (968, '', '', 'https://www.instagram.com/p/Cik710lgI3f/embed', false, false, false, true, '', 'Instagram Link', 335);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (969, '', '', 'https://www.instagram.com/p/Cg_8ud4JSXp/embed', false, false, false, true, '', 'Instagram Link', 335);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (970, '', '', 'https://www.instagram.com/p/CXL7zDogq5l/embed', true, false, false, true, '', 'Instagram Link', 336);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (971, '', '', 'https://www.instagram.com/p/Bz4__RrnK_6/embed', false, false, false, true, '', 'Instagram Link', 336);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (972, '', '', 'https://www.instagram.com/p/B0QpSQzH24M/embed', false, false, false, true, '', 'Instagram Link', 336);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (973, '', '', 'https://www.instagram.com/p/CnO6738ICC8/embed', true, false, false, true, '', 'Instagram Link', 337);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (974, '', '', 'https://www.instagram.com/p/Cnbe4BQI9yx/embed', false, false, false, true, '', 'Instagram Link', 337);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (975, '', '', 'https://www.instagram.com/p/CnLkJKrqobR/embed', false, false, false, true, '', 'Instagram Link', 337);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (976, '', '', 'https://youtu.be/dA7iFpPiono', true, false, false, true, '', 'Youtube Link', 338);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (977, '', '', 'https://youtu.be/ztjKh8VkIWg', false, false, false, true, '', 'Youtube Link', 338);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (978, '', '', 'https://youtu.be/8KU8s0ZJdzM', false, false, false, true, '', 'Youtube Link', 338);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (979, '', '', 'https://www.instagram.com/p/CkAecyxgB_-/embed', true, false, false, true, '', 'Instagram Link', 339);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (980, '', '', 'https://www.instagram.com/p/CnWMdAsKIjm/embed', false, false, false, true, '', 'Instagram Link', 339);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (981, '', '', 'https://www.instagram.com/p/CmPAs4CAqyk/embed', false, false, false, true, '', 'Instagram Link', 339);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (982, '', '', 'https://www.instagram.com/p/Cm08WrpOMf4/embed', true, false, false, true, '', 'Instagram Link', 340);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (983, '', '', 'https://www.instagram.com/p/CkaYcy5JRNI/embed', false, false, false, true, '', 'Instagram Link', 340);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (984, '', '', 'https://www.instagram.com/p/CnE7HixN9gP/embed', false, false, false, true, '', 'Instagram Link', 340);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (985, '', '', 'https://www.instagram.com/p/Cm1JOYQBIJU/embed', true, false, false, true, '', 'Instagram Link', 341);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (986, '', '', 'https://www.instagram.com/p/Cmbs38ehVvE/embed', false, false, false, true, '', 'Instagram Link', 341);
INSERT INTO public.profiles_work (id, name, details, weblink, show_in_top_feed, is_demo, from_client, is_active, file, demo_type, owner_id) VALUES (987, '', '', 'https://www.instagram.com/p/ClvnE1ZAwsA/embed', false, false, false, true, '', 'Instagram Link', 279);


--
-- Data for Name: profiles_artist_works_links; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (341, 279, 799);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (342, 280, 802);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (343, 281, 805);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (344, 281, 806);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (345, 281, 807);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (346, 282, 808);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (347, 282, 809);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (348, 282, 810);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (349, 283, 811);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (350, 283, 812);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (351, 283, 813);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (352, 284, 816);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (353, 284, 814);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (354, 284, 815);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (355, 285, 817);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (356, 285, 818);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (357, 285, 819);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (358, 286, 820);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (359, 286, 821);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (360, 286, 822);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (361, 287, 824);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (362, 287, 825);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (363, 287, 823);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (364, 288, 826);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (365, 289, 829);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (366, 289, 830);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (367, 289, 831);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (368, 290, 832);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (369, 290, 833);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (370, 290, 834);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (371, 291, 835);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (372, 291, 836);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (373, 291, 837);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (374, 292, 840);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (375, 292, 838);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (376, 292, 839);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (377, 293, 841);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (378, 293, 842);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (379, 293, 843);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (380, 294, 844);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (381, 295, 848);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (382, 295, 849);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (383, 295, 847);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (384, 296, 850);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (385, 296, 851);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (386, 296, 852);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (387, 297, 853);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (388, 297, 854);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (389, 297, 855);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (390, 298, 856);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (391, 298, 857);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (392, 298, 858);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (393, 299, 859);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (394, 299, 860);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (395, 299, 861);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (396, 300, 862);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (397, 302, 868);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (398, 302, 869);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (399, 302, 870);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (400, 303, 872);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (401, 303, 873);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (402, 303, 871);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (403, 304, 874);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (404, 304, 875);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (405, 304, 876);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (406, 305, 877);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (407, 305, 878);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (408, 306, 880);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (409, 306, 881);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (410, 306, 882);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (411, 307, 883);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (412, 307, 884);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (413, 307, 885);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (414, 308, 888);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (415, 308, 886);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (416, 308, 887);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (417, 309, 889);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (418, 309, 890);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (419, 309, 891);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (420, 310, 892);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (421, 310, 893);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (422, 310, 894);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (423, 311, 896);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (424, 311, 897);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (425, 311, 895);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (426, 312, 898);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (427, 312, 899);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (428, 312, 900);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (429, 313, 901);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (430, 313, 902);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (431, 313, 903);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (432, 314, 904);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (433, 314, 905);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (434, 314, 906);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (435, 315, 907);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (436, 315, 908);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (437, 315, 909);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (438, 316, 912);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (439, 316, 910);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (440, 316, 911);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (441, 317, 913);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (442, 317, 914);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (443, 317, 915);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (444, 318, 916);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (445, 318, 917);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (446, 318, 918);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (447, 319, 920);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (448, 319, 921);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (449, 319, 919);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (450, 320, 922);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (451, 320, 923);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (452, 320, 924);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (453, 321, 925);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (454, 321, 926);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (455, 321, 927);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (456, 322, 928);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (457, 322, 929);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (458, 322, 930);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (459, 323, 931);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (460, 323, 932);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (461, 323, 933);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (462, 324, 936);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (463, 324, 934);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (464, 324, 935);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (465, 325, 937);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (466, 325, 938);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (467, 325, 939);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (468, 326, 940);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (469, 326, 941);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (470, 326, 942);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (471, 327, 944);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (472, 327, 945);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (473, 327, 943);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (474, 328, 946);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (475, 328, 947);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (476, 328, 948);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (477, 329, 949);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (478, 329, 950);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (479, 329, 951);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (480, 330, 952);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (481, 330, 953);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (482, 330, 954);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (483, 331, 955);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (484, 331, 956);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (485, 331, 957);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (486, 332, 960);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (487, 332, 958);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (488, 332, 959);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (489, 334, 964);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (490, 334, 965);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (491, 334, 966);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (492, 335, 968);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (493, 335, 969);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (494, 335, 967);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (495, 336, 970);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (496, 336, 971);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (497, 336, 972);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (498, 337, 973);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (499, 337, 974);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (500, 337, 975);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (501, 338, 976);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (502, 338, 977);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (503, 338, 978);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (504, 339, 979);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (505, 339, 980);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (506, 339, 981);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (507, 341, 985);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (508, 341, 986);
INSERT INTO public.profiles_artist_works_links (id, artist_id, work_id) VALUES (509, 341, 987);


--
-- Data for Name: profiles_artistfeedback; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_client; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_client (id, name, email, email_confirmed, client_previous_payout, production_suggested_project_advance, latest_project_advance, latest_client_payout_status, total_client_payout, contract_document_signing_status, user_id, image, phone, company, website) VALUES (1, 'admin', '', false, 0, 0, 0, '', 0, '', 1, 'profile_pics\default.jpg', NULL, NULL, NULL);
INSERT INTO public.profiles_client (id, name, email, email_confirmed, client_previous_payout, production_suggested_project_advance, latest_project_advance, latest_client_payout_status, total_client_payout, contract_document_signing_status, user_id, image, phone, company, website) VALUES (2, 'aditya', 'aditya@gmail.com', false, 0, 0, 0, '', 0, '', 2, 'profile_pics\default.jpg', NULL, NULL, NULL);
INSERT INTO public.profiles_client (id, name, email, email_confirmed, client_previous_payout, production_suggested_project_advance, latest_project_advance, latest_client_payout_status, total_client_payout, contract_document_signing_status, user_id, image, phone, company, website) VALUES (30, 'admin5508917@gmail.com', 'admin5508917@gmail.com', false, 0, 0, 0, '', 0, '', 30, 'profile_pics\default.jpg', NULL, '', NULL);
INSERT INTO public.profiles_client (id, name, email, email_confirmed, client_previous_payout, production_suggested_project_advance, latest_project_advance, latest_client_payout_status, total_client_payout, contract_document_signing_status, user_id, image, phone, company, website) VALUES (31, 'admin8917@gmail.com', 'admin8917@gmail.com', false, 0, 0, 0, '', 0, '', 31, 'profile_pics\default.jpg', NULL, '', NULL);
INSERT INTO public.profiles_client (id, name, email, email_confirmed, client_previous_payout, production_suggested_project_advance, latest_project_advance, latest_client_payout_status, total_client_payout, contract_document_signing_status, user_id, image, phone, company, website) VALUES (32, 'Muskan', 'muskan@gmail.com', false, 0, 0, 0, '', 0, '', 32, 'profile_pics\default.jpg', NULL, NULL, NULL);
INSERT INTO public.profiles_client (id, name, email, email_confirmed, client_previous_payout, production_suggested_project_advance, latest_project_advance, latest_client_payout_status, total_client_payout, contract_document_signing_status, user_id, image, phone, company, website) VALUES (33, '', 'adi45217@gmail.com', false, 0, 0, 0, '', 0, '', 36, 'profile_pics\default.jpg', '+918437389754', 'Google', NULL);
INSERT INTO public.profiles_client (id, name, email, email_confirmed, client_previous_payout, production_suggested_project_advance, latest_project_advance, latest_client_payout_status, total_client_payout, contract_document_signing_status, user_id, image, phone, company, website) VALUES (34, '', 'muskan123@gmail.com', false, 0, 0, 0, '', 0, '', 37, 'profile_pics\default.jpg', '+918437389754', 'Google', NULL);


--
-- Data for Name: profiles_templateprojects; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_templateprojects (id, name, details, file, weblink) VALUES (1, 'Chat Show', 'Design & create your own chat show series for Social Media Video Content', '', '');
INSERT INTO public.profiles_templateprojects (id, name, details, file, weblink) VALUES (2, 'Documentary', 'For producing Corporate Videos, Product and Service Showcase Videos', '', '');
INSERT INTO public.profiles_templateprojects (id, name, details, file, weblink) VALUES (3, 'Musical', 'For producing Full Band Songs & Jingles, with / without Videos, for Digital Media', '', '');
INSERT INTO public.profiles_templateprojects (id, name, details, file, weblink) VALUES (4, 'Fiction & Reality', 'For scripting, direction & production of Ad Film, Brand Short Film, and Brand Web Series.', '', '');
INSERT INTO public.profiles_templateprojects (id, name, details, file, weblink) VALUES (5, 'Web 3.0 Solutions', 'Augmented Reality & Virtual Reality Content for Digital Innovation', '', '');
INSERT INTO public.profiles_templateprojects (id, name, details, file, weblink) VALUES (6, 'Artwork', 'Select for writing & designing Artworks for Website, Banners & Social Media Posts (Static / Animated / Graphical), OOH, Business Collaterals and more', '', '');


--
-- Data for Name: profiles_project; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (19, 'DreamProject', '[{"msgID":1,"user":"Chat Show"},{"actionResponse":true,"msgID":2,"bot":"Great! Hyundai Account let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"msgID":3,"user":"Director"},{"type":"shortlistedArtist","msgID":4,"artist":{"artistID":281,"name":"Anand Tiwari"}},{"msgID":5,"user":"Music Producer"},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":283,"name":"Shantanu"}}]', '', '', '', '', false, 1, 1, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Chat Show');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (20, 'Lead', '[{"msgID":1,"user":"Artwork"},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"type":"shortlistedArtist","msgID":3,"artist":{"artistID":279,"name":"Amogh Verma"}}]', '', '', '', '', false, 1, 6, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Artwork');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (14, 'DreamProject', '[{"msgID":1,"user":"Artwork"},{"actionResponse":true,"msgID":2,"bot":"Great! Hyundai Account let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"type":"shortlistedArtist","msgID":3,"artist":{"artistID":279,"name":"Amogh Verma"}}]', '', '', '', '', false, 1, 6, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Artwork');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (21, 'Lead', '[{"msgID":1,"user":"Chat Show"},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"type":"shortlistedArtist","msgID":3,"artist":{"artistID":292,"name":"Ramiz B."}},{"msgID":4,"user":"Music Producer"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":299,"name":"Arjun Kanungo"}},{"msgID":6,"user":"Video Producer"},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":286,"name":"Subhodeep Dasgupta"}}]', '', '', '', '', false, 1, 1, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Chat Show');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (22, 'Lead', '[{"type":"shortlistedArtist","msgID":1,"artist":{"artistID":279,"name":"Amogh Verma"}},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"type":"shortlistedArtist","msgID":3,"artist":{"artistID":286,"name":"Subhodeep Dasgupta"}},{"type":"shortlistedArtist","msgID":4,"artist":{"artistID":305,"name":"Mahrukh Ali Ansari"}},{"msgID":5,"user":"Video Producer"},{"msgID":6,"user":"Chat Show"},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":292,"name":"Ramiz B."}},{"type": "shortlistedArtist", "msgID": 8, "artist": {"artistID": 282, "name": "bellaofficials"}, "message": "hi how are you?"},{"msgID": 9, "bot": "I don''t understand. What did you say? Try with another message."}]', '', '', '', '', false, 1, 1, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Chat Show');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (23, 'Lead', '[{"msgID":1,"user":"Documentary"},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"msgID":3,"user":"Music Producer"},{"type":"shortlistedArtist","msgID":4,"artist":{"artistID":292,"name":"Ramiz B."}},{"msgID":5,"user":"Music Producer"}]', '', '', '', '', false, 1, 2, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Documentary');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (15, 'Lead', '[{"msgID":1,"user":"Artwork"},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"msgID":3,"user":"Musical"},{"msgID":4,"user":"Chat Show"},{"msgID":5,"user":"Documentary"},{"msgID":6,"user":"Web 3.0 Solutions"},{"msgID":7,"user":"Writer"},{"msgID":8,"user":"Music Producer"},{"msgID":9,"user":"Voice Over Artist"},{"msgID":10,"user":"2D animation Artist"},{"type":"shortlistedArtist","msgID":11,"artist":{"artistID":281,"name":"Anand Tiwari"}},{"type":"shortlistedArtist","msgID":12,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":13,"artist":{"artistID":280,"name":"Amogh Verma"}},{"msgID":14,"user":"Artwork"},{"msgID":15,"user":"2D animation Artist"},{"msgID":16,"user":"Graphic Designer"},{"msgID":17,"user":"Writer"},{"type":"shortlistedArtist","msgID":18,"artist":{"artistID":283,"name":"Shantanu"}}]', '', '', '', '', false, 1, 6, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Artwork');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (16, 'Lead', '[{"msgID":1,"user":"Chat Show"},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"msgID":3,"user":"Music Producer"},{"type":"shortlistedArtist","msgID":4,"artist":{"artistID":283,"name":"Shantanu"}},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":292,"name":"Ramiz B."}},{"msgID":6,"user":"Writer"}]', '', '', '', '', false, 1, 1, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Chat Show');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (17, 'Lead', '[{"type":"shortlistedArtist","msgID":1,"artist":{"artistID":279,"name":"Amogh Verma"}},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"msgID":3,"user":"Video Producer"},{"msgID":4,"user":"Chat Show"},{"msgID":5,"user":"Music Producer"},{"msgID":6,"user":"Director"},{"msgID":7,"user":"Voice Over Artist"},{"msgID":8,"user":"Writer"},{"type":"shortlistedArtist","msgID":9,"artist":{"artistID":283,"name":"Shantanu"}},{"type":"shortlistedArtist","msgID":10,"artist":{"artistID":292,"name":"Ramiz B."}},{"type":"shortlistedArtist","msgID":11,"artist":{"artistID":281,"name":"Anand Tiwari"}},{"msgID":12,"user":"Music Producer"},{"msgID":13,"user":"Writer"},{"msgID":14,"user":"Voice Over Artist"},{"msgID":15,"user":"Influencer"},{"msgID":16,"user":"Actor"},{"msgID":17,"user":"Actress"},{"msgID":18,"user":"2D animation Artist"}]', '', '', '', '', false, 1, 1, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Chat Show');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (18, 'Lead', '[{"type":"shortlistedArtist","msgID":1,"artist":{"artistID":279,"name":"Amogh Verma"}},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"msgID":3,"user":"Video Producer"},{"msgID":4,"user":"Chat Show"},{"msgID":5,"user":"Music Producer"},{"msgID":6,"user":"Director"},{"msgID":7,"user":"Voice Over Artist"},{"msgID":8,"user":"Writer"},{"type":"shortlistedArtist","msgID":9,"artist":{"artistID":283,"name":"Shantanu"}},{"type":"shortlistedArtist","msgID":10,"artist":{"artistID":292,"name":"Ramiz B."}},{"type":"shortlistedArtist","msgID":11,"artist":{"artistID":281,"name":"Anand Tiwari"}},{"msgID":12,"user":"Music Producer"},{"msgID":13,"user":"Writer"},{"msgID":14,"user":"Voice Over Artist"},{"msgID":15,"user":"Influencer"},{"msgID":16,"user":"Actor"},{"msgID":17,"user":"Actress"},{"msgID":18,"user":"2D animation Artist"}]', '', '', '', '', false, 1, 1, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Chat Show');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (24, 'Lead', '[{"msgID":1,"user":"Musical"},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"msgID":3,"user":"Music Producer"},{"type":"shortlistedArtist","msgID":4,"artist":{"artistID":285,"name":"Vasu Kainth"}}]', '', '', '', '', false, 1, 3, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Musical');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (25, 'Lead', '[{"msgID":1,"user":"Musical"},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"msgID":3,"user":"Music Producer"},{"type":"shortlistedArtist","msgID":4,"artist":{"artistID":285,"name":"Vasu Kainth"}}]', '', '', '', '', false, 1, 3, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Musical');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (26, 'Lead', '[{"msgID":1,"user":"Chat Show"},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"type":"shortlistedArtist","msgID":3,"artist":{"artistID":292,"name":"Ramiz B."}},{"msgID":4,"user":"Music Producer"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":299,"name":"Arjun Kanungo"}},{"msgID":6,"user":"Video Producer"},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":286,"name":"Subhodeep Dasgupta"}}]', '', '', '', '', false, 1, 1, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Chat Show');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (27, 'Lead', '[{"msgID":1,"user":"Documentary"},{"actionResponse":true,"msgID":2,"bot":"Great! Maruf let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."},{"msgID":3,"user":"Music Producer"},{"type":"shortlistedArtist","msgID":4,"artist":{"artistID":283,"name":"Shantanu"}},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":281,"name":"Anand Tiwari"}},{"msgID":6,"user":"Artwork"},{''msgID'': 7, ''message'': ''hello world''},{''msgID'': 8, ''message'': ''hello world 2''}]', '', '', '', '', false, 1, 6, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', NULL, 0, 'Artwork');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (28, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, NULL, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-etgmlcyhju', 0, ' - Lead - 28');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (38, 'Lead', '[{"type":"shortlistedArtist","msgID":1,"artist":{"artistID":280,"name":"Amogh Verma"}},{"actionResponse":true,"msgID":2,"bot":"Great!   let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."}]', '', '', 'https://developers.docusign.com/docs/esign-rest-api/quickstart/', 'Unpaid', false, 1, 2, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, 'https://developers.docusign.com/docs/esign-rest-api/quickstart/', 'nsn-project-tmxoddxeph', 0, 'Mycompany');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (29, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, NULL, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-tvycnartsr', 0, ' - Lead - 29');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (30, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, NULL, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-hbbljpeqoh', 0, ' - Lead - 30');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (31, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, NULL, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-ungssohxye', 0, ' - Lead - 31');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (32, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, NULL, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-crtaiprztj', 0, ' - Lead - 32');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (33, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, NULL, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-ypuytjizuo', 0, ' - Lead - 33');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (34, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, NULL, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-jrlruvhgom', 0, ' - Lead - 34');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (35, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, NULL, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-gvkqgddowk', 0, ' - Lead - 35');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (36, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, NULL, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-jozbdsurju', 0, ' - Lead - 36');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (37, 'Lead', '[{"type":"shortlistedArtist","msgID":1,"artist":{"artistID":280,"name":"Amogh Verma"}},{"actionResponse":true,"msgID":2,"bot":"Great!   let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."}]', '', '', 'https://developers.docusign.com/docs/esign-rest-api/quickstart/', 'Unpaid', false, 1, 2, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, 'https://developers.docusign.com/docs/esign-rest-api/quickstart/', 'nsn-project-sznyebhrnq', 0, 'Mycompany');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (39, 'Lead', '[{"type":"shortlistedArtist","msgID":1,"artist":{"artistID":280,"name":"Amogh Verma"}},{"actionResponse":true,"msgID":2,"bot":"Great!   let�s proceed with the project briefing. Share us your thoughts and inputs on your creative project."}]', '', '', 'https://developers.docusign.com/docs/esign-rest-api/quickstart/', 'Unpaid', false, 1, 2, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, 'https://developers.docusign.com/docs/esign-rest-api/quickstart/', 'nsn-project-nrgatposij', 0, 'Mycompany');
INSERT INTO public.profiles_project (id, stage, brief, production_solution, comments, post_project_client_feedback, "project_fee_Status", contract_status, client_id, project_template_id, advance_status, artist_discussion_updates, artist_payout_status, assigned_artist_payouts, final_advance, final_fee_settlement_status, name, negotiated_advance, post_project_client_total_payout, production_advance, reference_links, slug, solution_fee, title) VALUES (40, 'Lead', '[{"msgID":1,"user":"Music Producer"},{"actionResponse":true,"msgID":2,"bot":"Great! Let�s shortlist artist by requirement."},{"msgID":3,"user":"Writer"},{"msgID":4,"user":"Voice Over Artist"},{"type":"shortlistedArtist","msgID":5,"artist":{"artistID":296,"name":"Sheikh Naved"}},{"type":"shortlistedArtist","msgID":6,"artist":{"artistID":297,"name":"RJ Love Shah"}},{"type":"shortlistedArtist","msgID":7,"artist":{"artistID":298,"name":"Anushka Maheshwari"}},{"msgID":8,"user":"test"},{"msgID":8,"bot":"We are a platform for hiring artists and producing content. We provide users with the necessary tools, resources and expertise to bring their project to life. Our team consists of experienced professionals, who can help you get your project done with quality and within the budget."},{"msgID":10,"user":"Chat Show"}]', '', '', '', 'Unpaid', false, 1, 1, 'Pending', '', 'In Progress', 0, 0, false, NULL, 0, 0, 0, '', 'nsn-project-pffmtuxxrj', 0, 'Chat Show - Lead - 40');


--
-- Data for Name: profiles_artistrequest; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_artistrequest_genre; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_artistrequest_languages; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_artistrequest_rejected_artists; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_artistrequest_shortlisted_artists; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_artistrequest_skill; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_chatgptmessage; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_chatgptmessage (id, message) VALUES (1, 'This is Adbhut.io which is a platform to hire artists and produce content. With this, users can produce content including social media posts, graphical and animated content, camera shot videos, music tracks, entire songs, documentaries, short fictional films, reality series, podcasts, campaign websites, and creatively written content. Our business servicing function offers the best-suited Artists with the required skills to get the content project done with the best quality, within the timelines and budgetary requirements.\n\nQ: Who is Founder of Adbhut.io .?\nA: Shankar.\n\nQ: I need help in a chat show?\nA: Okay, we have chat show artist. Tell me more about it.\n\nQ:  Who is founder of adbhut?\nA: The founder of Adbhut.io is Shankar.\n\nQ:  I need produces, video maker?\nA: Yes, we have video makers and producers available. Please provide more details about your project so we can match you with the best suited artist.\n\nQ: who is shankar?\nA: Shankar is the founder of Adbhut.io. He is an experienced entrepreneur and content creator with a passion for creating innovative and engaging content. He has worked with some of the biggest names in the industry and has a wealth of knowledge and experience in the content creation space.\n\nQ:  who are you?\nA: We are Adbhut.io, a platform to hire artists and produce content. We provide the best-suited Artists with the required skills to get the content project done with the best quality, within the timelines and budgetary requirements.');


--
-- Data for Name: profiles_client_projects; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_client_recommended_artists; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_client_recommended_artists (id, client_id, artist_id) VALUES (10, 1, 288);
INSERT INTO public.profiles_client_recommended_artists (id, client_id, artist_id) VALUES (11, 1, 281);
INSERT INTO public.profiles_client_recommended_artists (id, client_id, artist_id) VALUES (12, 1, 282);


--
-- Data for Name: profiles_project_assigned_artists; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_projectdemo; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_project_project_demos; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_project_shortlisted_artists; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (33, 14, 279);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (34, 15, 280);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (35, 15, 281);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (36, 15, 283);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (37, 15, 297);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (38, 16, 283);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (39, 16, 292);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (40, 17, 281);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (41, 17, 283);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (42, 17, 292);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (43, 17, 279);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (44, 18, 281);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (45, 18, 283);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (46, 18, 292);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (47, 18, 279);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (48, 19, 281);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (49, 19, 283);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (50, 21, 299);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (51, 21, 292);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (52, 21, 286);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (53, 22, 305);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (54, 22, 292);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (55, 22, 286);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (56, 22, 279);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (57, 23, 292);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (58, 24, 285);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (59, 25, 285);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (60, 26, 299);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (61, 26, 292);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (62, 26, 286);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (63, 27, 281);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (64, 27, 283);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (65, 37, 280);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (66, 38, 280);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (67, 39, 280);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (68, 40, 296);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (69, 40, 297);
INSERT INTO public.profiles_project_shortlisted_artists (id, project_id, artist_id) VALUES (70, 40, 298);


--
-- Data for Name: profiles_project_showcase_demos; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_projectfee; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_projectfee_assigned_artist_payouts; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_role; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_role (id, role, user_id) VALUES (1, 'Client', 3);
INSERT INTO public.profiles_role (id, role, user_id) VALUES (2, 'Client', 1);
INSERT INTO public.profiles_role (id, role, user_id) VALUES (3, 'Client', 2);
INSERT INTO public.profiles_role (id, role, user_id) VALUES (30, 'Client', 30);
INSERT INTO public.profiles_role (id, role, user_id) VALUES (31, 'Client', 31);


--
-- Data for Name: profiles_socialprofile; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_templateprojects_skills; Type: TABLE DATA; Schema: public; Owner: shankar
--



--
-- Data for Name: profiles_templateprojectskill; Type: TABLE DATA; Schema: public; Owner: shankar
--

INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (1, 1, 36, 6);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (2, 2, 31, 6);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (3, 3, 43, 6);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (4, 4, 44, 6);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (5, 1, 51, 5);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (6, 2, 47, 5);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (7, 3, 49, 5);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (8, 4, 52, 5);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (9, 5, 50, 5);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (10, 6, 36, 5);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (11, 7, 43, 5);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (12, 8, 44, 5);
INSERT INTO public.profiles_templateprojectskill (id, priority, skill_id, template_project_id) VALUES (13, 9, 31, 5);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 108, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 37, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 743, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 27, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 52, true);


--
-- Name: misc_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.misc_genre_id_seq', 198, true);


--
-- Name: misc_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.misc_language_id_seq', 20, true);


--
-- Name: misc_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.misc_location_id_seq', 63, true);


--
-- Name: misc_skill_genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.misc_skill_genres_id_seq', 108, true);


--
-- Name: misc_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.misc_skill_id_seq', 52, true);


--
-- Name: profiles_artist_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artist_genre_id_seq', 262, true);


--
-- Name: profiles_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artist_id_seq', 341, true);


--
-- Name: profiles_artist_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artist_languages_id_seq', 275, true);


--
-- Name: profiles_artist_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artist_skill_id_seq', 245, true);


--
-- Name: profiles_artist_works_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artist_works_links_id_seq', 509, true);


--
-- Name: profiles_artistfeedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artistfeedback_id_seq', 1, false);


--
-- Name: profiles_artistrequest_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artistrequest_genre_id_seq', 1, false);


--
-- Name: profiles_artistrequest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artistrequest_id_seq', 1, false);


--
-- Name: profiles_artistrequest_languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artistrequest_languages_id_seq', 1, false);


--
-- Name: profiles_artistrequest_rejected_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artistrequest_rejected_artists_id_seq', 1, false);


--
-- Name: profiles_artistrequest_shortlisted_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artistrequest_shortlisted_artists_id_seq', 1, false);


--
-- Name: profiles_artistrequest_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_artistrequest_skill_id_seq', 1, false);


--
-- Name: profiles_chatgptmessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_chatgptmessage_id_seq', 1, true);


--
-- Name: profiles_client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_client_id_seq', 34, true);


--
-- Name: profiles_client_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_client_projects_id_seq', 1, false);


--
-- Name: profiles_client_recommended_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_client_recommended_artists_id_seq', 12, true);


--
-- Name: profiles_manager_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_manager_id_seq', 1, true);


--
-- Name: profiles_project_assigned_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_project_assigned_artists_id_seq', 1, false);


--
-- Name: profiles_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_project_id_seq', 40, true);


--
-- Name: profiles_project_project_demos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_project_project_demos_id_seq', 1, false);


--
-- Name: profiles_project_shortlisted_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_project_shortlisted_artists_id_seq', 70, true);


--
-- Name: profiles_project_showcase_demos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_project_showcase_demos_id_seq', 1, false);


--
-- Name: profiles_projectdemo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_projectdemo_id_seq', 1, false);


--
-- Name: profiles_projectfee_assigned_artist_payouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_projectfee_assigned_artist_payouts_id_seq', 1, false);


--
-- Name: profiles_projectfee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_projectfee_id_seq', 1, false);


--
-- Name: profiles_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_role_id_seq', 31, true);


--
-- Name: profiles_socialprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_socialprofile_id_seq', 1, false);


--
-- Name: profiles_templateprojects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_templateprojects_id_seq', 6, true);


--
-- Name: profiles_templateprojects_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_templateprojects_skills_id_seq', 1, false);


--
-- Name: profiles_templateprojectskill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_templateprojectskill_id_seq', 13, true);


--
-- Name: profiles_work_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shankar
--

SELECT pg_catalog.setval('public.profiles_work_id_seq', 987, true);


--
-- PostgreSQL database dump complete
--

