--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.0

-- Started on 2021-12-05 15:13:39

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

DROP DATABASE "CinemaDGS";
--
-- TOC entry 3469 (class 1262 OID 17516)
-- Name: CinemaDGS; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "CinemaDGS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Polish_Poland.1250';


ALTER DATABASE "CinemaDGS" OWNER TO postgres;

\connect "CinemaDGS"

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 17552)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17551)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 220 (class 1259 OID 17561)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17560)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 216 (class 1259 OID 17545)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17544)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 222 (class 1259 OID 17568)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17577)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17576)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 221 (class 1259 OID 17567)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 226 (class 1259 OID 17584)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17583)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 228 (class 1259 OID 17643)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17642)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 227
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 214 (class 1259 OID 17536)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 17535)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 213
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 210 (class 1259 OID 17518)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17517)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 229 (class 1259 OID 17672)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17739)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    "employeeID" integer NOT NULL,
    "employeePosition" character varying(50) NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 17527)
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    "movieID" integer NOT NULL,
    "movieTitle" character varying(50) NOT NULL,
    "movieDate" timestamp with time zone NOT NULL,
    "movieDescription" character varying(400) NOT NULL,
    "movieGenres" character varying(50)[] NOT NULL,
    "movieImage" character varying(100) NOT NULL,
    "movieRoomID" bigint
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17526)
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_id_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 211
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies."movieID";


--
-- TOC entry 232 (class 1259 OID 17723)
-- Name: movies_movieID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."movies_movieID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."movies_movieID_seq" OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 232
-- Name: movies_movieID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."movies_movieID_seq" OWNED BY public.movies."movieID";


--
-- TOC entry 231 (class 1259 OID 17683)
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id bigint NOT NULL,
    "roomSeatsQuantity" integer NOT NULL
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17682)
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_id_seq OWNER TO postgres;

--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 230
-- Name: rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;


--
-- TOC entry 3227 (class 2604 OID 17555)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 17564)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 17548)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3229 (class 2604 OID 17571)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3230 (class 2604 OID 17580)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3231 (class 2604 OID 17587)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 17646)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3225 (class 2604 OID 17539)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3223 (class 2604 OID 17521)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3224 (class 2604 OID 17724)
-- Name: movies movieID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN "movieID" SET DEFAULT nextval('public."movies_movieID_seq"'::regclass);


--
-- TOC entry 3234 (class 2604 OID 17686)
-- Name: rooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);


--
-- TOC entry 3448 (class 0 OID 17552)
-- Dependencies: 218
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3450 (class 0 OID 17561)
-- Dependencies: 220
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3446 (class 0 OID 17545)
-- Dependencies: 216
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add movie', 7, 'add_movie');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change movie', 7, 'change_movie');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete movie', 7, 'delete_movie');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view movie', 7, 'view_movie');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add room', 8, 'add_room');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change room', 8, 'change_room');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete room', 8, 'delete_room');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view room', 8, 'view_room');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add employee', 9, 'add_employee');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change employee', 9, 'change_employee');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete employee', 9, 'delete_employee');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view employee', 9, 'view_employee');


--
-- TOC entry 3452 (class 0 OID 17568)
-- Dependencies: 222
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$260000$hAWJ77pmpoG7W3Hv8Wd43O$tCOEw6MdeFVHKGlqhVwTSR3JvoWBx+VyFZ77t1GspYo=', '2021-12-05 02:18:08.949402+01', false, 'az', 'az', 'az', '', false, true, '2021-12-05 00:16:36.84311+01');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$260000$iwHcXp3FfQbsvr5qSrhN3B$TaqPGBwAX0P5goVpc1Nv18CsP0vqezO4fVGNPnMLJ+k=', '2021-12-05 02:22:00.090916+01', true, 'admin', '', '', 'admin@ad.com', true, true, '2021-12-04 23:39:25.413343+01');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (3, 'pbkdf2_sha256$260000$UNXjkyzZFJyBoKboL5lsnZ$7udoD8ARVF8OiiETIV2Gu1d0HX/BkwW+tmVRnbyHO7E=', NULL, false, 'adamcannon', 'Adam', 'Cannon', '', false, true, '2021-12-05 14:00:51+01');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (4, 'pbkdf2_sha256$260000$YUTHkbIESrACpTLQ5JKCps$+SL9IX5kiwopd929I6lHq5TyAWyBfd8GShq4tsC7uwc=', NULL, false, 'alexcannon', 'Alex', 'Cannon', '', false, true, '2021-12-05 14:02:15+01');


