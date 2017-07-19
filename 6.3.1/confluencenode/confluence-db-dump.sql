--
-- PostgreSQL database dump
--

drop schema public cascade;
create schema public;

-- Dumped from database version 9.4.12
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AO_187CCC_SIDEBAR_LINK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_187CCC_SIDEBAR_LINK" (
    "CATEGORY" character varying(255),
    "CUSTOM_ICON_CLASS" character varying(255),
    "CUSTOM_TITLE" character varying(255),
    "DEST_PAGE_ID" bigint DEFAULT 0,
    "HARDCODED_URL" character varying(255),
    "HIDDEN" boolean,
    "ID" integer NOT NULL,
    "POSITION" integer DEFAULT 0,
    "SPACE_KEY" character varying(255),
    "TYPE" character varying(255),
    "WEB_ITEM_KEY" character varying(255)
);


ALTER TABLE "AO_187CCC_SIDEBAR_LINK" OWNER TO confluence;

--
-- Name: AO_187CCC_SIDEBAR_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_187CCC_SIDEBAR_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_187CCC_SIDEBAR_LINK_ID_seq" OWNER TO confluence;

--
-- Name: AO_187CCC_SIDEBAR_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_187CCC_SIDEBAR_LINK_ID_seq" OWNED BY "AO_187CCC_SIDEBAR_LINK"."ID";


--
-- Name: AO_21D670_WHITELIST_RULES; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_21D670_WHITELIST_RULES" (
    "ALLOWINBOUND" boolean,
    "EXPRESSION" text NOT NULL,
    "ID" integer NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE "AO_21D670_WHITELIST_RULES" OWNER TO confluence;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_21D670_WHITELIST_RULES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_21D670_WHITELIST_RULES_ID_seq" OWNER TO confluence;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_21D670_WHITELIST_RULES_ID_seq" OWNED BY "AO_21D670_WHITELIST_RULES"."ID";


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_26DB7F_ENTITIES_TO_ROOMS" (
    "ENTITY_KEY" character varying(255),
    "ID" integer NOT NULL,
    "MESSAGE_TYPE_KEY" character varying(255),
    "ROOM_ID" character varying(255)
);


ALTER TABLE "AO_26DB7F_ENTITIES_TO_ROOMS" OWNER TO confluence;

--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq" OWNER TO confluence;

--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq" OWNED BY "AO_26DB7F_ENTITIES_TO_ROOMS"."ID";


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_26DB7F_ENTITIES_TO_ROOM_CFG" (
    "ENTITY_KEY" character varying(255),
    "ID" integer NOT NULL,
    "NOTIFY_CLIENT" boolean,
    "ROOM_ID" character varying(255)
);


ALTER TABLE "AO_26DB7F_ENTITIES_TO_ROOM_CFG" OWNER TO confluence;

--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq" OWNER TO confluence;

--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq" OWNED BY "AO_26DB7F_ENTITIES_TO_ROOM_CFG"."ID";


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_38321B_CUSTOM_CONTENT_LINK" (
    "CONTENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "LINK_LABEL" character varying(255),
    "LINK_URL" character varying(255),
    "SEQUENCE" integer DEFAULT 0
);


ALTER TABLE "AO_38321B_CUSTOM_CONTENT_LINK" OWNER TO confluence;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNER TO confluence;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNED BY "AO_38321B_CUSTOM_CONTENT_LINK"."ID";


--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_42E351_HEALTH_CHECK_ENTITY" (
    "ID" integer NOT NULL
);


ALTER TABLE "AO_42E351_HEALTH_CHECK_ENTITY" OWNER TO confluence;

--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_42E351_HEALTH_CHECK_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_42E351_HEALTH_CHECK_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_42E351_HEALTH_CHECK_ENTITY_ID_seq" OWNED BY "AO_42E351_HEALTH_CHECK_ENTITY"."ID";


--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_54C900_CONTENT_BLUEPRINT_AO" (
    "CREATE_RESULT" character varying(255),
    "HOW_TO_USE_TEMPLATE" character varying(255),
    "ID" integer NOT NULL,
    "INDEX_DISABLED" boolean,
    "INDEX_KEY" character varying(255),
    "INDEX_TITLE_I18N_KEY" character varying(255),
    "NAME" character varying(255),
    "PLUGIN_CLONE" boolean,
    "PLUGIN_MODULE_KEY" character varying(255),
    "SPACE_KEY" character varying(255),
    "UUID" character varying(255)
);


ALTER TABLE "AO_54C900_CONTENT_BLUEPRINT_AO" OWNER TO confluence;

--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq" OWNER TO confluence;

--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq" OWNED BY "AO_54C900_CONTENT_BLUEPRINT_AO"."ID";


--
-- Name: AO_54C900_C_TEMPLATE_REF; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_54C900_C_TEMPLATE_REF" (
    "CB_INDEX_PARENTID" integer,
    "CB_PARENTID" integer,
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PARENT_ID" integer,
    "PLUGIN_CLONE" boolean,
    "PLUGIN_MODULE_KEY" character varying(255),
    "TEMPLATE_ID" bigint DEFAULT 0,
    "UUID" character varying(255)
);


ALTER TABLE "AO_54C900_C_TEMPLATE_REF" OWNER TO confluence;

--
-- Name: AO_54C900_C_TEMPLATE_REF_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_54C900_C_TEMPLATE_REF_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_54C900_C_TEMPLATE_REF_ID_seq" OWNER TO confluence;

--
-- Name: AO_54C900_C_TEMPLATE_REF_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_54C900_C_TEMPLATE_REF_ID_seq" OWNED BY "AO_54C900_C_TEMPLATE_REF"."ID";


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_54C900_SPACE_BLUEPRINT_AO" (
    "CATEGORY" character varying(255),
    "HOME_PAGE_ID" integer,
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PLUGIN_CLONE" boolean,
    "PLUGIN_MODULE_KEY" character varying(255),
    "PROMOTED_BPS" text,
    "UUID" character varying(255)
);


ALTER TABLE "AO_54C900_SPACE_BLUEPRINT_AO" OWNER TO confluence;

--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_54C900_SPACE_BLUEPRINT_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_54C900_SPACE_BLUEPRINT_AO_ID_seq" OWNER TO confluence;

--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_54C900_SPACE_BLUEPRINT_AO_ID_seq" OWNED BY "AO_54C900_SPACE_BLUEPRINT_AO"."ID";


--
-- Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_563AEE_ACTIVITY_ENTITY" (
    "ACTIVITY_ID" bigint NOT NULL,
    "ACTOR_ID" integer,
    "CONTENT" text,
    "GENERATOR_DISPLAY_NAME" character varying(255),
    "GENERATOR_ID" character varying(450),
    "ICON_ID" integer,
    "ID" character varying(450),
    "ISSUE_KEY" character varying(255),
    "OBJECT_ID" integer,
    "POSTER" character varying(255),
    "PROJECT_KEY" character varying(255),
    "PUBLISHED" timestamp without time zone,
    "TARGET_ID" integer,
    "TITLE" character varying(255),
    "URL" character varying(450),
    "USERNAME" character varying(255),
    "VERB" character varying(450)
);


ALTER TABLE "AO_563AEE_ACTIVITY_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNED BY "AO_563AEE_ACTIVITY_ENTITY"."ACTIVITY_ID";


--
-- Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_563AEE_ACTOR_ENTITY" (
    "FULL_NAME" character varying(255),
    "ID" integer NOT NULL,
    "PROFILE_PAGE_URI" character varying(450),
    "PROFILE_PICTURE_URI" character varying(450),
    "USERNAME" character varying(255)
);


ALTER TABLE "AO_563AEE_ACTOR_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_563AEE_ACTOR_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_ACTOR_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_563AEE_ACTOR_ENTITY_ID_seq" OWNED BY "AO_563AEE_ACTOR_ENTITY"."ID";


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_563AEE_MEDIA_LINK_ENTITY" (
    "DURATION" integer,
    "HEIGHT" integer,
    "ID" integer NOT NULL,
    "URL" character varying(450),
    "WIDTH" integer
);


ALTER TABLE "AO_563AEE_MEDIA_LINK_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNED BY "AO_563AEE_MEDIA_LINK_ENTITY"."ID";


--
-- Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_563AEE_OBJECT_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE "AO_563AEE_OBJECT_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_563AEE_OBJECT_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_OBJECT_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_563AEE_OBJECT_ENTITY_ID_seq" OWNED BY "AO_563AEE_OBJECT_ENTITY"."ID";


--
-- Name: AO_563AEE_TARGET_ENTITY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_563AEE_TARGET_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE "AO_563AEE_TARGET_ENTITY" OWNER TO confluence;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_563AEE_TARGET_ENTITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_563AEE_TARGET_ENTITY_ID_seq" OWNER TO confluence;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_563AEE_TARGET_ENTITY_ID_seq" OWNED BY "AO_563AEE_TARGET_ENTITY"."ID";


--
-- Name: AO_5F3884_FEATURE_DISCOVERY; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_5F3884_FEATURE_DISCOVERY" (
    "DISCOVERED" boolean,
    "ID" integer NOT NULL,
    "USER_KEY" character varying(255)
);


ALTER TABLE "AO_5F3884_FEATURE_DISCOVERY" OWNER TO confluence;

--
-- Name: AO_5F3884_FEATURE_DISCOVERY_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_5F3884_FEATURE_DISCOVERY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_5F3884_FEATURE_DISCOVERY_ID_seq" OWNER TO confluence;

--
-- Name: AO_5F3884_FEATURE_DISCOVERY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_5F3884_FEATURE_DISCOVERY_ID_seq" OWNED BY "AO_5F3884_FEATURE_DISCOVERY"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_5FB9D7_AOHIP_CHAT_LINK" (
    "ADDON_TOKEN_EXPIRY" timestamp without time zone,
    "API_URL" character varying(255),
    "CONNECT_DESCRIPTOR" text,
    "GROUP_ID" integer DEFAULT 0,
    "GROUP_NAME" character varying(255),
    "ID" integer NOT NULL,
    "OAUTH_ID" character varying(255),
    "SECRET_KEY" character varying(255),
    "SYSTEM_PASSWORD" character varying(255),
    "SYSTEM_TOKEN_EXPIRY" timestamp without time zone,
    "SYSTEM_USER" character varying(255),
    "SYSTEM_USER_TOKEN" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_LINK" OWNER TO confluence;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNER TO confluence;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNED BY "AO_5FB9D7_AOHIP_CHAT_LINK"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_5FB9D7_AOHIP_CHAT_USER" (
    "HIP_CHAT_LINK_ID" integer,
    "HIP_CHAT_USER_ID" character varying(255),
    "HIP_CHAT_USER_NAME" character varying(255),
    "ID" integer NOT NULL,
    "REFRESH_CODE" character varying(255),
    "USER_KEY" character varying(255),
    "USER_SCOPES" character varying(255),
    "USER_TOKEN" character varying(255),
    "USER_TOKEN_EXPIRY" timestamp without time zone
);


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_USER" OWNER TO confluence;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNER TO confluence;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNED BY "AO_5FB9D7_AOHIP_CHAT_USER"."ID";


--
-- Name: AO_6384AB_DISCOVERED; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_6384AB_DISCOVERED" (
    "DATE" timestamp without time zone,
    "ID" integer NOT NULL,
    "KEY" character varying(255),
    "PLUGIN_KEY" character varying(255),
    "USER_KEY" character varying(255)
);


ALTER TABLE "AO_6384AB_DISCOVERED" OWNER TO confluence;

--
-- Name: AO_6384AB_DISCOVERED_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_6384AB_DISCOVERED_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_6384AB_DISCOVERED_ID_seq" OWNER TO confluence;

--
-- Name: AO_6384AB_DISCOVERED_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_6384AB_DISCOVERED_ID_seq" OWNED BY "AO_6384AB_DISCOVERED"."ID";


--
-- Name: AO_6384AB_FEATURE_METADATA_AO; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_6384AB_FEATURE_METADATA_AO" (
    "CONTEXT" character varying(255),
    "ID" integer NOT NULL,
    "INSTALLATION_DATE" timestamp without time zone,
    "KEY" character varying(255)
);


ALTER TABLE "AO_6384AB_FEATURE_METADATA_AO" OWNER TO confluence;

--
-- Name: AO_6384AB_FEATURE_METADATA_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_6384AB_FEATURE_METADATA_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_6384AB_FEATURE_METADATA_AO_ID_seq" OWNER TO confluence;

--
-- Name: AO_6384AB_FEATURE_METADATA_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_6384AB_FEATURE_METADATA_AO_ID_seq" OWNED BY "AO_6384AB_FEATURE_METADATA_AO"."ID";


--
-- Name: AO_7CDE43_EVENT; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_7CDE43_EVENT" (
    "EVENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "NOTIFICATION_ID" integer
);


ALTER TABLE "AO_7CDE43_EVENT" OWNER TO confluence;

--
-- Name: AO_7CDE43_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_7CDE43_EVENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_7CDE43_EVENT_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_7CDE43_EVENT_ID_seq" OWNED BY "AO_7CDE43_EVENT"."ID";


--
-- Name: AO_7CDE43_FILTER_PARAM; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_7CDE43_FILTER_PARAM" (
    "ID" integer NOT NULL,
    "NOTIFICATION_ID" integer,
    "PARAM_KEY" character varying(255),
    "PARAM_VALUE" text
);


ALTER TABLE "AO_7CDE43_FILTER_PARAM" OWNER TO confluence;

--
-- Name: AO_7CDE43_FILTER_PARAM_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_7CDE43_FILTER_PARAM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_7CDE43_FILTER_PARAM_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_FILTER_PARAM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_7CDE43_FILTER_PARAM_ID_seq" OWNED BY "AO_7CDE43_FILTER_PARAM"."ID";


--
-- Name: AO_7CDE43_NOTIFICATION; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_7CDE43_NOTIFICATION" (
    "ID" integer NOT NULL,
    "NOTIFICATION_SCHEME_ID" integer
);


ALTER TABLE "AO_7CDE43_NOTIFICATION" OWNER TO confluence;

--
-- Name: AO_7CDE43_NOTIFICATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_7CDE43_NOTIFICATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_7CDE43_NOTIFICATION_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_NOTIFICATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_7CDE43_NOTIFICATION_ID_seq" OWNED BY "AO_7CDE43_NOTIFICATION"."ID";


--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_7CDE43_NOTIFICATION_SCHEME" (
    "DESCRIPTION" text,
    "ID" integer NOT NULL,
    "SCHEME_NAME" character varying(255)
);


ALTER TABLE "AO_7CDE43_NOTIFICATION_SCHEME" OWNER TO confluence;

--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_7CDE43_NOTIFICATION_SCHEME_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_7CDE43_NOTIFICATION_SCHEME_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_7CDE43_NOTIFICATION_SCHEME_ID_seq" OWNED BY "AO_7CDE43_NOTIFICATION_SCHEME"."ID";


--
-- Name: AO_7CDE43_RECIPIENT; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_7CDE43_RECIPIENT" (
    "ID" integer NOT NULL,
    "INDIVIDUAL" boolean,
    "NOTIFICATION_ID" integer,
    "PARAM_DISPLAY" text,
    "PARAM_VALUE" text,
    "SERVER_ID" integer DEFAULT 0,
    "TYPE" character varying(255)
);


ALTER TABLE "AO_7CDE43_RECIPIENT" OWNER TO confluence;

--
-- Name: AO_7CDE43_RECIPIENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_7CDE43_RECIPIENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_7CDE43_RECIPIENT_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_RECIPIENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_7CDE43_RECIPIENT_ID_seq" OWNED BY "AO_7CDE43_RECIPIENT"."ID";


--
-- Name: AO_7CDE43_SERVER_CONFIG; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_7CDE43_SERVER_CONFIG" (
    "CUSTOM_TEMPLATE_PATH" text,
    "DEFAULT_USER_ID_TEMPLATE" character varying(255),
    "ENABLED_FOR_ALL_USERS" boolean,
    "GROUPS_WITH_ACCESS" text,
    "ID" integer NOT NULL,
    "NOTIFICATION_MEDIUM_KEY" character varying(255),
    "SERVER_NAME" character varying(255)
);


ALTER TABLE "AO_7CDE43_SERVER_CONFIG" OWNER TO confluence;

--
-- Name: AO_7CDE43_SERVER_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_7CDE43_SERVER_CONFIG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_7CDE43_SERVER_CONFIG_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_SERVER_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_7CDE43_SERVER_CONFIG_ID_seq" OWNED BY "AO_7CDE43_SERVER_CONFIG"."ID";


--
-- Name: AO_7CDE43_SERVER_PARAM; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_7CDE43_SERVER_PARAM" (
    "ID" integer NOT NULL,
    "PARAM_KEY" character varying(255),
    "PARAM_VALUE" text,
    "SERVER_CONFIG_ID" integer
);


ALTER TABLE "AO_7CDE43_SERVER_PARAM" OWNER TO confluence;

--
-- Name: AO_7CDE43_SERVER_PARAM_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_7CDE43_SERVER_PARAM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_7CDE43_SERVER_PARAM_ID_seq" OWNER TO confluence;

--
-- Name: AO_7CDE43_SERVER_PARAM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_7CDE43_SERVER_PARAM_ID_seq" OWNED BY "AO_7CDE43_SERVER_PARAM"."ID";


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_88263F_HEALTH_CHECK_STATUS" (
    "APPLICATION_NAME" character varying(255),
    "COMPLETE_KEY" character varying(255),
    "DESCRIPTION" character varying(255),
    "FAILED_DATE" timestamp without time zone,
    "FAILURE_REASON" character varying(450),
    "ID" integer NOT NULL,
    "IS_HEALTHY" boolean,
    "IS_RESOLVED" boolean,
    "RESOLVED_DATE" timestamp without time zone,
    "SEVERITY" character varying(255),
    "STATUS_NAME" character varying(255) NOT NULL
);


ALTER TABLE "AO_88263F_HEALTH_CHECK_STATUS" OWNER TO confluence;

--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_88263F_HEALTH_CHECK_STATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88263F_HEALTH_CHECK_STATUS_ID_seq" OWNER TO confluence;

--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_88263F_HEALTH_CHECK_STATUS_ID_seq" OWNED BY "AO_88263F_HEALTH_CHECK_STATUS"."ID";


--
-- Name: AO_88263F_PROPERTIES; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_88263F_PROPERTIES" (
    "ID" integer NOT NULL,
    "PROPERTY_NAME" character varying(255) NOT NULL,
    "PROPERTY_VALUE" character varying(255) NOT NULL
);


ALTER TABLE "AO_88263F_PROPERTIES" OWNER TO confluence;

--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_88263F_PROPERTIES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88263F_PROPERTIES_ID_seq" OWNER TO confluence;

--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_88263F_PROPERTIES_ID_seq" OWNED BY "AO_88263F_PROPERTIES"."ID";


--
-- Name: AO_88263F_READ_NOTIFICATIONS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_88263F_READ_NOTIFICATIONS" (
    "ID" integer NOT NULL,
    "IS_SNOOZED" boolean,
    "NOTIFICATION_ID" integer NOT NULL,
    "SNOOZE_COUNT" integer,
    "SNOOZE_DATE" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE "AO_88263F_READ_NOTIFICATIONS" OWNER TO confluence;

--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_88263F_READ_NOTIFICATIONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88263F_READ_NOTIFICATIONS_ID_seq" OWNER TO confluence;

--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_88263F_READ_NOTIFICATIONS_ID_seq" OWNED BY "AO_88263F_READ_NOTIFICATIONS"."ID";


--
-- Name: AO_88BB94_BATCH_NOTIFICATION; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_88BB94_BATCH_NOTIFICATION" (
    "BATCHING_COLUMN" character varying(255) NOT NULL,
    "CONTENT_TYPE" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "NOTIFICATION_KEY" character varying(255) NOT NULL,
    "PAYLOAD" text NOT NULL
);


ALTER TABLE "AO_88BB94_BATCH_NOTIFICATION" OWNER TO confluence;

--
-- Name: AO_88BB94_BATCH_NOTIFICATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_88BB94_BATCH_NOTIFICATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_88BB94_BATCH_NOTIFICATION_ID_seq" OWNER TO confluence;

--
-- Name: AO_88BB94_BATCH_NOTIFICATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_88BB94_BATCH_NOTIFICATION_ID_seq" OWNED BY "AO_88BB94_BATCH_NOTIFICATION"."ID";


--
-- Name: AO_92296B_AORECENTLY_VIEWED; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_92296B_AORECENTLY_VIEWED" (
    "CONTENT_ID" bigint,
    "CONTENT_TYPE" character varying(255),
    "ID" bigint NOT NULL,
    "LAST_VIEW_DATE" timestamp without time zone,
    "SPACE_KEY" character varying(255),
    "USER_KEY" character varying(255)
);


ALTER TABLE "AO_92296B_AORECENTLY_VIEWED" OWNER TO confluence;

--
-- Name: AO_92296B_AORECENTLY_VIEWED_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_92296B_AORECENTLY_VIEWED_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_92296B_AORECENTLY_VIEWED_ID_seq" OWNER TO confluence;

--
-- Name: AO_92296B_AORECENTLY_VIEWED_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_92296B_AORECENTLY_VIEWED_ID_seq" OWNED BY "AO_92296B_AORECENTLY_VIEWED"."ID";


--
-- Name: AO_9412A1_AONOTIFICATION; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_9412A1_AONOTIFICATION" (
    "ACTION" character varying(255),
    "ACTION_ICON_URL" text,
    "APPLICATION" character varying(255),
    "APPLICATION_LINK_ID" character varying(255),
    "CREATED" timestamp without time zone,
    "DESCRIPTION" text,
    "ENTITY" character varying(255),
    "GLOBAL_ID" character varying(255),
    "GROUPING_ID" character varying(255),
    "ICON_URL" text,
    "ID" bigint NOT NULL,
    "ITEM_ICON_URL" text,
    "ITEM_TITLE" text,
    "ITEM_URL" text,
    "METADATA" text,
    "PINNED" boolean DEFAULT false,
    "READ" boolean DEFAULT false,
    "STATUS" character varying(255),
    "TITLE" text,
    "UPDATED" timestamp without time zone,
    "URL" text,
    "USER" character varying(255)
);


ALTER TABLE "AO_9412A1_AONOTIFICATION" OWNER TO confluence;

--
-- Name: AO_9412A1_AONOTIFICATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_9412A1_AONOTIFICATION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_9412A1_AONOTIFICATION_ID_seq" OWNER TO confluence;

--
-- Name: AO_9412A1_AONOTIFICATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_9412A1_AONOTIFICATION_ID_seq" OWNED BY "AO_9412A1_AONOTIFICATION"."ID";


--
-- Name: AO_9412A1_AOREGISTRATION; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_9412A1_AOREGISTRATION" (
    "DATA" text,
    "ID" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone
);


ALTER TABLE "AO_9412A1_AOREGISTRATION" OWNER TO confluence;

--
-- Name: AO_9412A1_AOTASK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_9412A1_AOTASK" (
    "APPLICATION" character varying(255),
    "APPLICATION_LINK_ID" character varying(255),
    "CREATED" timestamp without time zone,
    "DESCRIPTION" text,
    "ENTITY" character varying(255),
    "GLOBAL_ID" character varying(255),
    "ID" bigint NOT NULL,
    "ITEM_ICON_URL" text,
    "ITEM_TITLE" text,
    "METADATA" text,
    "STATUS" character varying(255),
    "TITLE" text,
    "UPDATED" timestamp without time zone,
    "URL" text,
    "USER" character varying(255)
);


ALTER TABLE "AO_9412A1_AOTASK" OWNER TO confluence;

--
-- Name: AO_9412A1_AOTASK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_9412A1_AOTASK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_9412A1_AOTASK_ID_seq" OWNER TO confluence;

--
-- Name: AO_9412A1_AOTASK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_9412A1_AOTASK_ID_seq" OWNED BY "AO_9412A1_AOTASK"."ID";


--
-- Name: AO_9412A1_AOUSER; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_9412A1_AOUSER" (
    "CREATED" timestamp without time zone,
    "ID" bigint NOT NULL,
    "LAST_READ_NOTIFICATION_ID" bigint DEFAULT 0,
    "TASK_ORDERING" text,
    "UPDATED" timestamp without time zone,
    "USERNAME" character varying(255) NOT NULL
);


ALTER TABLE "AO_9412A1_AOUSER" OWNER TO confluence;

--
-- Name: AO_9412A1_AOUSER_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_9412A1_AOUSER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_9412A1_AOUSER_ID_seq" OWNER TO confluence;

--
-- Name: AO_9412A1_AOUSER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_9412A1_AOUSER_ID_seq" OWNED BY "AO_9412A1_AOUSER"."ID";


--
-- Name: AO_9412A1_USER_APP_LINK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_9412A1_USER_APP_LINK" (
    "APPLICATION_LINK_ID" character varying(255),
    "AUTH_VERIFIED" boolean,
    "CREATED" timestamp without time zone,
    "ID" bigint NOT NULL,
    "UPDATED" timestamp without time zone,
    "USER_ID" bigint
);


ALTER TABLE "AO_9412A1_USER_APP_LINK" OWNER TO confluence;

--
-- Name: AO_9412A1_USER_APP_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_9412A1_USER_APP_LINK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_9412A1_USER_APP_LINK_ID_seq" OWNER TO confluence;

--
-- Name: AO_9412A1_USER_APP_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_9412A1_USER_APP_LINK_ID_seq" OWNED BY "AO_9412A1_USER_APP_LINK"."ID";


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_A0B856_WEB_HOOK_LISTENER_AO" (
    "DESCRIPTION" text,
    "ENABLED" boolean,
    "EVENTS" text,
    "EXCLUDE_BODY" boolean,
    "FILTERS" text,
    "ID" integer NOT NULL,
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255),
    "NAME" text NOT NULL,
    "PARAMETERS" text,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL
);


ALTER TABLE "AO_A0B856_WEB_HOOK_LISTENER_AO" OWNER TO confluence;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNER TO confluence;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNED BY "AO_A0B856_WEB_HOOK_LISTENER_AO"."ID";


--
-- Name: AO_BAF3AA_AOINLINE_TASK; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_BAF3AA_AOINLINE_TASK" (
    "ASSIGNEE_USER_KEY" character varying(255),
    "BODY" text,
    "COMPLETE_DATE" timestamp without time zone,
    "COMPLETE_USER_KEY" character varying(255),
    "CONTENT_ID" bigint DEFAULT 0,
    "CREATE_DATE" timestamp without time zone,
    "CREATOR_USER_KEY" character varying(255),
    "DUE_DATE" timestamp without time zone,
    "GLOBAL_ID" bigint NOT NULL,
    "ID" bigint DEFAULT 0,
    "TASK_STATUS" character varying(255),
    "UPDATE_DATE" timestamp without time zone
);


ALTER TABLE "AO_BAF3AA_AOINLINE_TASK" OWNER TO confluence;

--
-- Name: AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq" OWNER TO confluence;

--
-- Name: AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq" OWNED BY "AO_BAF3AA_AOINLINE_TASK"."GLOBAL_ID";


--
-- Name: AO_DC98AE_AOHELP_TIP; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_DC98AE_AOHELP_TIP" (
    "DISMISSED_HELP_TIP" character varying(255),
    "ID" integer NOT NULL,
    "USER_KEY" character varying(255)
);


ALTER TABLE "AO_DC98AE_AOHELP_TIP" OWNER TO confluence;

--
-- Name: AO_DC98AE_AOHELP_TIP_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_DC98AE_AOHELP_TIP_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_DC98AE_AOHELP_TIP_ID_seq" OWNER TO confluence;

--
-- Name: AO_DC98AE_AOHELP_TIP_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_DC98AE_AOHELP_TIP_ID_seq" OWNED BY "AO_DC98AE_AOHELP_TIP"."ID";


--
-- Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "AO_ED669C_SEEN_ASSERTIONS" (
    "ASSERTION_ID" character varying(255) NOT NULL,
    "EXPIRY_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL
);


ALTER TABLE "AO_ED669C_SEEN_ASSERTIONS" OWNER TO confluence;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE "AO_ED669C_SEEN_ASSERTIONS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNER TO confluence;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: confluence
--

ALTER SEQUENCE "AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNED BY "AO_ED669C_SEEN_ASSERTIONS"."ID";


--
-- Name: EVENTS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "EVENTS" (
    rev character varying(255) NOT NULL,
    history character varying(255) NOT NULL,
    partition integer NOT NULL,
    sequence integer NOT NULL,
    event bytea
);


ALTER TABLE "EVENTS" OWNER TO confluence;

--
-- Name: SECRETS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "SECRETS" (
    key character varying(255) NOT NULL,
    value character varying(256) NOT NULL
);


ALTER TABLE "SECRETS" OWNER TO confluence;

--
-- Name: SNAPSHOTS; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE "SNAPSHOTS" (
    key character varying(255) NOT NULL,
    value bytea NOT NULL
);


ALTER TABLE "SNAPSHOTS" OWNER TO confluence;

--
-- Name: attachmentdata; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE attachmentdata (
    attachmentdataid bigint NOT NULL,
    hibernateversion integer DEFAULT 0 NOT NULL,
    attversion integer NOT NULL,
    data bytea,
    attachmentid bigint NOT NULL
);


ALTER TABLE attachmentdata OWNER TO confluence;

--
-- Name: audit_affected_object; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE audit_affected_object (
    id bigint NOT NULL,
    name character varying(255),
    type character varying(255),
    auditrecordid bigint
);


ALTER TABLE audit_affected_object OWNER TO confluence;

--
-- Name: audit_changed_value; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE audit_changed_value (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    oldvalue character varying(255),
    newvalue character varying(255),
    auditrecordid bigint
);


ALTER TABLE audit_changed_value OWNER TO confluence;

--
-- Name: auditrecord; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE auditrecord (
    auditrecordid bigint NOT NULL,
    summary character varying(255),
    description character varying(255),
    category character varying(255),
    address character varying(255),
    sysamdin boolean NOT NULL,
    authorname character varying(255),
    authorfullname character varying(255),
    authorkey character varying(255),
    objectname character varying(255),
    objecttype character varying(255),
    searchstring character varying(4000),
    creationdate bigint NOT NULL
);


ALTER TABLE auditrecord OWNER TO confluence;

--
-- Name: bandana; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE bandana (
    bandanaid bigint NOT NULL,
    bandanacontext character varying(255) NOT NULL,
    bandanakey character varying(100) NOT NULL,
    bandanavalue text
);


ALTER TABLE bandana OWNER TO confluence;

--
-- Name: bodycontent; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE bodycontent (
    bodycontentid bigint NOT NULL,
    body text,
    contentid bigint,
    bodytypeid smallint
);


ALTER TABLE bodycontent OWNER TO confluence;

--
-- Name: clustersafety; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE clustersafety (
    clustersafetyid bigint NOT NULL,
    safetynumber integer
);


ALTER TABLE clustersafety OWNER TO confluence;

--
-- Name: confancestors; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE confancestors (
    descendentid bigint NOT NULL,
    ancestorposition integer NOT NULL,
    ancestorid bigint NOT NULL
);


ALTER TABLE confancestors OWNER TO confluence;

--
-- Name: confversion; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE confversion (
    confversionid bigint NOT NULL,
    buildnumber integer NOT NULL,
    installdate timestamp without time zone,
    versiontag character varying(255),
    creationdate timestamp without time zone,
    lastmoddate timestamp without time zone
);


ALTER TABLE confversion OWNER TO confluence;

--
-- Name: content; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE content (
    contentid bigint NOT NULL,
    hibernateversion integer DEFAULT 0 NOT NULL,
    contenttype character varying(255) NOT NULL,
    title character varying(255),
    lowertitle character varying(255),
    version integer,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone,
    versioncomment text,
    prevver bigint,
    content_status character varying(255),
    pageid bigint,
    spaceid bigint,
    child_position integer,
    parentid bigint,
    messageid character varying(255),
    pluginkey character varying(255),
    pluginver character varying(255),
    parentccid bigint,
    draftpageid character varying(255),
    draftspacekey character varying(255),
    drafttype character varying(255),
    draftpageversion integer,
    parentcommentid bigint,
    username character varying(255)
);


ALTER TABLE content OWNER TO confluence;

--
-- Name: content_label; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE content_label (
    id bigint NOT NULL,
    labelid bigint NOT NULL,
    contentid bigint,
    pagetemplateid bigint,
    owner character varying(255),
    creationdate timestamp without time zone,
    lastmoddate timestamp without time zone,
    labelableid bigint,
    labelabletype character varying(255)
);


ALTER TABLE content_label OWNER TO confluence;

--
-- Name: content_perm; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE content_perm (
    id bigint NOT NULL,
    cp_type character varying(10) NOT NULL,
    username character varying(255),
    groupname character varying(255),
    cps_id bigint NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE content_perm OWNER TO confluence;

--
-- Name: content_perm_set; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE content_perm_set (
    id bigint NOT NULL,
    cont_perm_type character varying(10) NOT NULL,
    content_id bigint NOT NULL,
    creationdate timestamp without time zone,
    lastmoddate timestamp without time zone
);


ALTER TABLE content_perm_set OWNER TO confluence;

--
-- Name: content_relation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE content_relation (
    relationid bigint NOT NULL,
    targetcontentid bigint NOT NULL,
    sourcecontentid bigint NOT NULL,
    targettype character varying(255) NOT NULL,
    sourcetype character varying(255) NOT NULL,
    relationname character varying(255) NOT NULL,
    creationdate timestamp without time zone NOT NULL,
    lastmoddate timestamp without time zone NOT NULL,
    creator character varying(255) NOT NULL,
    lastmodifier character varying(255) NOT NULL
);


ALTER TABLE content_relation OWNER TO confluence;

--
-- Name: contentproperties; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE contentproperties (
    propertyid bigint NOT NULL,
    propertyname character varying(255) NOT NULL,
    stringval character varying(255),
    longval bigint,
    dateval timestamp without time zone,
    contentid bigint
);


ALTER TABLE contentproperties OWNER TO confluence;

--
-- Name: cwd_app_dir_group_mapping; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_app_dir_group_mapping (
    id bigint NOT NULL,
    app_dir_mapping_id bigint NOT NULL,
    application_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    group_name character varying(255) NOT NULL
);


ALTER TABLE cwd_app_dir_group_mapping OWNER TO confluence;

--
-- Name: cwd_app_dir_mapping; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_app_dir_mapping (
    id bigint NOT NULL,
    application_id bigint,
    directory_id bigint NOT NULL,
    allow_all character(1) NOT NULL,
    list_index integer
);


ALTER TABLE cwd_app_dir_mapping OWNER TO confluence;

--
-- Name: cwd_app_dir_operation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_app_dir_operation (
    app_dir_mapping_id bigint NOT NULL,
    operation_type character varying(32) NOT NULL
);


ALTER TABLE cwd_app_dir_operation OWNER TO confluence;

--
-- Name: cwd_application; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_application (
    id bigint NOT NULL,
    application_name character varying(255) NOT NULL,
    lower_application_name character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    active character(1) NOT NULL,
    description character varying(255),
    application_type character varying(32) NOT NULL,
    credential character varying(255) NOT NULL
);


ALTER TABLE cwd_application OWNER TO confluence;

--
-- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_application_address (
    application_id bigint NOT NULL,
    remote_address character varying(255) NOT NULL
);


ALTER TABLE cwd_application_address OWNER TO confluence;

--
-- Name: cwd_application_attribute; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_application_attribute (
    application_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(4000)
);


ALTER TABLE cwd_application_attribute OWNER TO confluence;

--
-- Name: cwd_directory; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_directory (
    id bigint NOT NULL,
    directory_name character varying(255) NOT NULL,
    lower_directory_name character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    active character(1) NOT NULL,
    description character varying(255),
    impl_class character varying(255) NOT NULL,
    lower_impl_class character varying(255) NOT NULL,
    directory_type character varying(32) NOT NULL
);


ALTER TABLE cwd_directory OWNER TO confluence;

--
-- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_directory_attribute (
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(4000)
);


ALTER TABLE cwd_directory_attribute OWNER TO confluence;

--
-- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_directory_operation (
    directory_id bigint NOT NULL,
    operation_type character varying(32) NOT NULL
);


ALTER TABLE cwd_directory_operation OWNER TO confluence;

--
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_group (
    id bigint NOT NULL,
    group_name character varying(255) NOT NULL,
    lower_group_name character varying(255) NOT NULL,
    active character(1) NOT NULL,
    local character(1) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    description character varying(255),
    group_type character varying(32) NOT NULL,
    directory_id bigint NOT NULL
);


ALTER TABLE cwd_group OWNER TO confluence;

--
-- Name: cwd_group_attribute; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_group_attribute (
    id bigint NOT NULL,
    group_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255),
    attribute_lower_value character varying(255)
);


ALTER TABLE cwd_group_attribute OWNER TO confluence;

--
-- Name: cwd_membership; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_membership (
    id bigint NOT NULL,
    parent_id bigint NOT NULL,
    child_group_id bigint,
    child_user_id bigint
);


ALTER TABLE cwd_membership OWNER TO confluence;

--
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_user (
    id bigint NOT NULL,
    user_name character varying(255) NOT NULL,
    lower_user_name character varying(255) NOT NULL,
    active character(1) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    external_id character varying(255),
    directory_id bigint NOT NULL,
    credential character varying(255)
);


ALTER TABLE cwd_user OWNER TO confluence;

--
-- Name: cwd_user_attribute; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_user_attribute (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255),
    attribute_lower_value character varying(255)
);


ALTER TABLE cwd_user_attribute OWNER TO confluence;

--
-- Name: cwd_user_credential_record; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE cwd_user_credential_record (
    id bigint NOT NULL,
    user_id bigint,
    password_hash character varying(255) NOT NULL,
    list_index integer
);


ALTER TABLE cwd_user_credential_record OWNER TO confluence;

--
-- Name: decorator; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE decorator (
    decoratorid bigint NOT NULL,
    spacekey character varying(255),
    decoratorname character varying(255),
    body text,
    lastmoddate timestamp without time zone
);


ALTER TABLE decorator OWNER TO confluence;

--
-- Name: external_entities; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE external_entities (
    id bigint NOT NULL,
    name character varying(255),
    type character varying(255) NOT NULL
);


ALTER TABLE external_entities OWNER TO confluence;

--
-- Name: external_members; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE external_members (
    extentityid bigint NOT NULL,
    groupid bigint NOT NULL
);


ALTER TABLE external_members OWNER TO confluence;

--
-- Name: extrnlnks; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE extrnlnks (
    linkid bigint NOT NULL,
    contenttype character varying(255) NOT NULL,
    viewcount integer NOT NULL,
    url character varying(255) NOT NULL,
    lowerurl character varying(255) NOT NULL,
    contentid bigint NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE extrnlnks OWNER TO confluence;

--
-- Name: follow_connections; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE follow_connections (
    connectionid bigint NOT NULL,
    follower character varying(255),
    followee character varying(255)
);


ALTER TABLE follow_connections OWNER TO confluence;

--
-- Name: groups; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE groups (
    id bigint NOT NULL,
    groupname character varying(255) NOT NULL
);


ALTER TABLE groups OWNER TO confluence;

--
-- Name: hibernate_unique_key; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE hibernate_unique_key (
    next_hi integer
);


ALTER TABLE hibernate_unique_key OWNER TO confluence;

--
-- Name: imagedetails; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE imagedetails (
    attachmentid bigint NOT NULL,
    height integer,
    width integer,
    mimetype character varying(30)
);


ALTER TABLE imagedetails OWNER TO confluence;

--
-- Name: indexqueueentries; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE indexqueueentries (
    entryid bigint NOT NULL,
    creationdate timestamp without time zone,
    type integer,
    handle character varying(255)
);


ALTER TABLE indexqueueentries OWNER TO confluence;

--
-- Name: journalentry; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE journalentry (
    entry_id bigint NOT NULL,
    journal_name character varying(255),
    creationdate timestamp without time zone,
    type character varying(255),
    message character varying(2047)
);


ALTER TABLE journalentry OWNER TO confluence;

--
-- Name: keystore; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE keystore (
    keyid bigint NOT NULL,
    alias character varying(255) NOT NULL,
    type character varying(32) NOT NULL,
    algorithm character varying(32) NOT NULL,
    keyspec text NOT NULL
);


ALTER TABLE keystore OWNER TO confluence;

--
-- Name: label; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE label (
    labelid bigint NOT NULL,
    name character varying(255),
    owner character varying(255),
    namespace character varying(255),
    creationdate timestamp without time zone,
    lastmoddate timestamp without time zone
);


ALTER TABLE label OWNER TO confluence;

--
-- Name: likes; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE likes (
    id bigint NOT NULL,
    contentid bigint NOT NULL,
    username character varying(255) NOT NULL,
    creationdate timestamp without time zone NOT NULL
);


ALTER TABLE likes OWNER TO confluence;

--
-- Name: links; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE links (
    linkid bigint NOT NULL,
    destpagetitle character varying(255),
    lowerdestpagetitle character varying(255),
    destspacekey character varying(255) NOT NULL,
    lowerdestspacekey character varying(255),
    contentid bigint NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE links OWNER TO confluence;

--
-- Name: local_members; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE local_members (
    userid bigint NOT NULL,
    groupid bigint NOT NULL
);


ALTER TABLE local_members OWNER TO confluence;

--
-- Name: logininfo; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE logininfo (
    id bigint NOT NULL,
    curfailed integer,
    totalfailed integer,
    successdate timestamp without time zone,
    prevsuccessdate timestamp without time zone,
    faileddate timestamp without time zone,
    username character varying(255) NOT NULL
);


ALTER TABLE logininfo OWNER TO confluence;

--
-- Name: notifications; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE notifications (
    notificationid bigint NOT NULL,
    contentid bigint,
    labelid bigint,
    spaceid bigint,
    username character varying(255) NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone,
    digest boolean,
    network boolean,
    contenttype character varying(255)
);


ALTER TABLE notifications OWNER TO confluence;

--
-- Name: os_group; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE os_group (
    id bigint NOT NULL,
    groupname character varying(255) NOT NULL
);


ALTER TABLE os_group OWNER TO confluence;

--
-- Name: os_propertyentry; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE os_propertyentry (
    entity_name character varying(125) NOT NULL,
    entity_id bigint NOT NULL,
    entity_key character varying(200) NOT NULL,
    key_type integer,
    boolean_val boolean,
    double_val double precision,
    string_val character varying(255),
    text_val text,
    long_val bigint,
    int_val integer,
    date_val timestamp without time zone
);


ALTER TABLE os_propertyentry OWNER TO confluence;

--
-- Name: os_user; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE os_user (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    passwd character varying(255)
);


ALTER TABLE os_user OWNER TO confluence;

--
-- Name: os_user_group; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE os_user_group (
    group_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE os_user_group OWNER TO confluence;

--
-- Name: pagetemplates; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE pagetemplates (
    templateid bigint NOT NULL,
    hibernateversion integer DEFAULT 0 NOT NULL,
    templatename character varying(255) NOT NULL,
    templatedesc character varying(255),
    pluginkey character varying(255),
    modulekey character varying(255),
    refpluginkey character varying(255),
    refmodulekey character varying(255),
    content text,
    spaceid bigint,
    prevver bigint,
    version integer NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone,
    bodytypeid smallint
);


ALTER TABLE pagetemplates OWNER TO confluence;

--
-- Name: plugindata; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE plugindata (
    plugindataid bigint NOT NULL,
    pluginkey character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    lastmoddate timestamp without time zone,
    data bytea
);


ALTER TABLE plugindata OWNER TO confluence;

--
-- Name: remembermetoken; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE remembermetoken (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    created bigint NOT NULL,
    token character varying(255) NOT NULL
);


ALTER TABLE remembermetoken OWNER TO confluence;

--
-- Name: scheduler_clustered_jobs; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE scheduler_clustered_jobs (
    id bigint NOT NULL,
    job_id character varying(255),
    next_run_time timestamp without time zone,
    version bigint,
    job_runner_key character varying(255),
    raw_parameters bytea,
    sched_type character(1),
    cron_expression character varying(255),
    cron_time_zone character varying(60),
    interval_first_run_time timestamp without time zone,
    interval_millis bigint
);


ALTER TABLE scheduler_clustered_jobs OWNER TO confluence;

--
-- Name: scheduler_run_details; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE scheduler_run_details (
    id bigint NOT NULL,
    job_id character varying(255),
    start_time timestamp without time zone,
    duration bigint,
    outcome character(1),
    message character varying(255)
);


ALTER TABLE scheduler_run_details OWNER TO confluence;

--
-- Name: seq_journal_entry_id; Type: SEQUENCE; Schema: public; Owner: confluence
--

CREATE SEQUENCE seq_journal_entry_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_journal_entry_id OWNER TO confluence;

--
-- Name: spacepermissions; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE spacepermissions (
    permid bigint NOT NULL,
    spaceid bigint,
    permtype character varying(255) NOT NULL,
    permgroupname character varying(255),
    permusername character varying(255),
    permalluserssubject character varying(255),
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE spacepermissions OWNER TO confluence;

--
-- Name: spaces; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE spaces (
    spaceid bigint NOT NULL,
    spacename character varying(255),
    spacekey character varying(255) NOT NULL,
    lowerspacekey character varying(255) NOT NULL,
    spacedescid bigint,
    homepage bigint,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone,
    spacetype character varying(255),
    spacestatus character varying(255)
);


ALTER TABLE spaces OWNER TO confluence;

--
-- Name: trackbacklinks; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE trackbacklinks (
    linkid bigint NOT NULL,
    contenttype character varying(255) NOT NULL,
    viewcount integer NOT NULL,
    url character varying(255) NOT NULL,
    lowerurl character varying(255) NOT NULL,
    title character varying(255),
    blogname character varying(255),
    excerpt character varying(255),
    contentid bigint NOT NULL,
    creator character varying(255),
    creationdate timestamp without time zone,
    lastmodifier character varying(255),
    lastmoddate timestamp without time zone
);


ALTER TABLE trackbacklinks OWNER TO confluence;

--
-- Name: trustedapp; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE trustedapp (
    trustedappid bigint NOT NULL,
    name character varying(255) NOT NULL,
    timeout integer NOT NULL,
    public_key_id bigint NOT NULL
);


ALTER TABLE trustedapp OWNER TO confluence;

--
-- Name: trustedapprestriction; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE trustedapprestriction (
    trustedapprestrictionid bigint NOT NULL,
    type character varying(32) NOT NULL,
    restriction character varying(255),
    trustedappid bigint
);


ALTER TABLE trustedapprestriction OWNER TO confluence;

--
-- Name: user_mapping; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE user_mapping (
    user_key character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    lower_username character varying(255)
);


ALTER TABLE user_mapping OWNER TO confluence;

--
-- Name: user_relation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE user_relation (
    relationid bigint NOT NULL,
    sourceuser character varying(255) NOT NULL,
    targetuser character varying(255) NOT NULL,
    relationname character varying(255) NOT NULL,
    creationdate timestamp without time zone NOT NULL,
    lastmoddate timestamp without time zone NOT NULL,
    creator character varying(255) NOT NULL,
    lastmodifier character varying(255) NOT NULL
);


ALTER TABLE user_relation OWNER TO confluence;

--
-- Name: usercontent_relation; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE usercontent_relation (
    relationid bigint NOT NULL,
    targetcontentid bigint NOT NULL,
    sourceuser character varying(255) NOT NULL,
    targettype character varying(255) NOT NULL,
    relationname character varying(255) NOT NULL,
    creationdate timestamp without time zone NOT NULL,
    lastmoddate timestamp without time zone NOT NULL,
    creator character varying(255) NOT NULL,
    lastmodifier character varying(255) NOT NULL
);


ALTER TABLE usercontent_relation OWNER TO confluence;

--
-- Name: users; Type: TABLE; Schema: public; Owner: confluence
--

CREATE TABLE users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    password character varying(255),
    email character varying(255),
    created timestamp without time zone,
    fullname character varying(255)
);


ALTER TABLE users OWNER TO confluence;

--
-- Name: AO_187CCC_SIDEBAR_LINK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_187CCC_SIDEBAR_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_187CCC_SIDEBAR_LINK_ID_seq"'::regclass);


--
-- Name: AO_21D670_WHITELIST_RULES ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_21D670_WHITELIST_RULES" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_21D670_WHITELIST_RULES_ID_seq"'::regclass);


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_26DB7F_ENTITIES_TO_ROOMS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq"'::regclass);


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_26DB7F_ENTITIES_TO_ROOM_CFG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq"'::regclass);


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_38321B_CUSTOM_CONTENT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"'::regclass);


--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_42E351_HEALTH_CHECK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_42E351_HEALTH_CHECK_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_CONTENT_BLUEPRINT_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq"'::regclass);


--
-- Name: AO_54C900_C_TEMPLATE_REF ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_C_TEMPLATE_REF" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_54C900_C_TEMPLATE_REF_ID_seq"'::regclass);


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_SPACE_BLUEPRINT_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_54C900_SPACE_BLUEPRINT_AO_ID_seq"'::regclass);


--
-- Name: AO_563AEE_ACTIVITY_ENTITY ACTIVITY_ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY" ALTER COLUMN "ACTIVITY_ID" SET DEFAULT nextval('"AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_ACTOR_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_ACTOR_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_ACTOR_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_MEDIA_LINK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_OBJECT_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_OBJECT_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_OBJECT_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_TARGET_ENTITY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_TARGET_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_563AEE_TARGET_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_5F3884_FEATURE_DISCOVERY ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_5F3884_FEATURE_DISCOVERY" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_5F3884_FEATURE_DISCOVERY_ID_seq"'::regclass);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"'::regclass);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"'::regclass);


--
-- Name: AO_6384AB_DISCOVERED ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_6384AB_DISCOVERED" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_6384AB_DISCOVERED_ID_seq"'::regclass);


--
-- Name: AO_6384AB_FEATURE_METADATA_AO ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_6384AB_FEATURE_METADATA_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_6384AB_FEATURE_METADATA_AO_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_EVENT ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_7CDE43_EVENT_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_FILTER_PARAM ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_FILTER_PARAM" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_7CDE43_FILTER_PARAM_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_NOTIFICATION ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_NOTIFICATION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_7CDE43_NOTIFICATION_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_NOTIFICATION_SCHEME" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_7CDE43_NOTIFICATION_SCHEME_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_RECIPIENT ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_RECIPIENT" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_7CDE43_RECIPIENT_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_SERVER_CONFIG ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_SERVER_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_7CDE43_SERVER_CONFIG_ID_seq"'::regclass);


--
-- Name: AO_7CDE43_SERVER_PARAM ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_SERVER_PARAM" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_7CDE43_SERVER_PARAM_ID_seq"'::regclass);


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_88263F_HEALTH_CHECK_STATUS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88263F_HEALTH_CHECK_STATUS_ID_seq"'::regclass);


--
-- Name: AO_88263F_PROPERTIES ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_88263F_PROPERTIES" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88263F_PROPERTIES_ID_seq"'::regclass);


--
-- Name: AO_88263F_READ_NOTIFICATIONS ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_88263F_READ_NOTIFICATIONS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88263F_READ_NOTIFICATIONS_ID_seq"'::regclass);


--
-- Name: AO_88BB94_BATCH_NOTIFICATION ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_88BB94_BATCH_NOTIFICATION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_88BB94_BATCH_NOTIFICATION_ID_seq"'::regclass);


--
-- Name: AO_92296B_AORECENTLY_VIEWED ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_92296B_AORECENTLY_VIEWED" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_92296B_AORECENTLY_VIEWED_ID_seq"'::regclass);


--
-- Name: AO_9412A1_AONOTIFICATION ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_AONOTIFICATION" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_9412A1_AONOTIFICATION_ID_seq"'::regclass);


--
-- Name: AO_9412A1_AOTASK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_AOTASK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_9412A1_AOTASK_ID_seq"'::regclass);


--
-- Name: AO_9412A1_AOUSER ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_AOUSER" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_9412A1_AOUSER_ID_seq"'::regclass);


--
-- Name: AO_9412A1_USER_APP_LINK ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_USER_APP_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_9412A1_USER_APP_LINK_ID_seq"'::regclass);


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_A0B856_WEB_HOOK_LISTENER_AO" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"'::regclass);


--
-- Name: AO_BAF3AA_AOINLINE_TASK GLOBAL_ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_BAF3AA_AOINLINE_TASK" ALTER COLUMN "GLOBAL_ID" SET DEFAULT nextval('"AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq"'::regclass);


--
-- Name: AO_DC98AE_AOHELP_TIP ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_DC98AE_AOHELP_TIP" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_DC98AE_AOHELP_TIP_ID_seq"'::regclass);


--
-- Name: AO_ED669C_SEEN_ASSERTIONS ID; Type: DEFAULT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_ED669C_SEEN_ASSERTIONS" ALTER COLUMN "ID" SET DEFAULT nextval('"AO_ED669C_SEEN_ASSERTIONS_ID_seq"'::regclass);


--
-- Data for Name: AO_187CCC_SIDEBAR_LINK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_187CCC_SIDEBAR_LINK" ("CATEGORY", "CUSTOM_ICON_CLASS", "CUSTOM_TITLE", "DEST_PAGE_ID", "HARDCODED_URL", "HIDDEN", "ID", "POSITION", "SPACE_KEY", "TYPE", "WEB_ITEM_KEY") FROM stdin;
\.


--
-- Name: AO_187CCC_SIDEBAR_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_187CCC_SIDEBAR_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_21D670_WHITELIST_RULES; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_21D670_WHITELIST_RULES" ("ALLOWINBOUND", "EXPRESSION", "ID", "TYPE") FROM stdin;
\.


--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_21D670_WHITELIST_RULES_ID_seq"', 1, false);


--
-- Data for Name: AO_26DB7F_ENTITIES_TO_ROOMS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_26DB7F_ENTITIES_TO_ROOMS" ("ENTITY_KEY", "ID", "MESSAGE_TYPE_KEY", "ROOM_ID") FROM stdin;
\.


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq"', 1, false);


--
-- Data for Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_26DB7F_ENTITIES_TO_ROOM_CFG" ("ENTITY_KEY", "ID", "NOTIFY_CLIENT", "ROOM_ID") FROM stdin;
\.


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq"', 1, false);


--
-- Data for Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_38321B_CUSTOM_CONTENT_LINK" ("CONTENT_KEY", "ID", "LINK_LABEL", "LINK_URL", "SEQUENCE") FROM stdin;
\.


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_42E351_HEALTH_CHECK_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_42E351_HEALTH_CHECK_ENTITY" ("ID") FROM stdin;
\.


--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_42E351_HEALTH_CHECK_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_54C900_CONTENT_BLUEPRINT_AO; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_54C900_CONTENT_BLUEPRINT_AO" ("CREATE_RESULT", "HOW_TO_USE_TEMPLATE", "ID", "INDEX_DISABLED", "INDEX_KEY", "INDEX_TITLE_I18N_KEY", "NAME", "PLUGIN_CLONE", "PLUGIN_MODULE_KEY", "SPACE_KEY", "UUID") FROM stdin;
\.


--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_54C900_C_TEMPLATE_REF; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_54C900_C_TEMPLATE_REF" ("CB_INDEX_PARENTID", "CB_PARENTID", "ID", "NAME", "PARENT_ID", "PLUGIN_CLONE", "PLUGIN_MODULE_KEY", "TEMPLATE_ID", "UUID") FROM stdin;
\.


--
-- Name: AO_54C900_C_TEMPLATE_REF_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_54C900_C_TEMPLATE_REF_ID_seq"', 1, false);


--
-- Data for Name: AO_54C900_SPACE_BLUEPRINT_AO; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_54C900_SPACE_BLUEPRINT_AO" ("CATEGORY", "HOME_PAGE_ID", "ID", "NAME", "PLUGIN_CLONE", "PLUGIN_MODULE_KEY", "PROMOTED_BPS", "UUID") FROM stdin;
\.


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_54C900_SPACE_BLUEPRINT_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_563AEE_ACTIVITY_ENTITY" ("ACTIVITY_ID", "ACTOR_ID", "CONTENT", "GENERATOR_DISPLAY_NAME", "GENERATOR_ID", "ICON_ID", "ID", "ISSUE_KEY", "OBJECT_ID", "POSTER", "PROJECT_KEY", "PUBLISHED", "TARGET_ID", "TITLE", "URL", "USERNAME", "VERB") FROM stdin;
\.


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_563AEE_ACTOR_ENTITY" ("FULL_NAME", "ID", "PROFILE_PAGE_URI", "PROFILE_PICTURE_URI", "USERNAME") FROM stdin;
\.


--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_563AEE_ACTOR_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_563AEE_MEDIA_LINK_ENTITY" ("DURATION", "HEIGHT", "ID", "URL", "WIDTH") FROM stdin;
\.


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_563AEE_OBJECT_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_563AEE_OBJECT_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_563AEE_TARGET_ENTITY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_563AEE_TARGET_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_563AEE_TARGET_ENTITY_ID_seq"', 1, false);


--
-- Data for Name: AO_5F3884_FEATURE_DISCOVERY; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_5F3884_FEATURE_DISCOVERY" ("DISCOVERED", "ID", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_5F3884_FEATURE_DISCOVERY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_5F3884_FEATURE_DISCOVERY_ID_seq"', 1, false);


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_5FB9D7_AOHIP_CHAT_LINK" ("ADDON_TOKEN_EXPIRY", "API_URL", "CONNECT_DESCRIPTOR", "GROUP_ID", "GROUP_NAME", "ID", "OAUTH_ID", "SECRET_KEY", "SYSTEM_PASSWORD", "SYSTEM_TOKEN_EXPIRY", "SYSTEM_USER", "SYSTEM_USER_TOKEN", "TOKEN") FROM stdin;
\.


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_5FB9D7_AOHIP_CHAT_USER" ("HIP_CHAT_LINK_ID", "HIP_CHAT_USER_ID", "HIP_CHAT_USER_NAME", "ID", "REFRESH_CODE", "USER_KEY", "USER_SCOPES", "USER_TOKEN", "USER_TOKEN_EXPIRY") FROM stdin;
\.


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"', 1, false);


--
-- Data for Name: AO_6384AB_DISCOVERED; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_6384AB_DISCOVERED" ("DATE", "ID", "KEY", "PLUGIN_KEY", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_6384AB_DISCOVERED_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_6384AB_DISCOVERED_ID_seq"', 1, false);


--
-- Data for Name: AO_6384AB_FEATURE_METADATA_AO; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_6384AB_FEATURE_METADATA_AO" ("CONTEXT", "ID", "INSTALLATION_DATE", "KEY") FROM stdin;
confluence.extra.userlister	1	2017-07-19 14:48:05.142	userlister
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2	2017-07-19 14:48:05.142	luceneSupportHealthCheck
com.atlassian.confluence.plugins.confluence-paste	3	2017-07-19 14:48:05.142	autoconvert-widget-connector
confluence.listeners.core	4	2017-07-19 14:48:05.142	relatedContentRefactoringListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5	2017-07-19 14:48:05.142	instanceTopologyReportUpgradeTask
com.atlassian.support.healthcheck.support-healthcheck-plugin	6	2017-07-19 14:48:05.142	shc-common-modules
com.atlassian.confluence.plugins.confluence-content-property-storage	7	2017-07-19 14:48:05.142	contentPropertyFinderFactory
com.atlassian.confluence.plugins.confluence-like	8	2017-07-19 14:48:05.142	like-icon-resources
com.atlassian.confluence.editor	9	2017-07-19 14:48:05.142	xmlEventReaderFactory
confluence.sections.admin	10	2017-07-19 14:48:05.142	attachmentstoragesetup
com.atlassian.confluence.plugins.recently-viewed-plugin	11	2017-07-19 14:48:05.142	recentlyViewedManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	12	2017-07-19 14:48:05.142	create-blank-page
com.atlassian.confluence.plugins.confluence-inline-comments	13	2017-07-19 14:48:05.142	new-mail-notification-transformer
tac.confluence.languages.sk_SK	14	2017-07-19 14:48:05.142	sk_SK
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	15	2017-07-19 14:48:05.142	upm-js-libraries
com.atlassian.confluence.plugins.confluence-email-resources	16	2017-07-19 14:48:05.142	content-templates-content-created-pattern-2.0.0
confluence.sections.admin	17	2017-07-19 14:48:05.142	mailservers
com.atlassian.confluence.plugins.confluence-mobile	18	2017-07-19 14:48:05.142	view-comments-resource
com.atlassian.applinks.applinks-trustedapps-plugin	19	2017-07-19 14:48:05.142	userManager
com.atlassian.streams.confluence	20	2017-07-19 14:48:05.142	date-sma-SE
com.atlassian.applinks.applinks-plugin	21	2017-07-19 14:48:05.142	applinksRest
com.atlassian.confluence.plugins.gadgets	22	2017-07-19 14:48:05.142	permissionManager
confluence.extra.layout	23	2017-07-19 14:48:05.142	xhtml-section
com.atlassian.support.stp	24	2017-07-19 14:48:05.142	servletContextProvider
com.atlassian.oauth.serviceprovider	25	2017-07-19 14:48:05.142	tokenFactory
com.atlassian.confluence.plugins.confluence-nav-links	26	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.applinks.applinks-plugin	27	2017-07-19 14:48:05.142	applinks-whoami
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	28	2017-07-19 14:48:05.142	notificationQueueAdminLink
com.atlassian.support.stp	29	2017-07-19 14:48:05.142	stp-view
com.atlassian.plugins.base-hipchat-integration-plugin	30	2017-07-19 14:48:05.142	apiMessagePanel
confluence.macros.multimedia	31	2017-07-19 14:48:05.142	flash-autosize
com.atlassian.confluence.plugins.confluence-file-notifications	32	2017-07-19 14:48:05.142	datasourceFactory
com.atlassian.confluence.plugins.confluence-templates	33	2017-07-19 14:48:05.142	template-management-resources
com.atlassian.plugins.atlassian-nav-links-plugin	34	2017-07-19 14:48:05.142	custom-apps-admin-page-template
com.atlassian.applinks.applinks-plugin	35	2017-07-19 14:48:05.142	jira
confluence.sections.space.tools	36	2017-07-19 14:48:05.142	reorder
com.atlassian.confluence.plugins.confluence-create-content-plugin	37	2017-07-19 14:48:05.142	main
com.atlassian.confluence.plugins.confluence-rest-resources	38	2017-07-19 14:48:05.142	content-search-api
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	39	2017-07-19 14:48:05.142	synchrony-util
com.atlassian.auiplugin	40	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-params
confluence.extra.impresence2	41	2017-07-19 14:48:05.142	aim-xhtml
confluence.web.resources	42	2017-07-19 14:48:05.142	draft-changes-js
com.atlassian.confluence.plugins.dialog-wizard	43	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.confluence.plugins.view-source	44	2017-07-19 14:48:05.142	view-source-menu-resources
confluence.web.resources	45	2017-07-19 14:48:05.142	page-editor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	46	2017-07-19 14:48:05.142	settingsManager
com.atlassian.oauth.serviceprovider	47	2017-07-19 14:48:05.142	helpLinkResolverContextItem
com.atlassian.confluence.ext.newcode-macro-plugin	48	2017-07-19 14:48:05.142	syntaxhighlighter-brushes
confluence.search.mappers.lucene	49	2017-07-19 14:48:05.142	searchResultTypeSearchFilter
com.atlassian.confluence.keyboardshortcuts	50	2017-07-19 14:48:05.142	tinymce.table.copy.row
com.atlassian.auiplugin	51	2017-07-19 14:48:05.142	aui-experimental-reset
com.atlassian.streams.confluence	52	2017-07-19 14:48:05.142	userAccessor
com.atlassian.crowd.embedded.admin	53	2017-07-19 14:48:05.142	web-resources
com.atlassian.confluence.plugins.confluence-inline-comments	54	2017-07-19 14:48:05.142	inlineCommentsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	55	2017-07-19 14:48:05.142	follower-added-recipients-provider
confluence.extra.impresence2	56	2017-07-19 14:48:05.142	reporter-wildfire
com.atlassian.confluence.restplugin	57	2017-07-19 14:48:05.142	userManager
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	58	2017-07-19 14:48:05.142	service
com.atlassian.confluence.plugins.confluence-email-resources	59	2017-07-19 14:48:05.142	get-attachment-icon-function
com.atlassian.confluence.plugins.gadgets	60	2017-07-19 14:48:05.142	settingsManager
com.atlassian.streams.confluence	61	2017-07-19 14:48:05.142	date-bs-Latn-BA
confluence.listeners.core	62	2017-07-19 14:48:05.142	pageNotificationsListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	63	2017-07-19 14:48:05.142	header-create-quick
com.atlassian.plugins.editor	64	2017-07-19 14:48:05.142	components
com.atlassian.plugin.jslibs	65	2017-07-19 14:48:05.142	backbone.paginator-2.0.2-factory
com.atlassian.confluence.plugins.confluence-space-ia	66	2017-07-19 14:48:05.142	server-soy-resources
com.atlassian.confluence.plugins.confluence-templates	67	2017-07-19 14:48:05.142	variable-editor-content-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	68	2017-07-19 14:48:05.142	upm-purchased-addons-resources
com.atlassian.streams	69	2017-07-19 14:48:05.142	date-nl-NL
com.atlassian.mywork.mywork-common-plugin	70	2017-07-19 14:48:05.142	actionServiceSelector
com.atlassian.applinks.applinks-plugin	71	2017-07-19 14:48:05.142	fisheyeCrucible
com.atlassian.support.stp	72	2017-07-19 14:48:05.142	isDisplayableAppCondition
com.atlassian.streams	73	2017-07-19 14:48:05.142	date-bg-BG
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	74	2017-07-19 14:48:05.142	darkFeatureManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	75	2017-07-19 14:48:05.142	admin-resources
com.atlassian.querylang.confluence-cql-plugin	76	2017-07-19 14:48:05.142	content-id-sort-mapper
com.atlassian.confluence.contributors	77	2017-07-19 14:48:05.142	labelContributionExtractor
com.atlassian.querylang.confluence-cql-plugin	78	2017-07-19 14:48:05.142	start-of-year-zero-arg-function
confluence.macros.profile	79	2017-07-19 14:48:05.142	network-resources-css
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	80	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.streams.confluence	81	2017-07-19 14:48:05.142	pageWatchActionHandler
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	82	2017-07-19 14:48:05.142	localeResolver
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	83	2017-07-19 14:48:05.142	jwtTokenGenerator
com.atlassian.plugins.rest.atlassian-rest-module	84	2017-07-19 14:48:05.142	rest-container-servlet-filter-FORWARD
com.atlassian.confluence.plugins.share-page	85	2017-07-19 14:48:05.142	share-address-recipients-provider
com.atlassian.confluence.plugins.confluence-edge-index	86	2017-07-19 14:48:05.142	popularContentQueries
com.atlassian.confluence.plugins.confluence-monitoring-console	87	2017-07-19 14:48:05.142	monitoring-console-resources
com.atlassian.applinks.applinks-plugin	88	2017-07-19 14:48:05.142	servlet-edit-application-link
com.atlassian.applinks.applinks-plugin	89	2017-07-19 14:48:05.142	entityLinkBuilderFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	90	2017-07-19 14:48:05.142	page-edited-notification-template
com.atlassian.confluence.plugins.confluence-page-banner	91	2017-07-19 14:48:05.142	content-metadata-page-restrictions-edit
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	92	2017-07-19 14:48:05.142	rest-filter
com.atlassian.plugins.tinymce	93	2017-07-19 14:48:05.142	popup-resources
com.atlassian.confluence.editor	94	2017-07-19 14:48:05.142	collaborative-helper
com.atlassian.mywork.mywork-confluence-provider-plugin	95	2017-07-19 14:48:05.142	notificationManager
confluence.search.mappers.lucene	96	2017-07-19 14:48:05.142	externallyDeletedUserSearchFilter
com.atlassian.confluence.plugins.confluence-create-content-plugin	97	2017-07-19 14:48:05.142	pluginEnabledListener
confluence.filters.core	98	2017-07-19 14:48:05.142	confluenceTimingFilter
com.atlassian.confluence.plugins.confluence-daily-summary-email	99	2017-07-19 14:48:05.142	secureTokenGenerator
confluence.renderer.components	100	2017-07-19 14:48:05.142	token
confluence.macros.advanced	101	2017-07-19 14:48:05.142	junit-report-resources
com.atlassian.plugins.atlassian-whitelist-core-plugin	102	2017-07-19 14:48:05.142	selfUrlMatcher
com.atlassian.confluence.plugins.gadgets	103	2017-07-19 14:48:05.142	gadgetWhiteListManager
com.atlassian.confluence.plugins.confluence-dashboard	104	2017-07-19 14:48:05.142	welcomeMessageService
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	105	2017-07-19 14:48:05.142	pluginEventManager
com.atlassian.confluence.plugins.confluence-dashboard	106	2017-07-19 14:48:05.142	dashboard-rest-filter
com.atlassian.confluence.plugins.confluence-easyuser-admin	107	2017-07-19 14:48:05.142	easyuser-rest
com.atlassian.plugins.editor	108	2017-07-19 14:48:05.142	editoractions
com.atlassian.confluence.plugins.confluence-lookandfeel	109	2017-07-19 14:48:05.142	logoInterceptor
tac.confluence.languages.es_ES	110	2017-07-19 14:48:05.142	es_ES
confluence.listeners.core	111	2017-07-19 14:48:05.142	pluginEventLogger
com.atlassian.auiplugin	112	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-unbind-text-resize
com.atlassian.confluence.ext.newcode-macro-plugin	113	2017-07-19 14:48:05.142	code-macro-editor
com.atlassian.confluence.plugins.confluence-paste	114	2017-07-19 14:48:05.142	restEndPoint-filter
com.atlassian.plugins.atlassian-nps-plugin	115	2017-07-19 14:48:05.142	licenseHandler
com.atlassian.confluence.plugins.confluence-document-conversion-library	116	2017-07-19 14:48:05.142	conversionCacheListener
com.atlassian.applinks.applinks-plugin	117	2017-07-19 14:48:05.142	applinksRest-filter
com.atlassian.confluence.plugins.confluence-knowledge-base	118	2017-07-19 14:48:05.142	knowledge-base-search
com.atlassian.auiplugin	119	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-i18n-aui
com.atlassian.applinks.applinks-basicauth-plugin	120	2017-07-19 14:48:05.142	localeResolver
com.atlassian.support.stp	121	2017-07-19 14:48:05.142	licenseHandler
com.atlassian.analytics.analytics-whitelist	122	2017-07-19 14:48:05.142	globalConfluenceAnalyticsWhitelist
com.atlassian.plugins.authentication.atlassian-authentication-plugin	123	2017-07-19 14:48:05.142	confluence-authentication-config-web-item
com.atlassian.mywork.mywork-confluence-host-plugin	124	2017-07-19 14:48:05.142	mw-mobile
com.atlassian.confluence.plugins.confluence-onboarding	125	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-edge-index	126	2017-07-19 14:48:05.142	likeCountQuery
com.atlassian.streams.streams-thirdparty-plugin	127	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	128	2017-07-19 14:48:05.142	forgot-password-notification
com.atlassian.confluence.plugins.confluence-email-resources	129	2017-07-19 14:48:05.142	content-templates-move-page-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	130	2017-07-19 14:48:05.142	space-creation-step
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	131	2017-07-19 14:48:05.142	pluginUpdateRequestStore
com.atlassian.auiplugin	132	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-jquery-jquery-tablesorter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	133	2017-07-19 14:48:05.142	blogpost-edited-notification
com.atlassian.applinks.applinks-basicauth-plugin	134	2017-07-19 14:48:05.142	i18nResolver
confluence.macros.multimedia	135	2017-07-19 14:48:05.142	windows-media
com.atlassian.auiplugin	136	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-alphanum
com.atlassian.confluence.plugins.confluence-request-access-plugin	137	2017-07-19 14:48:05.142	request-access-notification-transformer
com.atlassian.confluence.plugins.confluence-sal-plugin	138	2017-07-19 14:48:05.142	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	139	2017-07-19 14:48:05.142	notification-template
com.atlassian.plugin.notifications.notifications-module	140	2017-07-19 14:48:05.142	notificationQueueAdminServlet
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	141	2017-07-19 14:48:05.142	dark-feature-rest
com.atlassian.confluence.plugins.recently-viewed-plugin	142	2017-07-19 14:48:05.142	recently-viewed-spaces-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	143	2017-07-19 14:48:05.142	lifecycleManager
confluence.web.resources	144	2017-07-19 14:48:05.142	help-content-resources
com.atlassian.confluence.plugins.soy	145	2017-07-19 14:48:05.142	soy-content-type-i18n-key-function
confluence.search.mappers.lucene	146	2017-07-19 14:48:05.142	inheritedLabel
com.atlassian.confluence.plugins.confluence-daily-summary-email	147	2017-07-19 14:48:05.142	rest
confluence.sections.space.tools	148	2017-07-19 14:48:05.142	stop-watching-blog
com.atlassian.mywork.mywork-confluence-host-plugin	149	2017-07-19 14:48:05.142	mwfullview
com.atlassian.confluence.plugins.quickedit	150	2017-07-19 14:48:05.142	quick-comment-hide-traditional
com.atlassian.analytics.analytics-client	151	2017-07-19 14:48:05.142	event-report
com.atlassian.auiplugin	152	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-sidebar
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	153	2017-07-19 14:48:05.142	defaultRoutesProvider
com.atlassian.confluence.editor	154	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-file-notifications	155	2017-07-19 14:48:05.142	file-content-email-css
com.atlassian.auiplugin	156	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-select-template
com.atlassian.confluence.plugins.quickreload	157	2017-07-19 14:48:05.142	commentRenderService
confluence.sections.space.tools	158	2017-07-19 14:48:05.142	colorscheme
com.atlassian.confluence.plugins.confluence-user-profile	159	2017-07-19 14:48:05.142	confluence-user-profile-resources
com.atlassian.plugins.base-hipchat-integration-plugin	160	2017-07-19 14:48:05.142	integration-steps-resources
confluence.admin.user	161	2017-07-19 14:48:05.142	browsegroupmembers
confluence.macros.advanced	162	2017-07-19 14:48:05.142	children-resource
com.atlassian.oauth.serviceprovider	163	2017-07-19 14:48:05.142	oauthFilter
com.atlassian.confluence.plugins.confluence-browser-metrics	164	2017-07-19 14:48:05.142	spa-navigation
com.atlassian.streams.core	165	2017-07-19 14:48:05.142	moduleFactory
com.atlassian.applinks.applinks-trustedapps-plugin	166	2017-07-19 14:48:05.142	applinkPluginUtil
com.atlassian.applinks.applinks-oauth-plugin	167	2017-07-19 14:48:05.142	oauth
com.atlassian.confluence.plugins.soy	168	2017-07-19 14:48:05.142	soy-sections-for-location-soy-function
com.atlassian.confluence.ext.newcode-macro-plugin	169	2017-07-19 14:48:05.142	sh-theme-eclipse
com.atlassian.confluence.plugins.confluence-create-content-plugin	170	2017-07-19 14:48:05.142	create-content-keyboard-shortcut
com.atlassian.confluence.plugins.confluence-sal-plugin	171	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.extra.widgetconnector	172	2017-07-19 14:48:05.142	velocityRenderService
com.atlassian.streams.confluence	173	2017-07-19 14:48:05.142	date-hr-HR
com.atlassian.plugins.atlassian-plugins-webresource-plugin	174	2017-07-19 14:48:05.142	loaders
confluence.renderer.components	175	2017-07-19 14:48:05.142	deleted
com.atlassian.confluence.plugins.soy	176	2017-07-19 14:48:05.142	soy-get-user-by-name-function
com.atlassian.confluence.plugins.confluence-content-property-storage	177	2017-07-19 14:48:05.142	text-field-type-query-mapper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	178	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.gadgets	179	2017-07-19 14:48:05.142	gadget-directory-resources
confluence.search.mappers.lucene	180	2017-07-19 14:48:05.142	spanNear
com.atlassian.streams	181	2017-07-19 14:48:05.142	oauthCompletionServlet
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	182	2017-07-19 14:48:05.142	formatSettingsManager
com.atlassian.confluence.plugins.confluence-lookandfeel	183	2017-07-19 14:48:05.142	sitelogoaction
com.atlassian.plugins.atlassian-nav-links-plugin	184	2017-07-19 14:48:05.142	administration-shortcuts-resources
confluence.sections.create	185	2017-07-19 14:48:05.142	add-page-with-parent-template
com.atlassian.plugins.atlassian-nav-links-plugin	186	2017-07-19 14:48:05.142	capabilities-resource
com.atlassian.confluence.plugins.confluence-sal-plugin	187	2017-07-19 14:48:05.142	licenseHandler
confluence.search.mappers.lucene	188	2017-07-19 14:48:05.142	textSearchFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	189	2017-07-19 14:48:05.142	appendToSelectionModifier
com.atlassian.auiplugin	190	2017-07-19 14:48:05.142	jquery-autocomplete-deprecated
com.atlassian.confluence.plugins.confluence-like	191	2017-07-19 14:48:05.142	like-recipients-provider
com.atlassian.confluence.plugins.confluence-email-resources	192	2017-07-19 14:48:05.142	view-comment-email-call-to-action
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	193	2017-07-19 14:48:05.142	pluginFactory
com.atlassian.integration.jira.jira-integration-plugin	194	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	195	2017-07-19 14:48:05.142	marketplace_confluence
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	196	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.confluence.plugins.confluence-quicknav	197	2017-07-19 14:48:05.142	quicksearch
com.atlassian.auiplugin	198	2017-07-19 14:48:05.142	internal-tether-0.6.5-tether
com.atlassian.oauth.serviceprovider	199	2017-07-19 14:48:05.142	authenticationController
com.atlassian.confluence.ext.newcode-macro-plugin	200	2017-07-19 14:48:05.142	syntaxhighlighter
com.atlassian.confluence.plugins.confluence-cache-management-plugin	201	2017-07-19 14:48:05.142	cacheAdmin
com.atlassian.confluence.plugins.confluence-mobile	202	2017-07-19 14:48:05.142	viewMacroMarshallerFactory
com.atlassian.plugins.atlassian-nav-links-plugin	203	2017-07-19 14:48:05.142	application-type-service
com.atlassian.auiplugin	204	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-drop-down
com.atlassian.activeobjects.activeobjects-plugin	205	2017-07-19 14:48:05.142	dispatcher-servlet
com.atlassian.confluence.plugins.confluence-avatar-plugin	206	2017-07-19 14:48:05.142	confluenceAvatarProvider
com.atlassian.streams.confluence	207	2017-07-19 14:48:05.142	date-it-IT
confluence.web.resources	208	2017-07-19 14:48:05.142	keygen
com.atlassian.mywork.mywork-confluence-host-plugin	209	2017-07-19 14:48:05.142	servlet-renderer
com.atlassian.streams.confluence	210	2017-07-19 14:48:05.142	date-pl-PL
com.atlassian.plugins.atlassian-help-tips	211	2017-07-19 14:48:05.142	compatibilityUserManager
com.atlassian.confluence.contributors	212	2017-07-19 14:48:05.142	noResult
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	213	2017-07-19 14:48:05.142	legacy-axis-endpoint
com.atlassian.auiplugin	214	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-date-picker
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	215	2017-07-19 14:48:05.142	follower-network-notification-recipients-provider
confluence.web.components	216	2017-07-19 14:48:05.142	editor-notifications
com.atlassian.confluence.plugins.confluence-daily-summary-email	217	2017-07-19 14:48:05.142	populartodayaction
com.atlassian.support.stp	218	2017-07-19 14:48:05.142	stp-rest
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	219	2017-07-19 14:48:05.142	api
com.atlassian.streams	220	2017-07-19 14:48:05.142	pluginScheduler
confluence.search.mappers.lucene	221	2017-07-19 14:48:05.142	shadowedUserSearchFilter
com.atlassian.support.stp	222	2017-07-19 14:48:05.142	logScanService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	223	2017-07-19 14:48:05.142	comment-created-notification
com.atlassian.confluence.plugins.confluence-request-access-plugin	224	2017-07-19 14:48:05.142	request-access-notification-recipients-provider
confluence.web.resources	225	2017-07-19 14:48:05.142	panel-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	226	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.confluence.plugins.confluence-email-resources	227	2017-07-19 14:48:05.142	content-templates-page-title-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-inline-comments	228	2017-07-19 14:48:05.142	reply-inline-comment-batch-email-action
confluence.sections.space.tools	229	2017-07-19 14:48:05.142	export
com.atlassian.support.stp	230	2017-07-19 14:48:05.142	os-support-info
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	231	2017-07-19 14:48:05.142	prettyurls-combined-filter-after-encoding
com.atlassian.confluence.plugins.confluence-email-resources	232	2017-07-19 14:48:05.142	debug-email-border-function
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	233	2017-07-19 14:48:05.142	remote-view-page-web-resource
com.atlassian.plugin.notifications.notifications-module	234	2017-07-19 14:48:05.142	userEmail
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	235	2017-07-19 14:48:05.142	comment-edited-notification-template-body
com.atlassian.confluence.plugins.confluence-inline-comments	236	2017-07-19 14:48:05.142	notification-template-resolve
com.atlassian.plugins.tinymce	237	2017-07-19 14:48:05.142	utils-resources
com.atlassian.support.stp	238	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.applinks.applinks-plugin	239	2017-07-19 14:48:05.142	applinks-configure-application-links
com.atlassian.confluence.plugins.gadgets	240	2017-07-19 14:48:05.142	gadgetSpecFactory
com.atlassian.confluence.plugins.confluence-email-resources	241	2017-07-19 14:48:05.142	notification-templates-forgot-password-2.0.0
com.atlassian.plugins.rest.atlassian-rest-module	242	2017-07-19 14:48:05.142	moduleFactory
confluence.macros.advanced	243	2017-07-19 14:48:05.142	recently-updated-concise-resources
com.atlassian.confluence.plugins.confluence-email-resources	244	2017-07-19 14:48:05.142	view-changes-email-footer-item
com.atlassian.applinks.applinks-basicauth-plugin	245	2017-07-19 14:48:05.142	basic-auth-configuration
com.atlassian.plugins.atlassian-nav-links-plugin	246	2017-07-19 14:48:05.142	navigation-capability-resource
confluence.web.resources	247	2017-07-19 14:48:05.142	page-analytics
com.atlassian.streams.confluence	248	2017-07-19 14:48:05.142	date-it-CH
com.atlassian.confluence.extra.officeconnector	249	2017-07-19 14:48:05.142	wordactions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	250	2017-07-19 14:48:05.142	confluenceLicenseDateFormatter
com.atlassian.confluence.plugins.confluence-business-blueprints	251	2017-07-19 14:48:05.142	contextProviderHelper
com.atlassian.confluence.plugins.confluence-space-blueprints	252	2017-07-19 14:48:05.142	view-space-email-item
confluence.web.resources	253	2017-07-19 14:48:05.142	url
com.atlassian.confluence.plugins.dialog-wizard	254	2017-07-19 14:48:05.142	dialog
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	255	2017-07-19 14:48:05.142	templateManager
com.atlassian.mywork.mywork-confluence-provider-plugin	256	2017-07-19 14:48:05.142	i18NBeanFactory
com.atlassian.confluence.plugins.confluence-space-blueprints	257	2017-07-19 14:48:05.142	team-space-homepage-template
com.atlassian.confluence.plugins.confluence-email-resources	258	2017-07-19 14:48:05.142	add-comment-to-content-email-footer-item
confluence.converters.core	259	2017-07-19 14:48:05.142	space-converter
com.atlassian.plugin.notifications.notifications-module	260	2017-07-19 14:48:05.142	notificationQueueManager
confluence.extra.jira	261	2017-07-19 14:48:05.142	countImagegenerator
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	262	2017-07-19 14:48:05.142	hipChatAnalyticsWhitelist
com.atlassian.confluence.keyboardshortcuts	263	2017-07-19 14:48:05.142	tinymce.link
com.atlassian.confluence.plugins.confluence-request-access-plugin	264	2017-07-19 14:48:05.142	request-access-notification-email-template
confluence.extra.confluencerpc	265	2017-07-19 14:48:05.142	confluence-soap
confluence.user.hover.menu	266	2017-07-19 14:48:05.142	user-blog
com.atlassian.confluence.plugins.confluence-file-notifications	267	2017-07-19 14:48:05.142	mimeBodyPartRecorder
com.atlassian.oauth.serviceprovider	268	2017-07-19 14:48:05.142	compatibilityPluginScheduler
com.atlassian.confluence.plugins.confluence-email-resources	269	2017-07-19 14:48:05.142	stop-watching-page-email-footer-item
confluence.extra.attachments	270	2017-07-19 14:48:05.142	attachments.actions
com.atlassian.confluence.extra.officeconnector	271	2017-07-19 14:48:05.142	wordXMLContentExtractor
confluence.user.menu	272	2017-07-19 14:48:05.142	user-favourites
confluence.web.resources	273	2017-07-19 14:48:05.142	bigpipe-settings
confluence.aui.staging	274	2017-07-19 14:48:05.142	confluence-flags
com.atlassian.confluence.plugins.confluence-email-resources	275	2017-07-19 14:48:05.142	template-utils-source-link-1.0.0
com.atlassian.streams.confluence	276	2017-07-19 14:48:05.142	activityItemFactory
com.atlassian.applinks.applinks-basicauth-plugin	277	2017-07-19 14:48:05.142	basic-auth
com.atlassian.confluence.plugins.confluence-create-content-plugin	278	2017-07-19 14:48:05.142	pageTemplateWebItemService
com.atlassian.mywork.mywork-common-plugin	279	2017-07-19 14:48:05.142	plugin-settings-factory
com.atlassian.confluence.plugins.confluence-spaces	280	2017-07-19 14:48:05.142	perms
com.atlassian.support.stp	281	2017-07-19 14:48:05.142	stp-license-banner-data-fecru
com.atlassian.auiplugin	282	2017-07-19 14:48:05.142	dialog
com.atlassian.mywork.mywork-confluence-provider-plugin	283	2017-07-19 14:48:05.142	contentEntityManager
com.atlassian.confluence.plugins.gadgets	284	2017-07-19 14:48:05.142	gadget-search
confluence.sections.space.advanced	285	2017-07-19 14:48:05.142	startwatchingblogsonly
com.atlassian.confluence.plugins.confluence-create-content-plugin	286	2017-07-19 14:48:05.142	create-blank-space-item
com.atlassian.auiplugin	287	2017-07-19 14:48:05.142	aui-navigation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	288	2017-07-19 14:48:05.142	blogpost-edited-notification-transformer
com.atlassian.confluence.editor	289	2017-07-19 14:48:05.142	file-types-utils-resources
com.atlassian.confluence.extra.widgetconnector	290	2017-07-19 14:48:05.142	dabbledb
com.atlassian.confluence.plugins.confluence-onboarding	291	2017-07-19 14:48:05.142	onboarding-recipients-provider
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	292	2017-07-19 14:48:05.142	hipchat-presence-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	293	2017-07-19 14:48:05.142	firstBlueprintCreationListener
com.atlassian.healthcheck.atlassian-healthcheck	294	2017-07-19 14:48:05.142	healthCheckManager
confluence.extra.impresence2	295	2017-07-19 14:48:05.142	im
confluence.web.resources	296	2017-07-19 14:48:05.142	raphael
com.atlassian.plugin.notifications.notifications-module	297	2017-07-19 14:48:05.142	configManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	298	2017-07-19 14:48:05.142	discovery-javascript-data
tac.confluence.languages.ko_KR	299	2017-07-19 14:48:05.142	ko_KR
com.atlassian.streams.confluence	300	2017-07-19 14:48:05.142	predefinedSearchBuilder
com.atlassian.confluence.contributors	301	2017-07-19 14:48:05.142	contributors
com.atlassian.confluence.plugins.confluence-email-resources	302	2017-07-19 14:48:05.142	view-attachments-email-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	303	2017-07-19 14:48:05.142	notification-templates-invite-user-1.0.0
com.atlassian.mywork.mywork-confluence-provider-plugin	304	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	305	2017-07-19 14:48:05.142	code-syntax
confluence.search.mappers.lucene	306	2017-07-19 14:48:05.142	term
com.atlassian.analytics.analytics-client	307	2017-07-19 14:48:05.142	eventReportPermissionManager
com.atlassian.confluence.editor	308	2017-07-19 14:48:05.142	editor-content-styles
com.atlassian.auiplugin	309	2017-07-19 14:48:05.142	jquery
com.atlassian.crowd.embedded.admin	310	2017-07-19 14:48:05.142	supportInformationService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	311	2017-07-19 14:48:05.142	userAccessor
com.atlassian.confluence.plugins.expand-macro	312	2017-07-19 14:48:05.142	expand-migration
com.atlassian.confluence.plugins.confluence-create-content-plugin	313	2017-07-19 14:48:05.142	rest-experimental-filter
com.atlassian.plugins.editor	314	2017-07-19 14:48:05.142	atlassian-rte-resources
com.atlassian.confluence.plugins.share-page	315	2017-07-19 14:48:05.142	share-page-email-notification-template
com.atlassian.confluence.plugins.confluence-document-conversion-library	316	2017-07-19 14:48:05.142	file-conversions
confluence.sections.space.tools	317	2017-07-19 14:48:05.142	permissionedpages
com.atlassian.confluence.plugins.status-macro	318	2017-07-19 14:48:05.142	view_content_status
com.atlassian.streams	319	2017-07-19 14:48:05.142	date-nl-BE
com.atlassian.confluence.plugins.confluence-document-conversion-library	320	2017-07-19 14:48:05.142	cloudAttachmentListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	321	2017-07-19 14:48:05.142	upm-marketplace
com.atlassian.confluence.plugins.confluence-inline-comments	322	2017-07-19 14:48:05.142	inlinecomment.sidebar.navigate.next
com.atlassian.streams.confluence	431	2017-07-19 14:48:05.142	date-mt-MT
com.atlassian.applinks.applinks-trustedapps-plugin	323	2017-07-19 14:48:05.142	confluence-inbound-trusted
confluence.sections.space.tools	324	2017-07-19 14:48:05.142	undefined
com.atlassian.streams	325	2017-07-19 14:48:05.142	datepicker
com.atlassian.confluence.plugins.gadgets	326	2017-07-19 14:48:05.142	static-resources
confluence.web.resources	327	2017-07-19 14:48:05.142	signup
com.atlassian.confluence.plugins.confluence-sal-plugin	328	2017-07-19 14:48:05.142	salWebSudoManager
com.atlassian.auiplugin	329	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-tabs
com.atlassian.confluence.plugins.soy	330	2017-07-19 14:48:05.142	soy-dark-feature-function
confluence.macros.multimedia	331	2017-07-19 14:48:05.142	mimeTypeTranslator
com.atlassian.auiplugin	332	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-create-element
com.atlassian.plugin.notifications.notifications-module	333	2017-07-19 14:48:05.142	threadLocalDelegateExecutorFactory
com.atlassian.querylang.confluence-cql-plugin	334	2017-07-19 14:48:05.142	favorite-field
com.atlassian.confluence.plugins.confluence-inline-comments	335	2017-07-19 14:48:05.142	library
com.atlassian.confluence.plugins.confluence-dashboard	336	2017-07-19 14:48:05.142	confluence-dashboard-web-panel
confluence.search.mappers.lucene	337	2017-07-19 14:48:05.142	macroUsage
com.atlassian.auiplugin	338	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-add-id
com.atlassian.confluence.plugins.confluence-like	339	2017-07-19 14:48:05.142	rest-caching-filter
com.atlassian.applinks.applinks-oauth-plugin	340	2017-07-19 14:48:05.142	configure-outgoing-2lo-reciprocal
com.atlassian.confluence.plugins.confluence-email-resources	341	2017-07-19 14:48:05.142	template-utils-1.0.0
com.atlassian.confluence.plugins.share-page	342	2017-07-19 14:48:05.142	share-page-hipchat-notification-template
com.atlassian.analytics.analytics-client	343	2017-07-19 14:48:05.142	policy-update
confluence.sections.profile	344	2017-07-19 14:48:05.142	drafts
confluence.web.resources	345	2017-07-19 14:48:05.142	setup-cluster
com.atlassian.confluence.plugins.confluence-onboarding	346	2017-07-19 14:48:05.142	contentGenerator
confluence.extra.webdav	347	2017-07-19 14:48:05.142	webdav-config-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	348	2017-07-19 14:48:05.142	userBlueprintConfigManager
com.atlassian.confluence.contributors	349	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	350	2017-07-19 14:48:05.142	accessControlAllowOriginServletFilter
com.atlassian.confluence.extra.officeconnector	351	2017-07-19 14:48:05.142	cacheCleanupJobDetail
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	352	2017-07-19 14:48:05.142	pluginRetriever
com.atlassian.confluence.plugins.confluence-jira-content	353	2017-07-19 14:48:05.142	confluence-jira-content-loader
com.atlassian.confluence.plugins.confluence-email-resources	354	2017-07-19 14:48:05.142	notification-templates-blogpost-edited-2.0.0
com.atlassian.support.healthcheck.support-healthcheck-plugin	355	2017-07-19 14:48:05.142	healthCheckUserSettingsService
com.atlassian.streams	356	2017-07-19 14:48:05.142	date-ja-JP
com.atlassian.confluence.plugins.confluence-license-rest	357	2017-07-19 14:48:05.142	permissionManager
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	358	2017-07-19 14:48:05.142	styles
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	359	2017-07-19 14:48:05.142	hipchat2-space-configuration-2
com.atlassian.streams.core	360	2017-07-19 14:48:05.142	activity-streams-provider
com.atlassian.confluence.plugins.confluence-lookandfeel	361	2017-07-19 14:48:05.142	autoLookAndFeelManager
com.atlassian.confluence.contributors	362	2017-07-19 14:48:05.142	commentContributionExtractor
com.atlassian.confluence.plugins.confluence-inline-comments	363	2017-07-19 14:48:05.142	util-resource
com.atlassian.confluence.plugins.confluence-user-rest	364	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.auiplugin	365	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-jquery-jquery-moveto
com.atlassian.confluence.plugins.confluence-content-property-storage	366	2017-07-19 14:48:05.142	spaceService
com.atlassian.confluence.ext.newcode-macro-plugin	367	2017-07-19 14:48:05.142	moduleFactory
confluence.web.resources	368	2017-07-19 14:48:05.142	setup-select-bundle
com.atlassian.streams	369	2017-07-19 14:48:05.142	date-sk-SK
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	370	2017-07-19 14:48:05.142	comment-created-notification-template
com.atlassian.oauth.serviceprovider	371	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.streams	372	2017-07-19 14:48:05.142	date-sv-SE
com.atlassian.streams.confluence	373	2017-07-19 14:48:05.142	date-hr-BA
confluence.extractors.core	374	2017-07-19 14:48:05.142	entityDateChangeExtractor
com.atlassian.confluence.plugins.confluence-knowledge-base	375	2017-07-19 14:48:05.142	templateRendererHelper
confluence.web.resources	376	2017-07-19 14:48:05.142	edit-user-group-resources
com.atlassian.confluence.plugins.confluence-labels	377	2017-07-19 14:48:05.142	view-labels-popular-system
com.atlassian.confluence.plugins.confluence-rest-resources	378	2017-07-19 14:48:05.142	rest-api-experimental
com.atlassian.confluence.plugins.confluence-edge-index	379	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.querylang.confluence-cql-plugin	380	2017-07-19 14:48:05.142	not-query-mapper
com.atlassian.confluence.plugins.confluence-mobile	381	2017-07-19 14:48:05.142	rest
com.atlassian.applinks.applinks-cors-plugin	382	2017-07-19 14:48:05.142	corsService
com.atlassian.plugins.atlassian-nav-links-plugin	383	2017-07-19 14:48:05.142	weights
confluence.search.mappers.lucene	384	2017-07-19 14:48:05.142	modified
com.atlassian.confluence.plugins.templates-framework	385	2017-07-19 14:48:05.142	none
com.atlassian.auiplugin	386	2017-07-19 14:48:05.142	internal-message-css
com.atlassian.confluence.extra.flyingpdf	387	2017-07-19 14:48:05.142	pdfExportFontsDirectoryFontDao
com.atlassian.confluence.plugins.confluence-email-resources	388	2017-07-19 14:48:05.142	notification-templates-blogpost-trashed-2.0.0
com.atlassian.confluence.keyboardshortcuts	389	2017-07-19 14:48:05.142	confluence-keyboard-shortcuts-action
com.atlassian.confluence.plugins.confluence-monitoring-console	390	2017-07-19 14:48:05.142	stats-resource-filter
confluence.search.lucene.initialisation	391	2017-07-19 14:48:05.142	contentNameSearcherInitialisation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	392	2017-07-19 14:48:05.142	notificationManager
com.atlassian.confluence.plugins.confluence-email-resources	393	2017-07-19 14:48:05.142	notification-templates-follower-added-2.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	394	2017-07-19 14:48:05.142	upmInformationContextItem
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	395	2017-07-19 14:48:05.142	btf-config-resources
com.atlassian.mywork.mywork-common-plugin	396	2017-07-19 14:48:05.142	webSudoManager
com.atlassian.confluence.rpc.confluence-json-rpc-plugin	397	2017-07-19 14:48:05.142	json-rpc-filter
confluence.macros.advanced	398	2017-07-19 14:48:05.142	pageProvider
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	399	2017-07-19 14:48:05.142	emoticonStorageMarshaller
confluence.extra.information	400	2017-07-19 14:48:05.142	xhtml-warning
com.atlassian.confluence.plugins.confluence-space-directory	401	2017-07-19 14:48:05.142	space-directory
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	402	2017-07-19 14:48:05.142	discoveredFeatureManager
com.atlassian.auiplugin	403	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-stop-event
confluence.sections.space.advanced	404	2017-07-19 14:48:05.142	favourite
com.atlassian.mywork.mywork-confluence-host-plugin	405	2017-07-19 14:48:05.142	myworkRegistrationProvider
com.atlassian.streams.confluence	406	2017-07-19 14:48:05.142	date-uz-Latn-UZ
com.atlassian.plugins.authentication.atlassian-authentication-plugin	407	2017-07-19 14:48:05.142	authentication-config-rest-filter
com.atlassian.auiplugin	408	2017-07-19 14:48:05.142	keyboardshortcuts
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	409	2017-07-19 14:48:05.142	bundleAccessor
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	410	2017-07-19 14:48:05.142	ao
com.atlassian.mywork.mywork-confluence-host-plugin	411	2017-07-19 14:48:05.142	notification-service
com.atlassian.confluence.plugins.confluence-inline-comments	412	2017-07-19 14:48:05.142	inline-notification-reply
com.atlassian.confluence.plugins.confluence-email-resources	413	2017-07-19 14:48:05.142	stop-following-user-email-footer-item
com.atlassian.streams.confluence	414	2017-07-19 14:48:05.142	date-pt-BR
confluence.macros.advanced	415	2017-07-19 14:48:05.142	excerpt
com.atlassian.oauth.serviceprovider.sal	416	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.confluence.plugins.confluence-periodic-analytics-events	417	2017-07-19 14:48:05.142	periodic-languages-available-event
com.atlassian.confluence.editor	418	2017-07-19 14:48:05.142	panel-components
com.atlassian.gadgets.embedded	419	2017-07-19 14:48:05.142	gadget-core-resources
confluence.extra.attachments	420	2017-07-19 14:48:05.142	rest-filter
com.atlassian.streams.confluence	421	2017-07-19 14:48:05.142	date-mi-NZ
com.atlassian.streams.confluence	422	2017-07-19 14:48:05.142	date-tt-RU
com.atlassian.confluence.plugins.confluence-spaces	423	2017-07-19 14:48:05.142	spacesconfiguration
com.atlassian.streams	424	2017-07-19 14:48:05.142	date-ky-KG
com.atlassian.confluence.extra.flyingpdf	425	2017-07-19 14:48:05.142	pdfExportFileNameGenerator
com.atlassian.auiplugin	426	2017-07-19 14:48:05.142	aui-alignment
com.atlassian.confluence.extra.officeconnector	427	2017-07-19 14:48:05.142	editInWordResourceFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	428	2017-07-19 14:48:05.142	pluginLicenseManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	429	2017-07-19 14:48:05.142	excerpter
com.atlassian.mywork.mywork-confluence-host-plugin	430	2017-07-19 14:48:05.142	shared-data-lookup
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	432	2017-07-19 14:48:05.142	confluence-webpanel-static-resources
com.atlassian.applinks.applinks-plugin	433	2017-07-19 14:48:05.142	applinks-common
com.atlassian.confluence.plugins.confluence-request-access-plugin	434	2017-07-19 14:48:05.142	confluence-request-access-plugin-resources
com.atlassian.auiplugin	435	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-escape-html
com.atlassian.confluence.plugins.confluence-view-file-macro	436	2017-07-19 14:48:05.142	editorFilePlaceholderGeneratorServlet
com.atlassian.gadgets.directory	437	2017-07-19 14:48:05.142	gadget-directory-admin-server-templates
com.atlassian.plugins.authentication.atlassian-authentication-plugin	438	2017-07-19 14:48:05.142	external-login-servlet
com.atlassian.confluence.plugins.confluence-email-resources	439	2017-07-19 14:48:05.142	attach-inline-dialog-images
com.atlassian.plugins.atlassian-nav-links-plugin	440	2017-07-19 14:48:05.142	atlassian-ui-popup-display-controller
com.atlassian.querylang.confluence-cql-plugin	441	2017-07-19 14:48:05.142	start-of-year-one-arg-function
confluence.search.mappers.lucene	442	2017-07-19 14:48:05.142	creator
com.atlassian.confluence.plugins.confluence-content-report-plugin	443	2017-07-19 14:48:05.142	resources
com.atlassian.confluence.plugins.confluence-previews	444	2017-07-19 14:48:05.142	upload-plugin
com.atlassian.auiplugin	445	2017-07-19 14:48:05.142	icons
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	446	2017-07-19 14:48:05.142	javascriptTemplateWebResourceTransformer
com.atlassian.confluence.plugins.status-macro	447	2017-07-19 14:48:05.142	editorImagePlageholderServlet
com.atlassian.querylang.confluence-cql-plugin	448	2017-07-19 14:48:05.142	rest-cql-metadata-filter
com.atlassian.confluence.plugins.confluence-request-access-plugin	449	2017-07-19 14:48:05.142	grant-access-notification
com.atlassian.confluence.plugins.confluence-periodic-analytics-events	450	2017-07-19 14:48:05.142	periodic-language-state-event
com.atlassian.streams.confluence	451	2017-07-19 14:48:05.142	date-el-GR
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	452	2017-07-19 14:48:05.142	velocity-1.6-template-renderer
com.atlassian.confluence.plugins.confluence-inline-tasks	453	2017-07-19 14:48:05.142	recommended-email-tasks-panel
com.atlassian.confluence.plugins.confluence-space-blueprints	454	2017-07-19 14:48:05.142	documentation-space-making-a-template-template
com.atlassian.confluence.extra.officeconnector	455	2017-07-19 14:48:05.142	viewppt-legacy
com.atlassian.confluence.editor	456	2017-07-19 14:48:05.142	editor-parent-restricted
com.atlassian.confluence.plugins.watch-button	457	2017-07-19 14:48:05.142	watch
com.atlassian.confluence.plugins.confluence-content-property-storage	458	2017-07-19 14:48:05.142	spacePropertyService
com.atlassian.confluence.plugins.gadgets.spi	459	2017-07-19 14:48:05.142	permissionService
com.atlassian.auiplugin	460	2017-07-19 14:48:05.142	aui-flag
com.atlassian.applinks.applinks-trustedapps-plugin	461	2017-07-19 14:48:05.142	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	462	2017-07-19 14:48:05.142	eolHealthCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	463	2017-07-19 14:48:05.142	space-blog-recipients-provider
confluence.extra.jira	464	2017-07-19 14:48:05.142	jirachart-macro
com.atlassian.streams	465	2017-07-19 14:48:05.142	date-ur-PK
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	466	2017-07-19 14:48:05.142	soap-axis1
confluence.macros.dashboard	467	2017-07-19 14:48:05.142	recentlyUpdatedContentService
com.atlassian.streams.core	468	2017-07-19 14:48:05.142	feedSanitizer
confluence.macros.dashboard	469	2017-07-19 14:48:05.142	space-details
confluence.sections.admin.tasks	470	2017-07-19 14:48:05.142	general
com.atlassian.confluence.plugins.pagetree	471	2017-07-19 14:48:05.142	pagetreesearch-xhtml
com.atlassian.applinks.applinks-plugin	472	2017-07-19 14:48:05.142	contextFilter
confluence.macros.advanced	473	2017-07-19 14:48:05.142	recent-updated-actions
com.atlassian.integration.jira.jira-integration-plugin	474	2017-07-19 14:48:05.142	transition-form
com.atlassian.confluence.plugins.confluence-mobile	475	2017-07-19 14:48:05.142	linkMarshallingFactory
com.atlassian.confluence.plugins.profile-picture	476	2017-07-19 14:48:05.142	profile-picture
com.atlassian.plugins.atlassian-whitelist-ui-plugin	477	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.confluence-create-content-plugin	478	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.share-page	479	2017-07-19 14:48:05.142	share-attachment-notification
com.atlassian.streams	480	2017-07-19 14:48:05.142	date-kn-IN
com.atlassian.auiplugin	481	2017-07-19 14:48:05.142	toolbar
com.atlassian.confluence.plugins.confluence-easyuser-admin	482	2017-07-19 14:48:05.142	add-users-userdir-button
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	483	2017-07-19 14:48:05.142	upm_section
com.atlassian.mywork.mywork-confluence-host-plugin	484	2017-07-19 14:48:05.142	applink-helper
com.atlassian.confluence.extra.widgetconnector	485	2017-07-19 14:48:05.142	googledocs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	486	2017-07-19 14:48:05.142	confluence-upm-manage-menu
com.atlassian.confluence.plugins.confluence-knowledge-base	487	2017-07-19 14:48:05.142	kb-troubleshooting-article-blueprint
com.atlassian.querylang.confluence-cql-plugin	488	2017-07-19 14:48:05.142	favourite-field
com.atlassian.plugins.authentication.atlassian-authentication-plugin	489	2017-07-19 14:48:05.142	authentication-configuration-servlet
confluence.macros.basic	490	2017-07-19 14:48:05.142	color
com.atlassian.confluence.plugins.confluence-create-content-plugin	491	2017-07-19 14:48:05.142	featureDiscoveryService
confluence.editor.actions	492	2017-07-19 14:48:05.142	macrobrowseraction
com.atlassian.templaterenderer.api	493	2017-07-19 14:48:05.142	pluginAccessor
confluence.web.resources	494	2017-07-19 14:48:05.142	aui-messages
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	495	2017-07-19 14:48:05.142	featureMetadataManager
com.atlassian.auiplugin	496	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-expander
confluence.web.resources	497	2017-07-19 14:48:05.142	master-styles
com.atlassian.confluence.plugins.confluence-like	498	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-inline-tasks	499	2017-07-19 14:48:05.142	inlinetasksactions
com.atlassian.streams	500	2017-07-19 14:48:05.142	date-fo-FO
confluence.extra.jira	501	2017-07-19 14:48:05.142	jiraAnalytics
com.atlassian.confluence.plugins.share-page	502	2017-07-19 14:48:05.142	rest
com.atlassian.plugins.atlassian-help-tips	503	2017-07-19 14:48:05.142	helpTipManager
com.atlassian.confluence.plugins.confluence-view-file-macro	504	2017-07-19 14:48:05.142	delegateFileMarshaller
com.atlassian.confluence.editor	505	2017-07-19 14:48:05.142	xhtmlContent
com.atlassian.auiplugin	506	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-progress-indicator
confluence.user.menu	507	2017-07-19 14:48:05.142	user-profile
confluence.sections.user.view.follow	508	2017-07-19 14:48:05.142	resources
com.atlassian.confluence.plugins.confluence-inline-tasks	509	2017-07-19 14:48:05.142	team-task-report-template
com.atlassian.confluence.plugins.soy	510	2017-07-19 14:48:05.142	soy-site-title-function
com.atlassian.confluence.keyboardshortcuts	511	2017-07-19 14:48:05.142	tinymce.bullist
confluence.extra.information	512	2017-07-19 14:48:05.142	note
com.atlassian.confluence.plugins.confluence-daily-summary-email	513	2017-07-19 14:48:05.142	summaryEmailServiceTarget
com.atlassian.streams.confluence	514	2017-07-19 14:48:05.142	date-ar-YE
com.atlassian.querylang.confluence-cql-plugin	515	2017-07-19 14:48:05.142	macro-instance-field
com.atlassian.plugins.authentication.atlassian-authentication-plugin	516	2017-07-19 14:48:05.142	templates
com.atlassian.confluence.plugins.confluence-create-content-plugin	517	2017-07-19 14:48:05.142	rest-caching-filter
com.atlassian.plugins.authentication.atlassian-authentication-plugin	518	2017-07-19 14:48:05.142	saml-consumer-servlet
com.atlassian.confluence.extra.widgetconnector	519	2017-07-19 14:48:05.142	vcacheFactory
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	520	2017-07-19 14:48:05.142	hipChatLinkProvider
com.atlassian.confluence.extra.widgetconnector	521	2017-07-19 14:48:05.142	web-widget-migrator
com.atlassian.confluence.plugins.confluence-email-resources	522	2017-07-19 14:48:05.142	inject-css-inline-function
confluence.web.resources	523	2017-07-19 14:48:05.142	browser
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	524	2017-07-19 14:48:05.142	follower-added-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-onboarding	525	2017-07-19 14:48:05.142	userSettingsService
com.atlassian.auiplugin	526	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-underscorejs-underscore
com.atlassian.confluence.plugins.confluence-highlight-actions	527	2017-07-19 14:48:05.142	stripTagModifier
com.atlassian.streams	528	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.confluence.plugins.confluence-space-directory	529	2017-07-19 14:48:05.142	add-space
com.atlassian.confluence.plugins.confluence-onboarding	530	2017-07-19 14:48:05.142	onboarding-flow-resources
com.atlassian.streams.confluence	531	2017-07-19 14:48:05.142	date-uk-UA
com.atlassian.confluence.plugins.confluence-inline-tasks	532	2017-07-19 14:48:05.142	view-tasks-hipchat-adg-footer-item
com.atlassian.confluence.plugins.confluence-inline-comments	533	2017-07-19 14:48:05.142	likes-view
confluence.web.resources	534	2017-07-19 14:48:05.142	navigator-context
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	535	2017-07-19 14:48:05.142	upm-marketplace-templates
confluence.extractors.core	536	2017-07-19 14:48:05.142	spaceKeyAndNameExtractor
com.atlassian.confluence.contributors	537	2017-07-19 14:48:05.142	componentLocator
com.atlassian.confluence.plugins.confluence-inline-comments	538	2017-07-19 14:48:05.142	reply-list-view
com.atlassian.mywork.mywork-common-plugin	539	2017-07-19 14:48:05.142	myworkauth
com.atlassian.confluence.plugins.confluence-sal-plugin	540	2017-07-19 14:48:05.142	searchProvider
com.atlassian.analytics.analytics-client	541	2017-07-19 14:48:05.142	confluence-whitelist-report-menu-item
com.atlassian.auiplugin	542	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-select-suggestion-model
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	543	2017-07-19 14:48:05.142	confluenceInitialiser
confluence.listeners.core	544	2017-07-19 14:48:05.142	contentNameSearchSemaphoreListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	545	2017-07-19 14:48:05.142	confluenceSettingsWebItem
com.atlassian.mywork.mywork-confluence-host-plugin	546	2017-07-19 14:48:05.142	pluginSharedDataRegistry
com.atlassian.integration.jira.jira-integration-plugin	547	2017-07-19 14:48:05.142	jiraService
confluence.macros.advanced	548	2017-07-19 14:48:05.142	recently-updated-sidebar-resources
com.atlassian.auiplugin	549	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-raf-raf
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	550	2017-07-19 14:48:05.142	confluenceContentNotificationsAnalyticsWhitelist
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	551	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.confluence.plugins.confluence-onboarding	552	2017-07-19 14:48:05.142	confluence-efi-rest-filter
com.atlassian.analytics.analytics-client	553	2017-07-19 14:48:05.142	threadLocalDelegateExecutorFactory
com.atlassian.plugins.base-hipchat-integration-plugin	554	2017-07-19 14:48:05.142	hipchat-links-support
com.atlassian.oauth.serviceprovider.sal	555	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.oauth.serviceprovider	556	2017-07-19 14:48:05.142	delegateTokenStore
confluence.extra.jira	557	2017-07-19 14:48:05.142	jim-xwork
com.atlassian.confluence.plugins.confluence-spaces	558	2017-07-19 14:48:05.142	shortcuts
com.atlassian.mywork.mywork-confluence-host-plugin	559	2017-07-19 14:48:05.142	user-manager
com.atlassian.confluence.plugins.confluence-content-property-storage	560	2017-07-19 14:48:05.142	spacePropertyValidator
com.atlassian.plugin.notifications.notifications-module	561	2017-07-19 14:48:05.142	macroResolver
com.atlassian.crowd.embedded.admin	562	2017-07-19 14:48:05.142	support-directory-configuration
com.atlassian.mywork.mywork-confluence-provider-plugin	563	2017-07-19 14:48:05.142	renderer
com.atlassian.plugins.atlassian-nav-links-plugin	564	2017-07-19 14:48:05.142	executor-service
com.atlassian.confluence.plugins.confluence-email-resources	565	2017-07-19 14:48:05.142	templates
com.atlassian.confluence.plugins.confluence-space-blueprints	566	2017-07-19 14:48:05.142	TeamSpaceHomePageEventListener
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	567	2017-07-19 14:48:05.142	keyboardShortcutsRest
com.atlassian.confluence.plugins.confluence-page-layout	568	2017-07-19 14:48:05.142	editor-pagelayout-content-styles
com.atlassian.auiplugin	569	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-mutation-observer
com.atlassian.querylang.confluence-cql-plugin	570	2017-07-19 14:48:05.142	content-field
com.atlassian.confluence.plugins.confluence-edge-index	571	2017-07-19 14:48:05.142	edgeListener
com.atlassian.support.healthcheck.support-healthcheck-plugin	572	2017-07-19 14:48:05.142	supportHealthCheckRest-filter
com.atlassian.plugins.atlassian-nav-links-plugin	573	2017-07-19 14:48:05.142	navigation-links
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	574	2017-07-19 14:48:05.142	cluster-monitoring
com.atlassian.plugins.base-hipchat-integration-plugin	575	2017-07-19 14:48:05.142	get-product-text
com.atlassian.plugins.atlassian-plugins-webresource-plugin	576	2017-07-19 14:48:05.142	atlassian-module
com.atlassian.confluence.plugins.confluence-business-blueprints	577	2017-07-19 14:48:05.142	meeting-notes-blueprint
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	578	2017-07-19 14:48:05.142	healthmonitor-resources
confluence.extractors.core	579	2017-07-19 14:48:05.142	contentAuthorExtractor
com.atlassian.streams	580	2017-07-19 14:48:05.142	date-dv-MV
com.atlassian.confluence.plugins.recently-viewed-plugin	581	2017-07-19 14:48:05.142	purgeHistoryJob
com.atlassian.streams.confluence	582	2017-07-19 14:48:05.142	date-cs-CZ
com.atlassian.applinks.applinks-cors-plugin	583	2017-07-19 14:48:05.142	xsrfTokenValidator
com.atlassian.oauth.serviceprovider	584	2017-07-19 14:48:05.142	authenticator
com.atlassian.plugins.base-hipchat-integration-plugin	585	2017-07-19 14:48:05.142	hipchat-action
com.atlassian.analytics.analytics-client	586	2017-07-19 14:48:05.142	analytics-filter
com.atlassian.auiplugin	587	2017-07-19 14:48:05.142	event
confluence.listeners.core	588	2017-07-19 14:48:05.142	app-status-plugin-framework-listener
confluence.sections.admin	589	2017-07-19 14:48:05.142	lookandfeel
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	590	2017-07-19 14:48:05.142	pluginController
com.atlassian.confluence.plugins.confluence-document-conversion-library	591	2017-07-19 14:48:05.142	conversionLoader
com.atlassian.applinks.applinks-cors-plugin	592	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.auiplugin	593	2017-07-19 14:48:05.142	aui-page-header
com.atlassian.confluence.plugins.confluence-knowledge-base	594	2017-07-19 14:48:05.142	oAuthRequestVerifierFactory
com.atlassian.confluence.editor	595	2017-07-19 14:48:05.142	tinymceaction
com.atlassian.confluence.plugins.confluence-business-blueprints	596	2017-07-19 14:48:05.142	meeting-notes-resources
com.atlassian.auiplugin	597	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-jquery-jquery-tipsy
confluence.sections.create	598	2017-07-19 14:48:05.142	add-page-with-parent
com.atlassian.confluence.keyboardshortcuts	599	2017-07-19 14:48:05.142	tinymce.go.to.preview.page
com.atlassian.confluence.plugins.confluence-email-resources	600	2017-07-19 14:48:05.142	find-user-function
com.atlassian.healthcheck.atlassian-healthcheck	601	2017-07-19 14:48:05.142	healthCheckSupplier
com.atlassian.analytics.analytics-client	602	2017-07-19 14:48:05.142	allowedWordFilter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	603	2017-07-19 14:48:05.142	healthmonitor-blueprint
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	604	2017-07-19 14:48:05.142	prettyurls-sitemesh-fixup-filter-before-dispatch
confluence.web.resources	605	2017-07-19 14:48:05.142	syntaxhighlighter-css
com.atlassian.activeobjects.confluence.spi	606	2017-07-19 14:48:05.142	hibernateSessionFactory
com.atlassian.plugins.base-hipchat-integration-plugin	607	2017-07-19 14:48:05.142	hipchat-configurable
com.atlassian.confluence.plugins.confluence-dashboard	608	2017-07-19 14:48:05.142	dashboard-rest
com.atlassian.confluence.extra.widgetconnector	609	2017-07-19 14:48:05.142	friendfeed
com.atlassian.confluence.plugins.confluence-license-banner	610	2017-07-19 14:48:05.142	confluence-license-banner-resources
com.atlassian.streams.confluence	611	2017-07-19 14:48:05.142	date-default
com.atlassian.streams	612	2017-07-19 14:48:05.142	date-sv-FI
com.atlassian.oauth.serviceprovider	613	2017-07-19 14:48:05.142	validator
com.atlassian.streams	614	2017-07-19 14:48:05.142	date-vi-VN
com.atlassian.confluence.plugins.confluence-business-blueprints	615	2017-07-19 14:48:05.142	sharelinks-blueprint-listener
com.atlassian.confluence.plugins.confluence-dashboard	616	2017-07-19 14:48:05.142	routing-spaces-reverse
com.atlassian.confluence.plugins.confluence-user-rest	617	2017-07-19 14:48:05.142	userAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	618	2017-07-19 14:48:05.142	notification-transformer
confluence.listeners.core	619	2017-07-19 14:48:05.142	mailServerListener
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	620	2017-07-19 14:48:05.142	page-trashed-notification
com.atlassian.confluence.plugins.confluence-highlight-actions	621	2017-07-19 14:48:05.142	tableSelectionTransformer
confluence.search.mappers.lucene	622	2017-07-19 14:48:05.142	dateRange
com.atlassian.confluence.plugins.confluence-knowledge-base	623	2017-07-19 14:48:05.142	kbApplicationLinkRequestVerifier
confluence.extra.impresence2	624	2017-07-19 14:48:05.142	im-xhtml
com.atlassian.confluence.plugins.confluence-dashboard	625	2017-07-19 14:48:05.142	featureDiscoveryService
com.atlassian.confluence.plugins.drag-and-drop	626	2017-07-19 14:48:05.142	plupload
com.atlassian.confluence.plugins.confluence-knowledge-base	627	2017-07-19 14:48:05.142	searchResultAugmenter
com.atlassian.confluence.plugins.confluence-business-blueprints	628	2017-07-19 14:48:05.142	file-list-item
com.atlassian.confluence.plugins.confluence-email-resources	629	2017-07-19 14:48:05.142	notification-templates-blogpost-moved-1.0.0
com.atlassian.applinks.applinks-basicauth-plugin	630	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.confluence.plugins.confluence-mobile	631	2017-07-19 14:48:05.142	mention-resources
com.atlassian.confluence.plugins.confluence-edge-index	632	2017-07-19 14:48:05.142	comment.create
confluence.web.resources	633	2017-07-19 14:48:05.142	edit-user-profile
com.atlassian.oauth.consumer	634	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	635	2017-07-19 14:48:05.142	notificationWebResourceTransformer
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	636	2017-07-19 14:48:05.142	batchingJob
com.atlassian.applinks.applinks-plugin	637	2017-07-19 14:48:05.142	projectManagerContextItem
com.atlassian.confluence.plugins.confluence-email-resources	638	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.confluence.plugins.confluence-dashboard	639	2017-07-19 14:48:05.142	dashboard-server-side-soy
confluence.converters.core	640	2017-07-19 14:48:05.142	blog-converter
com.atlassian.confluence.plugins.confluence-fixed-headers	641	2017-07-19 14:48:05.142	handlers
com.atlassian.confluence.plugins.confluence-software-blueprints	642	2017-07-19 14:48:05.142	requirements-page
confluence.macros.advanced	643	2017-07-19 14:48:05.142	popular-labels
com.atlassian.confluence.plugins.recently-viewed-plugin	644	2017-07-19 14:48:05.142	userManager
confluence.search.mappers.lucene	645	2017-07-19 14:48:05.142	doubleRange
confluence.extractors.core	646	2017-07-19 14:48:05.142	contentPermissionsChangeExtractor
confluence.extra.masterdetail	647	2017-07-19 14:48:05.142	pagePropertiesExtractor
com.atlassian.auiplugin	648	2017-07-19 14:48:05.142	fancy-file-input
com.atlassian.confluence.plugins.confluence-software-project	649	2017-07-19 14:48:05.142	sp-space-meeting-notes-template
confluence.listeners.core	650	2017-07-19 14:48:05.142	userIndexingListener
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	651	2017-07-19 14:48:05.142	featureDiscoveryRest
com.atlassian.applinks.applinks-cors-plugin	652	2017-07-19 14:48:05.142	localeResolver
com.atlassian.applinks.applinks-oauth-plugin	653	2017-07-19 14:48:05.142	consumerTokenStore
com.atlassian.streams	654	2017-07-19 14:48:05.142	date-fa-IR
com.atlassian.templaterenderer.api	655	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	656	2017-07-19 14:48:05.142	notificationQueueManager
com.atlassian.confluence.plugins.confluence-email-resources	657	2017-07-19 14:48:05.142	resource-image-function
com.atlassian.oauth.consumer.sal	658	2017-07-19 14:48:05.142	consumerStore
com.atlassian.confluence.plugins.confluence-roadmap-plugin	659	2017-07-19 14:48:05.142	roadmap-dialog-resources
com.atlassian.confluence.editor	660	2017-07-19 14:48:05.142	editor-featured-macro-gallery
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	661	2017-07-19 14:48:05.142	confluence-collaborative-editor-config
com.atlassian.mywork.mywork-confluence-host-plugin	662	2017-07-19 14:48:05.142	localeResolver
com.atlassian.confluence.plugins.confluence-business-blueprints	663	2017-07-19 14:48:05.142	file-list-page
confluence.extra.attachments	664	2017-07-19 14:48:05.142	attachments-javascript
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	665	2017-07-19 14:48:05.142	page-created-notification
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	666	2017-07-19 14:48:05.142	packageAdmin
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	667	2017-07-19 14:48:05.142	hsqlHealthCheck
com.atlassian.confluence.plugins.confluence-files	668	2017-07-19 14:48:05.142	filesAttNotInList
com.atlassian.applinks.applinks-oauth-plugin	669	2017-07-19 14:48:05.142	OAuthAuthenticatorProviderPluginModule
confluence.sections.admin	670	2017-07-19 14:48:05.142	administration
confluence.extra.masterdetail	671	2017-07-19 14:48:05.142	details
com.atlassian.plugins.tinymce	672	2017-07-19 14:48:05.142	atlassian-rte-javascript-tinymce-core
com.atlassian.mywork.mywork-common-plugin	673	2017-07-19 14:48:05.142	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	674	2017-07-19 14:48:05.142	blogpost-edited-hipchat-notification-template-body
com.atlassian.streams.confluence	675	2017-07-19 14:48:05.142	notificationManager
com.atlassian.confluence.plugins.confluence-onboarding	676	2017-07-19 14:48:05.142	onboarding-blueprint-templates-resources
com.atlassian.confluence.editor	677	2017-07-19 14:48:05.142	macroBodyTranformationCondition
com.atlassian.confluence.plugins.confluence-email-resources	678	2017-07-19 14:48:05.142	notification-templates-page-edited-2.0.0
confluence.web.resources	679	2017-07-19 14:48:05.142	language-picker
com.atlassian.streams.confluence	680	2017-07-19 14:48:05.142	date-hu-HU
com.atlassian.confluence.plugins.gadgets	681	2017-07-19 14:48:05.142	gadgetsActions
com.atlassian.auiplugin	682	2017-07-19 14:48:05.142	aui-form-validation
com.atlassian.streams.confluence	683	2017-07-19 14:48:05.142	date-ar-QA
confluence.extra.webdav	684	2017-07-19 14:48:05.142	reverseProxyFilter
com.atlassian.streams.confluence	685	2017-07-19 14:48:05.142	date-zu-ZA
com.atlassian.streams.confluence	686	2017-07-19 14:48:05.142	date-ar-TN
com.atlassian.streams.confluence	687	2017-07-19 14:48:05.142	date-pt-PT
confluence.user.menu	688	2017-07-19 14:48:05.142	create-personal-space
com.atlassian.plugin.notifications.notifications-module	689	2017-07-19 14:48:05.142	templateManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	690	2017-07-19 14:48:05.142	pluginDownloadService
com.atlassian.confluence.plugins.quickreload	691	2017-07-19 14:48:05.142	pageManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	692	2017-07-19 14:48:05.142	pluginMetadataAccessor
com.atlassian.analytics.analytics-client	693	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.plugins.base-hipchat-integration-plugin-api	694	2017-07-19 14:48:05.142	wrm-amd
com.atlassian.confluence.plugins.confluence-edge-index	695	2017-07-19 14:48:05.142	confluenceAccessManager
com.atlassian.confluence.plugins.confluence-mobile	696	2017-07-19 14:48:05.142	macroMarshallingFactory
com.atlassian.streams.confluence	697	2017-07-19 14:48:05.142	date-ar-SY
com.atlassian.confluence.keyboardshortcuts	698	2017-07-19 14:48:05.142	save.editor.page
confluence.extra.confluencerpc	699	2017-07-19 14:48:05.142	attachmentsSoapService
confluence.sections.admin	700	2017-07-19 14:48:05.142	securityconfiguration
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	701	2017-07-19 14:48:05.142	notification-recipients
com.atlassian.confluence.plugins.search.confluence-search	702	2017-07-19 14:48:05.142	boosting-query-mapper
com.atlassian.auiplugin	703	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-data
com.atlassian.auiplugin	704	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-entry-model
confluence.user.menu.concise	705	2017-07-19 14:48:05.142	settings
com.atlassian.confluence.plugins.confluence-easyuser-admin	706	2017-07-19 14:48:05.142	mailServerExistsCriteria
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	707	2017-07-19 14:48:05.142	models
confluence.web.resources	708	2017-07-19 14:48:05.142	custom-page-content-resources
com.atlassian.confluence.ext.newcode-macro-plugin	709	2017-07-19 14:48:05.142	newcode
confluence.macros.advanced	710	2017-07-19 14:48:05.142	children-migrator
com.atlassian.confluence.plugins.confluence-space-ia	711	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.plugins.confluence-knowledge-base	712	2017-07-19 14:48:05.142	kb-serviceDeskExternalCustomerServletFilter-filter
com.atlassian.plugins.authentication.atlassian-authentication-plugin	713	2017-07-19 14:48:05.142	confluence-logout-filter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	714	2017-07-19 14:48:05.142	dacidecision-blueprint-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	715	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.applinks.applinks-trustedapps-plugin	716	2017-07-19 14:48:05.142	documentationLinker
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	717	2017-07-19 14:48:05.142	notificationCacheUpdateEventListener
com.atlassian.confluence.plugins.soy	718	2017-07-19 14:48:05.142	soy-format-date-function
com.atlassian.confluence.plugins.confluence-view-file-macro	719	2017-07-19 14:48:05.142	view-file-macro-export-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	720	2017-07-19 14:48:05.142	differ
confluence.search.mappers.lucene	721	2017-07-19 14:48:05.142	longRange
com.atlassian.plugins.editor	722	2017-07-19 14:48:05.142	editor-panel
confluence.user.menu	723	2017-07-19 14:48:05.142	user-operations
com.atlassian.confluence.plugins.confluence-sal-plugin	724	2017-07-19 14:48:05.142	bootstrapManager
com.atlassian.plugins.base-hipchat-integration-plugin	725	2017-07-19 14:48:05.142	resources
com.atlassian.plugin.notifications.notifications-module	726	2017-07-19 14:48:05.142	notificationsAdminServlet
com.atlassian.streams.confluence	727	2017-07-19 14:48:05.142	date-ar-SA
confluence.sections.admin	728	2017-07-19 14:48:05.142	stylesheet
confluence.extra.confluencerpc	729	2017-07-19 14:48:05.142	confluence-xmlrpc
com.atlassian.confluence.plugins.confluence-license-banner	730	2017-07-19 14:48:05.142	rest-resource-filter
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	731	2017-07-19 14:48:05.142	collabEditingModeCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	732	2017-07-19 14:48:05.142	cachedContentFinder
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	733	2017-07-19 14:48:05.142	page-moved-notification-transformer
com.atlassian.querylang.confluence-cql-plugin	734	2017-07-19 14:48:05.142	end-of-month-one-arg-function
com.atlassian.auiplugin	735	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-prevent-default
com.atlassian.confluence.extra.widgetconnector	736	2017-07-19 14:48:05.142	twitter-webresources
com.atlassian.plugins.rest.atlassian-rest-module	737	2017-07-19 14:48:05.142	httpContext
com.atlassian.confluence.plugins.confluence-create-content-plugin	738	2017-07-19 14:48:05.142	blueprintContentTemplateService
com.atlassian.mywork.mywork-confluence-host-plugin	739	2017-07-19 14:48:05.142	velocity-renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	740	2017-07-19 14:48:05.142	upm-manage-plugins-module
com.atlassian.confluence.plugins.confluence-inline-tasks	741	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-mentions-plugin	742	2017-07-19 14:48:05.142	dataSourceFactory
confluence.extra.masterdetail	743	2017-07-19 14:48:05.142	master-details-resources
com.atlassian.confluence.plugins.confluence-jira-metadata	744	2017-07-19 14:48:05.142	jira-metadata-cache-config-trigger
confluence.sections.space.admin	745	2017-07-19 14:48:05.142	layouts
com.atlassian.confluence.plugins.confluence-inline-comments	746	2017-07-19 14:48:05.142	notification-template-new-mail-body
confluence.sections.page.temp	747	2017-07-19 14:48:05.142	pagefavourite
confluence.search.mappers.lucene	748	2017-07-19 14:48:05.142	spaceCategory
confluence.web.resources	749	2017-07-19 14:48:05.142	js-reporting
com.atlassian.auiplugin	750	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-browser
com.atlassian.applinks.applinks-basicauth-plugin	751	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.plugin.jslibs	752	2017-07-19 14:48:05.142	underscore-1.5.2
com.atlassian.plugins.atlassian-whitelist-ui-plugin	753	2017-07-19 14:48:05.142	applicationLinkService
com.atlassian.oauth.serviceprovider	754	2017-07-19 14:48:05.142	access-token-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	755	2017-07-19 14:48:05.142	page-moved-notification-template
com.atlassian.confluence.plugins.watch-button	756	2017-07-19 14:48:05.142	watch-keyboard-shortcut
confluence.editor.actions	757	2017-07-19 14:48:05.142	edit-macro
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	758	2017-07-19 14:48:05.142	urlReadingNotificationWebResourceTransformer
confluence.sections.profile	759	2017-07-19 14:48:05.142	personalspace
com.atlassian.applinks.applinks-trustedapps-plugin	760	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	761	2017-07-19 14:48:05.142	escapeToolContextItem
com.atlassian.confluence.plugins.status-macro	762	2017-07-19 14:48:05.142	editor_content_status
com.atlassian.confluence.plugins.confluence-link-browser	763	2017-07-19 14:48:05.142	linkbrowser-css-resources
com.atlassian.confluence.contributors	764	2017-07-19 14:48:05.142	contributors-web-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	765	2017-07-19 14:48:05.142	comment-created-notification-transformer
confluence.xhtml.wikimarkup	766	2017-07-19 14:48:05.142	unmigrated-wiki-markup
com.atlassian.confluence.plugins.confluence-email-resources	767	2017-07-19 14:48:05.142	notifications-cluster-node-id-function
com.atlassian.confluence.plugins.confluence-space-ia	768	2017-07-19 14:48:05.142	customPageSettingsManager
confluence.web.resources	769	2017-07-19 14:48:05.142	atlassian-effects
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	770	2017-07-19 14:48:05.142	cacheFactory
com.atlassian.support.healthcheck.support-healthcheck-plugin	771	2017-07-19 14:48:05.142	optionalServiceProvider
confluence.extra.information	772	2017-07-19 14:48:05.142	xhtml-note
com.atlassian.support.stp	773	2017-07-19 14:48:05.142	salWebSudoManager
com.atlassian.confluence.plugins.confluence-lookandfeel	774	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-content-property-storage	775	2017-07-19 14:48:05.142	content-property-field-sort-mapper
com.atlassian.confluence.plugins.status-macro	776	2017-07-19 14:48:05.142	editor_status
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	777	2017-07-19 14:48:05.142	upm-web-resources
com.atlassian.confluence.plugins.confluence-user-profile	778	2017-07-19 14:48:05.142	user-avatar-resource
com.atlassian.plugins.rest.atlassian-rest-module	779	2017-07-19 14:48:05.142	requestFactory
com.atlassian.confluence.plugins.confluence-file-notifications	780	2017-07-19 14:48:05.142	notificationManager
com.atlassian.confluence.plugins.recently-viewed-plugin	781	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	782	2017-07-19 14:48:05.142	requestCheckJob
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	783	2017-07-19 14:48:05.142	page-edited-notification-transformer
confluence.extra.layout	784	2017-07-19 14:48:05.142	section
confluence.macros.advanced	785	2017-07-19 14:48:05.142	listlabels-resources
com.atlassian.confluence.editor	786	2017-07-19 14:48:05.142	xmlOutputFactory
confluence.sections.space.tools	787	2017-07-19 14:48:05.142	removespace
com.atlassian.confluence.plugins.confluence-business-blueprints	788	2017-07-19 14:48:05.142	sharelinks-blueprint-item
com.atlassian.mywork.mywork-common-plugin	789	2017-07-19 14:48:05.142	i18nResolver
confluence.web.resources	790	2017-07-19 14:48:05.142	moment
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	791	2017-07-19 14:48:05.142	remotePageViewService
com.atlassian.confluence.plugins.confluence-fixed-headers	792	2017-07-19 14:48:05.142	utils
com.atlassian.applinks.applinks-plugin	793	2017-07-19 14:48:05.142	applicationLinkUIService
com.atlassian.confluence.plugins.confluence-email-resources	794	2017-07-19 14:48:05.142	template-utils
com.atlassian.confluence.plugins.share-page	795	2017-07-19 14:48:05.142	share-page-notification-transformer
com.atlassian.plugins.atlassian-project-creation-plugin	796	2017-07-19 14:48:05.142	aggregate-roots-rest-url
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	797	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.confluence.plugins.search.confluence-search	798	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.confluence.plugins.quickedit	799	2017-07-19 14:48:05.142	quick-edit-general
com.atlassian.confluence.plugins.synchrony-interop	800	2017-07-19 14:48:05.142	synchronyStatusCheck
confluence.web.resources	801	2017-07-19 14:48:05.142	pagination-styles
confluence.extra.impresence2	802	2017-07-19 14:48:05.142	reporter-sametime
com.atlassian.confluence.plugins.confluence-software-blueprints	803	2017-07-19 14:48:05.142	retrospectives-page
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	804	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	805	2017-07-19 14:48:05.142	hipchat-oauth-profile-page
com.atlassian.streams.actions	806	2017-07-19 14:48:05.142	action-handler-web-resource
com.atlassian.confluence.plugins.confluence-knowledge-base	807	2017-07-19 14:48:05.142	permissionManager
com.atlassian.streams	808	2017-07-19 14:48:05.142	date-he-IL
com.atlassian.confluence.plugins.confluence-browser-metrics	809	2017-07-19 14:48:05.142	browser-metrics-api
com.atlassian.confluence.plugins.confluence-inline-comments	810	2017-07-19 14:48:05.142	inline-notification-new-mail
confluence.aui.staging	811	2017-07-19 14:48:05.142	meta
com.atlassian.confluence.plugins.confluence-file-notifications	812	2017-07-19 14:48:05.142	file-notifications-like-action
com.atlassian.applinks.applinks-cors-plugin	813	2017-07-19 14:48:05.142	adminUIAuthenticator
com.atlassian.confluence.plugins.confluence-inline-comments	814	2017-07-19 14:48:05.142	view-inline-email-adg-footer-item
confluence.web.resources	815	2017-07-19 14:48:05.142	setup-language-picker-resources
com.atlassian.support.healthcheck.support-healthcheck-plugin	816	2017-07-19 14:48:05.142	healthcheck-resources
com.atlassian.auiplugin	817	2017-07-19 14:48:05.142	internal-jquery-ui-partial
confluence.macros.html	818	2017-07-19 14:48:05.142	outboundWhitelist
com.atlassian.confluence.plugins.confluence-knowledge-base	819	2017-07-19 14:48:05.142	spaceManager
com.atlassian.confluence.plugins.confluence-inline-comments	820	2017-07-19 14:48:05.142	create-inline-comment
com.atlassian.confluence.editor	821	2017-07-19 14:48:05.142	page-editor
com.atlassian.auiplugin	822	2017-07-19 14:48:05.142	deprecated-legacy-images
confluence.sections.admin.generalconfig	823	2017-07-19 14:48:05.142	resources
com.atlassian.applinks.applinks-cors-plugin	824	2017-07-19 14:48:05.142	cors-auth
com.atlassian.confluence.plugins.confluence-sal-plugin	825	2017-07-19 14:48:05.142	projectManager
com.atlassian.confluence.plugins.confluence-mobile	826	2017-07-19 14:48:05.142	webResourceAssemblerFactory
com.atlassian.applinks.applinks-trustedapps-plugin	827	2017-07-19 14:48:05.142	xsrfTokenValidator
com.atlassian.plugins.atlassian-whitelist-core-plugin	828	2017-07-19 14:48:05.142	applicationLinkService
com.atlassian.querylang.confluence-cql-plugin	829	2017-07-19 14:48:05.142	content-type-field
com.atlassian.confluence.plugins.confluence-space-ia	830	2017-07-19 14:48:05.142	header-people-link
com.atlassian.confluence.plugins.confluence-user-rest	831	2017-07-19 14:48:05.142	aggregationWarningManager
com.atlassian.confluence.contributors	832	2017-07-19 14:48:05.142	creationDate
com.atlassian.confluence.plugins.quickedit	833	2017-07-19 14:48:05.142	quick-edit-util
com.atlassian.confluence.plugins.confluence-sortable-tables	834	2017-07-19 14:48:05.142	ConfluenceSortableTablesEditorPlugin
com.atlassian.mywork.mywork-confluence-provider-plugin	835	2017-07-19 14:48:05.142	commentService
com.atlassian.confluence.extra.flyingpdf	836	2017-07-19 14:48:05.142	none
com.atlassian.confluence.plugins.confluence-lookandfeel	837	2017-07-19 14:48:05.142	siteLogoHelperContext
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	838	2017-07-19 14:48:05.142	auditLogUpgradeTask
com.atlassian.applinks.applinks-plugin	839	2017-07-19 14:48:05.142	applinks-application-type
com.atlassian.templaterenderer.api	840	2017-07-19 14:48:05.142	template-context-item
com.atlassian.oauth.serviceprovider	841	2017-07-19 14:48:05.142	postAuthorizationProcessor
com.atlassian.streams.confluence	842	2017-07-19 14:48:05.142	date-ar-IQ
com.atlassian.confluence.plugins.confluence-templates	843	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.plugins.atlassian-nav-links-plugin	844	2017-07-19 14:48:05.142	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-space-directory	845	2017-07-19 14:48:05.142	spaceDirectoryEntityBuilder
com.atlassian.auiplugin	846	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-edit-row
com.atlassian.applinks.applinks-trustedapps-plugin	847	2017-07-19 14:48:05.142	adminUIAuthenticator
com.atlassian.streams.confluence	848	2017-07-19 14:48:05.142	streamsLocaleProvider
com.atlassian.confluence.plugins.drag-and-drop	849	2017-07-19 14:48:05.142	drag-and-drop-for-view-attachments
com.atlassian.streams.confluence	850	2017-07-19 14:48:05.142	streamsFeedUrlBuilderFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	851	2017-07-19 14:48:05.142	mailRenderer
com.atlassian.applinks.applinks-oauth-plugin	852	2017-07-19 14:48:05.142	confluence-inbound-two-legged-oauth
com.atlassian.confluence.plugins.confluence-space-ia	853	2017-07-19 14:48:05.142	spacemenu-resources
com.atlassian.confluence.plugins.gadgets	854	2017-07-19 14:48:05.142	publishedGadgetsDirectory
com.atlassian.confluence.plugins.confluence-license-rest	855	2017-07-19 14:48:05.142	userChecker
com.atlassian.confluence.plugins.confluence-create-content-plugin	856	2017-07-19 14:48:05.142	create-personal-space-item
com.atlassian.confluence.plugins.confluence-email-resources	857	2017-07-19 14:48:05.142	chrome-template-1.0.0
com.atlassian.confluence.plugins.confluence-email-resources	858	2017-07-19 14:48:05.142	email-reply-to-provider
com.atlassian.confluence.plugins.confluence-space-blueprints	859	2017-07-19 14:48:05.142	documentation-space-getting-started-template
com.atlassian.streams	860	2017-07-19 14:48:05.142	feedRenderer
com.atlassian.confluence.extra.flyingpdf	861	2017-07-19 14:48:05.142	pdfExportCustomFontMigrator
com.atlassian.streams.confluence	862	2017-07-19 14:48:05.142	date-nn-NO
com.atlassian.confluence.plugins.confluence-macro-usage	863	2017-07-19 14:48:05.142	macroExtractor
com.atlassian.applinks.applinks-cors-plugin	864	2017-07-19 14:48:05.142	applicationLinkService
com.atlassian.activeobjects.confluence.spi	865	2017-07-19 14:48:05.142	synchronizationManager
com.atlassian.confluence.plugins.confluence-page-banner	866	2017-07-19 14:48:05.142	content-metadata-attachments
confluence.extra.confluencerpc	867	2017-07-19 14:48:05.142	blogsSoapService
confluence.sections.space.tools	868	2017-07-19 14:48:05.142	stylesheet
com.atlassian.auiplugin	869	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-spin
com.atlassian.streams	870	2017-07-19 14:48:05.142	date-uz-Cyrl-UZ
com.atlassian.crowd.embedded.admin	871	2017-07-19 14:48:05.142	confluence-internal-directory-options
com.atlassian.plugins.atlassian-nav-links-plugin	872	2017-07-19 14:48:05.142	custom-apps-filter
com.atlassian.confluence.plugins.confluence-email-resources	873	2017-07-19 14:48:05.142	mimeBodyPartRecorder
com.atlassian.streams.confluence	874	2017-07-19 14:48:05.142	date-ar-LB
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	875	2017-07-19 14:48:05.142	hipchat-css-resources
com.atlassian.auiplugin	876	2017-07-19 14:48:05.142	internal-fancy-file-input-2.0.1-dist-fancy-file-input
com.atlassian.confluence.editor	877	2017-07-19 14:48:05.142	captcha-editor-panel
com.atlassian.confluence.extra.flyingpdf	878	2017-07-19 14:48:05.142	pdfExportFontManager
com.atlassian.querylang.confluence-cql-plugin	879	2017-07-19 14:48:05.142	created-date-field
com.atlassian.confluence.plugins.confluence-onboarding	880	2017-07-19 14:48:05.142	less-users-notification-transformer
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	881	2017-07-19 14:48:05.142	batching-notification-payload-processor
confluence.sections.admin	882	2017-07-19 14:48:05.142	security
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	883	2017-07-19 14:48:05.142	collationCheck
com.atlassian.confluence.plugins.confluence-inline-comments	884	2017-07-19 14:48:05.142	notification-template-reply-body
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	885	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	886	2017-07-19 14:48:05.142	auditLogService
com.atlassian.streams.confluence	887	2017-07-19 14:48:05.142	date-ar-KW
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	888	2017-07-19 14:48:05.142	tx-processor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	889	2017-07-19 14:48:05.142	upm-update-check-templates
com.atlassian.confluence.plugins.confluence-onboarding	890	2017-07-19 14:48:05.142	common-flow-resources
com.atlassian.confluence.plugins.view-storage-format	891	2017-07-19 14:48:05.142	darkFeaturesManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	892	2017-07-19 14:48:05.142	userKeyUpgradeTask
com.atlassian.auiplugin	893	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-header-create-header
confluence.listeners.core	894	2017-07-19 14:48:05.142	mergerListener
com.atlassian.auiplugin	895	2017-07-19 14:48:05.142	dialog2
confluence.sections.admin.header	896	2017-07-19 14:48:05.142	admin-user
confluence.sections.space.advanced	897	2017-07-19 14:48:05.142	exportsection
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	898	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.confluence.plugins.confluence-email-resources	899	2017-07-19 14:48:05.142	content-templates-content-excerpt-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	900	2017-07-19 14:48:05.142	space-blueprints
com.atlassian.streams.confluence	901	2017-07-19 14:48:05.142	date-ar-JO
com.atlassian.confluence.plugins.synchrony-interop	902	2017-07-19 14:48:05.142	confluence-synchrony-interop-rest-api-filter
com.atlassian.confluence.plugins.confluence-license-banner	903	2017-07-19 14:48:05.142	rest-resource
com.atlassian.confluence.plugins.confluence-create-content-plugin	904	2017-07-19 14:48:05.142	create-content-with-init-context
com.atlassian.confluence.plugins.pagetree	905	2017-07-19 14:48:05.142	pagetree-js-resources
confluence.web.panels	906	2017-07-19 14:48:05.142	confluence-footer
confluence.search.lucene.initialisation	907	2017-07-19 14:48:05.142	defaultSearcherInitialisation
com.atlassian.confluence.plugins.confluence-business-blueprints	908	2017-07-19 14:48:05.142	contentBlueprintManager
confluence.extra.jira	909	2017-07-19 14:48:05.142	blueprint-selector
tac.confluence.languages.en_US	910	2017-07-19 14:48:05.142	en_US
com.atlassian.confluence.contributors	911	2017-07-19 14:48:05.142	keyword
com.atlassian.auiplugin	912	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-data-keys
com.atlassian.confluence.plugins.confluence-daily-summary-email	913	2017-07-19 14:48:05.142	popularContentQueries
com.atlassian.streams	914	2017-07-19 14:48:05.142	date-eu-ES
com.atlassian.querylang.confluence-cql-plugin	915	2017-07-19 14:48:05.142	container-field
com.atlassian.streams.confluence	916	2017-07-19 14:48:05.142	spacePermissionManager
com.atlassian.analytics.analytics-client	917	2017-07-19 14:48:05.142	uploadAnalyticsInitialiser
confluence.search.mappers.lucene	918	2017-07-19 14:48:05.142	created
com.atlassian.analytics.analytics-client	919	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.plugins.base-hipchat-integration-plugin	920	2017-07-19 14:48:05.142	common-resources
com.atlassian.plugins.base-hipchat-integration-plugin	921	2017-07-19 14:48:05.142	hipchat-installed-scopes
confluence.search.mappers.lucene	922	2017-07-19 14:48:05.142	contentType
com.atlassian.confluence.plugins.confluence-content-property-storage	923	2017-07-19 14:48:05.142	number-field-type-query-mapper
com.atlassian.confluence.plugins.confluence-create-content-plugin	924	2017-07-19 14:48:05.142	templateUpdatedListener
com.atlassian.streams.confluence	925	2017-07-19 14:48:05.142	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-mentions-plugin	926	2017-07-19 14:48:05.142	mention-notification-template-body
com.atlassian.streams	927	2017-07-19 14:48:05.142	date-mr-IN
com.atlassian.confluence.plugins.confluence-roadmap-plugin	928	2017-07-19 14:48:05.142	roadmap-create-page-context
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	929	2017-07-19 14:48:05.142	page-edited-notification-template-body
com.atlassian.streams.confluence	930	2017-07-19 14:48:05.142	date-ar-MA
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	931	2017-07-19 14:48:05.142	rpv-serviceDeskExternalCustomerServletFilter-filter
com.atlassian.confluence.plugins.drag-and-drop	932	2017-07-19 14:48:05.142	image-dialog-client
com.atlassian.confluence.plugins.confluence-content-property-storage	933	2017-07-19 14:48:05.142	content-property
confluence.converters.core	934	2017-07-19 14:48:05.142	page-converter
confluence.macros.advanced	935	2017-07-19 14:48:05.142	xhtml-blog-posts
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	936	2017-07-19 14:48:05.142	transactionTemplate
confluence.web.resources	937	2017-07-19 14:48:05.142	floating-scrollbar
com.atlassian.querylang.confluence-cql-plugin	938	2017-07-19 14:48:05.142	watcher-field
com.atlassian.confluence.plugins.confluence-create-content-plugin	939	2017-07-19 14:48:05.142	blueprintResolver
com.atlassian.confluence.plugins.confluence-business-blueprints	940	2017-07-19 14:48:05.142	i18nBeanFactory
com.atlassian.applinks.applinks-plugin	941	2017-07-19 14:48:05.142	webFragmentHelper
com.atlassian.confluence.extra.officeconnector	942	2017-07-19 14:48:05.142	wordContentExtractor
com.atlassian.auiplugin	943	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-version
confluence.sections.admin.indexing	944	2017-07-19 14:48:05.142	resources
com.atlassian.streams.confluence	945	2017-07-19 14:48:05.142	date-ar-LY
com.atlassian.confluence.plugins.confluence-email-tracker	946	2017-07-19 14:48:05.142	emailTrackerServlet
com.atlassian.confluence.plugins.confluence-email-resources	947	2017-07-19 14:48:05.142	template-utils-fail-safe-user-link-1.0.0
confluence.sections.space	948	2017-07-19 14:48:05.142	space-blogposts
confluence.search.mappers.lucene	949	2017-07-19 14:48:05.142	booleanSearchFilter
confluence.extra.confluencerpc	950	2017-07-19 14:48:05.142	wikiSoapService
com.atlassian.confluence.plugins.gadgets	951	2017-07-19 14:48:05.142	cacheStatisticsManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	952	2017-07-19 14:48:05.142	underscoreTemplateRenderer
confluence.extractors.core	953	2017-07-19 14:48:05.142	objectDateExtractor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	954	2017-07-19 14:48:05.142	actions
tac.confluence.languages.ru_RU	955	2017-07-19 14:48:05.142	ru_RU
com.atlassian.applinks.applinks-trustedapps-plugin	956	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.plugin.notifications.notifications-module	957	2017-07-19 14:48:05.142	notificationMediumManager
com.atlassian.confluence.plugins.confluence-business-blueprints	958	2017-07-19 14:48:05.142	sharePageService
com.atlassian.confluence.plugins.templates-framework	959	2017-07-19 14:48:05.142	templates_js
com.atlassian.confluence.extra.officeconnector	960	2017-07-19 14:48:05.142	viewfile-legacy
confluence.sections.admin	961	2017-07-19 14:48:05.142	mailqueue
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	962	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	963	2017-07-19 14:48:05.142	space-blueprint
com.atlassian.applinks.applinks-plugin	964	2017-07-19 14:48:05.142	page-applink-edit
com.atlassian.oauth.serviceprovider	965	2017-07-19 14:48:05.142	oAuthRequestVerifierFactory
com.atlassian.confluence.plugins.confluence-software-blueprints	966	2017-07-19 14:48:05.142	requirements-blueprint
confluence.extra.jira	967	2017-07-19 14:48:05.142	editor-featured-macro-jira
confluence.sections.admin	968	2017-07-19 14:48:05.142	indexing
confluence.lifecycle.core	969	2017-07-19 14:48:05.142	xhtmlWikiMarkupMacroMigration
com.atlassian.confluence.plugins.confluence-sal-plugin	970	2017-07-19 14:48:05.142	loginUriProvider
confluence.content.action.menu	1027	2017-07-19 14:48:05.142	view-history
com.atlassian.auiplugin	971	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-progressive-data-set
com.atlassian.mywork.mywork-confluence-host-plugin	972	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.favicon.confluence-custom-favicon-plugin	973	2017-07-19 14:48:05.142	favicon-plugin-resources
confluence.renderer.components	974	2017-07-19 14:48:05.142	html-entity-tokenize
com.atlassian.confluence.plugins.confluence-templates	975	2017-07-19 14:48:05.142	viewTransformer
com.atlassian.streams.confluence	976	2017-07-19 14:48:05.142	date-ar-OM
com.atlassian.confluence.plugins.confluence-like	977	2017-07-19 14:48:05.142	networkService
com.atlassian.confluence.plugins.confluence-ui-components	978	2017-07-19 14:48:05.142	page-picker
com.atlassian.confluence.plugins.confluence-image-attributes	979	2017-07-19 14:48:05.142	soy-resources
com.atlassian.analytics.analytics-client	980	2017-07-19 14:48:05.142	eventAnonymizer
com.atlassian.auiplugin	981	2017-07-19 14:48:05.142	aui-experimental-page-layout-typography-legacy1
com.atlassian.confluence.plugins.search.confluence-search	982	2017-07-19 14:48:05.142	confluence-search-resources
com.atlassian.auiplugin	983	2017-07-19 14:48:05.142	aui-experimental-restfultable
com.atlassian.plugins.atlassian-nav-links-plugin	984	2017-07-19 14:48:05.142	project-shortcuts-rest-filter
com.atlassian.plugins.atlassian-plugins-webresource-rest	985	2017-07-19 14:48:05.142	web-resource-manager
com.atlassian.streams	986	2017-07-19 14:48:05.142	date-de-DE
confluence.listeners.core	987	2017-07-19 14:48:05.142	clusterPanicListener
confluence.extra.confluencerpc	988	2017-07-19 14:48:05.142	spacesSoapService
confluence.web.components	989	2017-07-19 14:48:05.142	core
com.atlassian.confluence.plugins.confluence-mobile	990	2017-07-19 14:48:05.142	dashboard-dependencies
com.atlassian.auiplugin	991	2017-07-19 14:48:05.142	aui-mobile-suite
com.atlassian.confluence.plugins.confluence-software-blueprints	992	2017-07-19 14:48:05.142	retrospective-resources
confluence.sections.admin	993	2017-07-19 14:48:05.142	auditlog
com.atlassian.streams	994	2017-07-19 14:48:05.142	streamsWebResources
confluence.extractors.core	995	2017-07-19 14:48:05.142	untokenizedTitleExtractor
com.atlassian.confluence.plugins.confluence-like	996	2017-07-19 14:48:05.142	confluenceNotificationPreferenceManager
confluence.listeners.core	997	2017-07-19 14:48:05.142	createPersonalSpaceListener
com.atlassian.streams.confluence	998	2017-07-19 14:48:05.142	date-ar-AE
com.atlassian.integration.jira.jira-integration-plugin	999	2017-07-19 14:48:05.142	fields
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1000	2017-07-19 14:48:05.142	hamletClient
com.atlassian.confluence.plugins.gadgets	1001	2017-07-19 14:48:05.142	gadget-user-settings
com.atlassian.confluence.plugins.quickreload	1002	2017-07-19 14:48:05.142	permissionManager
com.atlassian.confluence.plugins.confluence-previews	1003	2017-07-19 14:48:05.142	confluencePreviewsWhitelist
com.atlassian.oauth.serviceprovider	1004	2017-07-19 14:48:05.142	getAuthorizationProcessor
confluence.web.resources	1005	2017-07-19 14:48:05.142	macro-js-overrides
confluence.sections.space.admin	1006	2017-07-19 14:48:05.142	editspace
com.atlassian.plugins.atlassian-nav-links-plugin	1007	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-easyuser-admin	1008	2017-07-19 14:48:05.142	eventPublisher
confluence.sections.space	1009	2017-07-19 14:48:05.142	space-pages
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1010	2017-07-19 14:48:05.142	blogpost-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-browser-metrics	1011	2017-07-19 14:48:05.142	editor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1012	2017-07-19 14:48:05.142	hostApplicationLicenseFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	1013	2017-07-19 14:48:05.142	contentBlueprintInstanceAdapter
com.atlassian.streams	1014	2017-07-19 14:48:05.142	date-se-FI
confluence.extra.information	1015	2017-07-19 14:48:05.142	warning
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1016	2017-07-19 14:48:05.142	upm-dac-landing-page-templates
com.atlassian.confluence.plugins.confluence-user-rest	1017	2017-07-19 14:48:05.142	usersEntityBuilder
com.atlassian.auiplugin	1018	2017-07-19 14:48:05.142	jquery-lib
com.atlassian.streams.confluence	1019	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.streams	1020	2017-07-19 14:48:05.142	date-cy-GB
com.atlassian.support.stp	1021	2017-07-19 14:48:05.142	salPluginSettingsFactory
com.atlassian.streams	1022	2017-07-19 14:48:05.142	configRepresentationBuilder
com.atlassian.auiplugin	1023	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-banner
com.atlassian.confluence.plugins.confluence-like	1024	2017-07-19 14:48:05.142	like-created-notification-template-body
com.atlassian.gadgets.publisher	1025	2017-07-19 14:48:05.142	ajs-gadgets
com.atlassian.plugins.atlassian-nav-links-plugin	1026	2017-07-19 14:48:05.142	custom-app-store
com.atlassian.querylang.confluence-cql-plugin	1028	2017-07-19 14:48:05.142	title-text-field
confluence.web.resources	1029	2017-07-19 14:48:05.142	safe-ajax
confluence.web.resources	1030	2017-07-19 14:48:05.142	page-location
confluence.web.resources	1031	2017-07-19 14:48:05.142	marionette
com.atlassian.applinks.applinks-plugin	1032	2017-07-19 14:48:05.142	applinks-oauth-ui
confluence.macros.multimedia	1033	2017-07-19 14:48:05.142	real-media
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1034	2017-07-19 14:48:05.142	notificationsEventDispatcher
com.atlassian.confluence.plugins.view-source	1035	2017-07-19 14:48:05.142	view-source
confluence.sections.admin	1036	2017-07-19 14:48:05.142	usermacros
confluence.user.menu.concise	1037	2017-07-19 14:48:05.142	user-history
com.atlassian.querylang.confluence-cql-plugin	1038	2017-07-19 14:48:05.142	confluence-cql-plugin-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1039	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.confluence.plugins.gadgets	1040	2017-07-19 14:48:05.142	cdnActivationListener
com.atlassian.confluence.plugins.confluence-sal-plugin	1041	2017-07-19 14:48:05.142	pluginAccessor
confluence.macros.dashboard	1042	2017-07-19 14:48:05.142	old-dashboard-resource-loader
confluence.extra.jira	1043	2017-07-19 14:48:05.142	jiraissues-xhtml
com.atlassian.confluence.plugins.confluence-user-profile	1044	2017-07-19 14:48:05.142	avatar-picker
com.atlassian.plugins.atlassian-nav-links-plugin	1045	2017-07-19 14:48:05.142	projectPermissionManager
com.atlassian.streams.confluence	1046	2017-07-19 14:48:05.142	date-ar-BH
confluence.web.resources	1047	2017-07-19 14:48:05.142	fancy-box
com.atlassian.confluence.plugins.confluence-lookandfeel	1048	2017-07-19 14:48:05.142	imageScaler
com.atlassian.confluence.plugins.confluence-email-resources	1049	2017-07-19 14:48:05.142	content-templates-contextual-excerpt-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-email-resources	1050	2017-07-19 14:48:05.142	notification-templates-page-moved-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1051	2017-07-19 14:48:05.142	permissionService
com.atlassian.confluence.plugins.confluence-mobile	1052	2017-07-19 14:48:05.142	storageDefaultFragmentTransformerFactory
com.atlassian.confluence.plugins.confluence-lookandfeel	1053	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	1054	2017-07-19 14:48:05.142	prettyurls-sitemesh-filter-before-dispatch
com.atlassian.support.stp	1055	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1056	2017-07-19 14:48:05.142	confluenceAccessManager
confluence.extra.webdav	1057	2017-07-19 14:48:05.142	webdavconfig
com.atlassian.auiplugin	1058	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-messages
com.atlassian.plugins.atlassian-nav-links-plugin	1059	2017-07-19 14:48:05.142	capabilities-forward
com.atlassian.streams.confluence	1060	2017-07-19 14:48:05.142	date-ar-EG
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1061	2017-07-19 14:48:05.142	page-edited-hipchat-notification-template-body
confluence.extra.masterdetail	1062	2017-07-19 14:48:05.142	details-migrator
com.atlassian.confluence.plugins.confluence-link-browser	1063	2017-07-19 14:48:05.142	link-browser-tab-files
com.atlassian.confluence.ext.newcode-macro-plugin	1064	2017-07-19 14:48:05.142	sh-theme-django
com.atlassian.plugins.atlassian-nav-links-plugin	1065	2017-07-19 14:48:05.142	app-link-service
com.atlassian.auiplugin	1066	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-navigation
confluence.sections.space.advanced	1067	2017-07-19 14:48:05.142	subscribesection
com.atlassian.plugins.atlassian-nav-links-plugin	1068	2017-07-19 14:48:05.142	custom-content-link-provider
com.atlassian.confluence.plugins.confluence-daily-summary-email	1069	2017-07-19 14:48:05.142	daily-summary-popular-content
com.atlassian.confluence.extra.widgetconnector	1070	2017-07-19 14:48:05.142	myspacevideo
com.atlassian.streams.confluence	1071	2017-07-19 14:48:05.142	date-ar-DZ
com.atlassian.confluence.plugins.confluence-ui-components	1072	2017-07-19 14:48:05.142	user-group-select2
com.atlassian.gadgets.oauth.serviceprovider	1073	2017-07-19 14:48:05.142	stringEscapeUtilContextItem
tac.confluence.languages.ja_JP	1074	2017-07-19 14:48:05.142	ja_JP
com.atlassian.auiplugin	1075	2017-07-19 14:48:05.142	aui-experimental-dropdown2
com.atlassian.gadgets.publisher	1076	2017-07-19 14:48:05.142	templates
com.atlassian.plugins.rest.atlassian-rest-module	1077	2017-07-19 14:48:05.142	rest-seraph-filter
com.atlassian.support.healthcheck.support-healthcheck-plugin	1078	2017-07-19 14:48:05.142	healthCheckProcessFactory
confluence.extractors.core	1079	2017-07-19 14:48:05.142	personalInformationExtractor
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1080	2017-07-19 14:48:05.142	templateContextFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	1081	2017-07-19 14:48:05.142	content-template
com.atlassian.auiplugin	1135	2017-07-19 14:48:05.142	aui-experimental-avatars
com.atlassian.mywork.mywork-confluence-host-plugin	1082	2017-07-19 14:48:05.142	userDeletedListener
com.atlassian.support.stp	1083	2017-07-19 14:48:05.142	permissionValidationService
com.atlassian.confluence.plugins.quickreload	1084	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1085	2017-07-19 14:48:05.142	experiencecanvas-resources
com.atlassian.confluence.plugins.confluence-onboarding	1086	2017-07-19 14:48:05.142	notificationUserService
com.atlassian.confluence.plugins.confluence-sal-plugin	1087	2017-07-19 14:48:05.142	tenantAccessor
com.atlassian.auiplugin	1088	2017-07-19 14:48:05.142	jquery-selection
com.atlassian.confluence.editor	1089	2017-07-19 14:48:05.142	utils-resources
com.atlassian.confluence.plugins.confluence-email-resources	1090	2017-07-19 14:48:05.142	notification-templates-status-updated-1.0.0
com.atlassian.confluence.plugins.confluence-jira-content	1091	2017-07-19 14:48:05.142	confluence-jira-content-resources
confluence.search.mappers.lucene	1092	2017-07-19 14:48:05.142	excludePersonalInformationSearchFilter
com.atlassian.streams.confluence	1093	2017-07-19 14:48:05.142	date-sa-IN
confluence.sections.space.advanced	1094	2017-07-19 14:48:05.142	startwatchingblogs
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1095	2017-07-19 14:48:05.142	contentEntityManager
com.atlassian.confluence.plugins.confluence-highlight-actions	1096	2017-07-19 14:48:05.142	highlighting-experiment-resources
com.atlassian.confluence.plugins.confluence-link-browser	1097	2017-07-19 14:48:05.142	link-browser-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1098	2017-07-19 14:48:05.142	httpClientTrustedRequestFactory
com.atlassian.integration.jira.jira-integration-plugin	1099	2017-07-19 14:48:05.142	issue-jump-servlet
com.atlassian.confluence.plugins.gadgets.spi	1100	2017-07-19 14:48:05.142	subscribedGadgetFeedStore
confluence.user.hover.menu	1101	2017-07-19 14:48:05.142	primary
confluence.search.mappers.lucene	1102	2017-07-19 14:48:05.142	filesize
confluence.macros.advanced	1103	2017-07-19 14:48:05.142	children
com.atlassian.confluence.plugins.confluence-file-notifications	1104	2017-07-19 14:48:05.142	file-content-recipients-provider
com.atlassian.confluence.ext.newcode-macro-plugin	1105	2017-07-19 14:48:05.142	configure-newcode
com.atlassian.confluence.plugins.confluence-email-resources	1106	2017-07-19 14:48:05.142	batch-notification-templates
com.atlassian.plugin.notifications.notifications-module	1107	2017-07-19 14:48:05.142	notification-queue
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1108	2017-07-19 14:48:05.142	licenseReceiptHandler
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1109	2017-07-19 14:48:05.142	comment-created-notification-template-body
com.atlassian.confluence.plugins.confluence-create-content-plugin	1110	2017-07-19 14:48:05.142	spaceBlueprintManager
com.atlassian.streams.confluence	1111	2017-07-19 14:48:05.142	date-az-Latn-AZ
com.atlassian.streams	1112	2017-07-19 14:48:05.142	date-fi-FI
com.atlassian.confluence.plugins.confluence-mentions-plugin	1113	2017-07-19 14:48:05.142	mentions-email-soy-templates-2
com.atlassian.plugins.base-hipchat-integration-plugin	1114	2017-07-19 14:48:05.142	invites-soy-resources
com.atlassian.confluence.plugins.confluence-inline-comments	1115	2017-07-19 14:48:05.142	confluence-inline-resolved-batching
com.atlassian.confluence.plugins.confluence-mobile	1116	2017-07-19 14:48:05.142	dashboard-servlet
com.atlassian.streams	1117	2017-07-19 14:48:05.142	date-az-Cyrl-AZ
com.atlassian.confluence.extra.widgetconnector	1118	2017-07-19 14:48:05.142	twitter
confluence.sections.page.operations	1119	2017-07-19 14:48:05.142	wordexport
com.atlassian.confluence.plugins.confluence-knowledge-base	1120	2017-07-19 14:48:05.142	kb-article-resources
confluence.web.resources	1121	2017-07-19 14:48:05.142	print-styles
com.atlassian.confluence.plugins.confluence-inline-tasks	1122	2017-07-19 14:48:05.142	task-report-blueprint-resources
com.atlassian.confluence.plugins.confluence-email-resources	1123	2017-07-19 14:48:05.142	template-utils-floating-table-1.0.0
com.atlassian.gadgets.opensocial	1124	2017-07-19 14:48:05.142	guice-context-listener
com.atlassian.confluence.plugins.confluence-inline-comments	1125	2017-07-19 14:48:05.142	inlinecomment.sidebar.navigate.previous
com.atlassian.activeobjects.confluence.spi	1126	2017-07-19 14:48:05.142	dialectExractor
com.atlassian.confluence.plugins.confluence-create-content-plugin	1127	2017-07-19 14:48:05.142	removeSpaceListener
com.atlassian.plugins.base-hipchat-integration-plugin	1128	2017-07-19 14:48:05.142	hipchat-webhook
com.atlassian.confluence.plugins.confluence-document-conversion-library	1129	2017-07-19 14:48:05.142	conversionQueueMonitor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1130	2017-07-19 14:48:05.142	hipchat-invite-resources
com.atlassian.streams	1131	2017-07-19 14:48:05.142	applinkService
com.atlassian.plugins.atlassian-plugins-webresource-rest	1132	2017-07-19 14:48:05.142	web-resources-filter
com.atlassian.confluence.plugins.confluence-view-file-macro	1133	2017-07-19 14:48:05.142	view-file-macro-amd-resources
confluence.sections.space.tools	1134	2017-07-19 14:48:05.142	watch-blog
com.atlassian.applinks.applinks-plugin	1136	2017-07-19 14:48:05.142	page-v3
com.atlassian.confluence.keyboardshortcuts	1137	2017-07-19 14:48:05.142	keyboard-shortcuts-dialog-help-menu
com.atlassian.plugins.atlassian-nav-links-plugin	1138	2017-07-19 14:48:05.142	capability-client
com.atlassian.plugin.notifications.notifications-module	1139	2017-07-19 14:48:05.142	product
com.atlassian.confluence.plugins.confluence-previews	1140	2017-07-19 14:48:05.142	confluence-previews-pdf
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1141	2017-07-19 14:48:05.142	appManager
com.atlassian.plugins.authentication.atlassian-authentication-plugin	1142	2017-07-19 14:48:05.142	confluence-authentication-filter
com.atlassian.confluence.plugins.confluence-license-banner	1143	2017-07-19 14:48:05.142	suppressStp1
com.atlassian.plugins.atlassian-nav-links-plugin	1144	2017-07-19 14:48:05.142	cacheFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1145	2017-07-19 14:48:05.142	confluenceUserI18nResolver
com.atlassian.confluence.plugins.search.confluence-search	1146	2017-07-19 14:48:05.142	disabledContentTypeFilterFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1147	2017-07-19 14:48:05.142	pluginRequestNotificationChecker
confluence.sections.space.admin	1148	2017-07-19 14:48:05.142	trash
com.atlassian.auiplugin	1149	2017-07-19 14:48:05.142	aui-page-suite
com.atlassian.streams	1150	2017-07-19 14:48:05.142	rest-filter
confluence.sections.space.tools	1151	2017-07-19 14:48:05.142	space-attachments
com.atlassian.streams	1152	2017-07-19 14:48:05.142	userManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1153	2017-07-19 14:48:05.142	upm-dac-landing-page-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1154	2017-07-19 14:48:05.142	pluginControlHandlerRegistry
com.atlassian.confluence.plugins.gadgets	1155	2017-07-19 14:48:05.142	gadgetFeedReaderFactory
com.atlassian.support.stp	1156	2017-07-19 14:48:05.142	renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1157	2017-07-19 14:48:05.142	requests-servlet
com.atlassian.applinks.applinks-plugin	1158	2017-07-19 14:48:05.142	feature-oauth-dance
com.atlassian.applinks.applinks-plugin	1159	2017-07-19 14:48:05.142	auth-config-css
com.atlassian.confluence.plugins.confluence-business-blueprints	1160	2017-07-19 14:48:05.142	sharelinks-page
com.atlassian.auiplugin	1161	2017-07-19 14:48:05.142	aui-experimental-badge
com.atlassian.confluence.plugins.confluence-software-project	1162	2017-07-19 14:48:05.142	sp-space-file-lists-template
com.atlassian.confluence.plugins.confluence-lookandfeel	1163	2017-07-19 14:48:05.142	sitelogo-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1164	2017-07-19 14:48:05.142	blogpost-edited-notification-template-body
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	1165	2017-07-19 14:48:05.142	remote-view-page-web-css-resource
confluence.sections.admin	1166	2017-07-19 14:48:05.142	license
com.atlassian.applinks.applinks-plugin	1167	2017-07-19 14:48:05.142	list-application-links
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1168	2017-07-19 14:48:05.142	pluginLicenseEventPublisherRegistry
com.atlassian.support.healthcheck.support-healthcheck-plugin	1169	2017-07-19 14:48:05.142	supportHealthCheckManager
com.atlassian.confluence.plugins.confluence-easyuser-admin	1170	2017-07-19 14:48:05.142	wikiStyleRenderer
com.atlassian.auiplugin	1171	2017-07-19 14:48:05.142	layer
com.atlassian.confluence.plugins.confluence-user-profile	1172	2017-07-19 14:48:05.142	user-avatar-resource-filter
com.atlassian.support.stp	1173	2017-07-19 14:48:05.142	stp-license-banner-data
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1174	2017-07-19 14:48:05.142	urlReadingWebResourceUrlBuilder
com.atlassian.confluence.plugins.confluence-labels	1175	2017-07-19 14:48:05.142	labels-resources
confluence.macros.basic	1176	2017-07-19 14:48:05.142	noformat
com.atlassian.applinks.applinks-plugin	1177	2017-07-19 14:48:05.142	xsrfTokenAccessor
confluence.extractors.core	1178	2017-07-19 14:48:05.142	spaceDescriptionUserNameExtractor
confluence.content.action.menu	1179	2017-07-19 14:48:05.142	secondary
confluence.content.action.menu	1180	2017-07-19 14:48:05.142	move-page
com.atlassian.streams.confluence.inlineactions	1181	2017-07-19 14:48:05.142	actionHandlers
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1182	2017-07-19 14:48:05.142	upm-manage-plugins-resources
com.atlassian.streams	1183	2017-07-19 14:48:05.142	date-sms-FI
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1184	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.confluence.plugins.confluence-view-file-macro	1185	2017-07-19 14:48:05.142	view-file-macro-editor-resources
com.atlassian.applinks.applinks-plugin	1186	2017-07-19 14:48:05.142	generic
com.atlassian.confluence.plugins.confluence-mentions-plugin	1187	2017-07-19 14:48:05.142	mention-notification-template
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1188	2017-07-19 14:48:05.142	openFilesHealthCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1189	2017-07-19 14:48:05.142	dataSourceFactory
com.atlassian.applinks.applinks-plugin	1190	2017-07-19 14:48:05.142	model-applink
confluence.listeners.core	1191	2017-07-19 14:48:05.142	createUserNotificationsListener
com.atlassian.confluence.plugins.confluence-quicknav	1192	2017-07-19 14:48:05.142	quicknav-panel
com.atlassian.streams.confluence	1193	2017-07-19 14:48:05.142	date-de-LU
com.atlassian.confluence.plugins.confluence-knowledge-base	1194	2017-07-19 14:48:05.142	salDarkFeatureManager
com.atlassian.applinks.applinks-cors-plugin	1195	2017-07-19 14:48:05.142	i18nResolver
confluence.macros.advanced	1196	2017-07-19 14:48:05.142	xhtml-excerpt-include
com.atlassian.plugins.base-hipchat-integration-plugin	1197	2017-07-19 14:48:05.142	inviteServlet
confluence.admin.user	1198	2017-07-19 14:48:05.142	browse-users-tab-search
confluence.extra.masterdetail	1199	2017-07-19 14:48:05.142	clearCacheUpgradeTask
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1200	2017-07-19 14:48:05.142	userManager
com.atlassian.confluence.plugins.confluence-email-resources	1201	2017-07-19 14:48:05.142	view-page-email-call-to-action
confluence.macros.basic	1202	2017-07-19 14:48:05.142	loremipsum
com.atlassian.streams.actions	1203	2017-07-19 14:48:05.142	actionHandlerAccessor
com.atlassian.streams.confluence	1204	2017-07-19 14:48:05.142	date-id-ID
com.atlassian.confluence.plugins.confluence-email-resources	1205	2017-07-19 14:48:05.142	chrome-template
com.atlassian.streams.confluence	1206	2017-07-19 14:48:05.142	date-sw-KE
com.atlassian.applinks.applinks-plugin	1207	2017-07-19 14:48:05.142	feature-applink-status
com.atlassian.plugin.jslibs	1208	2017-07-19 14:48:05.142	backbone-1.0.0-factory
com.atlassian.applinks.applinks-cors-plugin	1209	2017-07-19 14:48:05.142	requestFactory
confluence.extra.information	1210	2017-07-19 14:48:05.142	xhtml-tip
com.atlassian.analytics.analytics-client	1211	2017-07-19 14:48:05.142	pluginEventManager
com.atlassian.applinks.applinks-oauth-plugin	1212	2017-07-19 14:48:05.142	oAuthConfigListener
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	1213	2017-07-19 14:48:05.142	rpv-serviceDeskExternalCustomerServletFilter-component
com.atlassian.streams.confluence	1214	2017-07-19 14:48:05.142	date-de-LI
com.atlassian.analytics.analytics-client	1215	2017-07-19 14:48:05.142	schedulerComponent
com.atlassian.applinks.applinks-plugin	1216	2017-07-19 14:48:05.142	redirectController
com.atlassian.confluence.plugins.confluence-create-content-plugin	1217	2017-07-19 14:48:05.142	ao
com.atlassian.plugin.notifications.notifications-module	1218	2017-07-19 14:48:05.142	passwordEncrypter
com.atlassian.support.stp	1219	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.streams.confluence	1220	2017-07-19 14:48:05.142	date-sma-NO
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1221	2017-07-19 14:48:05.142	jdkHealthCheck
confluence.web.panel.renderers	1222	2017-07-19 14:48:05.142	confluenceAwareWebPanelRenderer
com.atlassian.confluence.plugins.confluence-image-attributes	1223	2017-07-19 14:48:05.142	image-properties-tab-attributes
com.atlassian.mywork.mywork-confluence-host-plugin	1224	2017-07-19 14:48:05.142	task-dao
com.atlassian.streams.confluence	1225	2017-07-19 14:48:05.142	uriProvider
com.atlassian.confluence.plugins.recently-viewed-plugin	1226	2017-07-19 14:48:05.142	tx-processor
com.atlassian.applinks.applinks-cors-plugin	1227	2017-07-19 14:48:05.142	webSudoManager
com.atlassian.plugins.authentication.atlassian-authentication-plugin	1228	2017-07-19 14:48:05.142	authentication-config-rest
com.atlassian.auiplugin	1229	2017-07-19 14:48:05.142	aui-select2
com.atlassian.applinks.applinks-plugin	1230	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.oauth.serviceprovider	1231	2017-07-19 14:48:05.142	serviceProviderFactory
com.atlassian.querylang.confluence-cql-plugin	1232	2017-07-19 14:48:05.142	space-title-field
com.atlassian.confluence.plugins.confluence-onboarding	1233	2017-07-19 14:48:05.142	confluence-efi-rest
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1234	2017-07-19 14:48:05.142	hipchat-resources
com.atlassian.confluence.plugins.confluence-inline-comments	1235	2017-07-19 14:48:05.142	sidebar-view
com.atlassian.streams.confluence	1236	2017-07-19 14:48:05.142	formatSettingsManager
com.atlassian.confluence.plugins.confluence-edge-index	1237	2017-07-19 14:48:05.142	rest
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1238	2017-07-19 14:48:05.142	velocity-1.6-template-renderer-factory
com.atlassian.plugins.atlassian-nps-plugin	1239	2017-07-19 14:48:05.142	atlassian-nps-plugin-resources
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1240	2017-07-19 14:48:05.142	atlassian-cluster-monitoring
com.atlassian.confluence.plugins.soy	1241	2017-07-19 14:48:05.142	soy-format-time-function
com.atlassian.confluence.plugins.confluence-onboarding	1242	2017-07-19 14:48:05.142	webItemService
com.atlassian.confluence.plugins.confluence-email-resources	1243	2017-07-19 14:48:05.142	view-blogpost-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	1244	2017-07-19 14:48:05.142	notification-templates-comment-add-2.0.0
com.atlassian.streams	1245	2017-07-19 14:48:05.142	date-de-AT
com.atlassian.confluence.plugins.quickedit	1246	2017-07-19 14:48:05.142	editor-view-resources
confluence.extra.masterdetail	1247	2017-07-19 14:48:05.142	detailssummary
com.atlassian.streams	1248	2017-07-19 14:48:05.142	feedSanitizer
com.atlassian.auiplugin	1249	2017-07-19 14:48:05.142	aui-experimental-page-layout
com.atlassian.auiplugin	1250	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-custom-create-view
com.atlassian.confluence.extra.officeconnector	1251	2017-07-19 14:48:05.142	wordimportresource
com.atlassian.confluence.plugins.confluence-view-file-macro	1252	2017-07-19 14:48:05.142	filePlaceholderGeneratorServlet
com.atlassian.streams	1253	2017-07-19 14:48:05.142	date-kk-KZ
com.atlassian.confluence.plugins.whatsnew	1254	2017-07-19 14:48:05.142	whatsNewManager
com.atlassian.streams.confluence	1255	2017-07-19 14:48:05.142	date-ru-RU
com.atlassian.confluence.plugins.confluence-paste	1256	2017-07-19 14:48:05.142	autoconvert-linkedin-links
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1257	2017-07-19 14:48:05.142	manifestoHashAdapter
com.atlassian.confluence.plugins.confluence-onboarding	1258	2017-07-19 14:48:05.142	storage-service
confluence.extra.webdav	1259	2017-07-19 14:48:05.142	contentJobQueueExecutorTrigger
com.atlassian.confluence.plugins.confluence-like	1260	2017-07-19 14:48:05.142	notificationStoreService
tac.confluence.languages.pt_BR	1261	2017-07-19 14:48:05.142	pt_BR
com.atlassian.confluence.plugins.confluence-daily-summary-email	1262	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.mywork.mywork-confluence-provider-plugin	1263	2017-07-19 14:48:05.142	tasksEventListener
com.atlassian.confluence.plugins.confluence-onboarding	1264	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1265	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.confluence.extra.officeconnector	1266	2017-07-19 14:48:05.142	worddavadmin
com.atlassian.auiplugin	1267	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-constants
confluence.sections.admin	1268	2017-07-19 14:48:05.142	colourscheme
confluence.converters.core	1269	2017-07-19 14:48:05.142	user-statuslist-converter
com.atlassian.streams	1270	2017-07-19 14:48:05.142	date-de-CH
confluence.web.resources	1271	2017-07-19 14:48:05.142	es6-promise
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1272	2017-07-19 14:48:05.142	requiredPluginsHealthCheck
com.atlassian.confluence.extra.widgetconnector	1273	2017-07-19 14:48:05.142	ooyalaConfigurationManager
com.atlassian.plugins.atlassian-nav-links-plugin	1274	2017-07-19 14:48:05.142	custom-content-links
confluence.macros.advanced	1275	2017-07-19 14:48:05.142	nonViewableContentTypeSearchFilter
confluence.sections.admin.header	1276	2017-07-19 14:48:05.142	administration
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1277	2017-07-19 14:48:05.142	comment-edited-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-mobile	1278	2017-07-19 14:48:05.142	transactionTemplate
confluence.extra.userlister	1279	2017-07-19 14:48:05.142	defaultUserListManager
com.atlassian.confluence.plugins.confluence-templates	1280	2017-07-19 14:48:05.142	saveTransformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1281	2017-07-19 14:48:05.142	xmlPluginInstallHandler
confluence.user.menu	1282	2017-07-19 14:48:05.142	personal-space
com.atlassian.confluence.plugins.share-page	1283	2017-07-19 14:48:05.142	hipchat-resources-2.0.0
com.atlassian.confluence.plugins.soy	1284	2017-07-19 14:48:05.142	soy-format-date-time-function
com.atlassian.analytics.analytics-client	1285	2017-07-19 14:48:05.142	salHttpContextProvider
com.atlassian.confluence.keyboardshortcuts	1286	2017-07-19 14:48:05.142	goto.space
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1287	2017-07-19 14:48:05.142	upm-purchased-addons-templates
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1288	2017-07-19 14:48:05.142	confluenceNotificationsSpiAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-monitoring-console	1289	2017-07-19 14:48:05.142	monitoringControl
com.atlassian.confluence.plugins.confluence-highlight-actions	1290	2017-07-19 14:48:05.142	permissionManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1291	2017-07-19 14:48:05.142	luceneHealthCheck
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1292	2017-07-19 14:48:05.142	characterSetCheck
com.atlassian.crowd.embedded.admin	1293	2017-07-19 14:48:05.142	confluence-users-default-group
com.atlassian.confluence.extra.widgetconnector	1294	2017-07-19 14:48:05.142	googlemaps
com.atlassian.confluence.plugins.confluence-knowledge-base	1295	2017-07-19 14:48:05.142	kb-space-homepage-template
confluence.macros.advanced	1296	2017-07-19 14:48:05.142	galleryMacroMigrator
com.atlassian.streams.streams-thirdparty-plugin	1297	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.analytics.analytics-client	1298	2017-07-19 14:48:05.142	confluenceSenProvider
com.atlassian.confluence.plugins.confluence-email-resources	1299	2017-07-19 14:48:05.142	view-full-history-email-batch-item
com.atlassian.confluence.plugins.confluence-highlight-actions	1300	2017-07-19 14:48:05.142	markModificationValidator
com.atlassian.confluence.plugins.confluence-content-property-storage	1301	2017-07-19 14:48:05.142	pluginAccessor
confluence.user.hover.menu	1302	2017-07-19 14:48:05.142	user-profile
com.atlassian.streams.confluence	1303	2017-07-19 14:48:05.142	canCommentPredicateFactory
com.atlassian.streams.confluence	1304	2017-07-19 14:48:05.142	date-sl-SI
confluence.extra.jira	1305	2017-07-19 14:48:05.142	amd-support
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1306	2017-07-19 14:48:05.142	forgot-password-notification-transformer
confluence.extra.impresence2	1307	2017-07-19 14:48:05.142	wildfire
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1308	2017-07-19 14:48:05.142	linkBuilderContextItem
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1309	2017-07-19 14:48:05.142	systemInformationService
com.atlassian.gadgets.publisher	1310	2017-07-19 14:48:05.142	util
confluence.extra.jira	1311	2017-07-19 14:48:05.142	two-dimensional-chart-show-more-renderer
confluence.sections.space.advanced	1312	2017-07-19 14:48:05.142	stopwatchingblogs
confluence.listeners.core	1313	2017-07-19 14:48:05.142	stylesheetChangeListener
com.atlassian.auiplugin	1314	2017-07-19 14:48:05.142	binders
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1315	2017-07-19 14:48:05.142	emoticonEditorUnmarshaller
com.atlassian.mywork.mywork-confluence-host-plugin	1316	2017-07-19 14:48:05.142	registration-service
com.atlassian.analytics.analytics-client	1317	2017-07-19 14:48:05.142	compatibilityPluginScheduler
com.atlassian.streams	1318	2017-07-19 14:48:05.142	date-ar-AE
com.atlassian.favicon.confluence-custom-favicon-plugin	1319	2017-07-19 14:48:05.142	faviconInterceptor
com.atlassian.auiplugin	1320	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-filter-by-search
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1321	2017-07-19 14:48:05.142	clustering-resource
com.atlassian.streams	1322	2017-07-19 14:48:05.142	date-zh-MO
com.atlassian.confluence.plugins.confluence-email-tracker	1323	2017-07-19 14:48:05.142	emailUrlValidator
com.atlassian.confluence.plugins.confluence-quicknav	1324	2017-07-19 14:48:05.142	quicknav-resources
com.atlassian.streams	1325	2017-07-19 14:48:05.142	date-tr-TR
com.atlassian.querylang.confluence-cql-plugin	1326	2017-07-19 14:48:05.142	container-query-mapper
com.atlassian.confluence.plugins.confluence-create-content-plugin	1327	2017-07-19 14:48:05.142	indexPageManager
com.atlassian.auiplugin	1328	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table
com.atlassian.confluence.plugins.confluence-inline-tasks	1329	2017-07-19 14:48:05.142	tasks-notification
com.atlassian.confluence.plugins.confluence-email-resources	1330	2017-07-19 14:48:05.142	view-content-email-footer-item
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	1331	2017-07-19 14:48:05.142	common-soy
com.atlassian.plugins.atlassian-whitelist-core-plugin	1332	2017-07-19 14:48:05.142	cacheManager
com.atlassian.confluence.plugins.confluence-inline-comments	1333	2017-07-19 14:48:05.142	inlinecomment.sidebar.close
com.atlassian.streams.confluence	1334	2017-07-19 14:48:05.142	date-cy-GB
confluence.web.resources	1335	2017-07-19 14:48:05.142	syntaxhighlighter-all
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1336	2017-07-19 14:48:05.142	license-receipt-servlet
com.atlassian.confluence.plugins.confluence-space-ia	1337	2017-07-19 14:48:05.142	header-spaces-directory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1338	2017-07-19 14:48:05.142	userSettingsPanel
com.atlassian.confluence.plugins.confluence-paste	1339	2017-07-19 14:48:05.142	autoconvert-shortcut-links
com.atlassian.plugins.editor	1340	2017-07-19 14:48:05.142	sections
com.atlassian.auiplugin	1341	2017-07-19 14:48:05.142	aui-tooltips
confluence.listeners.core	1342	2017-07-19 14:48:05.142	databaseLikesRemovalListener
com.atlassian.confluence.plugins.confluence-software-project	1343	2017-07-19 14:48:05.142	sp-space-retrospectives-template
confluence.macros.dashboard	1344	2017-07-19 14:48:05.142	velocity-renderer
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1345	2017-07-19 14:48:05.142	internalAdminCheck
com.atlassian.auiplugin	1346	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-form-notification
com.atlassian.confluence.plugins.share-page	1347	2017-07-19 14:48:05.142	_private_temp-compat-question-resources
com.atlassian.confluence.plugins.confluence-onboarding	1348	2017-07-19 14:48:05.142	onboarding
confluence.web.resources	1349	2017-07-19 14:48:05.142	global-permissions-inline-dialog
com.atlassian.confluence.plugins.confluence-nav-links	1350	2017-07-19 14:48:05.142	navlinksProjectManager
com.atlassian.confluence.extra.flyingpdf	1351	2017-07-19 14:48:05.142	flyingPdfExporterService
com.atlassian.confluence.plugins.confluence-email-resources	1352	2017-07-19 14:48:05.142	template-utils-render-web-panels-1.0.0
com.atlassian.streams.confluence	1353	2017-07-19 14:48:05.142	date-de-CH
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1354	2017-07-19 14:48:05.142	confluence-webpanel-resources
com.atlassian.confluence.plugins.confluence-email-resources	1355	2017-07-19 14:48:05.142	content-templates-move-page-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-fixed-headers	1356	2017-07-19 14:48:05.142	confluence-fixed-headers-editor-preview-resources
confluence.macros.advanced	1357	2017-07-19 14:48:05.142	content-by-user
confluence.macros.dashboard	1358	2017-07-19 14:48:05.142	spaces
com.atlassian.healthcheck.atlassian-healthcheck	1359	2017-07-19 14:48:05.142	healthCheckRest-filter
com.atlassian.streams	1360	2017-07-19 14:48:05.142	streamsGadgetResources
com.atlassian.auiplugin	1361	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-truncating-progressive-data-set
com.atlassian.applinks.applinks-basicauth-plugin	1362	2017-07-19 14:48:05.142	adminUIAuthenticator
confluence.extra.jira	1363	2017-07-19 14:48:05.142	proxy-js
com.atlassian.mywork.mywork-common-plugin	1364	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1365	2017-07-19 14:48:05.142	hostLicenseUpdatedEventListener
confluence.extra.masterdetail	1366	2017-07-19 14:48:05.142	contentRetriever
com.atlassian.auiplugin	1367	2017-07-19 14:48:05.142	jquery-ui-other
com.atlassian.confluence.plugins.confluence-templates	1368	2017-07-19 14:48:05.142	list-global-templates-resources
com.atlassian.confluence.plugins.confluence-files	1369	2017-07-19 14:48:05.142	fileAutowatchEventListener
confluence.user.hover.menu	1370	2017-07-19 14:48:05.142	secondary
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	1371	2017-07-19 14:48:05.142	userManager
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	1372	2017-07-19 14:48:05.142	PluginUsage-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1373	2017-07-19 14:48:05.142	certificateFactory
com.atlassian.confluence.plugins.confluence-like	1374	2017-07-19 14:48:05.142	actions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1375	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.confluence-mentions-plugin	1376	2017-07-19 14:48:05.142	help-dialog-extension
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1377	2017-07-19 14:48:05.142	content-type-icons
com.atlassian.confluence.plugins.confluence-inline-tasks	1378	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.plugins.confluence-create-content-plugin	1379	2017-07-19 14:48:05.142	contentTemplateService
com.atlassian.confluence.extra.officeconnector	1380	2017-07-19 14:48:05.142	slide-viewer-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	1381	2017-07-19 14:48:05.142	documentationBeanFactory
com.atlassian.confluence.plugins.confluence-file-notifications	1382	2017-07-19 14:48:05.142	userAccessor
com.atlassian.streams.confluence	1383	2017-07-19 14:48:05.142	date-de-DE
com.atlassian.auiplugin	1384	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-enforcer
com.atlassian.applinks.applinks-oauth-plugin	1385	2017-07-19 14:48:05.142	consumerService
com.atlassian.confluence.plugins.confluence-like	1386	2017-07-19 14:48:05.142	like-created-mail-batch-notification-processor
com.atlassian.plugin.notifications.notifications-module	1387	2017-07-19 14:48:05.142	userNotificationSettingsServlet
confluence.listeners.core	1388	2017-07-19 14:48:05.142	notification-removal-listener
confluence.listeners.core	1389	2017-07-19 14:48:05.142	createInitialContentListener
com.atlassian.streams	1390	2017-07-19 14:48:05.142	date-se-SE
com.atlassian.confluence.plugins.confluence-knowledge-base	1391	2017-07-19 14:48:05.142	kb-troubleshooting-article
com.atlassian.confluence.plugins.recently-viewed-plugin	1392	2017-07-19 14:48:05.142	recentlyViewedDao
com.atlassian.healthcheck.atlassian-healthcheck	1393	2017-07-19 14:48:05.142	healthCheckCorsDefaults
confluence.search.lucene.boosting	1394	2017-07-19 14:48:05.142	boostPreferredSpace
com.atlassian.confluence.plugins.confluence-email-resources	1395	2017-07-19 14:48:05.142	notification-templates-blogpost-created-2.0.0
confluence.extractors.core	1396	2017-07-19 14:48:05.142	pageContentEntityObjectExtractor
com.atlassian.plugins.base-hipchat-integration-plugin-api	1397	2017-07-19 14:48:05.142	underscore-amd
confluence.extra.jira	1398	2017-07-19 14:48:05.142	jira
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1399	2017-07-19 14:48:05.142	page-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-inline-tasks	1400	2017-07-19 14:48:05.142	task-report-blueprint
com.atlassian.analytics.analytics-client	1401	2017-07-19 14:48:05.142	darkFeatureManager
com.atlassian.streams.confluence	1402	2017-07-19 14:48:05.142	date-fi-FI
com.atlassian.confluence.plugins.confluence-knowledge-base	1403	2017-07-19 14:48:05.142	rest-filter
com.atlassian.oauth.consumer.sal	1404	2017-07-19 14:48:05.142	keyPairFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1405	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.plugins.confluence-dashboard	1406	2017-07-19 14:48:05.142	dashboardContext
com.atlassian.streams	1462	2017-07-19 14:48:05.142	date-de-LI
com.atlassian.confluence.plugins.confluence-inline-comments	1407	2017-07-19 14:48:05.142	notification-transformer-reply
confluence.web.resources	1408	2017-07-19 14:48:05.142	admin-tasklist
com.atlassian.confluence.editor	1409	2017-07-19 14:48:05.142	macro-heading
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1410	2017-07-19 14:48:05.142	userAccessor
com.atlassian.confluence.extra.officeconnector	1411	2017-07-19 14:48:05.142	importworditem1
confluence.sections.admin	1412	2017-07-19 14:48:05.142	systeminfo
com.atlassian.confluence.ext.newcode-macro-plugin	1413	2017-07-19 14:48:05.142	sh-theme-midnight
confluence.renderer.components	1414	2017-07-19 14:48:05.142	html-escape
com.atlassian.support.healthcheck.support-healthcheck-plugin	1415	2017-07-19 14:48:05.142	threadLimitHealthCheck
com.atlassian.confluence.plugins.gadgets	1416	2017-07-19 14:48:05.142	page-gadget-resources
confluence.sections.create	1417	2017-07-19 14:48:05.142	create-user
com.atlassian.applinks.applinks-basicauth-plugin	1418	2017-07-19 14:48:05.142	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-highlight-actions	1419	2017-07-19 14:48:05.142	pageManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1420	2017-07-19 14:48:05.142	analyticsLogger
com.atlassian.oauth.serviceprovider	1421	2017-07-19 14:48:05.142	authenticationListener
confluence.sections.space	1422	2017-07-19 14:48:05.142	space-operations
com.atlassian.plugins.atlassian-nps-plugin	1423	2017-07-19 14:48:05.142	nps-util
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1424	2017-07-19 14:48:05.142	permissionEnforcer
com.atlassian.confluence.plugins.confluence-email-resources	1425	2017-07-19 14:48:05.142	settingsManager
com.atlassian.confluence.plugins.confluence-email-resources	1426	2017-07-19 14:48:05.142	template-utils-user-link-2.0.0
com.atlassian.confluence.plugins.soy	1427	2017-07-19 14:48:05.142	soy-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1428	2017-07-19 14:48:05.142	page-edited-notification
com.atlassian.confluence.plugins.confluence-create-content-plugin	1429	2017-07-19 14:48:05.142	actions
com.atlassian.confluence.plugins.confluence-sal-plugin	1430	2017-07-19 14:48:05.142	authenticationController
com.atlassian.confluence.plugins.confluence-labels	1431	2017-07-19 14:48:05.142	view-labels-all
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1432	2017-07-19 14:48:05.142	hipChatEmoticonService
com.atlassian.auiplugin	1433	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-jquery-plugins-jquery-aop
confluence.extra.webdav	1434	2017-07-19 14:48:05.142	confluenceResourceFactory
com.atlassian.applinks.applinks-cors-plugin	1435	2017-07-19 14:48:05.142	userManager
com.atlassian.confluence.plugins.analytics-jobs-plugin	1436	2017-07-19 14:48:05.142	periodicEventPublisherJob
com.atlassian.confluence.plugins.confluence-highlight-actions	1437	2017-07-19 14:48:05.142	textCollector
com.atlassian.streams	1438	2017-07-19 14:48:05.142	date-en-029
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1439	2017-07-19 14:48:05.142	whitelistBeanService
com.atlassian.confluence.plugins.confluence-inline-comments	1440	2017-07-19 14:48:05.142	navigation-view
com.atlassian.confluence.plugins.watch-button	1441	2017-07-19 14:48:05.142	rest-filter
confluence.aui.staging	1442	2017-07-19 14:48:05.142	persistable
confluence.extra.attachments	1443	2017-07-19 14:48:05.142	attachments-css
com.atlassian.streams	1444	2017-07-19 14:48:05.142	date-quz-PE
com.atlassian.confluence.restplugin	1445	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.auiplugin	1446	2017-07-19 14:48:05.142	message
com.atlassian.confluence.editor	1447	2017-07-19 14:48:05.142	error-placeholder
confluence.listeners.core	1448	2017-07-19 14:48:05.142	updatePersonalSpaceListener
com.atlassian.confluence.plugins.confluence-like	1449	2017-07-19 14:48:05.142	excerpter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1450	2017-07-19 14:48:05.142	obrPluginInstallHandler
com.atlassian.applinks.applinks-oauth-plugin	1451	2017-07-19 14:48:05.142	auto-configuration-servlet
com.atlassian.confluence.plugins.confluence-dashboard	1452	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.gadgets.opensocial	1453	2017-07-19 14:48:05.142	gadget-spec-not-found-error-servlet
com.atlassian.confluence.plugins.confluence-software-blueprints	1454	2017-07-19 14:48:05.142	retrospectives-blueprint
confluence.extra.confluencerpc	1455	2017-07-19 14:48:05.142	labelsSoapService
com.atlassian.applinks.applinks-trustedapps-plugin	1456	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.confluence.plugins.confluence-create-content-plugin	1457	2017-07-19 14:48:05.142	contentTemplateRefManager
com.atlassian.auiplugin	1458	2017-07-19 14:48:05.142	internal-object-assign-4.0.1-index
com.atlassian.confluence.plugins.confluence-schedule-admin	1459	2017-07-19 14:48:05.142	scheduledjobs
com.atlassian.confluence.plugins.recently-viewed-plugin	1460	2017-07-19 14:48:05.142	recently-viewed-rest-filter
com.atlassian.streams.confluence	1461	2017-07-19 14:48:05.142	date-tn-ZA
com.atlassian.confluence.plugins.templates-framework	1463	2017-07-19 14:48:05.142	configure-templates
com.atlassian.plugins.atlassian-nav-links-plugin	1464	2017-07-19 14:48:05.142	application-header-administration-cog-resource
com.atlassian.confluence.plugins.gadgets	1465	2017-07-19 14:48:05.142	whitelistService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1466	2017-07-19 14:48:05.142	page-create-notification
com.atlassian.mywork.mywork-common-plugin	1467	2017-07-19 14:48:05.142	myworkserviceselectorlink
confluence.extra.webdav	1468	2017-07-19 14:48:05.142	clientWriteDenyFilter
com.atlassian.plugins.atlassian-help-tips	1469	2017-07-19 14:48:05.142	helpTipsDao
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1470	2017-07-19 14:48:05.142	selfUpdatePluginAccessor
confluence.web.resources	1471	2017-07-19 14:48:05.142	almond
com.atlassian.confluence.plugins.gadgets	1472	2017-07-19 14:48:05.142	confluence-news-gadget
com.atlassian.support.stp	1473	2017-07-19 14:48:05.142	stp-license-status-resources
com.atlassian.querylang.confluence-cql-plugin	1474	2017-07-19 14:48:05.142	space-field
confluence.renderer.components	1475	2017-07-19 14:48:05.142	strong
com.atlassian.streams	1476	2017-07-19 14:48:05.142	localActivityProviders
com.atlassian.confluence.plugins.confluence-mobile	1477	2017-07-19 14:48:05.142	mobile-can-use-filter
com.atlassian.streams	1478	2017-07-19 14:48:05.142	date-de-LU
com.atlassian.confluence.plugins.view-storage-format	1479	2017-07-19 14:48:05.142	view-comment-storage
com.atlassian.plugin.notifications.notifications-module	1480	2017-07-19 14:48:05.142	notification-medium
confluence.macros.profile	1481	2017-07-19 14:48:05.142	profile
com.atlassian.streams.confluence	1482	2017-07-19 14:48:05.142	xmlOutputFactory
confluence.web.resources	1483	2017-07-19 14:48:05.142	admin
confluence.sections.help	1484	2017-07-19 14:48:05.142	confluence-about
com.atlassian.applinks.applinks-plugin	1485	2017-07-19 14:48:05.142	threadLocalDelegateExecutorFactory
confluence.extra.jira	1486	2017-07-19 14:48:05.142	dialogsJs
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1487	2017-07-19 14:48:05.142	dacidecision-template
com.atlassian.mywork.mywork-common-plugin	1488	2017-07-19 14:48:05.142	unreliable-worker
com.atlassian.streams	1489	2017-07-19 14:48:05.142	date-quz-BO
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1490	2017-07-19 14:48:05.142	outboundWhitelist
com.atlassian.streams	1491	2017-07-19 14:48:05.142	date-se-NO
com.atlassian.integration.jira.jira-integration-plugin	1492	2017-07-19 14:48:05.142	entityLinksService
com.atlassian.confluence.keyboardshortcuts	1493	2017-07-19 14:48:05.142	tinymce.table
confluence.macros.multimedia	1494	2017-07-19 14:48:05.142	flash
com.atlassian.confluence.plugins.confluence-baseurl-plugin	1495	2017-07-19 14:48:05.142	baseurl-resource
confluence.web.resources	1496	2017-07-19 14:48:05.142	people-directory
com.atlassian.confluence.plugins.confluence-space-ia	1497	2017-07-19 14:48:05.142	space-sidebar-xmlrpc
com.atlassian.confluence.editor	1498	2017-07-19 14:48:05.142	editor-resources
com.atlassian.querylang.confluence-cql-plugin	1499	2017-07-19 14:48:05.142	content-id-query-field-mapper
com.atlassian.confluence.ext.newcode-macro-plugin	1500	2017-07-19 14:48:05.142	syntaxhighlighter-init
com.atlassian.gadgets.opensocial	1501	2017-07-19 14:48:05.142	security-token-servlet
confluence.sections.space.admin	1502	2017-07-19 14:48:05.142	importpages
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1503	2017-07-19 14:48:05.142	createPageListener
confluence.search.mappers.lucene	1504	2017-07-19 14:48:05.142	multiTextField
com.atlassian.applinks.applinks-plugin	1505	2017-07-19 14:48:05.142	entityRetriever
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1506	2017-07-19 14:48:05.142	batching-notification-template-body
com.atlassian.confluence.plugins.confluence-email-resources	1507	2017-07-19 14:48:05.142	contentService
com.atlassian.applinks.applinks-trustedapps-plugin	1508	2017-07-19 14:48:05.142	trusted-auto-configuration-servlet
com.atlassian.confluence.plugins.confluence-inline-comments	1509	2017-07-19 14:48:05.142	highlight-view
com.atlassian.activeobjects.confluence.spi	1510	2017-07-19 14:48:05.142	aoSynchronizationManager
com.atlassian.auiplugin	1511	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-focus-manager
com.atlassian.streams	1512	2017-07-19 14:48:05.142	date-zh-SG
com.atlassian.confluence.plugins.confluence-jira-metadata	1513	2017-07-19 14:48:05.142	confluence-jira-metadata-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1514	2017-07-19 14:48:05.142	blogpost-trashed-notification-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1515	2017-07-19 14:48:05.142	jarPluginInstallHandler
com.atlassian.plugins.atlassian-nav-links-plugin	1516	2017-07-19 14:48:05.142	userSettingsService
confluence.extra.jira	1517	2017-07-19 14:48:05.142	servers-filter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1518	2017-07-19 14:48:05.142	fileCleanup
confluence.search.mappers.lucene	1519	2017-07-19 14:48:05.142	title
com.atlassian.confluence.extra.flyingpdf	1520	2017-07-19 14:48:05.142	exportactions
com.atlassian.analytics.analytics-client	1521	2017-07-19 14:48:05.142	js-events
com.atlassian.querylang.confluence-cql-plugin	1522	2017-07-19 14:48:05.142	filesize-query-mapper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1523	2017-07-19 14:48:05.142	hostContextAccessor
com.atlassian.confluence.extra.officeconnector	1524	2017-07-19 14:48:05.142	viewpdf-legacy
com.atlassian.confluence.plugins.confluence-quicknav	1525	2017-07-19 14:48:05.142	quick-nav-rest-filter
confluence.extra.webdav	1526	2017-07-19 14:48:05.142	pageRestoreListener
com.atlassian.streams.confluence	1527	2017-07-19 14:48:05.142	date-kk-KZ
com.atlassian.auiplugin	1528	2017-07-19 14:48:05.142	aui-layer-manager
com.atlassian.confluence.plugins.confluence-knowledge-base	1529	2017-07-19 14:48:05.142	sidebar-icons
com.atlassian.confluence.plugins.confluence-file-notifications	1530	2017-07-19 14:48:05.142	file-content-remove-payload-transformer
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1531	2017-07-19 14:48:05.142	roadmap-bar-dialog-resources
confluence.web.resources	1532	2017-07-19 14:48:05.142	about
com.atlassian.confluence.plugins.confluence-inline-tasks	1533	2017-07-19 14:48:05.142	inlineTasksAnalyticsWhitelist
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1534	2017-07-19 14:48:05.142	licenseTokenStore
confluence.listeners.core	1535	2017-07-19 14:48:05.142	trackbackListener
com.atlassian.confluence.plugins.confluence-email-resources	1536	2017-07-19 14:48:05.142	template-utils-bullet-point-1.0.0
confluence.web.resources	1537	2017-07-19 14:48:05.142	content-styles
com.atlassian.confluence.plugins.whatsnew	1538	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.streams	1539	2017-07-19 14:48:05.142	date-zh-TW
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1540	2017-07-19 14:48:05.142	experiencecanvas-blueprint-item
com.atlassian.confluence.extra.widgetconnector	1541	2017-07-19 14:48:05.142	googlegadgets
com.atlassian.streams	1542	2017-07-19 14:48:05.142	postReplyHandler
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1543	2017-07-19 14:48:05.142	upm-common-licensing
confluence.extractors.core	1544	2017-07-19 14:48:05.142	homePageExtractor
com.atlassian.streams	1545	2017-07-19 14:48:05.142	date-quz-EC
com.atlassian.integration.jira.jira-integration-plugin	1546	2017-07-19 14:48:05.142	jira-error-page
confluence.extractors.core	1547	2017-07-19 14:48:05.142	versionNumberExtractor
com.atlassian.plugins.atlassian-nav-links-plugin	1548	2017-07-19 14:48:05.142	custom-apps
com.atlassian.applinks.applinks-plugin	1549	2017-07-19 14:48:05.142	feature-oauth-picker
com.atlassian.streams	1550	2017-07-19 14:48:05.142	date-ar-DZ
com.atlassian.confluence.plugins.confluence-page-restrictions-dialog	1551	2017-07-19 14:48:05.142	dialog-resources
com.atlassian.plugins.atlassian-nps-plugin	1552	2017-07-19 14:48:05.142	nps-rest-filter
com.atlassian.integration.jira.jira-integration-plugin	1553	2017-07-19 14:48:05.142	applicationLinkService
com.atlassian.support.healthcheck.support-healthcheck-plugin	1554	2017-07-19 14:48:05.142	networkMountHealthCheck
com.atlassian.confluence.plugins.confluence-mobile	1555	2017-07-19 14:48:05.142	app-frame
com.atlassian.confluence.plugins.confluence-create-content-plugin	1556	2017-07-19 14:48:05.142	restrictedUserSpaceCreationStep
confluence.macros.advanced	1557	2017-07-19 14:48:05.142	blog
com.atlassian.streams	1558	2017-07-19 14:48:05.142	date-ar-EG
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1559	2017-07-19 14:48:05.142	impl
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1560	2017-07-19 14:48:05.142	reviewsNotificationsService
com.atlassian.confluence.keyboardshortcuts	1561	2017-07-19 14:48:05.142	tinymce.macro
com.atlassian.streams.confluence	1562	2017-07-19 14:48:05.142	settingsManager
com.atlassian.confluence.plugins.confluence-email-resources	1563	2017-07-19 14:48:05.142	confluenceNotificationPreferenceManager
com.atlassian.streams	1564	2017-07-19 14:48:05.142	date-id-ID
com.atlassian.auiplugin	1565	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-event
com.atlassian.confluence.plugins.confluence-inline-comments	1566	2017-07-19 14:48:05.142	bootstrap
com.atlassian.confluence.plugins.confluence-inline-comments	1567	2017-07-19 14:48:05.142	resolved-comment-view
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1568	2017-07-19 14:48:05.142	upm-common-licensing-templates
com.atlassian.confluence.plugins.confluence-create-content-plugin	1569	2017-07-19 14:48:05.142	watchSpaceCreationStep
com.atlassian.mywork.mywork-confluence-host-plugin	1570	2017-07-19 14:48:05.142	applinkid-service
com.atlassian.confluence.plugins.confluence-edge-index	1571	2017-07-19 14:48:05.142	pluginScheduler
com.atlassian.confluence.plugins.confluence-business-blueprints	1572	2017-07-19 14:48:05.142	sharelinks-urlmacro
com.atlassian.gadgets.publisher	1573	2017-07-19 14:48:05.142	ajs-gadgets-lite
confluence.extractors.core	1574	2017-07-19 14:48:05.142	pluginContentEntityObjectExtractor
com.atlassian.plugins.atlassian-help-tips	1575	2017-07-19 14:48:05.142	common
com.atlassian.confluence.plugins.search.confluence-search	1576	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.confluence.plugins.confluence-email-resources	1577	2017-07-19 14:48:05.142	content-url-function
com.atlassian.applinks.applinks-cors-plugin	1578	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.plugin.jslibs	1579	2017-07-19 14:48:05.142	skate-0.12.6
com.atlassian.plugins.atlassian-nav-links-plugin	1580	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.confluence.plugins.search.confluence-search	1581	2017-07-19 14:48:05.142	actions
com.atlassian.plugin.jslibs	1582	2017-07-19 14:48:05.142	skate-0.12.5
com.atlassian.applinks.applinks-basicauth-plugin	1583	2017-07-19 14:48:05.142	documentationLinker
confluence.sections.space.tools	1584	2017-07-19 14:48:05.142	contenttools
com.atlassian.mywork.mywork-confluence-provider-plugin	1585	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.confluence.contributors	1586	2017-07-19 14:48:05.142	soy-templates
com.atlassian.confluence.plugins.confluence-jira-content	1587	2017-07-19 14:48:05.142	create-jira-content-services-filter
confluence.extractors.core	1588	2017-07-19 14:48:05.142	attachmentOwnerContentTypeChangeExtractor
com.atlassian.confluence.plugins.recently-viewed-plugin	1589	2017-07-19 14:48:05.142	userAccessor
confluence.search.mappers.lucene	1590	2017-07-19 14:48:05.142	lastModifierUserSearchFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	1591	2017-07-19 14:48:05.142	inline-tasks-view
com.atlassian.applinks.applinks-oauth-plugin	1592	2017-07-19 14:48:05.142	serviceProviderConsumerStore
com.atlassian.confluence.plugins.confluence-email-resources	1593	2017-07-19 14:48:05.142	stop-watching-space-email-footer-item
confluence.macros.multimedia	1594	2017-07-19 14:48:05.142	compatibility-multimedia
com.atlassian.streams.confluence	1595	2017-07-19 14:48:05.142	date-de-AT
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1596	2017-07-19 14:48:05.142	whitelist-rest
com.atlassian.confluence.plugins.gadgets	1597	2017-07-19 14:48:05.142	publishedGadgetSpecStore
confluence.sections.admin	1598	2017-07-19 14:48:05.142	configuration
com.atlassian.confluence.contributors	1599	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.confluence.plugins.search.confluence-search	1600	2017-07-19 14:48:05.142	searcherv3
com.atlassian.confluence.extra.widgetconnector	1601	2017-07-19 14:48:05.142	ooyala-web-resources
com.atlassian.applinks.applinks-plugin	1602	2017-07-19 14:48:05.142	helpurl-soy-function
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1603	2017-07-19 14:48:05.142	serverManager
com.atlassian.confluence.plugins.search.confluence-search	1604	2017-07-19 14:48:05.142	searcherv2
com.atlassian.confluence.plugins.confluence-email-resources	1605	2017-07-19 14:48:05.142	notification-templates-comment-edit-2.0.0
com.atlassian.confluence.plugins.gadgets	1606	2017-07-19 14:48:05.142	userAccessor
confluence.sections.create	1607	2017-07-19 14:48:05.142	create-comment
confluence.extra.impresence2	1608	2017-07-19 14:48:05.142	skype-xhtml
com.atlassian.confluence.plugins.confluence-view-file-macro	1609	2017-07-19 14:48:05.142	view-file-macro-editor-content-resources
com.atlassian.confluence.plugins.confluence-labels	1610	2017-07-19 14:48:05.142	view-labels-popular
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1611	2017-07-19 14:48:05.142	notification-templates-healthcheck
confluence.web.resources	1612	2017-07-19 14:48:05.142	user-macro-admin
tac.confluence.languages.is_IS	1613	2017-07-19 14:48:05.142	is_IS
com.atlassian.confluence.plugins.confluence-edge-index	1614	2017-07-19 14:48:05.142	edgeIndexRecoverer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1615	2017-07-19 14:48:05.142	confluenceQueueTaskManager
com.atlassian.confluence.plugins.confluence-inline-tasks	1616	2017-07-19 14:48:05.142	sortable-table-server-side
com.atlassian.applinks.applinks-basicauth-plugin	1617	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1618	2017-07-19 14:48:05.142	xmlOutputFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1619	2017-07-19 14:48:05.142	pluginLogService
com.atlassian.auiplugin	1620	2017-07-19 14:48:05.142	ajs-gadgets-base
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1621	2017-07-19 14:48:05.142	pluginSystemEventManager
com.atlassian.auiplugin	1622	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-populate-parameters
com.atlassian.confluence.plugins.confluence-email-resources	1623	2017-07-19 14:48:05.142	chrome-template-header-pattern-1.0.0
confluence.macros.advanced	1624	2017-07-19 14:48:05.142	recently-updated-mobile-resources
com.atlassian.confluence.plugins.confluence-edge-index	1625	2017-07-19 14:48:05.142	streamItemFactory
com.atlassian.streams	1626	2017-07-19 14:48:05.142	date-ar-BH
confluence.extra.information	1627	2017-07-19 14:48:05.142	xhtml-info
confluence.sections.space	1683	2017-07-19 14:48:05.142	space-administration
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1628	2017-07-19 14:48:05.142	featureManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1629	2017-07-19 14:48:05.142	follower-added-notification-template
com.atlassian.auiplugin	1630	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-spin-spin
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	1631	2017-07-19 14:48:05.142	featureDiscoveryRest-filter
confluence.listeners.core	1632	2017-07-19 14:48:05.142	permissions-logging-listener
com.atlassian.confluence.plugins.pagetree	1633	2017-07-19 14:48:05.142	PageHierarchyExtractor
com.atlassian.analytics.analytics-client	1634	2017-07-19 14:48:05.142	whitelistCollector
com.atlassian.streams	1635	2017-07-19 14:48:05.142	date-ar-QA
com.atlassian.gadgets.opensocial	1636	2017-07-19 14:48:05.142	opensocial-rpc-servlet
com.atlassian.auiplugin	1637	2017-07-19 14:48:05.142	aui-checkbox-multiselect
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1638	2017-07-19 14:48:05.142	renderer
com.atlassian.confluence.plugins.confluence-sal-plugin	1639	2017-07-19 14:48:05.142	trustedRequestFactory
com.atlassian.confluence.plugins.confluence-browser-metrics	1640	2017-07-19 14:48:05.142	bigpipe-reporter
com.atlassian.confluence.extra.flyingpdf	1641	2017-07-19 14:48:05.142	pdfResourceManager
com.atlassian.analytics.analytics-client	1642	2017-07-19 14:48:05.142	confluenceAnalyticsPropertyService
com.atlassian.confluence.plugins.gadgets	1643	2017-07-19 14:48:05.142	salUserManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1644	2017-07-19 14:48:05.142	discovery-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1645	2017-07-19 14:48:05.142	xsrfTokenValidator
confluence.web.resources	1646	2017-07-19 14:48:05.142	select-all-row
com.atlassian.confluence.plugins.gadgets	1647	2017-07-19 14:48:05.142	gadgetSpecIdGenerator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1648	2017-07-19 14:48:05.142	upm-osgi
com.atlassian.confluence.plugins.confluence-inline-tasks	1649	2017-07-19 14:48:05.142	notification-styles
com.atlassian.applinks.applinks-trustedapps-plugin	1650	2017-07-19 14:48:05.142	trustedContextFilter
com.atlassian.confluence.plugins.confluence-previews	1651	2017-07-19 14:48:05.142	minimode-plugin
com.atlassian.applinks.applinks-plugin	1652	2017-07-19 14:48:05.142	callbackParameter
com.atlassian.confluence.plugins.gadgets	1653	2017-07-19 14:48:05.142	gadget-search-resources
confluence.extra.masterdetail	1654	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.contributors	1655	2017-07-19 14:48:05.142	contributors-xhtml
com.atlassian.confluence.ext.newcode-macro-plugin	1656	2017-07-19 14:48:05.142	sh-theme-emacs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1657	2017-07-19 14:48:05.142	auditLogPipQueue
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1658	2017-07-19 14:48:05.142	localeManager
com.atlassian.auiplugin	1659	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-tooltip
confluence.web.resources	1660	2017-07-19 14:48:05.142	content-body-with-styles
confluence.extra.masterdetail	1661	2017-07-19 14:48:05.142	cqlSearchService
confluence.extra.information	1662	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.auiplugin	1663	2017-07-19 14:48:05.142	aui-experimental-labels
confluence.converters.core	1664	2017-07-19 14:48:05.142	user-converter
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1665	2017-07-19 14:48:05.142	bandanaManager
com.atlassian.mywork.mywork-confluence-provider-plugin	1666	2017-07-19 14:48:05.142	inlineTaskService
com.atlassian.streams.confluence	1667	2017-07-19 14:48:05.142	date-fa-IR
confluence.macros.advanced	1668	2017-07-19 14:48:05.142	xhtml-listlabels
com.atlassian.confluence.plugins.confluence-software-blueprints	1669	2017-07-19 14:48:05.142	jirareports-services-filter
com.atlassian.confluence.plugins.share-page	1670	2017-07-19 14:48:05.142	share-user-recipients-provider
com.atlassian.auiplugin	1671	2017-07-19 14:48:05.142	jquery-ui-interactions
com.atlassian.confluence.plugins.confluence-page-layout	1672	2017-07-19 14:48:05.142	pagelayout-content-styles
com.atlassian.confluence.plugins.confluence-request-access-plugin	1673	2017-07-19 14:48:05.142	rest-filter
confluence.macros.core	1674	2017-07-19 14:48:05.142	loremipsum
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1675	2017-07-19 14:48:05.142	comment-edited-notification-transformer
com.atlassian.applinks.applinks-oauth-plugin	1676	2017-07-19 14:48:05.142	add-consumer-manually
com.atlassian.applinks.applinks-plugin	1677	2017-07-19 14:48:05.142	confluence-list-application-links-legacy-url-filter
confluence.sections.space.export.view	1678	2017-07-19 14:48:05.142	spaceexport
com.atlassian.auiplugin	1679	2017-07-19 14:48:05.142	aui-experimental-autocomplete-helpers
com.atlassian.confluence.plugins.confluence-spaces	1680	2017-07-19 14:48:05.142	defaultspaceperms
com.atlassian.support.stp	1681	2017-07-19 14:48:05.142	stpWhitelist
com.atlassian.streams.confluence	1682	2017-07-19 14:48:05.142	attachmentItemFactory
com.atlassian.confluence.plugins.drag-and-drop	1684	2017-07-19 14:48:05.142	drag-and-drop-tip
com.atlassian.plugins.atlassian-nav-links-plugin	1685	2017-07-19 14:48:05.142	project-manager
com.atlassian.confluence.plugins.confluence-mentions-plugin	1686	2017-07-19 14:48:05.142	mention-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-onboarding	1687	2017-07-19 14:48:05.142	onboardingNumberOfUsersCheckTrigger
com.atlassian.confluence.plugins.confluence-email-resources	1688	2017-07-19 14:48:05.142	stop-watching-page-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-email-tracker	1689	2017-07-19 14:48:05.142	userAccessor
com.atlassian.confluence.plugins.share-page	1690	2017-07-19 14:48:05.142	sharePageWhitelist
com.atlassian.confluence.plugins.confluence-spaces	1691	2017-07-19 14:48:05.142	soy-templates
confluence.extra.jira	1692	2017-07-19 14:48:05.142	mobile-browser-resources
confluence.renderer.components	1693	2017-07-19 14:48:05.142	template-parameters
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1694	2017-07-19 14:48:05.142	selfUpdateController
com.atlassian.confluence.plugins.confluence-software-blueprints	1695	2017-07-19 14:48:05.142	jirareports-statusreport
com.atlassian.applinks.applinks-trustedapps-plugin	1696	2017-07-19 14:48:05.142	trustedAppsOrphanedTrustDetector
com.atlassian.confluence.editor	1697	2017-07-19 14:48:05.142	search-ms-edge
com.atlassian.auiplugin	1698	2017-07-19 14:48:05.142	ajs-backbone
com.atlassian.auiplugin	1699	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-is-clipped
confluence.macros.advanced	1700	2017-07-19 14:48:05.142	search
com.atlassian.streams.confluence	1701	2017-07-19 14:48:05.142	date-he-IL
com.atlassian.confluence.extra.widgetconnector	1702	2017-07-19 14:48:05.142	googlevideo
com.atlassian.streams	1703	2017-07-19 14:48:05.142	date-ar-OM
com.atlassian.applinks.applinks-oauth-plugin	1704	2017-07-19 14:48:05.142	callbackParameter
com.atlassian.querylang.confluence-cql-plugin	1705	2017-07-19 14:48:05.142	parent-field
com.atlassian.auiplugin	1706	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-select-option
com.atlassian.gadgets.directory	1707	2017-07-19 14:48:05.142	directory-config
com.atlassian.auiplugin	1708	2017-07-19 14:48:05.142	aui-experimental-devtools-iconfont
com.atlassian.confluence.plugins.confluence-onboarding	1709	2017-07-19 14:48:05.142	notification-template-less-users
com.atlassian.confluence.plugins.confluence-highlight-actions	1710	2017-07-19 14:48:05.142	selectionStorageFormatModifier
com.atlassian.confluence.plugins.confluence-easyuser-admin	1711	2017-07-19 14:48:05.142	admin-invite-users-panel
com.atlassian.support.healthcheck.support-healthcheck-plugin	1712	2017-07-19 14:48:05.142	userSettingsService
com.atlassian.auiplugin	1713	2017-07-19 14:48:05.142	aui-experimental-page-layout-legacy1
com.atlassian.plugin.jslibs	1714	2017-07-19 14:48:05.142	d3-3.4.13
com.atlassian.confluence.plugins.gadgets	1715	2017-07-19 14:48:05.142	gadget-old
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1716	2017-07-19 14:48:05.142	hipchat-room-context
com.atlassian.confluence.plugins.confluence-email-resources	1717	2017-07-19 14:48:05.142	add-comment-to-content-email-adg-footer-item
com.atlassian.auiplugin	1718	2017-07-19 14:48:05.142	aui-experimental-module-and-header-legacy1
com.atlassian.plugin.jslibs	1719	2017-07-19 14:48:05.142	moment-2.10.3
com.atlassian.plugin.jslibs	1720	2017-07-19 14:48:05.142	brace-2014.09.03-factory
com.atlassian.confluence.plugins.confluence-file-notifications	1721	2017-07-19 14:48:05.142	file-content-update-email-notification-template-body
com.atlassian.plugins.atlassian-project-creation-plugin	1722	2017-07-19 14:48:05.142	project-linking-rest-filter
com.atlassian.plugins.base-hipchat-integration-plugin-api	1723	2017-07-19 14:48:05.142	hipchat-notification-context
com.atlassian.confluence.editor	1724	2017-07-19 14:48:05.142	unknown-attachment-placeholder
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1725	2017-07-19 14:48:05.142	dacidecision-blueprint
com.atlassian.gadgets.directory	1726	2017-07-19 14:48:05.142	directory-config-filter
com.atlassian.confluence.plugins.dialog-wizard	1727	2017-07-19 14:48:05.142	dialog-wizard
com.atlassian.confluence.editor	1728	2017-07-19 14:48:05.142	popup-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1729	2017-07-19 14:48:05.142	asynchronousTaskStatusStore
confluence.web.components	1730	2017-07-19 14:48:05.142	property-panel-css
com.atlassian.oauth.serviceprovider	1731	2017-07-19 14:48:05.142	oauthAuthorizeServlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1732	2017-07-19 14:48:05.142	userManager
com.atlassian.gadgets.opensocial	1733	2017-07-19 14:48:05.142	rpc-relay-servlet
com.atlassian.streams	1734	2017-07-19 14:48:05.142	date-ar-MA
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1735	2017-07-19 14:48:05.142	compatibilityUserManager
crowd.system.passwordencoders	1736	2017-07-19 14:48:05.142	plaintext
com.atlassian.confluence.plugins.confluence-email-resources	1737	2017-07-19 14:48:05.142	stop-watching-all-blogs-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-inline-tasks	1738	2017-07-19 14:48:05.142	show-task-feature-discovery-flag-blogpost
com.atlassian.confluence.plugins.confluence-ui-components	1739	2017-07-19 14:48:05.142	space-page-picker
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1740	2017-07-19 14:48:05.142	confluence-upm-marketplace-menu
com.atlassian.streams	1741	2017-07-19 14:48:05.142	date-ar-LY
com.atlassian.confluence.plugins.confluence-create-content-plugin	1742	2017-07-19 14:48:05.142	spaceEditedTemplatesUpgradeTask
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1743	2017-07-19 14:48:05.142	velocity-1.6-web-panel-renderer-tracker
com.atlassian.confluence.keyboardshortcuts	1744	2017-07-19 14:48:05.142	confluenceKeyboardShortcutsRest-filter
com.atlassian.mywork.mywork-confluence-host-plugin	1745	2017-07-19 14:48:05.142	my-work-rest-filter
com.atlassian.confluence.extra.widgetconnector	1746	2017-07-19 14:48:05.142	web-widget
com.atlassian.confluence.plugins.confluence-page-banner	1747	2017-07-19 14:48:05.142	content-metadata-page-restrictions-hidden
com.atlassian.confluence.plugins.confluence-mobile	1748	2017-07-19 14:48:05.142	mobile-switch-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1749	2017-07-19 14:48:05.142	differ
com.atlassian.streams	1750	2017-07-19 14:48:05.142	entityLinkService
confluence.extractors.core	1751	2017-07-19 14:48:05.142	labelExtractor
confluence.web.resources	1752	2017-07-19 14:48:05.142	view-user-profile
com.atlassian.confluence.plugins.confluence-mobile	1753	2017-07-19 14:48:05.142	dateEntityFactory
com.atlassian.confluence.plugins.confluence-ui-components	1754	2017-07-19 14:48:05.142	common
confluence.extra.confluencerpc	1755	2017-07-19 14:48:05.142	adminSoapService
confluence.extra.layout	1756	2017-07-19 14:48:05.142	column
com.atlassian.streams	1757	2017-07-19 14:48:05.142	date-ar-LB
com.atlassian.confluence.plugins.drag-and-drop	1758	2017-07-19 14:48:05.142	capabilityService
confluence.content.action.menu	1759	2017-07-19 14:48:05.142	primary
com.atlassian.plugins.atlassian-nav-links-plugin	1760	2017-07-19 14:48:05.142	local-navigation-link-service
confluence.web.resources	1761	2017-07-19 14:48:05.142	common-header-resources
com.atlassian.streams	1762	2017-07-19 14:48:05.142	date-ar-KW
confluence.extra.impresence2	1763	2017-07-19 14:48:05.142	sametime-xhtml
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1764	2017-07-19 14:48:05.142	upmInformation
com.atlassian.applinks.applinks-oauth-plugin	1765	2017-07-19 14:48:05.142	oauth-dance
confluence.extra.jira	1766	2017-07-19 14:48:05.142	singleJiraIssuesMapThreadLocalFilter
confluence.web.components	1767	2017-07-19 14:48:05.142	dom-filter-field
com.atlassian.confluence.extra.flyingpdf	1768	2017-07-19 14:48:05.142	configpdflayout
com.atlassian.confluence.editor	1769	2017-07-19 14:48:05.142	unknown-macro-placeholder
confluence.sections.space.admin	1770	2017-07-19 14:48:05.142	editspacelabels
com.atlassian.plugins.atlassian-nav-links-plugin	1771	2017-07-19 14:48:05.142	transactionTempate
com.atlassian.confluence.extra.officeconnector	1772	2017-07-19 14:48:05.142	editinoffice
com.atlassian.analytics.analytics-client	1773	2017-07-19 14:48:05.142	universal-analytics-filter
com.atlassian.confluence.plugins.gadgets	1774	2017-07-19 14:48:05.142	gadgetLabelManager
confluence.aui.staging	1775	2017-07-19 14:48:05.142	storage-manager
com.atlassian.auiplugin	1776	2017-07-19 14:48:05.142	aui-inline-dialog2
com.atlassian.streams	1777	2017-07-19 14:48:05.142	date-hu-HU
com.atlassian.applinks.applinks-cors-plugin	1778	2017-07-19 14:48:05.142	typeAccessor
com.atlassian.mywork.mywork-common-plugin	1779	2017-07-19 14:48:05.142	userManager
com.atlassian.confluence.plugins.confluence-space-ia	1780	2017-07-19 14:48:05.142	collector-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1781	2017-07-19 14:48:05.142	bundledUpdateCheckJob
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1782	2017-07-19 14:48:05.142	pluginSettingsFactory
confluence.web.resources	1783	2017-07-19 14:48:05.142	colors
com.atlassian.confluence.plugins.confluence-browser-metrics	1784	2017-07-19 14:48:05.142	space
com.atlassian.auiplugin	1785	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-trigger
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1786	2017-07-19 14:48:05.142	confluenceUserAccessor
com.atlassian.applinks.applinks-plugin	1787	2017-07-19 14:48:05.142	applinks-authentication-provider
com.atlassian.confluence.plugins.confluence-business-blueprints	1788	2017-07-19 14:48:05.142	sharelinks-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1789	2017-07-19 14:48:05.142	pluginInstallHandlerRegistry
com.atlassian.confluence.restplugin	1790	2017-07-19 14:48:05.142	confluence-rest
confluence.renderer.components	1791	2017-07-19 14:48:05.142	emoticon
com.atlassian.confluence.plugins.confluence-license-rest	1792	2017-07-19 14:48:05.142	license-resource
com.atlassian.confluence.keyboardshortcuts	1793	2017-07-19 14:48:05.142	confluenceKeyboardShortcutsRest
com.atlassian.plugins.base-hipchat-integration-plugin	1794	2017-07-19 14:48:05.142	hipchat-external-page
com.atlassian.auiplugin	1795	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-key-code
com.atlassian.gadgets.oauth.serviceprovider	1796	2017-07-19 14:48:05.142	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-create-content-plugin	1797	2017-07-19 14:48:05.142	httpContext
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1798	2017-07-19 14:48:05.142	userNotificationDefaultsService
com.atlassian.confluence.extra.widgetconnector	1799	2017-07-19 14:48:05.142	tudou
com.atlassian.confluence.plugins.confluence-monitoring-console	1800	2017-07-19 14:48:05.142	stats-resource
com.atlassian.applinks.applinks-oauth-plugin	1801	2017-07-19 14:48:05.142	consumerTokenStoreService
com.atlassian.streams	1802	2017-07-19 14:48:05.142	date-ar-IQ
confluence.listeners.core	1803	2017-07-19 14:48:05.142	user-management-logging-listener
com.atlassian.confluence.plugins.confluence-nav-links	1804	2017-07-19 14:48:05.142	capability-content-link
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	1805	2017-07-19 14:48:05.142	synchrony-plugin-analytics-whitelist
com.atlassian.applinks.applinks-cors-plugin	1806	2017-07-19 14:48:05.142	servletMessageFactory
confluence.web.resources	1807	2017-07-19 14:48:05.142	setup-license
com.atlassian.mywork.mywork-confluence-host-plugin	1808	2017-07-19 14:48:05.142	mw-login-miniview
com.atlassian.confluence.plugins.confluence-edge-index	1809	2017-07-19 14:48:05.142	build-edge-index-servlet
com.atlassian.streams	1810	2017-07-19 14:48:05.142	date-ar-JO
com.atlassian.confluence.ext.newcode-macro-plugin	1811	2017-07-19 14:48:05.142	sh-theme-default
com.atlassian.confluence.plugins.confluence-nav-links	1812	2017-07-19 14:48:05.142	home
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1813	2017-07-19 14:48:05.142	contentEntityManager
com.atlassian.plugins.atlassian-nav-links-plugin	1814	2017-07-19 14:48:05.142	salDarkFeatureService
com.atlassian.confluence.plugins.confluence-create-content-plugin	1815	2017-07-19 14:48:05.142	iconUrlProvider
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1816	2017-07-19 14:48:05.142	roadmap-editor-view-resources
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1817	2017-07-19 14:48:05.142	moduleFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1818	2017-07-19 14:48:05.142	dispatchService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1819	2017-07-19 14:48:05.142	roleBasedPluginDescriptorMetadataCache
com.atlassian.confluence.plugins.share-page	1820	2017-07-19 14:48:05.142	share-dialog-service
com.atlassian.mywork.mywork-confluence-host-plugin	1821	2017-07-19 14:48:05.142	applicationLinkService
com.atlassian.confluence.plugins.confluence-browser-metrics	1822	2017-07-19 14:48:05.142	server-duration
com.atlassian.plugins.confluence-tdm-merger	1823	2017-07-19 14:48:05.142	xmlEventReaderFactory
com.atlassian.streams	1824	2017-07-19 14:48:05.142	date-ar-YE
com.atlassian.streams	1825	2017-07-19 14:48:05.142	inline-activity-stream-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1826	2017-07-19 14:48:05.142	spacePermissionManager
com.atlassian.confluence.plugins.confluence-sortable-tables	1827	2017-07-19 14:48:05.142	sortable-table-resources
com.atlassian.auiplugin	1828	2017-07-19 14:48:05.142	aui-experimental-date-picker
com.atlassian.confluence.editor	1829	2017-07-19 14:48:05.142	editor-css-resources
com.atlassian.labs.atlassian-bot-killer	1830	2017-07-19 14:48:05.142	userManager
com.atlassian.plugins.atlassian-whitelist-core-plugin	1831	2017-07-19 14:48:05.142	whitelistService
com.atlassian.oauth.serviceprovider	1832	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.mywork.mywork-confluence-host-plugin	1833	2017-07-19 14:48:05.142	confluenceCommonHeaderIcon
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1834	2017-07-19 14:48:05.142	hipchat-js-resources
com.atlassian.streams	1835	2017-07-19 14:48:05.142	xml2json
com.atlassian.confluence.plugins.confluence-inline-tasks	1836	2017-07-19 14:48:05.142	inline-tasks-macro-browser
com.atlassian.confluence.keyboardshortcuts	1837	2017-07-19 14:48:05.142	tinymce.file
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1838	2017-07-19 14:48:05.142	instanceHealthCopyEolFileTask
com.atlassian.integration.jira.jira-integration-plugin	1839	2017-07-19 14:48:05.142	jira-issues-dialog
com.atlassian.confluence.plugins.confluence-file-notifications	1840	2017-07-19 14:48:05.142	confluenceAccessManager
com.atlassian.applinks.applinks-oauth-plugin	1841	2017-07-19 14:48:05.142	confluence-inbound-oauth
com.atlassian.applinks.applinks-plugin	1842	2017-07-19 14:48:05.142	webInterfaceManager
com.atlassian.streams.confluence	1843	2017-07-19 14:48:05.142	evictor
com.atlassian.confluence.plugins.confluence-space-ia	1844	2017-07-19 14:48:05.142	header-spaces-link
confluence.search.mappers.lucene	1845	2017-07-19 14:48:05.142	archivedSpacesSearchFilter
com.atlassian.confluence.keyboardshortcuts	1846	2017-07-19 14:48:05.142	tinymce.numlist
confluence.macros.advanced	1902	2017-07-19 14:48:05.142	get-more
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1847	2017-07-19 14:48:05.142	maxAllowedPacketsCheck
com.atlassian.confluence.plugins.confluence-create-content-plugin	1848	2017-07-19 14:48:05.142	webInterfaceManager
com.atlassian.streams	1849	2017-07-19 14:48:05.142	date-nn-NO
com.atlassian.templaterenderer.api	1850	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.confluence.plugins.confluence-like	1851	2017-07-19 14:48:05.142	like-plugin-icons
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1852	2017-07-19 14:48:05.142	comment-created-mail-batch-notification-processor
confluence.extra.jira	1853	2017-07-19 14:48:05.142	refresh-resources
com.atlassian.confluence.extra.officeconnector	1854	2017-07-19 14:48:05.142	htmlslideservlet
com.atlassian.confluence.plugins.confluence-mentions-plugin	1855	2017-07-19 14:48:05.142	mention-email-view-page-link
com.atlassian.confluence.extra.officeconnector	1856	2017-07-19 14:48:05.142	viewppt
com.atlassian.confluence.plugins.confluence-nav-links	1857	2017-07-19 14:48:05.142	sidebar-link-service
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1858	2017-07-19 14:48:05.142	ao
com.atlassian.confluence.plugins.confluence-space-ia	1859	2017-07-19 14:48:05.142	avatar-picker
com.atlassian.confluence.plugins.confluence-like	1860	2017-07-19 14:48:05.142	manage-notifications-email-footer-item
com.atlassian.plugins.authentication.atlassian-authentication-plugin	1861	2017-07-19 14:48:05.142	save-fragment
com.atlassian.confluence.plugins.confluence-space-ia	1862	2017-07-19 14:48:05.142	main-links
com.atlassian.confluence.plugins.confluence-mentions-plugin	1863	2017-07-19 14:48:05.142	new-content-mention-payload-transformer
confluence.lifecycle.core	1864	2017-07-19 14:48:05.142	sysinfodump
confluence.search.mappers.lucene	1865	2017-07-19 14:48:05.142	filename
com.atlassian.confluence.plugins.confluence-inline-comments	1866	2017-07-19 14:48:05.142	inline-notification-resolved
com.atlassian.webhooks.atlassian-webhooks-plugin	1867	2017-07-19 14:48:05.142	webhooksRest-filter
confluence.web.resources	1868	2017-07-19 14:48:05.142	macro-browser-sprites
confluence.editor.actions	1869	2017-07-19 14:48:05.142	insert
com.atlassian.analytics.analytics-client	1870	2017-07-19 14:48:05.142	analytics-rest
confluence.sections.attachments	1871	2017-07-19 14:48:05.142	remove-version
tac.confluence.languages.de_DE	1872	2017-07-19 14:48:05.142	de_DE
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1873	2017-07-19 14:48:05.142	defaultNotificationUserService
com.atlassian.confluence.plugins.confluence-onboarding	1874	2017-07-19 14:48:05.142	onboardingSpaceCheckJob
confluence.admin.user	1875	2017-07-19 14:48:05.142	entitypicker
com.atlassian.auiplugin	1876	2017-07-19 14:48:05.142	internal-aui-browser
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1877	2017-07-19 14:48:05.142	blogpost-moved-notification
com.atlassian.confluence.plugins.confluence-dashboard	1878	2017-07-19 14:48:05.142	onboardingService
com.atlassian.mywork.mywork-confluence-provider-plugin	1879	2017-07-19 14:48:05.142	confluenceActionService
confluence.renderer.components	1880	2017-07-19 14:48:05.142	emphases
com.atlassian.oauth.serviceprovider.sal	1881	2017-07-19 14:48:05.142	clock
com.atlassian.streams	1882	2017-07-19 14:48:05.142	date-zh-CN
confluence.web.resources	1883	2017-07-19 14:48:05.142	search-results-grid
com.atlassian.confluence.keyboardshortcuts	1884	2017-07-19 14:48:05.142	keyboardshortcut-flag
com.atlassian.confluence.plugins.confluence-space-blueprints	1885	2017-07-19 14:48:05.142	team-space-email-resources
confluence.user.menu	1886	2017-07-19 14:48:05.142	signup
com.atlassian.streams.confluence	1887	2017-07-19 14:48:05.142	commentManager
confluence.macros.dashboard	1888	2017-07-19 14:48:05.142	welcome-message
com.atlassian.confluence.plugins.confluence-email-resources	1889	2017-07-19 14:48:05.142	templates-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	1890	2017-07-19 14:48:05.142	spaceBlueprintService
com.atlassian.confluence.plugins.recently-viewed-plugin	1891	2017-07-19 14:48:05.142	ao
com.atlassian.plugins.editor	1892	2017-07-19 14:48:05.142	atlassian-rte-javascript
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1893	2017-07-19 14:48:05.142	hipchat-soy-resources
com.atlassian.streams.streams-thirdparty-plugin	1894	2017-07-19 14:48:05.142	thirdparty-web-resources
com.atlassian.auiplugin	1895	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-is-input
com.atlassian.confluence.plugins.confluence-space-ia	1896	2017-07-19 14:48:05.142	header-spaces-create-space
confluence.sections.search.view	1897	2017-07-19 14:48:05.142	search
com.atlassian.mywork.mywork-confluence-host-plugin	1898	2017-07-19 14:48:05.142	actionServiceSelector
com.atlassian.analytics.analytics-client	1899	2017-07-19 14:48:05.142	eventReporter
com.atlassian.confluence.plugins.confluence-business-blueprints	1900	2017-07-19 14:48:05.142	sharelinksbookmarklet-resources
com.atlassian.confluence.plugins.gadgets	1901	2017-07-19 14:48:05.142	localeManager
com.atlassian.support.stp	1903	2017-07-19 14:48:05.142	stp-license-banner-data-bamboo
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1904	2017-07-19 14:48:05.142	roadmap-view-resources
com.atlassian.soy.soy-template-plugin	1905	2017-07-19 14:48:05.142	soy-deps
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1906	2017-07-19 14:48:05.142	batchMessage-soy-function
com.atlassian.auiplugin	1907	2017-07-19 14:48:05.142	aui-experimental-progress-tracker
com.atlassian.plugins.atlassian-whitelist-core-plugin	1908	2017-07-19 14:48:05.142	outboundWhitelist
com.atlassian.confluence.plugins.view-source	1909	2017-07-19 14:48:05.142	confluenceViewSourceWhitelist
com.atlassian.confluence.extra.widgetconnector	1910	2017-07-19 14:48:05.142	widget-xhtml
com.atlassian.confluence.plugins.confluence-create-content-plugin	1911	2017-07-19 14:48:05.142	default-index-template
com.atlassian.confluence.plugins.search.confluence-search	1912	2017-07-19 14:48:05.142	excludedContentTypeSearchFilter
com.atlassian.confluence.editor	1913	2017-07-19 14:48:05.142	table-resizable-editor-content-styles
com.atlassian.confluence.plugins.confluence-browser-metrics	1914	2017-07-19 14:48:05.142	browser-metrics-reporters
com.atlassian.confluence.plugins.confluence-user-rest	1915	2017-07-19 14:48:05.142	permissionManager
confluence.listeners.core	1916	2017-07-19 14:48:05.142	autogroupadderlistener
com.atlassian.confluence.plugins.confluence-spaces	1917	2017-07-19 14:48:05.142	actions
com.atlassian.plugins.atlassian-whitelist-core-plugin	1918	2017-07-19 14:48:05.142	whitelistOnOffSwitch
com.atlassian.support.stp	1919	2017-07-19 14:48:05.142	applicationPropertiesContextItem
com.atlassian.plugins.atlassian-nav-links-plugin	1920	2017-07-19 14:48:05.142	template-renderer
confluence.sections.space.tools	1921	2017-07-19 14:48:05.142	export-format-xml
com.atlassian.confluence.plugins.confluence-software-project	1922	2017-07-19 14:48:05.142	sp-space-blueprint-item
com.atlassian.plugins.atlassian-plugins-webresource-rest	1923	2017-07-19 14:48:05.142	curl
com.atlassian.applinks.applinks-plugin	1924	2017-07-19 14:48:05.142	get-documentation-base-url-soy-function
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1925	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.streams.confluence	1926	2017-07-19 14:48:05.142	date-eu-ES
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	1927	2017-07-19 14:48:05.142	prettyurls-dispatcher-filter-before-dispatch
com.atlassian.confluence.plugins.confluence-user-profile	1928	2017-07-19 14:48:05.142	editmyprofilepicture
com.atlassian.streams.streams-thirdparty-plugin	1929	2017-07-19 14:48:05.142	userProfileAccessor
confluence.lifecycle.core	1930	2017-07-19 14:48:05.142	pluginframeworkdependentupgrades
com.atlassian.confluence.plugins.share-page	1931	2017-07-19 14:48:05.142	share-attachment-notification-transformer
com.atlassian.streams	1932	2017-07-19 14:48:05.142	feedRendererContext
confluence.sections.settings.edit	1933	2017-07-19 14:48:05.142	editemailpreferences
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1934	2017-07-19 14:48:05.142	upm-update-check-resources
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1935	2017-07-19 14:48:05.142	keyboard-shortcut
com.atlassian.mywork.mywork-confluence-host-plugin	1936	2017-07-19 14:48:05.142	mwLeftMenuPanel
confluence.listeners.core	1937	2017-07-19 14:48:05.142	confluenceCrowdUserEventAdaptorListener
confluence.aui.staging	1938	2017-07-19 14:48:05.142	dark-features
com.atlassian.streams	1939	2017-07-19 14:48:05.142	date-ar-TN
com.atlassian.support.healthcheck.support-healthcheck-plugin	1940	2017-07-19 14:48:05.142	supportHealthStatusProperties
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1941	2017-07-19 14:48:05.142	confluenceApplicationDescriptor
com.atlassian.applinks.applinks-plugin	1942	2017-07-19 14:48:05.142	lodash-amd
com.atlassian.confluence.plugins.confluence-fixed-headers	1943	2017-07-19 14:48:05.142	confFixedHeadersAnalyticsWhitelist
com.atlassian.querylang.confluence-cql-plugin	1944	2017-07-19 14:48:05.142	end-of-day-one-arg-function
com.atlassian.confluence.plugins.confluence-business-blueprints	1945	2017-07-19 14:48:05.142	decisions-page
com.atlassian.querylang.confluence-cql-plugin	1946	2017-07-19 14:48:05.142	end-of-week-zero-arg-function
com.atlassian.confluence.plugins.confluence-ui-rest	1947	2017-07-19 14:48:05.142	ui-rest-filter
com.atlassian.streams	1948	2017-07-19 14:48:05.142	date-ar-SA
com.atlassian.confluence.extra.widgetconnector	1949	2017-07-19 14:48:05.142	scribd
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1950	2017-07-19 14:48:05.142	simple-json-serialize-function
com.atlassian.streams	1951	2017-07-19 14:48:05.142	date-ar-SY
com.atlassian.confluence.plugins.whatsnew	1952	2017-07-19 14:48:05.142	whats-new-item-help-menu
com.atlassian.streams.core	1953	2017-07-19 14:48:05.142	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1954	2017-07-19 14:48:05.142	sqlModeCheck
com.atlassian.confluence.plugins.confluence-mentions-plugin	1955	2017-07-19 14:48:05.142	email-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1956	2017-07-19 14:48:05.142	upmPluginAccessor
com.atlassian.confluence.plugins.confluence-inline-tasks	1957	2017-07-19 14:48:05.142	my-tasks-menu-item
com.atlassian.streams	1958	2017-07-19 14:48:05.142	appLinksUriSupplier
com.atlassian.confluence.plugins.confluence-image-attributes	1959	2017-07-19 14:48:05.142	image-attributes
com.atlassian.plugin.notifications.notifications-module	1960	2017-07-19 14:48:05.142	applicationPropertiesContextItem
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1961	2017-07-19 14:48:05.142	tabVisibility
confluence.macros.profile	1962	2017-07-19 14:48:05.142	profile-macro-styles
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1963	2017-07-19 14:48:05.142	httpContext
confluence.admin.user	1964	2017-07-19 14:48:05.142	browse-users-tab-signup
com.atlassian.confluence.plugins.confluence-mobile	1965	2017-07-19 14:48:05.142	macroManagerFactory
com.atlassian.confluence.plugins.confluence-lookandfeel	1966	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.mywork.mywork-common-plugin	1967	2017-07-19 14:48:05.142	notification-service
confluence.sections.create	1968	2017-07-19 14:48:05.142	add-page-without-parent
com.atlassian.support.stp	1969	2017-07-19 14:48:05.142	confluence-application-info
com.atlassian.oauth.serviceprovider	1970	2017-07-19 14:48:05.142	userManager
com.atlassian.confluence.plugins.confluence-monitoring-console	1971	2017-07-19 14:48:05.142	userManager
com.atlassian.confluence.plugins.gadgets	1972	2017-07-19 14:48:05.142	gadget-render-resources
confluence.search.mappers.lucene	1973	2017-07-19 14:48:05.142	fileExtension
com.atlassian.analytics.analytics-client	1974	2017-07-19 14:48:05.142	eventSerializer
com.atlassian.confluence.plugins.confluence-software-project	1975	2017-07-19 14:48:05.142	sp-space-blueprint
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1976	2017-07-19 14:48:05.142	httpRequestWrapper
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1977	2017-07-19 14:48:05.142	userManager
confluence.search.lucene.initialisation	1978	2017-07-19 14:48:05.142	boostByModificationDateStrategySearcherInitialisation
com.atlassian.auiplugin	1979	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-polyfills-console
confluence.sections.space.advanced	1980	2017-07-19 14:48:05.142	exporthtml
com.atlassian.confluence.plugins.confluence-software-blueprints	1981	2017-07-19 14:48:05.142	requirements-index
confluence.extra.impresence2	1982	2017-07-19 14:48:05.142	localeSupport
com.atlassian.streams.confluence	1983	2017-07-19 14:48:05.142	date-sq-AL
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1984	2017-07-19 14:48:05.142	page-created-notification-template-body
com.atlassian.support.stp	1985	2017-07-19 14:48:05.142	schedulerCleanUpTask
com.atlassian.confluence.plugins.synchrony-interop	1986	2017-07-19 14:48:05.142	synchrony-status-banner-resources
com.atlassian.streams.confluence	1987	2017-07-19 14:48:05.142	date-mr-IN
com.atlassian.crowd.embedded.admin	1988	2017-07-19 14:48:05.142	default-groups
com.atlassian.streams	1989	2017-07-19 14:48:05.142	date-zh-HK
com.atlassian.confluence.plugins.editor-loader	1990	2017-07-19 14:48:05.142	background-loading-editor
com.atlassian.confluence.keyboardshortcuts	1991	2017-07-19 14:48:05.142	confluence-keyboard-shortcuts
confluence.sections.profile	1992	2017-07-19 14:48:05.142	primary
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1993	2017-07-19 14:48:05.142	hipchat2-space-configuration
com.atlassian.confluence.plugins.confluence-email-resources	1994	2017-07-19 14:48:05.142	notification-templates-follower-added-1.0.0
com.atlassian.templaterenderer.api	1995	2017-07-19 14:48:05.142	pluginEventManager
com.atlassian.plugins.rest.atlassian-rest-module	1996	2017-07-19 14:48:05.142	restRequestFactory
com.atlassian.confluence.plugins.confluence-dashboard	1997	2017-07-19 14:48:05.142	buttons-web-items
confluence.sections.profile	1998	2017-07-19 14:48:05.142	profile-administer-user
com.atlassian.confluence.ext.newcode-macro-plugin	1999	2017-07-19 14:48:05.142	editor-scripts
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2000	2017-07-19 14:48:05.142	darkFeatureManager
com.atlassian.streams.confluence	2001	2017-07-19 14:48:05.142	date-kn-IN
com.atlassian.confluence.plugins.confluence-browser-metrics	2002	2017-07-19 14:48:05.142	viewcontent
com.atlassian.confluence.plugins.confluence-lookandfeel	2003	2017-07-19 14:48:05.142	xsrfTokenGenerator
com.atlassian.plugins.atlassian-nav-links-plugin	2004	2017-07-19 14:48:05.142	userManager
com.atlassian.plugin.notifications.notifications-module	2005	2017-07-19 14:48:05.142	userProfileMappingResolver
com.atlassian.confluence.plugins.confluence-edge-index	2006	2017-07-19 14:48:05.142	networkService
confluence.sections.settings.edit	2007	2017-07-19 14:48:05.142	editeditorpreferences
com.atlassian.plugins.atlassian-nav-links-plugin	2008	2017-07-19 14:48:05.142	applinks-change-listener
com.atlassian.confluence.plugins.confluence-email-resources	2009	2017-07-19 14:48:05.142	stop-following-user-email-adg-footer-item
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	2010	2017-07-19 14:48:05.142	blogger-xmlrpc
com.atlassian.streams.confluence	2011	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.instrumentation.atlassian-instrumentation-expose-jmx	2012	2017-07-19 14:48:05.142	jmxInstrumentExposer
com.atlassian.streams.confluence	2013	2017-07-19 14:48:05.142	xmlEventReaderFactory
com.atlassian.confluence.plugins.confluence-email-resources	2014	2017-07-19 14:48:05.142	notification-templates-blogpost-add-1.0.0
com.atlassian.crowd.embedded.admin	2015	2017-07-19 14:48:05.142	UpdateDirectoriesConfigurationWithExternalI
com.atlassian.confluence.extra.widgetconnector	2016	2017-07-19 14:48:05.142	sliderocket
confluence.search.mappers.lucene	2017	2017-07-19 14:48:05.142	labelsSearchFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	2018	2017-07-19 14:48:05.142	inline-task-mail-resources
com.atlassian.auiplugin	2019	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-lifecycle
com.atlassian.confluence.plugins.confluence-email-resources	2020	2017-07-19 14:48:05.142	notification-templates-blog-remove-1.0.0
confluence.search.contentname	2021	2017-07-19 14:48:05.142	default-contentname-search-provider
com.atlassian.confluence.plugins.confluence-create-content-plugin	2022	2017-07-19 14:48:05.142	createButtonService
com.atlassian.confluence.plugins.confluence-email-resources	2023	2017-07-19 14:48:05.142	content-templates-status-update-pattern-2.0.0
com.atlassian.streams.confluence	2024	2017-07-19 14:48:05.142	date-syr-SY
com.atlassian.auiplugin	2025	2017-07-19 14:48:05.142	aui-experimental-page-layout-typography
confluence.macros.advanced	2026	2017-07-19 14:48:05.142	blogpost-mobile-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2027	2017-07-19 14:48:05.142	confluence-webpanel-data-resources
com.atlassian.auiplugin	2028	2017-07-19 14:48:05.142	hotkeys
com.atlassian.streams.confluence	2029	2017-07-19 14:48:05.142	date-ky-KG
com.atlassian.applinks.applinks-trustedapps-plugin	2030	2017-07-19 14:48:05.142	trustedAppsAuthenticationProviderPluginModule
com.atlassian.confluence.plugins.confluence-schedule-admin	2031	2017-07-19 14:48:05.142	view-scheduled-jobs
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2032	2017-07-19 14:48:05.142	notificationStoreService
com.atlassian.plugins.base-hipchat-integration-plugin	2033	2017-07-19 14:48:05.142	hipchat-webpanel
com.atlassian.confluence.plugins.watch-button	2034	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.plugins.confluence-software-project	2035	2017-07-19 14:48:05.142	SoftwareProjectSpaceHomePageEventListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	2036	2017-07-19 14:48:05.142	header-create-link
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2037	2017-07-19 14:48:05.142	whitelistRuleComparator
com.atlassian.integration.jira.jira-integration-plugin	2038	2017-07-19 14:48:05.142	jiraKeyScanner
com.atlassian.confluence.plugins.confluence-content-property-storage	2039	2017-07-19 14:48:05.142	contentPropertyValidator
confluence.sections.profile	2040	2017-07-19 14:48:05.142	stop-favourite-user-personal-space
com.atlassian.confluence.plugins.confluence-email-resources	2041	2017-07-19 14:48:05.142	content-templates-simple-data-table-pattern-1.0.0
com.atlassian.streams	2042	2017-07-19 14:48:05.142	templateRendererFactory
com.atlassian.streams	2043	2017-07-19 14:48:05.142	streamsActivityServlet
confluence.search.mappers.lucene	2044	2017-07-19 14:48:05.142	label
com.atlassian.confluence.plugins.templates-framework	2045	2017-07-19 14:48:05.142	templates_css
com.atlassian.applinks.applinks-plugin	2046	2017-07-19 14:48:05.142	crowd
com.atlassian.analytics.analytics-client	2047	2017-07-19 14:48:05.142	productUUIDProvider
com.atlassian.auiplugin	2048	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-jquery-jquery-os
com.atlassian.streams.core	2049	2017-07-19 14:48:05.142	templateRenderer
confluence.macros.advanced	2050	2017-07-19 14:48:05.142	advancedMacrosExcerpter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2051	2017-07-19 14:48:05.142	instanceTopologyJob
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2052	2017-07-19 14:48:05.142	blogpost-edited-notification-template
com.atlassian.confluence.plugins.confluence-daily-summary-email	2053	2017-07-19 14:48:05.142	title-metadata
com.atlassian.confluence.plugins.search.confluence-search	2054	2017-07-19 14:48:05.142	searchResultBuilderFactory
com.atlassian.auiplugin	2055	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-binder
com.atlassian.streams.confluence	2056	2017-07-19 14:48:05.142	spaceKeys
confluence.sections.admin	2057	2017-07-19 14:48:05.142	layouts
com.atlassian.gadgets.opensocial	2058	2017-07-19 14:48:05.142	gadget-removed-error-page-resources
com.atlassian.confluence.plugins.confluence-user-rest	2059	2017-07-19 14:48:05.142	groupEntityBuilder
com.atlassian.confluence.plugins.confluence-content-property-storage	2060	2017-07-19 14:48:05.142	contentPropertyExtractionManager
com.atlassian.confluence.plugins.confluence-space-blueprints	2061	2017-07-19 14:48:05.142	sidebarService
com.atlassian.confluence.plugins.confluence-nav-links	2062	2017-07-19 14:48:05.142	confluenceWeights
com.atlassian.mywork.mywork-common-plugin	2063	2017-07-19 14:48:05.142	myworkserviceselector
confluence.sections.space.admin	2064	2017-07-19 14:48:05.142	spaceops
com.atlassian.mywork.mywork-common-plugin	2065	2017-07-19 14:48:05.142	reliable-rest-service
com.atlassian.applinks.applinks-cors-plugin	2066	2017-07-19 14:48:05.142	corsUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2067	2017-07-19 14:48:05.142	propertiesManager
com.atlassian.applinks.applinks-trustedapps-plugin	2068	2017-07-19 14:48:05.142	applicationLinkService
com.atlassian.oauth.serviceprovider	2069	2017-07-19 14:48:05.142	requestFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2070	2017-07-19 14:48:05.142	dac-landing-page-servlet
com.atlassian.confluence.plugins.confluence-sal-plugin	2071	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.plugins.base-hipchat-integration-plugin	2072	2017-07-19 14:48:05.142	hipchat-global
com.atlassian.auiplugin	2073	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-tables-sortable
com.atlassian.oauth.serviceprovider	2074	2017-07-19 14:48:05.142	converter
confluence.sections.create	2075	2017-07-19 14:48:05.142	add-blogpost
com.atlassian.confluence.plugins.gadgets	2076	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.keyboardshortcuts	2077	2017-07-19 14:48:05.142	return.to.edit.page
com.atlassian.labs.lucene-compat-plugin	2078	2017-07-19 14:48:05.142	extractor
confluence.macros.basic	2079	2017-07-19 14:48:05.142	panel-xhtml
com.atlassian.confluence.plugins.confluence-onboarding	2080	2017-07-19 14:48:05.142	no-spaces-notification-transformer
com.atlassian.confluence.plugins.confluence-nav-links	2081	2017-07-19 14:48:05.142	profile
com.atlassian.streams.confluence	2082	2017-07-19 14:48:05.142	attachmentRendererFactory
com.atlassian.plugins.atlassian-nav-links-plugin	2083	2017-07-19 14:48:05.142	content-link
com.atlassian.plugins.atlassian-nav-links-plugin	2084	2017-07-19 14:48:05.142	projects-service
com.atlassian.streams	2085	2017-07-19 14:48:05.142	date-el-GR
com.atlassian.oauth.consumer	2086	2017-07-19 14:48:05.142	consumerInfoServlet
com.atlassian.confluence.plugins.confluence-email-resources	2087	2017-07-19 14:48:05.142	use-custom-site-logo-function
com.atlassian.confluence.plugins.confluence-inline-comments	2088	2017-07-19 14:48:05.142	inlinecomment-findAllResolvedComment
confluence.listeners.core	2089	2017-07-19 14:48:05.142	resetHiloAfterImportListener
com.atlassian.confluence.plugins.confluence-previews	2090	2017-07-19 14:48:05.142	share-plugin
com.atlassian.confluence.keyboardshortcuts	2091	2017-07-19 14:48:05.142	tinymce.pre
com.atlassian.gadgets.publisher	2092	2017-07-19 14:48:05.142	ajs-gadgets-debug
com.atlassian.plugins.atlassian-nps-plugin	2093	2017-07-19 14:48:05.142	nps-specific-resources-async
com.atlassian.webhooks.atlassian-webhooks-plugin	2094	2017-07-19 14:48:05.142	webhooksRest
com.atlassian.streams	2095	2017-07-19 14:48:05.142	pluginEventManager
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2096	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.auiplugin	2097	2017-07-19 14:48:05.142	aui-deprecation
com.atlassian.confluence.plugins.quickreload	2098	2017-07-19 14:48:05.142	quick-reload-resources
com.atlassian.confluence.plugins.confluence-paste	2099	2017-07-19 14:48:05.142	autoconvert-confluence
com.atlassian.confluence.plugins.search.confluence-search	2100	2017-07-19 14:48:05.142	moduleDescriptorCacheFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2101	2017-07-19 14:48:05.142	blogpost-moved-notification-transformer
com.atlassian.confluence.plugins.confluence-knowledge-base	2102	2017-07-19 14:48:05.142	rest
confluence.search.mappers.lucene	2103	2017-07-19 14:48:05.142	deactivatedUserSearchFilter
com.atlassian.applinks.applinks-plugin	2104	2017-07-19 14:48:05.142	applinksRestV3-filter
confluence.extra.dynamictasklist2	2105	2017-07-19 14:48:05.142	v2-dynamictasklist2
com.atlassian.analytics.analytics-client	2106	2017-07-19 14:48:05.142	analyticsLogger
com.atlassian.plugins.atlassian-nav-links-plugin	2107	2017-07-19 14:48:05.142	web-interface-manager
com.atlassian.plugins.atlassian-nav-links-plugin	2108	2017-07-19 14:48:05.142	navigation-link
com.atlassian.streams	2109	2017-07-19 14:48:05.142	feedAggregator
com.atlassian.mywork.mywork-confluence-host-plugin	2110	2017-07-19 14:48:05.142	registration-dao
com.atlassian.confluence.extra.officeconnector	2111	2017-07-19 14:48:05.142	viewpdf
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2112	2017-07-19 14:48:05.142	admin.cluster-monitoring
confluence.extra.confluencerpc	2113	2017-07-19 14:48:05.142	xhtmlSoapServiceTarget
com.atlassian.confluence.plugins.confluence-lookandfeel	2114	2017-07-19 14:48:05.142	transactionTemplate
confluence.search.mappers.lucene	2115	2017-07-19 14:48:05.142	phrase
com.atlassian.confluence.plugins.confluence-create-content-plugin	2116	2017-07-19 14:48:05.142	blueprint-first-time-tooltip-resources
com.atlassian.applinks.applinks-plugin	2117	2017-07-19 14:48:05.142	projectManager
com.atlassian.streams.confluence	2118	2017-07-19 14:48:05.142	contentEntityItemFactory
com.atlassian.confluence.plugins.gadgets	2119	2017-07-19 14:48:05.142	analytics-whitelist
confluence.web.panels	2230	2017-07-19 14:48:05.142	confluence-header-help-menu
com.atlassian.plugins.atlassian-nav-links-plugin	2120	2017-07-19 14:48:05.142	menu-rest
com.atlassian.confluence.plugins.confluence-email-resources	2121	2017-07-19 14:48:05.142	content-templates-content-excerpt-pattern-1.0.0
confluence.macros.advanced	2122	2017-07-19 14:48:05.142	news
com.atlassian.confluence.plugins.confluence-software-blueprints	2123	2017-07-19 14:48:05.142	jirareports-index
com.atlassian.confluence.extra.flyingpdf	2124	2017-07-19 14:48:05.142	flyingPdfDocumentConverter
confluence.macros.advanced	2125	2017-07-19 14:48:05.142	recently-used-labels
com.atlassian.oauth.consumer.sal	2126	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.applinks.applinks-plugin	2127	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-sortable-tables	2128	2017-07-19 14:48:05.142	sortable-table-loader
com.atlassian.confluence.plugins.gadgets	2129	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2130	2017-07-19 14:48:05.142	asynchronousTaskManager
com.atlassian.applinks.applinks-plugin	2131	2017-07-19 14:48:05.142	manifestRetrieverContextItem
com.atlassian.auiplugin	2132	2017-07-19 14:48:05.142	darkFeatureManager
com.atlassian.streams	2133	2017-07-19 14:48:05.142	date-hr-BA
com.atlassian.streams.confluence	2134	2017-07-19 14:48:05.142	date-ja-JP
com.atlassian.auiplugin	2135	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-dialog2
com.atlassian.streams	2136	2017-07-19 14:48:05.142	date-mi-NZ
com.atlassian.confluence.plugins.confluence-business-blueprints	2137	2017-07-19 14:48:05.142	sharelinks-blueprint
com.atlassian.confluence.plugins.synchrony-interop	2138	2017-07-19 14:48:05.142	confluence-synchrony-interop-rest-api
com.atlassian.streams	2139	2017-07-19 14:48:05.142	date-mt-MT
com.atlassian.applinks.applinks-oauth-plugin	2140	2017-07-19 14:48:05.142	redirectController
confluence.extra.jira	2141	2017-07-19 14:48:05.142	servers
com.atlassian.confluence.plugins.confluence-sal-plugin	2142	2017-07-19 14:48:05.142	applicationProperties
confluence.extra.livesearch	2143	2017-07-19 14:48:05.142	livesearch-xhtml
com.atlassian.confluence.plugins.drag-and-drop	2144	2017-07-19 14:48:05.142	drag-and-drop-overlay
com.atlassian.auiplugin	2145	2017-07-19 14:48:05.142	aui-banner
confluence.user.menu	2146	2017-07-19 14:48:05.142	user-history
com.atlassian.confluence.plugins.confluence-software-blueprints	2147	2017-07-19 14:48:05.142	jirareports-changelog-static
com.atlassian.streams.confluence	2148	2017-07-19 14:48:05.142	userProfileAccessor
com.atlassian.applinks.applinks-plugin	2149	2017-07-19 14:48:05.142	applinks-entity-type
confluence.web.resources	2150	2017-07-19 14:48:05.142	draft-changes
com.atlassian.confluence.plugins.confluence-file-notifications	2151	2017-07-19 14:48:05.142	file-content-payload-transformer
com.atlassian.plugins.atlassian-nav-links-plugin	2152	2017-07-19 14:48:05.142	project-shortcut
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2153	2017-07-19 14:48:05.142	whitelist-web-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	2154	2017-07-19 14:48:05.142	highlightOptionPanelConfigService
com.atlassian.applinks.applinks-oauth-plugin	2155	2017-07-19 14:48:05.142	add-consumer-redirect
confluence.web.resources	2156	2017-07-19 14:48:05.142	jquery-autocomplete
confluence.extra.confluencerpc	2157	2017-07-19 14:48:05.142	soapServiceHelper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2158	2017-07-19 14:48:05.142	transactionTemplate
confluence.macros.basic	2159	2017-07-19 14:48:05.142	noformat-xhtml
com.atlassian.plugins.tinymce	2160	2017-07-19 14:48:05.142	atlassian-rte-javascript-tinymce-extensions
com.atlassian.confluence.plugins.confluence-onboarding	2161	2017-07-19 14:48:05.142	confluenceOnboardingPluginAnalyticsWhitelist
com.atlassian.applinks.applinks-plugin	2162	2017-07-19 14:48:05.142	feature-v3-onboarding
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2163	2017-07-19 14:48:05.142	rest-filter
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2164	2017-07-19 14:48:05.142	prettyurls-matcher-filter-before-dispatch
com.atlassian.confluence.plugins.confluence-email-resources	2165	2017-07-19 14:48:05.142	stop-watching-space-blogs-email-footer-item
com.atlassian.mywork.mywork-confluence-provider-plugin	2166	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.confluence.plugins.reliablesave	2167	2017-07-19 14:48:05.142	confluenceReliableSaveWhitelist
com.atlassian.streams	2168	2017-07-19 14:48:05.142	date-sr-Cyrl-CS
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2169	2017-07-19 14:48:05.142	confluenceNotificationRenderer
com.atlassian.confluence.plugins.confluence-email-resources	2170	2017-07-19 14:48:05.142	reply-to-comment-email-batch-item
com.atlassian.mywork.mywork-common-plugin	2171	2017-07-19 14:48:05.142	mywork-action-service
com.atlassian.streams	2172	2017-07-19 14:48:05.142	appLinksWhitelist
confluence.macros.advanced	2173	2017-07-19 14:48:05.142	include
com.atlassian.streams.confluence	2174	2017-07-19 14:48:05.142	thumbnailManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2175	2017-07-19 14:48:05.142	fancy-select
com.atlassian.integration.jira.jira-integration-plugin	2176	2017-07-19 14:48:05.142	jira-resource
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2177	2017-07-19 14:48:05.142	roadmap-analytics-whitelist
com.atlassian.confluence.plugins.confluence-jira-content	2178	2017-07-19 14:48:05.142	issues-created-panel
confluence.web.resources	2179	2017-07-19 14:48:05.142	general-analytics-bindings
org.randombits.confluence.toc	2180	2017-07-19 14:48:05.142	server-soy-templates
com.atlassian.confluence.plugins.confluence-inline-comments	2181	2017-07-19 14:48:05.142	common-resource
com.atlassian.confluence.contributors	2182	2017-07-19 14:48:05.142	PageDetailsHelper
com.atlassian.auiplugin	2183	2017-07-19 14:48:05.142	ajs-contextpath
com.atlassian.streams.streams-thirdparty-plugin	2184	2017-07-19 14:48:05.142	ao
confluence.sections.space.tools	2185	2017-07-19 14:48:05.142	stop-watching-space
com.atlassian.plugins.base-hipchat-integration-plugin	2186	2017-07-19 14:48:05.142	view-oauth-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2187	2017-07-19 14:48:05.142	comment-edited-hipchat-notification-template
com.atlassian.applinks.applinks-cors-plugin	2188	2017-07-19 14:48:05.142	documentationLinker
com.atlassian.healthcheck.atlassian-healthcheck	2189	2017-07-19 14:48:05.142	healthCheckRest
confluence.extractors.core	2190	2017-07-19 14:48:05.142	lastModifierNameChangeExtractor
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	2191	2017-07-19 14:48:05.142	leadershipmonitor-template
com.atlassian.plugins.base-hipchat-integration-plugin	2192	2017-07-19 14:48:05.142	rest-ping-filter
com.atlassian.applinks.applinks-plugin	2193	2017-07-19 14:48:05.142	confluence-inbound-two-legged-oauth
com.atlassian.confluence.plugins.confluence-email-resources	2194	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.soy.soy-template-plugin	2195	2017-07-19 14:48:05.142	toStringFunction
confluence.renderer.components	2196	2017-07-19 14:48:05.142	macro
confluence.search.mappers.lucene	2197	2017-07-19 14:48:05.142	queryString
com.atlassian.streams	2198	2017-07-19 14:48:05.142	date-sr-Cyrl-BA
com.atlassian.auiplugin	2199	2017-07-19 14:48:05.142	aui-expander
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2200	2017-07-19 14:48:05.142	pluginManualUpdateNotificationService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2201	2017-07-19 14:48:05.142	confluenceSpaceToRoomNotificationsAnalyticsWhitelist
confluence.web.resources	2202	2017-07-19 14:48:05.142	module-exporter
confluence.search.mappers.lucene	2203	2017-07-19 14:48:05.142	termRange
com.atlassian.streams.streams-thirdparty-plugin	2204	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.applinks.applinks-plugin	2205	2017-07-19 14:48:05.142	elevatedPermissionsService
com.atlassian.plugins.atlassian-whitelist-core-plugin	2206	2017-07-19 14:48:05.142	confluenceGadgetWhitelistMigration
com.atlassian.confluence.plugins.confluence-email-resources	2207	2017-07-19 14:48:05.142	template-utils-user-avatar-name-table-2.0.0
confluence.user.menu	2208	2017-07-19 14:48:05.142	user-recently-worked-on
confluence.sections.attachments	2209	2017-07-19 14:48:05.142	edit
com.atlassian.auiplugin	2210	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-index-of
com.atlassian.confluence.plugins.confluence-inline-tasks	2211	2017-07-19 14:48:05.142	custom-task-report-template
com.atlassian.confluence.plugins.confluence-inline-comments	2212	2017-07-19 14:48:05.142	view-inline-comment-batch-email-action
com.atlassian.analytics.analytics-client	2213	2017-07-19 14:48:05.142	confluenceClusterInformationProvider
com.atlassian.support.stp	2214	2017-07-19 14:48:05.142	resources
com.atlassian.confluence.keyboardshortcuts	2215	2017-07-19 14:48:05.142	create.page
com.atlassian.streams.confluence	2216	2017-07-19 14:48:05.142	date-fo-FO
com.atlassian.mywork.mywork-confluence-host-plugin	2217	2017-07-19 14:48:05.142	mw-header-anchor-css
confluence.macros.advanced	2218	2017-07-19 14:48:05.142	gallery
com.atlassian.plugins.atlassian-nps-plugin	2219	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-previews	2220	2017-07-19 14:48:05.142	fallback-mode
com.atlassian.querylang.confluence-cql-plugin	2221	2017-07-19 14:48:05.142	rest-cql-metadata
com.atlassian.confluence.plugins.confluence-content-property-storage	2222	2017-07-19 14:48:05.142	hostContextAccessor
com.atlassian.plugins.atlassian-nav-links-plugin	2223	2017-07-19 14:48:05.142	capabilities-consumer-admin-rest
com.atlassian.confluence.keyboardshortcuts	2224	2017-07-19 14:48:05.142	goto.dashboard
com.atlassian.mywork.mywork-confluence-host-plugin	2225	2017-07-19 14:48:05.142	client-service
confluence.sections.space.admin	2226	2017-07-19 14:48:05.142	security
com.atlassian.plugins.base-hipchat-integration-plugin	2227	2017-07-19 14:48:05.142	hipchat-command
com.atlassian.confluence.plugins.gadgets	2228	2017-07-19 14:48:05.142	themeManager
confluence.extra.jira	2229	2017-07-19 14:48:05.142	autoconvert-jira
com.atlassian.confluence.image.effects.ImageEffectsPlugin	2231	2017-07-19 14:48:05.142	imgfilterfilter
com.atlassian.confluence.plugins.confluence-knowledge-base	2232	2017-07-19 14:48:05.142	searcher
com.atlassian.confluence.plugins.confluence-inline-tasks	2233	2017-07-19 14:48:05.142	email-resources-2.0.0
com.atlassian.streams	2234	2017-07-19 14:48:05.142	date-smn-FI
com.atlassian.applinks.applinks-cors-plugin	2235	2017-07-19 14:48:05.142	internalHostApplication
com.atlassian.confluence.plugins.soy	2236	2017-07-19 14:48:05.142	soy-web-panel-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2237	2017-07-19 14:48:05.142	userSettingsStore
com.atlassian.streams.confluence	2238	2017-07-19 14:48:05.142	date-xh-ZA
confluence.web.resources	2239	2017-07-19 14:48:05.142	master-scripts
com.atlassian.streams	2240	2017-07-19 14:48:05.142	date-js
com.atlassian.analytics.analytics-client	2241	2017-07-19 14:48:05.142	atomicEventSender
com.atlassian.auiplugin	2242	2017-07-19 14:48:05.142	aui-trigger
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2243	2017-07-19 14:48:05.142	templatePathResolver
com.atlassian.confluence.plugins.recently-viewed-plugin	2244	2017-07-19 14:48:05.142	current-user-metadata-provider
com.atlassian.confluence.plugins.confluence-previews	2245	2017-07-19 14:48:05.142	permalink-plugin
com.atlassian.confluence.plugins.confluence-cache-management-plugin	2246	2017-07-19 14:48:05.142	cacheStatisticsRestResource
com.atlassian.confluence.plugins.confluence-easyuser-admin	2247	2017-07-19 14:48:05.142	easyuser
com.atlassian.auiplugin	2248	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-toggle
com.atlassian.auiplugin	2249	2017-07-19 14:48:05.142	aui-experimental-spinner
confluence.sections.page.temp	2250	2017-07-19 14:48:05.142	pageunfavourite
com.atlassian.streams.confluence	2251	2017-07-19 14:48:05.142	date-ro-RO
com.atlassian.streams	2252	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2253	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.confluence.plugins.confluence-daily-summary-email	2254	2017-07-19 14:48:05.142	summaryEmail
com.atlassian.confluence.plugins.gadgets	2255	2017-07-19 14:48:05.142	gadget-directory
com.atlassian.confluence.plugins.confluence-email-resources	2256	2017-07-19 14:48:05.142	is-system-user-function
com.atlassian.applinks.applinks-plugin	2257	2017-07-19 14:48:05.142	readOnlyApplicationLinkService
com.atlassian.auiplugin	2258	2017-07-19 14:48:05.142	jquery-ui-widgets
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2259	2017-07-19 14:48:05.142	pageManager
com.atlassian.confluence.plugins.confluence-software-blueprints	2260	2017-07-19 14:48:05.142	jiraReportConfiguration
confluence.sections.space.admin	2261	2017-07-19 14:48:05.142	stylesheet
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2262	2017-07-19 14:48:05.142	confluenceNotificationJwtIssuer
com.atlassian.confluence.extra.officeconnector	2263	2017-07-19 14:48:05.142	viewxls
confluence.web.resources	2264	2017-07-19 14:48:05.142	syntaxhighlighter-core
com.atlassian.mywork.mywork-confluence-host-plugin	2265	2017-07-19 14:48:05.142	storageFormatCleaner
com.atlassian.confluence.plugins.confluence-software-blueprints	2266	2017-07-19 14:48:05.142	setUserPermission
com.atlassian.confluence.plugins.confluence-email-resources	2267	2017-07-19 14:48:05.142	content-templates-content-highlight-1.0.0
com.atlassian.confluence.plugins.confluence-easyuser-admin	2268	2017-07-19 14:48:05.142	userManager
com.atlassian.streams	2269	2017-07-19 14:48:05.142	date-cs-CZ
com.atlassian.applinks.applinks-plugin	2270	2017-07-19 14:48:05.142	listApplicationLinks
com.atlassian.confluence.plugins.confluence-like	2271	2017-07-19 14:48:05.142	vcacheFactory
com.atlassian.confluence.plugins.confluence-jira-content	2272	2017-07-19 14:48:05.142	show-feature-discovery-flag
com.atlassian.confluence.plugins.confluence-inline-tasks	2273	2017-07-19 14:48:05.142	ao-module
com.atlassian.support.stp	2274	2017-07-19 14:48:05.142	applicationProperties
confluence.listeners.core	2275	2017-07-19 14:48:05.142	bundledcontentremovallistener
com.atlassian.confluence.plugins.confluence-lookandfeel	2276	2017-07-19 14:48:05.142	sitelogo
com.atlassian.auiplugin	2277	2017-07-19 14:48:05.142	aui-restfultable
com.atlassian.oauth.serviceprovider	2278	2017-07-19 14:48:05.142	authorization-resources
com.atlassian.confluence.plugins.confluence-inline-tasks	2279	2017-07-19 14:48:05.142	task-email-notification-template-body
confluence.web.resources	2280	2017-07-19 14:48:05.142	view-my-drafts
com.atlassian.confluence.editor	2281	2017-07-19 14:48:05.142	editor-autocomplete-resources-only
confluence.extra.webdav	2282	2017-07-19 14:48:05.142	webdav.plugin.actions
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2283	2017-07-19 14:48:05.142	page-share-notification
com.atlassian.confluence.plugins.confluence-templates	2284	2017-07-19 14:48:05.142	template-variable-placeholder
com.atlassian.confluence.editor	2285	2017-07-19 14:48:05.142	editor-featured-macro-toc
com.atlassian.confluence.editor	2286	2017-07-19 14:48:05.142	sectionAndColumnListener
com.atlassian.confluence.editor	2287	2017-07-19 14:48:05.142	editor-captcha
confluence.comment.action	2288	2017-07-19 14:48:05.142	remove-comment
com.atlassian.analytics.analytics-client	2289	2017-07-19 14:48:05.142	confluenceProgrammaticAnalyticsDetector
confluence.extra.jira	2290	2017-07-19 14:48:05.142	jirachart-resources
com.atlassian.auiplugin	2291	2017-07-19 14:48:05.142	internal-src-js-aui-header-async
com.atlassian.confluence.plugins.confluence-highlight-actions	2292	2017-07-19 14:48:05.142	eventPublisher
confluence.extra.jira	2293	2017-07-19 14:48:05.142	jira-issues-view-mode-async-resource
confluence.content.action.menu	2294	2017-07-19 14:48:05.142	view-in-hierarchy-page
confluence.listeners.core	2295	2017-07-19 14:48:05.142	referralsListener
com.atlassian.confluence.contributors	2296	2017-07-19 14:48:05.142	PageSearchHelper
com.atlassian.auiplugin	2297	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-mediaQuery
com.atlassian.confluence.plugins.confluence-daily-summary-email	2298	2017-07-19 14:48:05.142	summaryEmailHourlyTrigger
com.atlassian.mywork.mywork-common-plugin	2299	2017-07-19 14:48:05.142	reliability-service
com.atlassian.confluence.editor	2300	2017-07-19 14:48:05.142	commentRenderService
com.atlassian.applinks.applinks-trustedapps-plugin	2301	2017-07-19 14:48:05.142	redirectController
com.atlassian.streams.confluence	2302	2017-07-19 14:48:05.142	date-nl-NL
confluence.extra.impresence2	2303	2017-07-19 14:48:05.142	wildfire-migrator
com.atlassian.confluence.plugins.confluence-onboarding	2304	2017-07-19 14:48:05.142	onboarding-notification-less-users
com.atlassian.confluence.plugins.confluence-space-directory	2305	2017-07-19 14:48:05.142	space-directory-rest
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2306	2017-07-19 14:48:05.142	prettyurls-combined-filter-before-decoration
confluence.user.menu	2307	2017-07-19 14:48:05.142	user-watches
com.atlassian.confluence.plugins.confluence-create-content-plugin	2308	2017-07-19 14:48:05.142	trashManager
com.atlassian.applinks.applinks-basicauth-plugin	2309	2017-07-19 14:48:05.142	authenticationConfigurationManager
com.atlassian.confluence.extra.widgetconnector	2310	2017-07-19 14:48:05.142	slideshare
com.atlassian.streams.confluence	2311	2017-07-19 14:48:05.142	date-dv-MV
com.atlassian.confluence.plugins.expand-macro	2312	2017-07-19 14:48:05.142	expand-macro-core
confluence.listeners.core	2313	2017-07-19 14:48:05.142	imageDetailsListener
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2314	2017-07-19 14:48:05.142	clustering-unavailable-resource
com.atlassian.confluence.plugins.confluence-mentions-plugin	2315	2017-07-19 14:48:05.142	notificationDataService
com.atlassian.confluence.ext.newcode-macro-plugin	2316	2017-07-19 14:48:05.142	newcode-json-actions
confluence.search.mappers.lucene	2317	2017-07-19 14:48:05.142	permittedSpaces
com.atlassian.confluence.ext.newcode-macro-plugin	2318	2017-07-19 14:48:05.142	newcode-admin-link
com.atlassian.confluence.plugins.recently-viewed-plugin	2319	2017-07-19 14:48:05.142	pluginScheduler
com.atlassian.confluence.plugins.confluence-mobile	2320	2017-07-19 14:48:05.142	search-resources
confluence.search.mappers.lucene	2321	2017-07-19 14:48:05.142	textField
com.atlassian.confluence.plugins.confluence-business-blueprints	2322	2017-07-19 14:48:05.142	sharelinks-service-filter
com.atlassian.auiplugin	2323	2017-07-19 14:48:05.142	ajs-html5shim
com.atlassian.confluence.extra.officeconnector	2324	2017-07-19 14:48:05.142	officeConnectorAnalyticsWhitelist
com.atlassian.streams	2325	2017-07-19 14:48:05.142	streamsFeedUriFactory
confluence.macros.multimedia	2326	2017-07-19 14:48:05.142	xsrfTokenGenerator
com.atlassian.confluence.extra.widgetconnector	2327	2017-07-19 14:48:05.142	googlecalender
com.atlassian.confluence.plugins.confluence-inline-tasks	2328	2017-07-19 14:48:05.142	my-tasks-profile-menu-item
confluence.xhtml.wikimarkup	2329	2017-07-19 14:48:05.142	unmigrated-inline-wiki-markup
com.atlassian.confluence.plugins.confluence-sal-plugin	2330	2017-07-19 14:48:05.142	springHostConnectionAccessor
com.atlassian.confluence.plugins.confluence-content-property-storage	2331	2017-07-19 14:48:05.142	spaceproperty-all-by-key
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2332	2017-07-19 14:48:05.142	space-notification-recipients-provider
com.atlassian.applinks.applinks-plugin	2333	2017-07-19 14:48:05.142	fisheyeCrucibleProject
com.atlassian.auiplugin	2334	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-custom-edit-view
com.atlassian.confluence.plugins.confluence-space-blueprints	2335	2017-07-19 14:48:05.142	view-homepage-email-item
com.atlassian.confluence.extra.widgetconnector	2336	2017-07-19 14:48:05.142	ooyala
com.atlassian.confluence.plugins.confluence-content-property-storage	2337	2017-07-19 14:48:05.142	content-property-index-schema
com.atlassian.mywork.mywork-common-plugin	2338	2017-07-19 14:48:05.142	web-resources
com.atlassian.confluence.plugins.confluence-previews	2339	2017-07-19 14:48:05.142	confluence-previews-resources
com.atlassian.auiplugin	2340	2017-07-19 14:48:05.142	aui-internal-state
com.atlassian.confluence.plugins.confluence-user-rest	2341	2017-07-19 14:48:05.142	confluenceUserManagementRest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2342	2017-07-19 14:48:05.142	pluginLicenseEventPublisher
com.atlassian.gadgets.publisher	2343	2017-07-19 14:48:05.142	ajax
com.atlassian.auiplugin	2344	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-skate
com.atlassian.confluence.plugins.confluence-software-project	2345	2017-07-19 14:48:05.142	confluence-software-project-resources
com.atlassian.analytics.analytics-client	2346	2017-07-19 14:48:05.142	userManager
confluence.extra.attachments	2347	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.editor	2348	2017-07-19 14:48:05.142	editor-javascript-resources
com.atlassian.confluence.editor	2349	2017-07-19 14:48:05.142	table-resizable-styles
confluence.macros.advanced	2350	2017-07-19 14:48:05.142	blog-post-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2351	2017-07-19 14:48:05.142	confluenceClusterLockServiceAccessor
com.atlassian.confluence.plugins.confluence-mobile	2352	2017-07-19 14:48:05.142	fly-out-resources
com.atlassian.analytics.analytics-client	2353	2017-07-19 14:48:05.142	loginPageRedirector
confluence.extra.jira	2354	2017-07-19 14:48:05.142	help-dialog-extension
confluence.sections.settings.edit	2355	2017-07-19 14:48:05.142	yoursettings
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2356	2017-07-19 14:48:05.142	staticServerPreferenceKeyProvider
confluence.sections.space.advanced	2357	2017-07-19 14:48:05.142	startwatching
com.atlassian.confluence.plugins.confluence-view-file-macro	2358	2017-07-19 14:48:05.142	view-file-macro-resources
com.atlassian.confluence.plugins.confluence-mobile	2359	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.plugin.notifications.notifications-module	2360	2017-07-19 14:48:05.142	notification-util
com.atlassian.applinks.applinks-basicauth-plugin	2361	2017-07-19 14:48:05.142	applicationLinkService
confluence.search.mappers.lucene	2362	2017-07-19 14:48:05.142	textFieldPrefix
com.atlassian.confluence.plugins.view-storage-format	2363	2017-07-19 14:48:05.142	view-storage-menu-resources
com.atlassian.crowd.embedded.admin	2364	2017-07-19 14:48:05.142	internal-directory-options
confluence.sections.space.tools	2365	2017-07-19 14:48:05.142	export-format-html
com.atlassian.plugins.rest.atlassian-rest-module	2366	2017-07-19 14:48:05.142	rest-container-servlet-filter-REQUEST
com.atlassian.confluence.plugins.confluence-daily-summary-email	2367	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.analytics.analytics-client	2368	2017-07-19 14:48:05.142	whitelist-report
com.atlassian.confluence.plugins.confluence-content-property-storage	2369	2017-07-19 14:48:05.142	spaceproperty-by-key
com.atlassian.confluence.plugins.confluence-request-access-plugin	2370	2017-07-19 14:48:05.142	rest
confluence.web.resources	2371	2017-07-19 14:48:05.142	jquery
com.atlassian.confluence.plugins.confluence-mobile	2372	2017-07-19 14:48:05.142	resourceIdentifierContextUtility
confluence.web.resources	2373	2017-07-19 14:48:05.142	regexes
confluence.search.mappers.lucene	2374	2017-07-19 14:48:05.142	subset
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2375	2017-07-19 14:48:05.142	pluginEnablementService
com.atlassian.confluence.plugins.confluence-email-resources	2376	2017-07-19 14:48:05.142	analyticsRenderContext
confluence.renderer.components	2377	2017-07-19 14:48:05.142	subscript
com.atlassian.streams.confluence	2378	2017-07-19 14:48:05.142	date-th-TH
com.atlassian.confluence.plugins.confluence-email-resources	2379	2017-07-19 14:48:05.142	stop-watching-space-email-batch-footer
com.atlassian.confluence.plugins.confluence-like	2380	2017-07-19 14:48:05.142	confluenceAccessManager
confluence.search.lucene.boosting	2381	2017-07-19 14:48:05.142	boostByModificationDate
confluence.sections.admin	2382	2017-07-19 14:48:05.142	dailybackup
com.atlassian.confluence.plugins.pagetree	2383	2017-07-19 14:48:05.142	pagetree-css-resources
confluence.extractors.core	2384	2017-07-19 14:48:05.142	spaceTypeExtractor
com.atlassian.oauth.serviceprovider.sal	2385	2017-07-19 14:48:05.142	consumerStore
com.atlassian.confluence.editor	2386	2017-07-19 14:48:05.142	page-editor-js
com.atlassian.confluence.plugins.quickreload	2387	2017-07-19 14:48:05.142	quickReloadCaches
com.atlassian.plugins.atlassian-nav-links-plugin	2388	2017-07-19 14:48:05.142	salFeatureManager
com.atlassian.streams.confluence	2389	2017-07-19 14:48:05.142	formatPreferenceProvider
com.atlassian.plugins.base-hipchat-integration-plugin-api	2390	2017-07-19 14:48:05.142	hipchat-notification-type
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2391	2017-07-19 14:48:05.142	licenseReceiptValidator
com.atlassian.confluence.plugins.confluence-inline-tasks	2392	2017-07-19 14:48:05.142	my-tasks-resources
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2393	2017-07-19 14:48:05.142	batching-notification-template
com.atlassian.confluence.plugins.recently-viewed-plugin	2394	2017-07-19 14:48:05.142	purgeHistoryJobTrigger
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2395	2017-07-19 14:48:05.142	licenseHealthCheck
confluence.search.mappers.lucene	2396	2017-07-19 14:48:05.142	siteSearchPermissionsFilter
com.atlassian.confluence.plugins.confluence-knowledge-base	2397	2017-07-19 14:48:05.142	kb-how-to-article
com.atlassian.confluence.editor	2398	2017-07-19 14:48:05.142	editor-unrestricted
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2399	2017-07-19 14:48:05.142	databaseHealthCheck
com.atlassian.plugins.editor	2400	2017-07-19 14:48:05.142	atlassian-rte-css
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2401	2017-07-19 14:48:05.142	licenseManagerProvider
com.atlassian.plugins.atlassian-nav-links-plugin	2402	2017-07-19 14:48:05.142	show-app-switcher-soy-function
confluence.macros.advanced	2403	2017-07-19 14:48:05.142	blogs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2404	2017-07-19 14:48:05.142	applicationLifecycleLogger
com.atlassian.confluence.plugins.confluence-mentions-plugin	2405	2017-07-19 14:48:05.142	mention-created-notification
com.atlassian.confluence.plugins.confluence-like	2406	2017-07-19 14:48:05.142	view-email-content-item
com.atlassian.streams.streams-thirdparty-plugin	2407	2017-07-19 14:48:05.142	streams-thirdparty-ao-module
com.atlassian.confluence.plugins.confluence-onboarding	2408	2017-07-19 14:48:05.142	space-service
confluence.extractors.core	2409	2017-07-19 14:48:05.142	attachmentMetadataExtractor
com.atlassian.auiplugin	2410	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-header-async
com.atlassian.plugins.rest.atlassian-rest-module	2411	2017-07-19 14:48:05.142	rest-servlet-filter
com.atlassian.confluence.plugins.confluence-email-resources	2412	2017-07-19 14:48:05.142	notification-templates-page-created-2.0.0
com.atlassian.mywork.mywork-confluence-host-plugin	2413	2017-07-19 14:48:05.142	loginUriProvider
confluence.extra.information	2414	2017-07-19 14:48:05.142	information-plugin-mobile-styles
com.atlassian.oauth.serviceprovider	2415	2017-07-19 14:48:05.142	helpLinkResolver
com.atlassian.auiplugin	2416	2017-07-19 14:48:05.142	aui-experimental-toolbar2
confluence.search.mappers.lucene	2417	2017-07-19 14:48:05.142	viewUserProfilePermissionsSearchFilter
com.atlassian.confluence.plugins.confluence-like	2418	2017-07-19 14:48:05.142	contentEntityManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2419	2017-07-19 14:48:05.142	userSettingsUpgradeTask
com.atlassian.confluence.plugins.confluence-inline-tasks	2420	2017-07-19 14:48:05.142	space-page-picker-shim
confluence.search.mappers.lucene	2421	2017-07-19 14:48:05.142	hasPersonalSpace
com.atlassian.mywork.mywork-common-plugin	2422	2017-07-19 14:48:05.142	backoff-scheduler
com.atlassian.confluence.plugins.confluence-sal-plugin	2423	2017-07-19 14:48:05.142	localeResolver
com.atlassian.plugins.base-hipchat-integration-plugin-api	2424	2017-07-19 14:48:05.142	legacyTokenCleanup
com.atlassian.auiplugin	2425	2017-07-19 14:48:05.142	jquery-aop
com.atlassian.activeobjects.activeobjects-plugin	2426	2017-07-19 14:48:05.142	web-resources
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2427	2017-07-19 14:48:05.142	pluginUsage
com.atlassian.querylang.confluence-cql-plugin	2428	2017-07-19 14:48:05.142	confluence-cql-plugin-macro-resources
com.atlassian.confluence.plugins.confluence-request-access-plugin	2429	2017-07-19 14:48:05.142	grant-access-notification-transformer
com.atlassian.confluence.keyboardshortcuts	2430	2017-07-19 14:48:05.142	addlabel
com.atlassian.confluence.plugins.confluence-email-resources	2431	2017-07-19 14:48:05.142	mail
confluence.sections.space.tools	2432	2017-07-19 14:48:05.142	spacepermissions
com.atlassian.confluence.plugins.confluence-space-ia	2433	2017-07-19 14:48:05.142	sidebarActions
com.atlassian.streams	2434	2017-07-19 14:48:05.142	xsrfHeaderValidator
com.atlassian.confluence.plugins.confluence-onboarding	2435	2017-07-19 14:48:05.142	init-session-flow-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2436	2017-07-19 14:48:05.142	pluginController
com.atlassian.plugins.atlassian-nav-links-plugin	2437	2017-07-19 14:48:05.142	local-navigation-links
confluence.sections.space.pages	2438	2017-07-19 14:48:05.142	list-recently-updated
com.atlassian.applinks.applinks-trustedapps-plugin	2439	2017-07-19 14:48:05.142	trusted-auth-outbound-configuration
com.atlassian.confluence.plugins.confluence-highlight-actions	2440	2017-07-19 14:48:05.142	xmlParserHelper
com.atlassian.confluence.plugins.confluence-file-notifications	2441	2017-07-19 14:48:05.142	file-notifications-page-link-action
com.atlassian.confluence.plugins.confluence-business-blueprints	2442	2017-07-19 14:48:05.142	sharelinksbookmarklet-actions
confluence.sections.page	2443	2017-07-19 14:48:05.142	view-attachments
com.atlassian.confluence.plugins.confluence-create-content-plugin	2444	2017-07-19 14:48:05.142	user-select2
com.atlassian.confluence.plugins.confluence-mentions-plugin	2445	2017-07-19 14:48:05.142	mentionsExcerptor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2446	2017-07-19 14:48:05.142	roadmap-placeholder-css
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2447	2017-07-19 14:48:05.142	pacClientContextFactory
com.atlassian.confluence.plugins.confluence-link-browser	2448	2017-07-19 14:48:05.142	link-browser-tab-weblink
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2449	2017-07-19 14:48:05.142	batch-section-provider
confluence.extra.confluencerpc	2450	2017-07-19 14:48:05.142	notificationsSoapService
com.atlassian.plugins.atlassian-whitelist-core-plugin	2451	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2452	2017-07-19 14:48:05.142	upm-common-install
com.atlassian.applinks.applinks-basicauth-plugin	2453	2017-07-19 14:48:05.142	applicationProperties
confluence.extra.webdav	2454	2017-07-19 14:48:05.142	microsoftMiniRedirectorAuthenticationHeaderFix
com.atlassian.streams.streams-thirdparty-plugin	2455	2017-07-19 14:48:05.142	sessionManager
confluence.web.resources	2456	2017-07-19 14:48:05.142	create-personal-space
com.atlassian.plugins.atlassian-nav-links-plugin	2457	2017-07-19 14:48:05.142	linked-application-capabilities
com.atlassian.applinks.applinks-trustedapps-plugin	2458	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.confluence.plugins.confluence-browser-metrics	2459	2017-07-19 14:48:05.142	whitelist
com.atlassian.confluence.plugins.view-source	2460	2017-07-19 14:48:05.142	view-source-resources
com.atlassian.confluence.plugins.confluence-mobile	2461	2017-07-19 14:48:05.142	dashboard-resources
confluence.macros.dashboard	2462	2017-07-19 14:48:05.142	create-space-button
com.atlassian.confluence.plugins.confluence-space-ia	2463	2017-07-19 14:48:05.142	space-ia-analytics
com.atlassian.plugins.base-hipchat-integration-plugin	2464	2017-07-19 14:48:05.142	connection-status-resources
confluence.web.resources	2465	2017-07-19 14:48:05.142	quicksearchdropdown
com.atlassian.confluence.plugins.confluence-mentions-plugin	2466	2017-07-19 14:48:05.142	mention-email-comment-link
confluence.macros.advanced	2467	2017-07-19 14:48:05.142	xhtml-excerpt
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2468	2017-07-19 14:48:05.142	upm-purchased-addons
confluence.sections.space.tools	2469	2017-07-19 14:48:05.142	orphan
com.atlassian.applinks.applinks-plugin	2470	2017-07-19 14:48:05.142	applinks-new-ui-creation
confluence.sections.news	2471	2017-07-19 14:48:05.142	view-attachments
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2472	2017-07-19 14:48:05.142	jwtService
com.atlassian.confluence.plugins.confluence-like	2473	2017-07-19 14:48:05.142	mobile-comments-like-resource
confluence.content.action.menu	2474	2017-07-19 14:48:05.142	modify
confluence.listeners.core	2475	2017-07-19 14:48:05.142	label-delete-listener
confluence.extra.attachments	2476	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	2477	2017-07-19 14:48:05.142	content-templates-share-notification-comment-pattern-1.0.0
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2478	2017-07-19 14:48:05.142	clusterMonitoring
com.atlassian.querylang.confluence-cql-plugin	2479	2017-07-19 14:48:05.142	user-field
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2480	2017-07-19 14:48:05.142	page-created-notification-template
confluence.extra.masterdetail	2481	2017-07-19 14:48:05.142	pagePropertiesService
tac.confluence.languages.fi_FI	2482	2017-07-19 14:48:05.142	fi_FI
com.atlassian.confluence.plugins.soy	2483	2017-07-19 14:48:05.142	soyTemplateRenderer
confluence.sections.space.tools	2484	2017-07-19 14:48:05.142	spacedetails
com.atlassian.confluence.plugins.confluence-business-blueprints	2485	2017-07-19 14:48:05.142	sharelinks-urlmacro-editor-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	2486	2017-07-19 14:48:05.142	confluence-team-space-blueprint-resources
com.atlassian.support.stp	2487	2017-07-19 14:48:05.142	pluginSupportInfoAppenderManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2488	2017-07-19 14:48:05.142	mailServerManager
com.atlassian.confluence.editor	2489	2017-07-19 14:48:05.142	vanilla
com.atlassian.streams	2490	2017-07-19 14:48:05.142	date-hr-HR
com.atlassian.confluence.plugins.confluence-mentions-plugin	2491	2017-07-19 14:48:05.142	mention-email-view-blogpost-link
com.atlassian.confluence.plugins.confluence-cache-management-plugin	2492	2017-07-19 14:48:05.142	cacheStatisticsRestResource-filter
com.atlassian.confluence.plugins.confluence-email-resources	2493	2017-07-19 14:48:05.142	defaultNotificationUserService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2494	2017-07-19 14:48:05.142	bandanaManager
com.atlassian.confluence.extra.widgetconnector	2495	2017-07-19 14:48:05.142	vimeo
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2496	2017-07-19 14:48:05.142	blogpost-created-notification-template-body
com.atlassian.confluence.plugins.confluence-monitoring	2497	2017-07-19 14:48:05.142	live-activity
com.atlassian.plugins.atlassian-nav-links-plugin	2498	2017-07-19 14:48:05.142	plugin-module-type-based-navigation-link-repository
com.atlassian.confluence.plugins.gadgets.spi	2499	2017-07-19 14:48:05.142	gadgetSpecIdGenerator
com.atlassian.confluence.extra.officeconnector	2500	2017-07-19 14:48:05.142	preview
confluence.sections.space.tools	2501	2017-07-19 14:48:05.142	watch-space
com.atlassian.confluence.plugins.search.confluence-search	2502	2017-07-19 14:48:05.142	searchQuerySessionFilter
com.atlassian.confluence.plugins.confluence-view-file-macro	2503	2017-07-19 14:48:05.142	view-file-macro-embedded-file-view-soy-resources
com.atlassian.applinks.applinks-plugin	2504	2017-07-19 14:48:05.142	refapp
com.atlassian.auiplugin	2505	2017-07-19 14:48:05.142	tabs
com.atlassian.auiplugin	2506	2017-07-19 14:48:05.142	keycode
com.atlassian.auiplugin	2507	2017-07-19 14:48:05.142	aui-tipsy
com.atlassian.confluence.plugins.templates-framework	2508	2017-07-19 14:48:05.142	importtemplates
com.atlassian.confluence.plugins.confluence-create-content-plugin	2509	2017-07-19 14:48:05.142	editor-blueprint-resources
com.atlassian.confluence.plugins.confluence-labels	2510	2017-07-19 14:48:05.142	labels-resources-server
com.atlassian.auiplugin	2511	2017-07-19 14:48:05.142	aui-form-notification
com.atlassian.confluence.plugins.confluence-email-resources	2512	2017-07-19 14:48:05.142	notification-templates-page-trashed-2.0.0
com.atlassian.soy.soy-template-plugin	2513	2017-07-19 14:48:05.142	helpUrlFunction
com.atlassian.confluence.plugins.confluence-jira-content	2514	2017-07-19 14:48:05.142	create-jira-content-services
com.atlassian.confluence.plugins.confluence-inline-comments	2515	2017-07-19 14:48:05.142	app
confluence.search.mappers.lucene	2516	2017-07-19 14:48:05.142	anonymousUserInfoSearchFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2517	2017-07-19 14:48:05.142	sysPersisted
com.atlassian.streams.confluence	2518	2017-07-19 14:48:05.142	date-smj-NO
com.atlassian.streams	2519	2017-07-19 14:48:05.142	date-it-CH
com.atlassian.confluence.plugins.confluence-email-resources	2520	2017-07-19 14:48:05.142	get-attachment-download-url-function
com.atlassian.confluence.plugins.confluence-templates	2521	2017-07-19 14:48:05.142	globaltemplates
com.atlassian.auiplugin	2522	2017-07-19 14:48:05.142	jquery-all
com.atlassian.streams.confluence	2523	2017-07-19 14:48:05.142	date-fr-MC
com.atlassian.confluence.plugins.confluence-inline-comments	2524	2017-07-19 14:48:05.142	create-comment-view
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	2525	2017-07-19 14:48:05.142	experiencecanvas-blueprint
com.atlassian.gadgets.publisher	2526	2017-07-19 14:48:05.142	publisher-plugin-rest-endpoints-filter
com.atlassian.auiplugin	2527	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-jquery
confluence.listeners.core	2528	2017-07-19 14:48:05.142	clusterWideReindexEventListener
com.atlassian.streams.confluence	2529	2017-07-19 14:48:05.142	date-nl-BE
com.atlassian.oauth.serviceprovider	2530	2017-07-19 14:48:05.142	oauthAccessTokenServlet
confluence.analytics.whitelist	2531	2017-07-19 14:48:05.142	confluenceCoreAnalyticsWhitelist
com.atlassian.streams.confluence	2532	2017-07-19 14:48:05.142	date-fr-LU
com.atlassian.streams	2533	2017-07-19 14:48:05.142	requestFactory
com.atlassian.streams	2534	2017-07-19 14:48:05.142	streamsWallboardWebResources
com.atlassian.confluence.editor	2535	2017-07-19 14:48:05.142	editor-support-util
com.atlassian.auiplugin	2536	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-forms
confluence.web.resources	2537	2017-07-19 14:48:05.142	support-utility
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2538	2017-07-19 14:48:05.142	opt-in-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2539	2017-07-19 14:48:05.142	blogpost-edited-hipchat-notification-template
com.atlassian.confluence.editor	2540	2017-07-19 14:48:05.142	attachments-insert-utils-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	2541	2017-07-19 14:48:05.142	transactionalExecutorFactory
com.atlassian.confluence.plugins.confluence-templates	2542	2017-07-19 14:48:05.142	confluence-templates-action
confluence.sections.admin.header	2543	2017-07-19 14:48:05.142	admin-plugins
com.atlassian.confluence.plugins.status-macro	2544	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2545	2017-07-19 14:48:05.142	roleBasedLicensingPluginService
com.atlassian.plugins.rest.atlassian-rest-module	2546	2017-07-19 14:48:05.142	cors-defaults
confluence.content.action.menu	2547	2017-07-19 14:48:05.142	move-blogpost
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2548	2017-07-19 14:48:05.142	pluginsEnablementStateStore
com.atlassian.confluence.plugins.share-page	2549	2017-07-19 14:48:05.142	share-draft-email-notification-template
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2550	2017-07-19 14:48:05.142	comment-edited-notification
com.atlassian.streams	2551	2017-07-19 14:48:05.142	date-it-IT
com.atlassian.applinks.applinks-oauth-plugin	2552	2017-07-19 14:48:05.142	add-consumer-servlet
com.atlassian.confluence.plugins.confluence-inline-tasks	2553	2017-07-19 14:48:05.142	tasks-report-resources
com.atlassian.streams.confluence	2554	2017-07-19 14:48:05.142	date-bg-BG
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2555	2017-07-19 14:48:05.142	hipChatSpaceDiscovery
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	2556	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.plugins.jquery	2557	2017-07-19 14:48:05.142	darkFeatureManager
com.atlassian.plugins.atlassian-nav-links-plugin	2558	2017-07-19 14:48:05.142	navigation-capability-resource-forward
com.atlassian.streams	2559	2017-07-19 14:48:05.142	projectKeyValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2560	2017-07-19 14:48:05.142	refimpl-upm-osgi-menu
com.atlassian.plugins.base-hipchat-integration-plugin	2561	2017-07-19 14:48:05.142	hipchat-configuration-panel-js
confluence.listeners.core	2562	2017-07-19 14:48:05.142	commentNotificationsListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2563	2017-07-19 14:48:05.142	confluenceGroupManager
com.atlassian.confluence.plugins.confluence-edge-index	2564	2017-07-19 14:48:05.142	nestedCommentCountQuery
com.atlassian.streams	2565	2017-07-19 14:48:05.142	date-ta-IN
com.atlassian.confluence.plugins.confluence-spaces	2566	2017-07-19 14:48:05.142	resources
com.atlassian.confluence.plugins.confluence-email-resources	2567	2017-07-19 14:48:05.142	template-utils-avatar-name-table-1.0.0
com.atlassian.confluence.plugins.confluence-email-resources	2568	2017-07-19 14:48:05.142	manage-user-email-footer-item
com.atlassian.plugins.atlassian-whitelist-core-plugin	2569	2017-07-19 14:48:05.142	userManager
confluence.comment.action	2570	2017-07-19 14:48:05.142	reply-comment
com.atlassian.confluence.plugins.confluence-create-content-plugin	2571	2017-07-19 14:48:05.142	templateChildCreatorListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2572	2017-07-19 14:48:05.142	pluginNotificationService
com.atlassian.confluence.plugins.confluence-ui-rest	2573	2017-07-19 14:48:05.142	ui-rest
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	2574	2017-07-19 14:48:05.142	util
com.atlassian.confluence.extra.widgetconnector	2575	2017-07-19 14:48:05.142	episodic
com.atlassian.confluence.plugins.search.confluence-search	2576	2017-07-19 14:48:05.142	confluenceV3SearchWhiteList
com.atlassian.confluence.plugins.confluence-file-notifications	2577	2017-07-19 14:48:05.142	file-content-mention-payload-transformer
com.atlassian.querylang.confluence-cql-plugin	2578	2017-07-19 14:48:05.142	id-field
confluence.macros.advanced	2579	2017-07-19 14:48:05.142	index-macro-resources
com.atlassian.confluence.plugins.gadgets	2580	2017-07-19 14:48:05.142	wikiStyleRenderer
com.atlassian.plugins.atlassian-nav-links-plugin	2581	2017-07-19 14:48:05.142	absolute-url-factory
com.atlassian.plugins.atlassian-nps-plugin	2582	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.plugins.rest.atlassian-rest-module	2583	2017-07-19 14:48:05.142	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2584	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.confluence.plugins.confluence-license-banner	2585	2017-07-19 14:48:05.142	soy-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	2586	2017-07-19 14:48:05.142	DocumentationSpaceEventListener
com.atlassian.applinks.applinks-plugin	2587	2017-07-19 14:48:05.142	applinks-wizard
com.atlassian.auiplugin	2588	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-version
com.atlassian.plugins.atlassian-project-creation-plugin	2589	2017-07-19 14:48:05.142	project-crud-rest-filter
com.atlassian.streams.confluence	2590	2017-07-19 14:48:05.142	date-te-IN
com.atlassian.confluence.plugins.confluence-onboarding	2591	2017-07-19 14:48:05.142	spaceManager
com.atlassian.confluence.plugins.confluence-paste	2592	2017-07-19 14:48:05.142	restEndPoint
com.atlassian.analytics.analytics-client	2593	2017-07-19 14:48:05.142	pluginAccessor
confluence.extra.masterdetail	2594	2017-07-19 14:48:05.142	createButtonService
com.atlassian.applinks.applinks-plugin	2595	2017-07-19 14:48:05.142	applicationLinkRequestFactoryFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2596	2017-07-19 14:48:05.142	noOpPluginControlHandler
com.atlassian.confluence.plugins.confluence-email-resources	2597	2017-07-19 14:48:05.142	chrome-template-html-header-1.0.0
com.atlassian.confluence.plugins.confluence-highlight-actions	2598	2017-07-19 14:48:05.142	xmlModificationValidator
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	2599	2017-07-19 14:48:05.142	emoticonStorageUnmarshaller
com.atlassian.streams.confluence	2600	2017-07-19 14:48:05.142	date-smj-SE
com.atlassian.support.stp	2601	2017-07-19 14:48:05.142	stp-rest-filter
com.atlassian.confluence.keyboardshortcuts	2602	2017-07-19 14:48:05.142	confluence-tinymce-keyboard-shortcuts
com.atlassian.plugin.notifications.notifications-module	2603	2017-07-19 14:48:05.142	serverManager
com.atlassian.mywork.mywork-confluence-host-plugin	2604	2017-07-19 14:48:05.142	mw-miniview
confluence.sections.space.admin	2605	2017-07-19 14:48:05.142	addons
confluence.web.resources	2606	2017-07-19 14:48:05.142	avataror
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	2607	2017-07-19 14:48:05.142	ao-module
com.atlassian.applinks.applinks-plugin	2608	2017-07-19 14:48:05.142	authenticationConfigurator
confluence.extractors.core	2934	2017-07-19 14:48:05.142	lastModifierName Extractor
com.atlassian.activeobjects.confluence.spi	2609	2017-07-19 14:48:05.142	initExecutorServiceProvider
com.atlassian.confluence.plugins.confluence-mobile	2610	2017-07-19 14:48:05.142	mobileAnalyticsWhitelist
com.atlassian.applinks.applinks-plugin	2611	2017-07-19 14:48:05.142	entityLinkClient
com.atlassian.plugins.base-hipchat-integration-plugin-api	2612	2017-07-19 14:48:05.142	ajs-amd
com.atlassian.confluence.plugins.confluence-mobile	2613	2017-07-19 14:48:05.142	macro-resources
com.atlassian.integration.jira.jira-integration-plugin	2614	2017-07-19 14:48:05.142	applicationProperties
confluence.listeners.core	2615	2017-07-19 14:48:05.142	clusterUpdateJobScheduleListener
confluence.extra.attachments	2616	2017-07-19 14:48:05.142	attachments-xhtml
com.atlassian.mywork.mywork-confluence-provider-plugin	2617	2017-07-19 14:48:05.142	internalHostApplication
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2618	2017-07-19 14:48:05.142	comment-edited-notification-template
confluence.web.resources	2619	2017-07-19 14:48:05.142	trigger
com.atlassian.confluence.plugins.confluence-software-blueprints	2620	2017-07-19 14:48:05.142	jirareports-item
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	2621	2017-07-19 14:48:05.142	bulkOperationsWhitelist
com.atlassian.auiplugin	2622	2017-07-19 14:48:05.142	aui-date-picker
com.atlassian.streams.streams-thirdparty-plugin	2623	2017-07-19 14:48:05.142	entityAssociationProviders
com.atlassian.confluence.ext.newcode-macro-plugin	2624	2017-07-19 14:48:05.142	newcode-xhtml
confluence.lifecycle.core	2625	2017-07-19 14:48:05.142	dblowercheck
confluence.extra.dynamictasklist2	2626	2017-07-19 14:48:05.142	v2-tasklist
confluence.macros.dashboard	2627	2017-07-19 14:48:05.142	popular-tab
com.atlassian.gadgets.publisher	2628	2017-07-19 14:48:05.142	publisher-plugin-rest-endpoints
com.atlassian.confluence.plugins.confluence-space-ia	2629	2017-07-19 14:48:05.142	rest-filter
com.atlassian.mywork.mywork-common-plugin	2630	2017-07-19 14:48:05.142	my-work-client-rest-filter
com.atlassian.streams.confluence	2631	2017-07-19 14:48:05.142	followManager
confluence.content.action.menu	2632	2017-07-19 14:48:05.142	remove-blogpost
confluence.extra.confluencerpc	2633	2017-07-19 14:48:05.142	confluence-soap-2
com.atlassian.confluence.plugins.confluence-view-file-macro	2634	2017-07-19 14:48:05.142	view-file
com.atlassian.confluence.plugins.confluence-sal-plugin	2635	2017-07-19 14:48:05.142	helpPathResolver
com.atlassian.plugin.notifications.notifications-module	2636	2017-07-19 14:48:05.142	addNotificationServerServlet
com.atlassian.oauth.consumer.sal	2637	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.confluence.plugins.status-macro	2638	2017-07-19 14:48:05.142	editor-featured-macro-status
com.atlassian.confluence.plugins.search.confluence-search	2639	2017-07-19 14:48:05.142	spanQueryBuilder
com.atlassian.confluence.plugins.recently-viewed-plugin	2640	2017-07-19 14:48:05.142	contentViewedListener
confluence.web.resources	2641	2017-07-19 14:48:05.142	select2
com.atlassian.confluence.plugins.confluence-content-property-storage	2642	2017-07-19 14:48:05.142	contentService
com.atlassian.plugins.atlassian-help-tips	2643	2017-07-19 14:48:05.142	tx-processor
com.atlassian.confluence.plugins.confluence-business-blueprints	2644	2017-07-19 14:48:05.142	decisions-index-page
com.atlassian.confluence.extra.widgetconnector	2645	2017-07-19 14:48:05.142	shareacrobat
com.atlassian.confluence.plugins.dialog-wizard	2646	2017-07-19 14:48:05.142	dialog-wizard-resources
com.atlassian.mywork.mywork-common-plugin	2647	2017-07-19 14:48:05.142	systemStatusService
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2648	2017-07-19 14:48:05.142	operatingSystemInfo
com.atlassian.confluence.plugins.quickreload	2649	2017-07-19 14:48:05.142	renderer
com.atlassian.gadgets.opensocial	2650	2017-07-19 14:48:05.142	authentication-servlet-filter
com.atlassian.applinks.applinks-oauth-plugin	2651	2017-07-19 14:48:05.142	TwoLeggedOAuthAuthenticatorProviderPluginModule
com.atlassian.streams.streams-thirdparty-plugin	2652	2017-07-19 14:48:05.142	activityService
com.atlassian.streams	2653	2017-07-19 14:48:05.142	defaultClock
com.atlassian.mywork.mywork-common-plugin	2654	2017-07-19 14:48:05.142	application-link-rescheduler
com.atlassian.mywork.mywork-confluence-host-plugin	2655	2017-07-19 14:48:05.142	workday-email-resources
com.atlassian.confluence.plugins.confluence-request-access-plugin	2656	2017-07-19 14:48:05.142	pageNotPermittedPanel
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	2657	2017-07-19 14:48:05.142	bloggingUtils
com.atlassian.streams.confluence	2658	2017-07-19 14:48:05.142	date-fr-FR
com.atlassian.mywork.mywork-confluence-host-plugin	2659	2017-07-19 14:48:05.142	authenticationListener
com.atlassian.support.healthcheck.support-healthcheck-plugin	2660	2017-07-19 14:48:05.142	supportHealthCheckRest
com.atlassian.analytics.analytics-client	2661	2017-07-19 14:48:05.142	userPermissionsHelper
com.atlassian.confluence.plugins.confluence-files	2662	2017-07-19 14:48:05.142	unresolvedCommentCountOnFileVersions
confluence.sections.space.advanced	2663	2017-07-19 14:48:05.142	spacedetails-personal
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2664	2017-07-19 14:48:05.142	spaceConfigurationAction2
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2665	2017-07-19 14:48:05.142	initialise-metrics-collection
confluence.sections.page.temp	2666	2017-07-19 14:48:05.142	edit-blogpost
confluence.web.panels	2667	2017-07-19 14:48:05.142	confluence-userprofile-info
com.atlassian.oauth.serviceprovider	2668	2017-07-19 14:48:05.142	basicConsumerInformationRenderer
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2669	2017-07-19 14:48:05.142	user-settings-panel-resources
com.atlassian.streams.confluence	2670	2017-07-19 14:48:05.142	date-sr-Latn-CS
com.atlassian.confluence.plugins.confluence-business-blueprints	2671	2017-07-19 14:48:05.142	autoconvert-any-link
com.atlassian.streams	2672	2017-07-19 14:48:05.142	date-ns-ZA
com.atlassian.plugins.base-hipchat-integration-plugin	2673	2017-07-19 14:48:05.142	configureServlet
confluence.sections.admin	2674	2017-07-19 14:48:05.142	generalconfiguration
confluence.sections.profile	2675	2017-07-19 14:48:05.142	follow-user
org.randombits.confluence.toc	2676	2017-07-19 14:48:05.142	toc-plugin-analytics
confluence.web.resources	2677	2017-07-19 14:48:05.142	jquery-progressbar
com.atlassian.confluence.extra.widgetconnector	2678	2017-07-19 14:48:05.142	backtype
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2679	2017-07-19 14:48:05.142	licenseHandlerContextItem
com.atlassian.auiplugin	2680	2017-07-19 14:48:05.142	aui-toggle
com.atlassian.confluence.plugins.confluence-inline-tasks	2681	2017-07-19 14:48:05.142	editor-autocomplete-date-js
com.atlassian.plugins.atlassian-help-tips	2682	2017-07-19 14:48:05.142	userManager
com.atlassian.confluence.plugins.confluence-space-ia	2683	2017-07-19 14:48:05.142	space-tools-reorder-pages
com.atlassian.confluence.plugins.confluence-link-browser	2684	2017-07-19 14:48:05.142	link-browser-web-items
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2685	2017-07-19 14:48:05.142	payload-processor
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	2686	2017-07-19 14:48:05.142	emoticonEditorToStorageTransformer
confluence.sections.space.tools	2687	2017-07-19 14:48:05.142	formats
com.atlassian.plugins.atlassian-plugins-webresource-plugin	2688	2017-07-19 14:48:05.142	data
confluence.macros.advanced	2689	2017-07-19 14:48:05.142	blogposts
com.atlassian.confluence.plugins.confluence-email-resources	2690	2017-07-19 14:48:05.142	natto-function
confluence.sections.space.admin	2691	2017-07-19 14:48:05.142	choosetheme
com.atlassian.support.stp	2692	2017-07-19 14:48:05.142	env-support-info
com.atlassian.confluence.plugins.confluence-email-resources	2693	2017-07-19 14:48:05.142	content-templates
com.atlassian.confluence.plugins.confluence-software-blueprints	2694	2017-07-19 14:48:05.142	jirareports-services
com.atlassian.applinks.applinks-trustedapps-plugin	2695	2017-07-19 14:48:05.142	callbackParameter
confluence.search.mappers.lucene	2696	2017-07-19 14:48:05.142	matchNoDocsFilter
com.atlassian.support.stp	2697	2017-07-19 14:48:05.142	support-info
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2698	2017-07-19 14:48:05.142	uriBuilder
com.atlassian.confluence.plugins.soy	2699	2017-07-19 14:48:05.142	soy-doclink-function
confluence.macro.metadata.provider	2700	2017-07-19 14:48:05.142	macro-browser-metadata-resources
com.atlassian.confluence.plugins.confluence-email-resources	2701	2017-07-19 14:48:05.142	template-utils-user-link-1.0.0
com.atlassian.plugins.base-hipchat-integration-plugin-api	2702	2017-07-19 14:48:05.142	jquery-amd
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2703	2017-07-19 14:48:05.142	helpPathResolver
confluence.web.resources	2704	2017-07-19 14:48:05.142	analytics-support
com.atlassian.auiplugin	2705	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-document-observer
com.atlassian.querylang.confluence-cql-plugin	2706	2017-07-19 14:48:05.142	contributor-field
com.atlassian.confluence.plugins.share-page	2707	2017-07-19 14:48:05.142	share-page-email-notification-template-body
com.atlassian.confluence.keyboardshortcuts	2708	2017-07-19 14:48:05.142	tinymce.save.editor.page
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2709	2017-07-19 14:48:05.142	userAuthenticationDecorator
com.atlassian.oauth.consumer.sal	2710	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2711	2017-07-19 14:48:05.142	blogpost-created-notification
com.atlassian.support.stp	2712	2017-07-19 14:48:05.142	pluginScheduler
com.atlassian.plugins.base-hipchat-integration-plugin	2713	2017-07-19 14:48:05.142	room-deleted
com.atlassian.confluence.plugins.confluence-edge-index	2714	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2715	2017-07-19 14:48:05.142	hipChatDiscoveryIsSpaceAdmin
com.atlassian.streams	2716	2017-07-19 14:48:05.142	date-pl-PL
com.atlassian.confluence.extra.officeconnector	2717	2017-07-19 14:48:05.142	cleanupTrigger
com.atlassian.applinks.applinks-plugin	2718	2017-07-19 14:48:05.142	applicationPropertiesContextItem
com.atlassian.plugins.authentication.atlassian-authentication-plugin	2719	2017-07-19 14:48:05.142	atlassian-authentication-whitelist
com.atlassian.confluence.plugins.gadgets	2720	2017-07-19 14:48:05.142	gadget-admin
com.atlassian.plugins.atlassian-nav-links-plugin	2721	2017-07-19 14:48:05.142	host-product-login-page
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2722	2017-07-19 14:48:05.142	viewpluginusage
com.atlassian.confluence.plugins.status-macro	2723	2017-07-19 14:48:05.142	status-legacy
com.atlassian.support.healthcheck.support-healthcheck-plugin	2724	2017-07-19 14:48:05.142	notificationService
com.atlassian.confluence.plugins.confluence-edge-index	2725	2017-07-19 14:48:05.142	like.create
com.atlassian.oauth.serviceprovider	2726	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.confluence.plugins.confluence-onboarding	2727	2017-07-19 14:48:05.142	draftsTransitionHelper
confluence.extra.masterdetail	2728	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.applinks.applinks-oauth-plugin	2729	2017-07-19 14:48:05.142	oauth-auth
confluence.macros.advanced	2730	2017-07-19 14:48:05.142	xhtml-include
com.atlassian.auiplugin	2731	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-set-visible
confluence.macros.advanced	2732	2017-07-19 14:48:05.142	blog-posts
com.atlassian.confluence.plugins.confluence-mentions-plugin	2733	2017-07-19 14:48:05.142	mention-recipients-provider
com.atlassian.confluence.plugins.watch-button	2734	2017-07-19 14:48:05.142	watch-resources
com.atlassian.applinks.applinks-basicauth-plugin	2735	2017-07-19 14:48:05.142	BasicAuthenticationProviderPluginModule
confluence.macros.basic	2736	2017-07-19 14:48:05.142	quote
com.atlassian.confluence.plugins.search.confluence-search	2737	2017-07-19 14:48:05.142	searchService
com.atlassian.streams	2738	2017-07-19 14:48:05.142	date-kok-IN
confluence.macros.advanced	2739	2017-07-19 14:48:05.142	doc
com.atlassian.applinks.applinks-oauth-plugin	2740	2017-07-19 14:48:05.142	adminUIAuthenticator
com.atlassian.confluence.plugins.confluence-email-resources	2741	2017-07-19 14:48:05.142	content-templates-users-involved-pattern-2.0.0
com.atlassian.querylang.confluence-cql-plugin	2742	2017-07-19 14:48:05.142	creator-field
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2743	2017-07-19 14:48:05.142	userManager
com.atlassian.plugins.atlassian-whitelist-core-plugin	2744	2017-07-19 14:48:05.142	ao-module
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2745	2017-07-19 14:48:05.142	tabVisibilityContextItem
com.atlassian.confluence.plugins.search.confluence-search	2746	2017-07-19 14:48:05.142	boostingQueryFactory
com.atlassian.mywork.mywork-common-plugin	2747	2017-07-19 14:48:05.142	pluginEventManager
com.atlassian.plugins.base-hipchat-integration-plugin	2748	2017-07-19 14:48:05.142	hipchat-require-resource-by-context-function
com.atlassian.confluence.plugins.confluence-daily-summary-email	2749	2017-07-19 14:48:05.142	SummaryEmailNotificationManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2750	2017-07-19 14:48:05.142	jwtTokenFactory
com.atlassian.confluence.plugins.confluence-onboarding	2751	2017-07-19 14:48:05.142	confluenceAccessManager
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	2752	2017-07-19 14:48:05.142	settingsManager
com.atlassian.confluence.plugins.confluence-inline-comments	2753	2017-07-19 14:48:05.142	confluence-inline-comments-rest
confluence.extra.chart	2754	2017-07-19 14:48:05.142	com.atlassian.confluence.extra.chart.name
com.atlassian.mywork.mywork-confluence-host-plugin	2755	2017-07-19 14:48:05.142	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	2756	2017-07-19 14:48:05.142	notificationEmailFactory
com.atlassian.confluence.contributors	2757	2017-07-19 14:48:05.142	contributors-summary-xhtml
confluence.admin.user	2758	2017-07-19 14:48:05.142	browse-users-tab-create
com.atlassian.confluence.plugins.search.confluence-search	2759	2017-07-19 14:48:05.142	siteSearch-query-mapper
com.atlassian.confluence.plugins.confluence-space-directory	2760	2017-07-19 14:48:05.142	spaceDirectoryActions
com.atlassian.applinks.applinks-plugin	2761	2017-07-19 14:48:05.142	list-application-entity-action
com.atlassian.confluence.plugins.confluence-mobile	2762	2017-07-19 14:48:05.142	app-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	2763	2017-07-19 14:48:05.142	avatar
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2764	2017-07-19 14:48:05.142	instanceTopologyService
com.atlassian.confluence.plugins.confluence-license-rest	2765	2017-07-19 14:48:05.142	clusterManager
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	2766	2017-07-19 14:48:05.142	confluenceAccessManager
com.atlassian.confluence.editor	2767	2017-07-19 14:48:05.142	editor-page-restricted
com.atlassian.plugins.atlassian-nav-links-plugin	2768	2017-07-19 14:48:05.142	clock
confluence.extra.impresence2	2769	2017-07-19 14:48:05.142	yahoo-xhtml
com.atlassian.mywork.mywork-common-plugin	2770	2017-07-19 14:48:05.142	registration-service
com.atlassian.streams	2771	2017-07-19 14:48:05.142	date-uz-Latn-UZ
com.atlassian.confluence.plugins.confluence-onboarding	2772	2017-07-19 14:48:05.142	contentBlueprintManager
confluence.comment.action	2773	2017-07-19 14:48:05.142	primary
confluence.extra.confluencerpc	2774	2017-07-19 14:48:05.142	xhtmlRpcHandler
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2775	2017-07-19 14:48:05.142	system-information
confluence.sections.admin	2776	2017-07-19 14:48:05.142	loglevel
com.atlassian.confluence.plugins.confluence-inline-tasks	2777	2017-07-19 14:48:05.142	inline-tasks-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2778	2017-07-19 14:48:05.142	blogpost-trashed-notification
com.atlassian.confluence.plugins.confluence-quicknav	2779	2017-07-19 14:48:05.142	quick-nav-rest
confluence.extractors.core	2780	2017-07-19 14:48:05.142	genericExtractor
confluence.user.menu	2781	2017-07-19 14:48:05.142	user-preferences
com.atlassian.confluence.plugins.reliablesave	2782	2017-07-19 14:48:05.142	reliable-save
com.atlassian.confluence.plugins.confluence-create-content-plugin	2783	2017-07-19 14:48:05.142	blueprint
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2784	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.applinks.applinks-plugin	2785	2017-07-19 14:48:05.142	xsrfTokenValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2786	2017-07-19 14:48:05.142	bundledUpdateInfoStore
com.atlassian.confluence.editor	2787	2017-07-19 14:48:05.142	editor-core-resources
com.atlassian.streams.confluence	2788	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.confluence.plugins.confluence-files	2789	2017-07-19 14:48:05.142	confluenceFileRest-filter
com.atlassian.confluence.plugins.confluence-email-resources	2790	2017-07-19 14:48:05.142	siteLogoManager
com.atlassian.streams.streams-thirdparty-plugin	2791	2017-07-19 14:48:05.142	thirdPartyStreamsEntryBuilder
com.atlassian.confluence.extra.officeconnector	2792	2017-07-19 14:48:05.142	macro-browser-smart-fields
com.atlassian.auiplugin	2793	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-backbone-backbone
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2794	2017-07-19 14:48:05.142	soy-templates
confluence.web.resources	2795	2017-07-19 14:48:05.142	keyboard
confluence.sections.help	2796	2017-07-19 14:48:05.142	feedbuilder
com.atlassian.confluence.plugins.confluence-email-tracker	2797	2017-07-19 14:48:05.142	emailTrackerService
com.atlassian.plugins.authentication.atlassian-authentication-plugin	2798	2017-07-19 14:48:05.142	authentication-plugin-ao
com.atlassian.plugins.base-hipchat-integration-plugin	2799	2017-07-19 14:48:05.142	configurationPanel
confluence.extra.livesearch	2800	2017-07-19 14:48:05.142	livesearch-macro-web-resources
com.atlassian.confluence.plugins.confluence-space-directory	2801	2017-07-19 14:48:05.142	space-directory-templates
com.atlassian.querylang.confluence-cql-plugin	2802	2017-07-19 14:48:05.142	user-query-mapper
com.atlassian.streams	2803	2017-07-19 14:48:05.142	date-et-EE
com.atlassian.auiplugin	2804	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-format
com.atlassian.streams.confluence	2805	2017-07-19 14:48:05.142	date-ca-ES
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2806	2017-07-19 14:48:05.142	synchrony-content
com.atlassian.support.healthcheck.support-healthcheck-plugin	2807	2017-07-19 14:48:05.142	healthCheckTimeoutListener
com.atlassian.streams.streams-thirdparty-plugin	2808	2017-07-19 14:48:05.142	uriBuilder
confluence.web.resources	2809	2017-07-19 14:48:05.142	backupadmin
com.atlassian.confluence.plugins.confluence-inline-comments	2810	2017-07-19 14:48:05.142	inline-comment-created-mail-batch-notification-processor
com.atlassian.confluence.plugins.confluence-daily-summary-email	2811	2017-07-19 14:48:05.142	daily-summary-admin-item
com.atlassian.plugins.atlassian-nav-links-plugin	2812	2017-07-19 14:48:05.142	activeObjects
com.atlassian.plugin.jslibs	2813	2017-07-19 14:48:05.142	skate-0.14.0
com.atlassian.confluence.plugins.confluence-business-blueprints	2814	2017-07-19 14:48:05.142	meeting-notes-index
com.atlassian.plugins.atlassian-nav-links-plugin	2815	2017-07-19 14:48:05.142	host-application
com.atlassian.confluence.plugins.confluence-business-blueprints	2816	2017-07-19 14:48:05.142	meeting-notes-page
com.atlassian.mywork.mywork-common-plugin	2817	2017-07-19 14:48:05.142	servingRequestsFilter
com.atlassian.auiplugin	2818	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-has-touch
com.atlassian.confluence.plugins.search.confluence-search	2819	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.extra.flyingpdf	2820	2017-07-19 14:48:05.142	customFontListener
confluence.web.resources	2821	2017-07-19 14:48:05.142	auditlogclient
com.atlassian.confluence.plugins.confluence-file-notifications	2822	2017-07-19 14:48:05.142	file-content-icons
confluence.web.resources	2823	2017-07-19 14:48:05.142	meta
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2824	2017-07-19 14:48:05.142	roadmap-models
com.atlassian.confluence.editor	2825	2017-07-19 14:48:05.142	page-editor-message
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2826	2017-07-19 14:48:05.142	follower-added-hipchat-notification-template
com.atlassian.support.stp	2827	2017-07-19 14:48:05.142	scheduleFactory
confluence.web.resources	2828	2017-07-19 14:48:05.142	breadcrumbs
com.atlassian.confluence.plugins.confluence-mobile	2829	2017-07-19 14:48:05.142	localeManager
com.atlassian.confluence.plugins.soy	2830	2017-07-19 14:48:05.142	soy-import-resource-function
com.atlassian.streams.confluence	2831	2017-07-19 14:48:05.142	date-lv-LV
confluence.listeners.core	2832	2017-07-19 14:48:05.142	plugin-logging-listener
com.atlassian.confluence.plugins.confluence-highlight-actions	2833	2017-07-19 14:48:05.142	tableModificationValidator
com.atlassian.streams.confluence	2834	2017-07-19 14:48:05.142	date-ur-PK
com.atlassian.confluence.plugins.confluence-content-property-storage	2835	2017-07-19 14:48:05.142	contentPropertyIndexSchemaManager
confluence.listeners.core	2836	2017-07-19 14:48:05.142	page-hierarchy-logging-listener
com.atlassian.oauth.serviceprovider.sal	2837	2017-07-19 14:48:05.142	tokenStore
com.atlassian.plugin.notifications.notifications-module	2838	2017-07-19 14:48:05.142	notificationSchemeService
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2839	2017-07-19 14:48:05.142	roadmap-image-servlet
com.atlassian.confluence.plugins.quickedit	2840	2017-07-19 14:48:05.142	quick-comment-initial
com.atlassian.support.stp	2841	2017-07-19 14:48:05.142	scheduledTaskManager
com.atlassian.plugins.base-hipchat-integration-plugin	2842	2017-07-19 14:48:05.142	hipchat-configuration-panel-resources
com.atlassian.auiplugin	2843	2017-07-19 14:48:05.142	soy
com.atlassian.confluence.plugins.confluence-fixed-headers	2844	2017-07-19 14:48:05.142	confluence-fixed-headers-editor-resources
com.atlassian.querylang.confluence-cql-plugin	2845	2017-07-19 14:48:05.142	start-of-day-zero-arg-function
confluence.sections.space.tools	2846	2017-07-19 14:48:05.142	permissions
com.atlassian.streams	2847	2017-07-19 14:48:05.142	completionService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2848	2017-07-19 14:48:05.142	webResourceUrlProvider
com.atlassian.plugin.jslibs	2849	2017-07-19 14:48:05.142	d3-3.5.5
com.atlassian.auiplugin	2850	2017-07-19 14:48:05.142	aui-spinner
com.atlassian.mywork.mywork-common-plugin	2851	2017-07-19 14:48:05.142	xsrfTokenAccessor
com.atlassian.plugins.atlassian-nav-links-plugin	2852	2017-07-19 14:48:05.142	custom-apps-admin-ui-resources
confluence.macros.advanced	2853	2017-07-19 14:48:05.142	change-history
com.atlassian.confluence.plugins.confluence-previews	2854	2017-07-19 14:48:05.142	confluence-previews-js
com.atlassian.confluence.extra.officeconnector	2855	2017-07-19 14:48:05.142	officeconnector-analytics-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2856	2017-07-19 14:48:05.142	confluence-webpanel-servlet
com.atlassian.confluence.plugins.confluence-labels	2857	2017-07-19 14:48:05.142	labels-editor
com.atlassian.confluence.plugins.confluence-file-notifications	2858	2017-07-19 14:48:05.142	contentService
com.atlassian.plugin.notifications.notifications-module	2859	2017-07-19 14:48:05.142	notification-prefs
confluence.content.action.menu	2860	2017-07-19 14:48:05.142	page-permissions
confluence.web.resources	2861	2017-07-19 14:48:05.142	setup-success
com.atlassian.streams.confluence	2862	2017-07-19 14:48:05.142	date-es-UY
com.atlassian.auiplugin	2863	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-custom-read-view
com.atlassian.auiplugin	2864	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-setup
com.atlassian.confluence.plugins.confluence-daily-summary-email	2865	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-like	2866	2017-07-19 14:48:05.142	like-hipchat-soy-templates
com.atlassian.applinks.applinks-plugin	2867	2017-07-19 14:48:05.142	applinksRestV2-filter
confluence.web.resources	2868	2017-07-19 14:48:05.142	page-restricted-resources
com.atlassian.auiplugin	2869	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-jquery-jquery-spin
com.atlassian.confluence.extra.widgetconnector	2870	2017-07-19 14:48:05.142	widget
com.atlassian.confluence.plugins.soy	2871	2017-07-19 14:48:05.142	soyTemplateRendererHelperContext
com.atlassian.streams.confluence	2872	2017-07-19 14:48:05.142	date-es-VE
com.atlassian.confluence.plugins.confluence-email-resources	2873	2017-07-19 14:48:05.142	template-utils-avatar-name-table-column-2.0.0
confluence.web.resources	2874	2017-07-19 14:48:05.142	setup
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2875	2017-07-19 14:48:05.142	upm-osgi-templates
com.atlassian.confluence.extra.flyingpdf	2876	2017-07-19 14:48:05.142	pdfExportServiceDelegator
com.atlassian.streams	2877	2017-07-19 14:48:05.142	streamsCommentsServlet
com.atlassian.auiplugin	2878	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-when-i-type
com.atlassian.streams.confluence	2879	2017-07-19 14:48:05.142	date-sr-Latn-BA
com.atlassian.streams	2880	2017-07-19 14:48:05.142	date-pa-IN
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2881	2017-07-19 14:48:05.142	confluence-page-edited-batching
com.atlassian.confluence.plugins.confluence-highlight-actions	2882	2017-07-19 14:48:05.142	markSelectionModifier
com.atlassian.confluence.plugins.confluence-business-blueprints	2883	2017-07-19 14:48:05.142	decisions-blueprint
com.atlassian.auiplugin	2884	2017-07-19 14:48:05.142	deprecated-legacy-ajs-file
com.atlassian.streams.confluence	2885	2017-07-19 14:48:05.142	date-fr-CH
com.atlassian.confluence.keyboardshortcuts	2886	2017-07-19 14:48:05.142	toggle.space.sidebar
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2887	2017-07-19 14:48:05.142	prettyurls-combined-filter-before-login
com.atlassian.confluence.plugins.confluence-inline-tasks	2888	2017-07-19 14:48:05.142	location-task-report-template
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2889	2017-07-19 14:48:05.142	personalInformationManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2890	2017-07-19 14:48:05.142	logFileHelper
com.atlassian.confluence.plugins.confluence-easyuser-admin	2891	2017-07-19 14:48:05.142	add-users-button
confluence.listeners.core	2892	2017-07-19 14:48:05.142	userdirectorylistener
confluence.macros.advanced	2893	2017-07-19 14:48:05.142	xhtml-gallery
com.atlassian.streams.confluence	2894	2017-07-19 14:48:05.142	date-fr-CA
com.atlassian.confluence.plugins.confluence-onboarding	2895	2017-07-19 14:48:05.142	cqlSearchService
com.atlassian.confluence.plugins.confluence-view-file-macro	2896	2017-07-19 14:48:05.142	common
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2897	2017-07-19 14:48:05.142	comment-created-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-link-browser	2898	2017-07-19 14:48:05.142	link-browser-tab-recentlyviewed
com.atlassian.confluence.extra.officeconnector	2899	2017-07-19 14:48:05.142	officeauth
confluence.extra.impresence2	2900	2017-07-19 14:48:05.142	skype
com.atlassian.streams.confluence	2901	2017-07-19 14:48:05.142	date-vi-VN
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2902	2017-07-19 14:48:05.142	hostApplicationInformation
com.atlassian.auiplugin	2903	2017-07-19 14:48:05.142	dropdown
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2904	2017-07-19 14:48:05.142	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-mobile	2905	2017-07-19 14:48:05.142	webResourceManager
confluence.web.resources	2906	2017-07-19 14:48:05.142	syntaxhighlighter-xml
com.atlassian.streams	2907	2017-07-19 14:48:05.142	date-default
confluence.search.mappers.lucene	2908	2017-07-19 14:48:05.142	constantScore
com.atlassian.plugins.atlassian-nav-links-plugin	2909	2017-07-19 14:48:05.142	custom-apps-navigation-links
com.atlassian.confluence.plugins.confluence-email-resources	2910	2017-07-19 14:48:05.142	manage-notifications-email-footer-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2911	2017-07-19 14:48:05.142	monitorRepresentationFactory
com.atlassian.confluence.plugins.confluence-email-resources	2912	2017-07-19 14:48:05.142	notification-templates-comment-edit-1.0.0
com.atlassian.instrumentation.atlassian-instrumentation-expose-jmx	2913	2017-07-19 14:48:05.142	jmxInstrumentSchedulerImpl
com.atlassian.applinks.applinks-cors-plugin	2914	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.confluence.plugins.soy	2915	2017-07-19 14:48:05.142	soy-panels-for-location-soy-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2916	2017-07-19 14:48:05.142	upm-common-templates
com.atlassian.auiplugin	2917	2017-07-19 14:48:05.142	aui-experimental-header
com.atlassian.confluence.plugins.share-page	2918	2017-07-19 14:48:05.142	share-attachment-email-notification-template
com.atlassian.applinks.applinks-plugin	2919	2017-07-19 14:48:05.142	applinks-public
com.atlassian.confluence.plugins.gadgets	2920	2017-07-19 14:48:05.142	whitelist
com.atlassian.confluence.plugins.confluence-create-content-plugin	2921	2017-07-19 14:48:05.142	i18nBeanFactory
com.atlassian.streams.confluence	2922	2017-07-19 14:48:05.142	date-fr-BE
com.atlassian.confluence.plugins.view-storage-format	2923	2017-07-19 14:48:05.142	view-comment-storage-resources
com.atlassian.confluence.plugins.confluence-dashboard	2924	2017-07-19 14:48:05.142	react-dashboard-dependencies
com.atlassian.confluence.plugins.confluence-content-property-storage	2925	2017-07-19 14:48:05.142	contentproperty-by-contents-and-keys
com.atlassian.confluence.plugins.confluence-like	2926	2017-07-19 14:48:05.142	view-email-adg-content-item
com.atlassian.confluence.plugins.confluence-space-ia	2927	2017-07-19 14:48:05.142	soy-resources
com.atlassian.applinks.applinks-plugin	2928	2017-07-19 14:48:05.142	feature-v3-feedback-collector
com.atlassian.analytics.analytics-client	2929	2017-07-19 14:48:05.142	programmatic-analytics-init
com.atlassian.confluence.plugins.confluence-inline-tasks	2930	2017-07-19 14:48:05.142	task-email-notification-template
com.atlassian.confluence.ext.newcode-macro-plugin	2931	2017-07-19 14:48:05.142	sh-theme-rdark
com.atlassian.querylang.confluence-cql-plugin	2932	2017-07-19 14:48:05.142	none-query-mapper
com.atlassian.streams	2933	2017-07-19 14:48:05.142	date-sma-SE
com.atlassian.streams.streams-thirdparty-plugin	2935	2017-07-19 14:48:05.142	activityServiceActiveObjects
confluence.extractors.core	2936	2017-07-19 14:48:05.142	htmlEntitiesFilterExtractor
com.atlassian.confluence.plugins.drag-and-drop	2937	2017-07-19 14:48:05.142	files-upload-analytics
crowd.system.passwordencoders	2938	2017-07-19 14:48:05.142	sha
com.atlassian.confluence.plugins.confluence-mobile	2939	2017-07-19 14:48:05.142	mobile-site-filter
com.atlassian.confluence.plugins.confluence-onboarding	2940	2017-07-19 14:48:05.142	userAccessor
com.atlassian.confluence.plugins.confluence-sal-plugin	2941	2017-07-19 14:48:05.142	authenticationListener
confluence.web.resources	2942	2017-07-19 14:48:05.142	draft-changes-css
com.atlassian.applinks.applinks-plugin	2943	2017-07-19 14:48:05.142	requestFactory
com.atlassian.confluence.plugins.confluence-link-browser	2944	2017-07-19 14:48:05.142	confluenceLinkBrowserWhitelist
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	2945	2017-07-19 14:48:05.142	dark-feature-rest-filter
com.atlassian.confluence.plugins.confluence-create-content-plugin	2946	2017-07-19 14:48:05.142	list-space-blueprints-templates-panel
com.atlassian.confluence.plugins.confluence-create-content-plugin	2947	2017-07-19 14:48:05.142	create-from-template-macro-browser-resources
com.atlassian.confluence.plugins.confluence-monitoring	2948	2017-07-19 14:48:05.142	cache-stats
com.atlassian.confluence.plugins.confluence-license-rest	2949	2017-07-19 14:48:05.142	licenseService
com.atlassian.analytics.analytics-client	2950	2017-07-19 14:48:05.142	whitelist-report-servlet
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2951	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-mentions-plugin	2952	2017-07-19 14:48:05.142	confluenceMentionsEventListener
confluence.sections.space	2953	2017-07-19 14:48:05.142	space-labels
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2954	2017-07-19 14:48:05.142	pluginHibernateSessionFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	2955	2017-07-19 14:48:05.142	create-blank-space-blueprint
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2956	2017-07-19 14:48:05.142	follower-added-notification
com.atlassian.plugins.rest.atlassian-rest-module	2957	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2958	2017-07-19 14:48:05.142	confluenceNotificationPreferenceManager
com.atlassian.applinks.applinks-cors-plugin	2959	2017-07-19 14:48:05.142	xsrfTokenAccessor
confluence.web.resources	2960	2017-07-19 14:48:05.142	page-move-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2961	2017-07-19 14:48:05.142	plugin-notifications
com.atlassian.auiplugin	2962	2017-07-19 14:48:05.142	ajs-zepto
com.atlassian.applinks.applinks-plugin	2963	2017-07-19 14:48:05.142	bamboo-project
com.atlassian.mywork.mywork-confluence-host-plugin	2964	2017-07-19 14:48:05.142	mwloginminiview
confluence.header.imagelinks	2965	2017-07-19 14:48:05.142	siteDarkFeatures
com.atlassian.streams.confluence	2966	2017-07-19 14:48:05.142	date-es-PY
com.atlassian.confluence.plugins.confluence-templates	2967	2017-07-19 14:48:05.142	template-editor-variables-template-resources
com.atlassian.confluence.plugins.confluence-inline-comments	2968	2017-07-19 14:48:05.142	notification-template-new-mail
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2969	2017-07-19 14:48:05.142	notification-batching
com.atlassian.activeobjects.confluence.spi	2970	2017-07-19 14:48:05.142	activeObjectsBackupRestoreProvider
confluence.lifecycle.core	2971	2017-07-19 14:48:05.142	tenantawarejobrescheduler
com.atlassian.streams.confluence	2972	2017-07-19 14:48:05.142	date-es-PR
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2973	2017-07-19 14:48:05.142	analyticsRenderContext
com.atlassian.applinks.applinks-trustedapps-plugin	2974	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	2975	2017-07-19 14:48:05.142	newcode-migration
confluence.extra.impresence2	2976	2017-07-19 14:48:05.142	wildfire-xhtml
com.atlassian.applinks.applinks-cors-plugin	2977	2017-07-19 14:48:05.142	appLinksCorsDefaults
com.atlassian.confluence.plugins.confluence-page-banner	2978	2017-07-19 14:48:05.142	soy-resources
confluence.comment.action	2979	2017-07-19 14:48:05.142	secondary
com.atlassian.confluence.plugins.recently-viewed-plugin	2980	2017-07-19 14:48:05.142	mobile-menu-panel
com.atlassian.applinks.applinks-plugin	2981	2017-07-19 14:48:05.142	feature-v3-list
com.atlassian.auiplugin	2982	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-form-validation-validator-register
confluence.web.resources	2983	2017-07-19 14:48:05.142	logger
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2984	2017-07-19 14:48:05.142	pluginLicenseEventPublisherPublishCheckEvent
com.atlassian.mywork.mywork-confluence-host-plugin	2985	2017-07-19 14:48:05.142	resources
com.atlassian.confluence.plugins.confluence-business-blueprints	2986	2017-07-19 14:48:05.142	localeManager
confluence.renderer.components	2987	2017-07-19 14:48:05.142	citation
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2988	2017-07-19 14:48:05.142	webpanelDecorator
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2989	2017-07-19 14:48:05.142	cachedContentLoader
confluence.user.menu	2990	2017-07-19 14:48:05.142	drafts
com.atlassian.confluence.plugins.confluence-create-content-plugin	2991	2017-07-19 14:48:05.142	pageContentTemplateService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2992	2017-07-19 14:48:05.142	create-personal-space-blueprint
com.atlassian.confluence.keyboardshortcuts	2993	2017-07-19 14:48:05.142	help
com.atlassian.auiplugin	2994	2017-07-19 14:48:05.142	aui-page-typography
confluence.macros.advanced	2995	2017-07-19 14:48:05.142	contentbylabel-migrator
com.atlassian.confluence.extra.officeconnector	2996	2017-07-19 14:48:05.142	office-connector-css
com.atlassian.confluence.plugins.confluence-mobile	2997	2017-07-19 14:48:05.142	mobile-profile-filter
org.randombits.confluence.toc	2998	2017-07-19 14:48:05.142	toc-regex-migrator
com.atlassian.confluence.plugins.confluence-mobile	2999	2017-07-19 14:48:05.142	xmlStreamWriterTemplate
com.atlassian.confluence.plugins.confluence-highlight-actions	3000	2017-07-19 14:48:05.142	textMatcher
confluence.extra.attachments	3001	2017-07-19 14:48:05.142	attachments
confluence.extractors.core	3002	2017-07-19 14:48:05.142	titleExtractor
confluence.web.resources	3003	2017-07-19 14:48:05.142	lookandfeel
confluence.macros.dashboard	3004	2017-07-19 14:48:05.142	global-reports
com.atlassian.streams.confluence	3005	2017-07-19 14:48:05.142	date-es-PA
com.atlassian.plugins.atlassian-nav-links-plugin	3006	2017-07-19 14:48:05.142	remote-navigation-link-service
confluence.extractors.core	3007	2017-07-19 14:48:05.142	titleChangeExtractor
com.atlassian.applinks.applinks-plugin	3008	2017-07-19 14:48:05.142	applinks-components
com.atlassian.confluence.plugins.confluence-create-content-plugin	3009	2017-07-19 14:48:05.142	createContentPluginsWhitelist
com.atlassian.auiplugin	3010	2017-07-19 14:48:05.142	internal-aui-widget
confluence.extra.userlister	3011	2017-07-19 14:48:05.142	userlister-xhtml
com.atlassian.streams.confluence	3012	2017-07-19 14:48:05.142	date-es-PE
confluence.extra.information	3013	2017-07-19 14:48:05.142	tip
com.atlassian.auiplugin	3014	2017-07-19 14:48:05.142	jquery-form
com.atlassian.confluence.plugins.confluence-like	3015	2017-07-19 14:48:05.142	like-created-notification-transformer
com.atlassian.plugins.atlassian-nav-links-plugin	3016	2017-07-19 14:48:05.142	capability
confluence.web.resources	3017	2017-07-19 14:48:05.142	licensedetails
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3018	2017-07-19 14:48:05.142	defaultNotificationUserService
confluence.sections.space.browse	3019	2017-07-19 14:48:05.142	browse-personal-space
com.atlassian.confluence.plugins.confluence-ui-components	3020	2017-07-19 14:48:05.142	cql
com.atlassian.auiplugin	3021	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-query-input
confluence.macros.advanced	3022	2017-07-19 14:48:05.142	navmap
confluence.user.hover.menu	3023	2017-07-19 14:48:05.142	follow-tab
com.atlassian.confluence.plugins.confluence-email-resources	3024	2017-07-19 14:48:05.142	content-templates-content-title-pattern-2.0.0
com.atlassian.confluence.extra.flyingpdf	3025	2017-07-19 14:48:05.142	pdfexport-xmlrpc
com.atlassian.confluence.plugins.share-page	3026	2017-07-19 14:48:05.142	edit-resources
com.atlassian.streams.confluence	3027	2017-07-19 14:48:05.142	activitystream-gadget
com.atlassian.confluence.plugins.gadgets	3028	2017-07-19 14:48:05.142	clusterManager
com.atlassian.confluence.editor	3029	2017-07-19 14:48:05.142	editor-edit-only
com.atlassian.applinks.applinks-plugin	3030	2017-07-19 14:48:05.142	authConfigContainer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3031	2017-07-19 14:48:05.142	mailSender
confluence.macros.advanced	3032	2017-07-19 14:48:05.142	xhtml-recently-updated
com.atlassian.confluence.plugins.share-page	3033	2017-07-19 14:48:05.142	dialog-async-loader
confluence.extra.masterdetail	3034	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.streams.confluence	3035	2017-07-19 14:48:05.142	date-es-MX
com.atlassian.streams.confluence	3036	2017-07-19 14:48:05.142	streamsEntryRendererFactory
com.atlassian.auiplugin	3037	2017-07-19 14:48:05.142	aui-experimental-tooltips
com.atlassian.plugins.atlassian-nav-links-plugin	3038	2017-07-19 14:48:05.142	capabilities-cache-loader
confluence.listeners.core	3039	2017-07-19 14:48:05.142	updateAttachmentsOnFilesystemOnPageMoveListener
com.atlassian.plugins.atlassian-nav-links-plugin	3040	2017-07-19 14:48:05.142	typeAccessor
com.atlassian.streams.confluence	3041	2017-07-19 14:48:05.142	date-es-NI
com.atlassian.plugins.atlassian-project-creation-plugin	3042	2017-07-19 14:48:05.142	project-creation-capability
com.atlassian.oauth.serviceprovider	3043	2017-07-19 14:48:05.142	tokenStore
com.atlassian.confluence.plugins.confluence-monitoring-console	3044	2017-07-19 14:48:05.142	monitoring-console-actions
com.atlassian.confluence.extra.widgetconnector	3045	2017-07-19 14:48:05.142	yahoovideo
com.atlassian.applinks.applinks-trustedapps-plugin	3046	2017-07-19 14:48:05.142	trusted-auth
com.atlassian.confluence.plugins.confluence-email-resources	3047	2017-07-19 14:48:05.142	chrome-template-header-pattern-2.0.0
com.atlassian.plugins.atlassian-whitelist-ui-plugin	3048	2017-07-19 14:48:05.142	confluence-whitelist
com.atlassian.streams.confluence	3049	2017-07-19 14:48:05.142	date-sv-FI
com.atlassian.confluence.plugins.confluence-highlight-actions	3050	2017-07-19 14:48:05.142	action-panel
com.atlassian.mywork.mywork-common-plugin	3051	2017-07-19 14:48:05.142	internalHostApplication
com.atlassian.streams	3052	2017-07-19 14:48:05.142	streams-parent-js
com.atlassian.auiplugin	3053	2017-07-19 14:48:05.142	aui-help
com.atlassian.confluence.plugins.confluence-business-blueprints	3054	2017-07-19 14:48:05.142	decisions-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	3055	2017-07-19 14:48:05.142	salUserManager
com.atlassian.querylang.confluence-cql-plugin	3056	2017-07-19 14:48:05.142	mention-field
com.atlassian.querylang.confluence-cql-plugin	3057	2017-07-19 14:48:05.142	attachment-filesize-field
confluence.extra.masterdetail	3058	2017-07-19 14:48:05.142	detailssummary-xhtml
com.atlassian.applinks.applinks-plugin	3059	2017-07-19 14:48:05.142	supported-inbound-authentication
com.atlassian.querylang.confluence-cql-plugin	3060	2017-07-19 14:48:05.142	start-of-week-one-arg-function
confluence.macros.advanced	3061	2017-07-19 14:48:05.142	blog-post
confluence.web.resources	3062	2017-07-19 14:48:05.142	page-ordering-tree
com.atlassian.mywork.mywork-confluence-host-plugin	3063	2017-07-19 14:48:05.142	task-service
com.atlassian.support.healthcheck.support-healthcheck-plugin	3064	2017-07-19 14:48:05.142	operatingSystemInfo
com.atlassian.confluence.plugins.quickreload	3065	2017-07-19 14:48:05.142	rest
confluence.macros.advanced	3066	2017-07-19 14:48:05.142	xhtml-children
com.atlassian.streams	3067	2017-07-19 14:48:05.142	date-mn-MN
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3068	2017-07-19 14:48:05.142	dispatchService
confluence.sections.space.tools	3069	2017-07-19 14:48:05.142	layouts
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3070	2017-07-19 14:48:05.142	plugin-osgi-servlet
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	3071	2017-07-19 14:48:05.142	healthmonitor-template
com.atlassian.confluence.plugins.confluence-create-content-plugin	3072	2017-07-19 14:48:05.142	requestStorage
com.atlassian.plugins.base-hipchat-integration-plugin	3073	2017-07-19 14:48:05.142	plugin-resource-url
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3074	2017-07-19 14:48:05.142	pluginInstallationService
com.atlassian.confluence.plugins.confluence-mobile	3075	2017-07-19 14:48:05.142	userDtoFactory
com.atlassian.confluence.extra.officeconnector	3076	2017-07-19 14:48:05.142	file-viewer-plugin
com.atlassian.plugins.base-hipchat-integration-plugin	3077	2017-07-19 14:48:05.142	web-panel-soy-function
com.atlassian.streams.confluence	3078	2017-07-19 14:48:05.142	salUserManager
confluence.listeners.core	3079	2017-07-19 14:48:05.142	userremovallistener
confluence.search.mappers.lucene	3080	2017-07-19 14:48:05.142	userText
com.atlassian.confluence.extra.widgetconnector	3081	2017-07-19 14:48:05.142	mockingbird
com.atlassian.confluence.plugins.confluence-email-resources	3082	2017-07-19 14:48:05.142	content-templates-actions-pattern-1.0.0
com.atlassian.streams.confluence	3083	2017-07-19 14:48:05.142	date-es-SV
com.atlassian.jwt.jwt-plugin	3084	2017-07-19 14:48:05.142	jwtAuthFilter
com.atlassian.confluence.plugins.confluence-email-resources	3085	2017-07-19 14:48:05.142	content-templates-inline-user-pattern-2.0.0
com.atlassian.applinks.applinks-plugin	3086	2017-07-19 14:48:05.142	webSudoManager
com.atlassian.confluence.plugins.confluence-email-resources	3087	2017-07-19 14:48:05.142	change-settings-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3088	2017-07-19 14:48:05.142	comment-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-content-property-storage	3089	2017-07-19 14:48:05.142	contentproperty-by-content
com.atlassian.confluence.extra.officeconnector	3090	2017-07-19 14:48:05.142	editattachmentinworditempathauth
com.atlassian.plugin.jslibs	3091	2017-07-19 14:48:05.142	moment-2.6.0
com.atlassian.confluence.plugins.confluence-like	3092	2017-07-19 14:48:05.142	like-email-soy-templates
com.atlassian.plugin.notifications.notifications-module	3093	2017-07-19 14:48:05.142	tx-processor
confluence.macros.dashboard	3094	2017-07-19 14:48:05.142	confluenceDashboardMacrosRest-filter
com.atlassian.plugins.atlassian-nav-links-plugin	3095	2017-07-19 14:48:05.142	navigation-links-cache-loader
com.atlassian.confluence.plugins.confluence-inline-comments	3096	2017-07-19 14:48:05.142	reply-to-comment-email-adg-footer-item
com.atlassian.querylang.confluence-cql-plugin	3097	2017-07-19 14:48:05.142	ancestorId-query-mapper
com.atlassian.confluence.plugins.confluence-space-directory	3098	2017-07-19 14:48:05.142	space-directory-rest-filter
confluence.listeners.core	3099	2017-07-19 14:48:05.142	rpcConfigurationListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	3100	2017-07-19 14:48:05.142	requestFactory
confluence.sections.profile.view	3101	2017-07-19 14:48:05.142	profile-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3102	2017-07-19 14:48:05.142	executorFactory
com.atlassian.confluence.plugins.confluence-onboarding	3103	2017-07-19 14:48:05.142	onboarding-notification-no-spaces
com.atlassian.applinks.applinks-oauth-plugin	3104	2017-07-19 14:48:05.142	confluence-inbound-two-legged-oauth-with-impersonation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3105	2017-07-19 14:48:05.142	blogpost-created-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-jira-content	3106	2017-07-19 14:48:05.142	common-resource
com.atlassian.mywork.mywork-confluence-provider-plugin	3107	2017-07-19 14:48:05.142	notificationService
com.atlassian.support.healthcheck.support-healthcheck-plugin	3108	2017-07-19 14:48:05.142	tx-processor
com.atlassian.confluence.plugins.confluence-required-health-checks	3109	2017-07-19 14:48:05.142	requiredHealthChecksSupplier
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3110	2017-07-19 14:48:05.142	delete-soy
com.atlassian.confluence.editor	3111	2017-07-19 14:48:05.142	image-properties-web-items
com.atlassian.querylang.confluence-cql-plugin	3112	2017-07-19 14:48:05.142	end-of-year-one-arg-function
com.atlassian.auiplugin	3113	2017-07-19 14:48:05.142	ajs-underscorejs
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3114	2017-07-19 14:48:05.142	analytics-link-builder
com.atlassian.gadgets.opensocial	3115	2017-07-19 14:48:05.142	gadget-rendering-servlet
com.atlassian.oauth.serviceprovider	3116	2017-07-19 14:48:05.142	tokenLoader
com.atlassian.mywork.mywork-confluence-host-plugin	3117	2017-07-19 14:48:05.142	pluginScheduler
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3118	2017-07-19 14:48:05.142	serviceAccessor
com.atlassian.confluence.plugins.view-storage-format	3119	2017-07-19 14:48:05.142	viewstorageActions
com.atlassian.confluence.plugins.confluence-license-rest	3120	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.auiplugin	3121	2017-07-19 14:48:05.142	jquery-ui
com.atlassian.auiplugin	3122	2017-07-19 14:48:05.142	aui-core
com.atlassian.confluence.plugins.confluence-quicknav	3123	2017-07-19 14:48:05.142	contentNameSearchService
com.atlassian.plugins.atlassian-nav-links-plugin	3124	2017-07-19 14:48:05.142	content-links-rest
com.atlassian.gadgets.directory	3125	2017-07-19 14:48:05.142	gadgets-directory-admin-servlet
com.atlassian.confluence.plugins.confluence-like	3126	2017-07-19 14:48:05.142	manage-like-notifications-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-business-blueprints	3127	2017-07-19 14:48:05.142	sharelinks-blueprint-widget-connector-support
confluence.extra.impresence2	3128	2017-07-19 14:48:05.142	reporter-skypeme
com.atlassian.confluence.plugins.confluence-knowledge-base	3129	2017-07-19 14:48:05.142	kb-blueprint-item
com.atlassian.applinks.applinks-plugin	3130	2017-07-19 14:48:05.142	applinks-common-exported
com.atlassian.mywork.mywork-confluence-host-plugin	3131	2017-07-19 14:48:05.142	tx-processor
com.atlassian.auiplugin	3132	2017-07-19 14:48:05.142	aui-focus-manager
confluence.sections.space.tools	3133	2017-07-19 14:48:05.142	trash
com.atlassian.applinks.applinks-plugin	3134	2017-07-19 14:48:05.142	applinks-ui
com.atlassian.streams.streams-thirdparty-plugin	3135	2017-07-19 14:48:05.142	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3136	2017-07-19 14:48:05.142	objectMapperFactory
com.atlassian.confluence.plugins.confluence-space-blueprints	3137	2017-07-19 14:48:05.142	DocumentationSpaceHomePageEventListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	3138	2017-07-19 14:48:05.142	show-blueprint-index-popup-flag
com.atlassian.streams.streams-thirdparty-plugin	3139	2017-07-19 14:48:05.142	linkBuilder
confluence.macros.advanced	3140	2017-07-19 14:48:05.142	index
com.atlassian.streams.confluence	3141	2017-07-19 14:48:05.142	date-es-HN
com.atlassian.plugins.atlassian-nav-links-plugin	3142	2017-07-19 14:48:05.142	confluence-custom-apps-manage-menu
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	3143	2017-07-19 14:48:05.142	keyboardShortcutManager
com.atlassian.applinks.applinks-basicauth-plugin	3144	2017-07-19 14:48:05.142	basicAuthUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-create-content-plugin	3145	2017-07-19 14:48:05.142	list-system-templates-panel
confluence.macros.dashboard	3146	2017-07-19 14:48:05.142	confluenceDashboardMacrosWhitelist
com.atlassian.confluence.plugins.confluence-onboarding	3147	2017-07-19 14:48:05.142	find-relevant-spaces-service
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	3148	2017-07-19 14:48:05.142	pluginModuleEventListener
com.atlassian.streams	3149	2017-07-19 14:48:05.142	date-uk-UA
com.atlassian.support.healthcheck.support-healthcheck-plugin	3150	2017-07-19 14:48:05.142	pluginScheduler
com.atlassian.streams	3151	2017-07-19 14:48:05.142	rest
com.atlassian.oauth.serviceprovider	3152	2017-07-19 14:48:05.142	stringEscapeUtil
com.atlassian.streams.confluence	3153	2017-07-19 14:48:05.142	date-es-GT
confluence.web.resources	3154	2017-07-19 14:48:05.142	quick-nav
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3155	2017-07-19 14:48:05.142	requestFactory
confluence.listeners.core	3156	2017-07-19 14:48:05.142	admin-audit-logging-listener
com.atlassian.oauth.consumer.sal	3157	2017-07-19 14:48:05.142	consumerService
com.atlassian.confluence.plugins.confluence-knowledge-base	3158	2017-07-19 14:48:05.142	kb-blueprint
com.atlassian.querylang.confluence-cql-plugin	3159	2017-07-19 14:48:05.142	now-one-arg-function
com.atlassian.auiplugin	3160	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-log
com.atlassian.confluence.plugins.confluence-mentions-plugin	3161	2017-07-19 14:48:05.142	notificationService
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3162	2017-07-19 14:48:05.142	notification
com.atlassian.mywork.mywork-confluence-provider-plugin	3163	2017-07-19 14:48:05.142	confluenceEventRegister
com.atlassian.support.healthcheck.support-healthcheck-plugin	3164	2017-07-19 14:48:05.142	fileSystemInfo
com.atlassian.confluence.plugins.confluence-view-file-macro	3165	2017-07-19 14:48:05.142	unknownAttachmentFilePlaceholderMarshaller
com.atlassian.confluence.plugins.confluence-templates	3166	2017-07-19 14:48:05.142	view-template-styles
confluence.web.resources	3167	2017-07-19 14:48:05.142	dictionary
com.atlassian.confluence.plugins.confluence-create-content-plugin	3168	2017-07-19 14:48:05.142	resources
com.atlassian.plugins.atlassian-plugins-webresource-plugin	3169	2017-07-19 14:48:05.142	web-resource-manager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3170	2017-07-19 14:48:05.142	forgot-password-notification-template-body
com.atlassian.streams.streams-thirdparty-plugin	3171	2017-07-19 14:48:05.142	thirdparty
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3172	2017-07-19 14:48:05.142	hipchat-space-context
confluence.content.action.menu	3173	2017-07-19 14:48:05.142	marker
com.atlassian.confluence.plugins.confluence-request-access-plugin	3174	2017-07-19 14:48:05.142	grant-access-notification-email-template
confluence.macros.basic	3175	2017-07-19 14:48:05.142	cheese
com.atlassian.confluence.plugins.confluence-schedule-admin	3176	2017-07-19 14:48:05.142	scheduled-admin-xwork
confluence.macro.metadata.provider	3177	2017-07-19 14:48:05.142	macroMetadataProvider
com.atlassian.applinks.applinks-plugin	3178	2017-07-19 14:48:05.142	confluence-inbound-two-legged-oauth-with-impersonation
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3179	2017-07-19 14:48:05.142	confluence-collaborative-editor-opt-in
com.atlassian.confluence.plugins.confluence-email-resources	3180	2017-07-19 14:48:05.142	view-content-changes-email-batch-item
com.atlassian.confluence.plugins.confluence-email-resources	3181	2017-07-19 14:48:05.142	notification-templates-page-edit-1.0.0
com.atlassian.analytics.analytics-client	3182	2017-07-19 14:48:05.142	programmatic-analytics
com.atlassian.confluence.plugins.view-storage-format	3183	2017-07-19 14:48:05.142	view-storage
com.atlassian.confluence.plugins.confluence-templates	3184	2017-07-19 14:48:05.142	editTransformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3185	2017-07-19 14:48:05.142	upm-install-templates
confluence.sections.space.admin	3186	2017-07-19 14:48:05.142	import
confluence.sections.settings.edit	3187	2017-07-19 14:48:05.142	changepassword
confluence.sections.space.advanced	3188	2017-07-19 14:48:05.142	space-attachments
com.atlassian.confluence.plugins.confluence-lookandfeel	3189	2017-07-19 14:48:05.142	default-sitelogo-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3190	2017-07-19 14:48:05.142	versioned-resource
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3191	2017-07-19 14:48:05.142	dataSourceFactory
confluence.search.mappers.lucene	3192	2017-07-19 14:48:05.142	prefixSearchFilter
com.atlassian.streams.confluence	3193	2017-07-19 14:48:05.142	date-es-ES
com.atlassian.confluence.plugins.drag-and-drop	3194	2017-07-19 14:48:05.142	drop-zone-for-view-attachments
confluence.web.resources	3195	2017-07-19 14:48:05.142	view-content
com.atlassian.streams.actions	3196	2017-07-19 14:48:05.142	streamsLocaleProvider
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	3197	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.confluence.plugins.confluence-sal-plugin	3198	2017-07-19 14:48:05.142	pluginHibernateSessionFactory
confluence.web.resources	3199	2017-07-19 14:48:05.142	aui-forms
confluence.web.resources	3200	2017-07-19 14:48:05.142	tooltip
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3201	2017-07-19 14:48:05.142	confluence-upm-requests-menu
com.atlassian.confluence.plugins.drag-and-drop	3202	2017-07-19 14:48:05.142	support
com.atlassian.confluence.plugins.confluence-email-resources	3203	2017-07-19 14:48:05.142	content-templates-primary-button-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3204	2017-07-19 14:48:05.142	dialogManager
com.atlassian.analytics.analytics-client	3259	2017-07-19 14:48:05.142	event-checklist
com.atlassian.confluence.plugins.confluence-view-file-macro	3205	2017-07-19 14:48:05.142	defaultFilePlaceholderMarshaller
com.atlassian.oauth.serviceprovider	3206	2017-07-19 14:48:05.142	loginRedirector
com.atlassian.confluence.plugins.confluence-mobile	3207	2017-07-19 14:48:05.142	xmlEventReaderFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3208	2017-07-19 14:48:05.142	confluenceUserPreferencesManager
confluence.web.resources	3209	2017-07-19 14:48:05.142	cssSubstitution
confluence.converters.core	3210	2017-07-19 14:48:05.142	user-status-converter
com.atlassian.confluence.editor	3211	2017-07-19 14:48:05.142	editor-autocomplete-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3212	2017-07-19 14:48:05.142	page-created-hipchat-notification-template
com.atlassian.confluence.plugins.drag-and-drop	3213	2017-07-19 14:48:05.142	drag-and-drop-for-view-content
confluence.sections.admin	3214	2017-07-19 14:48:05.142	defaultspacelogo
com.atlassian.confluence.plugins.confluence-highlight-actions	3215	2017-07-19 14:48:05.142	darkFeaturesManager
confluence.sections.user.follow.list	3216	2017-07-19 14:48:05.142	resources
confluence.macros.advanced	3217	2017-07-19 14:48:05.142	popular-labels-resources
com.atlassian.applinks.applinks-plugin	3218	2017-07-19 14:48:05.142	adminUIAuthenticator
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3219	2017-07-19 14:48:05.142	bootstrap-resource
com.atlassian.plugins.atlassian-nav-links-plugin	3220	2017-07-19 14:48:05.142	administration-shortcuts
confluence.extra.impresence2	3221	2017-07-19 14:48:05.142	yahoo
com.atlassian.plugins.atlassian-whitelist-ui-plugin	3222	2017-07-19 14:48:05.142	whitelist-bootstrap-template
com.atlassian.confluence.plugins.confluence-dashboard	3223	2017-07-19 14:48:05.142	svgContentTypeServletFilter
com.atlassian.confluence.plugins.confluence-jira-content	3224	2017-07-19 14:48:05.142	ao-module
confluence.sections.space.advanced	3225	2017-07-19 14:48:05.142	spacedetails
com.atlassian.confluence.plugins.confluence-mentions-plugin	3226	2017-07-19 14:48:05.142	notificationUserService
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	3227	2017-07-19 14:48:05.142	confluence-feature-discovery-plugin-features-meta
com.atlassian.confluence.plugins.confluence-required-health-checks	3228	2017-07-19 14:48:05.142	requiredHealthChecksEnabledCheck
com.atlassian.confluence.plugins.confluence-baseurl-plugin	3229	2017-07-19 14:48:05.142	confluenceBaseUrlWhitelist
com.atlassian.streams	3230	2017-07-19 14:48:05.142	date-tt-RU
confluence.extra.jira	3231	2017-07-19 14:48:05.142	jqlHelper
crowd.system.passwordencoders	3232	2017-07-19 14:48:05.142	bcrypt
com.atlassian.streams	3233	2017-07-19 14:48:05.142	feedBuilder
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3234	2017-07-19 14:48:05.142	views
com.atlassian.confluence.plugins.confluence-nav-links	3235	2017-07-19 14:48:05.142	rotp-menu
com.atlassian.templaterenderer.api	3236	2017-07-19 14:48:05.142	webResourceUrlProvider
com.atlassian.confluence.plugins.confluence-business-blueprints	3237	2017-07-19 14:48:05.142	linkMetadataExtractor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3238	2017-07-19 14:48:05.142	spaceManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	3239	2017-07-19 14:48:05.142	user-multiselect
com.atlassian.confluence.extra.officeconnector	3240	2017-07-19 14:48:05.142	ppt2k7ContentExtractor
com.atlassian.plugins.atlassian-whitelist-core-plugin	3241	2017-07-19 14:48:05.142	applicationLinkChangeListener
com.atlassian.streams	3242	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	3243	2017-07-19 14:48:05.142	notification-templates-comment-remove-1.0.0
com.atlassian.confluence.plugins.share-page	3244	2017-07-19 14:48:05.142	view-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3245	2017-07-19 14:48:05.142	hostLicenseUpdatedHandler
com.atlassian.confluence.plugins.synchrony-interop	3246	2017-07-19 14:48:05.142	synchrony-status-banner-loader
com.atlassian.mywork.mywork-common-plugin	3247	2017-07-19 14:48:05.142	thread-local-delegate-executor-factory
com.atlassian.confluence.plugins.confluence-email-resources	3248	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.confluence.plugins.confluence-edge-index	3249	2017-07-19 14:48:05.142	mobile-can-use-rest-filter
confluence.listeners.core	3250	2017-07-19 14:48:05.142	space-audit-logging-listener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3251	2017-07-19 14:48:05.142	tokenManager
com.atlassian.analytics.analytics-client	3252	2017-07-19 14:48:05.142	event-checklist-servlet
confluence.web.resources	3253	2017-07-19 14:48:05.142	drop-down
com.atlassian.querylang.confluence-cql-plugin	3254	2017-07-19 14:48:05.142	ancestor-field
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3255	2017-07-19 14:48:05.142	purchased-addons-servlet
com.atlassian.streams	3256	2017-07-19 14:48:05.142	date-pt-BR
com.atlassian.plugins.less-transformer-plugin	3257	2017-07-19 14:48:05.142	lessTransformer
com.atlassian.confluence.plugins.confluence-email-resources	3258	2017-07-19 14:48:05.142	notifications-cluster-node-name-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3260	2017-07-19 14:48:05.142	privateListingsUpgradeTask
com.atlassian.mywork.mywork-confluence-host-plugin	3261	2017-07-19 14:48:05.142	userDao
com.atlassian.confluence.plugins.confluence-dashboard	3262	2017-07-19 14:48:05.142	footer-analytics
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3263	2017-07-19 14:48:05.142	addonMarketplaceQueries
confluence.extractors.core	3264	2017-07-19 14:48:05.142	labelChangeExtractor
com.atlassian.gadgets.opensocial	3265	2017-07-19 14:48:05.142	make-request-servlet
com.atlassian.streams.confluence	3266	2017-07-19 14:48:05.142	date-hy-AM
com.atlassian.confluence.plugins.confluence-email-tracker	3267	2017-07-19 14:48:05.142	resources
com.atlassian.confluence.plugins.confluence-email-resources	3268	2017-07-19 14:48:05.142	change-settings-email-footer-item
com.atlassian.confluence.plugins.confluence-knowledge-base	3269	2017-07-19 14:48:05.142	kb-how-to-item
com.atlassian.streams.confluence	3270	2017-07-19 14:48:05.142	date-sk-SK
com.atlassian.confluence.plugins.confluence-email-resources	3271	2017-07-19 14:48:05.142	chrome-template-footer-pattern-2.0.0
confluence.sections.admin	3272	2017-07-19 14:48:05.142	backup
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3273	2017-07-19 14:48:05.142	fetch
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3274	2017-07-19 14:48:05.142	urlReadingJavascriptTemplateWebResourceTransformer
confluence.extra.jira	3275	2017-07-19 14:48:05.142	jirachart-xhtml
com.atlassian.confluence.plugins.confluence-sal-plugin	3276	2017-07-19 14:48:05.142	pluginScheduler
com.atlassian.streams.confluence	3277	2017-07-19 14:48:05.142	date-sv-SE
com.atlassian.streams.confluence	3278	2017-07-19 14:48:05.142	date-js
com.atlassian.confluence.plugins.gadgets	3279	2017-07-19 14:48:05.142	subscribedGadgetFeedStore
com.atlassian.confluence.plugins.gadgets	3280	2017-07-19 14:48:05.142	tenantRegistry
com.atlassian.confluence.plugins.confluence-inline-comments	3281	2017-07-19 14:48:05.142	like-inline-comment-batch-email-action
com.atlassian.oauth.consumer.sal	3282	2017-07-19 14:48:05.142	hostConsumerAndSecretProvider
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3283	2017-07-19 14:48:05.142	configuration-resources
com.atlassian.confluence.plugins.share-page	3284	2017-07-19 14:48:05.142	share-content-plugin-icons
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	3285	2017-07-19 14:48:05.142	internalAdminCheckFallback
com.atlassian.streams.confluence	3286	2017-07-19 14:48:05.142	date-gl-ES
confluence.macros.advanced	3287	2017-07-19 14:48:05.142	recently-updated-social-resources
com.atlassian.auiplugin	3288	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-jquery-jquery-ui-jquery-ui-datepicker
com.atlassian.mywork.mywork-confluence-host-plugin	3289	2017-07-19 14:48:05.142	mailNotificationService
com.atlassian.confluence.plugins.confluence-like	3290	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	3291	2017-07-19 14:48:05.142	velocity-1.6-web-panel-renderer
com.atlassian.confluence.plugins.search.confluence-search	3292	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.confluence.editor	3293	2017-07-19 14:48:05.142	editor-location
com.atlassian.confluence.editor	3294	2017-07-19 14:48:05.142	macro-icon-placeholder
com.atlassian.confluence.plugins.drag-and-drop	3295	2017-07-19 14:48:05.142	drag-and-drop-resource-filter
com.atlassian.confluence.plugins.confluence-email-resources	3296	2017-07-19 14:48:05.142	space-logo-image-function
confluence.extra.masterdetail	3297	2017-07-19 14:48:05.142	cachingDetailsManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	3298	2017-07-19 14:48:05.142	salUserManager
com.atlassian.oauth.serviceprovider	3299	2017-07-19 14:48:05.142	expiredTokenRemoverScheduler
com.atlassian.confluence.extra.widgetconnector	3300	2017-07-19 14:48:05.142	widgetbox
com.atlassian.confluence.plugins.confluence-create-content-plugin	3301	2017-07-19 14:48:05.142	spaceBlueprintCreationListener
com.atlassian.confluence.plugins.confluence-software-blueprints	3302	2017-07-19 14:48:05.142	jirareports-changelog-dynamic
com.atlassian.confluence.plugins.confluence-space-ia	3303	2017-07-19 14:48:05.142	spacebar-pages
com.atlassian.applinks.applinks-plugin	3304	2017-07-19 14:48:05.142	applinks-new-table
confluence.sections.space.pages	3305	2017-07-19 14:48:05.142	list-alphabetically
com.atlassian.plugins.atlassian-nav-links-plugin	3306	2017-07-19 14:48:05.142	is-side-bar-enabled
com.atlassian.streams.core	3307	2017-07-19 14:48:05.142	streamsFeedUriBuilderFactory
com.atlassian.streams	3308	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.confluence.plugins.confluence-business-blueprints	3309	2017-07-19 14:48:05.142	common-template-resources
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	3310	2017-07-19 14:48:05.142	projectmonitor-template
com.atlassian.plugins.atlassian-nav-links-plugin	3311	2017-07-19 14:48:05.142	navigation-capability
com.atlassian.streams	3312	2017-07-19 14:48:05.142	date-lt-LT
confluence.extra.impresence2	3313	2017-07-19 14:48:05.142	sametime
com.atlassian.confluence.plugins.confluence-like	3314	2017-07-19 14:48:05.142	liked-page-action-reply-to-comment-link
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3315	2017-07-19 14:48:05.142	threadLocalDelegateExecutorFactory
com.atlassian.auiplugin	3316	2017-07-19 14:48:05.142	aui-header
com.atlassian.confluence.plugins.gadgets	3317	2017-07-19 14:48:05.142	gadgetViewFactory
com.atlassian.gadgets.directory	3318	2017-07-19 14:48:05.142	gadget-directory-admin-client-main
com.atlassian.streams	3319	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3320	2017-07-19 14:48:05.142	hipchat-space-to-room-global-install
com.atlassian.confluence.plugins.confluence-email-resources	3321	2017-07-19 14:48:05.142	template-utils-avatar-name-table-2.0.0
com.atlassian.confluence.plugins.confluence-mentions-plugin	3322	2017-07-19 14:48:05.142	mentions-hipchat-soy-templates-2
com.atlassian.confluence.plugins.confluence-content-property-storage	3323	2017-07-19 14:48:05.142	contentproperty-by-key
com.atlassian.confluence.plugins.confluence-sal-plugin	3324	2017-07-19 14:48:05.142	salHttpContext
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	3325	2017-07-19 14:48:05.142	shortcuts
com.atlassian.auiplugin	3326	2017-07-19 14:48:05.142	aui-reset
com.atlassian.confluence.plugins.confluence-labels	3327	2017-07-19 14:48:05.142	labels-actions
confluence.aui.staging	3328	2017-07-19 14:48:05.142	skate
com.atlassian.confluence.plugins.confluence-labels	3329	2017-07-19 14:48:05.142	view-labels-all-system
com.atlassian.confluence.plugins.confluence-ui-components	3330	2017-07-19 14:48:05.142	label-picker
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3331	2017-07-19 14:48:05.142	is-room-notify-client-enabled-soy-function
com.atlassian.confluence.plugins.confluence-cache-management-plugin	3332	2017-07-19 14:48:05.142	client-resources
com.atlassian.confluence.plugins.confluence-user-profile	3333	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.confluence.plugins.confluence-space-blueprints	3334	2017-07-19 14:48:05.142	documentation-space-blueprint
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3335	2017-07-19 14:48:05.142	transformer
com.atlassian.confluence.plugins.confluence-create-content-plugin	3336	2017-07-19 14:48:05.142	user-templates-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3337	2017-07-19 14:48:05.142	http-cache-expiry-service
confluence.content.action.menu	3338	2017-07-19 14:48:05.142	word-export
com.atlassian.streams.confluence	3339	2017-07-19 14:48:05.142	spaceRendererFactory
com.atlassian.applinks.applinks-plugin	3340	2017-07-19 14:48:05.142	applinks-new-ui-utils
com.atlassian.plugins.atlassian-whitelist-core-plugin	3341	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.auiplugin	3342	2017-07-19 14:48:05.142	aui-experimental-mobile
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3343	2017-07-19 14:48:05.142	confluence-collaborative-editor-api-rest-filter
confluence.extra.dynamictasklist2	3344	2017-07-19 14:48:05.142	web-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3345	2017-07-19 14:48:05.142	blogpost-created-notification-template
confluence.sections.admin.tasks	3346	2017-07-19 14:48:05.142	marketplaceAdminTask
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3347	2017-07-19 14:48:05.142	pluginMetaDataManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3348	2017-07-19 14:48:05.142	email-source-param-function
com.atlassian.confluence.plugins.confluence-labels	3349	2017-07-19 14:48:05.142	view-all-content-with-label
confluence.sections.profile	3350	2017-07-19 14:48:05.142	edit-notifications-profile
com.atlassian.applinks.applinks-plugin	3351	2017-07-19 14:48:05.142	applinks-v2-shim
com.atlassian.streams	3352	2017-07-19 14:48:05.142	date-mk-MK
com.atlassian.confluence.extra.flyingpdf	3353	2017-07-19 14:48:05.142	pdfExportLongRunningTaskFactory
com.atlassian.mywork.mywork-confluence-host-plugin	3354	2017-07-19 14:48:05.142	mwnotificationsminiview
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3355	2017-07-19 14:48:05.142	localeManager
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3356	2017-07-19 14:48:05.142	config-resource
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3357	2017-07-19 14:48:05.142	plugin-manager-servlet
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	3358	2017-07-19 14:48:05.142	projectposter-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3359	2017-07-19 14:48:05.142	html-service
com.atlassian.confluence.plugins.expand-macro	3360	2017-07-19 14:48:05.142	expand
com.atlassian.confluence.plugins.confluence-mobile	3361	2017-07-19 14:48:05.142	mobile-can-use-rest-filter
confluence.extra.jira	3362	2017-07-19 14:48:05.142	jirachart
com.atlassian.mywork.mywork-confluence-host-plugin	3363	2017-07-19 14:48:05.142	userApplicationLinkDao
com.atlassian.plugins.atlassian-help-tips	3364	2017-07-19 14:48:05.142	helptips-filter
com.atlassian.confluence.plugins.confluence-previews	3365	2017-07-19 14:48:05.142	version-navigation-plugin
com.atlassian.querylang.confluence-cql-plugin	3366	2017-07-19 14:48:05.142	space-type-field
com.atlassian.streams.confluence	3367	2017-07-19 14:48:05.142	date-es-DO
com.atlassian.confluence.plugins.gadgets	3368	2017-07-19 14:48:05.142	requestContextBuilder
com.atlassian.auiplugin	3369	2017-07-19 14:48:05.142	internal-basic-css
com.atlassian.confluence.keyboardshortcuts	3370	2017-07-19 14:48:05.142	tinymce.blockquote
com.atlassian.mywork.mywork-confluence-host-plugin	3371	2017-07-19 14:48:05.142	myWorkAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-daily-summary-email	3372	2017-07-19 14:48:05.142	chrome-template
com.atlassian.auiplugin	3373	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-registry
com.atlassian.auiplugin	3374	2017-07-19 14:48:05.142	aui-badge
com.atlassian.confluence.plugins.confluence-labels	3375	2017-07-19 14:48:05.142	soy-label-link-server-function
com.atlassian.streams	3376	2017-07-19 14:48:05.142	date-en-AU
com.atlassian.oauth.serviceprovider	3377	2017-07-19 14:48:05.142	localeResolver
confluence.web.resources	3378	2017-07-19 14:48:05.142	colours-transformer
com.atlassian.support.healthcheck.support-healthcheck-plugin	3379	2017-07-19 14:48:05.142	salI18nResolver
confluence.web.components	3380	2017-07-19 14:48:05.142	property-panel-js
confluence.extra.chart	3381	2017-07-19 14:48:05.142	chart-xhtml
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	3382	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.auiplugin	3383	2017-07-19 14:48:05.142	aui-page-layout
com.atlassian.plugins.base-hipchat-integration-plugin	3384	2017-07-19 14:48:05.142	configure-integration-data
com.atlassian.streams.confluence	3385	2017-07-19 14:48:05.142	date-es-EC
com.atlassian.support.stp	3386	2017-07-19 14:48:05.142	webResourceManagerContextItem
com.atlassian.streams	3387	2017-07-19 14:48:05.142	date-da-DK
com.atlassian.auiplugin	3388	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-form-validation-basic-validators
com.atlassian.confluence.plugins.search.confluence-search	3389	2017-07-19 14:48:05.142	queryFactory
confluence.search.mappers.lucene	3390	2017-07-19 14:48:05.142	all
com.atlassian.querylang.confluence-cql-plugin	3391	2017-07-19 14:48:05.142	current-content-query-function
com.atlassian.streams.confluence	3392	2017-07-19 14:48:05.142	date-es-CL
com.atlassian.streams	3393	2017-07-19 14:48:05.142	date-en-CA
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3394	2017-07-19 14:48:05.142	rest-compatibility-filter
tac.confluence.languages.no_NO	3395	2017-07-19 14:48:05.142	no_NO
com.atlassian.streams	3396	2017-07-19 14:48:05.142	date-en-BZ
com.atlassian.streams.confluence	3397	2017-07-19 14:48:05.142	date-es-CO
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3398	2017-07-19 14:48:05.142	site-blog-recipients-provider
com.atlassian.confluence.plugins.confluence-create-content-plugin	3399	2017-07-19 14:48:05.142	spaceCollectionService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3400	2017-07-19 14:48:05.142	confluenceHostLicenseProvider
confluence.macros.multimedia	3401	2017-07-19 14:48:05.142	quicktime
com.atlassian.confluence.plugins.confluence-space-blueprints	3402	2017-07-19 14:48:05.142	sidebarLinkService
com.atlassian.querylang.confluence-cql-plugin	3403	2017-07-19 14:48:05.142	modified-field
confluence.content.action.menu	3404	2017-07-19 14:48:05.142	view-information
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3405	2017-07-19 14:48:05.142	atlassianClusterMonitoring
com.atlassian.confluence.plugins.confluence-space-blueprints	3406	2017-07-19 14:48:05.142	team-space-blueprint-item
com.atlassian.auiplugin	3407	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-alignment
com.atlassian.streams.actions	3408	2017-07-19 14:48:05.142	commentActionHandlers
com.atlassian.streams	3409	2017-07-19 14:48:05.142	executorFactory
confluence.extra.jira	3410	2017-07-19 14:48:05.142	macro-browser-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	3411	2017-07-19 14:48:05.142	create-from-template-resources
confluence.listeners.core	3412	2017-07-19 14:48:05.142	usercredentialupdatelistener
com.atlassian.streams	3413	2017-07-19 14:48:05.142	streamsI18nResolver
com.atlassian.plugins.base-hipchat-integration-plugin	3414	2017-07-19 14:48:05.142	image-resources
com.atlassian.analytics.analytics-client	3415	2017-07-19 14:48:05.142	event-report-servlet
com.atlassian.plugins.atlassian-nav-links-plugin	3416	2017-07-19 14:48:05.142	readOnlyApplicationLinkService
com.atlassian.confluence.plugins.confluence-inline-tasks	3417	2017-07-19 14:48:05.142	tasks-feature-discovery-resources
com.atlassian.confluence.plugins.gadgets	3418	2017-07-19 14:48:05.142	page-gadget-embedded
com.atlassian.streams.confluence	3419	2017-07-19 14:48:05.142	date-es-CR
com.atlassian.confluence.editor	3420	2017-07-19 14:48:05.142	editor-save
com.atlassian.support.healthcheck.support-healthcheck-plugin	3421	2017-07-19 14:48:05.142	supportHealthCheckSupplier
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3422	2017-07-19 14:48:05.142	synchronyWebJsonToken
com.atlassian.confluence.plugins.confluence-email-resources	3423	2017-07-19 14:48:05.142	content-templates-page-link-pattern-1.0.0
confluence.extra.webdav	3424	2017-07-19 14:48:05.142	confluenceDavSessionInvalidatorJobTrigger
com.atlassian.confluence.plugins.confluence-mentions-plugin	3425	2017-07-19 14:48:05.142	mention-hipchat-notification-template
com.atlassian.confluence.editor	3426	2017-07-19 14:48:05.142	pageLayoutListener
com.atlassian.streams.core	3427	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.streams.confluence	3428	2017-07-19 14:48:05.142	date-es-BO
com.atlassian.confluence.plugins.confluence-email-resources	3429	2017-07-19 14:48:05.142	content-templates-status-update-pattern-1.0.0
com.atlassian.streams	3430	2017-07-19 14:48:05.142	streamsActivityRedirectionFilter
com.atlassian.confluence.plugins.confluence-labels	3431	2017-07-19 14:48:05.142	view-label-resources
com.atlassian.confluence.plugins.gadgets	3432	2017-07-19 14:48:05.142	gadget-placeholder
confluence.lifecycle.core	3433	2017-07-19 14:48:05.142	schedulerLifecycle
com.atlassian.support.healthcheck.support-healthcheck-plugin	3434	2017-07-19 14:48:05.142	executorServiceFactory
com.atlassian.applinks.applinks-plugin	3435	2017-07-19 14:48:05.142	applinks-new-ui
com.atlassian.applinks.applinks-oauth-plugin	3436	2017-07-19 14:48:05.142	applinkPluginUtil
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3437	2017-07-19 14:48:05.142	notificationUserService
com.atlassian.applinks.applinks-oauth-plugin	3438	2017-07-19 14:48:05.142	elevatedPermissionsService
com.atlassian.confluence.plugins.confluence-edge-index	3439	2017-07-19 14:48:05.142	flushEdgeIndexQueueJob
com.atlassian.confluence.plugins.confluence-sal-plugin	3440	2017-07-19 14:48:05.142	oAuthRequestVerifierFactory
confluence.extra.impresence2	3441	2017-07-19 14:48:05.142	reporter-jabber
com.atlassian.applinks.applinks-plugin	3442	2017-07-19 14:48:05.142	applinks-lib-backbone
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3443	2017-07-19 14:48:05.142	jsonableJacksonService
com.atlassian.confluence.plugins.confluence-create-content-plugin	3444	2017-07-19 14:48:05.142	blueprint-resources
com.atlassian.plugins.less-transformer-plugin	3445	2017-07-19 14:48:05.142	pluginUriResolver
com.atlassian.auiplugin	3446	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-deprecation
confluence.renderer.components	3447	2017-07-19 14:48:05.142	block
com.atlassian.confluence.plugins.confluence-request-access-plugin	3448	2017-07-19 14:48:05.142	confluence-request-access-plugin-loader
com.atlassian.confluence.plugins.confluence-create-content-plugin	3449	2017-07-19 14:48:05.142	header-create-dialog
com.atlassian.confluence.plugins.confluence-inline-comments	3450	2017-07-19 14:48:05.142	loader
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3451	2017-07-19 14:48:05.142	confluence-collaborative-editor-api-rest
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3452	2017-07-19 14:48:05.142	app
com.atlassian.streams.confluence	3453	2017-07-19 14:48:05.142	spaceEntityResolver
com.atlassian.auiplugin	3454	2017-07-19 14:48:05.142	placeholder
com.atlassian.plugins.atlassian-plugins-webresource-plugin	3455	2017-07-19 14:48:05.142	jsI18n
com.atlassian.confluence.extra.widgetconnector	3456	2017-07-19 14:48:05.142	voicethread
com.atlassian.auiplugin	3457	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-layer
com.atlassian.confluence.plugins.confluence-inline-tasks	3458	2017-07-19 14:48:05.142	show-task-feature-discovery-flag-page
com.atlassian.applinks.applinks-basicauth-plugin	3459	2017-07-19 14:48:05.142	applinkPluginUtil
com.atlassian.confluence.plugins.confluence-mentions-plugin	3460	2017-07-19 14:48:05.142	editor-insertmention
com.atlassian.plugin.notifications.notifications-module	3461	2017-07-19 14:48:05.142	notificationSchemeStore
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3462	2017-07-19 14:48:05.142	blog-share-notification
com.atlassian.streams.confluence	3463	2017-07-19 14:48:05.142	date-es-AR
com.atlassian.analytics.analytics-client	3464	2017-07-19 14:48:05.142	policy-update-init
com.atlassian.confluence.plugins.confluence-email-resources	3465	2017-07-19 14:48:05.142	notification-templates-1.0.0
com.atlassian.plugins.atlassian-whitelist-core-plugin	3466	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.plugins.atlassian-nav-links-plugin	3467	2017-07-19 14:48:05.142	project-shortcuts-rest
com.atlassian.plugins.base-hipchat-integration-plugin	3468	2017-07-19 14:48:05.142	rest-ping
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3469	2017-07-19 14:48:05.142	rest-filter
com.atlassian.auiplugin	3470	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-contain-dropdown
com.atlassian.plugins.atlassian-whitelist-core-plugin	3471	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.plugin.notifications.notifications-module	3472	2017-07-19 14:48:05.142	notificationErrorRegistry
com.atlassian.plugins.atlassian-nav-links-plugin	3473	2017-07-19 14:48:05.142	http-request-factory
com.atlassian.confluence.plugins.search.confluence-search	3474	2017-07-19 14:48:05.142	cqlSearcher
com.atlassian.auiplugin	3475	2017-07-19 14:48:05.142	ajs
com.atlassian.analytics.analytics-client	3476	2017-07-19 14:48:05.142	productEventListener
confluence.sections.space.admin	3477	2017-07-19 14:48:05.142	spacelogo
confluence.search.mappers.lucene	3478	2017-07-19 14:48:05.142	customContentType
com.atlassian.webhooks.atlassian-webhooks-plugin	3479	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.confluence.plugins.confluence-mobile	3480	2017-07-19 14:48:05.142	view-content-resources
com.atlassian.applinks.applinks-trustedapps-plugin	3481	2017-07-19 14:48:05.142	trustedApplicationReaper
com.atlassian.confluence.plugins.confluence-knowledge-base	3482	2017-07-19 14:48:05.142	userAccessor
com.atlassian.confluence.plugins.confluence-daily-summary-email	3483	2017-07-19 14:48:05.142	PopularContentManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3484	2017-07-19 14:48:05.142	localLicenseNotificationJob
com.atlassian.plugins.rest.atlassian-rest-module	3485	2017-07-19 14:48:05.142	activator
confluence.extra.impresence2	3486	2017-07-19 14:48:05.142	skypeme-xhtml
com.atlassian.confluence.extra.flyingpdf	3487	2017-07-19 14:48:05.142	configpdflayout-2
com.atlassian.confluence.extra.flyingpdf	3488	2017-07-19 14:48:05.142	export-format-pdf
com.atlassian.applinks.applinks-plugin	3489	2017-07-19 14:48:05.142	applinks-images
confluence.extra.impresence2	3490	2017-07-19 14:48:05.142	presence-reporter
confluence.macros.advanced	3491	2017-07-19 14:48:05.142	favpages-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3492	2017-07-19 14:48:05.142	upm-requirejs
com.atlassian.streams	3493	2017-07-19 14:48:05.142	date-gu-IN
com.atlassian.streams.confluence	3494	2017-07-19 14:48:05.142	date-ka-GE
com.atlassian.plugins.confluence-tdm-merger	3495	2017-07-19 14:48:05.142	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-content-property-storage	3496	2017-07-19 14:48:05.142	contentPropertySearchQueryFactory
com.atlassian.mywork.mywork-common-plugin	3497	2017-07-19 14:48:05.142	velocity-renderer
com.atlassian.confluence.plugins.search.confluence-search	3498	2017-07-19 14:48:05.142	luceneQueryParserFactory
com.atlassian.plugins.atlassian-nps-plugin	3499	2017-07-19 14:48:05.142	nps-rest
com.atlassian.auiplugin	3500	2017-07-19 14:48:05.142	aui-experimental-data-handlers
com.atlassian.analytics.analytics-client	3501	2017-07-19 14:48:05.142	privacyPolicyUpdateDetector
com.atlassian.support.stp	3502	2017-07-19 14:48:05.142	isUserAdminConditionChecker
com.atlassian.confluence.plugins.confluence-edge-index	3503	2017-07-19 14:48:05.142	commentCountQuery
com.atlassian.confluence.plugins.confluence-default-space-content-plugin	3504	2017-07-19 14:48:05.142	spacecontent-personal
confluence.sections.help	3505	2017-07-19 14:48:05.142	conf-help
com.atlassian.streams.confluence	3506	2017-07-19 14:48:05.142	date-is-IS
confluence.macros.multimedia	3507	2017-07-19 14:48:05.142	video
com.atlassian.auiplugin	3508	2017-07-19 14:48:05.142	template
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3509	2017-07-19 14:48:05.142	delete-resources
com.atlassian.applinks.applinks-plugin	3510	2017-07-19 14:48:05.142	restUrlBuilder
com.atlassian.auiplugin	3511	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-include
tac.confluence.languages.it_IT	3512	2017-07-19 14:48:05.142	it_IT
com.atlassian.auiplugin	3513	2017-07-19 14:48:05.142	aui-experimental-soy-templates-2
com.atlassian.streams.confluence	3514	2017-07-19 14:48:05.142	date-sms-FI
com.atlassian.confluence.plugins.confluence-email-resources	3515	2017-07-19 14:48:05.142	view-blogpost-email-call-to-action
com.atlassian.auiplugin	3516	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-blanket
com.atlassian.confluence.plugins.confluence-email-resources	3517	2017-07-19 14:48:05.142	get-nice-file-size-function
com.atlassian.plugins.atlassian-nav-links-plugin	3518	2017-07-19 14:48:05.142	cacheRefreshService
com.atlassian.confluence.editor	3519	2017-07-19 14:48:05.142	servletcontextthreadlocalservlet
confluence.extra.jira	3520	2017-07-19 14:48:05.142	applinksProxy
confluence.user.menu	3521	2017-07-19 14:48:05.142	login
confluence.web.resources	3522	2017-07-19 14:48:05.142	pages-dirview
com.atlassian.confluence.plugins.confluence-onboarding	3523	2017-07-19 14:48:05.142	onboardingNumberOfUsersCheckJob
com.atlassian.confluence.plugins.confluence-create-content-plugin	3524	2017-07-19 14:48:05.142	lazyInsertExecutor
com.atlassian.applinks.applinks-plugin	3525	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3526	2017-07-19 14:48:05.142	notificationRepresentationFactory
com.atlassian.applinks.applinks-oauth-plugin	3527	2017-07-19 14:48:05.142	oAuthUIAdminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	3528	2017-07-19 14:48:05.142	highlightActionsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-software-project	3529	2017-07-19 14:48:05.142	confluence-software-project-viewcontent-resources
com.atlassian.auiplugin	3530	2017-07-19 14:48:05.142	aui-experimental-example
com.atlassian.applinks.applinks-plugin	3531	2017-07-19 14:48:05.142	typeAccessor
com.atlassian.confluence.plugins.confluence-file-notifications	3532	2017-07-19 14:48:05.142	file-notifications-file-details-file-version
com.atlassian.plugins.atlassian-nav-links-plugin	3533	2017-07-19 14:48:05.142	application-properties
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3534	2017-07-19 14:48:05.142	roadmap-editor-resources
com.atlassian.auiplugin	3535	2017-07-19 14:48:05.142	cookie
com.atlassian.confluence.plugins.confluence-create-content-plugin	3536	2017-07-19 14:48:05.142	create-from-template
com.atlassian.querylang.confluence-cql-plugin	3537	2017-07-19 14:48:05.142	space-key-field
com.atlassian.confluence.plugins.confluence-email-resources	3538	2017-07-19 14:48:05.142	notification-templates-content-removed-1.0.0
confluence.web.resources	3539	2017-07-19 14:48:05.142	view-comment
com.atlassian.plugins.base-hipchat-integration-plugin	3540	2017-07-19 14:48:05.142	invites-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3541	2017-07-19 14:48:05.142	page-event-notification-transformer
com.atlassian.confluence.plugins.confluence-space-blueprints	3542	2017-07-19 14:48:05.142	documentation-space-homepage-template
com.atlassian.applinks.applinks-plugin	3543	2017-07-19 14:48:05.142	authenticationListener
com.atlassian.applinks.applinks-plugin	3544	2017-07-19 14:48:05.142	webResourceUrlProvider
com.atlassian.confluence.ext.newcode-macro-plugin	3545	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.auiplugin	3546	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-css-deprecations
com.atlassian.confluence.plugins.confluence-inline-tasks	3547	2017-07-19 14:48:05.142	task-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-create-content-plugin	3548	2017-07-19 14:48:05.142	contentBlueprintService
com.atlassian.confluence.plugins.confluence-lookandfeel	3549	2017-07-19 14:48:05.142	fileUploadManager
confluence.listeners.core	3550	2017-07-19 14:48:05.142	look-and-feel-audit-logging-listener
com.atlassian.streams.confluence	3551	2017-07-19 14:48:05.142	date-az-Cyrl-AZ
com.atlassian.plugins.base-hipchat-integration-plugin	3552	2017-07-19 14:48:05.142	hipchatUserConfigurationPanel
com.atlassian.analytics.analytics-client	3553	2017-07-19 14:48:05.142	licenseCreationDateService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3554	2017-07-19 14:48:05.142	searchManager
com.atlassian.auiplugin	3555	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-globalize
com.atlassian.applinks.applinks-plugin	3556	2017-07-19 14:48:05.142	auth-container
com.atlassian.auiplugin	3557	2017-07-19 14:48:05.142	aui-experimental-table-sortable
com.atlassian.streams	3558	2017-07-19 14:48:05.142	date-pt-PT
com.atlassian.confluence.editor	3559	2017-07-19 14:48:05.142	macro-placeholder
com.atlassian.confluence.plugins.confluence-like	3560	2017-07-19 14:48:05.142	like-created-notification-template-hipchat
confluence.renderer.components	3561	2017-07-19 14:48:05.142	url
confluence.sections.page	3562	2017-07-19 14:48:05.142	view-information
com.atlassian.confluence.plugins.share-page	3563	2017-07-19 14:48:05.142	share-attachment-email-notification-template-body
confluence.search.mappers.lucene	3564	2017-07-19 14:48:05.142	spacePermissionsSearchFilter
com.atlassian.confluence.extra.widgetconnector	3565	2017-07-19 14:48:05.142	widget-migrator
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3566	2017-07-19 14:48:05.142	confluenceUserRolesProvider
com.atlassian.confluence.plugins.confluence-knowledge-base	3567	2017-07-19 14:48:05.142	kb-how-to-article-blueprint
confluence.web.resources	3568	2017-07-19 14:48:05.142	page-intrash-resources
com.atlassian.confluence.plugins.confluence-software-blueprints	3569	2017-07-19 14:48:05.142	retrospectives-index
confluence.extra.impresence2	3570	2017-07-19 14:48:05.142	reporter-yahoo
com.atlassian.confluence.plugins.confluence-space-ia	3571	2017-07-19 14:48:05.142	advanced-links
com.atlassian.streams.confluence	3572	2017-07-19 14:48:05.142	activityObjectFactory
com.atlassian.confluence.plugins.confluence-content-property-storage	3573	2017-07-19 14:48:05.142	contentPropertiesExtractor
confluence.listeners.core	3574	2017-07-19 14:48:05.142	superBatchCounterInvalidator
com.atlassian.confluence.plugins.confluence-onboarding	3575	2017-07-19 14:48:05.142	onboarding-common-resources
com.atlassian.support.healthcheck.support-healthcheck-plugin	3576	2017-07-19 14:48:05.142	confluenceIndexInfoService
com.atlassian.auiplugin	3577	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-backbone
com.atlassian.confluence.keyboardshortcuts	3578	2017-07-19 14:48:05.142	tinymce.table.paste.row
com.atlassian.confluence.extra.flyingpdf	3579	2017-07-19 14:48:05.142	exportcss
com.atlassian.confluence.plugins.confluence-sal-plugin	3580	2017-07-19 14:48:05.142	threadLocalContextManager
com.atlassian.querylang.confluence-cql-plugin	3581	2017-07-19 14:48:05.142	user-sort-mapper
com.atlassian.plugin.notifications.notifications-module	3582	2017-07-19 14:48:05.142	userName
com.atlassian.confluence.plugins.confluence-knowledge-base	3583	2017-07-19 14:48:05.142	transactionTemplate
confluence.web.resources	3584	2017-07-19 14:48:05.142	type-helpers
com.atlassian.confluence.plugins.confluence-inline-comments	3585	2017-07-19 14:48:05.142	editor
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3586	2017-07-19 14:48:05.142	batchMessageMap-soy-function
com.atlassian.confluence.plugins.confluence-software-blueprints	3587	2017-07-19 14:48:05.142	jirareports-resources
com.atlassian.confluence.plugins.confluence-file-notifications	3588	2017-07-19 14:48:05.142	file-content-remove-notification
com.atlassian.confluence.plugins.confluence-rest-resources	3589	2017-07-19 14:48:05.142	rest-api-filter
com.atlassian.confluence.plugins.confluence-macro-browser	3590	2017-07-19 14:48:05.142	macro-browser-js
com.atlassian.confluence.restplugin	3591	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.recently-viewed-plugin	3592	2017-07-19 14:48:05.142	app-resources
com.atlassian.confluence.plugins.confluence-sortable-tables	3593	2017-07-19 14:48:05.142	date-format-header-metadata
com.atlassian.confluence.plugins.confluence-mobile	3594	2017-07-19 14:48:05.142	pluginResourceLocator
com.atlassian.confluence.extra.officeconnector	3595	2017-07-19 14:48:05.142	viewdoc-legacy
com.atlassian.confluence.plugins.confluence-create-content-plugin	3596	2017-07-19 14:48:05.142	all-resources
com.atlassian.confluence.plugins.confluence-inline-comments	3597	2017-07-19 14:48:05.142	like-email-adg-content-item
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3598	2017-07-19 14:48:05.142	propertiespanel
com.atlassian.plugins.authentication.atlassian-authentication-plugin	3599	2017-07-19 14:48:05.142	logout-servlet
com.atlassian.confluence.plugins.confluence-content-property-storage	3600	2017-07-19 14:48:05.142	storageContentPropertyManager
confluence.sections.news	3601	2017-07-19 14:48:05.142	view-information
com.atlassian.auiplugin	3602	2017-07-19 14:48:05.142	aui-experimental-progress-buttons
com.atlassian.confluence.plugins.confluence-page-banner	3603	2017-07-19 14:48:05.142	content-metadata-page-inherited-restrictions
confluence.sections.space.advanced	3604	2017-07-19 14:48:05.142	unfavourite
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3605	2017-07-19 14:48:05.142	hipchat-emoticons
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3606	2017-07-19 14:48:05.142	safeModeService
com.atlassian.streams.confluence	3607	2017-07-19 14:48:05.142	wiki
confluence.web.panels	3608	2017-07-19 14:48:05.142	confluence-header-workday-menu
confluence.sections.admin	3609	2017-07-19 14:48:05.142	theme
com.atlassian.crowd.embedded.admin	3610	2017-07-19 14:48:05.142	UpdateDirectoryConfigurationWithLocalUserStatus
com.atlassian.applinks.applinks-plugin	3611	2017-07-19 14:48:05.142	feature-v3
confluence.web.resources	3612	2017-07-19 14:48:05.142	login-styles
com.atlassian.confluence.editor	3613	2017-07-19 14:48:05.142	storageToEditorFragmentTransformer
com.atlassian.auiplugin	3614	2017-07-19 14:48:05.142	inline-dialog
com.atlassian.auiplugin	3615	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-constants
confluence.user.menu.concise	3616	2017-07-19 14:48:05.142	logout
com.atlassian.confluence.contributors	3617	2017-07-19 14:48:05.142	notificationEventListener
com.atlassian.streams.streams-thirdparty-plugin	3618	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.applinks.applinks-plugin	3619	2017-07-19 14:48:05.142	feature-applink-migration
com.atlassian.confluence.plugins.confluence-file-notifications	3620	2017-07-19 14:48:05.142	confluenceFileManagaer
com.atlassian.confluence.plugins.confluence-onboarding	3621	2017-07-19 14:48:05.142	global-storage-service
com.atlassian.querylang.confluence-cql-plugin	3622	2017-07-19 14:48:05.142	current-space-query-function
com.atlassian.confluence.plugins.confluence-periodic-analytics-events	3623	2017-07-19 14:48:05.142	periodicAnalyticsEventsWhitelist
com.atlassian.confluence.plugins.confluence-onboarding	3624	2017-07-19 14:48:05.142	confluence-flow-resources
com.atlassian.confluence.plugins.confluence-email-resources	3625	2017-07-19 14:48:05.142	clusterManager
com.atlassian.confluence.plugins.confluence-onboarding	3626	2017-07-19 14:48:05.142	onboarding-email-soy-templates
com.atlassian.streams.streams-thirdparty-plugin	3627	2017-07-19 14:48:05.142	feedSanitizer
com.atlassian.plugins.base-hipchat-integration-plugin	3628	2017-07-19 14:48:05.142	atlassianHipChatIntegrationAnalyticsWhitelist
confluence.renderer.components	3629	2017-07-19 14:48:05.142	inserted
com.atlassian.confluence.contributors	3630	2017-07-19 14:48:05.142	rest
com.atlassian.applinks.applinks-oauth-plugin	3631	2017-07-19 14:48:05.142	documentationLinker
com.atlassian.confluence.plugins.confluence-mobile	3632	2017-07-19 14:48:05.142	rest-filter
com.atlassian.gadgets.opensocial	3633	2017-07-19 14:48:05.142	metadata-rpc-servlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3634	2017-07-19 14:48:05.142	linkBuilder
com.atlassian.applinks.applinks-cors-plugin	3635	2017-07-19 14:48:05.142	corsFilter
com.atlassian.mywork.mywork-confluence-host-plugin	3636	2017-07-19 14:48:05.142	mwauthredirect
com.atlassian.integration.jira.jira-integration-plugin	3637	2017-07-19 14:48:05.142	server-side-templates
confluence.extra.confluencerpc	3638	2017-07-19 14:48:05.142	wikiSoapServiceTarget
com.atlassian.support.healthcheck.support-healthcheck-plugin	3639	2017-07-19 14:48:05.142	timeZoneManager
com.atlassian.confluence.plugins.confluence-content-property-storage	3640	2017-07-19 14:48:05.142	spacePropertyFinderFactory
com.atlassian.streams	3641	2017-07-19 14:48:05.142	date-ru-RU
com.atlassian.confluence.plugins.confluence-file-notifications	3642	2017-07-19 14:48:05.142	file-notifications-reply-action
com.atlassian.mywork.mywork-confluence-host-plugin	3643	2017-07-19 14:48:05.142	ao
com.atlassian.applinks.applinks-plugin	3644	2017-07-19 14:48:05.142	feature-help-link
com.atlassian.analytics.analytics-client	3645	2017-07-19 14:48:05.142	logEventFormatter
com.atlassian.plugin.notifications.notifications-module	3646	2017-07-19 14:48:05.142	cacheManager
com.atlassian.confluence.restplugin	3647	2017-07-19 14:48:05.142	rest
com.atlassian.support.healthcheck.support-healthcheck-plugin	3648	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.applinks.applinks-plugin	3649	2017-07-19 14:48:05.142	applicationLinkService
com.atlassian.confluence.editor	3650	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.streams	3651	2017-07-19 14:48:05.142	date-ms-BN
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3652	2017-07-19 14:48:05.142	instanceTopologyFactory
com.atlassian.confluence.plugins.confluence-previews	3653	2017-07-19 14:48:05.142	confluence-previews-css
com.atlassian.confluence.plugins.confluence-cache-management-plugin	3654	2017-07-19 14:48:05.142	actions
com.atlassian.confluence.plugins.confluence-jira-metadata	3655	2017-07-19 14:48:05.142	servlet-jira-redirect
com.atlassian.confluence.plugins.confluence-create-content-plugin	3656	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.plugins.confluence-highlight-actions	3657	2017-07-19 14:48:05.142	highlighting-service-filter
com.atlassian.confluence.plugins.quickedit	3658	2017-07-19 14:48:05.142	quick-comment-page
com.atlassian.confluence.plugins.confluence-rest-resources	3659	2017-07-19 14:48:05.142	content-labels-metadata-provider
confluence.sections.space.admin	3660	2017-07-19 14:48:05.142	removespace
com.atlassian.confluence.plugins.confluence-create-content-plugin	3661	2017-07-19 14:48:05.142	blueprintsTemplateHelper
com.atlassian.plugins.atlassian-nav-links-plugin	3662	2017-07-19 14:48:05.142	atlassian-nav-links-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	3663	2017-07-19 14:48:05.142	notification-templates-forgot-password-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3664	2017-07-19 14:48:05.142	localeResolver
com.atlassian.confluence.plugins.confluence-software-project	3665	2017-07-19 14:48:05.142	confluence-software-project-analytics-whitelist
com.atlassian.analytics.analytics-client	3666	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.confluence.plugins.confluence-lookandfeel	3667	2017-07-19 14:48:05.142	siteLogoManager
com.atlassian.applinks.applinks-oauth-plugin	3668	2017-07-19 14:48:05.142	serviceProviderTokenStore
com.atlassian.streams	3669	2017-07-19 14:48:05.142	date-en-NZ
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3670	2017-07-19 14:48:05.142	atlassianClusterMonitoring-filter
confluence.extra.jira	3671	2017-07-19 14:48:05.142	jiraissues-migration
com.atlassian.confluence.plugins.confluence-create-content-plugin	3672	2017-07-19 14:48:05.142	editor-resources
com.atlassian.plugins.atlassian-project-creation-plugin	3673	2017-07-19 14:48:05.142	project-linking-capability
confluence.extra.masterdetail	3674	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.plugins.confluence-email-resources	3675	2017-07-19 14:48:05.142	chrome-template-main-table-1.0.0
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3676	2017-07-19 14:48:05.142	applicationProperties
confluence.sections.space.tools	3677	2017-07-19 14:48:05.142	overview
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3678	2017-07-19 14:48:05.142	page-or-blog-notification-recipients-provider
com.atlassian.analytics.analytics-client	3679	2017-07-19 14:48:05.142	s3EventUploader
com.atlassian.plugin.notifications.notifications-module	3680	2017-07-19 14:48:05.142	notification-panel
crowd.system.passwordencoders	3681	2017-07-19 14:48:05.142	des
com.atlassian.streams	3682	2017-07-19 14:48:05.142	date-en-PH
com.atlassian.confluence.plugins.confluence-link-browser	3683	2017-07-19 14:48:05.142	link-browser-editor-resources
confluence.sections.admin	3684	2017-07-19 14:48:05.142	groups
com.atlassian.confluence.plugins.confluence-previews	3685	2017-07-19 14:48:05.142	annotation-plugin
com.atlassian.confluence.plugins.whatsnew	3686	2017-07-19 14:48:05.142	buildInformationService
confluence.extra.information	3687	2017-07-19 14:48:05.142	soy-templates
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3688	2017-07-19 14:48:05.142	upmScheduler
com.atlassian.plugins.atlassian-nav-links-plugin	3689	2017-07-19 14:48:05.142	capabilities-consumer-admin-rest-filter
confluence.macros.dashboard	3690	2017-07-19 14:48:05.142	spaces-list
com.atlassian.confluence.plugins.quickreload	3691	2017-07-19 14:48:05.142	confluence.quick-reload-automated
confluence.web.panels	3692	2017-07-19 14:48:05.142	confluence-header-admin-menu
com.atlassian.confluence.plugins.share-page	3693	2017-07-19 14:48:05.142	share-draft-email-notification-template-body
confluence.search.mappers.lucene	3694	2017-07-19 14:48:05.142	termSearchFilter
com.atlassian.plugins.atlassian-nps-plugin	3695	2017-07-19 14:48:05.142	npsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-file-notifications	3696	2017-07-19 14:48:05.142	file-notifications-reopen-action
confluence.web.resources	3697	2017-07-19 14:48:05.142	page-templates
com.atlassian.streams	3698	2017-07-19 14:48:05.142	date-sma-NO
confluence.extra.attachments	3699	2017-07-19 14:48:05.142	space-attachments-javascript
com.atlassian.confluence.plugins.gadgets	3700	2017-07-19 14:48:05.142	core-services-filter
confluence.sections.space.admin	3701	2017-07-19 14:48:05.142	looknfeel
com.atlassian.auiplugin	3702	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-select
com.atlassian.confluence.plugins.gadgets.spi	3703	2017-07-19 14:48:05.142	subscribedGadgetFeedIdGenerator
com.atlassian.crowd.embedded.admin	3704	2017-07-19 14:48:05.142	enable-html-escaping
com.atlassian.confluence.plugins.confluence-page-banner	3705	2017-07-19 14:48:05.142	page-banner-preview-resources
com.atlassian.auiplugin	3706	2017-07-19 14:48:05.142	aui-experimental-header-rotp
com.atlassian.auiplugin	3707	2017-07-19 14:48:05.142	aui-experimental-soy-templates
com.atlassian.applinks.applinks-cors-plugin	3708	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.streams	3709	2017-07-19 14:48:05.142	date-hi-IN
com.atlassian.confluence.plugins.confluence-email-resources	3710	2017-07-19 14:48:05.142	templateManager
com.atlassian.support.healthcheck.support-healthcheck-plugin	3711	2017-07-19 14:48:05.142	ao
com.atlassian.confluence.plugins.gadgets	3712	2017-07-19 14:48:05.142	css
com.atlassian.confluence.plugins.confluence-like	3713	2017-07-19 14:48:05.142	content-like-resources
com.atlassian.querylang.confluence-cql-plugin	3714	2017-07-19 14:48:05.142	multi-sort-mapper
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	3715	2017-07-19 14:48:05.142	remote-page-view-servlet
com.atlassian.oauth.serviceprovider	3716	2017-07-19 14:48:05.142	consumerStore
com.atlassian.plugins.atlassian-nav-links-plugin	3717	2017-07-19 14:48:05.142	ao-module
com.atlassian.auiplugin	3718	2017-07-19 14:48:05.142	aui-experimental-page-header
com.atlassian.confluence.plugins.confluence-create-content-plugin	3719	2017-07-19 14:48:05.142	hostContextAccessor
com.atlassian.confluence.plugins.confluence-space-blueprints	3720	2017-07-19 14:48:05.142	confluence-space-blueprints-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3721	2017-07-19 14:48:05.142	menu-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	3722	2017-07-19 14:48:05.142	macroResolver
com.atlassian.confluence.plugins.confluence-space-directory	3723	2017-07-19 14:48:05.142	timeZoneManager
com.atlassian.soy.soy-template-plugin	3724	2017-07-19 14:48:05.142	soyTransformer
confluence.extra.information	3725	2017-07-19 14:48:05.142	info
com.atlassian.activeobjects.activeobjects-plugin	3726	2017-07-19 14:48:05.142	admin-ui-filter
confluence.extra.jira	3727	2017-07-19 14:48:05.142	jira-chart-proxy-servlet
confluence.sections.space.advanced	3728	2017-07-19 14:48:05.142	exportxml
com.atlassian.applinks.applinks-plugin	3729	2017-07-19 14:48:05.142	concurrentExecutor
confluence.web.resources	3730	2017-07-19 14:48:05.142	querystring
com.atlassian.confluence.plugins.share-page	3731	2017-07-19 14:48:05.142	share-keyboard-shortcut
confluence.listeners.core	3732	2017-07-19 14:48:05.142	import-export-audit-logging-listener
com.atlassian.support.stp	3733	2017-07-19 14:48:05.142	userManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	3734	2017-07-19 14:48:05.142	contentGenerator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3735	2017-07-19 14:48:05.142	schedulerService
com.atlassian.streams.streams-thirdparty-plugin	3736	2017-07-19 14:48:05.142	userManager
confluence.renderer.components	3737	2017-07-19 14:48:05.142	monospace
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3738	2017-07-19 14:48:05.142	follower-added-notification-template-body
confluence.search.mappers.lucene	3739	2017-07-19 14:48:05.142	macroStorageVersion
com.atlassian.webhooks.atlassian-webhooks-plugin	3740	2017-07-19 14:48:05.142	WebHooksAdminActions
confluence.extra.masterdetail	3741	2017-07-19 14:48:05.142	details-xhtml
com.atlassian.confluence.plugins.gadgets	3742	2017-07-19 14:48:05.142	gadgetSpecUrlChecker
com.atlassian.querylang.confluence-cql-plugin	3743	2017-07-19 14:48:05.142	current-user-query-function
confluence.admin.user	3744	2017-07-19 14:48:05.142	userpicker
com.atlassian.confluence.contributors	3745	2017-07-19 14:48:05.142	contributors-summary
com.atlassian.confluence.plugins.gadgets	3746	2017-07-19 14:48:05.142	confluence-page-gadget
com.atlassian.support.stp	3747	2017-07-19 14:48:05.142	stp-license-banner-data-bitbucket
confluence.comment.action	3748	2017-07-19 14:48:05.142	comment-date
com.atlassian.confluence.plugins.confluence-email-resources	3749	2017-07-19 14:48:05.142	notification-templates-content-added-1.0.0
com.atlassian.applinks.applinks-trustedapps-plugin	3750	2017-07-19 14:48:05.142	trustedUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3751	2017-07-19 14:48:05.142	content-edited-mail-batch-notification-processor
com.atlassian.confluence.plugins.confluence-inline-comments	3752	2017-07-19 14:48:05.142	notification-template-reply
confluence.web.resources	3753	2017-07-19 14:48:05.142	dialog-breadcrumbs
com.atlassian.applinks.applinks-oauth-plugin	3754	2017-07-19 14:48:05.142	consumerTokenService
crowd.system.passwordencoders	3755	2017-07-19 14:48:05.142	ssha
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3756	2017-07-19 14:48:05.142	emoticons-resource-filter
com.atlassian.confluence.plugins.confluence-email-resources	3757	2017-07-19 14:48:05.142	content-templates-1.0.0
confluence.search.mappers.lucene	3758	2017-07-19 14:48:05.142	unlicensedUserSearchFilter
confluence.sections.page	3759	2017-07-19 14:48:05.142	edit
com.atlassian.applinks.applinks-basicauth-plugin	3760	2017-07-19 14:48:05.142	userManager
com.atlassian.plugins.atlassian-help-tips	3761	2017-07-19 14:48:05.142	ao-module
com.atlassian.applinks.applinks-trustedapps-plugin	3762	2017-07-19 14:48:05.142	trusted-auth-inbound-configuration
com.atlassian.plugins.base-hipchat-integration-plugin	3763	2017-07-19 14:48:05.142	conf-menu-item
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3764	2017-07-19 14:48:05.142	roadmap-utilities-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	3765	2017-07-19 14:48:05.142	confluence-documentation-space-blueprint-resources
com.atlassian.applinks.applinks-plugin	3766	2017-07-19 14:48:05.142	applinks-configure-entity-links-2
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3767	2017-07-19 14:48:05.142	upmSchedulerUpgradeTask
confluence.web.resources	3768	2017-07-19 14:48:05.142	userlink
com.atlassian.auiplugin	3769	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-underscore
com.atlassian.confluence.plugins.confluence-page-restrictions-dialog	3770	2017-07-19 14:48:05.142	confluencePageRestrictionsDialogWhitelist
com.atlassian.confluence.plugins.confluence-space-ia	3771	2017-07-19 14:48:05.142	link-dialog
com.atlassian.streams.confluence	3772	2017-07-19 14:48:05.142	date-ms-MY
com.atlassian.applinks.applinks-basicauth-plugin	3773	2017-07-19 14:48:05.142	confluence-inbound-basic
com.atlassian.plugin.notifications.notifications-module	3774	2017-07-19 14:48:05.142	eventPublisher
confluence.search.mappers.lucene	3775	2017-07-19 14:48:05.142	lastModifierSearchFilter
com.atlassian.plugin.notifications.notifications-module	3776	2017-07-19 14:48:05.142	notification-scheme
com.atlassian.confluence.plugins.gadgets	3777	2017-07-19 14:48:05.142	pageManager
com.atlassian.applinks.applinks-basicauth-plugin	3778	2017-07-19 14:48:05.142	internalHostApplication
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3779	2017-07-19 14:48:05.142	blogpost-trashed-notification-template
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3780	2017-07-19 14:48:05.142	imgfilterservler
confluence.sections.news	3781	2017-07-19 14:48:05.142	edit
com.atlassian.confluence.plugins.confluence-edge-index	3782	2017-07-19 14:48:05.142	flushEdgeIndexQueue
com.atlassian.confluence.plugins.confluence-content-property-storage	3783	2017-07-19 14:48:05.142	string-field-type-query-mapper
com.atlassian.streams	3784	2017-07-19 14:48:05.142	date-en-US
com.atlassian.confluence.plugins.confluence-knowledge-base	3785	2017-07-19 14:48:05.142	kbSpacePermissionUpdateService
com.atlassian.applinks.applinks-plugin	3786	2017-07-19 14:48:05.142	listEntityLinks
com.atlassian.plugins.atlassian-nps-plugin	3787	2017-07-19 14:48:05.142	nps-btf-admin-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3788	2017-07-19 14:48:05.142	hostLicenseInformation
com.atlassian.confluence.plugins.confluence-email-resources	3789	2017-07-19 14:48:05.142	notification-templates
com.atlassian.streams	3790	2017-07-19 14:48:05.142	date-en-UK
confluence.macros.dashboard	3791	2017-07-19 14:48:05.142	dashboard-macros-resources
com.atlassian.streams.core	3792	2017-07-19 14:48:05.142	localeResolver
com.atlassian.mywork.mywork-common-plugin	3793	2017-07-19 14:48:05.142	hostService
com.atlassian.plugins.atlassian-nps-plugin	3794	2017-07-19 14:48:05.142	nps-acknowledgement-flag-resources-async
com.atlassian.confluence.plugins.drag-and-drop	3795	2017-07-19 14:48:05.142	actions
com.atlassian.confluence.plugins.confluence-knowledge-base	3796	2017-07-19 14:48:05.142	spacePermissionManager
com.atlassian.streams	3797	2017-07-19 14:48:05.142	date-sw-KE
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3798	2017-07-19 14:48:05.142	upm-manage-templates
com.atlassian.confluence.plugins.confluence-edge-index	3799	2017-07-19 14:48:05.142	page.create
com.atlassian.confluence.plugins.confluence-templates	3800	2017-07-19 14:48:05.142	template-editor-variables-resources
confluence.macros.basic	3801	2017-07-19 14:48:05.142	nolink
com.atlassian.confluence.plugins.confluence-file-notifications	3802	2017-07-19 14:48:05.142	file-content-update-email-notification-template
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3803	2017-07-19 14:48:05.142	url-builder-function
com.atlassian.confluence.plugins.confluence-request-access-plugin	3804	2017-07-19 14:48:05.142	grant-access-notification-email-template-body
com.atlassian.streams	3805	2017-07-19 14:48:05.142	date-bs-Latn-BA
com.atlassian.streams	3806	2017-07-19 14:48:05.142	date-en-TT
com.atlassian.streams	3807	2017-07-19 14:48:05.142	date-zu-ZA
com.atlassian.confluence.plugins.confluence-onboarding	3808	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-dashboard	3809	2017-07-19 14:48:05.142	confluence-dashboard-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3810	2017-07-19 14:48:05.142	myWorkActionService
com.atlassian.confluence.extra.officeconnector	3811	2017-07-19 14:48:05.142	searchpreview
com.atlassian.confluence.plugins.confluence-create-content-plugin	3812	2017-07-19 14:48:05.142	webItemService
com.atlassian.plugins.atlassian-nav-links-plugin	3813	2017-07-19 14:48:05.142	navigation-client
com.atlassian.confluence.plugins.confluence-dashboard	3814	2017-07-19 14:48:05.142	opt-out
com.atlassian.streams.confluence	3815	2017-07-19 14:48:05.142	userManager
com.atlassian.auiplugin	3816	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-toggle-class-name
com.atlassian.soy.soy-template-plugin	3817	2017-07-19 14:48:05.142	soyWebPanelRenderer
com.atlassian.plugins.base-hipchat-integration-plugin	3818	2017-07-19 14:48:05.142	hipchat-user-link-support
confluence.extra.confluencerpc	3819	2017-07-19 14:48:05.142	xhtmlSoapService
com.atlassian.confluence.plugins.system-templates	3820	2017-07-19 14:48:05.142	welcome-message
com.atlassian.confluence.plugins.confluence-paste	3821	2017-07-19 14:48:05.142	autoconvert-core
com.atlassian.analytics.analytics-client	3822	2017-07-19 14:48:05.142	confluenceEventListener
confluence.macros.profile	3823	2017-07-19 14:48:05.142	network
com.atlassian.auiplugin	3824	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-state
com.atlassian.applinks.applinks-plugin	3825	2017-07-19 14:48:05.142	applinks-whitelist
com.atlassian.streams.actions	3826	2017-07-19 14:48:05.142	actionHandlerWebResources
com.atlassian.confluence.plugins.synchrony-interop	3827	2017-07-19 14:48:05.142	synchrony-interop-plugin-analytics-whitelist
confluence.extractors.core	3828	2017-07-19 14:48:05.142	versionCommentExtractor
com.atlassian.confluence.plugins.confluence-dashboard	3829	2017-07-19 14:48:05.142	navigation-webitems-resources
confluence.sections.space.advanced	3830	2017-07-19 14:48:05.142	rss
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3831	2017-07-19 14:48:05.142	page-moved-notification-template-body
com.atlassian.confluence.plugins.status-macro	3832	2017-07-19 14:48:05.142	status
com.atlassian.streams	3833	2017-07-19 14:48:05.142	date-sa-IN
com.atlassian.confluence.plugins.confluence-content-property-storage	3834	2017-07-19 14:48:05.142	content-property-field
confluence.extra.impresence2	3835	2017-07-19 14:48:05.142	icq-xhtml
com.atlassian.plugins.atlassian-help-tips	3836	2017-07-19 14:48:05.142	ao
com.atlassian.plugins.atlassian-nav-links-plugin	3837	2017-07-19 14:48:05.142	webSudoManager
com.atlassian.streams	3838	2017-07-19 14:48:05.142	date-en-GB
confluence.web.resources	3839	2017-07-19 14:48:05.142	syntaxhighlighter-java
com.atlassian.confluence.plugins.confluence-email-resources	3840	2017-07-19 14:48:05.142	notification-templates-page-remove-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3841	2017-07-19 14:48:05.142	promotedBlueprintService
com.atlassian.confluence.plugins.confluence-templates	3842	2017-07-19 14:48:05.142	breadcrumbGenerator
com.atlassian.streams	3843	2017-07-19 14:48:05.142	date-be-BY
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3844	2017-07-19 14:48:05.142	runtime-information
confluence.sections.space.tools	3845	2017-07-19 14:48:05.142	integrations
com.atlassian.confluence.plugins.confluence-create-content-plugin	3846	2017-07-19 14:48:05.142	show-space-welcome-dialog-flag
com.atlassian.analytics.analytics-client	3847	2017-07-19 14:48:05.142	cacheManager
com.atlassian.confluence.plugins.confluence-user-profile	3848	2017-07-19 14:48:05.142	user.profile.section
com.atlassian.confluence.plugins.share-page	3849	2017-07-19 14:48:05.142	rest-filter
confluence.listeners.core	3850	2017-07-19 14:48:05.142	blogpostNotificationsListener
com.atlassian.confluence.plugins.confluence-content-property-storage	3851	2017-07-19 14:48:05.142	date-field-type-query-mapper
com.atlassian.streams.confluence	3852	2017-07-19 14:48:05.142	date-be-BY
com.atlassian.plugins.atlassian-nav-links-plugin	3853	2017-07-19 14:48:05.142	user-agent-property
confluence.listeners.core	3854	2017-07-19 14:48:05.142	userStatusLabelListener
confluence.renderer.components	3855	2017-07-19 14:48:05.142	newline
com.atlassian.confluence.plugins.quickreload	3856	2017-07-19 14:48:05.142	userAccessor
confluence.extra.impresence2	3857	2017-07-19 14:48:05.142	reporter-skype
confluence.search.mappers.lucene	3858	2017-07-19 14:48:05.142	containingContentType
com.atlassian.applinks.applinks-plugin	3859	2017-07-19 14:48:05.142	servletMessageFactory
com.atlassian.confluence.plugins.confluence-rest-resources	3860	2017-07-19 14:48:05.142	content-api
com.atlassian.confluence.plugins.confluence-edge-index	3861	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.applinks.applinks-plugin	3862	2017-07-19 14:48:05.142	confluence-inbound-trusted
confluence.extractors.core	3863	2017-07-19 14:48:05.142	addressableChangeExtractor
com.atlassian.analytics.analytics-client	3864	2017-07-19 14:48:05.142	whitelistFilter
com.atlassian.confluence.plugins.view-source	3865	2017-07-19 14:48:05.142	confluence-view-source-api-rest-filter
com.atlassian.confluence.plugins.confluence-previews	3866	2017-07-19 14:48:05.142	mediaviewer-core
com.atlassian.streams.confluence	3867	2017-07-19 14:48:05.142	date-en-US
com.atlassian.confluence.plugins.search.confluence-search	3868	2017-07-19 14:48:05.142	lastModificationFormatter
com.atlassian.confluence.plugins.confluence-jira-metadata	3869	2017-07-19 14:48:05.142	jira-metadata-aggregate-cache-invalidation
com.atlassian.streams.actions	3870	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.keyboardshortcuts	3871	2017-07-19 14:48:05.142	view.attachments
com.atlassian.mywork.mywork-confluence-host-plugin	3872	2017-07-19 14:48:05.142	ao-module
com.atlassian.applinks.applinks-plugin	3873	2017-07-19 14:48:05.142	feature-bitbucket-rebrand
com.atlassian.confluence.extra.widgetconnector	3874	2017-07-19 14:48:05.142	dailymotion
com.atlassian.confluence.plugins.confluence-file-notifications	3875	2017-07-19 14:48:05.142	transactionTemplate
confluence.extra.livesearch	3876	2017-07-19 14:48:05.142	livesearch
com.atlassian.confluence.plugins.confluence-space-ia	3877	2017-07-19 14:48:05.142	space-ia-analytics-whitelist
com.atlassian.confluence.plugins.confluence-ui-components	3878	2017-07-19 14:48:05.142	space-picker
confluence.macros.advanced	3879	2017-07-19 14:48:05.142	listlabels
com.atlassian.streams	3880	2017-07-19 14:48:05.142	date-en-IE
com.atlassian.plugins.atlassian-nav-links-plugin	3881	2017-07-19 14:48:05.142	navigation-link-repository-service
com.atlassian.plugins.confluence-tdm-merger	3882	2017-07-19 14:48:05.142	tdmmerger
confluence.listeners.core	3883	2017-07-19 14:48:05.142	clusteredEventListener
com.atlassian.plugin.notifications.notifications-module	3884	2017-07-19 14:48:05.142	ao-module
com.atlassian.support.healthcheck.support-healthcheck-plugin	3885	2017-07-19 14:48:05.142	runtimeHelper
com.atlassian.support.healthcheck.support-healthcheck-plugin	3886	2017-07-19 14:48:05.142	healthCheckSchedulerComponent
com.atlassian.applinks.applinks-oauth-plugin	3887	2017-07-19 14:48:05.142	add-consumer-reciprocal
com.atlassian.streams	3888	2017-07-19 14:48:05.142	date-af-ZA
com.atlassian.confluence.plugins.confluence-email-resources	3889	2017-07-19 14:48:05.142	notification-templates-page-add-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3890	2017-07-19 14:48:05.142	list-templates-resources
com.atlassian.streams.confluence	3891	2017-07-19 14:48:05.142	date-en-TT
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3892	2017-07-19 14:48:05.142	renderContextFactory
com.atlassian.plugins.atlassian-whitelist-core-plugin	3893	2017-07-19 14:48:05.142	confluenceMacroWhitelistMigration
com.atlassian.streams.confluence	3894	2017-07-19 14:48:05.142	date-en-UK
com.atlassian.support.healthcheck.support-healthcheck-plugin	3895	2017-07-19 14:48:05.142	ao-module
confluence.admin.user	3896	2017-07-19 14:48:05.142	browseusers
com.atlassian.auiplugin	3897	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-contains
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3898	2017-07-19 14:48:05.142	confluenceNotificationJwtIssuerRegistry
com.atlassian.confluence.plugins.quickedit	3899	2017-07-19 14:48:05.142	quick-comment-panel
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3900	2017-07-19 14:48:05.142	confluence-comment-created-batching
confluence.sections.space.advanced	3901	2017-07-19 14:48:05.142	stopwatching
com.atlassian.confluence.plugins.confluence-content-report-plugin	3902	2017-07-19 14:48:05.142	content-report-table
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3903	2017-07-19 14:48:05.142	update-check-servlet
com.atlassian.confluence.keyboardshortcuts	3904	2017-07-19 14:48:05.142	go.to.preview.page
com.atlassian.streams.confluence	3905	2017-07-19 14:48:05.142	pageManager
com.atlassian.streams	3906	2017-07-19 14:48:05.142	date-az-Latn-AZ
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3907	2017-07-19 14:48:05.142	image-properties-tab-effects
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3908	2017-07-19 14:48:05.142	notificationTypes
com.atlassian.webhooks.atlassian-webhooks-plugin	3909	2017-07-19 14:48:05.142	cross-prod-webhooks-ao-module
confluence.listeners.core	3910	2017-07-19 14:48:05.142	plugincontentremovallistener
com.atlassian.confluence.plugins.confluence-jira-metadata	3911	2017-07-19 14:48:05.142	confluence-jira-metadata-rest-filter
com.atlassian.confluence.ext.newcode-macro-plugin	3912	2017-07-19 14:48:05.142	newcode-admin
confluence.web.resources	3913	2017-07-19 14:48:05.142	space-permissions-table
confluence.macros.advanced	3914	2017-07-19 14:48:05.142	export-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3915	2017-07-19 14:48:05.142	packageAccessor
com.atlassian.confluence.plugins.confluence-fixed-headers	3916	2017-07-19 14:48:05.142	confluence-fixed-headers-editor-content-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3917	2017-07-19 14:48:05.142	is-user-admin-soy-function
com.atlassian.applinks.applinks-plugin	3918	2017-07-19 14:48:05.142	applicationLinkClient
com.atlassian.applinks.applinks-trustedapps-plugin	3919	2017-07-19 14:48:05.142	localeResolver
com.atlassian.plugins.rest.atlassian-rest-module	3920	2017-07-19 14:48:05.142	servletModuleManager
com.atlassian.confluence.plugins.confluence-inline-tasks	3921	2017-07-19 14:48:05.142	mobile
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3922	2017-07-19 14:48:05.142	rest
com.atlassian.streams.confluence	3923	2017-07-19 14:48:05.142	spaceWatchActionHandler
com.atlassian.confluence.plugins.confluence-email-resources	3924	2017-07-19 14:48:05.142	stop-watching-page-email-batch-footer
confluence.user.menu	3925	2017-07-19 14:48:05.142	anonymous
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3926	2017-07-19 14:48:05.142	notificationQueueManager
com.atlassian.applinks.applinks-plugin	3927	2017-07-19 14:48:05.142	page-common
com.atlassian.applinks.applinks-cors-plugin	3928	2017-07-19 14:48:05.142	corsAuthenticationProviderPluginModule
confluence.extra.jira	3929	2017-07-19 14:48:05.142	web-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3930	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.applinks.applinks-plugin	3931	2017-07-19 14:48:05.142	authenticationConfigurationManager
com.atlassian.plugins.atlassian-nps-plugin	3932	2017-07-19 14:48:05.142	nps-acknowledgement-resources
com.atlassian.mywork.mywork-common-plugin	3933	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.streams.confluence	3934	2017-07-19 14:48:05.142	permissionManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3935	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.search.confluence-search	3936	2017-07-19 14:48:05.142	cql-site-search-field
com.atlassian.streams.confluence	3937	2017-07-19 14:48:05.142	date-en-ZW
com.atlassian.querylang.confluence-cql-plugin	3938	2017-07-19 14:48:05.142	text-field
com.atlassian.plugin.jslibs	3939	2017-07-19 14:48:05.142	marionette-2.1.0-factory
com.atlassian.auiplugin	3940	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-tipsy
com.atlassian.confluence.plugins.confluence-edge-index	3941	2017-07-19 14:48:05.142	edge-type
com.atlassian.streams	3942	2017-07-19 14:48:05.142	date-nb-NO
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3943	2017-07-19 14:48:05.142	disallowStartupInCloud
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3944	2017-07-19 14:48:05.142	mailContentProcessor
confluence.web.resources	3945	2017-07-19 14:48:05.142	page-diffs
com.atlassian.confluence.plugins.confluence-business-blueprints	3946	2017-07-19 14:48:05.142	file-list-blueprint
com.atlassian.confluence.plugins.confluence-inline-tasks	3947	2017-07-19 14:48:05.142	inline-tasks-styles
confluence.web.resources	3948	2017-07-19 14:48:05.142	auditlog
com.atlassian.confluence.plugins.confluence-onboarding	3949	2017-07-19 14:48:05.142	notification-template-no-spaces-body
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	3950	2017-07-19 14:48:05.142	userManager
com.atlassian.streams	3951	2017-07-19 14:48:05.142	date-en-JM
com.atlassian.confluence.plugins.confluence-easyuser-admin	3952	2017-07-19 14:48:05.142	confluence-easyuser-admin-actions
com.atlassian.analytics.analytics-client	3953	2017-07-19 14:48:05.142	whitelistSearcher
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3954	2017-07-19 14:48:05.142	contentService
com.atlassian.support.healthcheck.support-healthcheck-plugin	3955	2017-07-19 14:48:05.142	logFileHelper
com.atlassian.streams.confluence	3956	2017-07-19 14:48:05.142	date-en-ZA
confluence.sections.profile	3957	2017-07-19 14:48:05.142	user-administion
com.atlassian.plugins.atlassian-nav-links-plugin	3958	2017-07-19 14:48:05.142	i18n-resolver
confluence.comment.action	3959	2017-07-19 14:48:05.142	edit-comment
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3960	2017-07-19 14:48:05.142	page-trashed-notification-transformer
com.atlassian.confluence.plugins.confluence-paste	3961	2017-07-19 14:48:05.142	autoconvert-skitch
confluence.macros.dashboard	3962	2017-07-19 14:48:05.142	tabProvider
confluence.lifecycle.core	3963	2017-07-19 14:48:05.142	mananagedjobs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3964	2017-07-19 14:48:05.142	pluginLicenseNotificationChecker
org.randombits.confluence.toc	3965	2017-07-19 14:48:05.142	toc-zone-old
com.atlassian.confluence.plugins.confluence-create-content-plugin	3966	2017-07-19 14:48:05.142	list-blueprints-templates-panel
confluence.web.resources	3967	2017-07-19 14:48:05.142	attachments
com.atlassian.confluence.plugins.confluence-email-resources	3968	2017-07-19 14:48:05.142	get-attachment-filetype-i18n-function
com.atlassian.confluence.plugins.confluence-license-rest	3969	2017-07-19 14:48:05.142	license-resource-filter
com.atlassian.confluence.plugins.confluence-daily-summary-email	3970	2017-07-19 14:48:05.142	personalInformationManager
com.atlassian.streams.core	3971	2017-07-19 14:48:05.142	templateRendererFactory
com.atlassian.confluence.plugins.soy	3972	2017-07-19 14:48:05.142	soy-friendly-format-date-time-function
confluence.extra.jira	3973	2017-07-19 14:48:05.142	jira-xhtml
com.atlassian.confluence.plugins.confluence-view-file-macro	3974	2017-07-19 14:48:05.142	view-file-macro-notification-resources
com.atlassian.plugins.atlassian-project-creation-plugin	3975	2017-07-19 14:48:05.142	linking-rest-url
confluence.listeners.core	3976	2017-07-19 14:48:05.142	removePersonalSpaceListener
com.atlassian.confluence.plugins.confluence-daily-summary-email	3977	2017-07-19 14:48:05.142	popular-content-action-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3978	2017-07-19 14:48:05.142	myTaskDeprecatedListener
com.atlassian.analytics.analytics-client	3979	2017-07-19 14:48:05.142	blacklistFilter
com.atlassian.confluence.plugins.confluence-mobile	3980	2017-07-19 14:48:05.142	rest-caching-filter
com.atlassian.plugins.atlassian-nav-links-plugin	3981	2017-07-19 14:48:05.142	rotp-projectshortcuts
confluence.extra.masterdetail	3982	2017-07-19 14:48:05.142	detailsSummaryBuilder
com.atlassian.streams.confluence	3983	2017-07-19 14:48:05.142	date-ko-KR
com.atlassian.confluence.plugins.confluence-onboarding	3984	2017-07-19 14:48:05.142	userChecker
com.atlassian.confluence.extra.officeconnector	3985	2017-07-19 14:48:05.142	pptslideservlet
com.atlassian.analytics.analytics-client	3986	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.confluence.plugins.quickreload	3987	2017-07-19 14:48:05.142	quickreload
com.atlassian.confluence.plugins.confluence-paste	3988	2017-07-19 14:48:05.142	paste-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3989	2017-07-19 14:48:05.142	menu-service
com.atlassian.templaterenderer.api	3990	2017-07-19 14:48:05.142	i18nResolverContextItem
com.atlassian.confluence.plugins.confluence-inline-tasks	3991	2017-07-19 14:48:05.142	inline-tasks-editor
com.atlassian.confluence.plugins.gadgets	3992	2017-07-19 14:48:05.142	gadgetUsageTracker
com.atlassian.auiplugin	3993	2017-07-19 14:48:05.142	aui-progress-tracker
com.atlassian.plugins.atlassian-nav-links-plugin	3994	2017-07-19 14:48:05.142	login-uri-provider
com.atlassian.auiplugin	3995	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-polyfills-placeholder
confluence.extractors.core	3996	2017-07-19 14:48:05.142	textAttachmentContentExtractor
com.atlassian.auiplugin	3997	2017-07-19 14:48:05.142	jquery-effects
confluence.web.resources	3998	2017-07-19 14:48:05.142	left-nav-panel-resources
com.atlassian.streams.confluence	3999	2017-07-19 14:48:05.142	searchManager
com.atlassian.templaterenderer.api	4000	2017-07-19 14:48:05.142	webResourceManagerContextItem
com.atlassian.confluence.plugins.confluence-daily-summary-email	4001	2017-07-19 14:48:05.142	networkService
com.atlassian.auiplugin	4002	2017-07-19 14:48:05.142	aui-css-deprecation-warnings
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4003	2017-07-19 14:48:05.142	templatePathResolver
com.atlassian.analytics.analytics-client	4004	2017-07-19 14:48:05.142	timeKeeper
com.atlassian.auiplugin	4005	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-dialog
com.atlassian.confluence.extra.widgetconnector	4006	2017-07-19 14:48:05.142	wufoo
com.atlassian.confluence.plugins.confluence-edge-index	4007	2017-07-19 14:48:05.142	dateEntityFactory
com.atlassian.confluence.plugins.confluence-like	4008	2017-07-19 14:48:05.142	like-content-email-batch-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4009	2017-07-19 14:48:05.142	upm-osgi-resources
com.atlassian.streams.confluence	4010	2017-07-19 14:48:05.142	date-en-PH
com.atlassian.confluence.plugins.confluence-daily-summary-email	4011	2017-07-19 14:48:05.142	permissionManager
com.atlassian.confluence.plugins.confluence-page-layout	4012	2017-07-19 14:48:05.142	pagelayout
com.atlassian.auiplugin	4013	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-fix-ie-innerhtml
confluence.search.mappers.lucene	4014	2017-07-19 14:48:05.142	prefix
com.atlassian.auiplugin	4015	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-template
confluence.web.resources	4016	2017-07-19 14:48:05.142	jquery-json
confluence.search.mappers.lucene	4017	2017-07-19 14:48:05.142	matchAllDocsFilter
confluence.web.resources	4018	2017-07-19 14:48:05.142	event
com.atlassian.mywork.mywork-confluence-host-plugin	4019	2017-07-19 14:48:05.142	service-selector
com.atlassian.analytics.analytics-client	4020	2017-07-19 14:48:05.142	eventPreprocessor
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4021	2017-07-19 14:48:05.142	emoticons-resource
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4022	2017-07-19 14:48:05.142	formatSettingsManager
com.atlassian.mywork.mywork-confluence-host-plugin	4023	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.plugins.rest.atlassian-rest-module	4024	2017-07-19 14:48:05.142	xsrfTokenAccessor
com.atlassian.healthcheck.atlassian-healthcheck	4025	2017-07-19 14:48:05.142	hostStateMonitor
com.atlassian.streams.confluence	4026	2017-07-19 14:48:05.142	date-se-FI
com.atlassian.auiplugin	4027	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-binders-placeholder
com.atlassian.plugins.base-hipchat-integration-plugin	4028	2017-07-19 14:48:05.142	soy-resources
confluence.listeners.core	4029	2017-07-19 14:48:05.142	confluence-easyuser-userSignUpEmail
org.randombits.confluence.toc	4030	2017-07-19 14:48:05.142	toc-zone
confluence.extra.webdav	4031	2017-07-19 14:48:05.142	reverseProxyFilterSupport
com.atlassian.plugins.base-hipchat-integration-plugin-api	4032	2017-07-19 14:48:05.142	hipchatAO
com.atlassian.confluence.plugins.gadgets	4033	2017-07-19 14:48:05.142	gadget-macro-migrator
com.atlassian.confluence.plugins.attachmentExtractors	4034	2017-07-19 14:48:05.142	pdfContentExtractor
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4035	2017-07-19 14:48:05.142	inboundWhitelist
com.atlassian.streams.confluence	4036	2017-07-19 14:48:05.142	date-en-NZ
com.atlassian.confluence.plugins.confluence-space-ia	4037	2017-07-19 14:48:05.142	ao-module
com.atlassian.confluence.plugins.confluence-inline-comments	4038	2017-07-19 14:48:05.142	notification-transformer-resolve
com.atlassian.applinks.applinks-oauth-plugin	4039	2017-07-19 14:48:05.142	TwoLeggedOAuthWithImpersonationAuthenticatorProviderPluginModule
com.atlassian.confluence.extra.widgetconnector	4040	2017-07-19 14:48:05.142	placeholderService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4041	2017-07-19 14:48:05.142	licenseHandler
com.atlassian.streams.confluence	4042	2017-07-19 14:48:05.142	captchaManager
com.atlassian.confluence.plugins.confluence-lookandfeel	4043	2017-07-19 14:48:05.142	sitelogo-admin-task
com.atlassian.confluence.plugins.confluence-mentions-plugin	4044	2017-07-19 14:48:05.142	mentionsRest
com.atlassian.auiplugin	4045	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-skate
com.atlassian.mywork.mywork-common-plugin	4046	2017-07-19 14:48:05.142	mywork-registration-provider
com.atlassian.confluence.extra.flyingpdf	4047	2017-07-19 14:48:05.142	globalconfigpdflayout
com.atlassian.querylang.confluence-cql-plugin	4048	2017-07-19 14:48:05.142	cqlsearchaction
com.atlassian.auiplugin	4049	2017-07-19 14:48:05.142	aui-css
com.atlassian.confluence.keyboardshortcuts	4050	2017-07-19 14:48:05.142	create.blog
com.atlassian.confluence.plugins.confluence-email-resources	4051	2017-07-19 14:48:05.142	stop-watching-space-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4052	2017-07-19 14:48:05.142	emoticonStorageToViewTransformer
confluence.web.resources	4053	2017-07-19 14:48:05.142	icons
com.atlassian.confluence.plugins.expand-macro	4054	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	4055	2017-07-19 14:48:05.142	syntaxhighlighter-export
com.atlassian.confluence.plugins.confluence-easyuser-admin	4056	2017-07-19 14:48:05.142	admin-signup-users-panel
com.atlassian.plugin.notifications.notifications-module	4057	2017-07-19 14:48:05.142	notification-macro
com.atlassian.streams	4058	2017-07-19 14:48:05.142	xsrfTokenValidator
confluence.sections.create	4059	2017-07-19 14:48:05.142	add-page-without-parent-template
com.atlassian.auiplugin	4060	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-attributes
com.atlassian.plugins.base-hipchat-integration-plugin	4061	2017-07-19 14:48:05.142	rest-integration-filter
com.atlassian.confluence.plugins.gadgets	4062	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.confluence.plugins.confluence-rest-resources	4063	2017-07-19 14:48:05.142	rest-api-experimental-filter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4064	2017-07-19 14:48:05.142	mpacAnalyticsHttpClientFactory
com.atlassian.streams.confluence	4065	2017-07-19 14:48:05.142	confluence-rest-filter
com.atlassian.confluence.ext.newcode-macro-plugin	4066	2017-07-19 14:48:05.142	syntaxhighlighter-mobile
com.atlassian.mywork.mywork-confluence-provider-plugin	4067	2017-07-19 14:48:05.142	localeManager
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4068	2017-07-19 14:48:05.142	notificationStoreService
confluence.extra.impresence2	4069	2017-07-19 14:48:05.142	icq
confluence.sections.profile	4070	2017-07-19 14:48:05.142	unfollow-user
com.atlassian.confluence.extra.flyingpdf	4071	2017-07-19 14:48:05.142	exportHtmlService
confluence.extra.dynamictasklist2	4072	2017-07-19 14:48:05.142	tasklist
com.atlassian.auiplugin	4073	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-unique-id
com.atlassian.streams.confluence	4074	2017-07-19 14:48:05.142	date-ms-BN
com.atlassian.confluence.plugins.gadgets	4075	2017-07-19 14:48:05.142	externalGadgetStore
com.atlassian.plugins.atlassian-help-tips	4076	2017-07-19 14:48:05.142	helptips
confluence.web.components	4077	2017-07-19 14:48:05.142	show.business.group.in.user.hover
com.atlassian.applinks.applinks-oauth-plugin	4078	2017-07-19 14:48:05.142	serviceProviderStoreService
com.atlassian.applinks.applinks-plugin	4079	2017-07-19 14:48:05.142	applinks-configure-entity-links
com.atlassian.confluence.plugins.confluence-baseurl-plugin	4080	2017-07-19 14:48:05.142	baseurl-filter
com.atlassian.streams.confluence	4081	2017-07-19 14:48:05.142	hibernateSessionFactory
com.atlassian.auiplugin	4082	2017-07-19 14:48:05.142	ajs-gadgets
com.atlassian.auiplugin	4083	2017-07-19 14:48:05.142	internal-src-js-aui-css-deprecations
com.atlassian.mywork.mywork-confluence-host-plugin	4084	2017-07-19 14:48:05.142	open.notifications
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4085	2017-07-19 14:48:05.142	localeResolver
confluence.extractors.core	4086	2017-07-19 14:48:05.142	spaceTypeChangeExtractor
com.atlassian.confluence.plugins.confluence-software-blueprints	4087	2017-07-19 14:48:05.142	requirements-item
confluence.extractors.core	4088	2017-07-19 14:48:05.142	untokenizedTitleChangeExtractor
com.atlassian.confluence.editor	4089	2017-07-19 14:48:05.142	emotions-resources
confluence.extractors.core	4090	2017-07-19 14:48:05.142	versionCommentChangeExtractor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4091	2017-07-19 14:48:05.142	licenseTokenValidator
com.atlassian.confluence.plugins.confluence-file-notifications	4092	2017-07-19 14:48:05.142	file-notifications-file-details-file-link
com.atlassian.mywork.mywork-confluence-host-plugin	4093	2017-07-19 14:48:05.142	systemStatusService
com.atlassian.plugins.authentication.atlassian-authentication-plugin	4094	2017-07-19 14:48:05.142	error-handling-filter
com.atlassian.support.stp	4095	2017-07-19 14:48:05.142	pluginSupportInfoXmlKeyResolver
com.atlassian.streams.streams-thirdparty-plugin	4096	2017-07-19 14:48:05.142	tenantAwareDataSourceProvider
com.atlassian.confluence.plugins.confluence-paste	4097	2017-07-19 14:48:05.142	autoconvert-google-redirect
com.atlassian.confluence.plugins.confluence-mobile	4098	2017-07-19 14:48:05.142	user-profile-resources
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4099	2017-07-19 14:48:05.142	whitelist-rest-filter
com.atlassian.streams.confluence	4100	2017-07-19 14:48:05.142	date-af-ZA
com.atlassian.confluence.plugins.confluence-files	4101	2017-07-19 14:48:05.142	confluenceFileRest
com.atlassian.confluence.extra.flyingpdf	4102	2017-07-19 14:48:05.142	intermediateHtmlBuilder
confluence.macros.advanced	4103	2017-07-19 14:48:05.142	blogpost-resources
com.atlassian.confluence.extra.widgetconnector	4104	2017-07-19 14:48:05.142	skitch
com.atlassian.activeobjects.activeobjects-plugin	4105	2017-07-19 14:48:05.142	enable-html-escaping
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4106	2017-07-19 14:48:05.142	rest-filter
com.atlassian.plugins.atlassian-whitelist-core-plugin	4107	2017-07-19 14:48:05.142	whitelistManager
com.atlassian.applinks.applinks-cors-plugin	4108	2017-07-19 14:48:05.142	applinkPluginUtil
crowd.system.passwordencoders	4109	2017-07-19 14:48:05.142	md5
com.atlassian.mywork.mywork-confluence-host-plugin	4110	2017-07-19 14:48:05.142	user-mapping
com.atlassian.gadgets.opensocial	4111	2017-07-19 14:48:05.142	js-servlet
confluence.web.resources	4112	2017-07-19 14:48:05.142	shared-templates
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4113	2017-07-19 14:48:05.142	servicemonitor-template
confluence.sections.space.admin	4114	2017-07-19 14:48:05.142	spacepermissions
com.atlassian.confluence.plugins.editor-loader	4115	2017-07-19 14:48:05.142	breadcrumb-generator
confluence.extractors.core	4116	2017-07-19 14:48:05.142	commentExtractor
com.atlassian.gadgets.publisher	4117	2017-07-19 14:48:05.142	dashboard-item-common
com.atlassian.confluence.keyboardshortcuts	4118	2017-07-19 14:48:05.142	edit.page
com.atlassian.confluence.plugins.confluence-lookandfeel	4119	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.confluence-mobile	4120	2017-07-19 14:48:05.142	pageBuilderService
com.atlassian.auiplugin	4121	2017-07-19 14:48:05.142	aui-experimental-page
com.atlassian.streams.confluence	4122	2017-07-19 14:48:05.142	date-hi-IN
com.atlassian.auiplugin	4123	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-dropdown2
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4124	2017-07-19 14:48:05.142	hipChatServerDiscovery
confluence.macros.advanced	4125	2017-07-19 14:48:05.142	include-servlet
com.atlassian.streams	4126	2017-07-19 14:48:05.142	feedParser
confluence.listeners.core	4127	2017-07-19 14:48:05.142	resetXStreamPluginListener
com.atlassian.confluence.plugins.confluence-content-property-storage	4128	2017-07-19 14:48:05.142	jsonExpressionEvaluator
com.atlassian.auiplugin	4129	2017-07-19 14:48:05.142	aui-experimental-soy-templates-legacy1
com.atlassian.applinks.applinks-plugin	4130	2017-07-19 14:48:05.142	fisheyeCrucibleRepository
com.atlassian.streams.confluence	4131	2017-07-19 14:48:05.142	date-se-NO
com.atlassian.confluence.plugins.confluence-email-resources	4132	2017-07-19 14:48:05.142	content-templates-content-deleted-lozenge-pattern-1.0.0
com.atlassian.confluence.editor	4133	2017-07-19 14:48:05.142	editor-featured-macro-info
com.atlassian.applinks.applinks-plugin	4134	2017-07-19 14:48:05.142	genericEntity
com.atlassian.confluence.plugins.confluence-space-ia	4135	2017-07-19 14:48:05.142	spacebar-profile
confluence.sections.admin.header	4136	2017-07-19 14:48:05.142	conf-admin
com.atlassian.streams	4137	2017-07-19 14:48:05.142	date-tn-ZA
com.atlassian.plugin.notifications.notifications-module	4138	2017-07-19 14:48:05.142	notificationsMacroVariableHelp
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4139	2017-07-19 14:48:05.142	defaultNotificationPreferenceManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4140	2017-07-19 14:48:05.142	mailContentProcessor
confluence.web.panels	4141	2017-07-19 14:48:05.142	confluence-header-user-menu
com.atlassian.confluence.plugins.confluence-sal-plugin	4142	2017-07-19 14:48:05.142	searchQueryParser
com.atlassian.confluence.plugins.share-page	4143	2017-07-19 14:48:05.142	_private_share-page-resources
com.atlassian.analytics.analytics-client	4144	2017-07-19 14:48:05.142	analyticsClientWhitelist
com.atlassian.confluence.extra.officeconnector	4145	2017-07-19 14:48:05.142	viewdoc
com.atlassian.streams.confluence	4146	2017-07-19 14:48:05.142	entryFactory
com.atlassian.support.stp	4147	2017-07-19 14:48:05.142	stp-confluence-link
com.atlassian.confluence.plugins.confluence-content-property-storage	4148	2017-07-19 14:48:05.142	contentPropertyService
com.atlassian.confluence.plugins.share-page	4149	2017-07-19 14:48:05.142	share-page-notification
com.atlassian.confluence.plugins.confluence-templates	4150	2017-07-19 14:48:05.142	space-templates-2
com.atlassian.confluence.plugins.confluence-view-file-macro	4151	2017-07-19 14:48:05.142	capabilityService
com.atlassian.confluence.plugins.confluence-create-content-plugin	4152	2017-07-19 14:48:05.142	requestResolver
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4153	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.confluence.plugins.share-page	4154	2017-07-19 14:48:05.142	share-draft-notification
com.atlassian.confluence.extra.widgetconnector	4155	2017-07-19 14:48:05.142	httpRetrievalEmbedService
confluence.web.resources	4156	2017-07-19 14:48:05.142	defaults
com.atlassian.confluence.plugins.confluence-mobile	4157	2017-07-19 14:48:05.142	lib
com.atlassian.streams.confluence	4158	2017-07-19 14:48:05.142	date-en-GB
com.atlassian.confluence.plugins.view-storage-format	4159	2017-07-19 14:48:05.142	view-storage-resources
confluence.listeners.core	4160	2017-07-19 14:48:05.142	macroMetaDataListener
com.atlassian.confluence.extra.flyingpdf	4161	2017-07-19 14:48:05.142	betterpdf
com.atlassian.confluence.plugins.confluence-inline-tasks	4162	2017-07-19 14:48:05.142	hipchat-resources-2.0.0
com.atlassian.applinks.applinks-plugin	4163	2017-07-19 14:48:05.142	localeResolver
confluence.macros.advanced	4164	2017-07-19 14:48:05.142	favpages
com.atlassian.applinks.applinks-plugin	4165	2017-07-19 14:48:05.142	applinks-css
confluence.macros.dashboard	4166	2017-07-19 14:48:05.142	globalEntitiesContextProvider
com.atlassian.confluence.plugins.confluence-inline-comments	4167	2017-07-19 14:48:05.142	confluence-inline-new-mail-batching
com.atlassian.confluence.plugins.gadgets.spi	4168	2017-07-19 14:48:05.142	externalGadgetStore
com.atlassian.auiplugin	4169	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-jquery-plugins-jquery-select2
com.atlassian.analytics.analytics-client	4170	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.mywork.mywork-common-plugin	4171	2017-07-19 14:48:05.142	my-work-client-rest
com.atlassian.applinks.applinks-trustedapps-plugin	4172	2017-07-19 14:48:05.142	webSudoManager
com.atlassian.confluence.editor	4173	2017-07-19 14:48:05.142	page-editor-css
com.atlassian.confluence.editor	4174	2017-07-19 14:48:05.142	editor-settings-panel
com.atlassian.confluence.plugins.confluence-quicknav	4175	2017-07-19 14:48:05.142	admin-section-provider
confluence.renderer.components	4176	2017-07-19 14:48:05.142	embedded
com.atlassian.confluence.plugins.confluence-page-banner	4177	2017-07-19 14:48:05.142	page-banner-common-resources
confluence.web.resources	4178	2017-07-19 14:48:05.142	date-picker
confluence.web.resources	4179	2017-07-19 14:48:05.142	date-time-formatting
com.atlassian.auiplugin	4180	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-escape
com.atlassian.confluence.plugins.confluence-email-resources	4181	2017-07-19 14:48:05.142	content-templates-inline-user-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-mentions-plugin	4182	2017-07-19 14:48:05.142	mentionsExtractor
com.atlassian.confluence.extra.widgetconnector	4183	2017-07-19 14:48:05.142	flickr
com.atlassian.confluence.plugins.confluence-email-resources	4184	2017-07-19 14:48:05.142	content-templates-users-involved-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-edge-index	4185	2017-07-19 14:48:05.142	blogpost.create
com.atlassian.applinks.applinks-plugin	4186	2017-07-19 14:48:05.142	confluence
confluence.filters.core	4187	2017-07-19 14:48:05.142	gzipFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4188	2017-07-19 14:48:05.142	pluginUpdateCheckJob
confluence.web.resources	4189	2017-07-19 14:48:05.142	space-admin
com.atlassian.confluence.plugins.confluence-inline-comments	4190	2017-07-19 14:48:05.142	strip-inline-comment-marker
com.atlassian.analytics.analytics-client	4191	2017-07-19 14:48:05.142	confluenceLicenseCreationDateProvider
confluence.web.resources	4192	2017-07-19 14:48:05.142	breadcrumbs-jquery
com.atlassian.applinks.applinks-basicauth-plugin	4193	2017-07-19 14:48:05.142	basicContextFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	4194	2017-07-19 14:48:05.142	tableSelectionModifier
com.atlassian.confluence.extra.officeconnector	4195	2017-07-19 14:48:05.142	editattachmentinworditem
com.atlassian.confluence.plugins.confluence-easyuser-admin	4196	2017-07-19 14:48:05.142	taskManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	4197	2017-07-19 14:48:05.142	mentionsRest-filter
confluence.extra.confluencerpc	4198	2017-07-19 14:48:05.142	pagesSoapService
com.atlassian.querylang.confluence-cql-plugin	4199	2017-07-19 14:48:05.142	favourite-spaces-query-function
com.atlassian.confluence.extra.flyingpdf	4200	2017-07-19 14:48:05.142	globalconfigpdfstyle
com.atlassian.applinks.applinks-oauth-plugin	4201	2017-07-19 14:48:05.142	add-atlassian-service-provider
com.atlassian.mywork.mywork-common-plugin	4202	2017-07-19 14:48:05.142	config-service
com.atlassian.confluence.extra.flyingpdf	4203	2017-07-19 14:48:05.142	pdfexportpageop
confluence.extra.impresence2	4204	2017-07-19 14:48:05.142	reporter-aim
com.atlassian.confluence.plugins.confluence-mobile	4205	2017-07-19 14:48:05.142	mobile-resource-servlet
com.atlassian.confluence.plugins.confluence-file-notifications	4206	2017-07-19 14:48:05.142	file-content-remove-email-notification-template-body
com.atlassian.confluence.plugins.confluence-templates	4207	2017-07-19 14:48:05.142	list-global-templates-panel
com.atlassian.analytics.analytics-client	4208	2017-07-19 14:48:05.142	confluence-event-checklist-menu-item
com.atlassian.confluence.keyboardshortcuts	4209	2017-07-19 14:48:05.142	tinymce.h1
com.atlassian.confluence.plugins.confluence-software-project	4210	2017-07-19 14:48:05.142	sp-space-homepage-template
com.atlassian.healthcheck.atlassian-healthcheck	4211	2017-07-19 14:48:05.142	health-check
com.atlassian.confluence.keyboardshortcuts	4212	2017-07-19 14:48:05.142	tinymce.h2
com.atlassian.confluence.keyboardshortcuts	4213	2017-07-19 14:48:05.142	tinymce.h3
confluence.listeners.core	4214	2017-07-19 14:48:05.142	global-settings-audit-logging-listener
com.atlassian.confluence.keyboardshortcuts	4215	2017-07-19 14:48:05.142	tinymce.h4
com.atlassian.confluence.plugins.confluence-create-content-plugin	4216	2017-07-19 14:48:05.142	templateFinderFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4217	2017-07-19 14:48:05.142	sysPersistedContextItem
com.atlassian.auiplugin	4218	2017-07-19 14:48:05.142	aui-experimental-navigation
com.atlassian.auiplugin	4219	2017-07-19 14:48:05.142	table
com.atlassian.applinks.applinks-cors-plugin	4220	2017-07-19 14:48:05.142	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-like	4221	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.confluence-email-resources	4222	2017-07-19 14:48:05.142	avatar-image-function
com.atlassian.confluence.keyboardshortcuts	4223	2017-07-19 14:48:05.142	tinymce.h5
com.atlassian.applinks.applinks-plugin	4224	2017-07-19 14:48:05.142	applinks-util-js
com.atlassian.confluence.keyboardshortcuts	4225	2017-07-19 14:48:05.142	tinymce.h6
com.atlassian.confluence.plugins.expand-macro	4226	2017-07-19 14:48:05.142	expand-macro-desktop-resources
com.atlassian.auiplugin	4227	2017-07-19 14:48:05.142	aui-buttons
com.atlassian.streams	4228	2017-07-19 14:48:05.142	date-ko-KR
com.atlassian.confluence.plugins.confluence-space-ia	4229	2017-07-19 14:48:05.142	spacesidebar
com.atlassian.querylang.confluence-cql-plugin	4230	2017-07-19 14:48:05.142	start-of-month-one-arg-function
com.atlassian.confluence.plugins.confluence-software-blueprints	4231	2017-07-19 14:48:05.142	jirareports-blueprint
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4232	2017-07-19 14:48:05.142	upm-audit-log-resources
com.atlassian.plugin.notifications.notifications-module	4233	2017-07-19 14:48:05.142	notificationServersServlet
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4234	2017-07-19 14:48:05.142	confluence-user-authentication-servlet
confluence.search.mappers.lucene	4235	2017-07-19 14:48:05.142	fullname
com.atlassian.querylang.confluence-cql-plugin	4236	2017-07-19 14:48:05.142	label-field
com.atlassian.streams.confluence	4237	2017-07-19 14:48:05.142	date-zh-HK
com.atlassian.confluence.plugins.confluence-like	4238	2017-07-19 14:48:05.142	like-created-notification-template
com.atlassian.confluence.keyboardshortcuts	4239	2017-07-19 14:48:05.142	tinymce.wikimarkup
org.randombits.confluence.toc	4240	2017-07-19 14:48:05.142	toc-old
com.atlassian.analytics.analytics-client	4241	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.oauth.consumer	4242	2017-07-19 14:48:05.142	consumerService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4243	2017-07-19 14:48:05.142	pluginLicenseValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4244	2017-07-19 14:48:05.142	upm-update-check-page
com.atlassian.confluence.plugins.expand-macro	4245	2017-07-19 14:48:05.142	expand-macro-mobile-resources
com.atlassian.labs.atlassian-bot-killer	4246	2017-07-19 14:48:05.142	BotKillerFilter
com.atlassian.applinks.applinks-cors-plugin	4247	2017-07-19 14:48:05.142	corsContextFilter
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	4248	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.streams	4249	2017-07-19 14:48:05.142	date-ms-MY
com.atlassian.confluence.plugins.confluence-software-project	4250	2017-07-19 14:48:05.142	sp-space-product-requirements-template
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4251	2017-07-19 14:48:05.142	rest
com.atlassian.plugins.rest.atlassian-rest-module	4252	2017-07-19 14:48:05.142	darkFeatureManager
com.atlassian.confluence.plugins.confluence-highlight-actions	4253	2017-07-19 14:48:05.142	highlighting-service
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4254	2017-07-19 14:48:05.142	darkFeatureManager
com.atlassian.confluence.plugins.confluence-files	4255	2017-07-19 14:48:05.142	filesUnresolvedCommentCount
com.atlassian.streams	4256	2017-07-19 14:48:05.142	date-en-ZW
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4257	2017-07-19 14:48:05.142	licenseEntityFactory
com.atlassian.confluence.extra.officeconnector	4258	2017-07-19 14:48:05.142	velocity.helper
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4259	2017-07-19 14:48:05.142	tomcatHealthCheck
confluence.search.mappers.lucene	4260	2017-07-19 14:48:05.142	authorSearchFilter
confluence.sections.admin	4261	2017-07-19 14:48:05.142	customhtml
com.atlassian.applinks.applinks-plugin	4262	2017-07-19 14:48:05.142	jira-project
com.atlassian.querylang.confluence-cql-plugin	4263	2017-07-19 14:48:05.142	start-of-day-one-arg-function
com.atlassian.applinks.applinks-plugin	4264	2017-07-19 14:48:05.142	applinks-lib
confluence.sections.space.tools	4265	2017-07-19 14:48:05.142	choosetheme
com.atlassian.confluence.plugins.expand-macro	4266	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.confluence.plugins.recently-viewed-plugin	4267	2017-07-19 14:48:05.142	recently-viewed-content-one-arg-function
com.atlassian.confluence.plugins.confluence-create-content-plugin	4268	2017-07-19 14:48:05.142	templateUpdater
com.atlassian.auiplugin	4269	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-select-suggestions-model
com.atlassian.streams	4270	2017-07-19 14:48:05.142	date-en-ZA
com.atlassian.mywork.mywork-confluence-provider-plugin	4271	2017-07-19 14:48:05.142	xhtmlContent
confluence.sections.space.tools	4272	2017-07-19 14:48:05.142	custompagecontent
com.atlassian.crowd.embedded.admin	4273	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-ui-components	4274	2017-07-19 14:48:05.142	include-exclude-picker
com.atlassian.streams.confluence	4275	2017-07-19 14:48:05.142	date-en-JM
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4276	2017-07-19 14:48:05.142	plugin-finder-servlet
com.atlassian.confluence.plugins.system-templates	4277	2017-07-19 14:48:05.142	system-template-resources
com.atlassian.confluence.extra.officeconnector	4278	2017-07-19 14:48:05.142	tokenProvider-filter
com.atlassian.streams.confluence	4279	2017-07-19 14:48:05.142	date-se-SE
com.atlassian.confluence.keyboardshortcuts	4280	2017-07-19 14:48:05.142	favourite.page
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4281	2017-07-19 14:48:05.142	follower-added-notification-transformer
com.atlassian.streams.streams-thirdparty-plugin	4282	2017-07-19 14:48:05.142	representationFactory
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4283	2017-07-19 14:48:05.142	objectMapperFactory
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4284	2017-07-19 14:48:05.142	amd
com.atlassian.applinks.applinks-oauth-plugin	4285	2017-07-19 14:48:05.142	oAuthContextFilter
com.atlassian.confluence.plugins.drag-and-drop	4286	2017-07-19 14:48:05.142	drag-and-drop-for-editor
com.atlassian.confluence.plugins.confluence-sal-plugin	4287	2017-07-19 14:48:05.142	requestFactory
com.atlassian.confluence.plugins.confluence-file-notifications	4288	2017-07-19 14:48:05.142	file-content-update-notification
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4289	2017-07-19 14:48:05.142	whitelistService
com.atlassian.streams.confluence	4290	2017-07-19 14:48:05.142	date-nb-NO
com.atlassian.confluence.plugins.gadgets	4291	2017-07-19 14:48:05.142	gadgetRequestContextFactory
com.atlassian.confluence.plugins.confluence-email-resources	4292	2017-07-19 14:48:05.142	content-templates-content-added-pattern-1.0.0
com.atlassian.auiplugin	4293	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-results-list
com.atlassian.plugins.atlassian-project-creation-plugin	4294	2017-07-19 14:48:05.142	project-linking-rest
confluence.macros.advanced	4295	2017-07-19 14:48:05.142	blogpost
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4296	2017-07-19 14:48:05.142	innoDBLogFileSizeCheck
com.atlassian.streams.confluence	4297	2017-07-19 14:48:05.142	date-zh-CN
com.atlassian.confluence.plugins.confluence-inline-tasks	4298	2017-07-19 14:48:05.142	view-page-tasks-email-action-item
com.atlassian.confluence.plugins.confluence-create-content-plugin	4299	2017-07-19 14:48:05.142	contentBlueprintManager
confluence.extra.attachments	4300	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4301	2017-07-19 14:48:05.142	applicationStatusService
com.atlassian.confluence.plugins.gadgets	4302	2017-07-19 14:48:05.142	macro-browser-for-gadgetsplugin
confluence.sections.admin	4303	2017-07-19 14:48:05.142	configurecaptcha
confluence.extra.information	4304	2017-07-19 14:48:05.142	information-plugin-adg-styles
com.atlassian.streams.confluence	4305	2017-07-19 14:48:05.142	date-en-IE
confluence.web.resources	4306	2017-07-19 14:48:05.142	aui-soy-resources
com.atlassian.streams.actions	4307	2017-07-19 14:48:05.142	inlineActionsJs
com.atlassian.confluence.plugins.confluence-mentions-plugin	4308	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4309	2017-07-19 14:48:05.142	confluence-upm-purchased-addons-menu
com.atlassian.confluence.plugins.confluence-sal-plugin	4310	2017-07-19 14:48:05.142	vcacheRequestContextOperations
com.atlassian.confluence.image.effects.ImageEffectsPlugin	4311	2017-07-19 14:48:05.142	imageEffectsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	4312	2017-07-19 14:48:05.142	ao
com.atlassian.plugins.atlassian-whitelist-core-plugin	4313	2017-07-19 14:48:05.142	inboundWhitelist
com.atlassian.streams.confluence	4314	2017-07-19 14:48:05.142	spaceManager
com.atlassian.confluence.extra.widgetconnector	4315	2017-07-19 14:48:05.142	twitter-autoconvert-webresources
com.atlassian.streams.confluence	4316	2017-07-19 14:48:05.142	date-mk-MK
com.atlassian.confluence.plugins.gadgets.spi	4317	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.confluence.plugins.gadgets	4318	2017-07-19 14:48:05.142	gadgetCounter
com.atlassian.applinks.applinks-oauth-plugin	4319	2017-07-19 14:48:05.142	oAuthOrphanedTrustDetector
com.atlassian.auiplugin	4320	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-widget
confluence.editor.actions	4321	2017-07-19 14:48:05.142	edit-image
com.atlassian.auiplugin	4322	2017-07-19 14:48:05.142	aui-experimental-progress-indicator
com.atlassian.streams	4323	2017-07-19 14:48:05.142	date-sl-SI
confluence.sections.page.temp	4324	2017-07-19 14:48:05.142	view
com.atlassian.auiplugin	4325	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-inline-dialog2
com.atlassian.streams	4326	2017-07-19 14:48:05.142	formatPreferenceProvider
com.atlassian.auiplugin	4327	2017-07-19 14:48:05.142	internal-keyboardshortcuts
com.atlassian.confluence.plugins.confluence-inline-tasks	4328	2017-07-19 14:48:05.142	inline-tasks-pdf-export
com.atlassian.confluence.plugins.confluence-like	4329	2017-07-19 14:48:05.142	confluence-like-created-batching
com.atlassian.confluence.plugins.confluence-email-resources	4330	2017-07-19 14:48:05.142	template-utils-avatar-name-table-column-1.0.0
confluence.sections.space.admin	4331	2017-07-19 14:48:05.142	permissionedpages
com.atlassian.plugin.notifications.notifications-module	4332	2017-07-19 14:48:05.142	editNotificationServerServlet
confluence.macros.advanced	4333	2017-07-19 14:48:05.142	recently-updated
confluence.listeners.core	4334	2017-07-19 14:48:05.142	page-templates-logging-listener
com.atlassian.confluence.editor	4335	2017-07-19 14:48:05.142	placeholder-caching-filter
com.atlassian.mywork.mywork-common-plugin	4336	2017-07-19 14:48:05.142	authenticationConfigurationManager
confluence.sections.space.tools	4337	2017-07-19 14:48:05.142	spacedetails-personal
com.atlassian.confluence.plugins.confluence-create-content-plugin	4338	2017-07-19 14:48:05.142	promotedTemplateService
com.atlassian.confluence.plugins.confluence-email-resources	4339	2017-07-19 14:48:05.142	stop-watching-all-blogs-email-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	4340	2017-07-19 14:48:05.142	content-templates-page-title-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-space-ia	4341	2017-07-19 14:48:05.142	space-tools-browse-pages
com.atlassian.confluence.ext.newcode-macro-plugin	4342	2017-07-19 14:48:05.142	code
confluence.listeners.core	4343	2017-07-19 14:48:05.142	updateLabelsInChangeIndexListener
com.atlassian.streams.confluence	4344	2017-07-19 14:48:05.142	date-lt-LT
com.atlassian.analytics.analytics-client	4345	2017-07-19 14:48:05.142	timeoutChecker
com.atlassian.favicon.confluence-custom-favicon-plugin	4346	2017-07-19 14:48:05.142	favicon-soy
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4347	2017-07-19 14:48:05.142	localeResolver
com.atlassian.plugins.atlassian-nps-plugin	4348	2017-07-19 14:48:05.142	skate-shim
com.atlassian.confluence.editor	4349	2017-07-19 14:48:05.142	editor-restricted
com.atlassian.streams.streams-thirdparty-plugin	4350	2017-07-19 14:48:05.142	tx-processor
com.atlassian.streams.confluence	4351	2017-07-19 14:48:05.142	date-zh-MO
com.atlassian.auiplugin	4352	2017-07-19 14:48:05.142	aui-experimental-module
com.atlassian.mywork.mywork-common-plugin	4353	2017-07-19 14:48:05.142	task-service
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4354	2017-07-19 14:48:05.142	upm-audit-log
confluence.web.resources	4355	2017-07-19 14:48:05.142	aui-select2
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4356	2017-07-19 14:48:05.142	confluenceHipChatIntegrationAnalyticsWhitelist
com.atlassian.confluence.editor	4357	2017-07-19 14:48:05.142	tinymceeditor
com.atlassian.auiplugin	4358	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-checkbox-multiselect
confluence.search.mappers.lucene	4359	2017-07-19 14:48:05.142	none
com.atlassian.confluence.ext.newcode-macro-plugin	4360	2017-07-19 14:48:05.142	code-xhtml
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4361	2017-07-19 14:48:05.142	keyboardshortcut-hash
com.atlassian.confluence.extra.officeconnector	4362	2017-07-19 14:48:05.142	downloadInEditor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4363	2017-07-19 14:48:05.142	templateRender
confluence.sections.page	4364	2017-07-19 14:48:05.142	view
confluence.sections.page.operations	4365	2017-07-19 14:48:05.142	copy
confluence.macros.dashboard	4366	2017-07-19 14:48:05.142	recently-updated-dashboard
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4367	2017-07-19 14:48:05.142	page-trashed-notification-template-body
com.atlassian.oauth.serviceprovider	4368	2017-07-19 14:48:05.142	unescaper
confluence.extra.attachments	4369	2017-07-19 14:48:05.142	space-attachments-xhtml
com.atlassian.plugin.notifications.notifications-module	4370	2017-07-19 14:48:05.142	notificationsIssueEventListener
com.atlassian.confluence.extra.officeconnector	4371	2017-07-19 14:48:05.142	importworditem
com.atlassian.plugin.notifications.notifications-module	4372	2017-07-19 14:48:05.142	templatePathResolver
com.atlassian.plugin.notifications.notifications-module	4373	2017-07-19 14:48:05.142	rendererComponentAccessor
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4374	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.confluence-create-content-plugin	4375	2017-07-19 14:48:05.142	i18nResolver
confluence.extra.jira	4376	2017-07-19 14:48:05.142	jira-issues-retriever
com.atlassian.querylang.confluence-cql-plugin	4377	2017-07-19 14:48:05.142	type-sort-mapper
confluence.user.menu.concise	4378	2017-07-19 14:48:05.142	user-concise
com.atlassian.mywork.mywork-common-plugin	4379	2017-07-19 14:48:05.142	helpPathResolver
com.atlassian.streams.actions	4380	2017-07-19 14:48:05.142	pluginAccessor
com.atlassian.streams.confluence	4381	2017-07-19 14:48:05.142	date-tr-TR
com.atlassian.confluence.plugins.profile-picture	4382	2017-07-19 14:48:05.142	profile-picture-editor_resources
com.atlassian.mywork.mywork-confluence-host-plugin	4383	2017-07-19 14:48:05.142	my-work-rest
com.atlassian.oauth.serviceprovider	4384	2017-07-19 14:48:05.142	oauthRequestTokenServlet
confluence.sections.admin	4385	2017-07-19 14:48:05.142	language
com.atlassian.confluence.plugins.confluence-mentions-plugin	4386	2017-07-19 14:48:05.142	mention-email-reply-link
confluence.web.resources	4387	2017-07-19 14:48:05.142	space-permissions-form
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4388	2017-07-19 14:48:05.142	is-room-notification-enabled-soy-function
confluence.sections.space.advanced	4389	2017-07-19 14:48:05.142	advanced
com.atlassian.support.healthcheck.support-healthcheck-plugin	4390	2017-07-19 14:48:05.142	shcWhitelist
com.atlassian.streams	4391	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4392	2017-07-19 14:48:05.142	page-update-notification
com.atlassian.streams	4393	2017-07-19 14:48:05.142	date-es-AR
com.atlassian.confluence.plugins.confluence-mobile	4394	2017-07-19 14:48:05.142	legacyV2RendererContextInitialiser
com.atlassian.confluence.plugins.confluence-mobile	4395	2017-07-19 14:48:05.142	creatorsSearchFilter
com.atlassian.confluence.plugins.confluence-request-access-plugin	4396	2017-07-19 14:48:05.142	email-resources
com.atlassian.streams	4397	2017-07-19 14:48:05.142	sessionManager
com.atlassian.streams	4398	2017-07-19 14:48:05.142	date-sq-AL
com.atlassian.plugins.less-transformer-plugin	4399	2017-07-19 14:48:05.142	less-transformer
com.atlassian.confluence.plugins.dialog-wizard	4400	2017-07-19 14:48:05.142	dialogManager
tac.confluence.languages.et_EE	4401	2017-07-19 14:48:05.142	et_EE
com.atlassian.confluence.plugins.confluence-business-blueprints	4402	2017-07-19 14:48:05.142	meeting-notes-item
com.atlassian.confluence.plugins.confluence-link-browser	4403	2017-07-19 14:48:05.142	link-browser-tab-advanced
com.atlassian.querylang.confluence-cql-plugin	4404	2017-07-19 14:48:05.142	end-of-day-zero-arg-function
confluence.extra.impresence2	4405	2017-07-19 14:48:05.142	sametime-resources
com.atlassian.confluence.plugins.confluence-macro-browser	4406	2017-07-19 14:48:05.142	macro-browser-css
com.atlassian.confluence.plugins.confluence-email-resources	4407	2017-07-19 14:48:05.142	email-from-field-renderer
confluence.extra.impresence2	4408	2017-07-19 14:48:05.142	impresence.config
com.atlassian.confluence.plugins.confluence-email-resources	4409	2017-07-19 14:48:05.142	notification-templates-blog-edit-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4410	2017-07-19 14:48:05.142	audit-log-servlet
com.atlassian.confluence.plugins.confluence-email-resources	4411	2017-07-19 14:48:05.142	misc-icons
com.atlassian.applinks.applinks-plugin	4412	2017-07-19 14:48:05.142	applinksRestV2
com.atlassian.applinks.applinks-plugin	4413	2017-07-19 14:48:05.142	applinksRestV3
com.atlassian.confluence.plugins.confluence-inline-comments	4414	2017-07-19 14:48:05.142	confluence-inline-reply-batching
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4415	2017-07-19 14:48:05.142	copy-resources
com.atlassian.plugins.atlassian-whitelist-core-plugin	4416	2017-07-19 14:48:05.142	bandanaManager
com.atlassian.querylang.confluence-cql-plugin	4417	2017-07-19 14:48:05.142	start-of-week-zero-arg-function
com.atlassian.confluence.plugins.soy	4418	2017-07-19 14:48:05.142	soy-items-for-section-soy-function
com.atlassian.confluence.plugins.confluence-create-content-plugin	4419	2017-07-19 14:48:05.142	ao-module
confluence.sections.news	4420	2017-07-19 14:48:05.142	view
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4421	2017-07-19 14:48:05.142	periodic-collaborative-editing-mode-event
com.atlassian.confluence.extra.officeconnector	4422	2017-07-19 14:48:05.142	excel97ContentExtractor
confluence.sections.help	4423	2017-07-19 14:48:05.142	confluence-help
com.atlassian.applinks.applinks-plugin	4424	2017-07-19 14:48:05.142	authenticatorAccessor
confluence.search.mappers.lucene	4425	2017-07-19 14:48:05.142	inSpaceSearchFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4426	2017-07-19 14:48:05.142	pluginRequestFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4427	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.confluence.plugins.confluence-inline-comments	4428	2017-07-19 14:48:05.142	view-resolved-comments
com.atlassian.confluence.plugins.recently-viewed-plugin	4429	2017-07-19 14:48:05.142	ao-module
com.atlassian.applinks.applinks-trustedapps-plugin	4430	2017-07-19 14:48:05.142	requestFactory
com.atlassian.confluence.plugins.confluence-default-space-content-plugin	4431	2017-07-19 14:48:05.142	spacecontent-global
com.atlassian.streams	4432	2017-07-19 14:48:05.142	date-es-CL
com.atlassian.confluence.plugins.soy	4433	2017-07-19 14:48:05.142	soy-version-number-function
com.atlassian.streams	4434	2017-07-19 14:48:05.142	date-es-CO
com.atlassian.confluence.plugins.confluence-lookandfeel	4435	2017-07-19 14:48:05.142	faviconManager
com.atlassian.mywork.mywork-confluence-provider-plugin	4436	2017-07-19 14:48:05.142	impersonationService
com.atlassian.applinks.applinks-cors-plugin	4437	2017-07-19 14:48:05.142	corsAuthServlet
com.atlassian.streams	4438	2017-07-19 14:48:05.142	date-es-CR
com.atlassian.streams.confluence	4439	2017-07-19 14:48:05.142	date-en-CA
com.atlassian.auiplugin	4440	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-label
com.atlassian.analytics.analytics-client	4441	2017-07-19 14:48:05.142	confluence-analytics-configuration-menu-item
com.atlassian.confluence.plugins.confluence-license-rest	4442	2017-07-19 14:48:05.142	licenseWebFacade
com.atlassian.applinks.applinks-plugin	4443	2017-07-19 14:48:05.142	pluginSettingsFactory
com.atlassian.support.stp	4444	2017-07-19 14:48:05.142	action-factory
com.atlassian.mywork.mywork-confluence-provider-plugin	4445	2017-07-19 14:48:05.142	registrationProvider
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4446	2017-07-19 14:48:05.142	page-trashed-notification-template
confluence.extractors.core	4447	2017-07-19 14:48:05.142	attachmentMimeTypeChangeExtractor
tac.confluence.languages.fr_FR	4448	2017-07-19 14:48:05.142	fr_FR
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4449	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.extra.flyingpdf	4450	2017-07-19 14:48:05.142	pdfExportSettingsManager
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4451	2017-07-19 14:48:05.142	roadmap-analytics-resources
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4452	2017-07-19 14:48:05.142	roadmap-editor-toolbar-view-resources
com.atlassian.auiplugin	4453	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-polyfills-custom-event
com.atlassian.confluence.plugins.confluence-inline-comments	4454	2017-07-19 14:48:05.142	confluence-inline-comments-rest-filter
confluence.extra.layout	4455	2017-07-19 14:48:05.142	resources
com.atlassian.confluence.plugins.confluence-mobile	4456	2017-07-19 14:48:05.142	darkFeaturesManager
org.randombits.confluence.toc	4457	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.confluence.plugins.confluence-create-content-plugin	4458	2017-07-19 14:48:05.142	spaceLevelDisabledBlueprintsUpgradeTask
com.atlassian.confluence.editor	4568	2017-07-19 14:48:05.142	contentPropertyService
com.atlassian.confluence.plugins.confluence-quicknav	4459	2017-07-19 14:48:05.142	quicknav-admin-resources
com.atlassian.streams	4460	2017-07-19 14:48:05.142	date-es-BO
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4461	2017-07-19 14:48:05.142	hipchat-space-to-room-global
confluence.web.resources	4462	2017-07-19 14:48:05.142	mutation-observer
com.atlassian.plugins.atlassian-nav-links-plugin	4463	2017-07-19 14:48:05.142	locale-supporting-i18n-resolver
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4464	2017-07-19 14:48:05.142	roadmap-editor-timeline-view-resources
com.atlassian.confluence.extra.flyingpdf	4465	2017-07-19 14:48:05.142	pdfexport
com.atlassian.gadgets.embedded	4466	2017-07-19 14:48:05.142	gadget-container-resources
confluence.extractors.core	4467	2017-07-19 14:48:05.142	pluginContentEntityObjectChangeExtractor
com.atlassian.confluence.plugins.confluence-previews	4468	2017-07-19 14:48:05.142	confluencePreviewsWhitelistFileViewer
com.atlassian.confluence.plugins.confluence-sal-plugin	4469	2017-07-19 14:48:05.142	componentLocator
com.atlassian.confluence.plugins.confluence-sal-plugin	4470	2017-07-19 14:48:05.142	confluenceConnectionProvider
com.atlassian.streams.confluence	4471	2017-07-19 14:48:05.142	date-en-BZ
com.atlassian.analytics.analytics-client	4472	2017-07-19 14:48:05.142	analytics-rest-filter
confluence.renderer.components	4473	2017-07-19 14:48:05.142	superscript
com.atlassian.confluence.plugins.recently-viewed-plugin	4474	2017-07-19 14:48:05.142	main-resources
com.atlassian.confluence.plugins.confluence-like	4475	2017-07-19 14:48:05.142	like-email-soy-templates-2
com.atlassian.applinks.applinks-trustedapps-plugin	4476	2017-07-19 14:48:05.142	xsrfTokenAccessor
com.atlassian.crowd.embedded.admin	4477	2017-07-19 14:48:05.142	confluence-ldap-additional-config
com.atlassian.confluence.plugins.recently-viewed-plugin	4478	2017-07-19 14:48:05.142	mobile-resources
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4479	2017-07-19 14:48:05.142	whitelist-soy-servlet
com.atlassian.querylang.confluence-cql-plugin	4480	2017-07-19 14:48:05.142	user-query-field-mapper
confluence.web.resources	4481	2017-07-19 14:48:05.142	contentnamesearch
com.atlassian.plugins.rest.atlassian-rest-module	4482	2017-07-19 14:48:05.142	rest-container-servlet-filter-INCLUDE
com.atlassian.auiplugin	4483	2017-07-19 14:48:05.142	aui-label
com.atlassian.streams	4484	2017-07-19 14:48:05.142	date-es-ES
com.atlassian.templaterenderer.api	4485	2017-07-19 14:48:05.142	webResourceUrlProviderContextItem
com.atlassian.confluence.plugins.confluence-onboarding	4486	2017-07-19 14:48:05.142	onboardingManager
com.atlassian.plugins.rest.atlassian-rest-module	4487	2017-07-19 14:48:05.142	rest-container-servlet-filter-ERROR
com.atlassian.auiplugin	4488	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-set-current
com.atlassian.confluence.plugins.gadgets	4489	2017-07-19 14:48:05.142	gadgetMacroMetadataProvider
confluence.extra.masterdetail	4490	2017-07-19 14:48:05.142	rest-caching-filter
com.atlassian.streams.confluence	4491	2017-07-19 14:48:05.142	date-en-AU
confluence.sections.space.tools	4492	2017-07-19 14:48:05.142	rss
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4493	2017-07-19 14:48:05.142	notification-templates
com.atlassian.confluence.plugins.confluence-daily-summary-email	4494	2017-07-19 14:48:05.142	dataSourceFactory
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4495	2017-07-19 14:48:05.142	emoticonEditorMarshaller
com.atlassian.gadgets.opensocial	4496	2017-07-19 14:48:05.142	oauth-callback-servlet
com.atlassian.confluence.plugins.gadgets	4497	2017-07-19 14:48:05.142	transactionTemplate
confluence.comment.action	4498	2017-07-19 14:48:05.142	comment-permalink
com.atlassian.confluence.plugins.view-source	4499	2017-07-19 14:48:05.142	viewsourceActions
com.atlassian.confluence.plugins.confluence-file-notifications	4500	2017-07-19 14:48:05.142	fileContentEventListener
com.atlassian.auiplugin	4501	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-row
com.atlassian.auiplugin	4502	2017-07-19 14:48:05.142	internal-jquery-ui-datepicker
com.atlassian.plugins.rest.atlassian-rest-module	4503	2017-07-19 14:48:05.142	xsrfRequestValidator
com.atlassian.confluence.plugins.confluence-nav-links	4504	2017-07-19 14:48:05.142	navlinksProjectPermissionManager
com.atlassian.streams	4505	2017-07-19 14:48:05.142	date-es-DO
confluence.extra.attachments	4506	2017-07-19 14:48:05.142	none
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4507	2017-07-19 14:48:05.142	confluenceMailer
com.atlassian.support.healthcheck.support-healthcheck-plugin	4508	2017-07-19 14:48:05.142	systemInformationService
com.atlassian.auiplugin	4509	2017-07-19 14:48:05.142	jquery-progressbar
com.atlassian.streams.confluence	4510	2017-07-19 14:48:05.142	date-da-DK
confluence.extractors.core	4511	2017-07-19 14:48:05.142	versionNumberChangeExtractor
confluence.extra.dynamictasklist2	4512	2017-07-19 14:48:05.142	taskListManager
com.atlassian.confluence.extra.widgetconnector	4513	2017-07-19 14:48:05.142	viddler
com.atlassian.confluence.keyboardshortcuts	4514	2017-07-19 14:48:05.142	tinymce.strikethrough
com.atlassian.streams	4515	2017-07-19 14:48:05.142	date-es-EC
com.atlassian.confluence.plugins.recently-viewed-plugin	4516	2017-07-19 14:48:05.142	recently-viewed-rest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4517	2017-07-19 14:48:05.142	pluginManagerHandler
com.atlassian.confluence.plugins.view-source	4518	2017-07-19 14:48:05.142	confluence-view-source-api-rest
confluence.macros.basic	4519	2017-07-19 14:48:05.142	loremipsum-xhtml
com.atlassian.confluence.keyboardshortcuts	4520	2017-07-19 14:48:05.142	tinymce.table.cut.row
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4521	2017-07-19 14:48:05.142	upm-marketplace-resources
com.atlassian.plugin.jslibs	4522	2017-07-19 14:48:05.142	marionette-1.4.1-factory
com.atlassian.applinks.applinks-basicauth-plugin	4523	2017-07-19 14:48:05.142	typeAccessor
confluence.filters.core	4524	2017-07-19 14:48:05.142	confluenceActivityFilter
com.atlassian.confluence.plugins.confluence-business-blueprints	4525	2017-07-19 14:48:05.142	sharelinks-index-page
com.atlassian.applinks.applinks-oauth-plugin	4526	2017-07-19 14:48:05.142	oAuthTokenRetriever
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4527	2017-07-19 14:48:05.142	clusterLockService
com.atlassian.confluence.plugins.pagetree	4528	2017-07-19 14:48:05.142	pagetree-xhtml
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4529	2017-07-19 14:48:05.142	confluence-collaborative-editor-plugin-resources
com.atlassian.mywork.mywork-confluence-host-plugin	4530	2017-07-19 14:48:05.142	internalHostApplication
com.atlassian.confluence.plugins.confluence-inline-tasks	4531	2017-07-19 14:48:05.142	tasks-notification-payload-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4532	2017-07-19 14:48:05.142	uriBuilderContextItem
confluence.listeners.core	4533	2017-07-19 14:48:05.142	thumbnailRemovingListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4534	2017-07-19 14:48:05.142	web-item-link
com.atlassian.auiplugin	4535	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-utils
com.atlassian.streams	4536	2017-07-19 14:48:05.142	date-ka-GE
confluence.extra.impresence2	4537	2017-07-19 14:48:05.142	skypeme
com.atlassian.confluence.plugins.gadgets	4538	2017-07-19 14:48:05.142	tokenStore
com.atlassian.confluence.plugins.confluence-mobile	4539	2017-07-19 14:48:05.142	removeApostropheEntityTransformer
confluence.search.mappers.lucene	4540	2017-07-19 14:48:05.142	inSpace
com.atlassian.confluence.plugins.confluence-rest-resources	4541	2017-07-19 14:48:05.142	view-page-api-link
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4542	2017-07-19 14:48:05.142	analyticsEventPublisher
com.atlassian.applinks.applinks-plugin	4543	2017-07-19 14:48:05.142	applicationProperties
confluence.extra.masterdetail	4544	2017-07-19 14:48:05.142	transactionTemplate
confluence.sections.space.tools	4545	2017-07-19 14:48:05.142	lookandfeel
com.atlassian.confluence.plugins.confluence-create-content-plugin	4546	2017-07-19 14:48:05.142	userStorageService
com.atlassian.mywork.mywork-confluence-host-plugin	4547	2017-07-19 14:48:05.142	client-registration-event-listener
com.atlassian.applinks.applinks-plugin	4548	2017-07-19 14:48:05.142	confluence-inbound-oauth
com.atlassian.streams	4549	2017-07-19 14:48:05.142	date-is-IS
com.atlassian.auiplugin	4550	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-vendor-jquery-serializetoobject
com.atlassian.confluence.plugins.status-macro	4551	2017-07-19 14:48:05.142	imageGeneratorServlet
confluence.user.menu	4552	2017-07-19 14:48:05.142	logout
com.atlassian.confluence.plugins.confluence-sal-plugin	4553	2017-07-19 14:48:05.142	platformTransactionManager
com.atlassian.streams.confluence	4554	2017-07-19 14:48:05.142	date-quz-BO
confluence.sections.profile	4555	2017-07-19 14:48:05.142	favourite-user-personal-space
com.atlassian.plugins.base-hipchat-integration-plugin	4556	2017-07-19 14:48:05.142	rest-integration
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4557	2017-07-19 14:48:05.142	dacidecision-resources
com.atlassian.confluence.plugins.confluence-monitoring-console	4558	2017-07-19 14:48:05.142	monitoring-console-helper-servlet
com.atlassian.confluence.plugins.confluence-inline-tasks	4559	2017-07-19 14:48:05.142	tasks-report
confluence.web.resources	4560	2017-07-19 14:48:05.142	setup-eval-license
com.atlassian.webhooks.atlassian-webhooks-plugin	4561	2017-07-19 14:48:05.142	webhooks-admin-resources
confluence.macros.basic	4562	2017-07-19 14:48:05.142	anchor-xhtml
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4563	2017-07-19 14:48:05.142	webSudoManager
com.atlassian.confluence.plugins.confluence-fixed-headers	4564	2017-07-19 14:48:05.142	confluence-fixed-headers-view-content-resources
com.atlassian.confluence.plugins.confluence-daily-summary-email	4565	2017-07-19 14:48:05.142	unsubscribeTokenManager
com.atlassian.streams.confluence	4566	2017-07-19 14:48:05.142	date-en-029
com.atlassian.mywork.mywork-confluence-provider-plugin	4567	2017-07-19 14:48:05.142	fieldHelper
com.atlassian.confluence.plugins.confluence-sal-plugin	4569	2017-07-19 14:48:05.142	xsrfTokenAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4570	2017-07-19 14:48:05.142	remoteAddonLicenseService
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4571	2017-07-19 14:48:05.142	playbookWhitelist
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4572	2017-07-19 14:48:05.142	hipchat-soy-server-resources
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4573	2017-07-19 14:48:05.142	confluence-copy-page-hierarchy-plugin-loader
com.atlassian.confluence.plugins.quickreload	4574	2017-07-19 14:48:05.142	commentManager
confluence.macros.advanced	4575	2017-07-19 14:48:05.142	navmap-resources
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4576	2017-07-19 14:48:05.142	experiencecanvas-template
confluence.macros.advanced	4577	2017-07-19 14:48:05.142	common-resources
com.atlassian.confluence.plugins.confluence-cache-management-plugin	4578	2017-07-19 14:48:05.142	server-resources
com.atlassian.plugin.jslibs	4579	2017-07-19 14:48:05.142	underscore-1.4.4
confluence.macros.advanced	4580	2017-07-19 14:48:05.142	related-labels
com.atlassian.confluence.plugins.confluence-view-file-macro	4581	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-mobile	4582	2017-07-19 14:48:05.142	viewLinkMarshallerFactory
com.atlassian.confluence.extra.officeconnector	4583	2017-07-19 14:48:05.142	viewxls-legacy
confluence.editor.actions	4584	2017-07-19 14:48:05.142	editor-macro-browser
com.atlassian.confluence.extra.flyingpdf	4585	2017-07-19 14:48:05.142	configurepdflanguagesupport
com.atlassian.confluence.plugins.confluence-business-blueprints	4586	2017-07-19 14:48:05.142	sharelinksbookmarklet-decorator
com.atlassian.analytics.analytics-client	4587	2017-07-19 14:48:05.142	confluence-event-report-menu-item
com.atlassian.confluence.plugins.confluence-email-resources	4588	2017-07-19 14:48:05.142	chrome-template-footer-pattern-1.0.0
confluence.web.resources	4589	2017-07-19 14:48:05.142	jira-controls
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4590	2017-07-19 14:48:05.142	rest-compatibility
com.atlassian.auiplugin	4591	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-i18n
com.atlassian.mywork.mywork-common-plugin	4592	2017-07-19 14:48:05.142	application-link-service
com.atlassian.confluence.extra.officeconnector	4593	2017-07-19 14:48:05.142	viewfile
confluence.content.action.menu	4594	2017-07-19 14:48:05.142	copy-page
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4595	2017-07-19 14:48:05.142	templateLocator
confluence.macros.dashboard	4596	2017-07-19 14:48:05.142	dashboard-global-entity-resources
com.atlassian.auiplugin	4597	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-cookie
com.atlassian.confluence.plugins.confluence-browser-metrics	4598	2017-07-19 14:48:05.142	util
com.atlassian.confluence.plugins.confluence-email-resources	4599	2017-07-19 14:48:05.142	template-utils-2.0.0
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4600	2017-07-19 14:48:05.142	rest
com.atlassian.applinks.applinks-plugin	4601	2017-07-19 14:48:05.142	confluence-space
confluence.web.resources	4602	2017-07-19 14:48:05.142	page-message
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4603	2017-07-19 14:48:05.142	representationFactory
com.atlassian.oauth.serviceprovider	4604	2017-07-19 14:48:05.142	stringEscapeUtilContextItem
com.atlassian.plugins.atlassian-nav-links-plugin	4605	2017-07-19 14:48:05.142	rotp-menu
com.atlassian.auiplugin	4606	2017-07-19 14:48:05.142	aui-experimental-lozenge
com.atlassian.confluence.plugins.confluence-user-rest	4607	2017-07-19 14:48:05.142	crowd-aggregation-warning
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4608	2017-07-19 14:48:05.142	helpPathResolver
confluence.web.resources	4609	2017-07-19 14:48:05.142	create-space
confluence.sections.attachments	4610	2017-07-19 14:48:05.142	remove
com.atlassian.support.stp	4611	2017-07-19 14:48:05.142	java-support-info
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4612	2017-07-19 14:48:05.142	permissionEnforcerContextItem
com.atlassian.auiplugin	4613	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-throbber
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4614	2017-07-19 14:48:05.142	batching-notification-recipients-provider
com.atlassian.confluence.plugins.confluence-sal-plugin	4615	2017-07-19 14:48:05.142	confluenceHttpContext
com.atlassian.streams.confluence	4616	2017-07-19 14:48:05.142	contentEntityRendererFactory
com.atlassian.confluence.editor	4617	2017-07-19 14:48:05.142	page-editor-quit-dialog
com.atlassian.confluence.plugins.confluence-inline-tasks	4618	2017-07-19 14:48:05.142	my-tasks-blank-exp-resources
com.atlassian.confluence.plugins.confluence-email-resources	4619	2017-07-19 14:48:05.142	template-utils-image-with-text-1.0.0
confluence.extra.jira	4620	2017-07-19 14:48:05.142	common
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4621	2017-07-19 14:48:05.142	confluenceNotificationSettings
com.atlassian.auiplugin	4622	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-to-init
com.atlassian.analytics.analytics-client	4623	2017-07-19 14:48:05.142	confluencePropertyExtractor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4624	2017-07-19 14:48:05.142	roadmap-macro
com.atlassian.plugin.notifications.notifications-module	4625	2017-07-19 14:48:05.142	taskComponents
com.atlassian.applinks.applinks-trustedapps-plugin	4626	2017-07-19 14:48:05.142	internalHostApplication
confluence.macros.advanced	4627	2017-07-19 14:48:05.142	get-more-helper
confluence.extra.confluencerpc	4628	2017-07-19 14:48:05.142	wikiRpcHandler
confluence.macros.dashboard	4629	2017-07-19 14:48:05.142	confluenceDashboardMacrosRest
com.atlassian.confluence.plugins.confluence-email-resources	4630	2017-07-19 14:48:05.142	user-full-name-function
com.atlassian.streams.confluence	4631	2017-07-19 14:48:05.142	date-zh-SG
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4632	2017-07-19 14:48:05.142	keyboardShortcutsRest-filter
com.atlassian.auiplugin	4633	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-header
com.atlassian.confluence.plugins.confluence-lookandfeel	4634	2017-07-19 14:48:05.142	attachmentManager
com.atlassian.streams.confluence	4635	2017-07-19 14:48:05.142	date-gu-IN
confluence.macros.profile	4636	2017-07-19 14:48:05.142	network-resources
confluence.listeners.core	4637	2017-07-19 14:48:05.142	updateSpacesInChangeIndexListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4638	2017-07-19 14:48:05.142	pluginUpdateChecker
com.atlassian.confluence.plugins.confluence-previews	4639	2017-07-19 14:48:05.142	confluence-previews-jquery
com.atlassian.mywork.mywork-confluence-host-plugin	4640	2017-07-19 14:48:05.142	authenticationController
com.atlassian.confluence.keyboardshortcuts	4641	2017-07-19 14:48:05.142	quicksearch
com.atlassian.confluence.plugins.confluence-onboarding	4642	2017-07-19 14:48:05.142	onboardingSpaceCheckTrigger
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4643	2017-07-19 14:48:05.142	blog-create-notification
confluence.extra.jira	4644	2017-07-19 14:48:05.142	pdf-export-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	4645	2017-07-19 14:48:05.142	team-space-blueprint
com.atlassian.auiplugin	4646	2017-07-19 14:48:05.142	aui-avatars
com.atlassian.confluence.extra.widgetconnector	4647	2017-07-19 14:48:05.142	googlespreadsheets
confluence.renderer.components	4648	2017-07-19 14:48:05.142	escape
com.atlassian.confluence.plugins.confluence-create-content-plugin	4649	2017-07-19 14:48:05.142	transactionTemplate
confluence.web.resources	4650	2017-07-19 14:48:05.142	memoir
com.atlassian.confluence.plugins.confluence-jira-metadata	4651	2017-07-19 14:48:05.142	content-metadata-jira
com.atlassian.support.healthcheck.support-healthcheck-plugin	4652	2017-07-19 14:48:05.142	support-health-check
com.atlassian.plugins.atlassian-nav-links-plugin	4653	2017-07-19 14:48:05.142	custom-apps-admin-ui-resources-old
confluence.macros.html	4654	2017-07-19 14:48:05.142	rss-xhtml
confluence.web.resources	4655	2017-07-19 14:48:05.142	setup-select-install-type
com.atlassian.confluence.plugins.soy	4656	2017-07-19 14:48:05.142	soy-base-url-function
confluence.search.mappers.lucene	4657	2017-07-19 14:48:05.142	contentPermissionsSearchFilter
com.atlassian.streams.confluence	4658	2017-07-19 14:48:05.142	date-uz-Cyrl-UZ
confluence.sections.space.tools	4659	2017-07-19 14:48:05.142	addons
com.atlassian.confluence.plugins.confluence-business-blueprints	4660	2017-07-19 14:48:05.142	decisions-blueprint-item
com.atlassian.confluence.plugins.dialog-wizard	4661	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-highlight-actions	4662	2017-07-19 14:48:05.142	markSelectionTransformer
com.atlassian.streams.confluence	4663	2017-07-19 14:48:05.142	date-zh-TW
com.atlassian.streams.confluence	4664	2017-07-19 14:48:05.142	date-quz-EC
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4665	2017-07-19 14:48:05.142	marketplaceClientManager
com.atlassian.auiplugin	4666	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-on-text-resize
confluence.macro.metadata.provider	4667	2017-07-19 14:48:05.142	macroMetadataProviders
com.atlassian.confluence.plugins.recently-viewed-plugin	4668	2017-07-19 14:48:05.142	recently-viewed-content-two-args-function
confluence.macros.advanced	4669	2017-07-19 14:48:05.142	editor_includemacro
com.atlassian.confluence.extra.flyingpdf	4670	2017-07-19 14:48:05.142	betterpdfpage
com.atlassian.gadgets.embedded	4671	2017-07-19 14:48:05.142	gadget-standalone-resources
confluence.web.resources	4672	2017-07-19 14:48:05.142	deferred-loaders
com.atlassian.oauth.serviceprovider	4673	2017-07-19 14:48:05.142	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4674	2017-07-19 14:48:05.142	diffContextProvider
com.atlassian.auiplugin	4675	2017-07-19 14:48:05.142	aui-experimental-buttons
com.atlassian.streams	4676	2017-07-19 14:48:05.142	date-es-PA
confluence.extra.jira	4677	2017-07-19 14:48:05.142	mobileThreadLocalFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4678	2017-07-19 14:48:05.142	notificationPageDataFactory
com.atlassian.streams	4679	2017-07-19 14:48:05.142	date-es-PE
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4680	2017-07-19 14:48:05.142	notificationFactoryImpl
com.atlassian.streams.confluence	4681	2017-07-19 14:48:05.142	confluence-rest
com.atlassian.plugins.atlassian-whitelist-core-plugin	4682	2017-07-19 14:48:05.142	whitelistBasedCorsDefaults
com.atlassian.support.stp	4683	2017-07-19 14:48:05.142	supportZipService
confluence.user.hover.menu	4684	2017-07-19 14:48:05.142	personal-space
com.atlassian.confluence.plugins.confluence-view-file-macro	4685	2017-07-19 14:48:05.142	attachedImageRenderHelper
com.atlassian.confluence.extra.officeconnector	4686	2017-07-19 14:48:05.142	officeconnector-editor-resources
com.atlassian.confluence.plugins.confluence-space-directory	4687	2017-07-19 14:48:05.142	pagination-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	4688	2017-07-19 14:48:05.142	quote-comment
com.atlassian.webhooks.atlassian-webhooks-plugin	4689	2017-07-19 14:48:05.142	webhooks-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4690	2017-07-19 14:48:05.142	settingsManager
com.atlassian.plugins.atlassian-project-creation-plugin	4691	2017-07-19 14:48:05.142	project-crud-rest
com.atlassian.streams	4692	2017-07-19 14:48:05.142	date-es-PR
com.atlassian.streams.confluence	4693	2017-07-19 14:48:05.142	localeManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	4694	2017-07-19 14:48:05.142	taskManager
com.atlassian.mywork.mywork-confluence-provider-plugin	4695	2017-07-19 14:48:05.142	userAccessor
confluence.extra.confluencerpc	4696	2017-07-19 14:48:05.142	usersSoapService
com.atlassian.confluence.plugins.confluence-document-conversion-library	4697	2017-07-19 14:48:05.142	Confluence Document Conversion Library REST support-filter
com.atlassian.confluence.plugins.search.confluence-search	4698	2017-07-19 14:48:05.142	darkFeatureManager
confluence.macros.advanced	4699	2017-07-19 14:48:05.142	junitreport
com.atlassian.confluence.plugins.gadgets	4700	2017-07-19 14:48:05.142	oauth-access-tokens
com.atlassian.confluence.plugins.confluence-inline-comments	4701	2017-07-19 14:48:05.142	notification-template-resolve-body
com.atlassian.applinks.applinks-oauth-plugin	4702	2017-07-19 14:48:05.142	add-non-applinks-service-provider
confluence.listeners.core	4703	2017-07-19 14:48:05.142	clusterChangeJobStatusListener
com.atlassian.integration.jira.jira-integration-plugin	4704	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.querylang.confluence-cql-plugin	4705	2017-07-19 14:48:05.142	end-of-month-zero-arg-function
com.atlassian.confluence.editor	4706	2017-07-19 14:48:05.142	atlassian-pdl-resources
com.atlassian.auiplugin	4707	2017-07-19 14:48:05.142	internal-skatejs-template-html-0.0.0-dist-template-html
confluence.extractors.core	4708	2017-07-19 14:48:05.142	defaultSearchableTextExtractor
com.atlassian.confluence.themes.default	4709	2017-07-19 14:48:05.142	styles
confluence.sections.profile	4710	2017-07-19 14:48:05.142	my-favourites
com.atlassian.confluence.plugins.confluence-view-file-macro	4711	2017-07-19 14:48:05.142	conversionManager
com.atlassian.confluence.extra.widgetconnector	4712	2017-07-19 14:48:05.142	youtube
com.atlassian.confluence.plugins.confluence-mobile	4713	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.integration.jira.jira-integration-plugin	4714	2017-07-19 14:48:05.142	confluenceJiraSettings
com.atlassian.confluence.plugins.gadgets	4715	2017-07-19 14:48:05.142	cacheManager
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4716	2017-07-19 14:48:05.142	lib
confluence.sections.create	4717	2017-07-19 14:48:05.142	create-attachment
com.atlassian.auiplugin	4718	2017-07-19 14:48:05.142	ajs-raf
com.atlassian.confluence.contributors	4719	2017-07-19 14:48:05.142	authorContributionExtractor
com.atlassian.confluence.plugins.confluence-like	4720	2017-07-19 14:48:05.142	like-created-notification
com.atlassian.confluence.plugins.confluence-browser-metrics	4721	2017-07-19 14:48:05.142	dashboard
com.atlassian.plugins.base-hipchat-integration-plugin	4722	2017-07-19 14:48:05.142	hipchat-glance
com.atlassian.mywork.mywork-confluence-host-plugin	4723	2017-07-19 14:48:05.142	service-selector-wrapper
confluence.search.mappers.lucene	4724	2017-07-19 14:48:05.142	relevance
confluence.listeners.core	4725	2017-07-19 14:48:05.142	luceneSearchMapperRegistryCacheUpdateListener
confluence.web.resources	4726	2017-07-19 14:48:05.142	page-history
com.atlassian.oauth.serviceprovider	4727	2017-07-19 14:48:05.142	clock
com.atlassian.confluence.extra.widgetconnector	4728	2017-07-19 14:48:05.142	blip
com.atlassian.support.healthcheck.support-healthcheck-plugin	4729	2017-07-19 14:48:05.142	salUserManager
com.atlassian.plugins.atlassian-nav-links-plugin	4730	2017-07-19 14:48:05.142	environment-soy-function
com.atlassian.confluence.plugins.confluence-like	4731	2017-07-19 14:48:05.142	like-created-notification-template-hipchat-body
com.atlassian.confluence.plugins.share-page	4732	2017-07-19 14:48:05.142	email-resources-2.0.0
com.atlassian.streams	4733	2017-07-19 14:48:05.142	date-ro-RO
com.atlassian.confluence.plugins.confluence-view-file-macro	4734	2017-07-19 14:48:05.142	view-file-macro-embedded-file-view-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	4735	2017-07-19 14:48:05.142	appendToSelectionTransformer
com.atlassian.streams	4736	2017-07-19 14:48:05.142	date-es-PY
confluence.lifecycle.core	4737	2017-07-19 14:48:05.142	remigration
com.atlassian.plugins.atlassian-whitelist-core-plugin	4738	2017-07-19 14:48:05.142	activeObjects
com.atlassian.confluence.plugins.confluence-email-resources	4739	2017-07-19 14:48:05.142	notification-templates-page-test-1.0.0
com.atlassian.confluence.plugins.confluence-previews	4740	2017-07-19 14:48:05.142	feature-discovery-plugin
com.atlassian.auiplugin	4741	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-clone
com.atlassian.confluence.plugins.confluence-inline-comments	4742	2017-07-19 14:48:05.142	confirm-dialog-view
com.atlassian.analytics.analytics-client	4743	2017-07-19 14:48:05.142	pluginScheduler
com.atlassian.auiplugin	4744	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-form-validation
com.atlassian.plugins.atlassian-plugins-webresource-rest	4745	2017-07-19 14:48:05.142	web-resources
com.atlassian.confluence.keyboardshortcuts	4746	2017-07-19 14:48:05.142	add.comment
com.atlassian.confluence.plugins.confluence-email-resources	4747	2017-07-19 14:48:05.142	notification-templates-2.0.0
confluence.listeners.core	4748	2017-07-19 14:48:05.142	removeContentPropertiesOnRemoveContentListener
com.atlassian.streams.streams-thirdparty-plugin	4749	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.plugins.pagetree	4750	2017-07-19 14:48:05.142	pagetree-mobile-resources
com.atlassian.activeobjects.confluence.spi	4751	2017-07-19 14:48:05.142	tenantContext
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4752	2017-07-19 14:48:05.142	pluginLicenseStore
com.atlassian.confluence.plugins.confluence-schedule-admin	4753	2017-07-19 14:48:05.142	none
com.atlassian.confluence.plugins.confluence-daily-summary-email	4754	2017-07-19 14:48:05.142	SummaryEmailTaskFactory
com.atlassian.confluence.plugins.drag-and-drop	4755	2017-07-19 14:48:05.142	drag-and-drop-resource
confluence.listeners.core	4756	2017-07-19 14:48:05.142	attachmentNotificationsListener
com.atlassian.confluence.plugins.confluence-daily-summary-email	4757	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-document-conversion-library	4758	2017-07-19 14:48:05.142	Confluence Document Conversion Library REST support
com.atlassian.confluence.plugins.confluence-rest-resources	4759	2017-07-19 14:48:05.142	rest-api
com.atlassian.auiplugin	4760	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-select-suggestions-view
com.atlassian.plugins.base-hipchat-integration-plugin	4761	2017-07-19 14:48:05.142	view-oauth-servlet
com.atlassian.confluence.plugins.confluence-space-ia	4762	2017-07-19 14:48:05.142	left-ia-sidebar-panel
com.atlassian.confluence.plugins.confluence-create-content-plugin	4763	2017-07-19 14:48:05.142	spaceBlueprintManagerDelegate
confluence.search.mappers.lucene	4764	2017-07-19 14:48:05.142	fieldValueSearchFilter
com.atlassian.activeobjects.confluence.spi	4765	2017-07-19 14:48:05.142	tenantAwareDataSourceProvider
com.atlassian.mywork.mywork-confluence-provider-plugin	4766	2017-07-19 14:48:05.142	mentionFinder
com.atlassian.integration.jira.jira-integration-plugin	4767	2017-07-19 14:48:05.142	jira-icon-servlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4768	2017-07-19 14:48:05.142	txTemplate
com.atlassian.confluence.extra.widgetconnector	4769	2017-07-19 14:48:05.142	getsatisfaction
tac.confluence.languages.zh_CN	4770	2017-07-19 14:48:05.142	zh_CN
com.atlassian.support.healthcheck.support-healthcheck-plugin	4771	2017-07-19 14:48:05.142	support-healthcheck-plugin-resources
com.atlassian.confluence.plugins.confluence-email-resources	4772	2017-07-19 14:48:05.142	content-templates-inline-content-styles-1.0.0
com.atlassian.confluence.plugins.confluence-like	4773	2017-07-19 14:48:05.142	unlike-content-email-batch-item
com.atlassian.confluence.extra.officeconnector	4774	2017-07-19 14:48:05.142	ppt97ContentExtractor
confluence.extractors.core	4775	2017-07-19 14:48:05.142	spaceKeyAndNameChangeExtractor
com.atlassian.confluence.plugins.confluence-sal-plugin	4776	2017-07-19 14:48:05.142	userSettingsService
com.atlassian.confluence.plugins.confluence-email-resources	4777	2017-07-19 14:48:05.142	content-type-icons
com.atlassian.streams.confluence	4778	2017-07-19 14:48:05.142	date-sr-Cyrl-BA
com.atlassian.auiplugin	4779	2017-07-19 14:48:05.142	internal-skatejs-0.13.17-lib-globals
com.atlassian.confluence.plugins.confluence-edge-index	4780	2017-07-19 14:48:05.142	edgeIndexRebuildUpgradeTask
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4781	2017-07-19 14:48:05.142	asyncTaskRepresentationFactory
com.atlassian.confluence.plugins.confluence-daily-summary-email	4782	2017-07-19 14:48:05.142	i18NBeanFactory
confluence.sections.profile	4783	2017-07-19 14:48:05.142	follow
com.atlassian.plugins.atlassian-whitelist-core-plugin	4784	2017-07-19 14:48:05.142	clearHttpCacheAdapter
com.atlassian.querylang.confluence-cql-plugin	4785	2017-07-19 14:48:05.142	recently-modified-pages-blogs-by-user-three-arg-function
confluence.web.resources	4786	2017-07-19 14:48:05.142	page-loading-indicator
com.atlassian.crowd.embedded.admin	4787	2017-07-19 14:48:05.142	crowd-ldap-properties-helper
com.atlassian.auiplugin	4788	2017-07-19 14:48:05.142	internal-form-css
com.atlassian.analytics.analytics-client	4789	2017-07-19 14:48:05.142	licenseHandler
confluence.extra.jira	4790	2017-07-19 14:48:05.142	flexigrid-resources
com.atlassian.confluence.plugins.confluence-mentions-plugin	4791	2017-07-19 14:48:05.142	mention-icon
com.atlassian.plugin.notifications.notifications-module	4792	2017-07-19 14:48:05.142	notificationsRest-filter
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	4793	2017-07-19 14:48:05.142	featureDiscoveryService
com.atlassian.applinks.applinks-oauth-plugin	4794	2017-07-19 14:48:05.142	servletMessageFactory
com.atlassian.confluence.plugins.confluence-email-resources	4795	2017-07-19 14:48:05.142	content-templates-notification-comment-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4796	2017-07-19 14:48:05.142	locate
com.atlassian.confluence.plugins.confluence-email-resources	4797	2017-07-19 14:48:05.142	chrome-template-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	4798	2017-07-19 14:48:05.142	rest-experimental
com.atlassian.soy.soy-template-plugin	4799	2017-07-19 14:48:05.142	jiraSoyTransformer
com.atlassian.streams	4800	2017-07-19 14:48:05.142	date-es-SV
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4801	2017-07-19 14:48:05.142	css
confluence.user.menu.concise	4802	2017-07-19 14:48:05.142	administration
com.atlassian.confluence.plugins.confluence-cache-management-plugin	4803	2017-07-19 14:48:05.142	analytics-whitelist
com.atlassian.streams	4804	2017-07-19 14:48:05.142	date-es-VE
com.atlassian.confluence.plugins.quickreload	4805	2017-07-19 14:48:05.142	quick-reload-bootstrap
com.atlassian.streams.confluence	4806	2017-07-19 14:48:05.142	webResourceManager
com.atlassian.confluence.plugins.confluence-request-access-plugin	4807	2017-07-19 14:48:05.142	request-access-notification-email-template-body
com.atlassian.confluence.plugins.confluence-inline-tasks	4808	2017-07-19 14:48:05.142	task-report-blueprint-item
com.atlassian.oauth.serviceprovider.sal	4809	2017-07-19 14:48:05.142	userManager
com.atlassian.auiplugin	4810	2017-07-19 14:48:05.142	jquery-compatibility
com.atlassian.confluence.plugins.confluence-mentions-plugin	4811	2017-07-19 14:48:05.142	editor-autocomplete-mentions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4812	2017-07-19 14:48:05.142	pluginRestartRequiredService
com.atlassian.plugins.atlassian-nav-links-plugin	4813	2017-07-19 14:48:05.142	locale-resolver
com.atlassian.streams.confluence	4814	2017-07-19 14:48:05.142	date-sr-Cyrl-CS
com.atlassian.confluence.plugins.gadgets	4815	2017-07-19 14:48:05.142	external-gadget
com.atlassian.confluence.extra.officeconnector	4816	2017-07-19 14:48:05.142	tokenProvider
com.atlassian.plugins.confluence-tdm-merger	4817	2017-07-19 14:48:05.142	xmlOutputFactoryProvider
com.atlassian.confluence.plugins.confluence-create-content-plugin	4818	2017-07-19 14:48:05.142	blueprintSorter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4819	2017-07-19 14:48:05.142	dacidecision-index-template
com.atlassian.confluence.plugins.confluence-browser-metrics	4820	2017-07-19 14:48:05.142	spa-transitions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4821	2017-07-19 14:48:05.142	userAccessor
com.atlassian.streams.confluence	4822	2017-07-19 14:48:05.142	date-mn-MN
com.atlassian.streams	4823	2017-07-19 14:48:05.142	date-smj-NO
com.atlassian.confluence.plugins.confluence-like	4824	2017-07-19 14:48:05.142	mobile-content-like-resource
com.atlassian.streams	4825	2017-07-19 14:48:05.142	date-es-UY
com.atlassian.integration.jira.jira-integration-plugin	4826	2017-07-19 14:48:05.142	jira-create-issue-form
confluence.macros.basic	4827	2017-07-19 14:48:05.142	nl
com.atlassian.analytics.analytics-client	4828	2017-07-19 14:48:05.142	remoteFilterRead
com.atlassian.confluence.plugins.confluence-onboarding	4829	2017-07-19 14:48:05.142	onboarding-actions
com.atlassian.applinks.applinks-plugin	4830	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.streams	4831	2017-07-19 14:48:05.142	date-es-GT
com.atlassian.support.healthcheck.support-healthcheck-plugin	4832	2017-07-19 14:48:05.142	healthStatusPersistenceService
confluence.listeners.core	4833	2017-07-19 14:48:05.142	titleChangeListener
com.atlassian.crowd.embedded.admin	4834	2017-07-19 14:48:05.142	confluence-user-directories-web-item
com.atlassian.confluence.plugins.search.confluence-search	4835	2017-07-19 14:48:05.142	rest
confluence.content.action.menu	4836	2017-07-19 14:48:05.142	remove-page
confluence.sections.space.admin	4837	2017-07-19 14:48:05.142	colorscheme
com.atlassian.applinks.applinks-basicauth-plugin	4838	2017-07-19 14:48:05.142	servletMessageFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4839	2017-07-19 14:48:05.142	pageManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4840	2017-07-19 14:48:05.142	notificationservers
com.atlassian.applinks.applinks-basicauth-plugin	4841	2017-07-19 14:48:05.142	xsrfTokenAccessor
confluence.macro.metadata.provider	4842	2017-07-19 14:48:05.142	userMacroMetadataProvider
confluence.sections.profile	4843	2017-07-19 14:48:05.142	settings
com.atlassian.plugin.notifications.notifications-module	4844	2017-07-19 14:48:05.142	notificationsRest
com.atlassian.confluence.plugins.confluence-space-blueprints	4845	2017-07-19 14:48:05.142	TeamSpaceBlueprintCreateEventListener
com.atlassian.confluence.plugins.confluence-like	4846	2017-07-19 14:48:05.142	cachedContentFinder
confluence.extra.jira	4847	2017-07-19 14:48:05.142	text-placeholders-jira
com.atlassian.confluence.plugins.confluence-space-blueprints	4848	2017-07-19 14:48:05.142	documentation-space-blueprint-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4849	2017-07-19 14:48:05.142	pacClient
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4850	2017-07-19 14:48:05.142	confluenceUserLists
com.atlassian.confluence.plugins.confluence-dashboard	4851	2017-07-19 14:48:05.142	recentlyViewedManager
com.atlassian.confluence.extra.flyingpdf	4852	2017-07-19 14:48:05.142	pdfExportSemaphore
com.atlassian.plugins.base-hipchat-integration-plugin-api	4853	2017-07-19 14:48:05.142	backbone-amd
com.atlassian.confluence.editor	4854	2017-07-19 14:48:05.142	rest
com.atlassian.auiplugin	4855	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-inline-dialog
com.atlassian.auiplugin	4856	2017-07-19 14:48:05.142	aui-labels
com.atlassian.confluence.plugins.confluence-license-rest	4857	2017-07-19 14:48:05.142	userCountService
com.atlassian.confluence.plugins.share-page	4858	2017-07-19 14:48:05.142	share-keyboard-shortcut-js-resources
confluence.web.resources	4859	2017-07-19 14:48:05.142	admin-styles
com.atlassian.analytics.analytics-client	4860	2017-07-19 14:48:05.142	confluenceSessionIdProvider
confluence.user.menu	4861	2017-07-19 14:48:05.142	user-content
com.atlassian.confluence.plugins.confluence-onboarding	4862	2017-07-19 14:48:05.142	welcome
confluence.web.resources	4863	2017-07-19 14:48:05.142	amd
com.atlassian.mywork.mywork-confluence-host-plugin	4864	2017-07-19 14:48:05.142	timeout-service
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4865	2017-07-19 14:48:05.142	upm-requests-resources
confluence.sections.space.tools	4866	2017-07-19 14:48:05.142	importpages
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4867	2017-07-19 14:48:05.142	healthmonitor-blueprint-item
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4868	2017-07-19 14:48:05.142	confluence-collaborative-editor-plugin-editor-content-resources
confluence.admin.user	4869	2017-07-19 14:48:05.142	browse-users-tab-invite
com.atlassian.applinks.applinks-oauth-plugin	4870	2017-07-19 14:48:05.142	applinksRestV2OAuth-filter
com.atlassian.confluence.plugins.confluence-easyuser-admin	4871	2017-07-19 14:48:05.142	easyuser-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	4872	2017-07-19 14:48:05.142	content-templates-actions-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-page-banner	4873	2017-07-19 14:48:05.142	content-metadata-page-restrictions
com.atlassian.mywork.mywork-confluence-host-plugin	4874	2017-07-19 14:48:05.142	clusterLockService
com.atlassian.confluence.plugins.confluence-email-resources	4875	2017-07-19 14:48:05.142	view-page-email-adg-footer-item
com.atlassian.mywork.mywork-confluence-provider-plugin	4876	2017-07-19 14:48:05.142	likeManager
com.atlassian.confluence.plugins.confluence-business-blueprints	4877	2017-07-19 14:48:05.142	blueprintsTemplateHelper
com.atlassian.streams	4878	2017-07-19 14:48:05.142	activityProviders
confluence.sections.admin	4879	2017-07-19 14:48:05.142	custompagecontent
com.atlassian.applinks.applinks-plugin	4880	2017-07-19 14:48:05.142	list-entity-links
com.atlassian.oauth.serviceprovider	4881	2017-07-19 14:48:05.142	randomizer
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4882	2017-07-19 14:48:05.142	page-edited-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-mentions-plugin	4883	2017-07-19 14:48:05.142	confluenceMentionsFinder
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4884	2017-07-19 14:48:05.142	hipchatSpaceToRoomAO
confluence.extra.jira	4885	2017-07-19 14:48:05.142	jira-issues-view-mode-resources
com.atlassian.confluence.plugins.confluence-jira-content	4886	2017-07-19 14:48:05.142	create-JIRA-issue-summary
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4887	2017-07-19 14:48:05.142	clusterLockServiceFactory
com.atlassian.confluence.plugins.confluence-dashboard	4888	2017-07-19 14:48:05.142	onboarding-dialog
com.atlassian.applinks.applinks-trustedapps-plugin	4889	2017-07-19 14:48:05.142	trustConfigurator
com.atlassian.streams.confluence	4890	2017-07-19 14:48:05.142	date-quz-PE
confluence.extractors.core	4891	2017-07-19 14:48:05.142	attachmentOwnerContentTypeExtractor
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4892	2017-07-19 14:48:05.142	homeDirectoryHealthCheck
confluence.sections.browse	4893	2017-07-19 14:48:05.142	global
com.atlassian.confluence.plugins.confluence-software-blueprints	4894	2017-07-19 14:48:05.142	retrospectives-item
confluence.macros.html	4895	2017-07-19 14:48:05.142	rss
com.atlassian.confluence.plugins.confluence-previews	4896	2017-07-19 14:48:05.142	mediaviewer-chunks
confluence.sections.admin.indexing	4897	2017-07-19 14:48:05.142	mainIndexRecoverer
com.atlassian.confluence.plugins.search.confluence-search	4898	2017-07-19 14:48:05.142	nonViewableContentTypeFilterFactory
confluence.search.mappers.lucene	4899	2017-07-19 14:48:05.142	contributor
com.atlassian.streams	4900	2017-07-19 14:48:05.142	date-es-HN
com.atlassian.plugins.less-transformer-plugin	4901	2017-07-19 14:48:05.142	webstaticUriResolver
com.atlassian.auiplugin	4902	2017-07-19 14:48:05.142	aui-toolbar2
com.atlassian.confluence.plugins.confluence-edge-index	4903	2017-07-19 14:48:05.142	userDtoFactory
com.atlassian.support.stp	4904	2017-07-19 14:48:05.142	confluence-mail-utility
com.atlassian.streams	4905	2017-07-19 14:48:05.142	date-gl-ES
com.atlassian.confluence.plugins.confluence-create-content-plugin	4906	2017-07-19 14:48:05.142	localeManager
com.atlassian.confluence.plugins.search.confluence-search	4907	2017-07-19 14:48:05.142	blank
com.atlassian.streams	4908	2017-07-19 14:48:05.142	date-hy-AM
com.atlassian.confluence.plugins.confluence-email-resources	4909	2017-07-19 14:48:05.142	template-utils-anonymous-user-link-1.0.0
com.atlassian.confluence.extra.widgetconnector	4910	2017-07-19 14:48:05.142	statusImagegenerator
confluence.web.resources	4911	2017-07-19 14:48:05.142	vmI18n
confluence.sections.space.advanced	4912	2017-07-19 14:48:05.142	orphan
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4913	2017-07-19 14:48:05.142	confluence-blogpost-edited-batching
com.atlassian.plugins.atlassian-nav-links-plugin	4914	2017-07-19 14:48:05.142	customAppService
com.atlassian.auiplugin	4915	2017-07-19 14:48:05.142	internal-css.escape-1.5.0-css-escape
com.atlassian.auiplugin	4916	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-events
confluence.macros.advanced	4917	2017-07-19 14:48:05.142	contentbylabel-excerpt-migrator
com.atlassian.streams.core	4918	2017-07-19 14:48:05.142	userManager
com.atlassian.plugin.notifications.notifications-module	4919	2017-07-19 14:48:05.142	serverFactory
com.atlassian.plugins.atlassian-nav-links-plugin	4920	2017-07-19 14:48:05.142	module-factory
confluence.search.mappers.lucene	4921	2017-07-19 14:48:05.142	boolean
com.atlassian.confluence.plugins.confluence-create-content-plugin	4922	2017-07-19 14:48:05.142	blueprintManager
com.atlassian.confluence.extra.widgetconnector	4923	2017-07-19 14:48:05.142	metacafe
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4924	2017-07-19 14:48:05.142	mailServerManager
com.atlassian.plugins.atlassian-nav-links-plugin	4925	2017-07-19 14:48:05.142	http-client-factory
confluence.web.resources	4926	2017-07-19 14:48:05.142	ajs
com.atlassian.confluence.plugins.confluence-create-content-plugin	4927	2017-07-19 14:48:05.142	create-blog-post
confluence.listeners.core	4928	2017-07-19 14:48:05.142	velocityPluginListener
confluence.listeners.core	4929	2017-07-19 14:48:05.142	flushUserCheckerOnLicenseUpdate
com.atlassian.streams	4930	2017-07-19 14:48:05.142	date-smj-SE
com.atlassian.confluence.plugins.confluence-inline-comments	4931	2017-07-19 14:48:05.142	display-comment-view
com.atlassian.confluence.extra.flyingpdf	4932	2017-07-19 14:48:05.142	pdfexport-soap
com.atlassian.plugins.atlassian-nav-links-plugin	4933	2017-07-19 14:48:05.142	mutatingEntityLinkService
com.atlassian.plugins.atlassian-whitelist-core-plugin	4934	2017-07-19 14:48:05.142	aoWhitelistRulesDao
confluence.web.resources	4935	2017-07-19 14:48:05.142	jsUri
com.atlassian.confluence.plugins.confluence-inline-tasks	4936	2017-07-19 14:48:05.142	email-resources
com.atlassian.confluence.plugins.confluence-mentions-plugin	4937	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.analytics.analytics-client	4938	2017-07-19 14:48:05.142	serverIdProvider
com.atlassian.confluence.ext.newcode-macro-plugin	4939	2017-07-19 14:48:05.142	macro-icons
com.atlassian.streams.confluence	4940	2017-07-19 14:48:05.142	templateRendererFactory
com.atlassian.auiplugin	4941	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-animation
confluence.sections.page.temp	4942	2017-07-19 14:48:05.142	edit-page
com.atlassian.confluence.plugins.gadgets	4943	2017-07-19 14:48:05.142	outboundWhitelist
confluence.user.menu	4944	2017-07-19 14:48:05.142	settings
com.atlassian.confluence.plugins.search.confluence-search	4945	2017-07-19 14:48:05.142	searchv3Filter
com.atlassian.confluence.plugins.confluence-create-content-plugin	4946	2017-07-19 14:48:05.142	globalBlueprintsUpgradeTask
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4947	2017-07-19 14:48:05.142	integrations
com.atlassian.support.stp	4948	2017-07-19 14:48:05.142	licenseStatusService
com.atlassian.applinks.applinks-trustedapps-plugin	4949	2017-07-19 14:48:05.142	servletMessageFactory
com.atlassian.auiplugin	4950	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-debounce
tac.confluence.languages.ro_RO	4951	2017-07-19 14:48:05.142	ro_RO
com.atlassian.confluence.plugins.search.confluence-search	4952	2017-07-19 14:48:05.142	filterFactory
confluence.extra.impresence2	4953	2017-07-19 14:48:05.142	aim
confluence.listeners.core	4954	2017-07-19 14:48:05.142	asyncPageNotificationsListener
com.atlassian.confluence.plugins.confluence-mobile	4955	2017-07-19 14:48:05.142	mobileViewRenderer
com.atlassian.querylang.confluence-cql-plugin	4956	2017-07-19 14:48:05.142	end-of-week-one-arg-function
com.atlassian.streams.actions	4957	2017-07-19 14:48:05.142	moduleFactory
com.atlassian.mywork.mywork-confluence-host-plugin	4958	2017-07-19 14:48:05.142	task-cleaner-scheduler
com.atlassian.crowd.embedded.admin	4959	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.plugins.confluence-daily-summary-email	4960	2017-07-19 14:48:05.142	salUserManager
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4961	2017-07-19 14:48:05.142	confluenceEmoticonService
com.atlassian.confluence.image.effects.ImageEffectsPlugin	4962	2017-07-19 14:48:05.142	config-resource-filter
com.atlassian.streams	4963	2017-07-19 14:48:05.142	date-es-MX
com.atlassian.confluence.ext.newcode-macro-plugin	4964	2017-07-19 14:48:05.142	sh-theme-confluence
com.atlassian.crowd.embedded.admin	4965	2017-07-19 14:48:05.142	dispatcher-servlet
com.atlassian.confluence.plugins.confluence-inline-comments	4966	2017-07-19 14:48:05.142	inlineCommentExtensions
confluence.content.action.menu	4967	2017-07-19 14:48:05.142	view-attachments
com.atlassian.applinks.applinks-plugin	4968	2017-07-19 14:48:05.142	compatibility-css
confluence.sections.profile	4969	2017-07-19 14:48:05.142	view-profile
com.atlassian.analytics.analytics-client	4970	2017-07-19 14:48:05.142	events-logged
com.atlassian.auiplugin	4971	2017-07-19 14:48:05.142	jquery-throbber
com.atlassian.streams	4972	2017-07-19 14:48:05.142	date-es-NI
com.atlassian.applinks.applinks-plugin	4973	2017-07-19 14:48:05.142	applinkStatusService
com.atlassian.confluence.plugins.confluence-knowledge-base	4974	2017-07-19 14:48:05.142	kb-troubleshooting-item
com.atlassian.confluence.plugins.confluence-inline-comments	4975	2017-07-19 14:48:05.142	inline-comment-email-soy-templates-2
com.atlassian.confluence.plugins.confluence-software-blueprints	4976	2017-07-19 14:48:05.142	requirements-resources
confluence.extra.attachments	4977	2017-07-19 14:48:05.142	space-attachments
com.atlassian.confluence.plugins.expand-macro	4978	2017-07-19 14:48:05.142	expand-macro-soy-templates
com.atlassian.confluence.plugins.gadgets	4979	2017-07-19 14:48:05.142	gadget
com.atlassian.analytics.analytics-client	4980	2017-07-19 14:48:05.142	analytics-configuration-servlet
com.atlassian.auiplugin	4981	2017-07-19 14:48:05.142	modernizr-touch
com.atlassian.confluence.plugins.confluence-knowledge-base	4982	2017-07-19 14:48:05.142	confluenceAccessManager
com.atlassian.confluence.editor	4983	2017-07-19 14:48:05.142	table-resizable-plugin
com.atlassian.confluence.ext.newcode-macro-plugin	4984	2017-07-19 14:48:05.142	sh-theme-fadetogrey
com.atlassian.confluence.plugins.confluence-edge-index	4985	2017-07-19 14:48:05.142	edgeTypeRepository
com.atlassian.applinks.applinks-plugin	4986	2017-07-19 14:48:05.142	bamboo
com.atlassian.querylang.confluence-cql-plugin	4987	2017-07-19 14:48:05.142	end-of-year-zero-arg-function
confluence.web.resources	4988	2017-07-19 14:48:05.142	login
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4989	2017-07-19 14:48:05.142	batching-notification
com.atlassian.confluence.extra.officeconnector	4990	2017-07-19 14:48:05.142	excel2k7ContentExtractor
com.atlassian.auiplugin	4991	2017-07-19 14:48:05.142	internal-inline-dialog-common
confluence.web.resources	4992	2017-07-19 14:48:05.142	dashboard-resources
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4993	2017-07-19 14:48:05.142	storageEngineCheck
com.atlassian.streams.confluence	4994	2017-07-19 14:48:05.142	date-ns-ZA
com.atlassian.plugins.atlassian-nav-links-plugin	4995	2017-07-19 14:48:05.142	content-links-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	4996	2017-07-19 14:48:05.142	view-comment-email-batch-item
com.atlassian.support.healthcheck.support-healthcheck-plugin	4997	2017-07-19 14:48:05.142	supportHealthStatusBuilder
confluence.listeners.core	4998	2017-07-19 14:48:05.142	searchResultRendererCache
confluence.sections.admin	4999	2017-07-19 14:48:05.142	users
com.atlassian.applinks.applinks-plugin	5000	2017-07-19 14:48:05.142	internalHostApplication
com.atlassian.streams	5001	2017-07-19 14:48:05.142	date-fr-FR
com.atlassian.plugin.jslibs	5002	2017-07-19 14:48:05.142	d3-3.3.13
com.atlassian.auiplugin	5003	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-internal-amdify
com.atlassian.streams	5004	2017-07-19 14:48:05.142	date-syr-SY
confluence.extra.confluencerpc	5005	2017-07-19 14:48:05.142	confluence-xmlrpc-2
com.atlassian.confluence.plugins.confluence-space-ia	5006	2017-07-19 14:48:05.142	spacebar-blogs
com.atlassian.confluence.plugins.confluence-onboarding	5007	2017-07-19 14:48:05.142	notification-template-less-users-body
com.atlassian.plugins.atlassian-whitelist-core-plugin	5008	2017-07-19 14:48:05.142	defaultPermissionChecker
com.atlassian.confluence.plugins.drag-and-drop	5009	2017-07-19 14:48:05.142	drop-zone-for-image-dialog
confluence.sections.space.pages	5010	2017-07-19 14:48:05.142	list-content-tree
com.atlassian.confluence.plugins.confluence-user-profile	5011	2017-07-19 14:48:05.142	editprofilepicture
com.atlassian.instrumentation.atlassian-instrumentation-expose-jmx	5012	2017-07-19 14:48:05.142	jmxInstrumentNamerImpl
org.randombits.confluence.toc	5013	2017-07-19 14:48:05.142	toc-plugin-styles
com.atlassian.auiplugin	5014	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-is-visible
com.atlassian.analytics.analytics-client	5015	2017-07-19 14:48:05.142	analyticConfig
com.atlassian.confluence.plugins.confluence-mentions-plugin	5016	2017-07-19 14:48:05.142	dateEntityFactory
com.atlassian.gadgets.opensocial	5017	2017-07-19 14:48:05.142	directory-checking-servlet-filter
com.atlassian.confluence.plugins.confluence-email-resources	5018	2017-07-19 14:48:05.142	reply-to-comment-email-footer-item
com.atlassian.plugins.atlassian-plugins-webresource-plugin	5019	2017-07-19 14:48:05.142	context-path
com.atlassian.applinks.applinks-plugin	5020	2017-07-19 14:48:05.142	bitbucketProject
confluence.web.resources	5021	2017-07-19 14:48:05.142	rss-feed-builder
com.atlassian.confluence.plugins.pagetree	5022	2017-07-19 14:48:05.142	pagetreesearch
confluence.sections.space.browse	5023	2017-07-19 14:48:05.142	browse-space
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5024	2017-07-19 14:48:05.142	featureDiscovery
confluence.extra.jira	5025	2017-07-19 14:48:05.142	jiraissues
com.atlassian.crowd.embedded.admin	5026	2017-07-19 14:48:05.142	supported-directory-permission-options
com.atlassian.applinks.applinks-plugin	5027	2017-07-19 14:48:05.142	bitbucket
com.atlassian.confluence.plugins.confluence-page-banner	5028	2017-07-19 14:48:05.142	page-banner-panel
confluence.search.mappers.lucene	5029	2017-07-19 14:48:05.142	attachmentType
com.atlassian.auiplugin	5030	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-flag
com.atlassian.confluence.editor	5031	2017-07-19 14:48:05.142	editor-insert-files
com.atlassian.confluence.plugins.confluence-dashboard	5032	2017-07-19 14:48:05.142	spa-friendly-metadata-provider
com.atlassian.confluence.plugins.confluence-nav-links	5033	2017-07-19 14:48:05.142	admin
confluence.macros.basic	5034	2017-07-19 14:48:05.142	anchor
com.atlassian.oauth.serviceprovider	5035	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5036	2017-07-19 14:48:05.142	confluenceHostLicenseEventReader
com.atlassian.oauth.serviceprovider	5037	2017-07-19 14:48:05.142	templateRenderer
com.atlassian.analytics.analytics-client	5038	2017-07-19 14:48:05.142	lastPrivacyPolicyUpdateDateProvider
com.atlassian.analytics.analytics-client	5039	2017-07-19 14:48:05.142	confluenceSystemShutdownDetector
com.atlassian.confluence.plugins.confluence-easyuser-admin	5040	2017-07-19 14:48:05.142	confluence-easyuser-mailServerDeletedListener
com.atlassian.confluence.plugins.confluence-knowledge-base	5041	2017-07-19 14:48:05.142	kb-serviceDeskExternalCustomerServletFilter-component
com.atlassian.templaterenderer.api	5042	2017-07-19 14:48:05.142	templateContextFactory
com.atlassian.confluence.plugins.dashboard-actions	5043	2017-07-19 14:48:05.142	add-space
confluence.lifecycle.core	5044	2017-07-19 14:48:05.142	removeindexwritelock
com.atlassian.auiplugin	5045	2017-07-19 14:48:05.142	internal-ajs-no-context-path
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	5046	2017-07-19 14:48:05.142	collab-xwork
com.atlassian.confluence.plugins.confluence-business-blueprints	5047	2017-07-19 14:48:05.142	sharelinks-service
org.randombits.confluence.toc	5048	2017-07-19 14:48:05.142	toc
com.atlassian.confluence.plugins.recently-viewed-plugin	5049	2017-07-19 14:48:05.142	open.recent
confluence.macros.advanced	5050	2017-07-19 14:48:05.142	content-by-label-resources
com.atlassian.streams.confluence	5051	2017-07-19 14:48:05.142	date-ta-IN
com.atlassian.streams	5052	2017-07-19 14:48:05.142	date-te-IN
com.atlassian.streams.confluence	5053	2017-07-19 14:48:05.142	date-kok-IN
com.atlassian.analytics.analytics-client	5054	2017-07-19 14:48:05.142	confluence-logged-events-servlet
com.atlassian.confluence.plugins.confluence-sal-plugin	5055	2017-07-19 14:48:05.142	xsrfRequestValidator
com.atlassian.plugins.rest.atlassian-rest-module	5056	2017-07-19 14:48:05.142	pluginEventManager
com.atlassian.applinks.applinks-plugin	5057	2017-07-19 14:48:05.142	manifestRetriever
com.atlassian.plugins.atlassian-nav-links-plugin	5058	2017-07-19 14:48:05.142	initialiseCustomOrderFlagUpgradeTask
com.atlassian.applinks.applinks-plugin	5059	2017-07-19 14:48:05.142	propertyService
com.atlassian.confluence.plugins.share-page	5060	2017-07-19 14:48:05.142	share-page-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-ui-components	5061	2017-07-19 14:48:05.142	pagination
com.atlassian.confluence.plugins.confluence-create-content-plugin	5062	2017-07-19 14:48:05.142	create-dialog-init-params
confluence.sections.admin	5063	2017-07-19 14:48:05.142	managereferers
com.atlassian.confluence.plugins.confluence-onboarding	5064	2017-07-19 14:48:05.142	notification-template-no-spaces
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	5065	2017-07-19 14:48:05.142	projectposter-blueprint-item
com.atlassian.plugin.notifications.notifications-module	5066	2017-07-19 14:48:05.142	chosen
com.atlassian.streams	5067	2017-07-19 14:48:05.142	applicationProperties
com.atlassian.confluence.plugins.confluence-browser-metrics	5068	2017-07-19 14:48:05.142	defer-js
com.atlassian.confluence.plugins.confluence-paste	5069	2017-07-19 14:48:05.142	autoconvert-youtu.be-rewrite
confluence.renderer.components	5070	2017-07-19 14:48:05.142	force-newline
confluence.search.mappers.lucene	5071	2017-07-19 14:48:05.142	chainedSearchFilter
com.atlassian.confluence.plugins.confluence-email-resources	5072	2017-07-19 14:48:05.142	notification-templates-page-moved-2.0.0
confluence.extra.dynamictasklist2	5073	2017-07-19 14:48:05.142	tasklist-servlet
com.atlassian.mywork.mywork-confluence-host-plugin	5074	2017-07-19 14:48:05.142	mw-header-anchor
com.atlassian.auiplugin	5075	2017-07-19 14:48:05.142	aui-header-unresponsive
com.atlassian.applinks.applinks-basicauth-plugin	5076	2017-07-19 14:48:05.142	webSudoManager
com.atlassian.confluence.plugins.pagetree	5077	2017-07-19 14:48:05.142	pagetreesearchactions
com.atlassian.mywork.mywork-confluence-provider-plugin	5078	2017-07-19 14:48:05.142	taskService
com.atlassian.confluence.plugins.search.confluence-search	5079	2017-07-19 14:48:05.142	es-siteSearch-query-mapper
confluence.sections.space.advanced	5080	2017-07-19 14:48:05.142	undefined
com.atlassian.confluence.plugins.confluence-mobile	5081	2017-07-19 14:48:05.142	mobile-dashboard-redirect-filter
confluence.extra.webdav	5082	2017-07-19 14:48:05.142	webdav-servlet
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	5083	2017-07-19 14:48:05.142	metaWeblog-xmlrpc
com.atlassian.auiplugin	5084	2017-07-19 14:48:05.142	internal-aui-is-input
com.atlassian.confluence.plugins.confluence-mobile	5085	2017-07-19 14:48:05.142	viewLinkSubMarshallerFactory
com.atlassian.auiplugin	5086	2017-07-19 14:48:05.142	aui-dropdown2
com.atlassian.gadgets.oauth.serviceprovider	5087	2017-07-19 14:48:05.142	helpLinkResolverContextItem
com.atlassian.confluence.plugins.confluence-file-notifications	5088	2017-07-19 14:48:05.142	file-content-email-soy-templates
com.atlassian.applinks.applinks-plugin	5089	2017-07-19 14:48:05.142	confluence-inbound-basic
confluence.sections.admin	5090	2017-07-19 14:48:05.142	quickpipesettings
com.atlassian.mywork.mywork-confluence-host-plugin	5091	2017-07-19 14:48:05.142	notification-dao
confluence.extra.masterdetail	5092	2017-07-19 14:48:05.142	detailssummary-migrator
com.atlassian.mywork.mywork-confluence-host-plugin	5093	2017-07-19 14:48:05.142	notificationRendererService
com.atlassian.confluence.plugins.confluence-daily-summary-email	5094	2017-07-19 14:48:05.142	summaryEmailTrackingServlet
com.atlassian.confluence.plugins.confluence-file-notifications	5095	2017-07-19 14:48:05.142	notificationUserService
com.atlassian.applinks.applinks-plugin	5096	2017-07-19 14:48:05.142	refappCharlie
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	5097	2017-07-19 14:48:05.142	darkFeaturesManager
com.atlassian.analytics.analytics-client	5098	2017-07-19 14:48:05.142	confluenceBaseDataLogger
com.atlassian.support.healthcheck.support-healthcheck-plugin	5099	2017-07-19 14:48:05.142	confluenceLicenseService
com.atlassian.confluence.plugins.quickreload	5100	2017-07-19 14:48:05.142	vcacheFactory
com.atlassian.confluence.plugins.confluence-jira-metadata	5101	2017-07-19 14:48:05.142	jira-metadata-cache-config
com.atlassian.auiplugin	5102	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-events
confluence.web.resources	5103	2017-07-19 14:48:05.142	constants
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5104	2017-07-19 14:48:05.142	settingsService
com.atlassian.confluence.plugins.confluence-create-content-plugin	5105	2017-07-19 14:48:05.142	blueprintDiscoverer
com.atlassian.confluence.plugins.confluence-mentions-plugin	5106	2017-07-19 14:48:05.142	mentions-styling
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5107	2017-07-19 14:48:05.142	pluginLicenseRepository
com.atlassian.streams.core	5108	2017-07-19 14:48:05.142	streamsEntryRendererFactory
confluence.search.mappers.lucene	5109	2017-07-19 14:48:05.142	favouriteSort
com.atlassian.plugins.atlassian-whitelist-ui-plugin	5110	2017-07-19 14:48:05.142	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5111	2017-07-19 14:48:05.142	hipChatIntegrationDiscoveryService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5112	2017-07-19 14:48:05.142	confluenceNotificationPreferenceManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5113	2017-07-19 14:48:05.142	ao-module
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5114	2017-07-19 14:48:05.142	blogpost-created-notification-transformer
com.atlassian.confluence.plugins.confluence-space-ia	5115	2017-07-19 14:48:05.142	header-sidebar-styles-panel
com.atlassian.confluence.plugins.confluence-email-tracker	5116	2017-07-19 14:48:05.142	contentEntityManager
confluence.extractors.core	5117	2017-07-19 14:48:05.142	homePageChangeExtractor
com.atlassian.confluence.plugins.confluence-like	5118	2017-07-19 14:48:05.142	liked-page-action-view-blog-post-link
com.atlassian.confluence.extra.widgetconnector	5119	2017-07-19 14:48:05.142	xwork-actions
confluence.macro.metadata.provider	5120	2017-07-19 14:48:05.142	allMacroMetadataCache
com.atlassian.confluence.plugins.confluence-like	5121	2017-07-19 14:48:05.142	rest
com.atlassian.confluence.plugins.confluence-business-blueprints	5122	2017-07-19 14:48:05.142	sharelinks-urlmacro-resources
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	5123	2017-07-19 14:48:05.142	projectposter-blueprint
com.atlassian.auiplugin	5124	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-select2
com.atlassian.streams	5125	2017-07-19 14:48:05.142	date-ca-ES
com.atlassian.confluence.tinymceplugin	5126	2017-07-19 14:48:05.142	editor-resources
com.atlassian.streams	5127	2017-07-19 14:48:05.142	date-xh-ZA
confluence.extra.impresence2	5128	2017-07-19 14:48:05.142	reporter-icq
com.atlassian.confluence.contributors	5129	2017-07-19 14:48:05.142	watchiContributionExtractor
com.atlassian.streams	5130	2017-07-19 14:48:05.142	date-fr-LU
com.atlassian.confluence.plugins.confluence-email-resources	5131	2017-07-19 14:48:05.142	notification-templates-content-created-2.0.0
com.atlassian.confluence.plugins.confluence-inline-tasks	5132	2017-07-19 14:48:05.142	view-all-my-tasks-email-action-item
confluence.sections.space.tools	5133	2017-07-19 14:48:05.142	browse
com.atlassian.auiplugin	5134	2017-07-19 14:48:05.142	aui-table-sortable
com.atlassian.confluence.editor	5135	2017-07-19 14:48:05.142	charmap-resources
com.atlassian.mywork.mywork-confluence-provider-plugin	5136	2017-07-19 14:48:05.142	eventListener
confluence.macros.advanced	5137	2017-07-19 14:48:05.142	contentbylabel
com.atlassian.support.healthcheck.support-healthcheck-plugin	5138	2017-07-19 14:48:05.142	helpPathResolver
confluence.renderer.components	5139	2017-07-19 14:48:05.142	camelcase
confluence.macros.multimedia	5140	2017-07-19 14:48:05.142	audio
com.atlassian.plugin.notifications.notifications-module	5141	2017-07-19 14:48:05.142	notification-server
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5142	2017-07-19 14:48:05.142	blogpost-trashed-notification-template-body
com.atlassian.confluence.extra.widgetconnector	5143	2017-07-19 14:48:05.142	outboundWhitelist
com.atlassian.streams	5144	2017-07-19 14:48:05.142	date-fr-MC
com.atlassian.auiplugin	5145	2017-07-19 14:48:05.142	aui-progress-indicator
com.atlassian.confluence.plugins.confluence-like	5146	2017-07-19 14:48:05.142	liked-page-action-view-page-link
com.atlassian.confluence.plugins.confluence-browser-metrics	5147	2017-07-19 14:48:05.142	legacy-browser-metrics
com.atlassian.confluence.plugins.confluence-software-blueprints	5148	2017-07-19 14:48:05.142	common-resources
confluence.listeners.core	5149	2017-07-19 14:48:05.142	cdn-cache-flush-listener
confluence.sections.profile.view	5150	2017-07-19 14:48:05.142	profile-js
confluence.macros.multimedia	5151	2017-07-19 14:48:05.142	multimedia
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5152	2017-07-19 14:48:05.142	salWebSudoManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5153	2017-07-19 14:48:05.142	forgot-password-notification-template
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5154	2017-07-19 14:48:05.142	pluginRestUninstaller
com.atlassian.confluence.plugins.gadgets	5155	2017-07-19 14:48:05.142	core-services
com.atlassian.confluence.plugins.confluence-mentions-plugin	5156	2017-07-19 14:48:05.142	mention-email-like-link
com.atlassian.plugins.atlassian-nav-links-plugin	5157	2017-07-19 14:48:05.142	custom-apps-admin-ui
com.atlassian.mywork.mywork-confluence-provider-plugin	5158	2017-07-19 14:48:05.142	locale-service
com.atlassian.confluence.plugins.confluence-user-rest	5159	2017-07-19 14:48:05.142	pluginsSettingsFactory
com.atlassian.applinks.applinks-oauth-plugin	5160	2017-07-19 14:48:05.142	applinksRestV2OAuth
com.atlassian.confluence.plugins.editor-loader	5161	2017-07-19 14:48:05.142	editor-loader-actions
com.atlassian.confluence.plugins.share-page	5162	2017-07-19 14:48:05.142	share
confluence.extractors.core	5163	2017-07-19 14:48:05.142	contentPermissionsExtractor
confluence.macros.multimedia	5164	2017-07-19 14:48:05.142	macro-browser-smart-fields
confluence.macros.advanced	5165	2017-07-19 14:48:05.142	excerpt-include
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5166	2017-07-19 14:48:05.142	hipChatContextProvider
com.atlassian.confluence.plugins.confluence-inline-comments	5167	2017-07-19 14:48:05.142	models
com.atlassian.confluence.plugins.confluence-email-resources	5168	2017-07-19 14:48:05.142	content-templates-page-link-pattern-2.0.0
confluence.listeners.core	5169	2017-07-19 14:48:05.142	confluenceCachingBandanaListener
com.atlassian.confluence.plugins.confluence-knowledge-base	5170	2017-07-19 14:48:05.142	space-kb-web-resource
com.atlassian.plugins.issue-status-plugin	5171	2017-07-19 14:48:05.142	issue-status-resources
confluence.renderer.components	5172	2017-07-19 14:48:05.142	link
com.atlassian.confluence.plugins.confluence-nav-links	5173	2017-07-19 14:48:05.142	rotp.project.shortcuts
com.atlassian.confluence.plugins.confluence-email-resources	5174	2017-07-19 14:48:05.142	notification-templates-comment-add-1.0.0
com.atlassian.support.stp	5175	2017-07-19 14:48:05.142	pluginEventManager
com.atlassian.streams.confluence	5176	2017-07-19 14:48:05.142	date-et-EE
confluence.extra.impresence2	5177	2017-07-19 14:48:05.142	skypeme-migrator
com.atlassian.confluence.plugins.confluence-email-resources	5178	2017-07-19 14:48:05.142	stop-watching-space-blogs-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-files	5179	2017-07-19 14:48:05.142	fileVersionsById
com.atlassian.streams.actions	5180	2017-07-19 14:48:05.142	streams-action-handlers
com.atlassian.confluence.plugins.confluence-request-access-plugin	5181	2017-07-19 14:48:05.142	request-access-notification
confluence.macros.basic	5182	2017-07-19 14:48:05.142	panel
org.randombits.confluence.toc	5183	2017-07-19 14:48:05.142	client-side-toc-resources
com.atlassian.auiplugin	5184	2017-07-19 14:48:05.142	aui-experimental-expander
com.atlassian.auiplugin	5185	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-firebug
com.atlassian.confluence.plugins.confluence-ui-components	5186	2017-07-19 14:48:05.142	blank-placeholder-box
confluence.web.resources	5187	2017-07-19 14:48:05.142	console-instrumentation
com.atlassian.oauth.serviceprovider	5188	2017-07-19 14:48:05.142	pluginScheduler
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	5189	2017-07-19 14:48:05.142	ao-module
confluence.getting-started	5190	2017-07-19 14:48:05.142	getting-started-resources
com.atlassian.confluence.extra.flyingpdf	5191	2017-07-19 14:48:05.142	configpdfstyle-2
com.atlassian.plugins.atlassian-nav-links-plugin	5192	2017-07-19 14:48:05.142	capability-service
org.randombits.confluence.toc	5193	2017-07-19 14:48:05.142	toc-zone-regex-migrator
com.atlassian.confluence.plugins.gadgets	5194	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	5195	2017-07-19 14:48:05.142	system-monitoring
com.atlassian.confluence.plugins.confluence-email-resources	5196	2017-07-19 14:48:05.142	content-templates-2.0.0
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	5197	2017-07-19 14:48:05.142	confluence-feature-discovery-plugin-resources
com.atlassian.plugins.base-hipchat-integration-plugin	5198	2017-07-19 14:48:05.142	hipchat-dialog
com.atlassian.confluence.plugins.soy	5199	2017-07-19 14:48:05.142	soy-static-resource-url-prefix-function
com.atlassian.plugins.jquery	5200	2017-07-19 14:48:05.142	jquery
com.atlassian.analytics.analytics-client	5201	2017-07-19 14:48:05.142	renderer
com.atlassian.confluence.plugins.confluence-inline-tasks	5202	2017-07-19 14:48:05.142	task-hipchat-notification-template
com.atlassian.integration.jira.jira-integration-plugin	5203	2017-07-19 14:48:05.142	jiraConfig
com.atlassian.confluence.plugins.soy	5204	2017-07-19 14:48:05.142	confluenceSoyTemplateRenderer
com.atlassian.confluence.editor	5205	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.recently-viewed-plugin	5206	2017-07-19 14:48:05.142	threadLocalDelegateExecutorFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5207	2017-07-19 14:48:05.142	atlassianAnalyticsPublisher
com.atlassian.confluence.editor	5208	2017-07-19 14:48:05.142	mailServerExistsCriteria
com.atlassian.confluence.plugins.confluence-templates	5209	2017-07-19 14:48:05.142	confluenceTemplateWhiteList
com.atlassian.plugin.notifications.notifications-module	5210	2017-07-19 14:48:05.142	notification-handler
confluence.macros.advanced	5211	2017-07-19 14:48:05.142	gallery-resources
com.atlassian.auiplugin	5212	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-jquery-jquery-hotkeys
com.atlassian.confluence.plugins.confluence-paste	5213	2017-07-19 14:48:05.142	autoconvert-cloudapp
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5214	2017-07-19 14:48:05.142	mpacAnalyticsPublisher
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	5215	2017-07-19 14:48:05.142	emoticonStorageToEditorTransformer
com.atlassian.confluence.plugins.share-page	5216	2017-07-19 14:48:05.142	share-draft-notification-transformer
com.atlassian.auiplugin	5217	2017-07-19 14:48:05.142	aui-lozenge
com.atlassian.confluence.plugins.confluence-daily-summary-email	5218	2017-07-19 14:48:05.142	recommendedUpdatesTrackingListener
confluence.extra.layout	5219	2017-07-19 14:48:05.142	xhtml-column
com.atlassian.confluence.plugins.confluence-templates	5220	2017-07-19 14:48:05.142	space-templates
com.atlassian.plugins.base-hipchat-integration-plugin-api	5221	2017-07-19 14:48:05.142	amd
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5222	2017-07-19 14:48:05.142	analyticsWhitelist
com.atlassian.auiplugin	5223	2017-07-19 14:48:05.142	aui-sidebar
com.atlassian.confluence.plugins.confluence-file-notifications	5224	2017-07-19 14:48:05.142	file-content-remove-email-notification-template
com.atlassian.auiplugin	5225	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-button
com.atlassian.querylang.confluence-cql-plugin	5226	2017-07-19 14:48:05.142	start-of-month-zero-arg-function
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5227	2017-07-19 14:48:05.142	synchronizationManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5228	2017-07-19 14:48:05.142	forgot-password-recipients-provider
com.atlassian.confluence.plugins.pagetree	5229	2017-07-19 14:48:05.142	pagetree
com.atlassian.confluence.plugins.confluence-rest-resources	5230	2017-07-19 14:48:05.142	content-properties-metadata-provider
com.atlassian.analytics.analytics-client	5231	2017-07-19 14:48:05.142	confluenceOnDemandDetector
com.atlassian.confluence.plugins.pagetree	5232	2017-07-19 14:48:05.142	naturalchildrenaction
com.atlassian.confluence.plugins.sticky-table-headers	5233	2017-07-19 14:48:05.142	stickytableheaders-resources
confluence.sections.create	5234	2017-07-19 14:48:05.142	create-space
com.atlassian.confluence.plugins.confluence-email-resources	5235	2017-07-19 14:48:05.142	template-utils-attached-image-1.0.0
confluence.extra.webdav	5236	2017-07-19 14:48:05.142	reverseProxyCopyAndMoveDestinationFix
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	5237	2017-07-19 14:48:05.142	copy-soy
com.atlassian.auiplugin	5238	2017-07-19 14:48:05.142	aui-header-async
com.atlassian.auiplugin	5239	2017-07-19 14:48:05.142	aui-experimental-iconfont
com.atlassian.confluence.plugins.confluence-software-project	5240	2017-07-19 14:48:05.142	sp-space-decisions-template
com.atlassian.analytics.analytics-client	5241	2017-07-19 14:48:05.142	enable-analytics
com.atlassian.auiplugin	5242	2017-07-19 14:48:05.142	internal-aui-animation
com.atlassian.plugins.atlassian-whitelist-core-plugin	5243	2017-07-19 14:48:05.142	applicationLinksMigration
com.atlassian.plugins.authentication.atlassian-authentication-plugin	5244	2017-07-19 14:48:05.142	logout
com.atlassian.confluence.plugins.confluence-macro-browser	5245	2017-07-19 14:48:05.142	macro-browser-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5246	2017-07-19 14:48:05.142	userManager
confluence.sections.space.advanced	5247	2017-07-19 14:48:05.142	startwatchingall
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5248	2017-07-19 14:48:05.142	pluginRequestStore
confluence.renderer.components	5249	2017-07-19 14:48:05.142	dash
com.atlassian.applinks.applinks-trustedapps-plugin	5250	2017-07-19 14:48:05.142	pluginAccessor
confluence.extra.impresence2	5251	2017-07-19 14:48:05.142	presenceManager
com.atlassian.mywork.mywork-confluence-host-plugin	5252	2017-07-19 14:48:05.142	clientRegistrationService
com.atlassian.confluence.plugins.dialog-wizard	5253	2017-07-19 14:48:05.142	rest
com.atlassian.oauth.serviceprovider	5254	2017-07-19 14:48:05.142	unescaperContextItem
com.atlassian.confluence.editor	5255	2017-07-19 14:48:05.142	editor-labels
com.atlassian.integration.jira.jira-integration-plugin	5256	2017-07-19 14:48:05.142	jira-issues-dialog-trigger
com.atlassian.confluence.plugins.confluence-nav-links	5257	2017-07-19 14:48:05.142	settingsManager
com.atlassian.oauth.serviceprovider	5258	2017-07-19 14:48:05.142	accessTokensServlet
com.atlassian.confluence.plugins.confluence-business-blueprints	5259	2017-07-19 14:48:05.142	file-list-resources
com.atlassian.confluence.plugins.confluence-email-tracker	5260	2017-07-19 14:48:05.142	eventPublisher
com.atlassian.auiplugin	5261	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-layer-manager
com.atlassian.confluence.plugins.confluence-sortable-tables	5262	2017-07-19 14:48:05.142	sortable-table-hooks
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5263	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	5264	2017-07-19 14:48:05.142	batchingJobConfig
com.atlassian.streams	5265	2017-07-19 14:48:05.142	date-fr-BE
com.atlassian.confluence.plugins.confluence-daily-summary-email	5266	2017-07-19 14:48:05.142	popular-content-template
com.atlassian.streams	5267	2017-07-19 14:48:05.142	date-fr-CA
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5268	2017-07-19 14:48:05.142	page-moved-notification
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5269	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.confluence.plugins.confluence-inline-tasks	5270	2017-07-19 14:48:05.142	date-helper-js-resources
confluence.web.resources	5271	2017-07-19 14:48:05.142	bigpipe
com.atlassian.confluence.plugins.confluence-email-resources	5272	2017-07-19 14:48:05.142	manage-notifications-email-adg-footer-item
com.atlassian.streams.confluence	5273	2017-07-19 14:48:05.142	date-pa-IN
confluence.admin.user	5274	2017-07-19 14:48:05.142	browsegroups
com.atlassian.auiplugin	5275	2017-07-19 14:48:05.142	internal-src-js-aui-fancy-file-input
com.atlassian.confluence.plugins.confluence-inline-tasks	5276	2017-07-19 14:48:05.142	editor-autocomplete-date-css
com.atlassian.applinks.applinks-oauth-plugin	5277	2017-07-19 14:48:05.142	oauth-2lo-config
com.atlassian.auiplugin	5278	2017-07-19 14:48:05.142	jquery-ui-position
com.atlassian.confluence.plugins.confluence-file-notifications	5279	2017-07-19 14:48:05.142	file-notifications-file-details-file-comments
com.atlassian.confluence.plugins.confluence-inline-tasks	5280	2017-07-19 14:48:05.142	view-blog-tasks-email-action-item
com.atlassian.streams	5281	2017-07-19 14:48:05.142	date-sr-Latn-BA
com.atlassian.confluence.plugins.confluence-space-directory	5282	2017-07-19 14:48:05.142	dateFormatterFactory
confluence.user.menu	5283	2017-07-19 14:48:05.142	follow
com.atlassian.confluence.plugins.confluence-link-browser	5284	2017-07-19 14:48:05.142	link-browser-tab-search
com.atlassian.gadgets.directory	5285	2017-07-19 14:48:05.142	gadget-directory-admin-client
com.atlassian.confluence.plugins.confluence-user-rest	5286	2017-07-19 14:48:05.142	confluenceUserManagementRest-filter
confluence.extra.userlister	5287	2017-07-19 14:48:05.142	confluence.extra.userlister.xwork
com.atlassian.confluence.extra.flyingpdf	5288	2017-07-19 14:48:05.142	configpdfstyle
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5289	2017-07-19 14:48:05.142	rest-filter
com.atlassian.confluence.plugins.confluence-software-project	5290	2017-07-19 14:48:05.142	SoftwareProjectSpaceEventListener
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5291	2017-07-19 14:48:05.142	renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5292	2017-07-19 14:48:05.142	velocityEscapeTool
com.atlassian.plugin.notifications.notifications-module	5293	2017-07-19 14:48:05.142	backbone
confluence.web.components	5294	2017-07-19 14:48:05.142	property-panel
com.atlassian.streams.streams-thirdparty-plugin	5295	2017-07-19 14:48:05.142	webResourceManager
confluence.extractors.core	5296	2017-07-19 14:48:05.142	contentEntityMetadataChangeExtractor
com.atlassian.confluence.plugins.confluence-inline-comments	5297	2017-07-19 14:48:05.142	likes
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5298	2017-07-19 14:48:05.142	tomcatHelper
com.atlassian.integration.jira.jira-integration-plugin	5299	2017-07-19 14:48:05.142	jira-resource-filter
com.atlassian.confluence.plugins.confluence-page-banner	5300	2017-07-19 14:48:05.142	content-metadata-page-restrictions-none
confluence.extra.jira	5301	2017-07-19 14:48:05.142	created-content-jira-remote-link-callback
com.atlassian.applinks.applinks-trustedapps-plugin	5302	2017-07-19 14:48:05.142	typeAccessor
com.atlassian.confluence.plugins.confluence-email-resources	5303	2017-07-19 14:48:05.142	reply-to-comment-email-adg-footer-item
com.atlassian.support.stp	5304	2017-07-19 14:48:05.142	webResourceManager
confluence.sections.admin.upgrade	5305	2017-07-19 14:48:05.142	resources
com.atlassian.mywork.mywork-common-plugin	5306	2017-07-19 14:48:05.142	loginUriProvider
com.atlassian.auiplugin	5307	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-result-set
com.atlassian.streams.confluence	5308	2017-07-19 14:48:05.142	xhtmlRenderer
com.atlassian.applinks.applinks-basicauth-plugin	5309	2017-07-19 14:48:05.142	requestFactory
com.atlassian.confluence.plugins.confluence-mobile	5310	2017-07-19 14:48:05.142	mobile-super-batch-exclusion-filter
confluence.filters.core	5311	2017-07-19 14:48:05.142	httpRequestStatsFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	5312	2017-07-19 14:48:05.142	tasks-recipients-provider
com.atlassian.plugin.notifications.notifications-module	5313	2017-07-19 14:48:05.142	userRole
com.atlassian.streams.confluence	5314	2017-07-19 14:48:05.142	date-smn-FI
com.atlassian.analytics.analytics-client	5315	2017-07-19 14:48:05.142	analyticsEmailHasher
com.atlassian.confluence.plugins.confluence-dashboard	5316	2017-07-19 14:48:05.142	pluginHibernateSessionFactory
com.atlassian.confluence.plugins.expand-macro	5317	2017-07-19 14:48:05.142	expand-macro-css-only
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	5318	2017-07-19 14:48:05.142	projectposter-template
com.atlassian.plugins.atlassian-nav-links-plugin	5319	2017-07-19 14:48:05.142	projectManager
com.atlassian.streams	5320	2017-07-19 14:48:05.142	appLinkServiceExtensions
com.atlassian.streams	5321	2017-07-19 14:48:05.142	date-th-TH
com.atlassian.confluence.editor	5322	2017-07-19 14:48:05.142	macroParameterTypeParser
com.atlassian.confluence.plugins.share-page	5323	2017-07-19 14:48:05.142	plus-icon-css
com.atlassian.streams	5324	2017-07-19 14:48:05.142	date-sr-Latn-CS
com.atlassian.auiplugin	5325	2017-07-19 14:48:05.142	internal-@atlassian-aui-src-js-aui-restful-table-class-names
com.atlassian.confluence.plugins.confluence-jira-metadata	5326	2017-07-19 14:48:05.142	confluence-jira-metadata-rest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5327	2017-07-19 14:48:05.142	userManagerContextItem
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5328	2017-07-19 14:48:05.142	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5329	2017-07-19 14:48:05.142	confluence-upm-osgi-menu
confluence.listeners.core	5330	2017-07-19 14:48:05.142	pluginCounterInvalidator
com.atlassian.confluence.tinymceplugin	5331	2017-07-19 14:48:05.142	editor-autocomplete-resources
com.atlassian.oauth.consumer.sal	5332	2017-07-19 14:48:05.142	tokenStore
com.atlassian.plugin.notifications.notifications-module	5333	2017-07-19 14:48:05.142	userServerManager
com.atlassian.streams	5334	2017-07-19 14:48:05.142	date-lv-LV
com.atlassian.confluence.plugins.confluence-inline-comments	5335	2017-07-19 14:48:05.142	display-reply-view
com.atlassian.streams	5336	2017-07-19 14:48:05.142	date-fr-CH
confluence.web.resources	5337	2017-07-19 14:48:05.142	aui-experimental
com.atlassian.confluence.extra.widgetconnector	5338	2017-07-19 14:48:05.142	web-widget-xhtml
com.atlassian.confluence.plugins.confluence-email-resources	5339	2017-07-19 14:48:05.142	content-templates-contextual-excerpt-pattern-1.0.0
com.atlassian.applinks.applinks-plugin	5340	2017-07-19 14:48:05.142	velocityContextFactory
com.atlassian.auiplugin	5341	2017-07-19 14:48:05.142	aui-select
com.atlassian.applinks.applinks-trustedapps-plugin	5342	2017-07-19 14:48:05.142	webResourceUrlProvider
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5343	2017-07-19 14:48:05.142	bandanaToAoMigrationController
com.atlassian.support.stp	5344	2017-07-19 14:48:05.142	supportZipFileServerServlet
com.atlassian.querylang.confluence-cql-plugin	5345	2017-07-19 14:48:05.142	now-zero-arg-function
com.atlassian.confluence.plugins.confluence-dashboard	5346	2017-07-19 14:48:05.142	confluenceDashboardWhiteList
com.atlassian.applinks.applinks-oauth-plugin	5347	2017-07-19 14:48:05.142	applinks-oauth-ui
com.atlassian.plugins.atlassian-nps-plugin	5348	2017-07-19 14:48:05.142	nps-amd-shims
com.atlassian.plugin.jslibs	5349	2017-07-19 14:48:05.142	uri-1.14.1
com.atlassian.integration.jira.jira-integration-plugin	5350	2017-07-19 14:48:05.142	i18nResolver
com.atlassian.confluence.keyboardshortcuts	5351	2017-07-19 14:48:05.142	tinymce.p
\.


--
-- Name: AO_6384AB_FEATURE_METADATA_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_6384AB_FEATURE_METADATA_AO_ID_seq"', 5351, true);


--
-- Data for Name: AO_7CDE43_EVENT; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_7CDE43_EVENT" ("EVENT_KEY", "ID", "NOTIFICATION_ID") FROM stdin;
\.


--
-- Name: AO_7CDE43_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_7CDE43_EVENT_ID_seq"', 1, false);


--
-- Data for Name: AO_7CDE43_FILTER_PARAM; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_7CDE43_FILTER_PARAM" ("ID", "NOTIFICATION_ID", "PARAM_KEY", "PARAM_VALUE") FROM stdin;
\.


--
-- Name: AO_7CDE43_FILTER_PARAM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_7CDE43_FILTER_PARAM_ID_seq"', 1, false);


--
-- Data for Name: AO_7CDE43_NOTIFICATION; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_7CDE43_NOTIFICATION" ("ID", "NOTIFICATION_SCHEME_ID") FROM stdin;
\.


--
-- Name: AO_7CDE43_NOTIFICATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_7CDE43_NOTIFICATION_ID_seq"', 1, false);


--
-- Data for Name: AO_7CDE43_NOTIFICATION_SCHEME; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_7CDE43_NOTIFICATION_SCHEME" ("DESCRIPTION", "ID", "SCHEME_NAME") FROM stdin;
\.


--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_7CDE43_NOTIFICATION_SCHEME_ID_seq"', 1, false);


--
-- Data for Name: AO_7CDE43_RECIPIENT; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_7CDE43_RECIPIENT" ("ID", "INDIVIDUAL", "NOTIFICATION_ID", "PARAM_DISPLAY", "PARAM_VALUE", "SERVER_ID", "TYPE") FROM stdin;
\.


--
-- Name: AO_7CDE43_RECIPIENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_7CDE43_RECIPIENT_ID_seq"', 1, false);


--
-- Data for Name: AO_7CDE43_SERVER_CONFIG; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_7CDE43_SERVER_CONFIG" ("CUSTOM_TEMPLATE_PATH", "DEFAULT_USER_ID_TEMPLATE", "ENABLED_FOR_ALL_USERS", "GROUPS_WITH_ACCESS", "ID", "NOTIFICATION_MEDIUM_KEY", "SERVER_NAME") FROM stdin;
\.


--
-- Name: AO_7CDE43_SERVER_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_7CDE43_SERVER_CONFIG_ID_seq"', 1, false);


--
-- Data for Name: AO_7CDE43_SERVER_PARAM; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_7CDE43_SERVER_PARAM" ("ID", "PARAM_KEY", "PARAM_VALUE", "SERVER_CONFIG_ID") FROM stdin;
\.


--
-- Name: AO_7CDE43_SERVER_PARAM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_7CDE43_SERVER_PARAM_ID_seq"', 1, false);


--
-- Data for Name: AO_88263F_HEALTH_CHECK_STATUS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_88263F_HEALTH_CHECK_STATUS" ("APPLICATION_NAME", "COMPLETE_KEY", "DESCRIPTION", "FAILED_DATE", "FAILURE_REASON", "ID", "IS_HEALTHY", "IS_RESOLVED", "RESOLVED_DATE", "SEVERITY", "STATUS_NAME") FROM stdin;
Confluence	com.atlassian.confluence.plugins.confluence-healthcheck-plugin:licenseHealthCheck	Checks if the software maintenance period included with your license has expired. Software maintenance entitles you to support and product upgrades.	2017-07-19 14:49:59.202	Your maintenance period expired on 25 Jun 2017. Renew your license to be eligible for support and product upgrades.	1	f	f	\N	MAJOR	License Expiry
\.


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_88263F_HEALTH_CHECK_STATUS_ID_seq"', 1, true);


--
-- Data for Name: AO_88263F_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_88263F_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
1	last-run	1500475799218
\.


--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_88263F_PROPERTIES_ID_seq"', 1, true);


--
-- Data for Name: AO_88263F_READ_NOTIFICATIONS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_88263F_READ_NOTIFICATIONS" ("ID", "IS_SNOOZED", "NOTIFICATION_ID", "SNOOZE_COUNT", "SNOOZE_DATE", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_88263F_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_88263F_READ_NOTIFICATIONS_ID_seq"', 1, false);


--
-- Data for Name: AO_88BB94_BATCH_NOTIFICATION; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_88BB94_BATCH_NOTIFICATION" ("BATCHING_COLUMN", "CONTENT_TYPE", "ID", "NOTIFICATION_KEY", "PAYLOAD") FROM stdin;
\.


--
-- Name: AO_88BB94_BATCH_NOTIFICATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_88BB94_BATCH_NOTIFICATION_ID_seq"', 1, false);


--
-- Data for Name: AO_92296B_AORECENTLY_VIEWED; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_92296B_AORECENTLY_VIEWED" ("CONTENT_ID", "CONTENT_TYPE", "ID", "LAST_VIEW_DATE", "SPACE_KEY", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_92296B_AORECENTLY_VIEWED_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_92296B_AORECENTLY_VIEWED_ID_seq"', 1, false);


--
-- Data for Name: AO_9412A1_AONOTIFICATION; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_9412A1_AONOTIFICATION" ("ACTION", "ACTION_ICON_URL", "APPLICATION", "APPLICATION_LINK_ID", "CREATED", "DESCRIPTION", "ENTITY", "GLOBAL_ID", "GROUPING_ID", "ICON_URL", "ID", "ITEM_ICON_URL", "ITEM_TITLE", "ITEM_URL", "METADATA", "PINNED", "READ", "STATUS", "TITLE", "UPDATED", "URL", "USER") FROM stdin;
\.


--
-- Name: AO_9412A1_AONOTIFICATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_9412A1_AONOTIFICATION_ID_seq"', 1, false);


--
-- Data for Name: AO_9412A1_AOREGISTRATION; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_9412A1_AOREGISTRATION" ("DATA", "ID", "UPDATED") FROM stdin;
\.


--
-- Data for Name: AO_9412A1_AOTASK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_9412A1_AOTASK" ("APPLICATION", "APPLICATION_LINK_ID", "CREATED", "DESCRIPTION", "ENTITY", "GLOBAL_ID", "ID", "ITEM_ICON_URL", "ITEM_TITLE", "METADATA", "STATUS", "TITLE", "UPDATED", "URL", "USER") FROM stdin;
\.


--
-- Name: AO_9412A1_AOTASK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_9412A1_AOTASK_ID_seq"', 1, false);


--
-- Data for Name: AO_9412A1_AOUSER; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_9412A1_AOUSER" ("CREATED", "ID", "LAST_READ_NOTIFICATION_ID", "TASK_ORDERING", "UPDATED", "USERNAME") FROM stdin;
\.


--
-- Name: AO_9412A1_AOUSER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_9412A1_AOUSER_ID_seq"', 1, false);


--
-- Data for Name: AO_9412A1_USER_APP_LINK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_9412A1_USER_APP_LINK" ("APPLICATION_LINK_ID", "AUTH_VERIFIED", "CREATED", "ID", "UPDATED", "USER_ID") FROM stdin;
\.


--
-- Name: AO_9412A1_USER_APP_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_9412A1_USER_APP_LINK_ID_seq"', 1, false);


--
-- Data for Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_A0B856_WEB_HOOK_LISTENER_AO" ("DESCRIPTION", "ENABLED", "EVENTS", "EXCLUDE_BODY", "FILTERS", "ID", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "PARAMETERS", "REGISTRATION_METHOD", "URL") FROM stdin;
\.


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"', 1, false);


--
-- Data for Name: AO_BAF3AA_AOINLINE_TASK; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_BAF3AA_AOINLINE_TASK" ("ASSIGNEE_USER_KEY", "BODY", "COMPLETE_DATE", "COMPLETE_USER_KEY", "CONTENT_ID", "CREATE_DATE", "CREATOR_USER_KEY", "DUE_DATE", "GLOBAL_ID", "ID", "TASK_STATUS", "UPDATE_DATE") FROM stdin;
\.


--
-- Name: AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq"', 1, false);


--
-- Data for Name: AO_DC98AE_AOHELP_TIP; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_DC98AE_AOHELP_TIP" ("DISMISSED_HELP_TIP", "ID", "USER_KEY") FROM stdin;
\.


--
-- Name: AO_DC98AE_AOHELP_TIP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_DC98AE_AOHELP_TIP_ID_seq"', 1, false);


--
-- Data for Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_ED669C_SEEN_ASSERTIONS" ("ASSERTION_ID", "EXPIRY_TIMESTAMP", "ID") FROM stdin;
\.


--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_ED669C_SEEN_ASSERTIONS_ID_seq"', 1, false);


--
-- Data for Name: EVENTS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "EVENTS" (rev, history, partition, sequence, event) FROM stdin;
\.


--
-- Data for Name: SECRETS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "SECRETS" (key, value) FROM stdin;
\.


--
-- Data for Name: SNAPSHOTS; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "SNAPSHOTS" (key, value) FROM stdin;
\.


--
-- Data for Name: attachmentdata; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY attachmentdata (attachmentdataid, hibernateversion, attversion, data, attachmentid) FROM stdin;
\.


--
-- Data for Name: audit_affected_object; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY audit_affected_object (id, name, type, auditrecordid) FROM stdin;
\.


--
-- Data for Name: audit_changed_value; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY audit_changed_value (id, name, oldvalue, newvalue, auditrecordid) FROM stdin;
\.


--
-- Data for Name: auditrecord; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY auditrecord (auditrecordid, summary, description, category, address, sysamdin, authorname, authorfullname, authorkey, objectname, objecttype, searchstring, creationdate) FROM stdin;
\.


--
-- Data for Name: bandana; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY bandana (bandanaid, bandanacontext, bandanakey, bandanavalue) FROM stdin;
1	_GLOBAL	confluence.server.id	<string>BK5P-LNBX-62FS-U7SF</string>
2	_GLOBAL	confluence.server.installation.date	<date>2017-07-19 14:48:05.142 GMT</date>
4	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.plugin-installed-date-in-millis	<string>1500475686684</string>
5	_GLOBAL	synchrony_collaborative_editor_app_passphrase	<string>DnAbdqb3PkiWPpPGdGMaQdNz68fdL+QsxGpxIWKQhAU=</string>
6	_GLOBAL	synchrony_collaborative_editor_UUID	<string>80a1e8f1-8338-42b4-b26c-b46b01959a82</string>
7	_GLOBAL	synchrony_collaborative_editor_app_id	<string>Synchrony-a689df31-a4ae-392e-beaf-3bac41d7e2c1</string>
8	_GLOBAL	synchrony_collaborative_editor_app_secret	<string>HkM/pgiZJOyHPenFaEqXRdX/VDzkJyKd0w1kxv+XbeA=</string>
9	_GLOBAL	AO_9412A1_#	<string>8</string>
10	_GLOBAL	AO_26DB7F_#	<string>1</string>
11	_GLOBAL	plugin.manager.state.Map	<map/>
12	_GLOBAL	atlassian.confluence.plugin.resource.counter	<int>2</int>
3	_GLOBAL	atlassian.confluence.settings	<settings>\n  <doNotSave>false</doNotSave>\n  <allowCamelCase>false</allowCamelCase>\n  <allowTrackbacks>false</allowTrackbacks>\n  <allowThreadedComments>true</allowThreadedComments>\n  <externalUserManagement>false</externalUserManagement>\n  <denyPublicSignup>true</denyPublicSignup>\n  <emailAdminMessageOff>false</emailAdminMessageOff>\n  <almostSupportPeriodEndMessageOff>false</almostSupportPeriodEndMessageOff>\n  <senMissingInLicenseMessageOff>true</senMissingInLicenseMessageOff>\n  <baseUrlAdminMessageOff>false</baseUrlAdminMessageOff>\n  <allowRemoteApi>false</allowRemoteApi>\n  <allowRemoteApiAnonymous>false</allowRemoteApiAnonymous>\n  <antiXssMode>true</antiXssMode>\n  <gzippingResponse>true</gzippingResponse>\n  <disableLogo>false</disableLogo>\n  <sharedMode>false</sharedMode>\n  <enableDidYouMean>false</enableDidYouMean>\n  <enableQuickNav>true</enableQuickNav>\n  <enableSpaceStyles>false</enableSpaceStyles>\n  <enableOpenSearch>true</enableOpenSearch>\n  <showSystemInfoIn500Page>false</showSystemInfoIn500Page>\n  <showApplicationTitle>false</showApplicationTitle>\n  <referrerSettings>\n    <collectReferrerData>true</collectReferrerData>\n    <excludedReferrers/>\n    <hideExternalReferrers>false</hideExternalReferrers>\n  </referrerSettings>\n  <captchaSettings>\n    <enableCaptcha>false</enableCaptcha>\n    <enableDebug>false</enableDebug>\n    <captchaGroups class="list"/>\n    <exclude>registered</exclude>\n  </captchaSettings>\n  <customHtmlSettings>\n    <beforeHeadEnd></beforeHeadEnd>\n    <afterBodyStart></afterBodyStart>\n    <beforeBodyEnd></beforeBodyEnd>\n  </customHtmlSettings>\n  <colourSchemesSettings>\n    <colourSchemeType>custom</colourSchemeType>\n  </colourSchemesSettings>\n  <loginManagerSettings>\n    <enableElevatedSecurityCheck>true</enableElevatedSecurityCheck>\n    <loginAttemptsThreshold>3</loginAttemptsThreshold>\n  </loginManagerSettings>\n  <confluenceHttpParameters>\n    <connectionTimeout>10000</connectionTimeout>\n    <socketTimeout>10000</socketTimeout>\n    <enabled>true</enabled>\n  </confluenceHttpParameters>\n  <attachmentMaxSize>104857600</attachmentMaxSize>\n  <auditLogRetentionNumber>3</auditLogRetentionNumber>\n  <auditLogRetentionUnit>Years</auditLogRetentionUnit>\n  <draftSaveInterval>30000</draftSaveInterval>\n  <maxAttachmentsInUI>5</maxAttachmentsInUI>\n  <siteTitle>Confluence</siteTitle>\n  <documentationUrlPattern>http://docs.atlassian.com/confluence/docs-{0}/{1}</documentationUrlPattern>\n  <showContactAdministratorsForm>true</showContactAdministratorsForm>\n  <emailAddressVisibility>email.address.public</emailAddressVisibility>\n  <defaultEncoding>UTF-8</defaultEncoding>\n  <maxThumbHeight>300</maxThumbHeight>\n  <maxThumbWidth>300</maxThumbWidth>\n  <backupAttachmentsDaily>true</backupAttachmentsDaily>\n  <backupDaily>true</backupDaily>\n  <backupPath>/confluence-shared-home/backups</backupPath>\n  <nofollowExternalLinks>true</nofollowExternalLinks>\n  <indexingLanguage>english</indexingLanguage>\n  <globalDefaultLocale>en_GB</globalDefaultLocale>\n  <dailyBackupFilePrefix>backup-</dailyBackupFilePrefix>\n  <dailyBackupDateFormatPattern>yyyy_MM_dd</dailyBackupDateFormatPattern>\n  <supportRequestEmail>confluence-autosupportrequests@atlassian.com</supportRequestEmail>\n  <defaultSpaceHomepageTitle>Home</defaultSpaceHomepageTitle>\n  <baseUrl>http://confluence-cluster-631-lb:50631</baseUrl>\n  <attachmentDataStore>file.system.based.attachments.storage</attachmentDataStore>\n  <displayLinkIcons>false</displayLinkIcons>\n  <addWildcardsToUserAndGroupSearches>true</addWildcardsToUserAndGroupSearches>\n  <xsrfAddComments>true</xsrfAddComments>\n  <webSudoTimeout>10</webSudoTimeout>\n  <webSudoEnabled>true</webSudoEnabled>\n  <defaultUsersGroup>confluence-users</defaultUsersGroup>\n  <attachmentSecurityLevel>smart</attachmentSecurityLevel>\n  <enableJavascriptTop>true</enableJavascriptTop>\n  <supportPeriodEndMessageOff>false</supportPeriodEndMessageOff>\n  <enableWysiwyg>true</enableWysiwyg>\n  <useWysiwygByDefault>true</useWysiwygByDefault>\n  <numberOfBreadcrumbAncestors>1</numberOfBreadcrumbAncestors>\n  <viewSpaceGoesToSpaceSummary>false</viewSpaceGoesToSpaceSummary>\n  <maxSimultaneousQuickNavRequests>40</maxSimultaneousQuickNavRequests>\n  <maxRssItems>200</maxRssItems>\n  <rssTimeout>60</rssTimeout>\n  <pageTimeout>120</pageTimeout>\n</settings>
13	_GLOBAL	com.atlassian.confluence.plugins.confluence-edge-index:build	<string>1</string>
14	_GLOBAL	com.atlassian.confluence.plugins.confluence-healthcheck-plugin:build	<string>1</string>
15	_GLOBAL	com.atlassian.crowd.embedded.admin:build	<string>3</string>
16	_GLOBAL	com.atlassian.plugins.atlassian-whitelist-core-plugin:build	<string>3</string>
17	_GLOBAL	com.atlassian.plugins.custom_apps.hasCustomOrder	<string>false</string>
18	_GLOBAL	com.atlassian.plugins.atlassian-nav-links-plugin:build	<string>1</string>
19	_GLOBAL	com.atlassian.confluence.plugins.confluence-inline-tasks:build	<string>3</string>
20	_GLOBAL	com.atlassian.confluence.plugins.confluence-document-conversion-library:build	<string>1</string>
21	_GLOBAL	confluence.extra.masterdetail:build	<string>2</string>
22	_GLOBAL	com.atlassian.confluence.plugins.confluence-inline-comments:build	<string>1</string>
23	_GLOBAL	com.atlassian.confluence.plugins.confluence-space-ia:build	<string>1</string>
24	_GLOBAL	com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin:build	<string>1</string>
25	_GLOBAL	com.atlassian.confluence.plugins.confluence-roadmap-plugin:build	<string>6</string>
29	_GLOBAL	com.atlassian.upm:notifications:dismissal-plugin.request	<list/>
30	_GLOBAL	com.atlassian.upm:notifications:dismissal-update	<list/>
31	_GLOBAL	com.atlassian.upm:notifications:dismissal-evaluation.expired	<list/>
33	_GLOBAL	com.atlassian.upm:notifications:dismissal-edition.mismatch	<list/>
34	_GLOBAL	com.atlassian.upm:notifications:dismissal-maintenance.expired	<list/>
36	_GLOBAL	com.atlassian.upm:notifications:dismissal-auto.updated.plugin	<list/>
37	_GLOBAL	com.atlassian.upm:notifications:dismissal-auto.updated.upm	<list/>
38	_GLOBAL	com.atlassian.upm.request.PluginSettingsPluginRequestStore:requests:requests_v2	<list/>
26	_GLOBAL	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	<string>5</string>
39	_GLOBAL	com.atlassian.support.stp:build	<string>1</string>
40	_GLOBAL	com.atlassian.confluence.plugins.confluence-create-content-plugin:build	<string>4</string>
41	_GLOBAL	gadget.counter	<int>2</int>
43	_GLOBAL	com.atlassian.analytics.client.configuration.uuid	<string>3e1a0e8c-554d-425e-a152-6ef60fe1a2fe</string>
42	_GLOBAL	com.atlassian.analytics.client.configuration..policy_acknowledged	<string>true</string>
44	_GLOBAL	com.atlassian.analytics.client.configuration.serverid	<string>BK5P-LNBX-62FS-U7SF</string>
45	_GLOBAL	com.atlassian.analytics.client.configuration..analytics_enabled	<string>true</string>
27	_GLOBAL	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	<list>\n  <string>{&quot;userKey&quot;:&quot;Confluence&quot;,&quot;date&quot;:1500475738998,&quot;i18nKey&quot;:&quot;upm.auditLog.upm.startup&quot;,&quot;entryType&quot;:&quot;UPM_STARTUP&quot;,&quot;params&quot;:[]}</string>\n</list>
46	com.atlassian.confluence.content.render.xhtml.migration.macro.MacroMigrationService	migration.required	<boolean>false</boolean>
48	_GLOBAL	com.atlassian.upm:notifications:notification-edition.mismatch	<list/>
47	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#LocalTaskQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
49	_GLOBAL	com.atlassian.upm:notifications:notification-plugin.request	<list/>
51	_GLOBAL	com.atlassian.upm:notifications:notification-evaluation.expired	<list/>
50	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#AuditLogCleaner	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
53	_GLOBAL	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	<list/>
52	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#CleanTempDirectoryJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
54	_GLOBAL	com.atlassian.upm:notifications:notification-maintenance.expired	<list/>
55	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#EhCacheCompactionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
56	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#TaskQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
57	_GLOBAL	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	<list/>
58	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClusterCacheCompactionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
59	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#LaasPerformanceLoggingJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
60	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClusterSafetyJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
61	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClearExpiredRememberMeTokensJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
62	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#JournalCleaner	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
63	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#MailQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
64	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#clearOldMailErrorsJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
65	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#DeferredFileDeletionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
66	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#BackupJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
67	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#DailyReportJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
68	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ESIndexJournalVerifierJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
69	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#batchingJobConfig	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
70	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.confluence-onboarding#onboardingSpaceCheckJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
71	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.confluence-daily-summary-email#summaryEmail	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
72	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.recently-viewed-plugin#purgeHistoryJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
73	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#flushEdgeIndexQueue	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
74	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.confluence-jira-metadata#jira-metadata-cache-config	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
75	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#conversionQueueMonitor	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
76	com.atlassian.confluence.schedule.ScheduledJobConfiguration	com.atlassian.confluence.plugins.confluence-onboarding#onboardingNumberOfUsersCheckJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
77	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#periodicEventPublisherJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
80	_GLOBAL	plugin.settings.com.atlassian.confluence.bigpipe.BigPipeSettingsManager	<com.atlassian.confluence.internal.bigpipe.BigPipeSettingsManager-BigPipeSettings>\n  <pluginSettings>\n    <entry>\n      <string>com.atlassian.confluence.plugins.confluence-content-report-plugin:content-report-table</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>com.gliffy.integration.confluence:gliffy</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>com.atlassian.confluence.plugins.confluence-inline-tasks:tasks-report-macro</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:blog-posts</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:children</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.jira:jira</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.jira:jirachart</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:include</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:excerpt-include</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.chart:chart</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>org.randombits.confluence.toc:toc</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.masterdetail:detailssummary</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>com.atlassian.confluence.contributors:contributors</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>com.atlassian.confluence.contributors:contributors-summary</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:recently-updated</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.jira:jiraissues</string>\n      <boolean>false</boolean>\n    </entry>\n  </pluginSettings>\n</com.atlassian.confluence.internal.bigpipe.BigPipeSettingsManager-BigPipeSettings>
78	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.onboardingNumberOfUsersCheckJob	<string>JOB_FIRST_EXECUTE</string>
79	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.onboardingSpaceCheckJob	<string>JOB_FIRST_EXECUTE</string>
81	_GLOBAL	com.atlassian.upm:notifications:notification-update	<list/>
82	_GLOBAL	com.atlassian.analytics.client.configuration..logged_base_analytics_data	<string>true</string>
83	_GLOBAL	c.a.c.plugins:confluence-user-rest:firstCheckDateMs	<string>1500475794081</string>
84	_GLOBAL	c.a.c.plugins:confluence-user-rest:hadHadASingleDirectory	<string>true</string>
\.


--
-- Data for Name: bodycontent; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY bodycontent (bodycontentid, body, contentid, bodytypeid) FROM stdin;
\.


--
-- Data for Name: clustersafety; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY clustersafety (clustersafetyid, safetynumber) FROM stdin;
491521	5955329
\.


--
-- Data for Name: confancestors; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY confancestors (descendentid, ancestorposition, ancestorid) FROM stdin;
\.


--
-- Data for Name: confversion; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY confversion (confversionid, buildnumber, installdate, versiontag, creationdate, lastmoddate) FROM stdin;
425985	7202	2017-07-19 14:48:47.856	lock_for_upgrade_to_7202	\N	\N
\.


--
-- Data for Name: content; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY content (contentid, hibernateversion, contenttype, title, lowertitle, version, creator, creationdate, lastmodifier, lastmoddate, versioncomment, prevver, content_status, pageid, spaceid, child_position, parentid, messageid, pluginkey, pluginver, parentccid, draftpageid, draftspacekey, drafttype, draftpageversion, parentcommentid, username) FROM stdin;
360449	1	USERINFO	\N	\N	1	\N	2017-07-19 14:48:47.533	\N	2017-07-19 14:48:47.533		\N	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2c9480835d5b51cc015d5b529e050000
360450	1	GLOBALDESCRIPTION	\N	\N	1	\N	2017-07-19 14:48:47.821	\N	2017-07-19 14:48:47.821		\N	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: content_label; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY content_label (id, labelid, contentid, pagetemplateid, owner, creationdate, lastmoddate, labelableid, labelabletype) FROM stdin;
\.


--
-- Data for Name: content_perm; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY content_perm (id, cp_type, username, groupname, cps_id, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
\.


--
-- Data for Name: content_perm_set; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY content_perm_set (id, cont_perm_type, content_id, creationdate, lastmoddate) FROM stdin;
\.


--
-- Data for Name: content_relation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY content_relation (relationid, targetcontentid, sourcecontentid, targettype, sourcetype, relationname, creationdate, lastmoddate, creator, lastmodifier) FROM stdin;
\.


--
-- Data for Name: contentproperties; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY contentproperties (propertyid, propertyname, stringval, longval, dateval, contentid) FROM stdin;
\.


--
-- Data for Name: cwd_app_dir_group_mapping; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_app_dir_group_mapping (id, app_dir_mapping_id, application_id, directory_id, group_name) FROM stdin;
\.


--
-- Data for Name: cwd_app_dir_mapping; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_app_dir_mapping (id, application_id, directory_id, allow_all, list_index) FROM stdin;
163841	98305	131073	T	0
\.


--
-- Data for Name: cwd_app_dir_operation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_app_dir_operation (app_dir_mapping_id, operation_type) FROM stdin;
163841	DELETE_GROUP
163841	UPDATE_USER_ATTRIBUTE
163841	CREATE_GROUP
163841	DELETE_USER
163841	DELETE_ROLE
163841	UPDATE_ROLE
163841	UPDATE_ROLE_ATTRIBUTE
163841	UPDATE_GROUP_ATTRIBUTE
163841	CREATE_USER
163841	CREATE_ROLE
163841	UPDATE_USER
163841	UPDATE_GROUP
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
98305	crowd-embedded	crowd-embedded	2017-07-19 14:48:46.948	2017-07-19 14:48:47.009	T	\N	GENERIC_APPLICATION	X
\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_application_address (application_id, remote_address) FROM stdin;
\.


--
-- Data for Name: cwd_application_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_application_attribute (application_id, attribute_name, attribute_value) FROM stdin;
98305	com.sun.jndi.ldap.connect.pool.initsize	1
98305	atlassian_sha1_applied	true
98305	com.sun.jndi.ldap.connect.pool.timeout	30000
98305	com.sun.jndi.ldap.connect.pool.authentication	simple
98305	com.sun.jndi.ldap.connect.pool.maxsize	0
98305	com.sun.jndi.ldap.connect.pool.prefsize	10
98305	aggregateMemberships	true
98305	com.sun.jndi.ldap.connect.pool.protocol	plain ssl
\.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type) FROM stdin;
131073	Confluence Internal Directory	confluence internal directory	2017-07-19 14:48:46.987	2017-07-19 14:48:46.987	T	Confluence default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL
\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_directory_attribute (directory_id, attribute_name, attribute_value) FROM stdin;
131073	user_encryption_method	atlassian-security
\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_directory_operation (directory_id, operation_type) FROM stdin;
131073	DELETE_GROUP
131073	UPDATE_USER_ATTRIBUTE
131073	CREATE_GROUP
131073	DELETE_USER
131073	DELETE_ROLE
131073	UPDATE_ROLE
131073	UPDATE_ROLE_ATTRIBUTE
131073	CREATE_USER
131073	UPDATE_GROUP_ATTRIBUTE
131073	CREATE_ROLE
131073	UPDATE_USER
131073	UPDATE_GROUP
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, group_type, directory_id) FROM stdin;
196609	confluence-administrators	confluence-administrators	T	F	2017-07-19 14:48:47.072	2017-07-19 14:48:47.072	\N	GROUP	131073
196610	confluence-users	confluence-users	T	F	2017-07-19 14:48:47.117	2017-07-19 14:48:47.117	\N	GROUP	131073
\.


--
-- Data for Name: cwd_group_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_group_attribute (id, group_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_membership (id, parent_id, child_group_id, child_user_id) FROM stdin;
327681	196610	\N	262145
327682	196609	\N	262145
\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_user (id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, external_id, directory_id, credential) FROM stdin;
262145	admin	admin	T	2017-07-19 14:48:47.352	2017-07-19 14:48:47.352			admin	admin	admin	admin	admin@noreply.foo	admin@noreply.foo	4ebb2905-ea54-4b36-b150-49e06304e4f4	131073	{PKCS5S2}XIbLvI+B3Va4PHufX/mx4IDPwCViQME4alB7OWDItI9KwjvBmQBg29hOjVEyuc66
\.


--
-- Data for Name: cwd_user_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_user_attribute (id, user_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
294913	262145	131073	requiresPasswordChange	false	false
294914	262145	131073	invalidPasswordAttempts	0	0
294915	262145	131073	passwordLastChanged	1500475727368	1500475727368
294916	262145	131073	lastAuthenticated	1500475727608	1500475727608
\.


--
-- Data for Name: cwd_user_credential_record; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_user_credential_record (id, user_id, password_hash, list_index) FROM stdin;
\.


--
-- Data for Name: decorator; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY decorator (decoratorid, spacekey, decoratorname, body, lastmoddate) FROM stdin;
\.


--
-- Data for Name: external_entities; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY external_entities (id, name, type) FROM stdin;
\.


--
-- Data for Name: external_members; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY external_members (extentityid, groupid) FROM stdin;
\.


--
-- Data for Name: extrnlnks; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY extrnlnks (linkid, contenttype, viewcount, url, lowerurl, contentid, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
\.


--
-- Data for Name: follow_connections; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY follow_connections (connectionid, follower, followee) FROM stdin;
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY groups (id, groupname) FROM stdin;
\.


--
-- Data for Name: hibernate_unique_key; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY hibernate_unique_key (next_hi) FROM stdin;
16
\.


--
-- Data for Name: imagedetails; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY imagedetails (attachmentid, height, width, mimetype) FROM stdin;
\.


--
-- Data for Name: indexqueueentries; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY indexqueueentries (entryid, creationdate, type, handle) FROM stdin;
\.


--
-- Data for Name: journalentry; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY journalentry (entry_id, journal_name, creationdate, type, message) FROM stdin;
1	main_index	2017-07-19 14:48:47.136	REINDEX_USERS_IN_GROUP	confluence-administrators
2	main_index	2017-07-19 14:48:47.14	REINDEX_USERS_IN_GROUP	confluence-users
3	main_index	2017-07-19 14:48:47.544	UPDATE_DOCUMENT	com.atlassian.confluence.user.PersonalInformation-360449
4	main_index	2017-07-19 14:48:47.587	UPDATE_DOCUMENT	com.atlassian.confluence.user.PersonalInformation-360449
\.


--
-- Data for Name: keystore; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY keystore (keyid, alias, type, algorithm, keyspec) FROM stdin;
32769	confluence:11842504	public	RSA	MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjBsSyxK7VZj/b5LKxDUGJCeBRqET+YOpdRsvGnPMYu8pAsqHZiKapd8PLzoy70n1lQfW2Qu4Mu3fUybMAB5VIWGbpKMuiAvaw7WxGws114j6YstkJ9H51cNcjblRjBBWPf09ESaqRWZDbNhBs/wAqQXj58arN46of+/RUEfQsENboOlWGUH2utb5WBXpHZ3bL+yozZjsbS9hdgEYUwGnVTIkT25SA4yBM5Y9KLtEmkCxzRvfdEAyu8DSVNcByS/vtLetExTesHA5FHbj47EI9Vnu6Y/CKYVtg62X3fSJggHq4aQWtoe0xZsaCmZw/98JztAuEEguxq9jgWH7vYlL4wIDAQAB
32770	confluence:11842504	private	RSA	MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCMGxLLErtVmP9vksrENQYkJ4FGoRP5g6l1Gy8ac8xi7ykCyodmIpql3w8vOjLvSfWVB9bZC7gy7d9TJswAHlUhYZukoy6IC9rDtbEbCzXXiPpiy2Qn0fnVw1yNuVGMEFY9/T0RJqpFZkNs2EGz/ACpBePnxqs3jqh/79FQR9CwQ1ug6VYZQfa61vlYFekdndsv7KjNmOxtL2F2ARhTAadVMiRPblIDjIEzlj0ou0SaQLHNG990QDK7wNJU1wHJL++0t60TFN6wcDkUduPjsQj1We7pj8IphW2DrZfd9ImCAerhpBa2h7TFmxoKZnD/3wnO0C4QSC7Gr2OBYfu9iUvjAgMBAAECggEAANxHtMSULvXmF7bUlPjoZT9y3U6u8zjaSRRWKTjt1+u1GkXJKBjtTzh7/OPEHVEcd4JZUPLv+iwY04do+FU3W6GgVZYE+qPr/4i1oj9i4MSAGSw7nLz+5k+xWVN6izwsc2wDPIA6yntSza/UU3koPeGB4VIIiipPoZ2E8RPH1dVJvk4K3V2MCytxCRUiRHBz7JZIuiIuu3YMjH5UGq1WDb7hNfP8eqsrwomIOPmU5L+eW55eoTSVdGF0R/W2y/5WTVtf686vA023H2wqcsVN9xZbztD+Dl5m/ZcvQ3HrO0HBHZSjQu63TOYXnouIeNN8T6xtrcTTVmHsdgKnHAjdTQKBgQDE0VERgByGLAE0RebbUerU5msFmdwXS2z/DcjDuNcrfc7lsP+hId6hK9jX/WtwEvGBjiSZbYRggHV2x/HHqA5qHCwoPV/ExMdH15+uozqSeWCndYkaccfMi5HxdOE4cuX9s4NwzgLHsHSvG+KPlHb9eZa+bao5tM8p3YPrIR1FlwKBgQC2PCxamYU4IcQmDKt+AfB84WJFwkPBUt9RNRkaZwD+z3rOJhkwTlgOpUnKnFSvHHMOYsGwg0I9GzusD+tsj7bMtQ26JSTWgpIXoSYoQPAcjjZndg+j/Wlx6Gn5VEnnDJLxvMEG2368WouIvM7rr3zzG9Rm7GSlwJ3cL7h2kuXtlQKBgFFN6sBg/OeMTB8M9VYKnAjA+tsAeUQCO4+NYS9BL1nfCdYm7SLiO/a2h0iKfpR4rt2HG6Vp8XJv/pZH+KAy02mQI8mnuOUvKOeLsoJRGcQicgQbcLzE3fWofmyRjOxlwo6wVo8F+24Efd9MlKYdfZ4uWVBnOxfFkoLH6FP8hPwXAoGAV9iZ6PKobW6Zh14ELTHyI8DiBo6m6sJwNE1MVJXivPJ3WHi1G7woZqb281x41hD4xa6Ff/lGLP67vS3PZv3AON3uSBUvtNgsZIeiRTVIiftj7mvTDlJSSj6nFzGyjlZZX36F7jBQ36smKDwb4zEtImP/971spxo6/rFiUoZtoCECgYAF/5Ga0MyELQUCz8CnqBToMYSJsWU2YE5Xwm+O+08Q7zqtmztItkrg34IbKo+/++AWckrdrv84t+NY3sVGdeAXSogQvdDUW9QU/A+GgIyi0f1xiy+4T/e8sglMvDU0+PcvDRyrVOSFKNQBnB0bbaA3fq1jVq1/1R+2nR+iKZjHvg==
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY label (labelid, name, owner, namespace, creationdate, lastmoddate) FROM stdin;
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY likes (id, contentid, username, creationdate) FROM stdin;
\.


--
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY links (linkid, destpagetitle, lowerdestpagetitle, destspacekey, lowerdestspacekey, contentid, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
\.


--
-- Data for Name: local_members; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY local_members (userid, groupid) FROM stdin;
\.


--
-- Data for Name: logininfo; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY logininfo (id, curfailed, totalfailed, successdate, prevsuccessdate, faileddate, username) FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY notifications (notificationid, contentid, labelid, spaceid, username, creator, creationdate, lastmodifier, lastmoddate, digest, network, contenttype) FROM stdin;
\.


--
-- Data for Name: os_group; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY os_group (id, groupname) FROM stdin;
\.


--
-- Data for Name: os_propertyentry; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY os_propertyentry (entity_name, entity_id, entity_key, key_type, boolean_val, double_val, string_val, text_val, long_val, int_val, date_val) FROM stdin;
USERPROPS-2c9480835d5b51cc015d5b529e050000	0	confluence.macros.dashboard.selected.tab	5	f	0	all		0	0	\N
USERPROPS-2c9480835d5b51cc015d5b529e050000	0	confluence.user.runtime.recent-changes.size	2	f	0	\N		0	40	\N
\.


--
-- Data for Name: os_user; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY os_user (id, username, passwd) FROM stdin;
\.


--
-- Data for Name: os_user_group; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY os_user_group (group_id, user_id) FROM stdin;
\.


--
-- Data for Name: pagetemplates; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY pagetemplates (templateid, hibernateversion, templatename, templatedesc, pluginkey, modulekey, refpluginkey, refmodulekey, content, spaceid, prevver, version, creator, creationdate, lastmodifier, lastmoddate, bodytypeid) FROM stdin;
\.


--
-- Data for Name: plugindata; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY plugindata (plugindataid, pluginkey, filename, lastmoddate, data) FROM stdin;
\.


--
-- Data for Name: remembermetoken; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY remembermetoken (id, username, created, token) FROM stdin;
393217	admin	1500475727625	6956a876d9a151633b6ec6e90979428842b8f3ec
\.


--
-- Data for Name: scheduler_clustered_jobs; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY scheduler_clustered_jobs (id, job_id, next_run_time, version, job_runner_key, raw_parameters, sched_type, cron_expression, cron_time_zone, interval_first_run_time, interval_millis) FROM stdin;
65537	analytics-collection	2017-07-19 23:00:00	1	com.atlassian.plugins.authentication.impl.analytics.StatisticsCollectionService	\N	C	0 0 23 * * ?	\N	\N	0
65538	assertionId-cleanup	2017-07-19 15:48:09.251	1	com.atlassian.plugins.authentication.impl.web.saml.AssertionValidationService	\N	I	\N	\N	2017-07-19 15:48:09.251	3600000
65539	CompatibilityPluginScheduler.JobId.Service Provider Session Remover	2017-07-19 22:48:59.007	1	CompatibilityPluginScheduler.JobRunnerKey.Service Provider Session Remover	\N	I	\N	\N	2017-07-19 22:48:59.007	28800000
65543	PluginUpdateCheckJob-job	2017-07-20 01:30:08.545	1	PluginUpdateCheckJob-runner	\N	I	\N	\N	2017-07-20 01:30:08.545	86400000
65544	InstanceTopologyJob-job	2017-07-20 14:29:04.569	1	InstanceTopologyJob-runner	\N	I	\N	\N	2017-07-20 14:29:04.569	86400000
65541	LocalPluginLicenseNotificationJob-job	2017-07-20 14:48:59.987	2	LocalPluginLicenseNotificationJob-runner	\N	I	\N	\N	2017-07-19 14:48:59.112	86400000
65542	PluginRequestCheckJob-job	2017-07-19 15:49:00.019	2	PluginRequestCheckJob-runner	\N	I	\N	\N	2017-07-19 14:48:59.125	3600000
65545	AuditLogCleaner	2017-07-20 00:00:45	1	AuditLogCleaner	\N	C	45 0 0 * * ?	GMT	\N	0
65546	ClearExpiredRememberMeTokensJob	2017-07-20 00:00:00	1	ClearExpiredRememberMeTokensJob	\N	C	0 0 0 20 * ?	GMT	\N	0
65547	JournalCleaner	2017-07-20 02:00:00	1	JournalCleaner	\N	C	0 0 2 * * ?	GMT	\N	0
65548	clearOldMailErrorsJob	2017-07-20 03:00:00	1	clearOldMailErrorsJob	\N	C	0 0 3 * * ?	GMT	\N	0
65549	BackupJob	2017-07-20 02:00:00	1	BackupJob	\N	C	0 0 2 * * ?	GMT	\N	0
65550	DailyReportJob	2017-07-20 00:00:00	1	DailyReportJob	\N	C	0 0 0 * * ?	GMT	\N	0
65551	ESIndexJournalVerifierJob	2017-07-19 14:51:00.603	2	ESIndexJournalVerifierJob	\N	I	\N	\N	\N	120000
65555	periodicEventPublisherJob	2017-07-20 02:15:00	1	com.atlassian.confluence.plugins.analytics-jobs-plugin:periodicEventPublisherJob	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c02000078700000000174004b636f6d2e61746c61737369616e2e636f6e666c75656e63652e7363686564756c652e54656e616e7441776172654a6f6252657363686564756c65723a69732d747a2d73656e7369746976657571007e000400000001737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787001	C	0 15 2 1/1 * ? *	GMT	\N	0
65556	batchingJobConfig	2017-07-19 15:00:00	2	com.atlassian.confluence.plugins.confluence-notifications-batch-plugin:batchingJob	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c02000078700000000174004b636f6d2e61746c61737369616e2e636f6e666c75656e63652e7363686564756c652e54656e616e7441776172654a6f6252657363686564756c65723a69732d747a2d73656e7369746976657571007e000400000001737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787001	C	0 0/10 * 1/1 * ? *	GMT	\N	0
65554	synchronyStatusCheck	2017-07-19 14:50:31.42	4	com.atlassian.confluence.plugins.synchrony-interop:synchronyStatusCheckJob	\N	I	\N	\N	\N	30000
\.


--
-- Data for Name: scheduler_run_details; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY scheduler_run_details (id, job_id, start_time, duration, outcome, message) FROM stdin;
458753	BundledUpdateCheckJob-job	2017-07-19 14:48:59.986	73	S
458754	LocalTaskQueueFlushJob	2017-07-19 14:49:00.089	16	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@f7db98e
458755	PluginRequestCheckJob-job	2017-07-19 14:49:00.019	102	S
458756	EhCacheCompactionJob	2017-07-19 14:49:00.186	37	S
458757	TaskQueueFlushJob	2017-07-19 14:49:00.225	22	S	Executed tasks for queue com.atlassian.confluence.cluster.ClusteredTaskQueue@17835546
458758	LaasPerformanceLoggingJob	2017-07-19 14:49:00.256	4	A	LaaS performance logging is turned off
458759	LocalPluginLicenseNotificationJob-job	2017-07-19 14:48:59.987	294	S
458760	ClusterSafetyJob	2017-07-19 14:49:00.269	53	S
458761	MailQueueFlushJob	2017-07-19 14:49:00.348	2	S	Executed tasks for queue com.atlassian.core.task.ErrorQueuedTaskQueue@26a794ca
458762	DeferredFileDeletionJob	2017-07-19 14:49:00.371	2	S
458763	ESIndexJournalVerifierJob	2017-07-19 14:49:00.603	28	A	Dark feature es.indexing disabled
458764	flushEdgeIndexQueue	2017-07-19 14:49:00.693	19	S
458765	synchronyStatusCheck	2017-07-19 14:49:01.42	30	S
458766	ReferralQueueFlushJob	2017-07-19 14:49:01.517	3	S	Executed tasks for queue com.atlassian.confluence.links.ReferralTaskQueue@34f76710
458767	flushEdgeIndexQueue	2017-07-19 14:49:01.526	23	S
458768	LuceneIndexFlusher	2017-07-19 14:48:59.986	2467	S	Flush done
458769	conversionLoader	2017-07-19 14:49:01.568	2098	S
458770	DefaultPluginScheduler:com.atlassian.analytics.client.upload.RemoteFilterRead:job	2017-07-19 14:49:09.133	1779	S
458771	conversionQueueMonitor	2017-07-19 14:49:15	4	S
458772	conversionQueueMonitor	2017-07-19 14:49:30.001	2	S
458773	ClusterSafetyJob	2017-07-19 14:49:30.27	20	S
458774	synchronyStatusCheck	2017-07-19 14:49:31.42	14	S
458775	flushEdgeIndexQueue	2017-07-19 14:49:31.527	4	S
458776	conversionQueueMonitor	2017-07-19 14:49:45.002	4	S
458777	DefaultPluginScheduler:com.atlassian.mywork.host.batch.CleanerScheduler:job	2017-07-19 14:49:59.002	7	S
458778	DefaultPluginScheduler:com.atlassian.support.healthcheck.scheduler.HealthCheckSchedulerImpl:job	2017-07-19 14:49:59.049	213	S
458779	contentJobQueueExecutorTrigger	2017-07-19 14:50:00.001	4	S
458780	conversionQueueMonitor	2017-07-19 14:50:00.001	4	S
458781	confluenceDavSessionInvalidatorJobTrigger	2017-07-19 14:50:00	6	S
458782	batchingJobConfig	2017-07-19 14:50:00	24	S
458783	LocalTaskQueueFlushJob	2017-07-19 14:50:00.089	1	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@f7db98e
458784	TaskQueueFlushJob	2017-07-19 14:50:00.225	2	S	Executed tasks for queue com.atlassian.confluence.cluster.ClusteredTaskQueue@17835546
458785	ClusterSafetyJob	2017-07-19 14:50:00.271	13	S
458786	MailQueueFlushJob	2017-07-19 14:50:00.348	4	S	Executed tasks for queue com.atlassian.core.task.ErrorQueuedTaskQueue@26a794ca
458787	synchronyStatusCheck	2017-07-19 14:50:01.42	13	S
458788	ReferralQueueFlushJob	2017-07-19 14:50:01.517	1	S	Executed tasks for queue com.atlassian.confluence.links.ReferralTaskQueue@34f76710
458789	flushEdgeIndexQueue	2017-07-19 14:50:01.527	3	S
458790	conversionQueueMonitor	2017-07-19 14:50:15	5	S
\.


--
-- Name: seq_journal_entry_id; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('seq_journal_entry_id', 4, true);


--
-- Data for Name: spacepermissions; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY spacepermissions (permid, spaceid, permtype, permgroupname, permusername, permalluserssubject, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
229377	\N	USECONFLUENCE	confluence-administrators	\N	\N	\N	2017-07-19 14:48:47.121	\N	2017-07-19 14:48:47.121
229378	\N	PERSONALSPACE	confluence-users	\N	\N	\N	2017-07-19 14:48:47.139	\N	2017-07-19 14:48:47.139
229379	\N	ADMINISTRATECONFLUENCE	confluence-administrators	\N	\N	\N	2017-07-19 14:48:47.14	\N	2017-07-19 14:48:47.14
229380	\N	USECONFLUENCE	confluence-users	\N	\N	\N	2017-07-19 14:48:47.14	\N	2017-07-19 14:48:47.14
229381	\N	SYSTEMADMINISTRATOR	confluence-administrators	\N	\N	\N	2017-07-19 14:48:47.141	\N	2017-07-19 14:48:47.141
229382	\N	PERSONALSPACE	confluence-administrators	\N	\N	\N	2017-07-19 14:48:47.141	\N	2017-07-19 14:48:47.141
229383	\N	CREATESPACE	confluence-users	\N	\N	\N	2017-07-19 14:48:47.142	\N	2017-07-19 14:48:47.142
229384	\N	CREATESPACE	confluence-administrators	\N	\N	\N	2017-07-19 14:48:47.143	\N	2017-07-19 14:48:47.143
\.


--
-- Data for Name: spaces; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY spaces (spaceid, spacename, spacekey, lowerspacekey, spacedescid, homepage, creator, creationdate, lastmodifier, lastmoddate, spacetype, spacestatus) FROM stdin;
\.


--
-- Data for Name: trackbacklinks; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY trackbacklinks (linkid, contenttype, viewcount, url, lowerurl, title, blogname, excerpt, contentid, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
\.


--
-- Data for Name: trustedapp; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY trustedapp (trustedappid, name, timeout, public_key_id) FROM stdin;
\.


--
-- Data for Name: trustedapprestriction; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY trustedapprestriction (trustedapprestrictionid, type, restriction, trustedappid) FROM stdin;
\.


--
-- Data for Name: user_mapping; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY user_mapping (user_key, username, lower_username) FROM stdin;
2c9480835d5b51cc015d5b529e050000	admin	admin
\.


--
-- Data for Name: user_relation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY user_relation (relationid, sourceuser, targetuser, relationname, creationdate, lastmoddate, creator, lastmodifier) FROM stdin;
\.


--
-- Data for Name: usercontent_relation; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY usercontent_relation (relationid, targetcontentid, sourceuser, targettype, relationname, creationdate, lastmoddate, creator, lastmodifier) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY users (id, name, password, email, created, fullname) FROM stdin;
\.


--
-- Name: AO_187CCC_SIDEBAR_LINK AO_187CCC_SIDEBAR_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_187CCC_SIDEBAR_LINK"
    ADD CONSTRAINT "AO_187CCC_SIDEBAR_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21D670_WHITELIST_RULES AO_21D670_WHITELIST_RULES_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_21D670_WHITELIST_RULES"
    ADD CONSTRAINT "AO_21D670_WHITELIST_RULES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOMS AO_26DB7F_ENTITIES_TO_ROOMS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_26DB7F_ENTITIES_TO_ROOMS"
    ADD CONSTRAINT "AO_26DB7F_ENTITIES_TO_ROOMS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_26DB7F_ENTITIES_TO_ROOM_CFG AO_26DB7F_ENTITIES_TO_ROOM_CFG_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_26DB7F_ENTITIES_TO_ROOM_CFG"
    ADD CONSTRAINT "AO_26DB7F_ENTITIES_TO_ROOM_CFG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK AO_38321B_CUSTOM_CONTENT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_38321B_CUSTOM_CONTENT_LINK"
    ADD CONSTRAINT "AO_38321B_CUSTOM_CONTENT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_42E351_HEALTH_CHECK_ENTITY AO_42E351_HEALTH_CHECK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_42E351_HEALTH_CHECK_ENTITY"
    ADD CONSTRAINT "AO_42E351_HEALTH_CHECK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_54C900_CONTENT_BLUEPRINT_AO AO_54C900_CONTENT_BLUEPRINT_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_CONTENT_BLUEPRINT_AO"
    ADD CONSTRAINT "AO_54C900_CONTENT_BLUEPRINT_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_54C900_C_TEMPLATE_REF AO_54C900_C_TEMPLATE_REF_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_C_TEMPLATE_REF"
    ADD CONSTRAINT "AO_54C900_C_TEMPLATE_REF_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO AO_54C900_SPACE_BLUEPRINT_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_SPACE_BLUEPRINT_AO"
    ADD CONSTRAINT "AO_54C900_SPACE_BLUEPRINT_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY AO_563AEE_ACTIVITY_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTIVITY_ENTITY_pkey" PRIMARY KEY ("ACTIVITY_ID");


--
-- Name: AO_563AEE_ACTOR_ENTITY AO_563AEE_ACTOR_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_ACTOR_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTOR_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY AO_563AEE_MEDIA_LINK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_MEDIA_LINK_ENTITY"
    ADD CONSTRAINT "AO_563AEE_MEDIA_LINK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY AO_563AEE_OBJECT_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT "AO_563AEE_OBJECT_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY AO_563AEE_TARGET_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT "AO_563AEE_TARGET_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5F3884_FEATURE_DISCOVERY AO_5F3884_FEATURE_DISCOVERY_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_5F3884_FEATURE_DISCOVERY"
    ADD CONSTRAINT "AO_5F3884_FEATURE_DISCOVERY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK AO_5FB9D7_AOHIP_CHAT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_LINK"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER AO_5FB9D7_AOHIP_CHAT_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_USER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6384AB_DISCOVERED AO_6384AB_DISCOVERED_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_6384AB_DISCOVERED"
    ADD CONSTRAINT "AO_6384AB_DISCOVERED_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_6384AB_FEATURE_METADATA_AO AO_6384AB_FEATURE_METADATA_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_6384AB_FEATURE_METADATA_AO"
    ADD CONSTRAINT "AO_6384AB_FEATURE_METADATA_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_EVENT AO_7CDE43_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_EVENT"
    ADD CONSTRAINT "AO_7CDE43_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_FILTER_PARAM AO_7CDE43_FILTER_PARAM_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_FILTER_PARAM"
    ADD CONSTRAINT "AO_7CDE43_FILTER_PARAM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_NOTIFICATION_SCHEME AO_7CDE43_NOTIFICATION_SCHEME_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_NOTIFICATION_SCHEME"
    ADD CONSTRAINT "AO_7CDE43_NOTIFICATION_SCHEME_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_NOTIFICATION AO_7CDE43_NOTIFICATION_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_NOTIFICATION"
    ADD CONSTRAINT "AO_7CDE43_NOTIFICATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_RECIPIENT AO_7CDE43_RECIPIENT_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_RECIPIENT"
    ADD CONSTRAINT "AO_7CDE43_RECIPIENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_SERVER_CONFIG AO_7CDE43_SERVER_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_SERVER_CONFIG"
    ADD CONSTRAINT "AO_7CDE43_SERVER_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_7CDE43_SERVER_PARAM AO_7CDE43_SERVER_PARAM_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_SERVER_PARAM"
    ADD CONSTRAINT "AO_7CDE43_SERVER_PARAM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS AO_88263F_HEALTH_CHECK_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_88263F_HEALTH_CHECK_STATUS"
    ADD CONSTRAINT "AO_88263F_HEALTH_CHECK_STATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_PROPERTIES AO_88263F_PROPERTIES_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_88263F_PROPERTIES"
    ADD CONSTRAINT "AO_88263F_PROPERTIES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88263F_READ_NOTIFICATIONS AO_88263F_READ_NOTIFICATIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_88263F_READ_NOTIFICATIONS"
    ADD CONSTRAINT "AO_88263F_READ_NOTIFICATIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_88BB94_BATCH_NOTIFICATION AO_88BB94_BATCH_NOTIFICATION_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_88BB94_BATCH_NOTIFICATION"
    ADD CONSTRAINT "AO_88BB94_BATCH_NOTIFICATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_92296B_AORECENTLY_VIEWED AO_92296B_AORECENTLY_VIEWED_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_92296B_AORECENTLY_VIEWED"
    ADD CONSTRAINT "AO_92296B_AORECENTLY_VIEWED_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_AONOTIFICATION AO_9412A1_AONOTIFICATION_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_AONOTIFICATION"
    ADD CONSTRAINT "AO_9412A1_AONOTIFICATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_AOREGISTRATION AO_9412A1_AOREGISTRATION_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_AOREGISTRATION"
    ADD CONSTRAINT "AO_9412A1_AOREGISTRATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_AOTASK AO_9412A1_AOTASK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_AOTASK"
    ADD CONSTRAINT "AO_9412A1_AOTASK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_AOUSER AO_9412A1_AOUSER_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_AOUSER"
    ADD CONSTRAINT "AO_9412A1_AOUSER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_9412A1_USER_APP_LINK AO_9412A1_USER_APP_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_USER_APP_LINK"
    ADD CONSTRAINT "AO_9412A1_USER_APP_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_A0B856_WEB_HOOK_LISTENER_AO"
    ADD CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_BAF3AA_AOINLINE_TASK AO_BAF3AA_AOINLINE_TASK_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_BAF3AA_AOINLINE_TASK"
    ADD CONSTRAINT "AO_BAF3AA_AOINLINE_TASK_pkey" PRIMARY KEY ("GLOBAL_ID");


--
-- Name: AO_DC98AE_AOHELP_TIP AO_DC98AE_AOHELP_TIP_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_DC98AE_AOHELP_TIP"
    ADD CONSTRAINT "AO_DC98AE_AOHELP_TIP_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_ED669C_SEEN_ASSERTIONS AO_ED669C_SEEN_ASSERTIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT "AO_ED669C_SEEN_ASSERTIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: EVENTS EVENTS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "EVENTS"
    ADD CONSTRAINT "EVENTS_pkey" PRIMARY KEY (rev, history);


--
-- Name: SECRETS SECRETS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "SECRETS"
    ADD CONSTRAINT "SECRETS_pkey" PRIMARY KEY (key);


--
-- Name: SNAPSHOTS SNAPSHOTS_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "SNAPSHOTS"
    ADD CONSTRAINT "SNAPSHOTS_pkey" PRIMARY KEY (key);


--
-- Name: attachmentdata attachmentdata_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY attachmentdata
    ADD CONSTRAINT attachmentdata_pkey PRIMARY KEY (attachmentdataid);


--
-- Name: audit_affected_object audit_affected_object_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY audit_affected_object
    ADD CONSTRAINT audit_affected_object_pkey PRIMARY KEY (id);


--
-- Name: audit_changed_value audit_changed_value_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY audit_changed_value
    ADD CONSTRAINT audit_changed_value_pkey PRIMARY KEY (id);


--
-- Name: auditrecord auditrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY auditrecord
    ADD CONSTRAINT auditrecord_pkey PRIMARY KEY (auditrecordid);


--
-- Name: bandana bandana_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY bandana
    ADD CONSTRAINT bandana_pkey PRIMARY KEY (bandanaid);


--
-- Name: bandana bandana_unique_key; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY bandana
    ADD CONSTRAINT bandana_unique_key UNIQUE (bandanacontext, bandanakey);


--
-- Name: bodycontent bodycontent_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY bodycontent
    ADD CONSTRAINT bodycontent_pkey PRIMARY KEY (bodycontentid);


--
-- Name: content_relation c2c_relation_unique; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_relation
    ADD CONSTRAINT c2c_relation_unique UNIQUE (targetcontentid, sourcecontentid, relationname);


--
-- Name: clustersafety clustersafety_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY clustersafety
    ADD CONSTRAINT clustersafety_pkey PRIMARY KEY (clustersafetyid);


--
-- Name: confancestors confancestors_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY confancestors
    ADD CONSTRAINT confancestors_pkey PRIMARY KEY (descendentid, ancestorposition);


--
-- Name: confversion confversion_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY confversion
    ADD CONSTRAINT confversion_pkey PRIMARY KEY (confversionid);


--
-- Name: content_label content_label_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_label
    ADD CONSTRAINT content_label_pkey PRIMARY KEY (id);


--
-- Name: content_perm content_perm_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm
    ADD CONSTRAINT content_perm_pkey PRIMARY KEY (id);


--
-- Name: content_perm_set content_perm_set_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm_set
    ADD CONSTRAINT content_perm_set_pkey PRIMARY KEY (id);


--
-- Name: content content_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT content_pkey PRIMARY KEY (contentid);


--
-- Name: content_relation content_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_relation
    ADD CONSTRAINT content_relation_pkey PRIMARY KEY (relationid);


--
-- Name: contentproperties contentproperties_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY contentproperties
    ADD CONSTRAINT contentproperties_pkey PRIMARY KEY (propertyid);


--
-- Name: content_perm cp_unique_group; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm
    ADD CONSTRAINT cp_unique_group UNIQUE (cps_id, cp_type, groupname);


--
-- Name: content_perm cp_unique_user; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm
    ADD CONSTRAINT cp_unique_user UNIQUE (cps_id, cp_type, username);


--
-- Name: content_perm_set cps_unique_type; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm_set
    ADD CONSTRAINT cps_unique_type UNIQUE (content_id, cont_perm_type);


--
-- Name: cwd_app_dir_group_mapping cwd_app_dir_group_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT cwd_app_dir_group_mapping_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_dir_mapping cwd_app_dir_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_app_dir_mapping
    ADD CONSTRAINT cwd_app_dir_mapping_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_dir_operation cwd_app_dir_operation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_app_dir_operation
    ADD CONSTRAINT cwd_app_dir_operation_pkey PRIMARY KEY (app_dir_mapping_id, operation_type);


--
-- Name: cwd_application_address cwd_application_address_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_application_address
    ADD CONSTRAINT cwd_application_address_pkey PRIMARY KEY (application_id, remote_address);


--
-- Name: cwd_application_attribute cwd_application_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_application_attribute
    ADD CONSTRAINT cwd_application_attribute_pkey PRIMARY KEY (application_id, attribute_name);


--
-- Name: cwd_application cwd_application_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_application
    ADD CONSTRAINT cwd_application_pkey PRIMARY KEY (id);


--
-- Name: cwd_directory_attribute cwd_directory_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_directory_attribute
    ADD CONSTRAINT cwd_directory_attribute_pkey PRIMARY KEY (directory_id, attribute_name);


--
-- Name: cwd_directory_operation cwd_directory_operation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_directory_operation
    ADD CONSTRAINT cwd_directory_operation_pkey PRIMARY KEY (directory_id, operation_type);


--
-- Name: cwd_directory cwd_directory_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_directory
    ADD CONSTRAINT cwd_directory_pkey PRIMARY KEY (id);


--
-- Name: cwd_group_attribute cwd_group_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_group_attribute
    ADD CONSTRAINT cwd_group_attribute_pkey PRIMARY KEY (id);


--
-- Name: cwd_group cwd_group_name_dir_id; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_group
    ADD CONSTRAINT cwd_group_name_dir_id UNIQUE (lower_group_name, directory_id);


--
-- Name: cwd_group cwd_group_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_group
    ADD CONSTRAINT cwd_group_pkey PRIMARY KEY (id);


--
-- Name: cwd_membership cwd_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT cwd_membership_pkey PRIMARY KEY (id);


--
-- Name: cwd_membership cwd_unique_group_membership; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT cwd_unique_group_membership UNIQUE (parent_id, child_group_id);


--
-- Name: cwd_group_attribute cwd_unique_grp_attr; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_group_attribute
    ADD CONSTRAINT cwd_unique_grp_attr UNIQUE (directory_id, group_id, attribute_name, attribute_lower_value);


--
-- Name: cwd_membership cwd_unique_user_membership; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT cwd_unique_user_membership UNIQUE (parent_id, child_user_id);


--
-- Name: cwd_user_attribute cwd_unique_usr_attr; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_user_attribute
    ADD CONSTRAINT cwd_unique_usr_attr UNIQUE (directory_id, user_id, attribute_name, attribute_lower_value);


--
-- Name: cwd_user_attribute cwd_user_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_user_attribute
    ADD CONSTRAINT cwd_user_attribute_pkey PRIMARY KEY (id);


--
-- Name: cwd_user_credential_record cwd_user_credential_record_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_user_credential_record
    ADD CONSTRAINT cwd_user_credential_record_pkey PRIMARY KEY (id);


--
-- Name: cwd_user cwd_user_name_dir_id; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT cwd_user_name_dir_id UNIQUE (lower_user_name, directory_id);


--
-- Name: cwd_user cwd_user_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT cwd_user_pkey PRIMARY KEY (id);


--
-- Name: decorator decorator_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY decorator
    ADD CONSTRAINT decorator_pkey PRIMARY KEY (decoratorid);


--
-- Name: external_entities external_entities_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY external_entities
    ADD CONSTRAINT external_entities_pkey PRIMARY KEY (id);


--
-- Name: external_members external_members_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY external_members
    ADD CONSTRAINT external_members_pkey PRIMARY KEY (groupid, extentityid);


--
-- Name: extrnlnks extrnlnks_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY extrnlnks
    ADD CONSTRAINT extrnlnks_pkey PRIMARY KEY (linkid);


--
-- Name: follow_connections follow_connections_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY follow_connections
    ADD CONSTRAINT follow_connections_pkey PRIMARY KEY (connectionid);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: imagedetails imagedetails_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY imagedetails
    ADD CONSTRAINT imagedetails_pkey PRIMARY KEY (attachmentid);


--
-- Name: indexqueueentries indexqueueentries_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY indexqueueentries
    ADD CONSTRAINT indexqueueentries_pkey PRIMARY KEY (entryid);


--
-- Name: journalentry journalentry_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY journalentry
    ADD CONSTRAINT journalentry_pkey PRIMARY KEY (entry_id);


--
-- Name: keystore keystore_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY keystore
    ADD CONSTRAINT keystore_pkey PRIMARY KEY (keyid);


--
-- Name: label label_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY label
    ADD CONSTRAINT label_pkey PRIMARY KEY (labelid);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY links
    ADD CONSTRAINT links_pkey PRIMARY KEY (linkid);


--
-- Name: local_members local_members_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY local_members
    ADD CONSTRAINT local_members_pkey PRIMARY KEY (groupid, userid);


--
-- Name: logininfo logininfo_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY logininfo
    ADD CONSTRAINT logininfo_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notificationid);


--
-- Name: os_group os_group_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY os_group
    ADD CONSTRAINT os_group_pkey PRIMARY KEY (id);


--
-- Name: os_propertyentry os_propertyentry_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY os_propertyentry
    ADD CONSTRAINT os_propertyentry_pkey PRIMARY KEY (entity_name, entity_id, entity_key);


--
-- Name: os_user_group os_user_group_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY os_user_group
    ADD CONSTRAINT os_user_group_pkey PRIMARY KEY (user_id, group_id);


--
-- Name: os_user os_user_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY os_user
    ADD CONSTRAINT os_user_pkey PRIMARY KEY (id);


--
-- Name: pagetemplates pagetemplates_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY pagetemplates
    ADD CONSTRAINT pagetemplates_pkey PRIMARY KEY (templateid);


--
-- Name: plugindata plugindata_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY plugindata
    ADD CONSTRAINT plugindata_pkey PRIMARY KEY (plugindataid);


--
-- Name: remembermetoken remembermetoken_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY remembermetoken
    ADD CONSTRAINT remembermetoken_pkey PRIMARY KEY (id);


--
-- Name: scheduler_clustered_jobs scheduler_clustered_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY scheduler_clustered_jobs
    ADD CONSTRAINT scheduler_clustered_jobs_pkey PRIMARY KEY (id);


--
-- Name: scheduler_run_details scheduler_run_details_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY scheduler_run_details
    ADD CONSTRAINT scheduler_run_details_pkey PRIMARY KEY (id);


--
-- Name: spacepermissions spacepermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spacepermissions
    ADD CONSTRAINT spacepermissions_pkey PRIMARY KEY (permid);


--
-- Name: spaces spaces_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spaces
    ADD CONSTRAINT spaces_pkey PRIMARY KEY (spaceid);


--
-- Name: trackbacklinks trackbacklinks_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trackbacklinks
    ADD CONSTRAINT trackbacklinks_pkey PRIMARY KEY (linkid);


--
-- Name: trustedapp trustedapp_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trustedapp
    ADD CONSTRAINT trustedapp_pkey PRIMARY KEY (trustedappid);


--
-- Name: trustedapprestriction trustedapprestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trustedapprestriction
    ADD CONSTRAINT trustedapprestriction_pkey PRIMARY KEY (trustedapprestrictionid);


--
-- Name: usercontent_relation u2c_relation_unique; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY usercontent_relation
    ADD CONSTRAINT u2c_relation_unique UNIQUE (targetcontentid, sourceuser, relationname);


--
-- Name: user_relation u2u_relation_unique; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY user_relation
    ADD CONSTRAINT u2u_relation_unique UNIQUE (sourceuser, targetuser, relationname);


--
-- Name: AO_9412A1_AOUSER u_ao_9412a1_aouser_username; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_AOUSER"
    ADD CONSTRAINT u_ao_9412a1_aouser_username UNIQUE ("USERNAME");


--
-- Name: AO_ED669C_SEEN_ASSERTIONS u_ao_ed669c_seen_as1055534769; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT u_ao_ed669c_seen_as1055534769 UNIQUE ("ASSERTION_ID");


--
-- Name: users uk_3g1j96g94xpk3lpxl2qbl985x; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY users
    ADD CONSTRAINT uk_3g1j96g94xpk3lpxl2qbl985x UNIQUE (name);


--
-- Name: plugindata uk_6i3f2odnxreeous9k1baxbc0a; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY plugindata
    ADD CONSTRAINT uk_6i3f2odnxreeous9k1baxbc0a UNIQUE (pluginkey);


--
-- Name: groups uk_7y2xug6xwfc0qe9tg9oer6gjc; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT uk_7y2xug6xwfc0qe9tg9oer6gjc UNIQUE (groupname);


--
-- Name: logininfo uk_cxh64nyrevdya903riaky8hs0; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY logininfo
    ADD CONSTRAINT uk_cxh64nyrevdya903riaky8hs0 UNIQUE (username);


--
-- Name: plugindata uk_dg9b9idpgjdj5ljfmnld9lshn; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY plugindata
    ADD CONSTRAINT uk_dg9b9idpgjdj5ljfmnld9lshn UNIQUE (filename);


--
-- Name: os_group uk_dxfqn6n2b524nx69kq4hsgtcn; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY os_group
    ADD CONSTRAINT uk_dxfqn6n2b524nx69kq4hsgtcn UNIQUE (groupname);


--
-- Name: cwd_application uk_esg7ywl12bt4wt5h1ka27m6u3; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_application
    ADD CONSTRAINT uk_esg7ywl12bt4wt5h1ka27m6u3 UNIQUE (lower_application_name);


--
-- Name: trustedapp uk_f48dl9nadsqeudry5cyura0du; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trustedapp
    ADD CONSTRAINT uk_f48dl9nadsqeudry5cyura0du UNIQUE (name);


--
-- Name: os_user uk_fbxi8ego2k3uwg0lngdwv05j; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY os_user
    ADD CONSTRAINT uk_fbxi8ego2k3uwg0lngdwv05j UNIQUE (username);


--
-- Name: scheduler_clustered_jobs uk_h41yn0carypy2jdlo4oapqo7m; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY scheduler_clustered_jobs
    ADD CONSTRAINT uk_h41yn0carypy2jdlo4oapqo7m UNIQUE (job_id);


--
-- Name: spaces uk_jp1ad5yufsih5r7lqrygakpug; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spaces
    ADD CONSTRAINT uk_jp1ad5yufsih5r7lqrygakpug UNIQUE (spacekey);


--
-- Name: trustedapp uk_mqknjsql47jf4ue5kn4sdtbj0; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trustedapp
    ADD CONSTRAINT uk_mqknjsql47jf4ue5kn4sdtbj0 UNIQUE (public_key_id);


--
-- Name: attachmentdata uk_mxrudo8qrpxb7w28dnoo64aec; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY attachmentdata
    ADD CONSTRAINT uk_mxrudo8qrpxb7w28dnoo64aec UNIQUE (attachmentid);


--
-- Name: cwd_directory uk_ojmqo7ksu5dlpaqs0b9qf0k37; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_directory
    ADD CONSTRAINT uk_ojmqo7ksu5dlpaqs0b9qf0k37 UNIQUE (lower_directory_name);


--
-- Name: confversion uk_osprt1myxoltvtd8yodb0besm; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY confversion
    ADD CONSTRAINT uk_osprt1myxoltvtd8yodb0besm UNIQUE (buildnumber);


--
-- Name: user_mapping unq_lwr_username; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY user_mapping
    ADD CONSTRAINT unq_lwr_username UNIQUE (lower_username);


--
-- Name: user_mapping user_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY user_mapping
    ADD CONSTRAINT user_mapping_pkey PRIMARY KEY (user_key);


--
-- Name: user_relation user_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY user_relation
    ADD CONSTRAINT user_relation_pkey PRIMARY KEY (relationid);


--
-- Name: usercontent_relation usercontent_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY usercontent_relation
    ADD CONSTRAINT usercontent_relation_pkey PRIMARY KEY (relationid);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: a_author_key_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_author_key_idx ON auditrecord USING btree (authorkey);


--
-- Name: a_category_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_category_idx ON auditrecord USING btree (category);


--
-- Name: a_date_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_date_idx ON auditrecord USING btree (creationdate);


--
-- Name: a_objects_parent_index; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_objects_parent_index ON audit_affected_object USING btree (auditrecordid);


--
-- Name: a_values_parent_index; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX a_values_parent_index ON audit_changed_value USING btree (auditrecordid);


--
-- Name: attch_idver_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX attch_idver_idx ON attachmentdata USING btree (attversion, attachmentid);


--
-- Name: band_cont_key_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX band_cont_key_idx ON bandana USING btree (bandanacontext, bandanakey);


--
-- Name: band_context_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX band_context_idx ON bandana USING btree (bandanacontext);


--
-- Name: body_content_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX body_content_idx ON bodycontent USING btree (contentid);


--
-- Name: c_ancestorid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_ancestorid_idx ON confancestors USING btree (ancestorid);


--
-- Name: c_contentproperties_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_contentproperties_idx ON contentproperties USING btree (contentid);


--
-- Name: c_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_creator_idx ON content USING btree (creator);


--
-- Name: c_draftpageid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_draftpageid_idx ON content USING btree (draftpageid);


--
-- Name: c_drafttype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_drafttype_idx ON content USING btree (drafttype);


--
-- Name: c_extentityid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_extentityid_idx ON external_members USING btree (extentityid);


--
-- Name: c_groupdid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_groupdid_idx ON os_user_group USING btree (group_id);


--
-- Name: c_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_lastmodifier_idx ON content USING btree (lastmodifier);


--
-- Name: c_ltitle_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_ltitle_idx ON content USING btree (lowertitle);


--
-- Name: c_messageid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_messageid_idx ON content USING btree (messageid);


--
-- Name: c_pageid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_pageid_idx ON content USING btree (pageid);


--
-- Name: c_parentccid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_parentccid_idx ON content USING btree (parentccid);


--
-- Name: c_parentcommid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_parentcommid_idx ON content USING btree (parentcommentid);


--
-- Name: c_parentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_parentid_idx ON content USING btree (parentid);


--
-- Name: c_prevver_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_prevver_idx ON content USING btree (prevver);


--
-- Name: c_si_ct_pv_cs_cd_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_si_ct_pv_cs_cd_idx ON content USING btree (spaceid, contenttype, prevver, content_status, creationdate);


--
-- Name: c_spaceid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_spaceid_idx ON content USING btree (spaceid);


--
-- Name: c_title_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_title_idx ON content USING btree (title);


--
-- Name: c_trustedappid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_trustedappid_idx ON trustedapprestriction USING btree (trustedappid);


--
-- Name: c_userid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_userid_idx ON local_members USING btree (userid);


--
-- Name: c_username_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX c_username_idx ON content USING btree (username);


--
-- Name: cl_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_contentid_idx ON content_label USING btree (contentid);


--
-- Name: cl_labelable_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_labelable_idx ON content_label USING btree (labelableid, labelabletype);


--
-- Name: cl_labelid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_labelid_idx ON content_label USING btree (labelid);


--
-- Name: cl_lastmoddate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_lastmoddate_idx ON content_label USING btree (lastmoddate);


--
-- Name: cl_owner_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_owner_idx ON content_label USING btree (owner);


--
-- Name: cl_pagetemplateid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cl_pagetemplateid_idx ON content_label USING btree (pagetemplateid);


--
-- Name: cn_followee_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cn_followee_idx ON follow_connections USING btree (followee);


--
-- Name: cn_follower_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cn_follower_idx ON follow_connections USING btree (follower);


--
-- Name: content_prop_date_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX content_prop_date_idx ON contentproperties USING btree (dateval);


--
-- Name: content_prop_long_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX content_prop_long_idx ON contentproperties USING btree (longval);


--
-- Name: content_prop_name_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX content_prop_name_idx ON contentproperties USING btree (propertyname);


--
-- Name: content_prop_str_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX content_prop_str_idx ON contentproperties USING btree (stringval);


--
-- Name: cp_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_creator_idx ON content_perm USING btree (creator);


--
-- Name: cp_gn_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_gn_idx ON content_perm USING btree (groupname);


--
-- Name: cp_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_lastmodifier_idx ON content_perm USING btree (lastmodifier);


--
-- Name: cp_os_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_os_idx ON content_perm USING btree (cps_id);


--
-- Name: cp_un_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cp_un_idx ON content_perm USING btree (username);


--
-- Name: cps_content_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cps_content_idx ON content_perm_set USING btree (content_id);


--
-- Name: cps_permtype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX cps_permtype_idx ON content_perm_set USING btree (cont_perm_type);


--
-- Name: dec_key_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX dec_key_idx ON decorator USING btree (spacekey);


--
-- Name: dec_name_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX dec_name_idx ON decorator USING btree (decoratorname);


--
-- Name: e_h_p_s_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE UNIQUE INDEX e_h_p_s_idx ON "EVENTS" USING btree (history, partition, sequence);


--
-- Name: e_h_r_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE UNIQUE INDEX e_h_r_idx ON "EVENTS" USING btree (history, rev);


--
-- Name: el_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX el_contentid_idx ON extrnlnks USING btree (contentid);


--
-- Name: el_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX el_creator_idx ON extrnlnks USING btree (creator);


--
-- Name: el_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX el_lastmodifier_idx ON extrnlnks USING btree (lastmodifier);


--
-- Name: ext_ent_name; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX ext_ent_name ON external_entities USING btree (name);


--
-- Name: idx_app_active; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_active ON cwd_application USING btree (active);


--
-- Name: idx_app_dir_app; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_app ON cwd_app_dir_mapping USING btree (application_id);


--
-- Name: idx_app_dir_dir; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_dir ON cwd_app_dir_mapping USING btree (directory_id);


--
-- Name: idx_app_dir_group_app; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_group_app ON cwd_app_dir_group_mapping USING btree (application_id);


--
-- Name: idx_app_dir_group_group_dir; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_group_group_dir ON cwd_app_dir_group_mapping USING btree (directory_id, group_name);


--
-- Name: idx_app_dir_group_mapping; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_dir_group_mapping ON cwd_app_dir_group_mapping USING btree (app_dir_mapping_id);


--
-- Name: idx_app_type; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_app_type ON cwd_application USING btree (application_type);


--
-- Name: idx_dir_active; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_dir_active ON cwd_directory USING btree (active);


--
-- Name: idx_dir_l_impl_class; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_dir_l_impl_class ON cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_dir_type; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_dir_type ON cwd_directory USING btree (directory_type);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_group_active ON cwd_group USING btree (active, directory_id);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_group_attr_dir_name_lval ON cwd_group_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


--
-- Name: idx_group_attr_group_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_group_attr_group_id ON cwd_group_attribute USING btree (group_id);


--
-- Name: idx_group_dir_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_group_dir_id ON cwd_group USING btree (directory_id);


--
-- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_mem_dir_child ON cwd_membership USING btree (child_group_id, child_user_id);


--
-- Name: idx_mem_dir_child_user; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_mem_dir_child_user ON cwd_membership USING btree (child_user_id);


--
-- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_mem_dir_parent ON cwd_membership USING btree (parent_id);


--
-- Name: idx_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_mem_dir_parent_child ON cwd_membership USING btree (parent_id, child_group_id, child_user_id);


--
-- Name: idx_user_active; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_active ON cwd_user USING btree (active, directory_id);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_attr_dir_name_lval ON cwd_user_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


--
-- Name: idx_user_attr_user_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_attr_user_id ON cwd_user_attribute USING btree (user_id);


--
-- Name: idx_user_cred_record_user_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_cred_record_user_id ON cwd_user_credential_record USING btree (user_id);


--
-- Name: idx_user_external_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_external_id ON cwd_user USING btree (external_id);


--
-- Name: idx_user_lower_display_name; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_lower_display_name ON cwd_user USING btree (lower_display_name, directory_id);


--
-- Name: idx_user_lower_email_address; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_lower_email_address ON cwd_user USING btree (lower_email_address, directory_id);


--
-- Name: idx_user_lower_first_name; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_lower_first_name ON cwd_user USING btree (lower_first_name, directory_id);


--
-- Name: idx_user_lower_last_name; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_lower_last_name ON cwd_user USING btree (lower_last_name, directory_id);


--
-- Name: idx_user_name_dir_id; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX idx_user_name_dir_id ON cwd_user USING btree (directory_id);


--
-- Name: index_ao_26db7f_ent1247500752; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_26db7f_ent1247500752 ON "AO_26DB7F_ENTITIES_TO_ROOM_CFG" USING btree ("ROOM_ID");


--
-- Name: index_ao_26db7f_ent1609287474; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_26db7f_ent1609287474 ON "AO_26DB7F_ENTITIES_TO_ROOM_CFG" USING btree ("ENTITY_KEY");


--
-- Name: index_ao_26db7f_ent831223480; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_26db7f_ent831223480 ON "AO_26DB7F_ENTITIES_TO_ROOMS" USING btree ("ROOM_ID");


--
-- Name: index_ao_26db7f_ent940053222; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_26db7f_ent940053222 ON "AO_26DB7F_ENTITIES_TO_ROOMS" USING btree ("ENTITY_KEY");


--
-- Name: index_ao_38321b_cus1828044926; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_38321b_cus1828044926 ON "AO_38321B_CUSTOM_CONTENT_LINK" USING btree ("CONTENT_KEY");


--
-- Name: index_ao_54c900_c_t667820477; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_54c900_c_t667820477 ON "AO_54C900_C_TEMPLATE_REF" USING btree ("CB_INDEX_PARENTID");


--
-- Name: index_ao_54c900_c_t757546442; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_54c900_c_t757546442 ON "AO_54C900_C_TEMPLATE_REF" USING btree ("CB_PARENTID");


--
-- Name: index_ao_54c900_c_t852152353; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_54c900_c_t852152353 ON "AO_54C900_C_TEMPLATE_REF" USING btree ("PARENT_ID");


--
-- Name: index_ao_54c900_spa357134289; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_54c900_spa357134289 ON "AO_54C900_SPACE_BLUEPRINT_AO" USING btree ("HOME_PAGE_ID");


--
-- Name: index_ao_563aee_act1642652291; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_act1642652291 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("OBJECT_ID");


--
-- Name: index_ao_563aee_act1978295567; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_act1978295567 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("TARGET_ID");


--
-- Name: index_ao_563aee_act972488439; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_act972488439 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("ICON_ID");


--
-- Name: index_ao_563aee_act995325379; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_act995325379 ON "AO_563AEE_ACTIVITY_ENTITY" USING btree ("ACTOR_ID");


--
-- Name: index_ao_563aee_obj696886343; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_obj696886343 ON "AO_563AEE_OBJECT_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_563aee_tar521440921; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_563aee_tar521440921 ON "AO_563AEE_TARGET_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_5fb9d7_aoh1981563178; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_5fb9d7_aoh1981563178 ON "AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("USER_KEY");


--
-- Name: index_ao_5fb9d7_aoh49772492; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_5fb9d7_aoh49772492 ON "AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("HIP_CHAT_LINK_ID");


--
-- Name: index_ao_7cde43_eve1433596955; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_eve1433596955 ON "AO_7CDE43_EVENT" USING btree ("NOTIFICATION_ID");


--
-- Name: index_ao_7cde43_fil1140550715; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_fil1140550715 ON "AO_7CDE43_FILTER_PARAM" USING btree ("NOTIFICATION_ID");


--
-- Name: index_ao_7cde43_not7362182; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_not7362182 ON "AO_7CDE43_NOTIFICATION" USING btree ("NOTIFICATION_SCHEME_ID");


--
-- Name: index_ao_7cde43_rec1271577318; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_rec1271577318 ON "AO_7CDE43_RECIPIENT" USING btree ("NOTIFICATION_ID");


--
-- Name: index_ao_7cde43_ser828034299; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_7cde43_ser828034299 ON "AO_7CDE43_SERVER_PARAM" USING btree ("SERVER_CONFIG_ID");


--
-- Name: index_ao_92296b_aor1216492770; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor1216492770 ON "AO_92296B_AORECENTLY_VIEWED" USING btree ("CONTENT_ID");


--
-- Name: index_ao_92296b_aor1615591099; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor1615591099 ON "AO_92296B_AORECENTLY_VIEWED" USING btree ("SPACE_KEY");


--
-- Name: index_ao_92296b_aor205355936; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor205355936 ON "AO_92296B_AORECENTLY_VIEWED" USING btree ("LAST_VIEW_DATE");


--
-- Name: index_ao_92296b_aor426054036; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor426054036 ON "AO_92296B_AORECENTLY_VIEWED" USING btree ("USER_KEY");


--
-- Name: index_ao_92296b_aor818798913; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_92296b_aor818798913 ON "AO_92296B_AORECENTLY_VIEWED" USING btree ("CONTENT_TYPE");


--
-- Name: index_ao_9412a1_aon1547032463; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aon1547032463 ON "AO_9412A1_AONOTIFICATION" USING btree ("CREATED");


--
-- Name: index_ao_9412a1_aon648423710; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aon648423710 ON "AO_9412A1_AONOTIFICATION" USING btree ("USER");


--
-- Name: index_ao_9412a1_aon849931648; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aon849931648 ON "AO_9412A1_AONOTIFICATION" USING btree ("GLOBAL_ID");


--
-- Name: index_ao_9412a1_aot1465568358; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aot1465568358 ON "AO_9412A1_AOTASK" USING btree ("GLOBAL_ID");


--
-- Name: index_ao_9412a1_aotask_user; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_aotask_user ON "AO_9412A1_AOTASK" USING btree ("USER");


--
-- Name: index_ao_9412a1_use1222319987; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_use1222319987 ON "AO_9412A1_USER_APP_LINK" USING btree ("USER_ID");


--
-- Name: index_ao_9412a1_use643533071; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_9412a1_use643533071 ON "AO_9412A1_USER_APP_LINK" USING btree ("APPLICATION_LINK_ID");


--
-- Name: index_ao_baf3aa_aoi1066945234; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1066945234 ON "AO_BAF3AA_AOINLINE_TASK" USING btree ("CONTENT_ID");


--
-- Name: index_ao_baf3aa_aoi1143751131; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1143751131 ON "AO_BAF3AA_AOINLINE_TASK" USING btree ("TASK_STATUS");


--
-- Name: index_ao_baf3aa_aoi1389674752; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1389674752 ON "AO_BAF3AA_AOINLINE_TASK" USING btree ("CREATE_DATE");


--
-- Name: index_ao_baf3aa_aoi1395974671; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1395974671 ON "AO_BAF3AA_AOINLINE_TASK" USING btree ("CREATOR_USER_KEY");


--
-- Name: index_ao_baf3aa_aoi1978441610; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi1978441610 ON "AO_BAF3AA_AOINLINE_TASK" USING btree ("DUE_DATE");


--
-- Name: index_ao_baf3aa_aoi866493194; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_baf3aa_aoi866493194 ON "AO_BAF3AA_AOINLINE_TASK" USING btree ("ASSIGNEE_USER_KEY");


--
-- Name: index_ao_dc98ae_aoh1533992358; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_dc98ae_aoh1533992358 ON "AO_DC98AE_AOHELP_TIP" USING btree ("USER_KEY");


--
-- Name: index_ao_dc98ae_aoh411805038; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_dc98ae_aoh411805038 ON "AO_DC98AE_AOHELP_TIP" USING btree ("DISMISSED_HELP_TIP");


--
-- Name: index_ao_ed669c_see20117222; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX index_ao_ed669c_see20117222 ON "AO_ED669C_SEEN_ASSERTIONS" USING btree ("EXPIRY_TIMESTAMP");


--
-- Name: j_creationdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX j_creationdate_idx ON journalentry USING btree (creationdate);


--
-- Name: j_j_name_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX j_j_name_idx ON journalentry USING btree (journal_name);


--
-- Name: job_id_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX job_id_idx ON scheduler_run_details USING btree (job_id);


--
-- Name: job_runner_key_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX job_runner_key_idx ON scheduler_clustered_jobs USING btree (job_runner_key);


--
-- Name: l_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_contentid_idx ON links USING btree (contentid);


--
-- Name: l_destpgtitle_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_destpgtitle_idx ON links USING btree (destpagetitle);


--
-- Name: l_destspacekey_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_destspacekey_idx ON links USING btree (destspacekey);


--
-- Name: l_ldestpgtitle_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_ldestpgtitle_idx ON links USING btree (lowerdestpagetitle);


--
-- Name: l_ldestspacekey_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_ldestspacekey_idx ON links USING btree (lowerdestspacekey);


--
-- Name: l_name_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_name_idx ON label USING btree (name);


--
-- Name: l_namespace_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_namespace_idx ON label USING btree (namespace);


--
-- Name: l_owner_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX l_owner_idx ON label USING btree (owner);


--
-- Name: like_cdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX like_cdate_idx ON likes USING btree (creationdate);


--
-- Name: like_cid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX like_cid_idx ON likes USING btree (contentid);


--
-- Name: like_username_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX like_username_idx ON likes USING btree (username);


--
-- Name: links_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX links_creator_idx ON links USING btree (creator);


--
-- Name: links_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX links_lastmodifier_idx ON links USING btree (lastmodifier);


--
-- Name: n_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_contentid_idx ON notifications USING btree (contentid);


--
-- Name: n_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_creator_idx ON notifications USING btree (creator);


--
-- Name: n_labelid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_labelid_idx ON notifications USING btree (labelid);


--
-- Name: n_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_lastmodifier_idx ON notifications USING btree (lastmodifier);


--
-- Name: n_spaceid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_spaceid_idx ON notifications USING btree (spaceid);


--
-- Name: n_username_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX n_username_idx ON notifications USING btree (username);


--
-- Name: next_run_time_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX next_run_time_idx ON scheduler_clustered_jobs USING btree (next_run_time);


--
-- Name: ospe_entityid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX ospe_entityid_idx ON os_propertyentry USING btree (entity_id);


--
-- Name: pt_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX pt_creator_idx ON pagetemplates USING btree (creator);


--
-- Name: pt_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX pt_lastmodifier_idx ON pagetemplates USING btree (lastmodifier);


--
-- Name: pt_prevver_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX pt_prevver_idx ON pagetemplates USING btree (prevver);


--
-- Name: pt_spaceid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX pt_spaceid_idx ON pagetemplates USING btree (spaceid);


--
-- Name: r_c2c_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_c2c_creator_idx ON content_relation USING btree (creator);


--
-- Name: r_c2c_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_c2c_lastmodifier_idx ON content_relation USING btree (lastmodifier);


--
-- Name: r_u2c_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_u2c_creator_idx ON usercontent_relation USING btree (creator);


--
-- Name: r_u2c_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_u2c_lastmodifier_idx ON usercontent_relation USING btree (lastmodifier);


--
-- Name: r_u2u_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_u2u_creator_idx ON user_relation USING btree (creator);


--
-- Name: r_u2u_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX r_u2u_lastmodifier_idx ON user_relation USING btree (lastmodifier);


--
-- Name: relation_c2c_cdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_cdate_idx ON content_relation USING btree (creationdate);


--
-- Name: relation_c2c_relationname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_relationname_idx ON content_relation USING btree (relationname);


--
-- Name: relation_c2c_sourcecontent_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_sourcecontent_idx ON content_relation USING btree (sourcecontentid);


--
-- Name: relation_c2c_sourcetype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_sourcetype_idx ON content_relation USING btree (sourcetype);


--
-- Name: relation_c2c_targetcontent_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_targetcontent_idx ON content_relation USING btree (targetcontentid);


--
-- Name: relation_c2c_targettype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_c2c_targettype_idx ON content_relation USING btree (targettype);


--
-- Name: relation_u2c_cdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_cdate_idx ON usercontent_relation USING btree (creationdate);


--
-- Name: relation_u2c_relationname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_relationname_idx ON usercontent_relation USING btree (relationname);


--
-- Name: relation_u2c_sourceuser_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_sourceuser_idx ON usercontent_relation USING btree (sourceuser);


--
-- Name: relation_u2c_targetcontent_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_targetcontent_idx ON usercontent_relation USING btree (targetcontentid);


--
-- Name: relation_u2c_targettype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2c_targettype_idx ON usercontent_relation USING btree (targettype);


--
-- Name: relation_u2u_cdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2u_cdate_idx ON user_relation USING btree (creationdate);


--
-- Name: relation_u2u_relationname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2u_relationname_idx ON user_relation USING btree (relationname);


--
-- Name: relation_u2u_sourceuser_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2u_sourceuser_idx ON user_relation USING btree (sourceuser);


--
-- Name: relation_u2u_targetuser_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX relation_u2u_targetuser_idx ON user_relation USING btree (targetuser);


--
-- Name: rmt_username_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX rmt_username_idx ON remembermetoken USING btree (username);


--
-- Name: s_creationdate_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_creationdate_idx ON spaces USING btree (creationdate);


--
-- Name: s_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_creator_idx ON spaces USING btree (creator);


--
-- Name: s_homepage_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_homepage_idx ON spaces USING btree (homepage);


--
-- Name: s_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_lastmodifier_idx ON spaces USING btree (lastmodifier);


--
-- Name: s_lspacekey_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_lspacekey_idx ON spaces USING btree (lowerspacekey);


--
-- Name: s_spacedescid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_spacedescid_idx ON spaces USING btree (spacedescid);


--
-- Name: s_spacestatus_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX s_spacestatus_idx ON spaces USING btree (spacestatus);


--
-- Name: sp_comp_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_comp_idx ON spacepermissions USING btree (permtype, permgroupname);


--
-- Name: sp_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_creator_idx ON spacepermissions USING btree (creator);


--
-- Name: sp_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_lastmodifier_idx ON spacepermissions USING btree (lastmodifier);


--
-- Name: sp_permtype_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_permtype_idx ON spacepermissions USING btree (permtype);


--
-- Name: sp_pgname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_pgname_idx ON spacepermissions USING btree (permgroupname);


--
-- Name: sp_puname_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_puname_idx ON spacepermissions USING btree (permusername);


--
-- Name: sp_spaceid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX sp_spaceid_idx ON spacepermissions USING btree (spaceid);


--
-- Name: start_time_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX start_time_idx ON scheduler_run_details USING btree (start_time);


--
-- Name: tbl_contentid_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX tbl_contentid_idx ON trackbacklinks USING btree (contentid);


--
-- Name: tbl_creator_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX tbl_creator_idx ON trackbacklinks USING btree (creator);


--
-- Name: tbl_lastmodifier_idx; Type: INDEX; Schema: public; Owner: confluence
--

CREATE INDEX tbl_lastmodifier_idx ON trackbacklinks USING btree (lastmodifier);


--
-- Name: pagetemplates fk18a1d37pvq2o9hu5x3tps97mx; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY pagetemplates
    ADD CONSTRAINT fk18a1d37pvq2o9hu5x3tps97mx FOREIGN KEY (spaceid) REFERENCES spaces(spaceid);


--
-- Name: trackbacklinks fk1to6omjl8nhevcjbvpt3ed7nt; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trackbacklinks
    ADD CONSTRAINT fk1to6omjl8nhevcjbvpt3ed7nt FOREIGN KEY (contentid) REFERENCES content(contentid);


--
-- Name: imagedetails fk2301qiciuq6sc32jaj8tysg3s; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY imagedetails
    ADD CONSTRAINT fk2301qiciuq6sc32jaj8tysg3s FOREIGN KEY (attachmentid) REFERENCES content(contentid);


--
-- Name: content_label fk28kifokt21qd9ges0q0wv0fb9; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_label
    ADD CONSTRAINT fk28kifokt21qd9ges0q0wv0fb9 FOREIGN KEY (pagetemplateid) REFERENCES pagetemplates(templateid);


--
-- Name: content_perm_set fk2buunk1hor0i3k0m3nt03hw1w; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm_set
    ADD CONSTRAINT fk2buunk1hor0i3k0m3nt03hw1w FOREIGN KEY (content_id) REFERENCES content(contentid);


--
-- Name: cwd_user_credential_record fk2rfdh2ap00b8mholdsy1b785b; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_user_credential_record
    ADD CONSTRAINT fk2rfdh2ap00b8mholdsy1b785b FOREIGN KEY (user_id) REFERENCES cwd_user(id);


--
-- Name: contentproperties fk3fly21xfk13rqh63txw2t6k2v; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY contentproperties
    ADD CONSTRAINT fk3fly21xfk13rqh63txw2t6k2v FOREIGN KEY (contentid) REFERENCES content(contentid);


--
-- Name: external_members fk47k0fudqnbnsbw0yw44ucsu2r; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY external_members
    ADD CONSTRAINT fk47k0fudqnbnsbw0yw44ucsu2r FOREIGN KEY (groupid) REFERENCES groups(id);


--
-- Name: notifications fk4tccrjamrjvmd2aogl3hklpfj; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk4tccrjamrjvmd2aogl3hklpfj FOREIGN KEY (labelid) REFERENCES label(labelid);


--
-- Name: pagetemplates fk4wgwy1dqci8rcwad4tnqbglt8; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY pagetemplates
    ADD CONSTRAINT fk4wgwy1dqci8rcwad4tnqbglt8 FOREIGN KEY (prevver) REFERENCES pagetemplates(templateid);


--
-- Name: extrnlnks fk5v5lw9x88vm27rvubsc130njy; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY extrnlnks
    ADD CONSTRAINT fk5v5lw9x88vm27rvubsc130njy FOREIGN KEY (contentid) REFERENCES content(contentid);


--
-- Name: os_user_group fk6w5bwo7289k947ee5fwec30jv; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY os_user_group
    ADD CONSTRAINT fk6w5bwo7289k947ee5fwec30jv FOREIGN KEY (user_id) REFERENCES os_user(id);


--
-- Name: spaces fk7ndewmrl3hqcpwc8eydn9mv8j; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spaces
    ADD CONSTRAINT fk7ndewmrl3hqcpwc8eydn9mv8j FOREIGN KEY (spacedescid) REFERENCES content(contentid);


--
-- Name: content_label fk91v3v5nemr532qq4gla9sj9tf; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_label
    ADD CONSTRAINT fk91v3v5nemr532qq4gla9sj9tf FOREIGN KEY (labelid) REFERENCES label(labelid);


--
-- Name: audit_affected_object fk_affected_object_record; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY audit_affected_object
    ADD CONSTRAINT fk_affected_object_record FOREIGN KEY (auditrecordid) REFERENCES auditrecord(auditrecordid);


--
-- Name: AO_54C900_C_TEMPLATE_REF fk_ao_54c900_c_template_ref_cb_index_parentid; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_C_TEMPLATE_REF"
    ADD CONSTRAINT fk_ao_54c900_c_template_ref_cb_index_parentid FOREIGN KEY ("CB_INDEX_PARENTID") REFERENCES "AO_54C900_CONTENT_BLUEPRINT_AO"("ID");


--
-- Name: AO_54C900_C_TEMPLATE_REF fk_ao_54c900_c_template_ref_cb_parentid; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_C_TEMPLATE_REF"
    ADD CONSTRAINT fk_ao_54c900_c_template_ref_cb_parentid FOREIGN KEY ("CB_PARENTID") REFERENCES "AO_54C900_CONTENT_BLUEPRINT_AO"("ID");


--
-- Name: AO_54C900_C_TEMPLATE_REF fk_ao_54c900_c_template_ref_parent_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_C_TEMPLATE_REF"
    ADD CONSTRAINT fk_ao_54c900_c_template_ref_parent_id FOREIGN KEY ("PARENT_ID") REFERENCES "AO_54C900_C_TEMPLATE_REF"("ID");


--
-- Name: AO_54C900_SPACE_BLUEPRINT_AO fk_ao_54c900_space_blueprint_ao_home_page_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_54C900_SPACE_BLUEPRINT_AO"
    ADD CONSTRAINT fk_ao_54c900_space_blueprint_ao_home_page_id FOREIGN KEY ("HOME_PAGE_ID") REFERENCES "AO_54C900_C_TEMPLATE_REF"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_actor_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_actor_id FOREIGN KEY ("ACTOR_ID") REFERENCES "AO_563AEE_ACTOR_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_icon_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_icon_id FOREIGN KEY ("ICON_ID") REFERENCES "AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_object_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_object_id FOREIGN KEY ("OBJECT_ID") REFERENCES "AO_563AEE_OBJECT_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_target_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_target_id FOREIGN KEY ("TARGET_ID") REFERENCES "AO_563AEE_TARGET_ENTITY"("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY fk_ao_563aee_object_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_object_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES "AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY fk_ao_563aee_target_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_target_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES "AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id FOREIGN KEY ("HIP_CHAT_LINK_ID") REFERENCES "AO_5FB9D7_AOHIP_CHAT_LINK"("ID");


--
-- Name: AO_7CDE43_EVENT fk_ao_7cde43_event_notification_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_EVENT"
    ADD CONSTRAINT fk_ao_7cde43_event_notification_id FOREIGN KEY ("NOTIFICATION_ID") REFERENCES "AO_7CDE43_NOTIFICATION"("ID");


--
-- Name: AO_7CDE43_FILTER_PARAM fk_ao_7cde43_filter_param_notification_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_FILTER_PARAM"
    ADD CONSTRAINT fk_ao_7cde43_filter_param_notification_id FOREIGN KEY ("NOTIFICATION_ID") REFERENCES "AO_7CDE43_NOTIFICATION"("ID");


--
-- Name: AO_7CDE43_NOTIFICATION fk_ao_7cde43_notification_notification_scheme_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_NOTIFICATION"
    ADD CONSTRAINT fk_ao_7cde43_notification_notification_scheme_id FOREIGN KEY ("NOTIFICATION_SCHEME_ID") REFERENCES "AO_7CDE43_NOTIFICATION_SCHEME"("ID");


--
-- Name: AO_7CDE43_RECIPIENT fk_ao_7cde43_recipient_notification_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_RECIPIENT"
    ADD CONSTRAINT fk_ao_7cde43_recipient_notification_id FOREIGN KEY ("NOTIFICATION_ID") REFERENCES "AO_7CDE43_NOTIFICATION"("ID");


--
-- Name: AO_7CDE43_SERVER_PARAM fk_ao_7cde43_server_param_server_config_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_7CDE43_SERVER_PARAM"
    ADD CONSTRAINT fk_ao_7cde43_server_param_server_config_id FOREIGN KEY ("SERVER_CONFIG_ID") REFERENCES "AO_7CDE43_SERVER_CONFIG"("ID");


--
-- Name: AO_9412A1_USER_APP_LINK fk_ao_9412a1_user_app_link_user_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY "AO_9412A1_USER_APP_LINK"
    ADD CONSTRAINT fk_ao_9412a1_user_app_link_user_id FOREIGN KEY ("USER_ID") REFERENCES "AO_9412A1_AOUSER"("ID");


--
-- Name: cwd_app_dir_mapping fk_app_dir_dir; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_app_dir_mapping
    ADD CONSTRAINT fk_app_dir_dir FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: cwd_app_dir_group_mapping fk_app_dir_group_app; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_app_dir_group_app FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: cwd_app_dir_group_mapping fk_app_dir_group_dir; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_app_dir_group_dir FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: cwd_app_dir_group_mapping fk_app_dir_group_mapping; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_app_dir_group_mapping FOREIGN KEY (app_dir_mapping_id) REFERENCES cwd_app_dir_mapping(id);


--
-- Name: cwd_app_dir_operation fk_app_dir_mapping; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_app_dir_operation
    ADD CONSTRAINT fk_app_dir_mapping FOREIGN KEY (app_dir_mapping_id) REFERENCES cwd_app_dir_mapping(id);


--
-- Name: cwd_application_address fk_application_address; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_application_address
    ADD CONSTRAINT fk_application_address FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: cwd_application_attribute fk_application_attribute; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_application_attribute
    ADD CONSTRAINT fk_application_attribute FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: content_relation fk_c2crelation_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_relation
    ADD CONSTRAINT fk_c2crelation_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: content_relation fk_c2crelation_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_relation
    ADD CONSTRAINT fk_c2crelation_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: audit_changed_value fk_changed_value_record; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY audit_changed_value
    ADD CONSTRAINT fk_changed_value_record FOREIGN KEY (auditrecordid) REFERENCES auditrecord(auditrecordid);


--
-- Name: cwd_membership fk_child_grp; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT fk_child_grp FOREIGN KEY (child_group_id) REFERENCES cwd_group(id);


--
-- Name: cwd_membership fk_child_user; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT fk_child_user FOREIGN KEY (child_user_id) REFERENCES cwd_user(id);


--
-- Name: content fk_content_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT fk_content_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: content_label fk_content_label_owner; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_label
    ADD CONSTRAINT fk_content_label_owner FOREIGN KEY (owner) REFERENCES user_mapping(user_key);


--
-- Name: content fk_content_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT fk_content_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: content_perm fk_content_perm_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm
    ADD CONSTRAINT fk_content_perm_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: content_perm fk_content_perm_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm
    ADD CONSTRAINT fk_content_perm_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: content_perm fk_content_perm_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm
    ADD CONSTRAINT fk_content_perm_username FOREIGN KEY (username) REFERENCES user_mapping(user_key);


--
-- Name: content fk_content_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT fk_content_username FOREIGN KEY (username) REFERENCES user_mapping(user_key);


--
-- Name: cwd_directory_attribute fk_directory_attribute; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_directory_attribute
    ADD CONSTRAINT fk_directory_attribute FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: cwd_group fk_directory_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_group
    ADD CONSTRAINT fk_directory_id FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: cwd_directory_operation fk_directory_operation; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_directory_operation
    ADD CONSTRAINT fk_directory_operation FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: extrnlnks fk_extrnlnks_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY extrnlnks
    ADD CONSTRAINT fk_extrnlnks_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: extrnlnks fk_extrnlnks_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY extrnlnks
    ADD CONSTRAINT fk_extrnlnks_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: follow_connections fk_follow_connections_followee; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY follow_connections
    ADD CONSTRAINT fk_follow_connections_followee FOREIGN KEY (followee) REFERENCES user_mapping(user_key);


--
-- Name: follow_connections fk_follow_connections_follower; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY follow_connections
    ADD CONSTRAINT fk_follow_connections_follower FOREIGN KEY (follower) REFERENCES user_mapping(user_key);


--
-- Name: cwd_group_attribute fk_group_attr_dir_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_group_attribute
    ADD CONSTRAINT fk_group_attr_dir_id FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: cwd_group_attribute fk_group_attr_id_group_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_group_attribute
    ADD CONSTRAINT fk_group_attr_id_group_id FOREIGN KEY (group_id) REFERENCES cwd_group(id);


--
-- Name: label fk_label_owner; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY label
    ADD CONSTRAINT fk_label_owner FOREIGN KEY (owner) REFERENCES user_mapping(user_key);


--
-- Name: likes fk_likes_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY likes
    ADD CONSTRAINT fk_likes_username FOREIGN KEY (username) REFERENCES user_mapping(user_key);


--
-- Name: links fk_links_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY links
    ADD CONSTRAINT fk_links_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: links fk_links_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY links
    ADD CONSTRAINT fk_links_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: logininfo fk_logininfo_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY logininfo
    ADD CONSTRAINT fk_logininfo_username FOREIGN KEY (username) REFERENCES user_mapping(user_key);


--
-- Name: notifications fk_notifications_content; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_notifications_content FOREIGN KEY (contentid) REFERENCES content(contentid);


--
-- Name: notifications fk_notifications_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_notifications_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: notifications fk_notifications_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_notifications_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: notifications fk_notifications_username; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fk_notifications_username FOREIGN KEY (username) REFERENCES user_mapping(user_key);


--
-- Name: pagetemplates fk_pagetemplates_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY pagetemplates
    ADD CONSTRAINT fk_pagetemplates_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: pagetemplates fk_pagetemplates_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY pagetemplates
    ADD CONSTRAINT fk_pagetemplates_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: cwd_membership fk_parent_grp; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_membership
    ADD CONSTRAINT fk_parent_grp FOREIGN KEY (parent_id) REFERENCES cwd_group(id);


--
-- Name: usercontent_relation fk_relation_u2cuser; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY usercontent_relation
    ADD CONSTRAINT fk_relation_u2cuser FOREIGN KEY (sourceuser) REFERENCES user_mapping(user_key);


--
-- Name: user_relation fk_relation_u2ususer; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY user_relation
    ADD CONSTRAINT fk_relation_u2ususer FOREIGN KEY (sourceuser) REFERENCES user_mapping(user_key);


--
-- Name: user_relation fk_relation_u2utuser; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY user_relation
    ADD CONSTRAINT fk_relation_u2utuser FOREIGN KEY (targetuser) REFERENCES user_mapping(user_key);


--
-- Name: spacepermissions fk_spacepermissions_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spacepermissions
    ADD CONSTRAINT fk_spacepermissions_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: spacepermissions fk_spacepermissions_lastmodifi; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spacepermissions
    ADD CONSTRAINT fk_spacepermissions_lastmodifi FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: spacepermissions fk_spacepermissions_permuserna; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spacepermissions
    ADD CONSTRAINT fk_spacepermissions_permuserna FOREIGN KEY (permusername) REFERENCES user_mapping(user_key);


--
-- Name: spaces fk_spaces_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spaces
    ADD CONSTRAINT fk_spaces_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: spaces fk_spaces_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spaces
    ADD CONSTRAINT fk_spaces_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: trackbacklinks fk_trackbacklinks_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trackbacklinks
    ADD CONSTRAINT fk_trackbacklinks_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: trackbacklinks fk_trackbacklinks_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trackbacklinks
    ADD CONSTRAINT fk_trackbacklinks_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: usercontent_relation fk_u2crelation_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY usercontent_relation
    ADD CONSTRAINT fk_u2crelation_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: usercontent_relation fk_u2crelation_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY usercontent_relation
    ADD CONSTRAINT fk_u2crelation_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: user_relation fk_u2urelation_creator; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY user_relation
    ADD CONSTRAINT fk_u2urelation_creator FOREIGN KEY (creator) REFERENCES user_mapping(user_key);


--
-- Name: user_relation fk_u2urelation_lastmodifier; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY user_relation
    ADD CONSTRAINT fk_u2urelation_lastmodifier FOREIGN KEY (lastmodifier) REFERENCES user_mapping(user_key);


--
-- Name: cwd_user_attribute fk_user_attr_dir_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_user_attribute
    ADD CONSTRAINT fk_user_attr_dir_id FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: cwd_user_attribute fk_user_attribute_id_user_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_user_attribute
    ADD CONSTRAINT fk_user_attribute_id_user_id FOREIGN KEY (user_id) REFERENCES cwd_user(id);


--
-- Name: cwd_user fk_user_dir_id; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_user
    ADD CONSTRAINT fk_user_dir_id FOREIGN KEY (directory_id) REFERENCES cwd_directory(id);


--
-- Name: external_members fkadlkfu6a03u8f8bs82lm4qlg1; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY external_members
    ADD CONSTRAINT fkadlkfu6a03u8f8bs82lm4qlg1 FOREIGN KEY (extentityid) REFERENCES external_entities(id);


--
-- Name: content fkal6o8xwypd4mdgid9b9nw1q51; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT fkal6o8xwypd4mdgid9b9nw1q51 FOREIGN KEY (parentcommentid) REFERENCES content(contentid);


--
-- Name: likes fkbdoiwi70i7o3tc7hpbu4vnlmy; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY likes
    ADD CONSTRAINT fkbdoiwi70i7o3tc7hpbu4vnlmy FOREIGN KEY (contentid) REFERENCES content(contentid);


--
-- Name: spacepermissions fkbi3x723m8fbgoko3s84f9oddl; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spacepermissions
    ADD CONSTRAINT fkbi3x723m8fbgoko3s84f9oddl FOREIGN KEY (spaceid) REFERENCES spaces(spaceid);


--
-- Name: content_perm fkde5wl1cur1se9281gc0dsawtb; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_perm
    ADD CONSTRAINT fkde5wl1cur1se9281gc0dsawtb FOREIGN KEY (cps_id) REFERENCES content_perm_set(id);


--
-- Name: content_relation fke2a00urqyxmyaj3jop48ub8qd; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_relation
    ADD CONSTRAINT fke2a00urqyxmyaj3jop48ub8qd FOREIGN KEY (sourcecontentid) REFERENCES content(contentid);


--
-- Name: content fkfiyhka48c7e776qj90klbpm9q; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT fkfiyhka48c7e776qj90klbpm9q FOREIGN KEY (parentccid) REFERENCES content(contentid);


--
-- Name: local_members fki71uomcf4f9sesibdhsmfdbgh; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY local_members
    ADD CONSTRAINT fki71uomcf4f9sesibdhsmfdbgh FOREIGN KEY (groupid) REFERENCES groups(id);


--
-- Name: content_label fki8cvahsu6d2y285vtrp4nhc3w; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_label
    ADD CONSTRAINT fki8cvahsu6d2y285vtrp4nhc3w FOREIGN KEY (contentid) REFERENCES content(contentid);


--
-- Name: content_relation fkipr00838mkln699cimd7rg17x; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content_relation
    ADD CONSTRAINT fkipr00838mkln699cimd7rg17x FOREIGN KEY (targetcontentid) REFERENCES content(contentid);


--
-- Name: spaces fkj4cu5838aqcbw57wy7ckt0t7o; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY spaces
    ADD CONSTRAINT fkj4cu5838aqcbw57wy7ckt0t7o FOREIGN KEY (homepage) REFERENCES content(contentid);


--
-- Name: attachmentdata fkjnh4yvwen0176qsvh4rpsry2j; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY attachmentdata
    ADD CONSTRAINT fkjnh4yvwen0176qsvh4rpsry2j FOREIGN KEY (attachmentid) REFERENCES content(contentid);


--
-- Name: trustedapprestriction fkjofk5643721eftow3njwr73aa; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trustedapprestriction
    ADD CONSTRAINT fkjofk5643721eftow3njwr73aa FOREIGN KEY (trustedappid) REFERENCES trustedapp(trustedappid);


--
-- Name: content fkk6kbb7suqeloj82nx7xdcd803; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT fkk6kbb7suqeloj82nx7xdcd803 FOREIGN KEY (prevver) REFERENCES content(contentid);


--
-- Name: confancestors fklmhsipswol8imeqsg906ih62x; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY confancestors
    ADD CONSTRAINT fklmhsipswol8imeqsg906ih62x FOREIGN KEY (descendentid) REFERENCES content(contentid);


--
-- Name: content fklmweu06nft59g7mw1i1myorys; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT fklmweu06nft59g7mw1i1myorys FOREIGN KEY (spaceid) REFERENCES spaces(spaceid);


--
-- Name: os_user_group fkm2o7638ojnki05i3u0n5oepop; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY os_user_group
    ADD CONSTRAINT fkm2o7638ojnki05i3u0n5oepop FOREIGN KEY (group_id) REFERENCES os_group(id);


--
-- Name: trustedapp fkm7n581y7groa49tygapkmnfiv; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY trustedapp
    ADD CONSTRAINT fkm7n581y7groa49tygapkmnfiv FOREIGN KEY (public_key_id) REFERENCES keystore(keyid);


--
-- Name: bodycontent fkmbyiayesfp1eiq6gmol3mk3yl; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY bodycontent
    ADD CONSTRAINT fkmbyiayesfp1eiq6gmol3mk3yl FOREIGN KEY (contentid) REFERENCES content(contentid);


--
-- Name: notifications fkmqe1phe52xwqc4hk4ib8p9eh6; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY notifications
    ADD CONSTRAINT fkmqe1phe52xwqc4hk4ib8p9eh6 FOREIGN KEY (spaceid) REFERENCES spaces(spaceid);


--
-- Name: links fkn8mycko8frerne7brh5nr1csr; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY links
    ADD CONSTRAINT fkn8mycko8frerne7brh5nr1csr FOREIGN KEY (contentid) REFERENCES content(contentid);


--
-- Name: content fkoxtt893weujkyh0iicoxsm37v; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT fkoxtt893weujkyh0iicoxsm37v FOREIGN KEY (parentid) REFERENCES content(contentid);


--
-- Name: usercontent_relation fkpwgl85a266iie5i0adu8bdbcv; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY usercontent_relation
    ADD CONSTRAINT fkpwgl85a266iie5i0adu8bdbcv FOREIGN KEY (targetcontentid) REFERENCES content(contentid);


--
-- Name: local_members fkrcuyoptnad1pos41gp1b1f3pi; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY local_members
    ADD CONSTRAINT fkrcuyoptnad1pos41gp1b1f3pi FOREIGN KEY (userid) REFERENCES users(id);


--
-- Name: confancestors fksqb1af9h7fvqtgy73o8jdcuue; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY confancestors
    ADD CONSTRAINT fksqb1af9h7fvqtgy73o8jdcuue FOREIGN KEY (ancestorid) REFERENCES content(contentid);


--
-- Name: cwd_app_dir_mapping fkstekj41875rgsw8otffrayhpl; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY cwd_app_dir_mapping
    ADD CONSTRAINT fkstekj41875rgsw8otffrayhpl FOREIGN KEY (application_id) REFERENCES cwd_application(id);


--
-- Name: content fkwjyn6091q3l1gl7bh143ma2a; Type: FK CONSTRAINT; Schema: public; Owner: confluence
--

ALTER TABLE ONLY content
    ADD CONSTRAINT fkwjyn6091q3l1gl7bh143ma2a FOREIGN KEY (pageid) REFERENCES content(contentid);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--