--
-- TOC entry 3454 (class 0 OID 17577)
-- Dependencies: 224
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3456 (class 0 OID 17584)
-- Dependencies: 226
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3458 (class 0 OID 17643)
-- Dependencies: 228
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2021-12-04 23:57:49.303788+01', '1', 'Movie object (1)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2021-12-05 02:24:00.165153+01', '1', 'Room object (1)', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2021-12-05 02:27:43.792063+01', '2', 'Movie object (2)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2021-12-05 13:44:09.999439+01', '2', 'Room object (2)', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2021-12-05 13:44:17.338605+01', '3', 'Room object (3)', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2021-12-05 13:44:22.328332+01', '4', 'Room object (4)', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2021-12-05 13:46:37.490861+01', '3', 'Movie object (3)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2021-12-05 13:51:25.710791+01', '4', 'Movie object (4)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2021-12-05 13:54:01.082522+01', '5', 'Movie object (5)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2021-12-05 13:54:53.495168+01', '6', 'Movie object (6)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2021-12-05 13:57:00.850474+01', '7', 'Movie object (7)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2021-12-05 13:58:09.259377+01', '8', 'Movie object (8)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2021-12-05 14:00:51.238599+01', '3', 'adamcannon', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2021-12-05 14:01:26.222878+01', '3', 'adamcannon', 2, '[{"changed": {"fields": ["First name", "Last name"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2021-12-05 14:01:44.032511+01', '3', 'Employee object (3)', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2021-12-05 14:02:15.192842+01', '4', 'alexcannon', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2021-12-05 14:02:26.598978+01', '4', 'alexcannon', 2, '[{"changed": {"fields": ["First name", "Last name"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2021-12-05 14:02:47.507289+01', '4', 'Employee object (4)', 1, '[{"added": {}}]', 9, 1);


--
-- TOC entry 3444 (class 0 OID 17536)
-- Dependencies: 214
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'MoviesAPP', 'movie');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'MoviesAPP', 'room');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'UsersAPP', 'employee');


--
-- TOC entry 3440 (class 0 OID 17518)
-- Dependencies: 210
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'MoviesAPP', '0001_initial', '2021-12-04 23:34:04.15993+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0001_initial', '2021-12-04 23:34:04.173671+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'auth', '0001_initial', '2021-12-04 23:34:04.258503+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0001_initial', '2021-12-04 23:34:04.286331+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0002_logentry_remove_auto_add', '2021-12-04 23:34:04.2969+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-04 23:34:04.306495+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2021-12-04 23:34:04.329415+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2021-12-04 23:34:04.341493+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0003_alter_user_email_max_length', '2021-12-04 23:34:04.351926+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0004_alter_user_username_opts', '2021-12-04 23:34:04.361627+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0005_alter_user_last_login_null', '2021-12-04 23:34:04.372667+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0006_require_contenttypes_0002', '2021-12-04 23:34:04.37488+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2021-12-04 23:34:04.384763+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0008_alter_user_username_max_length', '2021-12-04 23:34:04.397127+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2021-12-04 23:34:04.405709+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0010_alter_group_name_max_length', '2021-12-04 23:34:04.415683+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0011_update_proxy_permissions', '2021-12-04 23:34:04.424798+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2021-12-04 23:34:04.433741+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'sessions', '0001_initial', '2021-12-04 23:34:04.44575+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'MoviesAPP', '0002_movie_img', '2021-12-04 23:57:32.094622+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'MoviesAPP', '0003_room', '2021-12-05 00:29:09.530738+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'MoviesAPP', '0004_movie_roomid', '2021-12-05 00:32:36.105993+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'MoviesAPP', '0005_alter_movie_id', '2021-12-05 01:18:34.201743+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'UsersAPP', '0001_initial', '2021-12-05 01:47:11.131371+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'MoviesAPP', '0006_alter_movie_date', '2021-12-05 02:26:37.713141+01');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'MoviesAPP', '0007_alter_movie_roomid', '2021-12-05 13:49:41.719953+01');


--
-- TOC entry 3459 (class 0 OID 17672)
-- Dependencies: 229
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('fqqm4pilosr79vrnpk7s9cm5bzgpgb6t', '.eJxVjMsOwiAQRf-FtSEOA5Rx6d5vIMNLqoYmpV0Z_92QdKHbe865b-F536rfe179nMRFgDj9boHjM7cB0oPbfZFxads6BzkUedAub0vKr-vh_h1U7nXUCAHZaorRUNagExmcFCNw0RotACdrUDvH9qxKIYUlJJqInOIAQXy-yko3RQ:1mtgE4:jEmnOpNQK8DWn8-xlVchLk7tDSbKlsFi19Pg7V6pPqs', '2021-12-19 02:22:00.093912+01');


--
-- TOC entry 3463 (class 0 OID 17739)
-- Dependencies: 233
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employees ("employeeID", "employeePosition") VALUES (3, 'manager');
INSERT INTO public.employees ("employeeID", "employeePosition") VALUES (4, 'cashier');


--
-- TOC entry 3442 (class 0 OID 17527)
-- Dependencies: 212
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.movies ("movieID", "movieTitle", "movieDate", "movieDescription", "movieGenres", "movieImage", "movieRoomID") VALUES (1, 'Matrix', '2021-04-01 02:00:00+02', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit', '{drama,comedy,family}', 'images/movie1.jpg', NULL);
INSERT INTO public.movies ("movieID", "movieTitle", "movieDate", "movieDescription", "movieGenres", "movieImage", "movieRoomID") VALUES (2, 'Second Hand Lions', '2021-09-16 20:00:00+02', 'Secondhand Lions is a 2003 American comedy-drama film written and directed by Tim McCanlies. It tells the story of an introverted young boy (Haley Joel Osment) who is sent to live with his eccentric great uncles (Robert Duvall and Michael Caine) on a farm in Texas.', '{drama,comedy,family}', 'images/movie2.jpg', 1);
INSERT INTO public.movies ("movieID", "movieTitle", "movieDate", "movieDescription", "movieGenres", "movieImage", "movieRoomID") VALUES (3, 'The Bucket List', '2022-01-12 21:00:00+01', 'The Bucket List is a 2007 American buddy comedy-drama film directed and produced by Rob Reiner, written by Justin Zackham, and starring Jack Nicholson and Morgan Freeman.[2] The main plot follows two terminally ill men on their road trip with a wish list of things to do before they "kick the bucket".', '{drama,comedy}', 'images/movie3.jpg', 2);
INSERT INTO public.movies ("movieID", "movieTitle", "movieDate", "movieDescription", "movieGenres", "movieImage", "movieRoomID") VALUES (4, 'Man on Fire', '2022-03-09 21:00:00+01', 'In Mexico City, a former CIA operative swears vengeance on those who committed an unspeakable act against the family he was hired to protect. Hard-drinking, burnt-out ex-CIA operative John Creasy has given up on life until he''s hired as a bodyguard to protect 9-year-old Pita Ramos.', '{drama,action}', 'images/movie4.jpg', 2);
INSERT INTO public.movies ("movieID", "movieTitle", "movieDate", "movieDescription", "movieGenres", "movieImage", "movieRoomID") VALUES (5, 'The Bone Collector', '2022-03-02 19:00:00+01', 'The Bone Collector is a 1999 American crime thriller film[2] directed by Phillip Noyce and starring Denzel Washington and Angelina Jolie. It was produced by Martin Bregman.  The film is based on the 1997 crime novel of the same name written by Jeffery Deaver, concerning the tetraplegic detective Lincoln Rhyme. The film received mixed reviews, and earned about $150 million against a budget of $48 m', '{crime,thriller}', 'images/movie5.jpg', 4);
INSERT INTO public.movies ("movieID", "movieTitle", "movieDate", "movieDescription", "movieGenres", "movieImage", "movieRoomID") VALUES (6, 'The Silence of the Lambs', '2022-03-11 19:00:00+01', 'App psychopath known as "Buffalo Bill" (Ted Levine) is kidnapping and murdering young women across the Midwest. Believing it takes one to know one, the F.B.I. sends trainee Clarice Starling (Jodie Foster) to interview a demented prisoner who may provide psychological insight and clues to the killer''s actions.', '{horror,crime}', 'images/movie6.jpg', 3);
INSERT INTO public.movies ("movieID", "movieTitle", "movieDate", "movieDescription", "movieGenres", "movieImage", "movieRoomID") VALUES (7, 'Hannibal', '2022-02-07 19:00:00+01', 'Hannibal Lecter must survive the advances by disfigured and vengeful victim Mason Verger (Gary Oldman), with whom he first came in contact years ago as a patient. He finds himself being tracked down not only by his wealthy victim and his henchmen, but also by Agent Starling and the American authorities.', '{horror,action,crime}', 'images/movie7.jpg', 2);
INSERT INTO public.movies ("movieID", "movieTitle", "movieDate", "movieDescription", "movieGenres", "movieImage", "movieRoomID") VALUES (8, 'Inglourious Basterds', '2022-02-10 19:00:00+01', 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner''s vengeful plans for the same. In German-occupied France, young Jewish refugee Shosanna Dreyfus witnesses the slaughter of her family by Colonel Hans Landa.', '{drama,action,war}', 'images/movie8.jpg', 3);


--
-- TOC entry 3461 (class 0 OID 17683)
-- Dependencies: 231
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rooms (id, "roomSeatsQuantity") VALUES (1, 50);
INSERT INTO public.rooms (id, "roomSeatsQuantity") VALUES (2, 90);
INSERT INTO public.rooms (id, "roomSeatsQuantity") VALUES (3, 90);
INSERT INTO public.rooms (id, "roomSeatsQuantity") VALUES (4, 120);


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 227
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 18, true);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 213
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 211
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_id_seq', 1, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 232
-- Name: movies_movieID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."movies_movieID_seq"', 8, true);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 230
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_id_seq', 4, true);


--
-- TOC entry 3251 (class 2606 OID 17670)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3256 (class 2606 OID 17600)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3259 (class 2606 OID 17566)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 17557)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3246 (class 2606 OID 17591)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3248 (class 2606 OID 17550)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 17582)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 17615)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3261 (class 2606 OID 17573)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 17589)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3276 (class 2606 OID 17629)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3264 (class 2606 OID 17665)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3279 (class 2606 OID 17651)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3241 (class 2606 OID 17543)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3243 (class 2606 OID 17541)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 17525)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 17678)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3288 (class 2606 OID 17743)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY ("employeeID");


--
-- TOC entry 3239 (class 2606 OID 17715)
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY ("movieID");


--
-- TOC entry 3286 (class 2606 OID 17688)
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- TOC entry 3249 (class 1259 OID 17671)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3254 (class 1259 OID 17611)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3257 (class 1259 OID 17612)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3244 (class 1259 OID 17597)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3265 (class 1259 OID 17627)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3268 (class 1259 OID 17626)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3271 (class 1259 OID 17641)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3274 (class 1259 OID 17640)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3262 (class 1259 OID 17666)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3277 (class 1259 OID 17662)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3280 (class 1259 OID 17663)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3281 (class 1259 OID 17680)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3284 (class 1259 OID 17679)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3237 (class 1259 OID 17756)
-- Name: movies_movieRoomID_faf4d6ab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "movies_movieRoomID_faf4d6ab" ON public.movies USING btree ("movieRoomID");


--
-- TOC entry 3292 (class 2606 OID 17606)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3291 (class 2606 OID 17601)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3290 (class 2606 OID 17592)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3294 (class 2606 OID 17621)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3293 (class 2606 OID 17616)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3296 (class 2606 OID 17635)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3295 (class 2606 OID 17630)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3297 (class 2606 OID 17652)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3298 (class 2606 OID 17657)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3299 (class 2606 OID 17744)
-- Name: employees employees_employeeID_aa2c0c36_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT "employees_employeeID_aa2c0c36_fk_auth_user_id" FOREIGN KEY ("employeeID") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3289 (class 2606 OID 17757)
-- Name: movies movies_movieRoomID_faf4d6ab_fk_rooms_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT "movies_movieRoomID_faf4d6ab_fk_rooms_id" FOREIGN KEY ("movieRoomID") REFERENCES public.rooms(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-12-05 15:13:39

--
-- PostgreSQL database dump complete
--

