--
-- PostgreSQL database dump
--

drop schema public cascade;
create schema public;

-- Dumped from database version 9.4.11
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
MAIN	\N	\N	-2	\N	\N	1	11	TEST	WEB_ITEM	spacebar-pages
MAIN	\N	\N	-2	\N	\N	2	21	TEST	WEB_ITEM	spacebar-blogs
ADVANCED	\N	\N	-2	\N	\N	3	10	TEST	WEB_ITEM	space-tools-reorder-pages
\.


--
-- Name: AO_187CCC_SIDEBAR_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_187CCC_SIDEBAR_LINK_ID_seq"', 3, true);


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
confluence.extra.userlister	1	2017-04-13 10:18:17.381	userlister
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2	2017-04-13 10:18:17.381	luceneSupportHealthCheck
com.atlassian.confluence.plugins.confluence-paste	3	2017-04-13 10:18:17.381	autoconvert-widget-connector
confluence.listeners.core	4	2017-04-13 10:18:17.381	relatedContentRefactoringListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5	2017-04-13 10:18:17.381	instanceTopologyReportUpgradeTask
com.atlassian.support.healthcheck.support-healthcheck-plugin	6	2017-04-13 10:18:17.381	shc-common-modules
com.atlassian.confluence.plugins.confluence-content-property-storage	7	2017-04-13 10:18:17.381	contentPropertyFinderFactory
com.atlassian.confluence.plugins.confluence-like	8	2017-04-13 10:18:17.381	like-icon-resources
com.atlassian.confluence.editor	9	2017-04-13 10:18:17.381	xmlEventReaderFactory
confluence.sections.admin	10	2017-04-13 10:18:17.381	attachmentstoragesetup
com.atlassian.confluence.plugins.recently-viewed-plugin	11	2017-04-13 10:18:17.381	recentlyViewedManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	12	2017-04-13 10:18:17.381	create-blank-page
com.atlassian.confluence.plugins.confluence-inline-comments	13	2017-04-13 10:18:17.381	new-mail-notification-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	14	2017-04-13 10:18:17.381	upm-js-libraries
com.atlassian.confluence.plugins.confluence-email-resources	15	2017-04-13 10:18:17.381	content-templates-content-created-pattern-2.0.0
confluence.sections.admin	16	2017-04-13 10:18:17.381	mailservers
com.atlassian.confluence.plugins.confluence-mobile	17	2017-04-13 10:18:17.381	view-comments-resource
com.atlassian.applinks.applinks-trustedapps-plugin	18	2017-04-13 10:18:17.381	userManager
com.atlassian.streams.confluence	19	2017-04-13 10:18:17.381	date-sma-SE
com.atlassian.applinks.applinks-plugin	20	2017-04-13 10:18:17.381	applinksRest
com.atlassian.confluence.plugins.gadgets	21	2017-04-13 10:18:17.381	permissionManager
confluence.extra.layout	22	2017-04-13 10:18:17.381	xhtml-section
com.atlassian.support.stp	23	2017-04-13 10:18:17.381	servletContextProvider
com.atlassian.oauth.serviceprovider	24	2017-04-13 10:18:17.381	tokenFactory
com.atlassian.confluence.plugins.confluence-nav-links	25	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.applinks.applinks-plugin	26	2017-04-13 10:18:17.381	applinks-whoami
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	27	2017-04-13 10:18:17.381	notificationQueueAdminLink
com.atlassian.support.stp	28	2017-04-13 10:18:17.381	stp-view
com.atlassian.plugins.base-hipchat-integration-plugin	29	2017-04-13 10:18:17.381	apiMessagePanel
confluence.macros.multimedia	30	2017-04-13 10:18:17.381	flash-autosize
com.atlassian.confluence.plugins.confluence-file-notifications	31	2017-04-13 10:18:17.381	datasourceFactory
com.atlassian.confluence.plugins.confluence-templates	32	2017-04-13 10:18:17.381	template-management-resources
com.atlassian.plugins.atlassian-nav-links-plugin	33	2017-04-13 10:18:17.381	custom-apps-admin-page-template
com.atlassian.applinks.applinks-plugin	34	2017-04-13 10:18:17.381	jira
confluence.sections.space.tools	35	2017-04-13 10:18:17.381	reorder
com.atlassian.confluence.plugins.confluence-create-content-plugin	36	2017-04-13 10:18:17.381	main
com.atlassian.confluence.plugins.confluence-rest-resources	37	2017-04-13 10:18:17.381	content-search-api
com.atlassian.auiplugin	38	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-params
confluence.extra.impresence2	39	2017-04-13 10:18:17.381	aim-xhtml
confluence.web.resources	40	2017-04-13 10:18:17.381	draft-changes-js
com.atlassian.confluence.plugins.dialog-wizard	41	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.confluence.plugins.view-source	42	2017-04-13 10:18:17.381	view-source-menu-resources
confluence.web.resources	43	2017-04-13 10:18:17.381	page-editor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	44	2017-04-13 10:18:17.381	settingsManager
com.atlassian.oauth.serviceprovider	45	2017-04-13 10:18:17.381	helpLinkResolverContextItem
com.atlassian.confluence.ext.newcode-macro-plugin	46	2017-04-13 10:18:17.381	syntaxhighlighter-brushes
confluence.search.mappers.lucene	47	2017-04-13 10:18:17.381	searchResultTypeSearchFilter
com.atlassian.confluence.keyboardshortcuts	48	2017-04-13 10:18:17.381	tinymce.table.copy.row
com.atlassian.auiplugin	49	2017-04-13 10:18:17.381	aui-experimental-reset
com.atlassian.streams.confluence	50	2017-04-13 10:18:17.381	userAccessor
com.atlassian.crowd.embedded.admin	51	2017-04-13 10:18:17.381	web-resources
com.atlassian.confluence.plugins.confluence-inline-comments	52	2017-04-13 10:18:17.381	inlineCommentsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	53	2017-04-13 10:18:17.381	follower-added-recipients-provider
confluence.extra.impresence2	54	2017-04-13 10:18:17.381	reporter-wildfire
com.atlassian.confluence.restplugin	55	2017-04-13 10:18:17.381	userManager
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	56	2017-04-13 10:18:17.381	service
com.atlassian.confluence.plugins.confluence-email-resources	57	2017-04-13 10:18:17.381	get-attachment-icon-function
com.atlassian.confluence.plugins.gadgets	58	2017-04-13 10:18:17.381	settingsManager
com.atlassian.streams.confluence	59	2017-04-13 10:18:17.381	date-bs-Latn-BA
confluence.listeners.core	60	2017-04-13 10:18:17.381	pageNotificationsListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	61	2017-04-13 10:18:17.381	header-create-quick
com.atlassian.plugins.editor	62	2017-04-13 10:18:17.381	components
com.atlassian.plugin.jslibs	63	2017-04-13 10:18:17.381	backbone.paginator-2.0.2-factory
com.atlassian.confluence.plugins.confluence-space-ia	64	2017-04-13 10:18:17.381	server-soy-resources
com.atlassian.confluence.plugins.confluence-templates	65	2017-04-13 10:18:17.381	variable-editor-content-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	66	2017-04-13 10:18:17.381	upm-purchased-addons-resources
com.atlassian.streams	67	2017-04-13 10:18:17.381	date-nl-NL
com.atlassian.mywork.mywork-common-plugin	68	2017-04-13 10:18:17.381	actionServiceSelector
com.atlassian.applinks.applinks-plugin	69	2017-04-13 10:18:17.381	fisheyeCrucible
com.atlassian.support.stp	70	2017-04-13 10:18:17.381	isDisplayableAppCondition
com.atlassian.streams	71	2017-04-13 10:18:17.381	date-bg-BG
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	72	2017-04-13 10:18:17.381	darkFeatureManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	73	2017-04-13 10:18:17.381	admin-resources
com.atlassian.querylang.confluence-cql-plugin	74	2017-04-13 10:18:17.381	content-id-sort-mapper
com.atlassian.confluence.contributors	75	2017-04-13 10:18:17.381	labelContributionExtractor
com.atlassian.querylang.confluence-cql-plugin	76	2017-04-13 10:18:17.381	start-of-year-zero-arg-function
confluence.macros.profile	77	2017-04-13 10:18:17.381	network-resources-css
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	78	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.streams.confluence	79	2017-04-13 10:18:17.381	pageWatchActionHandler
confluence.content.action.menu	80	2017-04-13 10:18:17.381	link-to-page
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	81	2017-04-13 10:18:17.381	localeResolver
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	82	2017-04-13 10:18:17.381	jwtTokenGenerator
com.atlassian.plugins.rest.atlassian-rest-module	83	2017-04-13 10:18:17.381	rest-container-servlet-filter-FORWARD
com.atlassian.confluence.plugins.share-page	84	2017-04-13 10:18:17.381	share-address-recipients-provider
com.atlassian.confluence.plugins.confluence-edge-index	85	2017-04-13 10:18:17.381	popularContentQueries
com.atlassian.confluence.plugins.confluence-monitoring-console	86	2017-04-13 10:18:17.381	monitoring-console-resources
com.atlassian.applinks.applinks-plugin	87	2017-04-13 10:18:17.381	servlet-edit-application-link
com.atlassian.applinks.applinks-plugin	88	2017-04-13 10:18:17.381	entityLinkBuilderFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	89	2017-04-13 10:18:17.381	page-edited-notification-template
com.atlassian.confluence.plugins.confluence-page-banner	90	2017-04-13 10:18:17.381	content-metadata-page-restrictions-edit
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	91	2017-04-13 10:18:17.381	rest-filter
com.atlassian.plugins.tinymce	92	2017-04-13 10:18:17.381	popup-resources
com.atlassian.mywork.mywork-confluence-provider-plugin	93	2017-04-13 10:18:17.381	notificationManager
confluence.search.mappers.lucene	94	2017-04-13 10:18:17.381	externallyDeletedUserSearchFilter
com.atlassian.confluence.plugins.confluence-create-content-plugin	95	2017-04-13 10:18:17.381	pluginEnabledListener
confluence.filters.core	96	2017-04-13 10:18:17.381	confluenceTimingFilter
com.atlassian.confluence.plugins.confluence-daily-summary-email	97	2017-04-13 10:18:17.381	secureTokenGenerator
confluence.renderer.components	98	2017-04-13 10:18:17.381	token
confluence.macros.advanced	99	2017-04-13 10:18:17.381	junit-report-resources
com.atlassian.plugins.atlassian-whitelist-core-plugin	100	2017-04-13 10:18:17.381	selfUrlMatcher
com.atlassian.confluence.plugins.gadgets	101	2017-04-13 10:18:17.381	gadgetWhiteListManager
com.atlassian.confluence.plugins.confluence-dashboard	102	2017-04-13 10:18:17.381	welcomeMessageService
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	103	2017-04-13 10:18:17.381	pluginEventManager
com.atlassian.confluence.plugins.confluence-dashboard	104	2017-04-13 10:18:17.381	dashboard-rest-filter
com.atlassian.confluence.plugins.confluence-easyuser-admin	105	2017-04-13 10:18:17.381	easyuser-rest
com.atlassian.plugins.editor	106	2017-04-13 10:18:17.381	editoractions
com.atlassian.confluence.plugins.confluence-lookandfeel	107	2017-04-13 10:18:17.381	logoInterceptor
tac.confluence.languages.es_ES	108	2017-04-13 10:18:17.381	es_ES
confluence.listeners.core	109	2017-04-13 10:18:17.381	pluginEventLogger
com.atlassian.auiplugin	110	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-unbind-text-resize
com.atlassian.confluence.ext.newcode-macro-plugin	111	2017-04-13 10:18:17.381	code-macro-editor
com.atlassian.confluence.plugins.confluence-paste	112	2017-04-13 10:18:17.381	restEndPoint-filter
com.atlassian.plugins.atlassian-nps-plugin	113	2017-04-13 10:18:17.381	licenseHandler
com.atlassian.confluence.plugins.confluence-document-conversion-library	114	2017-04-13 10:18:17.381	conversionCacheListener
com.atlassian.applinks.applinks-plugin	115	2017-04-13 10:18:17.381	applinksRest-filter
com.atlassian.confluence.plugins.confluence-knowledge-base	116	2017-04-13 10:18:17.381	knowledge-base-search
com.atlassian.auiplugin	117	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-i18n-aui
com.atlassian.applinks.applinks-basicauth-plugin	118	2017-04-13 10:18:17.381	localeResolver
com.atlassian.support.stp	119	2017-04-13 10:18:17.381	licenseHandler
com.atlassian.analytics.analytics-whitelist	120	2017-04-13 10:18:17.381	globalConfluenceAnalyticsWhitelist
com.atlassian.plugins.authentication.atlassian-authentication-plugin	121	2017-04-13 10:18:17.381	confluence-authentication-config-web-item
com.atlassian.mywork.mywork-confluence-host-plugin	122	2017-04-13 10:18:17.381	mw-mobile
com.atlassian.confluence.plugins.confluence-onboarding	123	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-edge-index	124	2017-04-13 10:18:17.381	likeCountQuery
com.atlassian.streams.streams-thirdparty-plugin	125	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	126	2017-04-13 10:18:17.381	forgot-password-notification
com.atlassian.confluence.plugins.confluence-email-resources	127	2017-04-13 10:18:17.381	content-templates-move-page-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	128	2017-04-13 10:18:17.381	space-creation-step
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	129	2017-04-13 10:18:17.381	pluginUpdateRequestStore
com.atlassian.auiplugin	130	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-jquery-jquery-tablesorter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	131	2017-04-13 10:18:17.381	blogpost-edited-notification
com.atlassian.applinks.applinks-basicauth-plugin	132	2017-04-13 10:18:17.381	i18nResolver
confluence.macros.multimedia	133	2017-04-13 10:18:17.381	windows-media
com.atlassian.auiplugin	134	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-alphanum
com.atlassian.confluence.plugins.confluence-sal-plugin	135	2017-04-13 10:18:17.381	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	136	2017-04-13 10:18:17.381	notification-template
com.atlassian.plugin.notifications.notifications-module	137	2017-04-13 10:18:17.381	notificationQueueAdminServlet
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	138	2017-04-13 10:18:17.381	dark-feature-rest
com.atlassian.confluence.plugins.recently-viewed-plugin	139	2017-04-13 10:18:17.381	recently-viewed-spaces-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	140	2017-04-13 10:18:17.381	lifecycleManager
confluence.web.resources	141	2017-04-13 10:18:17.381	help-content-resources
com.atlassian.confluence.plugins.soy	142	2017-04-13 10:18:17.381	soy-content-type-i18n-key-function
confluence.search.mappers.lucene	143	2017-04-13 10:18:17.381	inheritedLabel
com.atlassian.confluence.plugins.confluence-daily-summary-email	144	2017-04-13 10:18:17.381	rest
confluence.sections.space.tools	145	2017-04-13 10:18:17.381	stop-watching-blog
com.atlassian.mywork.mywork-confluence-host-plugin	146	2017-04-13 10:18:17.381	mwfullview
com.atlassian.confluence.plugins.quickedit	147	2017-04-13 10:18:17.381	quick-comment-hide-traditional
com.atlassian.analytics.analytics-client	148	2017-04-13 10:18:17.381	event-report
com.atlassian.auiplugin	149	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-sidebar
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	150	2017-04-13 10:18:17.381	defaultRoutesProvider
com.atlassian.confluence.editor	151	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-file-notifications	152	2017-04-13 10:18:17.381	file-content-email-css
com.atlassian.auiplugin	153	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-select-template
com.atlassian.confluence.plugins.quickreload	154	2017-04-13 10:18:17.381	commentRenderService
confluence.sections.space.tools	155	2017-04-13 10:18:17.381	colorscheme
com.atlassian.confluence.plugins.confluence-user-profile	156	2017-04-13 10:18:17.381	confluence-user-profile-resources
com.atlassian.plugins.base-hipchat-integration-plugin	157	2017-04-13 10:18:17.381	integration-steps-resources
confluence.admin.user	158	2017-04-13 10:18:17.381	browsegroupmembers
confluence.macros.advanced	159	2017-04-13 10:18:17.381	children-resource
com.atlassian.oauth.serviceprovider	160	2017-04-13 10:18:17.381	oauthFilter
com.atlassian.confluence.plugins.confluence-browser-metrics	161	2017-04-13 10:18:17.381	spa-navigation
com.atlassian.streams.core	162	2017-04-13 10:18:17.381	moduleFactory
com.atlassian.applinks.applinks-trustedapps-plugin	163	2017-04-13 10:18:17.381	applinkPluginUtil
com.atlassian.applinks.applinks-oauth-plugin	164	2017-04-13 10:18:17.381	oauth
com.atlassian.confluence.plugins.soy	165	2017-04-13 10:18:17.381	soy-sections-for-location-soy-function
com.atlassian.confluence.ext.newcode-macro-plugin	166	2017-04-13 10:18:17.381	sh-theme-eclipse
com.atlassian.confluence.plugins.confluence-create-content-plugin	167	2017-04-13 10:18:17.381	create-content-keyboard-shortcut
com.atlassian.confluence.plugins.confluence-sal-plugin	168	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.extra.widgetconnector	169	2017-04-13 10:18:17.381	velocityRenderService
com.atlassian.streams.confluence	170	2017-04-13 10:18:17.381	date-hr-HR
com.atlassian.plugins.atlassian-plugins-webresource-plugin	171	2017-04-13 10:18:17.381	loaders
confluence.renderer.components	172	2017-04-13 10:18:17.381	deleted
com.atlassian.confluence.plugins.soy	173	2017-04-13 10:18:17.381	soy-get-user-by-name-function
com.atlassian.confluence.plugins.confluence-content-property-storage	174	2017-04-13 10:18:17.381	text-field-type-query-mapper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	175	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.gadgets	176	2017-04-13 10:18:17.381	gadget-directory-resources
confluence.search.mappers.lucene	177	2017-04-13 10:18:17.381	spanNear
com.atlassian.streams	178	2017-04-13 10:18:17.381	oauthCompletionServlet
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	179	2017-04-13 10:18:17.381	formatSettingsManager
com.atlassian.confluence.plugins.confluence-lookandfeel	180	2017-04-13 10:18:17.381	sitelogoaction
com.atlassian.plugins.atlassian-nav-links-plugin	181	2017-04-13 10:18:17.381	administration-shortcuts-resources
confluence.sections.create	182	2017-04-13 10:18:17.381	add-page-with-parent-template
com.atlassian.plugins.atlassian-nav-links-plugin	183	2017-04-13 10:18:17.381	capabilities-resource
com.atlassian.confluence.plugins.confluence-sal-plugin	184	2017-04-13 10:18:17.381	licenseHandler
confluence.search.mappers.lucene	185	2017-04-13 10:18:17.381	textSearchFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	186	2017-04-13 10:18:17.381	appendToSelectionModifier
com.atlassian.auiplugin	187	2017-04-13 10:18:17.381	jquery-autocomplete-deprecated
com.atlassian.confluence.plugins.confluence-like	188	2017-04-13 10:18:17.381	like-recipients-provider
com.atlassian.confluence.plugins.confluence-email-resources	189	2017-04-13 10:18:17.381	view-comment-email-call-to-action
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	190	2017-04-13 10:18:17.381	pluginFactory
com.atlassian.integration.jira.jira-integration-plugin	191	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	192	2017-04-13 10:18:17.381	marketplace_confluence
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	193	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.confluence.plugins.confluence-quicknav	194	2017-04-13 10:18:17.381	quicksearch
com.atlassian.auiplugin	195	2017-04-13 10:18:17.381	internal-tether-0.6.5-tether
com.atlassian.oauth.serviceprovider	196	2017-04-13 10:18:17.381	authenticationController
com.atlassian.confluence.ext.newcode-macro-plugin	197	2017-04-13 10:18:17.381	syntaxhighlighter
com.atlassian.confluence.plugins.confluence-cache-management-plugin	198	2017-04-13 10:18:17.381	cacheAdmin
com.atlassian.confluence.plugins.confluence-mobile	199	2017-04-13 10:18:17.381	viewMacroMarshallerFactory
com.atlassian.plugins.atlassian-nav-links-plugin	200	2017-04-13 10:18:17.381	application-type-service
com.atlassian.auiplugin	201	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-drop-down
com.atlassian.activeobjects.activeobjects-plugin	202	2017-04-13 10:18:17.381	dispatcher-servlet
com.atlassian.confluence.plugins.confluence-avatar-plugin	203	2017-04-13 10:18:17.381	confluenceAvatarProvider
com.atlassian.streams.confluence	204	2017-04-13 10:18:17.381	date-it-IT
confluence.web.resources	205	2017-04-13 10:18:17.381	keygen
com.atlassian.mywork.mywork-confluence-host-plugin	206	2017-04-13 10:18:17.381	servlet-renderer
com.atlassian.streams.confluence	207	2017-04-13 10:18:17.381	date-pl-PL
com.atlassian.plugins.atlassian-help-tips	208	2017-04-13 10:18:17.381	compatibilityUserManager
com.atlassian.confluence.contributors	209	2017-04-13 10:18:17.381	noResult
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	210	2017-04-13 10:18:17.381	legacy-axis-endpoint
com.atlassian.auiplugin	211	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-date-picker
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	212	2017-04-13 10:18:17.381	follower-network-notification-recipients-provider
confluence.web.components	213	2017-04-13 10:18:17.381	editor-notifications
com.atlassian.confluence.plugins.confluence-daily-summary-email	214	2017-04-13 10:18:17.381	populartodayaction
com.atlassian.support.stp	215	2017-04-13 10:18:17.381	stp-rest
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	216	2017-04-13 10:18:17.381	api
com.atlassian.streams	217	2017-04-13 10:18:17.381	pluginScheduler
confluence.search.mappers.lucene	218	2017-04-13 10:18:17.381	shadowedUserSearchFilter
com.atlassian.support.stp	219	2017-04-13 10:18:17.381	logScanService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	220	2017-04-13 10:18:17.381	comment-created-notification
confluence.web.resources	221	2017-04-13 10:18:17.381	panel-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	222	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.confluence.plugins.confluence-email-resources	223	2017-04-13 10:18:17.381	content-templates-page-title-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-inline-comments	224	2017-04-13 10:18:17.381	reply-inline-comment-batch-email-action
confluence.sections.space.tools	225	2017-04-13 10:18:17.381	export
com.atlassian.support.stp	226	2017-04-13 10:18:17.381	os-support-info
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	227	2017-04-13 10:18:17.381	prettyurls-combined-filter-after-encoding
com.atlassian.confluence.plugins.confluence-email-resources	228	2017-04-13 10:18:17.381	debug-email-border-function
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	229	2017-04-13 10:18:17.381	remote-view-page-web-resource
com.atlassian.plugin.notifications.notifications-module	230	2017-04-13 10:18:17.381	userEmail
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	231	2017-04-13 10:18:17.381	comment-edited-notification-template-body
com.atlassian.confluence.plugins.confluence-inline-comments	232	2017-04-13 10:18:17.381	notification-template-resolve
com.atlassian.plugins.tinymce	233	2017-04-13 10:18:17.381	utils-resources
com.atlassian.support.stp	234	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.applinks.applinks-plugin	235	2017-04-13 10:18:17.381	applinks-configure-application-links
com.atlassian.confluence.plugins.gadgets	236	2017-04-13 10:18:17.381	gadgetSpecFactory
com.atlassian.confluence.plugins.confluence-email-resources	237	2017-04-13 10:18:17.381	notification-templates-forgot-password-2.0.0
com.atlassian.plugins.rest.atlassian-rest-module	238	2017-04-13 10:18:17.381	moduleFactory
confluence.macros.advanced	239	2017-04-13 10:18:17.381	recently-updated-concise-resources
com.atlassian.confluence.plugins.confluence-email-resources	240	2017-04-13 10:18:17.381	view-changes-email-footer-item
com.atlassian.applinks.applinks-basicauth-plugin	241	2017-04-13 10:18:17.381	basic-auth-configuration
com.atlassian.plugins.atlassian-nav-links-plugin	242	2017-04-13 10:18:17.381	navigation-capability-resource
confluence.web.resources	243	2017-04-13 10:18:17.381	page-analytics
com.atlassian.streams.confluence	244	2017-04-13 10:18:17.381	date-it-CH
com.atlassian.confluence.extra.officeconnector	245	2017-04-13 10:18:17.381	wordactions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	246	2017-04-13 10:18:17.381	confluenceLicenseDateFormatter
com.atlassian.confluence.plugins.confluence-business-blueprints	247	2017-04-13 10:18:17.381	contextProviderHelper
com.atlassian.confluence.plugins.confluence-space-blueprints	248	2017-04-13 10:18:17.381	view-space-email-item
confluence.web.resources	249	2017-04-13 10:18:17.381	url
com.atlassian.confluence.plugins.dialog-wizard	250	2017-04-13 10:18:17.381	dialog
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	251	2017-04-13 10:18:17.381	templateManager
com.atlassian.mywork.mywork-confluence-provider-plugin	252	2017-04-13 10:18:17.381	i18NBeanFactory
com.atlassian.confluence.plugins.confluence-space-blueprints	253	2017-04-13 10:18:17.381	team-space-homepage-template
com.atlassian.confluence.plugins.confluence-email-resources	254	2017-04-13 10:18:17.381	add-comment-to-content-email-footer-item
confluence.converters.core	255	2017-04-13 10:18:17.381	space-converter
com.atlassian.plugin.notifications.notifications-module	256	2017-04-13 10:18:17.381	notificationQueueManager
confluence.extra.jira	257	2017-04-13 10:18:17.381	countImagegenerator
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	258	2017-04-13 10:18:17.381	hipChatAnalyticsWhitelist
com.atlassian.confluence.keyboardshortcuts	259	2017-04-13 10:18:17.381	tinymce.link
confluence.extra.confluencerpc	260	2017-04-13 10:18:17.381	confluence-soap
confluence.user.hover.menu	261	2017-04-13 10:18:17.381	user-blog
com.atlassian.confluence.plugins.confluence-file-notifications	262	2017-04-13 10:18:17.381	mimeBodyPartRecorder
com.atlassian.oauth.serviceprovider	263	2017-04-13 10:18:17.381	compatibilityPluginScheduler
com.atlassian.confluence.plugins.confluence-email-resources	264	2017-04-13 10:18:17.381	stop-watching-page-email-footer-item
confluence.extra.attachments	265	2017-04-13 10:18:17.381	attachments.actions
com.atlassian.confluence.extra.officeconnector	266	2017-04-13 10:18:17.381	wordXMLContentExtractor
confluence.user.menu	267	2017-04-13 10:18:17.381	user-favourites
confluence.web.resources	268	2017-04-13 10:18:17.381	bigpipe-settings
confluence.aui.staging	269	2017-04-13 10:18:17.381	confluence-flags
com.atlassian.confluence.plugins.confluence-email-resources	270	2017-04-13 10:18:17.381	template-utils-source-link-1.0.0
com.atlassian.streams.confluence	271	2017-04-13 10:18:17.381	activityItemFactory
com.atlassian.applinks.applinks-basicauth-plugin	272	2017-04-13 10:18:17.381	basic-auth
com.atlassian.confluence.plugins.confluence-create-content-plugin	273	2017-04-13 10:18:17.381	pageTemplateWebItemService
com.atlassian.mywork.mywork-common-plugin	274	2017-04-13 10:18:17.381	plugin-settings-factory
com.atlassian.confluence.plugins.confluence-spaces	275	2017-04-13 10:18:17.381	perms
com.atlassian.support.stp	276	2017-04-13 10:18:17.381	stp-license-banner-data-fecru
com.atlassian.auiplugin	277	2017-04-13 10:18:17.381	dialog
com.atlassian.mywork.mywork-confluence-provider-plugin	278	2017-04-13 10:18:17.381	contentEntityManager
com.atlassian.confluence.plugins.gadgets	279	2017-04-13 10:18:17.381	gadget-search
confluence.sections.space.advanced	280	2017-04-13 10:18:17.381	startwatchingblogsonly
com.atlassian.confluence.plugins.confluence-create-content-plugin	281	2017-04-13 10:18:17.381	create-blank-space-item
com.atlassian.auiplugin	282	2017-04-13 10:18:17.381	aui-navigation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	283	2017-04-13 10:18:17.381	blogpost-edited-notification-transformer
com.atlassian.confluence.editor	284	2017-04-13 10:18:17.381	file-types-utils-resources
com.atlassian.confluence.extra.widgetconnector	285	2017-04-13 10:18:17.381	dabbledb
com.atlassian.confluence.plugins.confluence-onboarding	286	2017-04-13 10:18:17.381	onboarding-recipients-provider
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	287	2017-04-13 10:18:17.381	hipchat-presence-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	288	2017-04-13 10:18:17.381	firstBlueprintCreationListener
com.atlassian.healthcheck.atlassian-healthcheck	289	2017-04-13 10:18:17.381	healthCheckManager
confluence.extra.impresence2	290	2017-04-13 10:18:17.381	im
confluence.web.resources	291	2017-04-13 10:18:17.381	raphael
com.atlassian.plugin.notifications.notifications-module	292	2017-04-13 10:18:17.381	configManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	293	2017-04-13 10:18:17.381	discovery-javascript-data
tac.confluence.languages.ko_KR	294	2017-04-13 10:18:17.381	ko_KR
com.atlassian.streams.confluence	295	2017-04-13 10:18:17.381	predefinedSearchBuilder
com.atlassian.confluence.contributors	296	2017-04-13 10:18:17.381	contributors
com.atlassian.confluence.plugins.confluence-email-resources	297	2017-04-13 10:18:17.381	view-attachments-email-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	298	2017-04-13 10:18:17.381	notification-templates-invite-user-1.0.0
com.atlassian.mywork.mywork-confluence-provider-plugin	299	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	300	2017-04-13 10:18:17.381	code-syntax
confluence.search.mappers.lucene	301	2017-04-13 10:18:17.381	term
com.atlassian.analytics.analytics-client	302	2017-04-13 10:18:17.381	eventReportPermissionManager
com.atlassian.confluence.editor	303	2017-04-13 10:18:17.381	editor-content-styles
com.atlassian.auiplugin	304	2017-04-13 10:18:17.381	jquery
com.atlassian.crowd.embedded.admin	305	2017-04-13 10:18:17.381	supportInformationService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	306	2017-04-13 10:18:17.381	userAccessor
com.atlassian.confluence.plugins.expand-macro	307	2017-04-13 10:18:17.381	expand-migration
com.atlassian.confluence.plugins.confluence-create-content-plugin	308	2017-04-13 10:18:17.381	rest-experimental-filter
com.atlassian.plugins.editor	309	2017-04-13 10:18:17.381	atlassian-rte-resources
com.atlassian.confluence.plugins.share-page	310	2017-04-13 10:18:17.381	share-page-email-notification-template
com.atlassian.confluence.plugins.confluence-document-conversion-library	311	2017-04-13 10:18:17.381	file-conversions
confluence.sections.space.tools	312	2017-04-13 10:18:17.381	permissionedpages
com.atlassian.confluence.plugins.status-macro	313	2017-04-13 10:18:17.381	view_content_status
com.atlassian.streams	314	2017-04-13 10:18:17.381	date-nl-BE
com.atlassian.confluence.plugins.confluence-document-conversion-library	315	2017-04-13 10:18:17.381	cloudAttachmentListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	316	2017-04-13 10:18:17.381	upm-marketplace
com.atlassian.confluence.plugins.confluence-inline-comments	317	2017-04-13 10:18:17.381	inlinecomment.sidebar.navigate.next
com.atlassian.applinks.applinks-trustedapps-plugin	318	2017-04-13 10:18:17.381	confluence-inbound-trusted
confluence.sections.space.tools	319	2017-04-13 10:18:17.381	undefined
com.atlassian.streams	320	2017-04-13 10:18:17.381	datepicker
com.atlassian.confluence.plugins.gadgets	321	2017-04-13 10:18:17.381	static-resources
confluence.web.resources	322	2017-04-13 10:18:17.381	signup
com.atlassian.confluence.plugins.confluence-sal-plugin	323	2017-04-13 10:18:17.381	salWebSudoManager
com.atlassian.auiplugin	324	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-tabs
com.atlassian.confluence.plugins.soy	325	2017-04-13 10:18:17.381	soy-dark-feature-function
confluence.macros.multimedia	326	2017-04-13 10:18:17.381	mimeTypeTranslator
com.atlassian.auiplugin	327	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-create-element
com.atlassian.plugin.notifications.notifications-module	328	2017-04-13 10:18:17.381	threadLocalDelegateExecutorFactory
com.atlassian.querylang.confluence-cql-plugin	329	2017-04-13 10:18:17.381	favorite-field
com.atlassian.confluence.plugins.confluence-inline-comments	330	2017-04-13 10:18:17.381	library
com.atlassian.confluence.plugins.confluence-dashboard	331	2017-04-13 10:18:17.381	confluence-dashboard-web-panel
confluence.search.mappers.lucene	332	2017-04-13 10:18:17.381	macroUsage
com.atlassian.auiplugin	333	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-add-id
com.atlassian.confluence.plugins.confluence-like	334	2017-04-13 10:18:17.381	rest-caching-filter
com.atlassian.applinks.applinks-oauth-plugin	335	2017-04-13 10:18:17.381	configure-outgoing-2lo-reciprocal
com.atlassian.confluence.plugins.confluence-email-resources	336	2017-04-13 10:18:17.381	template-utils-1.0.0
com.atlassian.confluence.plugins.share-page	337	2017-04-13 10:18:17.381	share-page-hipchat-notification-template
com.atlassian.analytics.analytics-client	338	2017-04-13 10:18:17.381	policy-update
confluence.sections.profile	339	2017-04-13 10:18:17.381	drafts
confluence.web.resources	340	2017-04-13 10:18:17.381	setup-cluster
com.atlassian.confluence.plugins.confluence-onboarding	341	2017-04-13 10:18:17.381	contentGenerator
confluence.extra.webdav	342	2017-04-13 10:18:17.381	webdav-config-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	343	2017-04-13 10:18:17.381	userBlueprintConfigManager
com.atlassian.confluence.contributors	344	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	345	2017-04-13 10:18:17.381	accessControlAllowOriginServletFilter
com.atlassian.confluence.extra.officeconnector	346	2017-04-13 10:18:17.381	cacheCleanupJobDetail
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	347	2017-04-13 10:18:17.381	pluginRetriever
com.atlassian.confluence.plugins.confluence-jira-content	348	2017-04-13 10:18:17.381	confluence-jira-content-loader
com.atlassian.confluence.plugins.confluence-email-resources	349	2017-04-13 10:18:17.381	notification-templates-blogpost-edited-2.0.0
com.atlassian.support.healthcheck.support-healthcheck-plugin	350	2017-04-13 10:18:17.381	healthCheckUserSettingsService
com.atlassian.streams	351	2017-04-13 10:18:17.381	date-ja-JP
com.atlassian.confluence.plugins.confluence-license-rest	352	2017-04-13 10:18:17.381	permissionManager
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	353	2017-04-13 10:18:17.381	styles
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	354	2017-04-13 10:18:17.381	hipchat2-space-configuration-2
com.atlassian.streams.core	355	2017-04-13 10:18:17.381	activity-streams-provider
com.atlassian.confluence.plugins.confluence-lookandfeel	356	2017-04-13 10:18:17.381	autoLookAndFeelManager
com.atlassian.confluence.contributors	357	2017-04-13 10:18:17.381	commentContributionExtractor
com.atlassian.confluence.plugins.confluence-inline-comments	358	2017-04-13 10:18:17.381	util-resource
com.atlassian.confluence.plugins.confluence-user-rest	359	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.auiplugin	360	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-jquery-jquery-moveto
com.atlassian.confluence.plugins.confluence-content-property-storage	361	2017-04-13 10:18:17.381	spaceService
com.atlassian.confluence.ext.newcode-macro-plugin	362	2017-04-13 10:18:17.381	moduleFactory
confluence.web.resources	363	2017-04-13 10:18:17.381	setup-select-bundle
com.atlassian.streams	364	2017-04-13 10:18:17.381	date-sk-SK
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	365	2017-04-13 10:18:17.381	comment-created-notification-template
com.atlassian.oauth.serviceprovider	366	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.streams	367	2017-04-13 10:18:17.381	date-sv-SE
com.atlassian.streams.confluence	368	2017-04-13 10:18:17.381	date-hr-BA
confluence.extractors.core	369	2017-04-13 10:18:17.381	entityDateChangeExtractor
com.atlassian.confluence.plugins.confluence-knowledge-base	370	2017-04-13 10:18:17.381	templateRendererHelper
confluence.web.resources	371	2017-04-13 10:18:17.381	edit-user-group-resources
com.atlassian.confluence.plugins.confluence-labels	372	2017-04-13 10:18:17.381	view-labels-popular-system
com.atlassian.confluence.plugins.confluence-rest-resources	373	2017-04-13 10:18:17.381	rest-api-experimental
com.atlassian.confluence.plugins.confluence-edge-index	374	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.querylang.confluence-cql-plugin	375	2017-04-13 10:18:17.381	not-query-mapper
com.atlassian.confluence.plugins.confluence-mobile	376	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.confluence-request-access-plugin	377	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.applinks.applinks-cors-plugin	378	2017-04-13 10:18:17.381	corsService
com.atlassian.plugins.atlassian-nav-links-plugin	379	2017-04-13 10:18:17.381	weights
confluence.search.mappers.lucene	380	2017-04-13 10:18:17.381	modified
com.atlassian.confluence.plugins.templates-framework	381	2017-04-13 10:18:17.381	none
com.atlassian.auiplugin	382	2017-04-13 10:18:17.381	internal-message-css
com.atlassian.confluence.extra.flyingpdf	383	2017-04-13 10:18:17.381	pdfExportFontsDirectoryFontDao
com.atlassian.confluence.plugins.confluence-email-resources	384	2017-04-13 10:18:17.381	notification-templates-blogpost-trashed-2.0.0
com.atlassian.confluence.keyboardshortcuts	385	2017-04-13 10:18:17.381	confluence-keyboard-shortcuts-action
com.atlassian.confluence.plugins.confluence-monitoring-console	386	2017-04-13 10:18:17.381	stats-resource-filter
confluence.search.lucene.initialisation	387	2017-04-13 10:18:17.381	contentNameSearcherInitialisation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	388	2017-04-13 10:18:17.381	notificationManager
com.atlassian.confluence.plugins.confluence-email-resources	389	2017-04-13 10:18:17.381	notification-templates-follower-added-2.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	390	2017-04-13 10:18:17.381	upmInformationContextItem
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	391	2017-04-13 10:18:17.381	btf-config-resources
com.atlassian.mywork.mywork-common-plugin	392	2017-04-13 10:18:17.381	webSudoManager
com.atlassian.confluence.rpc.confluence-json-rpc-plugin	393	2017-04-13 10:18:17.381	json-rpc-filter
confluence.macros.advanced	394	2017-04-13 10:18:17.381	pageProvider
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	395	2017-04-13 10:18:17.381	emoticonStorageMarshaller
confluence.extra.information	396	2017-04-13 10:18:17.381	xhtml-warning
com.atlassian.confluence.plugins.confluence-space-directory	397	2017-04-13 10:18:17.381	space-directory
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	398	2017-04-13 10:18:17.381	discoveredFeatureManager
com.atlassian.auiplugin	399	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-stop-event
confluence.sections.space.advanced	400	2017-04-13 10:18:17.381	favourite
com.atlassian.mywork.mywork-confluence-host-plugin	401	2017-04-13 10:18:17.381	myworkRegistrationProvider
com.atlassian.streams.confluence	402	2017-04-13 10:18:17.381	date-uz-Latn-UZ
com.atlassian.plugins.authentication.atlassian-authentication-plugin	403	2017-04-13 10:18:17.381	authentication-config-rest-filter
com.atlassian.auiplugin	404	2017-04-13 10:18:17.381	keyboardshortcuts
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	405	2017-04-13 10:18:17.381	bundleAccessor
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	406	2017-04-13 10:18:17.381	ao
com.atlassian.mywork.mywork-confluence-host-plugin	407	2017-04-13 10:18:17.381	notification-service
com.atlassian.confluence.plugins.confluence-inline-comments	408	2017-04-13 10:18:17.381	inline-notification-reply
com.atlassian.confluence.plugins.confluence-email-resources	409	2017-04-13 10:18:17.381	stop-following-user-email-footer-item
com.atlassian.streams.confluence	410	2017-04-13 10:18:17.381	date-pt-BR
confluence.macros.advanced	411	2017-04-13 10:18:17.381	excerpt
com.atlassian.oauth.serviceprovider.sal	412	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.confluence.editor	413	2017-04-13 10:18:17.381	panel-components
com.atlassian.gadgets.embedded	414	2017-04-13 10:18:17.381	gadget-core-resources
confluence.extra.attachments	415	2017-04-13 10:18:17.381	rest-filter
com.atlassian.streams.confluence	416	2017-04-13 10:18:17.381	date-mi-NZ
com.atlassian.streams.confluence	417	2017-04-13 10:18:17.381	date-tt-RU
com.atlassian.confluence.plugins.confluence-spaces	418	2017-04-13 10:18:17.381	spacesconfiguration
com.atlassian.streams	419	2017-04-13 10:18:17.381	date-ky-KG
com.atlassian.confluence.extra.flyingpdf	420	2017-04-13 10:18:17.381	pdfExportFileNameGenerator
com.atlassian.auiplugin	421	2017-04-13 10:18:17.381	aui-alignment
com.atlassian.confluence.extra.officeconnector	422	2017-04-13 10:18:17.381	editInWordResourceFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	423	2017-04-13 10:18:17.381	pluginLicenseManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	424	2017-04-13 10:18:17.381	excerpter
com.atlassian.mywork.mywork-confluence-host-plugin	425	2017-04-13 10:18:17.381	shared-data-lookup
com.atlassian.streams.confluence	426	2017-04-13 10:18:17.381	date-mt-MT
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	427	2017-04-13 10:18:17.381	confluence-webpanel-static-resources
com.atlassian.applinks.applinks-plugin	428	2017-04-13 10:18:17.381	applinks-common
com.atlassian.confluence.plugins.confluence-request-access-plugin	429	2017-04-13 10:18:17.381	confluence-request-access-plugin-resources
com.atlassian.auiplugin	430	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-escape-html
com.atlassian.confluence.plugins.confluence-view-file-macro	431	2017-04-13 10:18:17.381	editorFilePlaceholderGeneratorServlet
com.atlassian.gadgets.directory	432	2017-04-13 10:18:17.381	gadget-directory-admin-server-templates
com.atlassian.plugins.authentication.atlassian-authentication-plugin	433	2017-04-13 10:18:17.381	external-login-servlet
com.atlassian.confluence.plugins.confluence-email-resources	434	2017-04-13 10:18:17.381	attach-inline-dialog-images
com.atlassian.plugins.atlassian-nav-links-plugin	435	2017-04-13 10:18:17.381	atlassian-ui-popup-display-controller
com.atlassian.querylang.confluence-cql-plugin	436	2017-04-13 10:18:17.381	start-of-year-one-arg-function
confluence.search.mappers.lucene	437	2017-04-13 10:18:17.381	creator
com.atlassian.confluence.plugins.confluence-content-report-plugin	438	2017-04-13 10:18:17.381	resources
com.atlassian.confluence.plugins.confluence-previews	439	2017-04-13 10:18:17.381	upload-plugin
com.atlassian.auiplugin	440	2017-04-13 10:18:17.381	icons
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	441	2017-04-13 10:18:17.381	javascriptTemplateWebResourceTransformer
com.atlassian.confluence.plugins.status-macro	442	2017-04-13 10:18:17.381	editorImagePlageholderServlet
com.atlassian.querylang.confluence-cql-plugin	443	2017-04-13 10:18:17.381	rest-cql-metadata-filter
com.atlassian.streams.confluence	444	2017-04-13 10:18:17.381	date-el-GR
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	445	2017-04-13 10:18:17.381	velocity-1.6-template-renderer
com.atlassian.confluence.plugins.confluence-inline-tasks	446	2017-04-13 10:18:17.381	recommended-email-tasks-panel
com.atlassian.confluence.plugins.confluence-space-blueprints	447	2017-04-13 10:18:17.381	documentation-space-making-a-template-template
com.atlassian.confluence.extra.officeconnector	448	2017-04-13 10:18:17.381	viewppt-legacy
com.atlassian.confluence.editor	449	2017-04-13 10:18:17.381	editor-parent-restricted
com.atlassian.confluence.plugins.watch-button	450	2017-04-13 10:18:17.381	watch
com.atlassian.confluence.plugins.confluence-content-property-storage	451	2017-04-13 10:18:17.381	spacePropertyService
com.atlassian.confluence.plugins.gadgets.spi	452	2017-04-13 10:18:17.381	permissionService
com.atlassian.auiplugin	453	2017-04-13 10:18:17.381	aui-flag
com.atlassian.applinks.applinks-trustedapps-plugin	454	2017-04-13 10:18:17.381	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	455	2017-04-13 10:18:17.381	eolHealthCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	456	2017-04-13 10:18:17.381	space-blog-recipients-provider
confluence.extra.jira	457	2017-04-13 10:18:17.381	jirachart-macro
com.atlassian.streams	458	2017-04-13 10:18:17.381	date-ur-PK
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	459	2017-04-13 10:18:17.381	soap-axis1
confluence.macros.dashboard	460	2017-04-13 10:18:17.381	recentlyUpdatedContentService
com.atlassian.streams.core	461	2017-04-13 10:18:17.381	feedSanitizer
confluence.macros.dashboard	462	2017-04-13 10:18:17.381	space-details
confluence.sections.admin.tasks	463	2017-04-13 10:18:17.381	general
com.atlassian.confluence.plugins.pagetree	464	2017-04-13 10:18:17.381	pagetreesearch-xhtml
com.atlassian.applinks.applinks-plugin	465	2017-04-13 10:18:17.381	contextFilter
confluence.macros.advanced	466	2017-04-13 10:18:17.381	recent-updated-actions
com.atlassian.integration.jira.jira-integration-plugin	467	2017-04-13 10:18:17.381	transition-form
com.atlassian.confluence.plugins.confluence-mobile	468	2017-04-13 10:18:17.381	linkMarshallingFactory
com.atlassian.confluence.plugins.profile-picture	469	2017-04-13 10:18:17.381	profile-picture
com.atlassian.plugins.atlassian-whitelist-ui-plugin	470	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.confluence-create-content-plugin	471	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.share-page	472	2017-04-13 10:18:17.381	share-attachment-notification
com.atlassian.streams	473	2017-04-13 10:18:17.381	date-kn-IN
com.atlassian.auiplugin	474	2017-04-13 10:18:17.381	toolbar
com.atlassian.confluence.plugins.confluence-easyuser-admin	475	2017-04-13 10:18:17.381	add-users-userdir-button
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	476	2017-04-13 10:18:17.381	upm_section
com.atlassian.mywork.mywork-confluence-host-plugin	477	2017-04-13 10:18:17.381	applink-helper
com.atlassian.confluence.extra.widgetconnector	478	2017-04-13 10:18:17.381	googledocs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	479	2017-04-13 10:18:17.381	confluence-upm-manage-menu
com.atlassian.confluence.plugins.confluence-knowledge-base	480	2017-04-13 10:18:17.381	kb-troubleshooting-article-blueprint
com.atlassian.querylang.confluence-cql-plugin	481	2017-04-13 10:18:17.381	favourite-field
com.atlassian.plugins.authentication.atlassian-authentication-plugin	482	2017-04-13 10:18:17.381	authentication-configuration-servlet
confluence.macros.basic	483	2017-04-13 10:18:17.381	color
com.atlassian.confluence.plugins.confluence-create-content-plugin	484	2017-04-13 10:18:17.381	featureDiscoveryService
confluence.editor.actions	485	2017-04-13 10:18:17.381	macrobrowseraction
com.atlassian.templaterenderer.api	486	2017-04-13 10:18:17.381	pluginAccessor
confluence.web.resources	487	2017-04-13 10:18:17.381	aui-messages
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	488	2017-04-13 10:18:17.381	featureMetadataManager
com.atlassian.confluence.plugins.confluence-request-access-plugin	489	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.auiplugin	490	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-expander
confluence.web.resources	491	2017-04-13 10:18:17.381	master-styles
com.atlassian.confluence.plugins.confluence-like	492	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-inline-tasks	493	2017-04-13 10:18:17.381	inlinetasksactions
com.atlassian.streams	494	2017-04-13 10:18:17.381	date-fo-FO
confluence.extra.jira	495	2017-04-13 10:18:17.381	jiraAnalytics
com.atlassian.confluence.plugins.share-page	496	2017-04-13 10:18:17.381	rest
com.atlassian.plugins.atlassian-help-tips	497	2017-04-13 10:18:17.381	helpTipManager
com.atlassian.confluence.plugins.confluence-view-file-macro	498	2017-04-13 10:18:17.381	delegateFileMarshaller
com.atlassian.confluence.editor	499	2017-04-13 10:18:17.381	xhtmlContent
com.atlassian.auiplugin	500	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-progress-indicator
confluence.user.menu	501	2017-04-13 10:18:17.381	user-profile
confluence.sections.user.view.follow	502	2017-04-13 10:18:17.381	resources
com.atlassian.confluence.plugins.confluence-inline-tasks	503	2017-04-13 10:18:17.381	team-task-report-template
com.atlassian.confluence.plugins.soy	504	2017-04-13 10:18:17.381	soy-site-title-function
com.atlassian.confluence.keyboardshortcuts	505	2017-04-13 10:18:17.381	tinymce.bullist
confluence.extra.information	506	2017-04-13 10:18:17.381	note
com.atlassian.confluence.plugins.confluence-daily-summary-email	507	2017-04-13 10:18:17.381	summaryEmailServiceTarget
com.atlassian.streams.confluence	508	2017-04-13 10:18:17.381	date-ar-YE
com.atlassian.querylang.confluence-cql-plugin	509	2017-04-13 10:18:17.381	macro-instance-field
com.atlassian.plugins.authentication.atlassian-authentication-plugin	510	2017-04-13 10:18:17.381	templates
com.atlassian.confluence.plugins.confluence-create-content-plugin	511	2017-04-13 10:18:17.381	rest-caching-filter
com.atlassian.plugins.authentication.atlassian-authentication-plugin	512	2017-04-13 10:18:17.381	saml-consumer-servlet
com.atlassian.confluence.extra.widgetconnector	513	2017-04-13 10:18:17.381	vcacheFactory
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	514	2017-04-13 10:18:17.381	hipChatLinkProvider
com.atlassian.confluence.extra.widgetconnector	515	2017-04-13 10:18:17.381	web-widget-migrator
com.atlassian.support.healthcheck.support-healthcheck-plugin	516	2017-04-13 10:18:17.381	healthCheckService
com.atlassian.confluence.plugins.confluence-email-resources	517	2017-04-13 10:18:17.381	inject-css-inline-function
confluence.web.resources	518	2017-04-13 10:18:17.381	browser
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	519	2017-04-13 10:18:17.381	follower-added-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-onboarding	520	2017-04-13 10:18:17.381	userSettingsService
com.atlassian.auiplugin	521	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-underscorejs-underscore
com.atlassian.confluence.plugins.confluence-highlight-actions	522	2017-04-13 10:18:17.381	stripTagModifier
com.atlassian.streams	523	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.confluence.plugins.confluence-space-directory	524	2017-04-13 10:18:17.381	add-space
com.atlassian.confluence.plugins.confluence-onboarding	525	2017-04-13 10:18:17.381	onboarding-flow-resources
com.atlassian.streams.confluence	526	2017-04-13 10:18:17.381	date-uk-UA
com.atlassian.confluence.plugins.confluence-inline-tasks	527	2017-04-13 10:18:17.381	view-tasks-hipchat-adg-footer-item
com.atlassian.confluence.plugins.confluence-inline-comments	528	2017-04-13 10:18:17.381	likes-view
confluence.web.resources	529	2017-04-13 10:18:17.381	navigator-context
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	530	2017-04-13 10:18:17.381	upm-marketplace-templates
confluence.extractors.core	531	2017-04-13 10:18:17.381	spaceKeyAndNameExtractor
com.atlassian.confluence.contributors	532	2017-04-13 10:18:17.381	componentLocator
com.atlassian.confluence.plugins.confluence-inline-comments	533	2017-04-13 10:18:17.381	reply-list-view
com.atlassian.mywork.mywork-common-plugin	534	2017-04-13 10:18:17.381	myworkauth
com.atlassian.confluence.plugins.confluence-sal-plugin	535	2017-04-13 10:18:17.381	searchProvider
com.atlassian.analytics.analytics-client	536	2017-04-13 10:18:17.381	confluence-whitelist-report-menu-item
com.atlassian.auiplugin	537	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-select-suggestion-model
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	538	2017-04-13 10:18:17.381	confluenceInitialiser
confluence.listeners.core	539	2017-04-13 10:18:17.381	contentNameSearchSemaphoreListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	540	2017-04-13 10:18:17.381	confluenceSettingsWebItem
com.atlassian.mywork.mywork-confluence-host-plugin	541	2017-04-13 10:18:17.381	pluginSharedDataRegistry
com.atlassian.integration.jira.jira-integration-plugin	542	2017-04-13 10:18:17.381	jiraService
confluence.macros.advanced	543	2017-04-13 10:18:17.381	recently-updated-sidebar-resources
com.atlassian.auiplugin	544	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-raf-raf
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	545	2017-04-13 10:18:17.381	confluenceContentNotificationsAnalyticsWhitelist
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	546	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.confluence.plugins.confluence-onboarding	547	2017-04-13 10:18:17.381	confluence-efi-rest-filter
com.atlassian.analytics.analytics-client	548	2017-04-13 10:18:17.381	threadLocalDelegateExecutorFactory
com.atlassian.plugins.base-hipchat-integration-plugin	549	2017-04-13 10:18:17.381	hipchat-links-support
com.atlassian.oauth.serviceprovider.sal	550	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.oauth.serviceprovider	551	2017-04-13 10:18:17.381	delegateTokenStore
confluence.extra.jira	552	2017-04-13 10:18:17.381	jim-xwork
com.atlassian.confluence.plugins.confluence-spaces	553	2017-04-13 10:18:17.381	shortcuts
com.atlassian.mywork.mywork-confluence-host-plugin	554	2017-04-13 10:18:17.381	user-manager
com.atlassian.confluence.plugins.confluence-content-property-storage	555	2017-04-13 10:18:17.381	spacePropertyValidator
com.atlassian.plugin.notifications.notifications-module	556	2017-04-13 10:18:17.381	macroResolver
com.atlassian.crowd.embedded.admin	557	2017-04-13 10:18:17.381	support-directory-configuration
com.atlassian.mywork.mywork-confluence-provider-plugin	558	2017-04-13 10:18:17.381	renderer
com.atlassian.plugins.atlassian-nav-links-plugin	559	2017-04-13 10:18:17.381	executor-service
com.atlassian.confluence.plugins.confluence-email-resources	560	2017-04-13 10:18:17.381	templates
com.atlassian.confluence.plugins.confluence-space-blueprints	561	2017-04-13 10:18:17.381	TeamSpaceHomePageEventListener
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	562	2017-04-13 10:18:17.381	keyboardShortcutsRest
com.atlassian.confluence.plugins.confluence-page-layout	563	2017-04-13 10:18:17.381	editor-pagelayout-content-styles
com.atlassian.auiplugin	564	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-mutation-observer
com.atlassian.querylang.confluence-cql-plugin	565	2017-04-13 10:18:17.381	content-field
com.atlassian.confluence.plugins.confluence-edge-index	566	2017-04-13 10:18:17.381	edgeListener
com.atlassian.support.healthcheck.support-healthcheck-plugin	567	2017-04-13 10:18:17.381	supportHealthCheckRest-filter
com.atlassian.plugins.atlassian-nav-links-plugin	568	2017-04-13 10:18:17.381	navigation-links
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	569	2017-04-13 10:18:17.381	cluster-monitoring
com.atlassian.plugins.base-hipchat-integration-plugin	570	2017-04-13 10:18:17.381	get-product-text
com.atlassian.plugins.atlassian-plugins-webresource-plugin	571	2017-04-13 10:18:17.381	atlassian-module
com.atlassian.confluence.plugins.confluence-business-blueprints	572	2017-04-13 10:18:17.381	meeting-notes-blueprint
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	573	2017-04-13 10:18:17.381	healthmonitor-resources
confluence.extractors.core	574	2017-04-13 10:18:17.381	contentAuthorExtractor
com.atlassian.streams	575	2017-04-13 10:18:17.381	date-dv-MV
com.atlassian.confluence.plugins.recently-viewed-plugin	576	2017-04-13 10:18:17.381	purgeHistoryJob
com.atlassian.streams.confluence	577	2017-04-13 10:18:17.381	date-cs-CZ
com.atlassian.applinks.applinks-cors-plugin	578	2017-04-13 10:18:17.381	xsrfTokenValidator
com.atlassian.oauth.serviceprovider	579	2017-04-13 10:18:17.381	authenticator
com.atlassian.plugins.base-hipchat-integration-plugin	580	2017-04-13 10:18:17.381	hipchat-action
com.atlassian.analytics.analytics-client	581	2017-04-13 10:18:17.381	analytics-filter
com.atlassian.auiplugin	582	2017-04-13 10:18:17.381	event
confluence.listeners.core	583	2017-04-13 10:18:17.381	app-status-plugin-framework-listener
confluence.sections.admin	584	2017-04-13 10:18:17.381	lookandfeel
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	585	2017-04-13 10:18:17.381	pluginController
com.atlassian.confluence.plugins.confluence-document-conversion-library	586	2017-04-13 10:18:17.381	conversionLoader
com.atlassian.applinks.applinks-cors-plugin	587	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.auiplugin	588	2017-04-13 10:18:17.381	aui-page-header
com.atlassian.confluence.plugins.confluence-knowledge-base	589	2017-04-13 10:18:17.381	oAuthRequestVerifierFactory
com.atlassian.confluence.editor	590	2017-04-13 10:18:17.381	tinymceaction
com.atlassian.confluence.plugins.confluence-business-blueprints	591	2017-04-13 10:18:17.381	meeting-notes-resources
com.atlassian.auiplugin	592	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-jquery-jquery-tipsy
confluence.sections.create	593	2017-04-13 10:18:17.381	add-page-with-parent
com.atlassian.confluence.keyboardshortcuts	594	2017-04-13 10:18:17.381	tinymce.go.to.preview.page
com.atlassian.confluence.plugins.confluence-email-resources	595	2017-04-13 10:18:17.381	find-user-function
com.atlassian.healthcheck.atlassian-healthcheck	596	2017-04-13 10:18:17.381	healthCheckSupplier
com.atlassian.analytics.analytics-client	597	2017-04-13 10:18:17.381	allowedWordFilter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	598	2017-04-13 10:18:17.381	healthmonitor-blueprint
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	599	2017-04-13 10:18:17.381	prettyurls-sitemesh-fixup-filter-before-dispatch
confluence.web.resources	600	2017-04-13 10:18:17.381	syntaxhighlighter-css
com.atlassian.activeobjects.confluence.spi	601	2017-04-13 10:18:17.381	hibernateSessionFactory
com.atlassian.plugins.base-hipchat-integration-plugin	602	2017-04-13 10:18:17.381	hipchat-configurable
com.atlassian.confluence.plugins.confluence-dashboard	603	2017-04-13 10:18:17.381	dashboard-rest
com.atlassian.confluence.extra.widgetconnector	604	2017-04-13 10:18:17.381	friendfeed
com.atlassian.confluence.plugins.confluence-license-banner	605	2017-04-13 10:18:17.381	confluence-license-banner-resources
com.atlassian.streams.confluence	606	2017-04-13 10:18:17.381	date-default
com.atlassian.streams	607	2017-04-13 10:18:17.381	date-sv-FI
com.atlassian.oauth.serviceprovider	608	2017-04-13 10:18:17.381	validator
com.atlassian.streams	609	2017-04-13 10:18:17.381	date-vi-VN
com.atlassian.confluence.plugins.confluence-business-blueprints	610	2017-04-13 10:18:17.381	sharelinks-blueprint-listener
com.atlassian.confluence.plugins.confluence-dashboard	611	2017-04-13 10:18:17.381	routing-spaces-reverse
com.atlassian.confluence.plugins.confluence-user-rest	612	2017-04-13 10:18:17.381	userAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	613	2017-04-13 10:18:17.381	notification-transformer
confluence.listeners.core	614	2017-04-13 10:18:17.381	mailServerListener
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	615	2017-04-13 10:18:17.381	page-trashed-notification
com.atlassian.confluence.plugins.confluence-highlight-actions	616	2017-04-13 10:18:17.381	tableSelectionTransformer
confluence.search.mappers.lucene	617	2017-04-13 10:18:17.381	dateRange
com.atlassian.confluence.plugins.confluence-knowledge-base	618	2017-04-13 10:18:17.381	kbApplicationLinkRequestVerifier
confluence.extra.impresence2	619	2017-04-13 10:18:17.381	im-xhtml
com.atlassian.confluence.plugins.confluence-dashboard	620	2017-04-13 10:18:17.381	featureDiscoveryService
com.atlassian.confluence.plugins.drag-and-drop	621	2017-04-13 10:18:17.381	plupload
com.atlassian.confluence.plugins.confluence-knowledge-base	622	2017-04-13 10:18:17.381	searchResultAugmenter
com.atlassian.confluence.plugins.confluence-business-blueprints	623	2017-04-13 10:18:17.381	file-list-item
com.atlassian.confluence.plugins.confluence-email-resources	624	2017-04-13 10:18:17.381	notification-templates-blogpost-moved-1.0.0
com.atlassian.applinks.applinks-basicauth-plugin	625	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.confluence.plugins.confluence-mobile	626	2017-04-13 10:18:17.381	mention-resources
com.atlassian.confluence.plugins.confluence-edge-index	627	2017-04-13 10:18:17.381	comment.create
confluence.web.resources	628	2017-04-13 10:18:17.381	edit-user-profile
com.atlassian.oauth.consumer	629	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	630	2017-04-13 10:18:17.381	notificationWebResourceTransformer
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	631	2017-04-13 10:18:17.381	batchingJob
com.atlassian.applinks.applinks-plugin	632	2017-04-13 10:18:17.381	projectManagerContextItem
com.atlassian.confluence.plugins.confluence-email-resources	633	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.confluence.plugins.confluence-dashboard	634	2017-04-13 10:18:17.381	dashboard-server-side-soy
confluence.converters.core	635	2017-04-13 10:18:17.381	blog-converter
com.atlassian.confluence.plugins.confluence-fixed-headers	636	2017-04-13 10:18:17.381	handlers
com.atlassian.confluence.plugins.confluence-software-blueprints	637	2017-04-13 10:18:17.381	requirements-page
confluence.macros.advanced	638	2017-04-13 10:18:17.381	popular-labels
com.atlassian.confluence.plugins.recently-viewed-plugin	639	2017-04-13 10:18:17.381	userManager
confluence.search.mappers.lucene	640	2017-04-13 10:18:17.381	doubleRange
confluence.extractors.core	641	2017-04-13 10:18:17.381	contentPermissionsChangeExtractor
confluence.extra.masterdetail	642	2017-04-13 10:18:17.381	pagePropertiesExtractor
com.atlassian.auiplugin	643	2017-04-13 10:18:17.381	fancy-file-input
com.atlassian.confluence.plugins.confluence-software-project	644	2017-04-13 10:18:17.381	sp-space-meeting-notes-template
confluence.listeners.core	645	2017-04-13 10:18:17.381	userIndexingListener
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	646	2017-04-13 10:18:17.381	featureDiscoveryRest
com.atlassian.applinks.applinks-cors-plugin	647	2017-04-13 10:18:17.381	localeResolver
com.atlassian.applinks.applinks-oauth-plugin	648	2017-04-13 10:18:17.381	consumerTokenStore
com.atlassian.streams	649	2017-04-13 10:18:17.381	date-fa-IR
com.atlassian.templaterenderer.api	650	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	651	2017-04-13 10:18:17.381	notificationQueueManager
com.atlassian.confluence.plugins.confluence-email-resources	652	2017-04-13 10:18:17.381	resource-image-function
com.atlassian.oauth.consumer.sal	653	2017-04-13 10:18:17.381	consumerStore
com.atlassian.confluence.plugins.confluence-roadmap-plugin	654	2017-04-13 10:18:17.381	roadmap-dialog-resources
com.atlassian.confluence.editor	655	2017-04-13 10:18:17.381	editor-featured-macro-gallery
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	656	2017-04-13 10:18:17.381	confluence-collaborative-editor-config
com.atlassian.mywork.mywork-confluence-host-plugin	657	2017-04-13 10:18:17.381	localeResolver
com.atlassian.confluence.plugins.confluence-business-blueprints	658	2017-04-13 10:18:17.381	file-list-page
confluence.extra.attachments	659	2017-04-13 10:18:17.381	attachments-javascript
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	660	2017-04-13 10:18:17.381	page-created-notification
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	661	2017-04-13 10:18:17.381	packageAdmin
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	662	2017-04-13 10:18:17.381	hsqlHealthCheck
com.atlassian.confluence.plugins.confluence-files	663	2017-04-13 10:18:17.381	filesAttNotInList
com.atlassian.applinks.applinks-oauth-plugin	664	2017-04-13 10:18:17.381	OAuthAuthenticatorProviderPluginModule
confluence.sections.admin	665	2017-04-13 10:18:17.381	administration
confluence.extra.masterdetail	666	2017-04-13 10:18:17.381	details
com.atlassian.plugins.tinymce	667	2017-04-13 10:18:17.381	atlassian-rte-javascript-tinymce-core
com.atlassian.mywork.mywork-common-plugin	668	2017-04-13 10:18:17.381	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	669	2017-04-13 10:18:17.381	blogpost-edited-hipchat-notification-template-body
com.atlassian.streams.confluence	670	2017-04-13 10:18:17.381	notificationManager
com.atlassian.confluence.plugins.confluence-onboarding	671	2017-04-13 10:18:17.381	onboarding-blueprint-templates-resources
com.atlassian.confluence.editor	672	2017-04-13 10:18:17.381	macroBodyTranformationCondition
com.atlassian.confluence.plugins.confluence-email-resources	673	2017-04-13 10:18:17.381	notification-templates-page-edited-2.0.0
com.atlassian.streams.confluence	674	2017-04-13 10:18:17.381	date-hu-HU
com.atlassian.confluence.plugins.gadgets	675	2017-04-13 10:18:17.381	gadgetsActions
com.atlassian.auiplugin	676	2017-04-13 10:18:17.381	aui-form-validation
com.atlassian.streams.confluence	677	2017-04-13 10:18:17.381	date-ar-QA
confluence.extra.webdav	678	2017-04-13 10:18:17.381	reverseProxyFilter
com.atlassian.streams.confluence	679	2017-04-13 10:18:17.381	date-zu-ZA
com.atlassian.streams.confluence	680	2017-04-13 10:18:17.381	date-ar-TN
com.atlassian.streams.confluence	681	2017-04-13 10:18:17.381	date-pt-PT
confluence.user.menu	682	2017-04-13 10:18:17.381	create-personal-space
com.atlassian.plugin.notifications.notifications-module	683	2017-04-13 10:18:17.381	templateManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	684	2017-04-13 10:18:17.381	pluginDownloadService
com.atlassian.confluence.plugins.quickreload	685	2017-04-13 10:18:17.381	pageManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	686	2017-04-13 10:18:17.381	pluginMetadataAccessor
com.atlassian.analytics.analytics-client	687	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.plugins.base-hipchat-integration-plugin-api	688	2017-04-13 10:18:17.381	wrm-amd
com.atlassian.confluence.plugins.confluence-edge-index	689	2017-04-13 10:18:17.381	confluenceAccessManager
com.atlassian.confluence.plugins.confluence-mobile	690	2017-04-13 10:18:17.381	macroMarshallingFactory
com.atlassian.streams.confluence	691	2017-04-13 10:18:17.381	date-ar-SY
com.atlassian.confluence.keyboardshortcuts	692	2017-04-13 10:18:17.381	save.editor.page
confluence.extra.confluencerpc	693	2017-04-13 10:18:17.381	attachmentsSoapService
confluence.sections.admin	694	2017-04-13 10:18:17.381	securityconfiguration
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	695	2017-04-13 10:18:17.381	notification-recipients
com.atlassian.confluence.plugins.search.confluence-search	696	2017-04-13 10:18:17.381	boosting-query-mapper
com.atlassian.auiplugin	697	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-data
com.atlassian.auiplugin	698	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-entry-model
confluence.user.menu.concise	699	2017-04-13 10:18:17.381	settings
com.atlassian.confluence.plugins.confluence-easyuser-admin	700	2017-04-13 10:18:17.381	mailServerExistsCriteria
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	701	2017-04-13 10:18:17.381	models
confluence.web.resources	702	2017-04-13 10:18:17.381	custom-page-content-resources
com.atlassian.confluence.ext.newcode-macro-plugin	703	2017-04-13 10:18:17.381	newcode
confluence.macros.advanced	704	2017-04-13 10:18:17.381	children-migrator
com.atlassian.confluence.plugins.confluence-space-ia	705	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.confluence-knowledge-base	706	2017-04-13 10:18:17.381	kb-serviceDeskExternalCustomerServletFilter-filter
com.atlassian.plugins.authentication.atlassian-authentication-plugin	707	2017-04-13 10:18:17.381	confluence-logout-filter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	708	2017-04-13 10:18:17.381	dacidecision-blueprint-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	709	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.applinks.applinks-trustedapps-plugin	710	2017-04-13 10:18:17.381	documentationLinker
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	711	2017-04-13 10:18:17.381	notificationCacheUpdateEventListener
com.atlassian.confluence.plugins.soy	712	2017-04-13 10:18:17.381	soy-format-date-function
com.atlassian.confluence.plugins.confluence-view-file-macro	713	2017-04-13 10:18:17.381	view-file-macro-export-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	714	2017-04-13 10:18:17.381	differ
confluence.search.mappers.lucene	715	2017-04-13 10:18:17.381	longRange
com.atlassian.plugins.editor	716	2017-04-13 10:18:17.381	editor-panel
confluence.user.menu	717	2017-04-13 10:18:17.381	user-operations
com.atlassian.confluence.plugins.confluence-sal-plugin	718	2017-04-13 10:18:17.381	bootstrapManager
com.atlassian.plugins.base-hipchat-integration-plugin	719	2017-04-13 10:18:17.381	resources
com.atlassian.plugin.notifications.notifications-module	720	2017-04-13 10:18:17.381	notificationsAdminServlet
com.atlassian.streams.confluence	721	2017-04-13 10:18:17.381	date-ar-SA
confluence.sections.admin	722	2017-04-13 10:18:17.381	stylesheet
confluence.extra.confluencerpc	723	2017-04-13 10:18:17.381	confluence-xmlrpc
com.atlassian.confluence.plugins.confluence-license-banner	724	2017-04-13 10:18:17.381	rest-resource-filter
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	725	2017-04-13 10:18:17.381	collabEditingModeCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	726	2017-04-13 10:18:17.381	cachedContentFinder
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	727	2017-04-13 10:18:17.381	page-moved-notification-transformer
com.atlassian.querylang.confluence-cql-plugin	728	2017-04-13 10:18:17.381	end-of-month-one-arg-function
com.atlassian.auiplugin	729	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-prevent-default
com.atlassian.confluence.extra.widgetconnector	730	2017-04-13 10:18:17.381	twitter-webresources
com.atlassian.plugins.rest.atlassian-rest-module	731	2017-04-13 10:18:17.381	httpContext
com.atlassian.confluence.plugins.confluence-create-content-plugin	732	2017-04-13 10:18:17.381	blueprintContentTemplateService
com.atlassian.mywork.mywork-confluence-host-plugin	733	2017-04-13 10:18:17.381	velocity-renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	734	2017-04-13 10:18:17.381	upm-manage-plugins-module
com.atlassian.confluence.plugins.confluence-inline-tasks	735	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-mentions-plugin	736	2017-04-13 10:18:17.381	dataSourceFactory
confluence.extra.masterdetail	737	2017-04-13 10:18:17.381	master-details-resources
com.atlassian.confluence.plugins.confluence-jira-metadata	738	2017-04-13 10:18:17.381	jira-metadata-cache-config-trigger
confluence.sections.space.admin	739	2017-04-13 10:18:17.381	layouts
com.atlassian.confluence.plugins.confluence-inline-comments	740	2017-04-13 10:18:17.381	notification-template-new-mail-body
confluence.sections.page.temp	741	2017-04-13 10:18:17.381	pagefavourite
confluence.search.mappers.lucene	742	2017-04-13 10:18:17.381	spaceCategory
confluence.web.resources	743	2017-04-13 10:18:17.381	js-reporting
com.atlassian.auiplugin	744	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-browser
com.atlassian.applinks.applinks-basicauth-plugin	745	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.plugin.jslibs	746	2017-04-13 10:18:17.381	underscore-1.5.2
com.atlassian.plugins.atlassian-whitelist-ui-plugin	747	2017-04-13 10:18:17.381	applicationLinkService
com.atlassian.oauth.serviceprovider	748	2017-04-13 10:18:17.381	access-token-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	749	2017-04-13 10:18:17.381	page-moved-notification-template
com.atlassian.confluence.plugins.watch-button	750	2017-04-13 10:18:17.381	watch-keyboard-shortcut
confluence.editor.actions	751	2017-04-13 10:18:17.381	edit-macro
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	752	2017-04-13 10:18:17.381	urlReadingNotificationWebResourceTransformer
confluence.sections.profile	753	2017-04-13 10:18:17.381	personalspace
com.atlassian.applinks.applinks-trustedapps-plugin	754	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	755	2017-04-13 10:18:17.381	escapeToolContextItem
com.atlassian.confluence.plugins.status-macro	756	2017-04-13 10:18:17.381	editor_content_status
com.atlassian.confluence.plugins.confluence-link-browser	757	2017-04-13 10:18:17.381	linkbrowser-css-resources
com.atlassian.confluence.contributors	758	2017-04-13 10:18:17.381	contributors-web-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	759	2017-04-13 10:18:17.381	comment-created-notification-transformer
confluence.xhtml.wikimarkup	760	2017-04-13 10:18:17.381	unmigrated-wiki-markup
com.atlassian.confluence.plugins.confluence-email-resources	761	2017-04-13 10:18:17.381	notifications-cluster-node-id-function
com.atlassian.confluence.plugins.confluence-space-ia	762	2017-04-13 10:18:17.381	customPageSettingsManager
confluence.web.resources	763	2017-04-13 10:18:17.381	atlassian-effects
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	764	2017-04-13 10:18:17.381	cacheFactory
confluence.extra.information	765	2017-04-13 10:18:17.381	xhtml-note
com.atlassian.support.stp	766	2017-04-13 10:18:17.381	salWebSudoManager
com.atlassian.confluence.plugins.confluence-lookandfeel	767	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-content-property-storage	768	2017-04-13 10:18:17.381	content-property-field-sort-mapper
com.atlassian.confluence.plugins.status-macro	769	2017-04-13 10:18:17.381	editor_status
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	770	2017-04-13 10:18:17.381	upm-web-resources
com.atlassian.confluence.plugins.confluence-user-profile	771	2017-04-13 10:18:17.381	user-avatar-resource
com.atlassian.plugins.rest.atlassian-rest-module	772	2017-04-13 10:18:17.381	requestFactory
com.atlassian.confluence.plugins.confluence-file-notifications	773	2017-04-13 10:18:17.381	notificationManager
com.atlassian.confluence.plugins.recently-viewed-plugin	774	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	775	2017-04-13 10:18:17.381	requestCheckJob
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	776	2017-04-13 10:18:17.381	page-edited-notification-transformer
confluence.extra.layout	777	2017-04-13 10:18:17.381	section
confluence.macros.advanced	778	2017-04-13 10:18:17.381	listlabels-resources
com.atlassian.confluence.editor	779	2017-04-13 10:18:17.381	xmlOutputFactory
confluence.sections.space.tools	780	2017-04-13 10:18:17.381	removespace
com.atlassian.confluence.plugins.confluence-business-blueprints	781	2017-04-13 10:18:17.381	sharelinks-blueprint-item
com.atlassian.mywork.mywork-common-plugin	782	2017-04-13 10:18:17.381	i18nResolver
confluence.web.resources	783	2017-04-13 10:18:17.381	moment
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	784	2017-04-13 10:18:17.381	remotePageViewService
com.atlassian.confluence.plugins.confluence-fixed-headers	785	2017-04-13 10:18:17.381	utils
com.atlassian.applinks.applinks-plugin	786	2017-04-13 10:18:17.381	applicationLinkUIService
com.atlassian.confluence.plugins.confluence-email-resources	787	2017-04-13 10:18:17.381	template-utils
com.atlassian.confluence.plugins.share-page	788	2017-04-13 10:18:17.381	share-page-notification-transformer
com.atlassian.plugins.atlassian-project-creation-plugin	789	2017-04-13 10:18:17.381	aggregate-roots-rest-url
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	790	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.confluence.plugins.search.confluence-search	791	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.confluence.plugins.quickedit	792	2017-04-13 10:18:17.381	quick-edit-general
com.atlassian.confluence.plugins.synchrony-interop	793	2017-04-13 10:18:17.381	synchronyStatusCheck
confluence.web.resources	794	2017-04-13 10:18:17.381	pagination-styles
confluence.extra.impresence2	795	2017-04-13 10:18:17.381	reporter-sametime
com.atlassian.confluence.plugins.confluence-software-blueprints	796	2017-04-13 10:18:17.381	retrospectives-page
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	797	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	798	2017-04-13 10:18:17.381	hipchat-oauth-profile-page
com.atlassian.streams.actions	799	2017-04-13 10:18:17.381	action-handler-web-resource
com.atlassian.confluence.plugins.confluence-knowledge-base	800	2017-04-13 10:18:17.381	permissionManager
com.atlassian.streams	801	2017-04-13 10:18:17.381	date-he-IL
com.atlassian.confluence.plugins.confluence-browser-metrics	802	2017-04-13 10:18:17.381	browser-metrics-api
com.atlassian.confluence.plugins.confluence-inline-comments	803	2017-04-13 10:18:17.381	inline-notification-new-mail
confluence.aui.staging	804	2017-04-13 10:18:17.381	meta
com.atlassian.confluence.plugins.confluence-file-notifications	805	2017-04-13 10:18:17.381	file-notifications-like-action
com.atlassian.applinks.applinks-cors-plugin	806	2017-04-13 10:18:17.381	adminUIAuthenticator
com.atlassian.confluence.plugins.confluence-inline-comments	807	2017-04-13 10:18:17.381	view-inline-email-adg-footer-item
com.atlassian.support.healthcheck.support-healthcheck-plugin	808	2017-04-13 10:18:17.381	healthcheck-resources
com.atlassian.auiplugin	809	2017-04-13 10:18:17.381	internal-jquery-ui-partial
confluence.macros.html	810	2017-04-13 10:18:17.381	outboundWhitelist
com.atlassian.confluence.plugins.confluence-knowledge-base	811	2017-04-13 10:18:17.381	spaceManager
com.atlassian.confluence.plugins.confluence-inline-comments	812	2017-04-13 10:18:17.381	create-inline-comment
com.atlassian.confluence.editor	813	2017-04-13 10:18:17.381	page-editor
com.atlassian.auiplugin	814	2017-04-13 10:18:17.381	deprecated-legacy-images
confluence.sections.admin.generalconfig	815	2017-04-13 10:18:17.381	resources
com.atlassian.applinks.applinks-cors-plugin	816	2017-04-13 10:18:17.381	cors-auth
com.atlassian.confluence.plugins.confluence-sal-plugin	817	2017-04-13 10:18:17.381	projectManager
com.atlassian.confluence.plugins.confluence-mobile	818	2017-04-13 10:18:17.381	webResourceAssemblerFactory
com.atlassian.applinks.applinks-trustedapps-plugin	819	2017-04-13 10:18:17.381	xsrfTokenValidator
com.atlassian.plugins.atlassian-whitelist-core-plugin	820	2017-04-13 10:18:17.381	applicationLinkService
com.atlassian.querylang.confluence-cql-plugin	821	2017-04-13 10:18:17.381	content-type-field
com.atlassian.confluence.plugins.confluence-space-ia	822	2017-04-13 10:18:17.381	header-people-link
com.atlassian.confluence.plugins.confluence-user-rest	823	2017-04-13 10:18:17.381	aggregationWarningManager
com.atlassian.confluence.contributors	824	2017-04-13 10:18:17.381	creationDate
com.atlassian.confluence.plugins.quickedit	825	2017-04-13 10:18:17.381	quick-edit-util
com.atlassian.confluence.plugins.confluence-sortable-tables	826	2017-04-13 10:18:17.381	ConfluenceSortableTablesEditorPlugin
com.atlassian.mywork.mywork-confluence-provider-plugin	827	2017-04-13 10:18:17.381	commentService
com.atlassian.confluence.extra.flyingpdf	828	2017-04-13 10:18:17.381	none
com.atlassian.confluence.plugins.confluence-lookandfeel	829	2017-04-13 10:18:17.381	siteLogoHelperContext
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	830	2017-04-13 10:18:17.381	auditLogUpgradeTask
com.atlassian.applinks.applinks-plugin	831	2017-04-13 10:18:17.381	applinks-application-type
com.atlassian.templaterenderer.api	832	2017-04-13 10:18:17.381	template-context-item
com.atlassian.oauth.serviceprovider	833	2017-04-13 10:18:17.381	postAuthorizationProcessor
com.atlassian.streams.confluence	834	2017-04-13 10:18:17.381	date-ar-IQ
com.atlassian.confluence.plugins.confluence-templates	835	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.plugins.atlassian-nav-links-plugin	836	2017-04-13 10:18:17.381	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-space-directory	837	2017-04-13 10:18:17.381	spaceDirectoryEntityBuilder
com.atlassian.auiplugin	838	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-edit-row
com.atlassian.applinks.applinks-trustedapps-plugin	839	2017-04-13 10:18:17.381	adminUIAuthenticator
com.atlassian.streams.confluence	840	2017-04-13 10:18:17.381	streamsLocaleProvider
com.atlassian.confluence.plugins.drag-and-drop	841	2017-04-13 10:18:17.381	drag-and-drop-for-view-attachments
com.atlassian.streams.confluence	842	2017-04-13 10:18:17.381	streamsFeedUrlBuilderFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	843	2017-04-13 10:18:17.381	mailRenderer
com.atlassian.applinks.applinks-oauth-plugin	844	2017-04-13 10:18:17.381	confluence-inbound-two-legged-oauth
com.atlassian.confluence.plugins.confluence-space-ia	845	2017-04-13 10:18:17.381	spacemenu-resources
com.atlassian.confluence.plugins.gadgets	846	2017-04-13 10:18:17.381	publishedGadgetsDirectory
com.atlassian.confluence.plugins.confluence-license-rest	847	2017-04-13 10:18:17.381	userChecker
com.atlassian.confluence.plugins.confluence-create-content-plugin	848	2017-04-13 10:18:17.381	create-personal-space-item
com.atlassian.confluence.plugins.confluence-email-resources	849	2017-04-13 10:18:17.381	chrome-template-1.0.0
com.atlassian.confluence.plugins.confluence-email-resources	850	2017-04-13 10:18:17.381	email-reply-to-provider
com.atlassian.confluence.plugins.confluence-space-blueprints	851	2017-04-13 10:18:17.381	documentation-space-getting-started-template
com.atlassian.streams	852	2017-04-13 10:18:17.381	feedRenderer
com.atlassian.confluence.extra.flyingpdf	853	2017-04-13 10:18:17.381	pdfExportCustomFontMigrator
com.atlassian.streams.confluence	854	2017-04-13 10:18:17.381	date-nn-NO
com.atlassian.confluence.plugins.confluence-macro-usage	855	2017-04-13 10:18:17.381	macroExtractor
com.atlassian.applinks.applinks-cors-plugin	856	2017-04-13 10:18:17.381	applicationLinkService
com.atlassian.activeobjects.confluence.spi	857	2017-04-13 10:18:17.381	synchronizationManager
com.atlassian.confluence.plugins.confluence-page-banner	858	2017-04-13 10:18:17.381	content-metadata-attachments
confluence.extra.confluencerpc	859	2017-04-13 10:18:17.381	blogsSoapService
confluence.sections.space.tools	860	2017-04-13 10:18:17.381	stylesheet
com.atlassian.auiplugin	861	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-spin
com.atlassian.streams	862	2017-04-13 10:18:17.381	date-uz-Cyrl-UZ
com.atlassian.crowd.embedded.admin	863	2017-04-13 10:18:17.381	confluence-internal-directory-options
com.atlassian.plugins.atlassian-nav-links-plugin	864	2017-04-13 10:18:17.381	custom-apps-filter
com.atlassian.confluence.plugins.confluence-email-resources	865	2017-04-13 10:18:17.381	mimeBodyPartRecorder
com.atlassian.streams.confluence	866	2017-04-13 10:18:17.381	date-ar-LB
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	867	2017-04-13 10:18:17.381	hipchat-css-resources
com.atlassian.auiplugin	868	2017-04-13 10:18:17.381	internal-fancy-file-input-2.0.1-dist-fancy-file-input
com.atlassian.confluence.editor	869	2017-04-13 10:18:17.381	captcha-editor-panel
com.atlassian.confluence.extra.flyingpdf	870	2017-04-13 10:18:17.381	pdfExportFontManager
com.atlassian.querylang.confluence-cql-plugin	871	2017-04-13 10:18:17.381	created-date-field
com.atlassian.confluence.plugins.confluence-onboarding	872	2017-04-13 10:18:17.381	less-users-notification-transformer
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	873	2017-04-13 10:18:17.381	batching-notification-payload-processor
confluence.sections.admin	874	2017-04-13 10:18:17.381	security
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	875	2017-04-13 10:18:17.381	collationCheck
com.atlassian.confluence.plugins.confluence-inline-comments	876	2017-04-13 10:18:17.381	notification-template-reply-body
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	877	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	878	2017-04-13 10:18:17.381	auditLogService
com.atlassian.streams.confluence	879	2017-04-13 10:18:17.381	date-ar-KW
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	880	2017-04-13 10:18:17.381	tx-processor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	881	2017-04-13 10:18:17.381	upm-update-check-templates
com.atlassian.confluence.plugins.confluence-onboarding	882	2017-04-13 10:18:17.381	common-flow-resources
com.atlassian.confluence.plugins.view-storage-format	883	2017-04-13 10:18:17.381	darkFeaturesManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	884	2017-04-13 10:18:17.381	userKeyUpgradeTask
com.atlassian.auiplugin	885	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-header-create-header
confluence.listeners.core	886	2017-04-13 10:18:17.381	mergerListener
com.atlassian.auiplugin	887	2017-04-13 10:18:17.381	dialog2
confluence.sections.admin.header	888	2017-04-13 10:18:17.381	admin-user
confluence.sections.space.advanced	889	2017-04-13 10:18:17.381	exportsection
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	890	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.confluence.plugins.confluence-email-resources	891	2017-04-13 10:18:17.381	content-templates-content-excerpt-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	892	2017-04-13 10:18:17.381	space-blueprints
com.atlassian.streams.confluence	893	2017-04-13 10:18:17.381	date-ar-JO
com.atlassian.confluence.plugins.synchrony-interop	894	2017-04-13 10:18:17.381	confluence-synchrony-interop-rest-api-filter
com.atlassian.confluence.plugins.confluence-license-banner	895	2017-04-13 10:18:17.381	rest-resource
com.atlassian.confluence.plugins.confluence-create-content-plugin	896	2017-04-13 10:18:17.381	create-content-with-init-context
com.atlassian.confluence.plugins.pagetree	897	2017-04-13 10:18:17.381	pagetree-js-resources
confluence.web.panels	898	2017-04-13 10:18:17.381	confluence-footer
confluence.search.lucene.initialisation	899	2017-04-13 10:18:17.381	defaultSearcherInitialisation
com.atlassian.confluence.plugins.confluence-business-blueprints	900	2017-04-13 10:18:17.381	contentBlueprintManager
confluence.extra.jira	901	2017-04-13 10:18:17.381	blueprint-selector
tac.confluence.languages.en_US	902	2017-04-13 10:18:17.381	en_US
com.atlassian.confluence.contributors	903	2017-04-13 10:18:17.381	keyword
com.atlassian.auiplugin	904	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-data-keys
com.atlassian.confluence.plugins.confluence-daily-summary-email	905	2017-04-13 10:18:17.381	popularContentQueries
com.atlassian.streams	906	2017-04-13 10:18:17.381	date-eu-ES
com.atlassian.querylang.confluence-cql-plugin	907	2017-04-13 10:18:17.381	container-field
com.atlassian.streams.confluence	908	2017-04-13 10:18:17.381	spacePermissionManager
com.atlassian.analytics.analytics-client	909	2017-04-13 10:18:17.381	uploadAnalyticsInitialiser
confluence.search.mappers.lucene	910	2017-04-13 10:18:17.381	created
com.atlassian.analytics.analytics-client	911	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.plugins.base-hipchat-integration-plugin	912	2017-04-13 10:18:17.381	common-resources
com.atlassian.plugins.base-hipchat-integration-plugin	913	2017-04-13 10:18:17.381	hipchat-installed-scopes
confluence.search.mappers.lucene	914	2017-04-13 10:18:17.381	contentType
com.atlassian.confluence.plugins.confluence-content-property-storage	915	2017-04-13 10:18:17.381	number-field-type-query-mapper
com.atlassian.confluence.plugins.confluence-create-content-plugin	916	2017-04-13 10:18:17.381	templateUpdatedListener
com.atlassian.streams.confluence	917	2017-04-13 10:18:17.381	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-mentions-plugin	918	2017-04-13 10:18:17.381	mention-notification-template-body
com.atlassian.streams	919	2017-04-13 10:18:17.381	date-mr-IN
com.atlassian.confluence.plugins.confluence-roadmap-plugin	920	2017-04-13 10:18:17.381	roadmap-create-page-context
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	921	2017-04-13 10:18:17.381	page-edited-notification-template-body
com.atlassian.streams.confluence	922	2017-04-13 10:18:17.381	date-ar-MA
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	923	2017-04-13 10:18:17.381	rpv-serviceDeskExternalCustomerServletFilter-filter
com.atlassian.confluence.plugins.drag-and-drop	924	2017-04-13 10:18:17.381	image-dialog-client
com.atlassian.confluence.plugins.confluence-content-property-storage	925	2017-04-13 10:18:17.381	content-property
confluence.converters.core	926	2017-04-13 10:18:17.381	page-converter
confluence.macros.advanced	927	2017-04-13 10:18:17.381	xhtml-blog-posts
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	928	2017-04-13 10:18:17.381	transactionTemplate
confluence.web.resources	929	2017-04-13 10:18:17.381	floating-scrollbar
com.atlassian.querylang.confluence-cql-plugin	930	2017-04-13 10:18:17.381	watcher-field
com.atlassian.confluence.plugins.confluence-create-content-plugin	931	2017-04-13 10:18:17.381	blueprintResolver
com.atlassian.confluence.plugins.confluence-business-blueprints	932	2017-04-13 10:18:17.381	i18nBeanFactory
com.atlassian.applinks.applinks-plugin	933	2017-04-13 10:18:17.381	webFragmentHelper
com.atlassian.confluence.extra.officeconnector	934	2017-04-13 10:18:17.381	wordContentExtractor
com.atlassian.auiplugin	935	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-version
confluence.sections.admin.indexing	936	2017-04-13 10:18:17.381	resources
com.atlassian.streams.confluence	937	2017-04-13 10:18:17.381	date-ar-LY
com.atlassian.confluence.plugins.confluence-email-tracker	938	2017-04-13 10:18:17.381	emailTrackerServlet
com.atlassian.confluence.plugins.confluence-email-resources	939	2017-04-13 10:18:17.381	template-utils-fail-safe-user-link-1.0.0
confluence.sections.space	940	2017-04-13 10:18:17.381	space-blogposts
confluence.search.mappers.lucene	941	2017-04-13 10:18:17.381	booleanSearchFilter
confluence.extra.confluencerpc	942	2017-04-13 10:18:17.381	wikiSoapService
com.atlassian.confluence.plugins.gadgets	943	2017-04-13 10:18:17.381	cacheStatisticsManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	944	2017-04-13 10:18:17.381	underscoreTemplateRenderer
confluence.extractors.core	945	2017-04-13 10:18:17.381	objectDateExtractor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	946	2017-04-13 10:18:17.381	actions
tac.confluence.languages.ru_RU	947	2017-04-13 10:18:17.381	ru_RU
com.atlassian.applinks.applinks-trustedapps-plugin	948	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.plugin.notifications.notifications-module	949	2017-04-13 10:18:17.381	notificationMediumManager
com.atlassian.confluence.plugins.confluence-business-blueprints	950	2017-04-13 10:18:17.381	sharePageService
com.atlassian.confluence.plugins.templates-framework	951	2017-04-13 10:18:17.381	templates_js
com.atlassian.confluence.extra.officeconnector	952	2017-04-13 10:18:17.381	viewfile-legacy
confluence.sections.admin	953	2017-04-13 10:18:17.381	mailqueue
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	954	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	955	2017-04-13 10:18:17.381	space-blueprint
com.atlassian.applinks.applinks-plugin	956	2017-04-13 10:18:17.381	page-applink-edit
com.atlassian.oauth.serviceprovider	957	2017-04-13 10:18:17.381	oAuthRequestVerifierFactory
com.atlassian.confluence.plugins.confluence-software-blueprints	958	2017-04-13 10:18:17.381	requirements-blueprint
confluence.extra.jira	959	2017-04-13 10:18:17.381	editor-featured-macro-jira
confluence.sections.admin	960	2017-04-13 10:18:17.381	indexing
confluence.lifecycle.core	961	2017-04-13 10:18:17.381	xhtmlWikiMarkupMacroMigration
com.atlassian.confluence.plugins.confluence-sal-plugin	962	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.auiplugin	963	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-progressive-data-set
com.atlassian.mywork.mywork-confluence-host-plugin	964	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.favicon.confluence-custom-favicon-plugin	965	2017-04-13 10:18:17.381	favicon-plugin-resources
confluence.renderer.components	966	2017-04-13 10:18:17.381	html-entity-tokenize
com.atlassian.confluence.plugins.confluence-templates	967	2017-04-13 10:18:17.381	viewTransformer
com.atlassian.streams.confluence	968	2017-04-13 10:18:17.381	date-ar-OM
com.atlassian.confluence.plugins.confluence-like	969	2017-04-13 10:18:17.381	networkService
com.atlassian.confluence.plugins.confluence-ui-components	970	2017-04-13 10:18:17.381	page-picker
com.atlassian.confluence.plugins.confluence-image-attributes	971	2017-04-13 10:18:17.381	soy-resources
com.atlassian.analytics.analytics-client	972	2017-04-13 10:18:17.381	eventAnonymizer
com.atlassian.auiplugin	973	2017-04-13 10:18:17.381	aui-experimental-page-layout-typography-legacy1
com.atlassian.confluence.plugins.search.confluence-search	974	2017-04-13 10:18:17.381	confluence-search-resources
com.atlassian.auiplugin	975	2017-04-13 10:18:17.381	aui-experimental-restfultable
com.atlassian.plugins.atlassian-nav-links-plugin	976	2017-04-13 10:18:17.381	project-shortcuts-rest-filter
com.atlassian.plugins.atlassian-plugins-webresource-rest	977	2017-04-13 10:18:17.381	web-resource-manager
com.atlassian.streams	978	2017-04-13 10:18:17.381	date-de-DE
confluence.listeners.core	979	2017-04-13 10:18:17.381	clusterPanicListener
confluence.extra.confluencerpc	980	2017-04-13 10:18:17.381	spacesSoapService
confluence.web.components	981	2017-04-13 10:18:17.381	core
com.atlassian.confluence.plugins.confluence-mobile	982	2017-04-13 10:18:17.381	dashboard-dependencies
com.atlassian.auiplugin	983	2017-04-13 10:18:17.381	aui-mobile-suite
com.atlassian.confluence.plugins.confluence-software-blueprints	984	2017-04-13 10:18:17.381	retrospective-resources
confluence.sections.admin	985	2017-04-13 10:18:17.381	auditlog
com.atlassian.streams	986	2017-04-13 10:18:17.381	streamsWebResources
confluence.extractors.core	987	2017-04-13 10:18:17.381	untokenizedTitleExtractor
com.atlassian.confluence.plugins.confluence-like	988	2017-04-13 10:18:17.381	confluenceNotificationPreferenceManager
confluence.listeners.core	989	2017-04-13 10:18:17.381	createPersonalSpaceListener
com.atlassian.streams.confluence	990	2017-04-13 10:18:17.381	date-ar-AE
confluence.listeners.core	991	2017-04-13 10:18:17.381	followNotificationsListener
com.atlassian.integration.jira.jira-integration-plugin	992	2017-04-13 10:18:17.381	fields
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	993	2017-04-13 10:18:17.381	hamletClient
com.atlassian.confluence.plugins.gadgets	994	2017-04-13 10:18:17.381	gadget-user-settings
com.atlassian.confluence.plugins.quickreload	995	2017-04-13 10:18:17.381	permissionManager
com.atlassian.confluence.plugins.confluence-previews	996	2017-04-13 10:18:17.381	confluencePreviewsWhitelist
com.atlassian.oauth.serviceprovider	997	2017-04-13 10:18:17.381	getAuthorizationProcessor
confluence.web.resources	998	2017-04-13 10:18:17.381	macro-js-overrides
confluence.sections.space.admin	999	2017-04-13 10:18:17.381	editspace
com.atlassian.plugins.atlassian-nav-links-plugin	1000	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-easyuser-admin	1001	2017-04-13 10:18:17.381	eventPublisher
confluence.sections.space	1002	2017-04-13 10:18:17.381	space-pages
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1003	2017-04-13 10:18:17.381	blogpost-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-browser-metrics	1004	2017-04-13 10:18:17.381	editor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1005	2017-04-13 10:18:17.381	hostApplicationLicenseFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	1006	2017-04-13 10:18:17.381	contentBlueprintInstanceAdapter
com.atlassian.streams	1007	2017-04-13 10:18:17.381	date-se-FI
confluence.extra.information	1008	2017-04-13 10:18:17.381	warning
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1009	2017-04-13 10:18:17.381	upm-dac-landing-page-templates
com.atlassian.confluence.plugins.confluence-user-rest	1010	2017-04-13 10:18:17.381	usersEntityBuilder
com.atlassian.auiplugin	1011	2017-04-13 10:18:17.381	jquery-lib
com.atlassian.streams.confluence	1012	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.streams	1013	2017-04-13 10:18:17.381	date-cy-GB
com.atlassian.support.stp	1014	2017-04-13 10:18:17.381	salPluginSettingsFactory
com.atlassian.streams	1015	2017-04-13 10:18:17.381	configRepresentationBuilder
com.atlassian.auiplugin	1016	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-banner
com.atlassian.confluence.plugins.confluence-like	1017	2017-04-13 10:18:17.381	like-created-notification-template-body
com.atlassian.gadgets.publisher	1018	2017-04-13 10:18:17.381	ajs-gadgets
com.atlassian.plugins.atlassian-nav-links-plugin	1019	2017-04-13 10:18:17.381	custom-app-store
confluence.content.action.menu	1020	2017-04-13 10:18:17.381	view-history
com.atlassian.querylang.confluence-cql-plugin	1021	2017-04-13 10:18:17.381	title-text-field
confluence.web.resources	1022	2017-04-13 10:18:17.381	safe-ajax
confluence.web.resources	1023	2017-04-13 10:18:17.381	page-location
confluence.web.resources	1024	2017-04-13 10:18:17.381	marionette
com.atlassian.applinks.applinks-plugin	1025	2017-04-13 10:18:17.381	applinks-oauth-ui
confluence.macros.multimedia	1026	2017-04-13 10:18:17.381	real-media
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1027	2017-04-13 10:18:17.381	notificationsEventDispatcher
com.atlassian.confluence.plugins.view-source	1028	2017-04-13 10:18:17.381	view-source
confluence.sections.admin	1029	2017-04-13 10:18:17.381	usermacros
com.atlassian.auiplugin	1030	2017-04-13 10:18:17.381	ajs-raphael
confluence.user.menu.concise	1031	2017-04-13 10:18:17.381	user-history
com.atlassian.querylang.confluence-cql-plugin	1032	2017-04-13 10:18:17.381	confluence-cql-plugin-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1033	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.confluence.plugins.gadgets	1034	2017-04-13 10:18:17.381	cdnActivationListener
com.atlassian.confluence.plugins.confluence-sal-plugin	1035	2017-04-13 10:18:17.381	pluginAccessor
confluence.macros.dashboard	1036	2017-04-13 10:18:17.381	old-dashboard-resource-loader
confluence.extra.jira	1037	2017-04-13 10:18:17.381	jiraissues-xhtml
com.atlassian.confluence.plugins.confluence-user-profile	1038	2017-04-13 10:18:17.381	avatar-picker
com.atlassian.plugins.atlassian-nav-links-plugin	1039	2017-04-13 10:18:17.381	projectPermissionManager
com.atlassian.streams.confluence	1040	2017-04-13 10:18:17.381	date-ar-BH
confluence.web.resources	1041	2017-04-13 10:18:17.381	fancy-box
com.atlassian.confluence.plugins.confluence-lookandfeel	1042	2017-04-13 10:18:17.381	imageScaler
com.atlassian.confluence.plugins.confluence-email-resources	1043	2017-04-13 10:18:17.381	content-templates-contextual-excerpt-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-email-resources	1044	2017-04-13 10:18:17.381	notification-templates-page-moved-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1045	2017-04-13 10:18:17.381	permissionService
com.atlassian.confluence.plugins.confluence-mobile	1046	2017-04-13 10:18:17.381	storageDefaultFragmentTransformerFactory
com.atlassian.confluence.plugins.confluence-lookandfeel	1047	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	1048	2017-04-13 10:18:17.381	prettyurls-sitemesh-filter-before-dispatch
com.atlassian.support.stp	1049	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1050	2017-04-13 10:18:17.381	confluenceAccessManager
confluence.extra.webdav	1051	2017-04-13 10:18:17.381	webdavconfig
com.atlassian.auiplugin	1052	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-messages
com.atlassian.plugins.atlassian-nav-links-plugin	1053	2017-04-13 10:18:17.381	capabilities-forward
com.atlassian.streams.confluence	1054	2017-04-13 10:18:17.381	date-ar-EG
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1055	2017-04-13 10:18:17.381	page-edited-hipchat-notification-template-body
confluence.extra.masterdetail	1056	2017-04-13 10:18:17.381	details-migrator
com.atlassian.confluence.plugins.confluence-link-browser	1057	2017-04-13 10:18:17.381	link-browser-tab-files
com.atlassian.confluence.ext.newcode-macro-plugin	1058	2017-04-13 10:18:17.381	sh-theme-django
com.atlassian.plugins.atlassian-nav-links-plugin	1059	2017-04-13 10:18:17.381	app-link-service
com.atlassian.auiplugin	1060	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-navigation
confluence.sections.space.advanced	1061	2017-04-13 10:18:17.381	subscribesection
com.atlassian.plugins.atlassian-nav-links-plugin	1062	2017-04-13 10:18:17.381	custom-content-link-provider
com.atlassian.confluence.plugins.confluence-daily-summary-email	1063	2017-04-13 10:18:17.381	daily-summary-popular-content
com.atlassian.confluence.extra.widgetconnector	1064	2017-04-13 10:18:17.381	myspacevideo
com.atlassian.streams.confluence	1065	2017-04-13 10:18:17.381	date-ar-DZ
com.atlassian.confluence.plugins.confluence-ui-components	1066	2017-04-13 10:18:17.381	user-group-select2
com.atlassian.gadgets.oauth.serviceprovider	1067	2017-04-13 10:18:17.381	stringEscapeUtilContextItem
tac.confluence.languages.ja_JP	1068	2017-04-13 10:18:17.381	ja_JP
com.atlassian.auiplugin	1069	2017-04-13 10:18:17.381	aui-experimental-dropdown2
com.atlassian.gadgets.publisher	1070	2017-04-13 10:18:17.381	templates
com.atlassian.plugins.rest.atlassian-rest-module	1071	2017-04-13 10:18:17.381	rest-seraph-filter
confluence.extractors.core	1072	2017-04-13 10:18:17.381	personalInformationExtractor
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1073	2017-04-13 10:18:17.381	templateContextFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	1074	2017-04-13 10:18:17.381	content-template
com.atlassian.mywork.mywork-confluence-host-plugin	1075	2017-04-13 10:18:17.381	userDeletedListener
com.atlassian.support.stp	1076	2017-04-13 10:18:17.381	permissionValidationService
com.atlassian.confluence.plugins.quickreload	1077	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1078	2017-04-13 10:18:17.381	experiencecanvas-resources
com.atlassian.confluence.plugins.confluence-onboarding	1079	2017-04-13 10:18:17.381	notificationUserService
com.atlassian.confluence.plugins.confluence-sal-plugin	1080	2017-04-13 10:18:17.381	tenantAccessor
com.atlassian.auiplugin	1081	2017-04-13 10:18:17.381	jquery-selection
com.atlassian.confluence.editor	1082	2017-04-13 10:18:17.381	utils-resources
com.atlassian.confluence.plugins.confluence-email-resources	1083	2017-04-13 10:18:17.381	notification-templates-status-updated-1.0.0
com.atlassian.confluence.plugins.confluence-jira-content	1084	2017-04-13 10:18:17.381	confluence-jira-content-resources
confluence.search.mappers.lucene	1085	2017-04-13 10:18:17.381	excludePersonalInformationSearchFilter
com.atlassian.streams.confluence	1086	2017-04-13 10:18:17.381	date-sa-IN
confluence.sections.space.advanced	1087	2017-04-13 10:18:17.381	startwatchingblogs
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1088	2017-04-13 10:18:17.381	contentEntityManager
com.atlassian.confluence.plugins.confluence-highlight-actions	1089	2017-04-13 10:18:17.381	highlighting-experiment-resources
com.atlassian.confluence.plugins.confluence-link-browser	1090	2017-04-13 10:18:17.381	link-browser-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1091	2017-04-13 10:18:17.381	httpClientTrustedRequestFactory
com.atlassian.integration.jira.jira-integration-plugin	1092	2017-04-13 10:18:17.381	issue-jump-servlet
com.atlassian.confluence.plugins.gadgets.spi	1093	2017-04-13 10:18:17.381	subscribedGadgetFeedStore
confluence.user.hover.menu	1094	2017-04-13 10:18:17.381	primary
confluence.search.mappers.lucene	1095	2017-04-13 10:18:17.381	filesize
confluence.macros.advanced	1096	2017-04-13 10:18:17.381	children
com.atlassian.confluence.plugins.confluence-file-notifications	1097	2017-04-13 10:18:17.381	file-content-recipients-provider
com.atlassian.confluence.ext.newcode-macro-plugin	1098	2017-04-13 10:18:17.381	configure-newcode
com.atlassian.confluence.plugins.confluence-email-resources	1099	2017-04-13 10:18:17.381	batch-notification-templates
com.atlassian.plugin.notifications.notifications-module	1100	2017-04-13 10:18:17.381	notification-queue
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1101	2017-04-13 10:18:17.381	licenseReceiptHandler
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1102	2017-04-13 10:18:17.381	comment-created-notification-template-body
com.atlassian.confluence.plugins.confluence-create-content-plugin	1103	2017-04-13 10:18:17.381	spaceBlueprintManager
com.atlassian.streams.confluence	1104	2017-04-13 10:18:17.381	date-az-Latn-AZ
com.atlassian.streams	1105	2017-04-13 10:18:17.381	date-fi-FI
com.atlassian.confluence.plugins.confluence-mentions-plugin	1106	2017-04-13 10:18:17.381	mentions-email-soy-templates-2
com.atlassian.plugins.base-hipchat-integration-plugin	1107	2017-04-13 10:18:17.381	invites-soy-resources
com.atlassian.confluence.plugins.confluence-inline-comments	1108	2017-04-13 10:18:17.381	confluence-inline-resolved-batching
com.atlassian.confluence.plugins.confluence-mobile	1109	2017-04-13 10:18:17.381	dashboard-servlet
com.atlassian.streams	1110	2017-04-13 10:18:17.381	date-az-Cyrl-AZ
com.atlassian.confluence.extra.widgetconnector	1111	2017-04-13 10:18:17.381	twitter
confluence.sections.page.operations	1112	2017-04-13 10:18:17.381	wordexport
com.atlassian.confluence.plugins.confluence-knowledge-base	1113	2017-04-13 10:18:17.381	kb-article-resources
confluence.web.resources	1114	2017-04-13 10:18:17.381	print-styles
com.atlassian.confluence.plugins.confluence-inline-tasks	1115	2017-04-13 10:18:17.381	task-report-blueprint-resources
com.atlassian.confluence.plugins.confluence-email-resources	1116	2017-04-13 10:18:17.381	template-utils-floating-table-1.0.0
com.atlassian.gadgets.opensocial	1117	2017-04-13 10:18:17.381	guice-context-listener
com.atlassian.confluence.plugins.confluence-inline-comments	1118	2017-04-13 10:18:17.381	inlinecomment.sidebar.navigate.previous
com.atlassian.activeobjects.confluence.spi	1119	2017-04-13 10:18:17.381	dialectExractor
com.atlassian.confluence.plugins.confluence-create-content-plugin	1120	2017-04-13 10:18:17.381	removeSpaceListener
com.atlassian.plugins.base-hipchat-integration-plugin	1121	2017-04-13 10:18:17.381	hipchat-webhook
com.atlassian.confluence.plugins.confluence-document-conversion-library	1122	2017-04-13 10:18:17.381	conversionQueueMonitor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1123	2017-04-13 10:18:17.381	hipchat-invite-resources
com.atlassian.streams	1124	2017-04-13 10:18:17.381	applinkService
com.atlassian.plugins.atlassian-plugins-webresource-rest	1125	2017-04-13 10:18:17.381	web-resources-filter
com.atlassian.confluence.plugins.confluence-view-file-macro	1126	2017-04-13 10:18:17.381	view-file-macro-amd-resources
confluence.sections.space.tools	1127	2017-04-13 10:18:17.381	watch-blog
com.atlassian.auiplugin	1128	2017-04-13 10:18:17.381	aui-experimental-avatars
com.atlassian.applinks.applinks-plugin	1129	2017-04-13 10:18:17.381	page-v3
com.atlassian.confluence.keyboardshortcuts	1130	2017-04-13 10:18:17.381	keyboard-shortcuts-dialog-help-menu
com.atlassian.plugins.atlassian-nav-links-plugin	1131	2017-04-13 10:18:17.381	capability-client
com.atlassian.plugin.notifications.notifications-module	1132	2017-04-13 10:18:17.381	product
com.atlassian.confluence.plugins.confluence-previews	1133	2017-04-13 10:18:17.381	confluence-previews-pdf
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1134	2017-04-13 10:18:17.381	appManager
com.atlassian.plugins.authentication.atlassian-authentication-plugin	1135	2017-04-13 10:18:17.381	confluence-authentication-filter
com.atlassian.confluence.plugins.confluence-license-banner	1136	2017-04-13 10:18:17.381	suppressStp1
com.atlassian.plugins.atlassian-nav-links-plugin	1137	2017-04-13 10:18:17.381	cacheFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1138	2017-04-13 10:18:17.381	confluenceUserI18nResolver
com.atlassian.confluence.plugins.search.confluence-search	1139	2017-04-13 10:18:17.381	disabledContentTypeFilterFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1140	2017-04-13 10:18:17.381	pluginRequestNotificationChecker
confluence.sections.space.admin	1141	2017-04-13 10:18:17.381	trash
com.atlassian.auiplugin	1142	2017-04-13 10:18:17.381	aui-page-suite
com.atlassian.streams	1143	2017-04-13 10:18:17.381	rest-filter
confluence.sections.space.tools	1144	2017-04-13 10:18:17.381	space-attachments
com.atlassian.streams	1145	2017-04-13 10:18:17.381	userManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1146	2017-04-13 10:18:17.381	upm-dac-landing-page-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1147	2017-04-13 10:18:17.381	pluginControlHandlerRegistry
com.atlassian.confluence.plugins.gadgets	1148	2017-04-13 10:18:17.381	gadgetFeedReaderFactory
com.atlassian.support.stp	1149	2017-04-13 10:18:17.381	renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1150	2017-04-13 10:18:17.381	requests-servlet
com.atlassian.applinks.applinks-plugin	1151	2017-04-13 10:18:17.381	feature-oauth-dance
com.atlassian.applinks.applinks-plugin	1152	2017-04-13 10:18:17.381	auth-config-css
com.atlassian.confluence.plugins.confluence-business-blueprints	1153	2017-04-13 10:18:17.381	sharelinks-page
com.atlassian.auiplugin	1154	2017-04-13 10:18:17.381	aui-experimental-badge
com.atlassian.confluence.plugins.confluence-software-project	1155	2017-04-13 10:18:17.381	sp-space-file-lists-template
com.atlassian.confluence.plugins.confluence-lookandfeel	1156	2017-04-13 10:18:17.381	sitelogo-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1157	2017-04-13 10:18:17.381	blogpost-edited-notification-template-body
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	1158	2017-04-13 10:18:17.381	remote-view-page-web-css-resource
confluence.sections.admin	1159	2017-04-13 10:18:17.381	license
com.atlassian.applinks.applinks-plugin	1160	2017-04-13 10:18:17.381	list-application-links
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1161	2017-04-13 10:18:17.381	pluginLicenseEventPublisherRegistry
com.atlassian.support.healthcheck.support-healthcheck-plugin	1162	2017-04-13 10:18:17.381	supportHealthCheckManager
com.atlassian.confluence.plugins.confluence-easyuser-admin	1163	2017-04-13 10:18:17.381	wikiStyleRenderer
com.atlassian.auiplugin	1164	2017-04-13 10:18:17.381	layer
com.atlassian.confluence.plugins.confluence-user-profile	1165	2017-04-13 10:18:17.381	user-avatar-resource-filter
com.atlassian.support.stp	1166	2017-04-13 10:18:17.381	stp-license-banner-data
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1167	2017-04-13 10:18:17.381	urlReadingWebResourceUrlBuilder
com.atlassian.confluence.plugins.confluence-labels	1168	2017-04-13 10:18:17.381	labels-resources
confluence.macros.basic	1169	2017-04-13 10:18:17.381	noformat
com.atlassian.applinks.applinks-plugin	1170	2017-04-13 10:18:17.381	xsrfTokenAccessor
confluence.extractors.core	1171	2017-04-13 10:18:17.381	spaceDescriptionUserNameExtractor
confluence.content.action.menu	1172	2017-04-13 10:18:17.381	secondary
confluence.content.action.menu	1173	2017-04-13 10:18:17.381	move-page
com.atlassian.streams.confluence.inlineactions	1174	2017-04-13 10:18:17.381	actionHandlers
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1175	2017-04-13 10:18:17.381	upm-manage-plugins-resources
com.atlassian.streams	1176	2017-04-13 10:18:17.381	date-sms-FI
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1177	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.confluence.plugins.confluence-view-file-macro	1178	2017-04-13 10:18:17.381	view-file-macro-editor-resources
com.atlassian.applinks.applinks-plugin	1179	2017-04-13 10:18:17.381	generic
com.atlassian.confluence.plugins.confluence-mentions-plugin	1180	2017-04-13 10:18:17.381	mention-notification-template
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1181	2017-04-13 10:18:17.381	openFilesHealthCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1182	2017-04-13 10:18:17.381	dataSourceFactory
com.atlassian.applinks.applinks-plugin	1183	2017-04-13 10:18:17.381	model-applink
confluence.listeners.core	1184	2017-04-13 10:18:17.381	createUserNotificationsListener
com.atlassian.confluence.plugins.confluence-quicknav	1185	2017-04-13 10:18:17.381	quicknav-panel
com.atlassian.streams.confluence	1186	2017-04-13 10:18:17.381	date-de-LU
com.atlassian.confluence.plugins.confluence-knowledge-base	1187	2017-04-13 10:18:17.381	salDarkFeatureManager
com.atlassian.applinks.applinks-cors-plugin	1188	2017-04-13 10:18:17.381	i18nResolver
confluence.macros.advanced	1189	2017-04-13 10:18:17.381	xhtml-excerpt-include
com.atlassian.plugins.base-hipchat-integration-plugin	1190	2017-04-13 10:18:17.381	inviteServlet
confluence.admin.user	1191	2017-04-13 10:18:17.381	browse-users-tab-search
confluence.extra.masterdetail	1192	2017-04-13 10:18:17.381	clearCacheUpgradeTask
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1193	2017-04-13 10:18:17.381	userManager
com.atlassian.confluence.plugins.confluence-email-resources	1194	2017-04-13 10:18:17.381	view-page-email-call-to-action
confluence.macros.basic	1195	2017-04-13 10:18:17.381	loremipsum
com.atlassian.streams.actions	1196	2017-04-13 10:18:17.381	actionHandlerAccessor
com.atlassian.streams.confluence	1197	2017-04-13 10:18:17.381	date-id-ID
com.atlassian.confluence.plugins.confluence-email-resources	1198	2017-04-13 10:18:17.381	chrome-template
com.atlassian.streams.confluence	1199	2017-04-13 10:18:17.381	date-sw-KE
com.atlassian.applinks.applinks-plugin	1200	2017-04-13 10:18:17.381	feature-applink-status
com.atlassian.plugin.jslibs	1201	2017-04-13 10:18:17.381	backbone-1.0.0-factory
com.atlassian.applinks.applinks-cors-plugin	1202	2017-04-13 10:18:17.381	requestFactory
confluence.extra.information	1203	2017-04-13 10:18:17.381	xhtml-tip
com.atlassian.analytics.analytics-client	1204	2017-04-13 10:18:17.381	pluginEventManager
com.atlassian.applinks.applinks-oauth-plugin	1205	2017-04-13 10:18:17.381	oAuthConfigListener
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	1206	2017-04-13 10:18:17.381	rpv-serviceDeskExternalCustomerServletFilter-component
com.atlassian.streams.confluence	1207	2017-04-13 10:18:17.381	date-de-LI
com.atlassian.analytics.analytics-client	1208	2017-04-13 10:18:17.381	schedulerComponent
com.atlassian.applinks.applinks-plugin	1209	2017-04-13 10:18:17.381	redirectController
com.atlassian.confluence.plugins.confluence-create-content-plugin	1210	2017-04-13 10:18:17.381	ao
com.atlassian.plugin.notifications.notifications-module	1211	2017-04-13 10:18:17.381	passwordEncrypter
com.atlassian.support.stp	1212	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.streams.confluence	1213	2017-04-13 10:18:17.381	date-sma-NO
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1214	2017-04-13 10:18:17.381	jdkHealthCheck
confluence.web.panel.renderers	1215	2017-04-13 10:18:17.381	confluenceAwareWebPanelRenderer
com.atlassian.confluence.keyboardshortcuts	1216	2017-04-13 10:18:17.381	linktopage
com.atlassian.confluence.plugins.confluence-image-attributes	1217	2017-04-13 10:18:17.381	image-properties-tab-attributes
com.atlassian.mywork.mywork-confluence-host-plugin	1218	2017-04-13 10:18:17.381	task-dao
com.atlassian.streams.confluence	1219	2017-04-13 10:18:17.381	uriProvider
com.atlassian.confluence.plugins.recently-viewed-plugin	1220	2017-04-13 10:18:17.381	tx-processor
com.atlassian.applinks.applinks-cors-plugin	1221	2017-04-13 10:18:17.381	webSudoManager
com.atlassian.plugins.authentication.atlassian-authentication-plugin	1222	2017-04-13 10:18:17.381	authentication-config-rest
com.atlassian.auiplugin	1223	2017-04-13 10:18:17.381	aui-select2
com.atlassian.applinks.applinks-plugin	1224	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.oauth.serviceprovider	1225	2017-04-13 10:18:17.381	serviceProviderFactory
com.atlassian.querylang.confluence-cql-plugin	1226	2017-04-13 10:18:17.381	space-title-field
com.atlassian.confluence.plugins.confluence-onboarding	1227	2017-04-13 10:18:17.381	confluence-efi-rest
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1228	2017-04-13 10:18:17.381	hipchat-resources
com.atlassian.confluence.plugins.confluence-inline-comments	1229	2017-04-13 10:18:17.381	sidebar-view
com.atlassian.streams.confluence	1230	2017-04-13 10:18:17.381	formatSettingsManager
com.atlassian.confluence.plugins.confluence-edge-index	1231	2017-04-13 10:18:17.381	rest
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1232	2017-04-13 10:18:17.381	velocity-1.6-template-renderer-factory
com.atlassian.plugins.atlassian-nps-plugin	1233	2017-04-13 10:18:17.381	atlassian-nps-plugin-resources
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1234	2017-04-13 10:18:17.381	atlassian-cluster-monitoring
com.atlassian.confluence.plugins.soy	1235	2017-04-13 10:18:17.381	soy-format-time-function
com.atlassian.confluence.plugins.confluence-onboarding	1236	2017-04-13 10:18:17.381	webItemService
com.atlassian.confluence.plugins.confluence-email-resources	1237	2017-04-13 10:18:17.381	view-blogpost-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	1238	2017-04-13 10:18:17.381	notification-templates-comment-add-2.0.0
com.atlassian.streams	1239	2017-04-13 10:18:17.381	date-de-AT
com.atlassian.confluence.plugins.quickedit	1240	2017-04-13 10:18:17.381	editor-view-resources
confluence.extra.masterdetail	1241	2017-04-13 10:18:17.381	detailssummary
com.atlassian.streams	1242	2017-04-13 10:18:17.381	feedSanitizer
com.atlassian.auiplugin	1243	2017-04-13 10:18:17.381	aui-experimental-page-layout
com.atlassian.auiplugin	1244	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-custom-create-view
com.atlassian.confluence.extra.officeconnector	1245	2017-04-13 10:18:17.381	wordimportresource
com.atlassian.confluence.plugins.confluence-view-file-macro	1246	2017-04-13 10:18:17.381	filePlaceholderGeneratorServlet
com.atlassian.streams	1247	2017-04-13 10:18:17.381	date-kk-KZ
com.atlassian.confluence.plugins.whatsnew	1248	2017-04-13 10:18:17.381	whatsNewManager
com.atlassian.streams.confluence	1249	2017-04-13 10:18:17.381	date-ru-RU
com.atlassian.confluence.plugins.confluence-paste	1250	2017-04-13 10:18:17.381	autoconvert-linkedin-links
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1251	2017-04-13 10:18:17.381	manifestoHashAdapter
com.atlassian.confluence.plugins.confluence-onboarding	1252	2017-04-13 10:18:17.381	storage-service
confluence.extra.webdav	1253	2017-04-13 10:18:17.381	contentJobQueueExecutorTrigger
com.atlassian.confluence.plugins.confluence-like	1254	2017-04-13 10:18:17.381	notificationStoreService
tac.confluence.languages.pt_BR	1255	2017-04-13 10:18:17.381	pt_BR
com.atlassian.confluence.plugins.confluence-daily-summary-email	1256	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.mywork.mywork-confluence-provider-plugin	1257	2017-04-13 10:18:17.381	tasksEventListener
com.atlassian.confluence.plugins.confluence-onboarding	1258	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1259	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.confluence.extra.officeconnector	1260	2017-04-13 10:18:17.381	worddavadmin
com.atlassian.auiplugin	1261	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-constants
confluence.sections.admin	1262	2017-04-13 10:18:17.381	colourscheme
confluence.converters.core	1263	2017-04-13 10:18:17.381	user-statuslist-converter
com.atlassian.streams	1264	2017-04-13 10:18:17.381	date-de-CH
confluence.web.resources	1265	2017-04-13 10:18:17.381	es6-promise
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1266	2017-04-13 10:18:17.381	requiredPluginsHealthCheck
com.atlassian.confluence.extra.widgetconnector	1267	2017-04-13 10:18:17.381	ooyalaConfigurationManager
com.atlassian.plugins.atlassian-nav-links-plugin	1268	2017-04-13 10:18:17.381	custom-content-links
confluence.macros.advanced	1269	2017-04-13 10:18:17.381	nonViewableContentTypeSearchFilter
confluence.sections.admin.header	1270	2017-04-13 10:18:17.381	administration
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1271	2017-04-13 10:18:17.381	comment-edited-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-mobile	1272	2017-04-13 10:18:17.381	transactionTemplate
confluence.extra.userlister	1273	2017-04-13 10:18:17.381	defaultUserListManager
com.atlassian.confluence.plugins.confluence-templates	1274	2017-04-13 10:18:17.381	saveTransformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1275	2017-04-13 10:18:17.381	xmlPluginInstallHandler
confluence.user.menu	1276	2017-04-13 10:18:17.381	personal-space
com.atlassian.confluence.plugins.share-page	1277	2017-04-13 10:18:17.381	hipchat-resources-2.0.0
com.atlassian.confluence.plugins.soy	1278	2017-04-13 10:18:17.381	soy-format-date-time-function
com.atlassian.analytics.analytics-client	1279	2017-04-13 10:18:17.381	salHttpContextProvider
com.atlassian.confluence.keyboardshortcuts	1280	2017-04-13 10:18:17.381	goto.space
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1281	2017-04-13 10:18:17.381	upm-purchased-addons-templates
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1282	2017-04-13 10:18:17.381	confluenceNotificationsSpiAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-monitoring-console	1283	2017-04-13 10:18:17.381	monitoringControl
com.atlassian.confluence.plugins.confluence-highlight-actions	1284	2017-04-13 10:18:17.381	permissionManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1285	2017-04-13 10:18:17.381	luceneHealthCheck
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1286	2017-04-13 10:18:17.381	characterSetCheck
com.atlassian.crowd.embedded.admin	1287	2017-04-13 10:18:17.381	confluence-users-default-group
com.atlassian.confluence.extra.widgetconnector	1288	2017-04-13 10:18:17.381	googlemaps
com.atlassian.confluence.plugins.confluence-knowledge-base	1289	2017-04-13 10:18:17.381	kb-space-homepage-template
confluence.macros.advanced	1290	2017-04-13 10:18:17.381	galleryMacroMigrator
com.atlassian.streams.streams-thirdparty-plugin	1291	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.analytics.analytics-client	1292	2017-04-13 10:18:17.381	confluenceSenProvider
com.atlassian.confluence.plugins.confluence-email-resources	1293	2017-04-13 10:18:17.381	view-full-history-email-batch-item
com.atlassian.confluence.plugins.confluence-highlight-actions	1294	2017-04-13 10:18:17.381	markModificationValidator
com.atlassian.confluence.plugins.confluence-content-property-storage	1295	2017-04-13 10:18:17.381	pluginAccessor
confluence.user.hover.menu	1296	2017-04-13 10:18:17.381	user-profile
com.atlassian.streams.confluence	1297	2017-04-13 10:18:17.381	canCommentPredicateFactory
com.atlassian.streams.confluence	1298	2017-04-13 10:18:17.381	date-sl-SI
confluence.extra.jira	1299	2017-04-13 10:18:17.381	amd-support
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1300	2017-04-13 10:18:17.381	forgot-password-notification-transformer
confluence.extra.impresence2	1301	2017-04-13 10:18:17.381	wildfire
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1302	2017-04-13 10:18:17.381	linkBuilderContextItem
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1303	2017-04-13 10:18:17.381	systemInformationService
com.atlassian.gadgets.publisher	1304	2017-04-13 10:18:17.381	util
confluence.extra.jira	1305	2017-04-13 10:18:17.381	two-dimensional-chart-show-more-renderer
confluence.sections.space.advanced	1306	2017-04-13 10:18:17.381	stopwatchingblogs
confluence.listeners.core	1307	2017-04-13 10:18:17.381	stylesheetChangeListener
com.atlassian.auiplugin	1308	2017-04-13 10:18:17.381	binders
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1309	2017-04-13 10:18:17.381	emoticonEditorUnmarshaller
com.atlassian.mywork.mywork-confluence-host-plugin	1310	2017-04-13 10:18:17.381	registration-service
com.atlassian.analytics.analytics-client	1311	2017-04-13 10:18:17.381	compatibilityPluginScheduler
com.atlassian.streams	1312	2017-04-13 10:18:17.381	date-ar-AE
com.atlassian.favicon.confluence-custom-favicon-plugin	1313	2017-04-13 10:18:17.381	faviconInterceptor
com.atlassian.auiplugin	1314	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-filter-by-search
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1315	2017-04-13 10:18:17.381	clustering-resource
com.atlassian.streams	1316	2017-04-13 10:18:17.381	date-zh-MO
com.atlassian.confluence.plugins.confluence-email-tracker	1317	2017-04-13 10:18:17.381	emailUrlValidator
com.atlassian.confluence.plugins.confluence-quicknav	1318	2017-04-13 10:18:17.381	quicknav-resources
com.atlassian.streams	1319	2017-04-13 10:18:17.381	date-tr-TR
com.atlassian.querylang.confluence-cql-plugin	1320	2017-04-13 10:18:17.381	container-query-mapper
com.atlassian.confluence.plugins.confluence-create-content-plugin	1321	2017-04-13 10:18:17.381	indexPageManager
com.atlassian.auiplugin	1322	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table
com.atlassian.confluence.plugins.confluence-inline-tasks	1323	2017-04-13 10:18:17.381	tasks-notification
com.atlassian.confluence.plugins.confluence-email-resources	1324	2017-04-13 10:18:17.381	view-content-email-footer-item
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	1325	2017-04-13 10:18:17.381	common-soy
com.atlassian.plugins.atlassian-whitelist-core-plugin	1326	2017-04-13 10:18:17.381	cacheManager
com.atlassian.confluence.plugins.confluence-inline-comments	1327	2017-04-13 10:18:17.381	inlinecomment.sidebar.close
com.atlassian.streams.confluence	1328	2017-04-13 10:18:17.381	date-cy-GB
confluence.web.resources	1329	2017-04-13 10:18:17.381	syntaxhighlighter-all
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1330	2017-04-13 10:18:17.381	license-receipt-servlet
com.atlassian.confluence.plugins.confluence-space-ia	1331	2017-04-13 10:18:17.381	header-spaces-directory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1332	2017-04-13 10:18:17.381	userSettingsPanel
com.atlassian.confluence.plugins.confluence-paste	1333	2017-04-13 10:18:17.381	autoconvert-shortcut-links
com.atlassian.plugins.editor	1334	2017-04-13 10:18:17.381	sections
com.atlassian.auiplugin	1335	2017-04-13 10:18:17.381	aui-tooltips
confluence.listeners.core	1336	2017-04-13 10:18:17.381	databaseLikesRemovalListener
com.atlassian.confluence.plugins.confluence-software-project	1337	2017-04-13 10:18:17.381	sp-space-retrospectives-template
confluence.macros.dashboard	1338	2017-04-13 10:18:17.381	velocity-renderer
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1339	2017-04-13 10:18:17.381	internalAdminCheck
com.atlassian.auiplugin	1340	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-form-notification
com.atlassian.confluence.plugins.confluence-onboarding	1341	2017-04-13 10:18:17.381	onboarding
confluence.web.resources	1342	2017-04-13 10:18:17.381	global-permissions-inline-dialog
com.atlassian.confluence.plugins.confluence-nav-links	1343	2017-04-13 10:18:17.381	navlinksProjectManager
com.atlassian.confluence.extra.flyingpdf	1344	2017-04-13 10:18:17.381	flyingPdfExporterService
com.atlassian.confluence.plugins.confluence-email-resources	1345	2017-04-13 10:18:17.381	template-utils-render-web-panels-1.0.0
com.atlassian.streams.confluence	1346	2017-04-13 10:18:17.381	date-de-CH
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1347	2017-04-13 10:18:17.381	confluence-webpanel-resources
com.atlassian.confluence.plugins.confluence-email-resources	1348	2017-04-13 10:18:17.381	content-templates-move-page-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-fixed-headers	1349	2017-04-13 10:18:17.381	confluence-fixed-headers-editor-preview-resources
confluence.macros.advanced	1350	2017-04-13 10:18:17.381	content-by-user
confluence.macros.dashboard	1351	2017-04-13 10:18:17.381	spaces
com.atlassian.healthcheck.atlassian-healthcheck	1352	2017-04-13 10:18:17.381	healthCheckRest-filter
com.atlassian.streams	1353	2017-04-13 10:18:17.381	streamsGadgetResources
com.atlassian.auiplugin	1354	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-truncating-progressive-data-set
com.atlassian.applinks.applinks-basicauth-plugin	1355	2017-04-13 10:18:17.381	adminUIAuthenticator
confluence.extra.jira	1356	2017-04-13 10:18:17.381	proxy-js
com.atlassian.mywork.mywork-common-plugin	1357	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1358	2017-04-13 10:18:17.381	hostLicenseUpdatedEventListener
confluence.extra.masterdetail	1359	2017-04-13 10:18:17.381	contentRetriever
com.atlassian.auiplugin	1360	2017-04-13 10:18:17.381	jquery-ui-other
com.atlassian.confluence.plugins.confluence-templates	1361	2017-04-13 10:18:17.381	list-global-templates-resources
com.atlassian.confluence.plugins.confluence-files	1362	2017-04-13 10:18:17.381	fileAutowatchEventListener
confluence.user.hover.menu	1363	2017-04-13 10:18:17.381	secondary
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	1364	2017-04-13 10:18:17.381	userManager
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	1365	2017-04-13 10:18:17.381	PluginUsage-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1366	2017-04-13 10:18:17.381	certificateFactory
com.atlassian.confluence.plugins.confluence-like	1367	2017-04-13 10:18:17.381	actions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1368	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.confluence-mentions-plugin	1369	2017-04-13 10:18:17.381	help-dialog-extension
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1370	2017-04-13 10:18:17.381	content-type-icons
com.atlassian.confluence.plugins.confluence-inline-tasks	1371	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.confluence-create-content-plugin	1372	2017-04-13 10:18:17.381	contentTemplateService
com.atlassian.confluence.extra.officeconnector	1373	2017-04-13 10:18:17.381	slide-viewer-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	1374	2017-04-13 10:18:17.381	documentationBeanFactory
com.atlassian.confluence.plugins.confluence-file-notifications	1375	2017-04-13 10:18:17.381	userAccessor
com.atlassian.streams.confluence	1376	2017-04-13 10:18:17.381	date-de-DE
com.atlassian.auiplugin	1377	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-enforcer
com.atlassian.applinks.applinks-oauth-plugin	1378	2017-04-13 10:18:17.381	consumerService
com.atlassian.confluence.plugins.confluence-like	1379	2017-04-13 10:18:17.381	like-created-mail-batch-notification-processor
com.atlassian.plugin.notifications.notifications-module	1380	2017-04-13 10:18:17.381	userNotificationSettingsServlet
confluence.listeners.core	1381	2017-04-13 10:18:17.381	notification-removal-listener
confluence.listeners.core	1382	2017-04-13 10:18:17.381	createInitialContentListener
com.atlassian.streams	1383	2017-04-13 10:18:17.381	date-se-SE
com.atlassian.confluence.plugins.confluence-knowledge-base	1384	2017-04-13 10:18:17.381	kb-troubleshooting-article
com.atlassian.confluence.plugins.recently-viewed-plugin	1385	2017-04-13 10:18:17.381	recentlyViewedDao
com.atlassian.healthcheck.atlassian-healthcheck	1386	2017-04-13 10:18:17.381	healthCheckCorsDefaults
confluence.search.lucene.boosting	1387	2017-04-13 10:18:17.381	boostPreferredSpace
com.atlassian.confluence.plugins.confluence-email-resources	1388	2017-04-13 10:18:17.381	notification-templates-blogpost-created-2.0.0
confluence.extractors.core	1389	2017-04-13 10:18:17.381	pageContentEntityObjectExtractor
com.atlassian.plugins.base-hipchat-integration-plugin-api	1390	2017-04-13 10:18:17.381	underscore-amd
confluence.extra.jira	1391	2017-04-13 10:18:17.381	jira
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1392	2017-04-13 10:18:17.381	page-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-inline-tasks	1393	2017-04-13 10:18:17.381	task-report-blueprint
com.atlassian.analytics.analytics-client	1394	2017-04-13 10:18:17.381	darkFeatureManager
com.atlassian.streams.confluence	1395	2017-04-13 10:18:17.381	date-fi-FI
com.atlassian.confluence.plugins.confluence-knowledge-base	1396	2017-04-13 10:18:17.381	rest-filter
com.atlassian.oauth.consumer.sal	1397	2017-04-13 10:18:17.381	keyPairFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1398	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.confluence-dashboard	1399	2017-04-13 10:18:17.381	dashboardContext
com.atlassian.confluence.plugins.confluence-inline-comments	1400	2017-04-13 10:18:17.381	notification-transformer-reply
confluence.web.resources	1401	2017-04-13 10:18:17.381	admin-tasklist
com.atlassian.confluence.editor	1402	2017-04-13 10:18:17.381	macro-heading
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1403	2017-04-13 10:18:17.381	userAccessor
com.atlassian.confluence.extra.officeconnector	1404	2017-04-13 10:18:17.381	importworditem1
confluence.sections.admin	1405	2017-04-13 10:18:17.381	systeminfo
com.atlassian.confluence.ext.newcode-macro-plugin	1406	2017-04-13 10:18:17.381	sh-theme-midnight
confluence.renderer.components	1407	2017-04-13 10:18:17.381	html-escape
com.atlassian.support.healthcheck.support-healthcheck-plugin	1408	2017-04-13 10:18:17.381	threadLimitHealthCheck
com.atlassian.confluence.plugins.gadgets	1409	2017-04-13 10:18:17.381	page-gadget-resources
confluence.sections.create	1410	2017-04-13 10:18:17.381	create-user
com.atlassian.applinks.applinks-basicauth-plugin	1411	2017-04-13 10:18:17.381	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-highlight-actions	1412	2017-04-13 10:18:17.381	pageManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1413	2017-04-13 10:18:17.381	analyticsLogger
com.atlassian.oauth.serviceprovider	1414	2017-04-13 10:18:17.381	authenticationListener
confluence.sections.space	1415	2017-04-13 10:18:17.381	space-operations
com.atlassian.plugins.atlassian-nps-plugin	1416	2017-04-13 10:18:17.381	nps-util
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1417	2017-04-13 10:18:17.381	permissionEnforcer
com.atlassian.confluence.plugins.confluence-email-resources	1418	2017-04-13 10:18:17.381	settingsManager
com.atlassian.confluence.plugins.confluence-email-resources	1419	2017-04-13 10:18:17.381	template-utils-user-link-2.0.0
com.atlassian.confluence.plugins.soy	1420	2017-04-13 10:18:17.381	soy-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1421	2017-04-13 10:18:17.381	page-edited-notification
com.atlassian.confluence.plugins.confluence-create-content-plugin	1422	2017-04-13 10:18:17.381	actions
com.atlassian.confluence.plugins.confluence-sal-plugin	1423	2017-04-13 10:18:17.381	authenticationController
com.atlassian.confluence.plugins.confluence-labels	1424	2017-04-13 10:18:17.381	view-labels-all
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1425	2017-04-13 10:18:17.381	hipChatEmoticonService
com.atlassian.auiplugin	1426	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-jquery-plugins-jquery-aop
confluence.extra.webdav	1427	2017-04-13 10:18:17.381	confluenceResourceFactory
com.atlassian.applinks.applinks-cors-plugin	1428	2017-04-13 10:18:17.381	userManager
com.atlassian.confluence.plugins.analytics-jobs-plugin	1429	2017-04-13 10:18:17.381	periodicEventPublisherJob
com.atlassian.confluence.plugins.confluence-highlight-actions	1430	2017-04-13 10:18:17.381	textCollector
com.atlassian.streams	1431	2017-04-13 10:18:17.381	date-en-029
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1432	2017-04-13 10:18:17.381	whitelistBeanService
com.atlassian.confluence.plugins.confluence-inline-comments	1433	2017-04-13 10:18:17.381	navigation-view
com.atlassian.confluence.plugins.watch-button	1434	2017-04-13 10:18:17.381	rest-filter
confluence.aui.staging	1435	2017-04-13 10:18:17.381	persistable
confluence.extra.attachments	1436	2017-04-13 10:18:17.381	attachments-css
com.atlassian.streams	1437	2017-04-13 10:18:17.381	date-quz-PE
com.atlassian.confluence.restplugin	1438	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.auiplugin	1439	2017-04-13 10:18:17.381	message
com.atlassian.confluence.editor	1440	2017-04-13 10:18:17.381	error-placeholder
confluence.listeners.core	1441	2017-04-13 10:18:17.381	updatePersonalSpaceListener
com.atlassian.confluence.plugins.confluence-like	1442	2017-04-13 10:18:17.381	excerpter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1443	2017-04-13 10:18:17.381	obrPluginInstallHandler
com.atlassian.applinks.applinks-oauth-plugin	1444	2017-04-13 10:18:17.381	auto-configuration-servlet
com.atlassian.confluence.plugins.confluence-dashboard	1445	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.gadgets.opensocial	1446	2017-04-13 10:18:17.381	gadget-spec-not-found-error-servlet
com.atlassian.confluence.plugins.confluence-software-blueprints	1447	2017-04-13 10:18:17.381	retrospectives-blueprint
confluence.extra.confluencerpc	1448	2017-04-13 10:18:17.381	labelsSoapService
com.atlassian.applinks.applinks-trustedapps-plugin	1449	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.confluence.plugins.confluence-create-content-plugin	1450	2017-04-13 10:18:17.381	contentTemplateRefManager
com.atlassian.auiplugin	1451	2017-04-13 10:18:17.381	internal-object-assign-4.0.1-index
com.atlassian.confluence.plugins.confluence-schedule-admin	1452	2017-04-13 10:18:17.381	scheduledjobs
com.atlassian.confluence.plugins.recently-viewed-plugin	1453	2017-04-13 10:18:17.381	recently-viewed-rest-filter
com.atlassian.streams.confluence	1454	2017-04-13 10:18:17.381	date-tn-ZA
com.atlassian.streams	1455	2017-04-13 10:18:17.381	date-de-LI
com.atlassian.confluence.plugins.templates-framework	1456	2017-04-13 10:18:17.381	configure-templates
com.atlassian.plugins.atlassian-nav-links-plugin	1457	2017-04-13 10:18:17.381	application-header-administration-cog-resource
com.atlassian.confluence.plugins.gadgets	1458	2017-04-13 10:18:17.381	whitelistService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1459	2017-04-13 10:18:17.381	page-create-notification
com.atlassian.mywork.mywork-common-plugin	1460	2017-04-13 10:18:17.381	myworkserviceselectorlink
confluence.extra.webdav	1461	2017-04-13 10:18:17.381	clientWriteDenyFilter
com.atlassian.plugins.atlassian-help-tips	1462	2017-04-13 10:18:17.381	helpTipsDao
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1463	2017-04-13 10:18:17.381	selfUpdatePluginAccessor
confluence.web.resources	1464	2017-04-13 10:18:17.381	almond
com.atlassian.confluence.plugins.gadgets	1465	2017-04-13 10:18:17.381	confluence-news-gadget
com.atlassian.support.stp	1466	2017-04-13 10:18:17.381	stp-license-status-resources
com.atlassian.querylang.confluence-cql-plugin	1467	2017-04-13 10:18:17.381	space-field
confluence.renderer.components	1468	2017-04-13 10:18:17.381	strong
com.atlassian.streams	1469	2017-04-13 10:18:17.381	localActivityProviders
com.atlassian.confluence.plugins.confluence-mobile	1470	2017-04-13 10:18:17.381	mobile-can-use-filter
com.atlassian.streams	1471	2017-04-13 10:18:17.381	date-de-LU
com.atlassian.confluence.plugins.view-storage-format	1472	2017-04-13 10:18:17.381	view-comment-storage
com.atlassian.plugin.notifications.notifications-module	1473	2017-04-13 10:18:17.381	notification-medium
confluence.macros.profile	1474	2017-04-13 10:18:17.381	profile
com.atlassian.streams.confluence	1475	2017-04-13 10:18:17.381	xmlOutputFactory
confluence.web.resources	1476	2017-04-13 10:18:17.381	admin
confluence.sections.help	1477	2017-04-13 10:18:17.381	confluence-about
com.atlassian.applinks.applinks-plugin	1478	2017-04-13 10:18:17.381	threadLocalDelegateExecutorFactory
confluence.extra.jira	1479	2017-04-13 10:18:17.381	dialogsJs
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1480	2017-04-13 10:18:17.381	dacidecision-template
com.atlassian.mywork.mywork-common-plugin	1481	2017-04-13 10:18:17.381	unreliable-worker
com.atlassian.streams	1482	2017-04-13 10:18:17.381	date-quz-BO
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1483	2017-04-13 10:18:17.381	outboundWhitelist
com.atlassian.streams	1484	2017-04-13 10:18:17.381	date-se-NO
com.atlassian.integration.jira.jira-integration-plugin	1485	2017-04-13 10:18:17.381	entityLinksService
com.atlassian.confluence.keyboardshortcuts	1486	2017-04-13 10:18:17.381	tinymce.table
confluence.macros.multimedia	1487	2017-04-13 10:18:17.381	flash
com.atlassian.confluence.plugins.confluence-baseurl-plugin	1488	2017-04-13 10:18:17.381	baseurl-resource
confluence.web.resources	1489	2017-04-13 10:18:17.381	people-directory
com.atlassian.confluence.plugins.confluence-space-ia	1490	2017-04-13 10:18:17.381	space-sidebar-xmlrpc
com.atlassian.confluence.editor	1491	2017-04-13 10:18:17.381	editor-resources
com.atlassian.querylang.confluence-cql-plugin	1492	2017-04-13 10:18:17.381	content-id-query-field-mapper
com.atlassian.confluence.ext.newcode-macro-plugin	1493	2017-04-13 10:18:17.381	syntaxhighlighter-init
com.atlassian.gadgets.opensocial	1494	2017-04-13 10:18:17.381	security-token-servlet
confluence.sections.space.admin	1495	2017-04-13 10:18:17.381	importpages
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1496	2017-04-13 10:18:17.381	createPageListener
confluence.search.mappers.lucene	1497	2017-04-13 10:18:17.381	multiTextField
com.atlassian.applinks.applinks-plugin	1498	2017-04-13 10:18:17.381	entityRetriever
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1499	2017-04-13 10:18:17.381	batching-notification-template-body
com.atlassian.confluence.plugins.confluence-email-resources	1500	2017-04-13 10:18:17.381	contentService
com.atlassian.applinks.applinks-trustedapps-plugin	1501	2017-04-13 10:18:17.381	trusted-auto-configuration-servlet
com.atlassian.confluence.plugins.confluence-inline-comments	1502	2017-04-13 10:18:17.381	highlight-view
com.atlassian.activeobjects.confluence.spi	1503	2017-04-13 10:18:17.381	aoSynchronizationManager
com.atlassian.auiplugin	1504	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-focus-manager
com.atlassian.streams	1505	2017-04-13 10:18:17.381	date-zh-SG
com.atlassian.confluence.plugins.confluence-jira-metadata	1506	2017-04-13 10:18:17.381	confluence-jira-metadata-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1507	2017-04-13 10:18:17.381	blogpost-trashed-notification-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1508	2017-04-13 10:18:17.381	jarPluginInstallHandler
com.atlassian.plugins.atlassian-nav-links-plugin	1509	2017-04-13 10:18:17.381	userSettingsService
confluence.extra.jira	1510	2017-04-13 10:18:17.381	servers-filter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1511	2017-04-13 10:18:17.381	fileCleanup
confluence.search.mappers.lucene	1512	2017-04-13 10:18:17.381	title
com.atlassian.confluence.extra.flyingpdf	1513	2017-04-13 10:18:17.381	exportactions
com.atlassian.analytics.analytics-client	1514	2017-04-13 10:18:17.381	js-events
com.atlassian.querylang.confluence-cql-plugin	1515	2017-04-13 10:18:17.381	filesize-query-mapper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1516	2017-04-13 10:18:17.381	hostContextAccessor
com.atlassian.confluence.extra.officeconnector	1517	2017-04-13 10:18:17.381	viewpdf-legacy
com.atlassian.confluence.plugins.confluence-quicknav	1518	2017-04-13 10:18:17.381	quick-nav-rest-filter
confluence.extra.webdav	1519	2017-04-13 10:18:17.381	pageRestoreListener
com.atlassian.streams.confluence	1520	2017-04-13 10:18:17.381	date-kk-KZ
com.atlassian.auiplugin	1521	2017-04-13 10:18:17.381	aui-layer-manager
com.atlassian.confluence.plugins.confluence-knowledge-base	1522	2017-04-13 10:18:17.381	sidebar-icons
com.atlassian.confluence.plugins.confluence-file-notifications	1523	2017-04-13 10:18:17.381	file-content-remove-payload-transformer
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1524	2017-04-13 10:18:17.381	roadmap-bar-dialog-resources
confluence.web.resources	1525	2017-04-13 10:18:17.381	about
com.atlassian.confluence.plugins.confluence-inline-tasks	1526	2017-04-13 10:18:17.381	inlineTasksAnalyticsWhitelist
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1527	2017-04-13 10:18:17.381	licenseTokenStore
confluence.listeners.core	1528	2017-04-13 10:18:17.381	trackbackListener
com.atlassian.confluence.plugins.confluence-email-resources	1529	2017-04-13 10:18:17.381	template-utils-bullet-point-1.0.0
confluence.web.resources	1530	2017-04-13 10:18:17.381	content-styles
com.atlassian.confluence.plugins.whatsnew	1531	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.streams	1532	2017-04-13 10:18:17.381	date-zh-TW
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1533	2017-04-13 10:18:17.381	experiencecanvas-blueprint-item
com.atlassian.confluence.extra.widgetconnector	1534	2017-04-13 10:18:17.381	googlegadgets
com.atlassian.streams	1535	2017-04-13 10:18:17.381	postReplyHandler
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1536	2017-04-13 10:18:17.381	upm-common-licensing
confluence.extractors.core	1537	2017-04-13 10:18:17.381	homePageExtractor
com.atlassian.streams	1538	2017-04-13 10:18:17.381	date-quz-EC
com.atlassian.integration.jira.jira-integration-plugin	1539	2017-04-13 10:18:17.381	jira-error-page
confluence.extractors.core	1540	2017-04-13 10:18:17.381	versionNumberExtractor
com.atlassian.plugins.atlassian-nav-links-plugin	1541	2017-04-13 10:18:17.381	custom-apps
com.atlassian.applinks.applinks-plugin	1542	2017-04-13 10:18:17.381	feature-oauth-picker
com.atlassian.streams	1543	2017-04-13 10:18:17.381	date-ar-DZ
com.atlassian.confluence.plugins.confluence-page-restrictions-dialog	1544	2017-04-13 10:18:17.381	dialog-resources
com.atlassian.plugins.atlassian-nps-plugin	1545	2017-04-13 10:18:17.381	nps-rest-filter
com.atlassian.integration.jira.jira-integration-plugin	1546	2017-04-13 10:18:17.381	applicationLinkService
com.atlassian.support.healthcheck.support-healthcheck-plugin	1547	2017-04-13 10:18:17.381	networkMountHealthCheck
com.atlassian.confluence.plugins.confluence-mobile	1548	2017-04-13 10:18:17.381	app-frame
com.atlassian.confluence.plugins.confluence-create-content-plugin	1549	2017-04-13 10:18:17.381	restrictedUserSpaceCreationStep
confluence.macros.advanced	1550	2017-04-13 10:18:17.381	blog
com.atlassian.streams	1551	2017-04-13 10:18:17.381	date-ar-EG
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1552	2017-04-13 10:18:17.381	impl
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1553	2017-04-13 10:18:17.381	reviewsNotificationsService
com.atlassian.confluence.keyboardshortcuts	1554	2017-04-13 10:18:17.381	tinymce.macro
com.atlassian.streams.confluence	1555	2017-04-13 10:18:17.381	settingsManager
com.atlassian.confluence.plugins.confluence-email-resources	1556	2017-04-13 10:18:17.381	confluenceNotificationPreferenceManager
com.atlassian.streams	1557	2017-04-13 10:18:17.381	date-id-ID
com.atlassian.auiplugin	1558	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-event
com.atlassian.confluence.plugins.confluence-inline-comments	1559	2017-04-13 10:18:17.381	bootstrap
com.atlassian.confluence.plugins.confluence-inline-comments	1560	2017-04-13 10:18:17.381	resolved-comment-view
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1561	2017-04-13 10:18:17.381	upm-common-licensing-templates
com.atlassian.confluence.plugins.confluence-create-content-plugin	1562	2017-04-13 10:18:17.381	watchSpaceCreationStep
com.atlassian.mywork.mywork-confluence-host-plugin	1563	2017-04-13 10:18:17.381	applinkid-service
com.atlassian.confluence.plugins.confluence-edge-index	1564	2017-04-13 10:18:17.381	pluginScheduler
com.atlassian.confluence.plugins.confluence-business-blueprints	1565	2017-04-13 10:18:17.381	sharelinks-urlmacro
com.atlassian.gadgets.publisher	1566	2017-04-13 10:18:17.381	ajs-gadgets-lite
confluence.extractors.core	1567	2017-04-13 10:18:17.381	pluginContentEntityObjectExtractor
com.atlassian.plugins.atlassian-help-tips	1568	2017-04-13 10:18:17.381	common
com.atlassian.confluence.plugins.search.confluence-search	1569	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.confluence.plugins.confluence-email-resources	1570	2017-04-13 10:18:17.381	content-url-function
com.atlassian.applinks.applinks-cors-plugin	1571	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.plugin.jslibs	1572	2017-04-13 10:18:17.381	skate-0.12.6
com.atlassian.plugins.atlassian-nav-links-plugin	1573	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.confluence.plugins.search.confluence-search	1574	2017-04-13 10:18:17.381	actions
com.atlassian.plugin.jslibs	1575	2017-04-13 10:18:17.381	skate-0.12.5
com.atlassian.applinks.applinks-basicauth-plugin	1576	2017-04-13 10:18:17.381	documentationLinker
confluence.sections.space.tools	1577	2017-04-13 10:18:17.381	contenttools
com.atlassian.mywork.mywork-confluence-provider-plugin	1578	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.confluence.contributors	1579	2017-04-13 10:18:17.381	soy-templates
com.atlassian.confluence.plugins.confluence-jira-content	1580	2017-04-13 10:18:17.381	create-jira-content-services-filter
confluence.extractors.core	1581	2017-04-13 10:18:17.381	attachmentOwnerContentTypeChangeExtractor
com.atlassian.confluence.plugins.recently-viewed-plugin	1582	2017-04-13 10:18:17.381	userAccessor
confluence.search.mappers.lucene	1583	2017-04-13 10:18:17.381	lastModifierUserSearchFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	1584	2017-04-13 10:18:17.381	inline-tasks-view
com.atlassian.applinks.applinks-oauth-plugin	1585	2017-04-13 10:18:17.381	serviceProviderConsumerStore
com.atlassian.confluence.plugins.confluence-email-resources	1586	2017-04-13 10:18:17.381	stop-watching-space-email-footer-item
confluence.macros.multimedia	1587	2017-04-13 10:18:17.381	compatibility-multimedia
com.atlassian.streams.confluence	1588	2017-04-13 10:18:17.381	date-de-AT
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1589	2017-04-13 10:18:17.381	whitelist-rest
com.atlassian.confluence.plugins.gadgets	1590	2017-04-13 10:18:17.381	publishedGadgetSpecStore
confluence.sections.admin	1591	2017-04-13 10:18:17.381	configuration
com.atlassian.confluence.contributors	1592	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.confluence.plugins.search.confluence-search	1593	2017-04-13 10:18:17.381	searcherv3
com.atlassian.confluence.extra.widgetconnector	1594	2017-04-13 10:18:17.381	ooyala-web-resources
com.atlassian.applinks.applinks-plugin	1595	2017-04-13 10:18:17.381	helpurl-soy-function
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1596	2017-04-13 10:18:17.381	serverManager
com.atlassian.confluence.plugins.search.confluence-search	1597	2017-04-13 10:18:17.381	searcherv2
com.atlassian.confluence.plugins.confluence-email-resources	1598	2017-04-13 10:18:17.381	notification-templates-comment-edit-2.0.0
com.atlassian.confluence.plugins.gadgets	1599	2017-04-13 10:18:17.381	userAccessor
confluence.sections.create	1600	2017-04-13 10:18:17.381	create-comment
confluence.extra.impresence2	1601	2017-04-13 10:18:17.381	skype-xhtml
com.atlassian.confluence.plugins.confluence-view-file-macro	1602	2017-04-13 10:18:17.381	view-file-macro-editor-content-resources
com.atlassian.confluence.plugins.confluence-labels	1603	2017-04-13 10:18:17.381	view-labels-popular
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1604	2017-04-13 10:18:17.381	notification-templates-healthcheck
confluence.web.resources	1605	2017-04-13 10:18:17.381	user-macro-admin
com.atlassian.confluence.plugins.confluence-edge-index	1606	2017-04-13 10:18:17.381	edgeIndexRecoverer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1607	2017-04-13 10:18:17.381	confluenceQueueTaskManager
com.atlassian.confluence.plugins.confluence-inline-tasks	1608	2017-04-13 10:18:17.381	sortable-table-server-side
com.atlassian.applinks.applinks-basicauth-plugin	1609	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1610	2017-04-13 10:18:17.381	xmlOutputFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1611	2017-04-13 10:18:17.381	pluginLogService
com.atlassian.auiplugin	1612	2017-04-13 10:18:17.381	ajs-gadgets-base
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1613	2017-04-13 10:18:17.381	pluginSystemEventManager
com.atlassian.auiplugin	1614	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-populate-parameters
com.atlassian.confluence.plugins.confluence-email-resources	1615	2017-04-13 10:18:17.381	chrome-template-header-pattern-1.0.0
confluence.macros.advanced	1616	2017-04-13 10:18:17.381	recently-updated-mobile-resources
com.atlassian.confluence.plugins.confluence-edge-index	1617	2017-04-13 10:18:17.381	streamItemFactory
com.atlassian.streams	1618	2017-04-13 10:18:17.381	date-ar-BH
confluence.extra.information	1619	2017-04-13 10:18:17.381	xhtml-info
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1620	2017-04-13 10:18:17.381	featureManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1621	2017-04-13 10:18:17.381	follower-added-notification-template
com.atlassian.auiplugin	1622	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-spin-spin
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	1623	2017-04-13 10:18:17.381	featureDiscoveryRest-filter
confluence.listeners.core	1624	2017-04-13 10:18:17.381	permissions-logging-listener
com.atlassian.confluence.plugins.pagetree	1625	2017-04-13 10:18:17.381	PageHierarchyExtractor
com.atlassian.analytics.analytics-client	1626	2017-04-13 10:18:17.381	whitelistCollector
com.atlassian.streams	1627	2017-04-13 10:18:17.381	date-ar-QA
com.atlassian.gadgets.opensocial	1628	2017-04-13 10:18:17.381	opensocial-rpc-servlet
com.atlassian.auiplugin	1629	2017-04-13 10:18:17.381	aui-checkbox-multiselect
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1630	2017-04-13 10:18:17.381	renderer
com.atlassian.confluence.plugins.confluence-sal-plugin	1631	2017-04-13 10:18:17.381	trustedRequestFactory
com.atlassian.confluence.plugins.confluence-browser-metrics	1632	2017-04-13 10:18:17.381	bigpipe-reporter
com.atlassian.confluence.extra.flyingpdf	1633	2017-04-13 10:18:17.381	pdfResourceManager
com.atlassian.analytics.analytics-client	1634	2017-04-13 10:18:17.381	confluenceAnalyticsPropertyService
com.atlassian.confluence.plugins.gadgets	1635	2017-04-13 10:18:17.381	salUserManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1636	2017-04-13 10:18:17.381	discovery-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1637	2017-04-13 10:18:17.381	xsrfTokenValidator
confluence.web.resources	1638	2017-04-13 10:18:17.381	select-all-row
com.atlassian.confluence.plugins.gadgets	1639	2017-04-13 10:18:17.381	gadgetSpecIdGenerator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1640	2017-04-13 10:18:17.381	upm-osgi
com.atlassian.confluence.plugins.confluence-inline-tasks	1641	2017-04-13 10:18:17.381	notification-styles
com.atlassian.applinks.applinks-trustedapps-plugin	1642	2017-04-13 10:18:17.381	trustedContextFilter
com.atlassian.confluence.plugins.confluence-previews	1643	2017-04-13 10:18:17.381	minimode-plugin
com.atlassian.applinks.applinks-plugin	1644	2017-04-13 10:18:17.381	callbackParameter
com.atlassian.confluence.plugins.gadgets	1645	2017-04-13 10:18:17.381	gadget-search-resources
confluence.extra.masterdetail	1646	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.contributors	1647	2017-04-13 10:18:17.381	contributors-xhtml
com.atlassian.confluence.ext.newcode-macro-plugin	1648	2017-04-13 10:18:17.381	sh-theme-emacs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1649	2017-04-13 10:18:17.381	auditLogPipQueue
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1650	2017-04-13 10:18:17.381	localeManager
com.atlassian.auiplugin	1651	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-tooltip
confluence.web.resources	1652	2017-04-13 10:18:17.381	content-body-with-styles
confluence.extra.masterdetail	1653	2017-04-13 10:18:17.381	cqlSearchService
confluence.extra.information	1654	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.auiplugin	1655	2017-04-13 10:18:17.381	aui-experimental-labels
confluence.converters.core	1656	2017-04-13 10:18:17.381	user-converter
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1657	2017-04-13 10:18:17.381	bandanaManager
com.atlassian.mywork.mywork-confluence-provider-plugin	1658	2017-04-13 10:18:17.381	inlineTaskService
com.atlassian.streams.confluence	1659	2017-04-13 10:18:17.381	date-fa-IR
confluence.macros.advanced	1660	2017-04-13 10:18:17.381	xhtml-listlabels
com.atlassian.confluence.plugins.confluence-software-blueprints	1661	2017-04-13 10:18:17.381	jirareports-services-filter
com.atlassian.confluence.plugins.share-page	1662	2017-04-13 10:18:17.381	share-user-recipients-provider
com.atlassian.auiplugin	1663	2017-04-13 10:18:17.381	jquery-ui-interactions
com.atlassian.confluence.plugins.confluence-page-layout	1664	2017-04-13 10:18:17.381	pagelayout-content-styles
com.atlassian.confluence.plugins.confluence-request-access-plugin	1665	2017-04-13 10:18:17.381	rest-filter
confluence.macros.core	1666	2017-04-13 10:18:17.381	loremipsum
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1667	2017-04-13 10:18:17.381	comment-edited-notification-transformer
com.atlassian.applinks.applinks-oauth-plugin	1668	2017-04-13 10:18:17.381	add-consumer-manually
com.atlassian.applinks.applinks-plugin	1669	2017-04-13 10:18:17.381	confluence-list-application-links-legacy-url-filter
confluence.sections.space.export.view	1670	2017-04-13 10:18:17.381	spaceexport
com.atlassian.auiplugin	1671	2017-04-13 10:18:17.381	aui-experimental-autocomplete-helpers
com.atlassian.confluence.plugins.confluence-spaces	1672	2017-04-13 10:18:17.381	defaultspaceperms
com.atlassian.support.stp	1673	2017-04-13 10:18:17.381	stpWhitelist
com.atlassian.streams.confluence	1674	2017-04-13 10:18:17.381	attachmentItemFactory
confluence.sections.space	1675	2017-04-13 10:18:17.381	space-administration
com.atlassian.confluence.plugins.drag-and-drop	1676	2017-04-13 10:18:17.381	drag-and-drop-tip
com.atlassian.plugins.atlassian-nav-links-plugin	1677	2017-04-13 10:18:17.381	project-manager
com.atlassian.confluence.plugins.confluence-mentions-plugin	1678	2017-04-13 10:18:17.381	mention-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-onboarding	1679	2017-04-13 10:18:17.381	onboardingNumberOfUsersCheckTrigger
com.atlassian.confluence.plugins.confluence-email-resources	1680	2017-04-13 10:18:17.381	stop-watching-page-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-email-tracker	1681	2017-04-13 10:18:17.381	userAccessor
com.atlassian.confluence.plugins.confluence-spaces	1682	2017-04-13 10:18:17.381	soy-templates
confluence.extra.jira	1683	2017-04-13 10:18:17.381	mobile-browser-resources
confluence.renderer.components	1684	2017-04-13 10:18:17.381	template-parameters
com.atlassian.streams	1794	2017-04-13 10:18:17.381	date-ar-IQ
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1685	2017-04-13 10:18:17.381	selfUpdateController
com.atlassian.confluence.plugins.confluence-software-blueprints	1686	2017-04-13 10:18:17.381	jirareports-statusreport
com.atlassian.applinks.applinks-trustedapps-plugin	1687	2017-04-13 10:18:17.381	trustedAppsOrphanedTrustDetector
com.atlassian.confluence.editor	1688	2017-04-13 10:18:17.381	search-ms-edge
com.atlassian.auiplugin	1689	2017-04-13 10:18:17.381	ajs-backbone
com.atlassian.auiplugin	1690	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-is-clipped
confluence.macros.advanced	1691	2017-04-13 10:18:17.381	search
com.atlassian.streams.confluence	1692	2017-04-13 10:18:17.381	date-he-IL
com.atlassian.confluence.extra.widgetconnector	1693	2017-04-13 10:18:17.381	googlevideo
com.atlassian.streams	1694	2017-04-13 10:18:17.381	date-ar-OM
com.atlassian.applinks.applinks-oauth-plugin	1695	2017-04-13 10:18:17.381	callbackParameter
com.atlassian.querylang.confluence-cql-plugin	1696	2017-04-13 10:18:17.381	parent-field
com.atlassian.auiplugin	1697	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-select-option
com.atlassian.gadgets.directory	1698	2017-04-13 10:18:17.381	directory-config
com.atlassian.auiplugin	1699	2017-04-13 10:18:17.381	aui-experimental-devtools-iconfont
com.atlassian.confluence.plugins.confluence-onboarding	1700	2017-04-13 10:18:17.381	notification-template-less-users
com.atlassian.confluence.plugins.confluence-highlight-actions	1701	2017-04-13 10:18:17.381	selectionStorageFormatModifier
com.atlassian.confluence.plugins.confluence-easyuser-admin	1702	2017-04-13 10:18:17.381	admin-invite-users-panel
com.atlassian.support.healthcheck.support-healthcheck-plugin	1703	2017-04-13 10:18:17.381	userSettingsService
com.atlassian.auiplugin	1704	2017-04-13 10:18:17.381	aui-experimental-page-layout-legacy1
com.atlassian.plugin.jslibs	1705	2017-04-13 10:18:17.381	d3-3.4.13
com.atlassian.confluence.plugins.gadgets	1706	2017-04-13 10:18:17.381	gadget-old
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1707	2017-04-13 10:18:17.381	hipchat-room-context
com.atlassian.confluence.plugins.confluence-email-resources	1708	2017-04-13 10:18:17.381	add-comment-to-content-email-adg-footer-item
com.atlassian.auiplugin	1709	2017-04-13 10:18:17.381	aui-experimental-module-and-header-legacy1
com.atlassian.plugin.jslibs	1710	2017-04-13 10:18:17.381	moment-2.10.3
com.atlassian.plugin.jslibs	1711	2017-04-13 10:18:17.381	brace-2014.09.03-factory
com.atlassian.confluence.plugins.confluence-file-notifications	1712	2017-04-13 10:18:17.381	file-content-update-email-notification-template-body
com.atlassian.plugins.atlassian-project-creation-plugin	1713	2017-04-13 10:18:17.381	project-linking-rest-filter
com.atlassian.plugins.base-hipchat-integration-plugin-api	1714	2017-04-13 10:18:17.381	hipchat-notification-context
com.atlassian.confluence.editor	1715	2017-04-13 10:18:17.381	unknown-attachment-placeholder
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1716	2017-04-13 10:18:17.381	dacidecision-blueprint
com.atlassian.gadgets.directory	1717	2017-04-13 10:18:17.381	directory-config-filter
com.atlassian.confluence.plugins.dialog-wizard	1718	2017-04-13 10:18:17.381	dialog-wizard
com.atlassian.confluence.editor	1719	2017-04-13 10:18:17.381	popup-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1720	2017-04-13 10:18:17.381	asynchronousTaskStatusStore
confluence.web.components	1721	2017-04-13 10:18:17.381	property-panel-css
com.atlassian.oauth.serviceprovider	1722	2017-04-13 10:18:17.381	oauthAuthorizeServlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1723	2017-04-13 10:18:17.381	userManager
com.atlassian.gadgets.opensocial	1724	2017-04-13 10:18:17.381	rpc-relay-servlet
com.atlassian.streams	1725	2017-04-13 10:18:17.381	date-ar-MA
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1726	2017-04-13 10:18:17.381	compatibilityUserManager
crowd.system.passwordencoders	1727	2017-04-13 10:18:17.381	plaintext
com.atlassian.confluence.plugins.confluence-email-resources	1728	2017-04-13 10:18:17.381	stop-watching-all-blogs-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-inline-tasks	1729	2017-04-13 10:18:17.381	show-task-feature-discovery-flag-blogpost
com.atlassian.confluence.plugins.confluence-ui-components	1730	2017-04-13 10:18:17.381	space-page-picker
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1731	2017-04-13 10:18:17.381	confluence-upm-marketplace-menu
com.atlassian.streams	1732	2017-04-13 10:18:17.381	date-ar-LY
com.atlassian.confluence.plugins.confluence-create-content-plugin	1733	2017-04-13 10:18:17.381	spaceEditedTemplatesUpgradeTask
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1734	2017-04-13 10:18:17.381	velocity-1.6-web-panel-renderer-tracker
com.atlassian.confluence.keyboardshortcuts	1735	2017-04-13 10:18:17.381	confluenceKeyboardShortcutsRest-filter
com.atlassian.mywork.mywork-confluence-host-plugin	1736	2017-04-13 10:18:17.381	my-work-rest-filter
com.atlassian.confluence.extra.widgetconnector	1737	2017-04-13 10:18:17.381	web-widget
com.atlassian.auiplugin	2175	2017-04-13 10:18:17.381	ajs-contextpath
com.atlassian.confluence.plugins.confluence-page-banner	1738	2017-04-13 10:18:17.381	content-metadata-page-restrictions-hidden
com.atlassian.confluence.plugins.confluence-mobile	1739	2017-04-13 10:18:17.381	mobile-switch-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1740	2017-04-13 10:18:17.381	differ
com.atlassian.streams	1741	2017-04-13 10:18:17.381	entityLinkService
confluence.extractors.core	1742	2017-04-13 10:18:17.381	labelExtractor
confluence.web.resources	1743	2017-04-13 10:18:17.381	view-user-profile
com.atlassian.confluence.plugins.confluence-mobile	1744	2017-04-13 10:18:17.381	dateEntityFactory
com.atlassian.confluence.plugins.confluence-ui-components	1745	2017-04-13 10:18:17.381	common
confluence.extra.confluencerpc	1746	2017-04-13 10:18:17.381	adminSoapService
confluence.extra.layout	1747	2017-04-13 10:18:17.381	column
com.atlassian.streams	1748	2017-04-13 10:18:17.381	date-ar-LB
com.atlassian.confluence.plugins.drag-and-drop	1749	2017-04-13 10:18:17.381	capabilityService
confluence.content.action.menu	1750	2017-04-13 10:18:17.381	primary
com.atlassian.plugins.atlassian-nav-links-plugin	1751	2017-04-13 10:18:17.381	local-navigation-link-service
confluence.web.resources	1752	2017-04-13 10:18:17.381	common-header-resources
com.atlassian.streams	1753	2017-04-13 10:18:17.381	date-ar-KW
confluence.extra.impresence2	1754	2017-04-13 10:18:17.381	sametime-xhtml
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1755	2017-04-13 10:18:17.381	upmInformation
com.atlassian.applinks.applinks-oauth-plugin	1756	2017-04-13 10:18:17.381	oauth-dance
confluence.extra.jira	1757	2017-04-13 10:18:17.381	singleJiraIssuesMapThreadLocalFilter
confluence.web.components	1758	2017-04-13 10:18:17.381	dom-filter-field
com.atlassian.confluence.extra.flyingpdf	1759	2017-04-13 10:18:17.381	configpdflayout
com.atlassian.confluence.editor	1760	2017-04-13 10:18:17.381	unknown-macro-placeholder
confluence.sections.space.admin	1761	2017-04-13 10:18:17.381	editspacelabels
com.atlassian.plugins.atlassian-nav-links-plugin	1762	2017-04-13 10:18:17.381	transactionTempate
com.atlassian.confluence.extra.officeconnector	1763	2017-04-13 10:18:17.381	editinoffice
com.atlassian.analytics.analytics-client	1764	2017-04-13 10:18:17.381	universal-analytics-filter
com.atlassian.confluence.plugins.gadgets	1765	2017-04-13 10:18:17.381	gadgetLabelManager
confluence.aui.staging	1766	2017-04-13 10:18:17.381	storage-manager
com.atlassian.confluence.plugins.confluence-request-access-plugin	1767	2017-04-13 10:18:17.381	grantAccessPanel
com.atlassian.auiplugin	1768	2017-04-13 10:18:17.381	aui-inline-dialog2
com.atlassian.streams	1769	2017-04-13 10:18:17.381	date-hu-HU
com.atlassian.applinks.applinks-cors-plugin	1770	2017-04-13 10:18:17.381	typeAccessor
com.atlassian.mywork.mywork-common-plugin	1771	2017-04-13 10:18:17.381	userManager
com.atlassian.confluence.plugins.confluence-space-ia	1772	2017-04-13 10:18:17.381	collector-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1773	2017-04-13 10:18:17.381	bundledUpdateCheckJob
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1774	2017-04-13 10:18:17.381	pluginSettingsFactory
confluence.web.resources	1775	2017-04-13 10:18:17.381	colors
com.atlassian.confluence.plugins.confluence-browser-metrics	1776	2017-04-13 10:18:17.381	space
com.atlassian.auiplugin	1777	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-trigger
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1778	2017-04-13 10:18:17.381	confluenceUserAccessor
com.atlassian.applinks.applinks-plugin	1779	2017-04-13 10:18:17.381	applinks-authentication-provider
com.atlassian.confluence.plugins.confluence-business-blueprints	1780	2017-04-13 10:18:17.381	sharelinks-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1781	2017-04-13 10:18:17.381	pluginInstallHandlerRegistry
com.atlassian.confluence.restplugin	1782	2017-04-13 10:18:17.381	confluence-rest
confluence.renderer.components	1783	2017-04-13 10:18:17.381	emoticon
com.atlassian.confluence.plugins.confluence-license-rest	1784	2017-04-13 10:18:17.381	license-resource
com.atlassian.confluence.keyboardshortcuts	1785	2017-04-13 10:18:17.381	confluenceKeyboardShortcutsRest
com.atlassian.plugins.base-hipchat-integration-plugin	1786	2017-04-13 10:18:17.381	hipchat-external-page
com.atlassian.auiplugin	1787	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-key-code
com.atlassian.gadgets.oauth.serviceprovider	1788	2017-04-13 10:18:17.381	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-create-content-plugin	1789	2017-04-13 10:18:17.381	httpContext
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1790	2017-04-13 10:18:17.381	userNotificationDefaultsService
com.atlassian.confluence.extra.widgetconnector	1791	2017-04-13 10:18:17.381	tudou
com.atlassian.confluence.plugins.confluence-monitoring-console	1792	2017-04-13 10:18:17.381	stats-resource
com.atlassian.applinks.applinks-oauth-plugin	1793	2017-04-13 10:18:17.381	consumerTokenStoreService
confluence.listeners.core	1795	2017-04-13 10:18:17.381	user-management-logging-listener
com.atlassian.confluence.plugins.confluence-nav-links	1796	2017-04-13 10:18:17.381	capability-content-link
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	1797	2017-04-13 10:18:17.381	synchrony-plugin-analytics-whitelist
com.atlassian.applinks.applinks-cors-plugin	1798	2017-04-13 10:18:17.381	servletMessageFactory
confluence.web.resources	1799	2017-04-13 10:18:17.381	setup-license
com.atlassian.mywork.mywork-confluence-host-plugin	1800	2017-04-13 10:18:17.381	mw-login-miniview
com.atlassian.confluence.plugins.confluence-edge-index	1801	2017-04-13 10:18:17.381	build-edge-index-servlet
com.atlassian.streams	1802	2017-04-13 10:18:17.381	date-ar-JO
com.atlassian.confluence.ext.newcode-macro-plugin	1803	2017-04-13 10:18:17.381	sh-theme-default
com.atlassian.confluence.plugins.confluence-nav-links	1804	2017-04-13 10:18:17.381	home
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1805	2017-04-13 10:18:17.381	contentEntityManager
com.atlassian.plugins.atlassian-nav-links-plugin	1806	2017-04-13 10:18:17.381	salDarkFeatureService
com.atlassian.confluence.plugins.confluence-create-content-plugin	1807	2017-04-13 10:18:17.381	iconUrlProvider
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1808	2017-04-13 10:18:17.381	roadmap-editor-view-resources
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1809	2017-04-13 10:18:17.381	moduleFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1810	2017-04-13 10:18:17.381	dispatchService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1811	2017-04-13 10:18:17.381	roleBasedPluginDescriptorMetadataCache
com.atlassian.mywork.mywork-confluence-host-plugin	1812	2017-04-13 10:18:17.381	applicationLinkService
com.atlassian.confluence.plugins.confluence-browser-metrics	1813	2017-04-13 10:18:17.381	server-duration
com.atlassian.plugins.confluence-tdm-merger	1814	2017-04-13 10:18:17.381	xmlEventReaderFactory
com.atlassian.streams	1815	2017-04-13 10:18:17.381	date-ar-YE
com.atlassian.streams	1816	2017-04-13 10:18:17.381	inline-activity-stream-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1817	2017-04-13 10:18:17.381	spacePermissionManager
com.atlassian.confluence.plugins.confluence-sortable-tables	1818	2017-04-13 10:18:17.381	sortable-table-resources
com.atlassian.auiplugin	1819	2017-04-13 10:18:17.381	aui-experimental-date-picker
com.atlassian.confluence.editor	1820	2017-04-13 10:18:17.381	editor-css-resources
com.atlassian.labs.atlassian-bot-killer	1821	2017-04-13 10:18:17.381	userManager
com.atlassian.plugins.atlassian-whitelist-core-plugin	1822	2017-04-13 10:18:17.381	whitelistService
com.atlassian.oauth.serviceprovider	1823	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.mywork.mywork-confluence-host-plugin	1824	2017-04-13 10:18:17.381	confluenceCommonHeaderIcon
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1825	2017-04-13 10:18:17.381	hipchat-js-resources
com.atlassian.streams	1826	2017-04-13 10:18:17.381	xml2json
com.atlassian.confluence.plugins.confluence-inline-tasks	1827	2017-04-13 10:18:17.381	inline-tasks-macro-browser
com.atlassian.confluence.keyboardshortcuts	1828	2017-04-13 10:18:17.381	tinymce.file
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1829	2017-04-13 10:18:17.381	instanceHealthCopyEolFileTask
com.atlassian.integration.jira.jira-integration-plugin	1830	2017-04-13 10:18:17.381	jira-issues-dialog
com.atlassian.confluence.plugins.confluence-file-notifications	1831	2017-04-13 10:18:17.381	confluenceAccessManager
com.atlassian.applinks.applinks-oauth-plugin	1832	2017-04-13 10:18:17.381	confluence-inbound-oauth
com.atlassian.applinks.applinks-plugin	1833	2017-04-13 10:18:17.381	webInterfaceManager
com.atlassian.streams.confluence	1834	2017-04-13 10:18:17.381	evictor
com.atlassian.confluence.plugins.confluence-space-ia	1835	2017-04-13 10:18:17.381	header-spaces-link
confluence.search.mappers.lucene	1836	2017-04-13 10:18:17.381	archivedSpacesSearchFilter
com.atlassian.confluence.keyboardshortcuts	1837	2017-04-13 10:18:17.381	tinymce.numlist
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1838	2017-04-13 10:18:17.381	maxAllowedPacketsCheck
com.atlassian.confluence.plugins.confluence-create-content-plugin	1839	2017-04-13 10:18:17.381	webInterfaceManager
com.atlassian.streams	1840	2017-04-13 10:18:17.381	date-nn-NO
com.atlassian.templaterenderer.api	1841	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.confluence.plugins.confluence-like	1842	2017-04-13 10:18:17.381	like-plugin-icons
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1843	2017-04-13 10:18:17.381	comment-created-mail-batch-notification-processor
confluence.extra.jira	1844	2017-04-13 10:18:17.381	refresh-resources
com.atlassian.confluence.extra.officeconnector	1845	2017-04-13 10:18:17.381	htmlslideservlet
com.atlassian.confluence.plugins.confluence-mentions-plugin	1846	2017-04-13 10:18:17.381	mention-email-view-page-link
com.atlassian.confluence.extra.officeconnector	1847	2017-04-13 10:18:17.381	viewppt
com.atlassian.streams.streams-thirdparty-plugin	2176	2017-04-13 10:18:17.381	ao
com.atlassian.confluence.plugins.confluence-nav-links	1848	2017-04-13 10:18:17.381	sidebar-link-service
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1849	2017-04-13 10:18:17.381	ao
com.atlassian.confluence.plugins.confluence-space-ia	1850	2017-04-13 10:18:17.381	avatar-picker
com.atlassian.confluence.plugins.confluence-like	1851	2017-04-13 10:18:17.381	manage-notifications-email-footer-item
com.atlassian.plugins.authentication.atlassian-authentication-plugin	1852	2017-04-13 10:18:17.381	save-fragment
com.atlassian.confluence.plugins.confluence-space-ia	1853	2017-04-13 10:18:17.381	main-links
com.atlassian.confluence.plugins.confluence-mentions-plugin	1854	2017-04-13 10:18:17.381	new-content-mention-payload-transformer
confluence.lifecycle.core	1855	2017-04-13 10:18:17.381	sysinfodump
confluence.search.mappers.lucene	1856	2017-04-13 10:18:17.381	filename
com.atlassian.confluence.plugins.confluence-inline-comments	1857	2017-04-13 10:18:17.381	inline-notification-resolved
com.atlassian.webhooks.atlassian-webhooks-plugin	1858	2017-04-13 10:18:17.381	webhooksRest-filter
confluence.web.resources	1859	2017-04-13 10:18:17.381	macro-browser-sprites
confluence.editor.actions	1860	2017-04-13 10:18:17.381	insert
com.atlassian.analytics.analytics-client	1861	2017-04-13 10:18:17.381	analytics-rest
confluence.sections.attachments	1862	2017-04-13 10:18:17.381	remove-version
tac.confluence.languages.de_DE	1863	2017-04-13 10:18:17.381	de_DE
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1864	2017-04-13 10:18:17.381	defaultNotificationUserService
com.atlassian.confluence.plugins.confluence-onboarding	1865	2017-04-13 10:18:17.381	onboardingSpaceCheckJob
confluence.admin.user	1866	2017-04-13 10:18:17.381	entitypicker
com.atlassian.auiplugin	1867	2017-04-13 10:18:17.381	internal-aui-browser
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1868	2017-04-13 10:18:17.381	blogpost-moved-notification
com.atlassian.confluence.plugins.confluence-dashboard	1869	2017-04-13 10:18:17.381	onboardingService
com.atlassian.mywork.mywork-confluence-provider-plugin	1870	2017-04-13 10:18:17.381	confluenceActionService
confluence.renderer.components	1871	2017-04-13 10:18:17.381	emphases
com.atlassian.oauth.serviceprovider.sal	1872	2017-04-13 10:18:17.381	clock
com.atlassian.streams	1873	2017-04-13 10:18:17.381	date-zh-CN
confluence.web.resources	1874	2017-04-13 10:18:17.381	search-results-grid
com.atlassian.confluence.keyboardshortcuts	1875	2017-04-13 10:18:17.381	keyboardshortcut-flag
com.atlassian.confluence.plugins.confluence-space-blueprints	1876	2017-04-13 10:18:17.381	team-space-email-resources
confluence.user.menu	1877	2017-04-13 10:18:17.381	signup
com.atlassian.streams.confluence	1878	2017-04-13 10:18:17.381	commentManager
confluence.macros.dashboard	1879	2017-04-13 10:18:17.381	welcome-message
com.atlassian.confluence.plugins.confluence-email-resources	1880	2017-04-13 10:18:17.381	templates-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	1881	2017-04-13 10:18:17.381	spaceBlueprintService
com.atlassian.confluence.plugins.recently-viewed-plugin	1882	2017-04-13 10:18:17.381	ao
com.atlassian.plugins.editor	1883	2017-04-13 10:18:17.381	atlassian-rte-javascript
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1884	2017-04-13 10:18:17.381	hipchat-soy-resources
com.atlassian.streams.streams-thirdparty-plugin	1885	2017-04-13 10:18:17.381	thirdparty-web-resources
com.atlassian.auiplugin	1886	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-is-input
com.atlassian.confluence.plugins.confluence-space-ia	1887	2017-04-13 10:18:17.381	header-spaces-create-space
confluence.sections.search.view	1888	2017-04-13 10:18:17.381	search
com.atlassian.mywork.mywork-confluence-host-plugin	1889	2017-04-13 10:18:17.381	actionServiceSelector
com.atlassian.analytics.analytics-client	1890	2017-04-13 10:18:17.381	eventReporter
com.atlassian.confluence.plugins.confluence-business-blueprints	1891	2017-04-13 10:18:17.381	sharelinksbookmarklet-resources
com.atlassian.confluence.plugins.gadgets	1892	2017-04-13 10:18:17.381	localeManager
confluence.macros.advanced	1893	2017-04-13 10:18:17.381	get-more
com.atlassian.support.stp	1894	2017-04-13 10:18:17.381	stp-license-banner-data-bamboo
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1895	2017-04-13 10:18:17.381	roadmap-view-resources
com.atlassian.soy.soy-template-plugin	1896	2017-04-13 10:18:17.381	soy-deps
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1897	2017-04-13 10:18:17.381	batchMessage-soy-function
com.atlassian.auiplugin	1898	2017-04-13 10:18:17.381	aui-experimental-progress-tracker
com.atlassian.plugins.atlassian-whitelist-core-plugin	1899	2017-04-13 10:18:17.381	outboundWhitelist
com.atlassian.confluence.plugins.view-source	1900	2017-04-13 10:18:17.381	confluenceViewSourceWhitelist
com.atlassian.confluence.extra.widgetconnector	1901	2017-04-13 10:18:17.381	widget-xhtml
com.atlassian.confluence.plugins.confluence-create-content-plugin	1902	2017-04-13 10:18:17.381	default-index-template
com.atlassian.confluence.plugins.search.confluence-search	1903	2017-04-13 10:18:17.381	excludedContentTypeSearchFilter
com.atlassian.confluence.editor	1904	2017-04-13 10:18:17.381	table-resizable-editor-content-styles
com.atlassian.confluence.plugins.confluence-browser-metrics	1905	2017-04-13 10:18:17.381	browser-metrics-reporters
com.atlassian.confluence.plugins.confluence-user-rest	1906	2017-04-13 10:18:17.381	permissionManager
confluence.listeners.core	1907	2017-04-13 10:18:17.381	autogroupadderlistener
com.atlassian.confluence.plugins.confluence-spaces	1908	2017-04-13 10:18:17.381	actions
com.atlassian.plugins.atlassian-whitelist-core-plugin	1909	2017-04-13 10:18:17.381	whitelistOnOffSwitch
com.atlassian.support.stp	1910	2017-04-13 10:18:17.381	applicationPropertiesContextItem
com.atlassian.plugins.atlassian-nav-links-plugin	1911	2017-04-13 10:18:17.381	template-renderer
confluence.sections.space.tools	1912	2017-04-13 10:18:17.381	export-format-xml
com.atlassian.confluence.plugins.confluence-software-project	1913	2017-04-13 10:18:17.381	sp-space-blueprint-item
com.atlassian.oauth.serviceprovider	1914	2017-04-13 10:18:17.381	oauthIconUriServlet
com.atlassian.plugins.atlassian-plugins-webresource-rest	1915	2017-04-13 10:18:17.381	curl
com.atlassian.applinks.applinks-plugin	1916	2017-04-13 10:18:17.381	get-documentation-base-url-soy-function
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1917	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.streams.confluence	1918	2017-04-13 10:18:17.381	date-eu-ES
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	1919	2017-04-13 10:18:17.381	prettyurls-dispatcher-filter-before-dispatch
com.atlassian.confluence.plugins.confluence-user-profile	1920	2017-04-13 10:18:17.381	editmyprofilepicture
com.atlassian.streams.streams-thirdparty-plugin	1921	2017-04-13 10:18:17.381	userProfileAccessor
confluence.lifecycle.core	1922	2017-04-13 10:18:17.381	pluginframeworkdependentupgrades
com.atlassian.confluence.plugins.share-page	1923	2017-04-13 10:18:17.381	share-attachment-notification-transformer
com.atlassian.streams	1924	2017-04-13 10:18:17.381	feedRendererContext
confluence.sections.settings.edit	1925	2017-04-13 10:18:17.381	editemailpreferences
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1926	2017-04-13 10:18:17.381	upm-update-check-resources
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1927	2017-04-13 10:18:17.381	keyboard-shortcut
com.atlassian.mywork.mywork-confluence-host-plugin	1928	2017-04-13 10:18:17.381	mwLeftMenuPanel
confluence.listeners.core	1929	2017-04-13 10:18:17.381	confluenceCrowdUserEventAdaptorListener
confluence.aui.staging	1930	2017-04-13 10:18:17.381	dark-features
com.atlassian.streams	1931	2017-04-13 10:18:17.381	date-ar-TN
com.atlassian.support.healthcheck.support-healthcheck-plugin	1932	2017-04-13 10:18:17.381	supportHealthStatusProperties
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1933	2017-04-13 10:18:17.381	confluenceApplicationDescriptor
com.atlassian.applinks.applinks-plugin	1934	2017-04-13 10:18:17.381	lodash-amd
com.atlassian.confluence.plugins.confluence-fixed-headers	1935	2017-04-13 10:18:17.381	confFixedHeadersAnalyticsWhitelist
com.atlassian.querylang.confluence-cql-plugin	1936	2017-04-13 10:18:17.381	end-of-day-one-arg-function
com.atlassian.confluence.plugins.confluence-business-blueprints	1937	2017-04-13 10:18:17.381	decisions-page
com.atlassian.querylang.confluence-cql-plugin	1938	2017-04-13 10:18:17.381	end-of-week-zero-arg-function
com.atlassian.confluence.plugins.confluence-ui-rest	1939	2017-04-13 10:18:17.381	ui-rest-filter
com.atlassian.streams	1940	2017-04-13 10:18:17.381	date-ar-SA
com.atlassian.confluence.extra.widgetconnector	1941	2017-04-13 10:18:17.381	scribd
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1942	2017-04-13 10:18:17.381	simple-json-serialize-function
com.atlassian.streams	1943	2017-04-13 10:18:17.381	date-ar-SY
com.atlassian.confluence.plugins.whatsnew	1944	2017-04-13 10:18:17.381	whats-new-item-help-menu
com.atlassian.streams.core	1945	2017-04-13 10:18:17.381	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1946	2017-04-13 10:18:17.381	sqlModeCheck
com.atlassian.confluence.plugins.confluence-mentions-plugin	1947	2017-04-13 10:18:17.381	email-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1948	2017-04-13 10:18:17.381	upmPluginAccessor
com.atlassian.confluence.plugins.confluence-inline-tasks	1949	2017-04-13 10:18:17.381	my-tasks-menu-item
com.atlassian.streams	1950	2017-04-13 10:18:17.381	appLinksUriSupplier
com.atlassian.confluence.plugins.confluence-image-attributes	1951	2017-04-13 10:18:17.381	image-attributes
com.atlassian.plugin.notifications.notifications-module	1952	2017-04-13 10:18:17.381	applicationPropertiesContextItem
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1953	2017-04-13 10:18:17.381	tabVisibility
confluence.macros.profile	1954	2017-04-13 10:18:17.381	profile-macro-styles
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1955	2017-04-13 10:18:17.381	httpContext
confluence.admin.user	1956	2017-04-13 10:18:17.381	browse-users-tab-signup
com.atlassian.confluence.plugins.confluence-mobile	1957	2017-04-13 10:18:17.381	macroManagerFactory
com.atlassian.confluence.plugins.confluence-lookandfeel	1958	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.mywork.mywork-common-plugin	1959	2017-04-13 10:18:17.381	notification-service
confluence.sections.create	1960	2017-04-13 10:18:17.381	add-page-without-parent
com.atlassian.support.stp	1961	2017-04-13 10:18:17.381	confluence-application-info
com.atlassian.oauth.serviceprovider	1962	2017-04-13 10:18:17.381	userManager
com.atlassian.confluence.plugins.confluence-monitoring-console	1963	2017-04-13 10:18:17.381	userManager
com.atlassian.confluence.plugins.gadgets	1964	2017-04-13 10:18:17.381	gadget-render-resources
confluence.search.mappers.lucene	1965	2017-04-13 10:18:17.381	fileExtension
com.atlassian.analytics.analytics-client	1966	2017-04-13 10:18:17.381	eventSerializer
com.atlassian.confluence.plugins.confluence-software-project	1967	2017-04-13 10:18:17.381	sp-space-blueprint
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1968	2017-04-13 10:18:17.381	httpRequestWrapper
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1969	2017-04-13 10:18:17.381	userManager
confluence.search.lucene.initialisation	1970	2017-04-13 10:18:17.381	boostByModificationDateStrategySearcherInitialisation
com.atlassian.auiplugin	1971	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-polyfills-console
confluence.sections.space.advanced	1972	2017-04-13 10:18:17.381	exporthtml
com.atlassian.confluence.plugins.confluence-software-blueprints	1973	2017-04-13 10:18:17.381	requirements-index
confluence.extra.impresence2	1974	2017-04-13 10:18:17.381	localeSupport
com.atlassian.streams.confluence	1975	2017-04-13 10:18:17.381	date-sq-AL
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1976	2017-04-13 10:18:17.381	page-created-notification-template-body
com.atlassian.support.stp	1977	2017-04-13 10:18:17.381	schedulerCleanUpTask
com.atlassian.confluence.plugins.synchrony-interop	1978	2017-04-13 10:18:17.381	synchrony-status-banner-resources
com.atlassian.streams.confluence	1979	2017-04-13 10:18:17.381	date-mr-IN
com.atlassian.crowd.embedded.admin	1980	2017-04-13 10:18:17.381	default-groups
com.atlassian.streams	1981	2017-04-13 10:18:17.381	date-zh-HK
com.atlassian.confluence.plugins.editor-loader	1982	2017-04-13 10:18:17.381	background-loading-editor
com.atlassian.confluence.keyboardshortcuts	1983	2017-04-13 10:18:17.381	confluence-keyboard-shortcuts
confluence.sections.profile	1984	2017-04-13 10:18:17.381	primary
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1985	2017-04-13 10:18:17.381	hipchat2-space-configuration
com.atlassian.confluence.plugins.confluence-email-resources	1986	2017-04-13 10:18:17.381	notification-templates-follower-added-1.0.0
com.atlassian.templaterenderer.api	1987	2017-04-13 10:18:17.381	pluginEventManager
com.atlassian.plugins.rest.atlassian-rest-module	1988	2017-04-13 10:18:17.381	restRequestFactory
com.atlassian.confluence.plugins.confluence-dashboard	1989	2017-04-13 10:18:17.381	buttons-web-items
confluence.sections.profile	1990	2017-04-13 10:18:17.381	profile-administer-user
com.atlassian.confluence.ext.newcode-macro-plugin	1991	2017-04-13 10:18:17.381	editor-scripts
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1992	2017-04-13 10:18:17.381	darkFeatureManager
com.atlassian.streams.confluence	1993	2017-04-13 10:18:17.381	date-kn-IN
com.atlassian.confluence.plugins.confluence-browser-metrics	1994	2017-04-13 10:18:17.381	viewcontent
com.atlassian.confluence.plugins.confluence-lookandfeel	1995	2017-04-13 10:18:17.381	xsrfTokenGenerator
com.atlassian.plugins.atlassian-nav-links-plugin	1996	2017-04-13 10:18:17.381	userManager
com.atlassian.plugin.notifications.notifications-module	1997	2017-04-13 10:18:17.381	userProfileMappingResolver
com.atlassian.confluence.plugins.confluence-edge-index	1998	2017-04-13 10:18:17.381	networkService
confluence.sections.settings.edit	1999	2017-04-13 10:18:17.381	editeditorpreferences
com.atlassian.plugins.atlassian-nav-links-plugin	2000	2017-04-13 10:18:17.381	applinks-change-listener
com.atlassian.confluence.plugins.confluence-email-resources	2001	2017-04-13 10:18:17.381	stop-following-user-email-adg-footer-item
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	2002	2017-04-13 10:18:17.381	blogger-xmlrpc
com.atlassian.streams.confluence	2003	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.instrumentation.atlassian-instrumentation-expose-jmx	2004	2017-04-13 10:18:17.381	jmxInstrumentExposer
com.atlassian.streams.confluence	2005	2017-04-13 10:18:17.381	xmlEventReaderFactory
com.atlassian.confluence.plugins.confluence-email-resources	2006	2017-04-13 10:18:17.381	notification-templates-blogpost-add-1.0.0
com.atlassian.crowd.embedded.admin	2007	2017-04-13 10:18:17.381	UpdateDirectoriesConfigurationWithExternalI
com.atlassian.confluence.extra.widgetconnector	2008	2017-04-13 10:18:17.381	sliderocket
confluence.search.mappers.lucene	2009	2017-04-13 10:18:17.381	labelsSearchFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	2010	2017-04-13 10:18:17.381	inline-task-mail-resources
com.atlassian.auiplugin	2011	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-lifecycle
com.atlassian.confluence.plugins.confluence-email-resources	2012	2017-04-13 10:18:17.381	notification-templates-blog-remove-1.0.0
confluence.search.contentname	2013	2017-04-13 10:18:17.381	default-contentname-search-provider
com.atlassian.confluence.plugins.confluence-create-content-plugin	2014	2017-04-13 10:18:17.381	createButtonService
com.atlassian.confluence.plugins.confluence-email-resources	2015	2017-04-13 10:18:17.381	content-templates-status-update-pattern-2.0.0
com.atlassian.streams.confluence	2016	2017-04-13 10:18:17.381	date-syr-SY
com.atlassian.auiplugin	2017	2017-04-13 10:18:17.381	aui-experimental-page-layout-typography
confluence.macros.advanced	2018	2017-04-13 10:18:17.381	blogpost-mobile-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2019	2017-04-13 10:18:17.381	confluence-webpanel-data-resources
com.atlassian.auiplugin	2020	2017-04-13 10:18:17.381	hotkeys
com.atlassian.streams.confluence	2021	2017-04-13 10:18:17.381	date-ky-KG
com.atlassian.applinks.applinks-trustedapps-plugin	2022	2017-04-13 10:18:17.381	trustedAppsAuthenticationProviderPluginModule
com.atlassian.confluence.plugins.confluence-schedule-admin	2023	2017-04-13 10:18:17.381	view-scheduled-jobs
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2024	2017-04-13 10:18:17.381	notificationStoreService
com.atlassian.plugins.base-hipchat-integration-plugin	2025	2017-04-13 10:18:17.381	hipchat-webpanel
com.atlassian.confluence.plugins.watch-button	2026	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.confluence-software-project	2027	2017-04-13 10:18:17.381	SoftwareProjectSpaceHomePageEventListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	2028	2017-04-13 10:18:17.381	header-create-link
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2029	2017-04-13 10:18:17.381	whitelistRuleComparator
com.atlassian.integration.jira.jira-integration-plugin	2030	2017-04-13 10:18:17.381	jiraKeyScanner
com.atlassian.confluence.plugins.confluence-content-property-storage	2031	2017-04-13 10:18:17.381	contentPropertyValidator
confluence.sections.profile	2032	2017-04-13 10:18:17.381	stop-favourite-user-personal-space
com.atlassian.confluence.plugins.confluence-email-resources	2033	2017-04-13 10:18:17.381	content-templates-simple-data-table-pattern-1.0.0
com.atlassian.streams	2034	2017-04-13 10:18:17.381	templateRendererFactory
com.atlassian.streams	2035	2017-04-13 10:18:17.381	streamsActivityServlet
confluence.search.mappers.lucene	2036	2017-04-13 10:18:17.381	label
com.atlassian.confluence.plugins.templates-framework	2037	2017-04-13 10:18:17.381	templates_css
com.atlassian.applinks.applinks-plugin	2038	2017-04-13 10:18:17.381	crowd
com.atlassian.analytics.analytics-client	2039	2017-04-13 10:18:17.381	productUUIDProvider
com.atlassian.auiplugin	2040	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-jquery-jquery-os
com.atlassian.streams.core	2041	2017-04-13 10:18:17.381	templateRenderer
confluence.macros.advanced	2042	2017-04-13 10:18:17.381	advancedMacrosExcerpter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2043	2017-04-13 10:18:17.381	instanceTopologyJob
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2044	2017-04-13 10:18:17.381	blogpost-edited-notification-template
com.atlassian.confluence.plugins.confluence-daily-summary-email	2045	2017-04-13 10:18:17.381	title-metadata
com.atlassian.confluence.plugins.search.confluence-search	2046	2017-04-13 10:18:17.381	searchResultBuilderFactory
com.atlassian.auiplugin	2047	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-binder
com.atlassian.streams.confluence	2048	2017-04-13 10:18:17.381	spaceKeys
confluence.sections.admin	2049	2017-04-13 10:18:17.381	layouts
com.atlassian.gadgets.opensocial	2050	2017-04-13 10:18:17.381	gadget-removed-error-page-resources
com.atlassian.confluence.plugins.confluence-user-rest	2051	2017-04-13 10:18:17.381	groupEntityBuilder
com.atlassian.confluence.plugins.confluence-content-property-storage	2052	2017-04-13 10:18:17.381	contentPropertyExtractionManager
com.atlassian.confluence.plugins.confluence-space-blueprints	2053	2017-04-13 10:18:17.381	sidebarService
com.atlassian.confluence.plugins.confluence-nav-links	2054	2017-04-13 10:18:17.381	confluenceWeights
com.atlassian.mywork.mywork-common-plugin	2055	2017-04-13 10:18:17.381	myworkserviceselector
confluence.sections.space.admin	2056	2017-04-13 10:18:17.381	spaceops
com.atlassian.mywork.mywork-common-plugin	2057	2017-04-13 10:18:17.381	reliable-rest-service
com.atlassian.applinks.applinks-cors-plugin	2058	2017-04-13 10:18:17.381	corsUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2059	2017-04-13 10:18:17.381	propertiesManager
com.atlassian.applinks.applinks-trustedapps-plugin	2060	2017-04-13 10:18:17.381	applicationLinkService
com.atlassian.oauth.serviceprovider	2061	2017-04-13 10:18:17.381	requestFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2062	2017-04-13 10:18:17.381	dac-landing-page-servlet
com.atlassian.confluence.plugins.confluence-sal-plugin	2063	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.plugins.base-hipchat-integration-plugin	2064	2017-04-13 10:18:17.381	hipchat-global
com.atlassian.auiplugin	2065	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-tables-sortable
com.atlassian.oauth.serviceprovider	2066	2017-04-13 10:18:17.381	converter
confluence.sections.create	2067	2017-04-13 10:18:17.381	add-blogpost
com.atlassian.confluence.plugins.gadgets	2068	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.keyboardshortcuts	2069	2017-04-13 10:18:17.381	return.to.edit.page
com.atlassian.labs.lucene-compat-plugin	2070	2017-04-13 10:18:17.381	extractor
confluence.macros.basic	2071	2017-04-13 10:18:17.381	panel-xhtml
com.atlassian.confluence.plugins.confluence-onboarding	2072	2017-04-13 10:18:17.381	no-spaces-notification-transformer
com.atlassian.confluence.plugins.confluence-nav-links	2073	2017-04-13 10:18:17.381	profile
com.atlassian.streams.confluence	2074	2017-04-13 10:18:17.381	attachmentRendererFactory
com.atlassian.plugins.atlassian-nav-links-plugin	2075	2017-04-13 10:18:17.381	content-link
com.atlassian.plugins.atlassian-nav-links-plugin	2076	2017-04-13 10:18:17.381	projects-service
com.atlassian.streams	2077	2017-04-13 10:18:17.381	date-el-GR
com.atlassian.oauth.consumer	2078	2017-04-13 10:18:17.381	consumerInfoServlet
com.atlassian.confluence.plugins.confluence-email-resources	2079	2017-04-13 10:18:17.381	use-custom-site-logo-function
com.atlassian.confluence.plugins.confluence-inline-comments	2080	2017-04-13 10:18:17.381	inlinecomment-findAllResolvedComment
confluence.listeners.core	2081	2017-04-13 10:18:17.381	resetHiloAfterImportListener
com.atlassian.confluence.plugins.confluence-previews	2082	2017-04-13 10:18:17.381	share-plugin
com.atlassian.confluence.keyboardshortcuts	2083	2017-04-13 10:18:17.381	tinymce.pre
com.atlassian.gadgets.publisher	2084	2017-04-13 10:18:17.381	ajs-gadgets-debug
com.atlassian.plugins.atlassian-nps-plugin	2085	2017-04-13 10:18:17.381	nps-specific-resources-async
com.atlassian.webhooks.atlassian-webhooks-plugin	2086	2017-04-13 10:18:17.381	webhooksRest
com.atlassian.streams	2087	2017-04-13 10:18:17.381	pluginEventManager
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2088	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.auiplugin	2089	2017-04-13 10:18:17.381	aui-deprecation
com.atlassian.confluence.plugins.quickreload	2090	2017-04-13 10:18:17.381	quick-reload-resources
com.atlassian.confluence.plugins.confluence-paste	2091	2017-04-13 10:18:17.381	autoconvert-confluence
com.atlassian.confluence.plugins.search.confluence-search	2092	2017-04-13 10:18:17.381	moduleDescriptorCacheFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2093	2017-04-13 10:18:17.381	blogpost-moved-notification-transformer
com.atlassian.confluence.plugins.confluence-knowledge-base	2094	2017-04-13 10:18:17.381	rest
confluence.search.mappers.lucene	2095	2017-04-13 10:18:17.381	deactivatedUserSearchFilter
com.atlassian.applinks.applinks-plugin	2096	2017-04-13 10:18:17.381	applinksRestV3-filter
confluence.extra.dynamictasklist2	2097	2017-04-13 10:18:17.381	v2-dynamictasklist2
com.atlassian.analytics.analytics-client	2098	2017-04-13 10:18:17.381	analyticsLogger
com.atlassian.plugins.atlassian-nav-links-plugin	2099	2017-04-13 10:18:17.381	web-interface-manager
com.atlassian.plugins.atlassian-nav-links-plugin	2100	2017-04-13 10:18:17.381	navigation-link
com.atlassian.streams	2101	2017-04-13 10:18:17.381	feedAggregator
com.atlassian.mywork.mywork-confluence-host-plugin	2102	2017-04-13 10:18:17.381	registration-dao
com.atlassian.confluence.extra.officeconnector	2103	2017-04-13 10:18:17.381	viewpdf
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2104	2017-04-13 10:18:17.381	admin.cluster-monitoring
confluence.extra.confluencerpc	2105	2017-04-13 10:18:17.381	xhtmlSoapServiceTarget
com.atlassian.confluence.plugins.confluence-lookandfeel	2106	2017-04-13 10:18:17.381	transactionTemplate
confluence.search.mappers.lucene	2107	2017-04-13 10:18:17.381	phrase
com.atlassian.confluence.plugins.confluence-create-content-plugin	2108	2017-04-13 10:18:17.381	blueprint-first-time-tooltip-resources
com.atlassian.applinks.applinks-plugin	2109	2017-04-13 10:18:17.381	projectManager
com.atlassian.streams.confluence	2110	2017-04-13 10:18:17.381	contentEntityItemFactory
com.atlassian.confluence.plugins.gadgets	2111	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.plugins.atlassian-nav-links-plugin	2112	2017-04-13 10:18:17.381	menu-rest
com.atlassian.confluence.plugins.confluence-email-resources	2113	2017-04-13 10:18:17.381	content-templates-content-excerpt-pattern-1.0.0
confluence.macros.advanced	2114	2017-04-13 10:18:17.381	news
com.atlassian.confluence.plugins.confluence-software-blueprints	2115	2017-04-13 10:18:17.381	jirareports-index
com.atlassian.confluence.extra.flyingpdf	2116	2017-04-13 10:18:17.381	flyingPdfDocumentConverter
confluence.macros.advanced	2117	2017-04-13 10:18:17.381	recently-used-labels
com.atlassian.oauth.consumer.sal	2118	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.applinks.applinks-plugin	2119	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-sortable-tables	2120	2017-04-13 10:18:17.381	sortable-table-loader
com.atlassian.confluence.plugins.gadgets	2121	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2122	2017-04-13 10:18:17.381	asynchronousTaskManager
com.atlassian.applinks.applinks-plugin	2123	2017-04-13 10:18:17.381	manifestRetrieverContextItem
com.atlassian.auiplugin	2124	2017-04-13 10:18:17.381	darkFeatureManager
com.atlassian.streams	2125	2017-04-13 10:18:17.381	date-hr-BA
com.atlassian.streams.confluence	2126	2017-04-13 10:18:17.381	date-ja-JP
com.atlassian.auiplugin	2127	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-dialog2
com.atlassian.streams	2128	2017-04-13 10:18:17.381	date-mi-NZ
com.atlassian.confluence.plugins.confluence-business-blueprints	2129	2017-04-13 10:18:17.381	sharelinks-blueprint
com.atlassian.confluence.plugins.synchrony-interop	2130	2017-04-13 10:18:17.381	confluence-synchrony-interop-rest-api
com.atlassian.streams	2131	2017-04-13 10:18:17.381	date-mt-MT
com.atlassian.applinks.applinks-oauth-plugin	2132	2017-04-13 10:18:17.381	redirectController
confluence.extra.jira	2133	2017-04-13 10:18:17.381	servers
com.atlassian.confluence.plugins.confluence-sal-plugin	2134	2017-04-13 10:18:17.381	applicationProperties
confluence.extra.livesearch	2135	2017-04-13 10:18:17.381	livesearch-xhtml
com.atlassian.confluence.plugins.drag-and-drop	2136	2017-04-13 10:18:17.381	drag-and-drop-overlay
com.atlassian.auiplugin	2137	2017-04-13 10:18:17.381	aui-banner
confluence.user.menu	2138	2017-04-13 10:18:17.381	user-history
com.atlassian.confluence.plugins.confluence-software-blueprints	2139	2017-04-13 10:18:17.381	jirareports-changelog-static
com.atlassian.streams.confluence	2140	2017-04-13 10:18:17.381	userProfileAccessor
com.atlassian.applinks.applinks-plugin	2141	2017-04-13 10:18:17.381	applinks-entity-type
confluence.web.resources	2142	2017-04-13 10:18:17.381	draft-changes
com.atlassian.confluence.plugins.confluence-file-notifications	2143	2017-04-13 10:18:17.381	file-content-payload-transformer
com.atlassian.plugins.atlassian-nav-links-plugin	2144	2017-04-13 10:18:17.381	project-shortcut
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2145	2017-04-13 10:18:17.381	whitelist-web-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	2146	2017-04-13 10:18:17.381	highlightOptionPanelConfigService
com.atlassian.applinks.applinks-oauth-plugin	2147	2017-04-13 10:18:17.381	add-consumer-redirect
confluence.web.resources	2148	2017-04-13 10:18:17.381	jquery-autocomplete
confluence.extra.confluencerpc	2149	2017-04-13 10:18:17.381	soapServiceHelper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2150	2017-04-13 10:18:17.381	transactionTemplate
confluence.macros.basic	2151	2017-04-13 10:18:17.381	noformat-xhtml
com.atlassian.plugins.tinymce	2152	2017-04-13 10:18:17.381	atlassian-rte-javascript-tinymce-extensions
com.atlassian.confluence.plugins.confluence-onboarding	2153	2017-04-13 10:18:17.381	confluenceOnboardingPluginAnalyticsWhitelist
com.atlassian.applinks.applinks-plugin	2154	2017-04-13 10:18:17.381	feature-v3-onboarding
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2155	2017-04-13 10:18:17.381	rest-filter
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2156	2017-04-13 10:18:17.381	prettyurls-matcher-filter-before-dispatch
com.atlassian.confluence.plugins.confluence-email-resources	2157	2017-04-13 10:18:17.381	stop-watching-space-blogs-email-footer-item
com.atlassian.mywork.mywork-confluence-provider-plugin	2158	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.confluence.plugins.reliablesave	2159	2017-04-13 10:18:17.381	confluenceReliableSaveWhitelist
com.atlassian.streams	2160	2017-04-13 10:18:17.381	date-sr-Cyrl-CS
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2161	2017-04-13 10:18:17.381	confluenceNotificationRenderer
com.atlassian.confluence.plugins.confluence-email-resources	2162	2017-04-13 10:18:17.381	reply-to-comment-email-batch-item
com.atlassian.mywork.mywork-common-plugin	2163	2017-04-13 10:18:17.381	mywork-action-service
com.atlassian.streams	2164	2017-04-13 10:18:17.381	appLinksWhitelist
confluence.macros.advanced	2165	2017-04-13 10:18:17.381	include
com.atlassian.streams.confluence	2166	2017-04-13 10:18:17.381	thumbnailManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2167	2017-04-13 10:18:17.381	fancy-select
com.atlassian.integration.jira.jira-integration-plugin	2168	2017-04-13 10:18:17.381	jira-resource
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2169	2017-04-13 10:18:17.381	roadmap-analytics-whitelist
com.atlassian.confluence.plugins.confluence-jira-content	2170	2017-04-13 10:18:17.381	issues-created-panel
confluence.web.resources	2171	2017-04-13 10:18:17.381	general-analytics-bindings
org.randombits.confluence.toc	2172	2017-04-13 10:18:17.381	server-soy-templates
com.atlassian.confluence.plugins.confluence-inline-comments	2173	2017-04-13 10:18:17.381	common-resource
com.atlassian.confluence.contributors	2174	2017-04-13 10:18:17.381	PageDetailsHelper
confluence.sections.space.tools	2177	2017-04-13 10:18:17.381	stop-watching-space
com.atlassian.plugins.base-hipchat-integration-plugin	2178	2017-04-13 10:18:17.381	view-oauth-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2179	2017-04-13 10:18:17.381	comment-edited-hipchat-notification-template
com.atlassian.applinks.applinks-cors-plugin	2180	2017-04-13 10:18:17.381	documentationLinker
com.atlassian.healthcheck.atlassian-healthcheck	2181	2017-04-13 10:18:17.381	healthCheckRest
confluence.extractors.core	2182	2017-04-13 10:18:17.381	lastModifierNameChangeExtractor
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	2183	2017-04-13 10:18:17.381	leadershipmonitor-template
com.atlassian.plugins.base-hipchat-integration-plugin	2184	2017-04-13 10:18:17.381	rest-ping-filter
com.atlassian.applinks.applinks-plugin	2185	2017-04-13 10:18:17.381	confluence-inbound-two-legged-oauth
com.atlassian.confluence.plugins.confluence-email-resources	2186	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.soy.soy-template-plugin	2187	2017-04-13 10:18:17.381	toStringFunction
confluence.renderer.components	2188	2017-04-13 10:18:17.381	macro
confluence.search.mappers.lucene	2189	2017-04-13 10:18:17.381	queryString
com.atlassian.streams	2190	2017-04-13 10:18:17.381	date-sr-Cyrl-BA
com.atlassian.auiplugin	2191	2017-04-13 10:18:17.381	aui-expander
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2192	2017-04-13 10:18:17.381	pluginManualUpdateNotificationService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2193	2017-04-13 10:18:17.381	confluenceSpaceToRoomNotificationsAnalyticsWhitelist
confluence.web.resources	2194	2017-04-13 10:18:17.381	module-exporter
confluence.search.mappers.lucene	2195	2017-04-13 10:18:17.381	termRange
com.atlassian.streams.streams-thirdparty-plugin	2196	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.plugins.atlassian-whitelist-core-plugin	2197	2017-04-13 10:18:17.381	confluenceGadgetWhitelistMigration
com.atlassian.confluence.plugins.confluence-email-resources	2198	2017-04-13 10:18:17.381	template-utils-user-avatar-name-table-2.0.0
confluence.sections.attachments	2199	2017-04-13 10:18:17.381	edit
com.atlassian.auiplugin	2200	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-index-of
com.atlassian.confluence.plugins.confluence-inline-tasks	2201	2017-04-13 10:18:17.381	custom-task-report-template
com.atlassian.confluence.plugins.confluence-inline-comments	2202	2017-04-13 10:18:17.381	view-inline-comment-batch-email-action
com.atlassian.analytics.analytics-client	2203	2017-04-13 10:18:17.381	confluenceClusterInformationProvider
com.atlassian.support.stp	2204	2017-04-13 10:18:17.381	resources
com.atlassian.confluence.keyboardshortcuts	2205	2017-04-13 10:18:17.381	create.page
com.atlassian.streams.confluence	2206	2017-04-13 10:18:17.381	date-fo-FO
com.atlassian.mywork.mywork-confluence-host-plugin	2207	2017-04-13 10:18:17.381	mw-header-anchor-css
confluence.macros.advanced	2208	2017-04-13 10:18:17.381	gallery
com.atlassian.plugins.atlassian-nps-plugin	2209	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-previews	2210	2017-04-13 10:18:17.381	fallback-mode
com.atlassian.querylang.confluence-cql-plugin	2211	2017-04-13 10:18:17.381	rest-cql-metadata
com.atlassian.confluence.plugins.confluence-content-property-storage	2212	2017-04-13 10:18:17.381	hostContextAccessor
com.atlassian.plugins.atlassian-nav-links-plugin	2213	2017-04-13 10:18:17.381	capabilities-consumer-admin-rest
com.atlassian.confluence.keyboardshortcuts	2214	2017-04-13 10:18:17.381	goto.dashboard
com.atlassian.mywork.mywork-confluence-host-plugin	2215	2017-04-13 10:18:17.381	client-service
confluence.sections.space.admin	2216	2017-04-13 10:18:17.381	security
com.atlassian.plugins.base-hipchat-integration-plugin	2217	2017-04-13 10:18:17.381	hipchat-command
com.atlassian.confluence.plugins.gadgets	2218	2017-04-13 10:18:17.381	themeManager
confluence.extra.jira	2219	2017-04-13 10:18:17.381	autoconvert-jira
confluence.web.panels	2220	2017-04-13 10:18:17.381	confluence-header-help-menu
com.atlassian.confluence.image.effects.ImageEffectsPlugin	2221	2017-04-13 10:18:17.381	imgfilterfilter
com.atlassian.confluence.plugins.confluence-knowledge-base	2222	2017-04-13 10:18:17.381	searcher
com.atlassian.confluence.plugins.confluence-inline-tasks	2223	2017-04-13 10:18:17.381	email-resources-2.0.0
com.atlassian.streams	2224	2017-04-13 10:18:17.381	date-smn-FI
com.atlassian.applinks.applinks-cors-plugin	2225	2017-04-13 10:18:17.381	internalHostApplication
com.atlassian.confluence.plugins.soy	2226	2017-04-13 10:18:17.381	soy-web-panel-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2227	2017-04-13 10:18:17.381	userSettingsStore
com.atlassian.streams.confluence	2228	2017-04-13 10:18:17.381	date-xh-ZA
confluence.web.resources	2229	2017-04-13 10:18:17.381	master-scripts
com.atlassian.streams	2230	2017-04-13 10:18:17.381	date-js
com.atlassian.analytics.analytics-client	2231	2017-04-13 10:18:17.381	atomicEventSender
com.atlassian.auiplugin	2232	2017-04-13 10:18:17.381	aui-trigger
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2233	2017-04-13 10:18:17.381	templatePathResolver
com.atlassian.confluence.plugins.recently-viewed-plugin	2234	2017-04-13 10:18:17.381	current-user-metadata-provider
com.atlassian.confluence.plugins.confluence-previews	2235	2017-04-13 10:18:17.381	permalink-plugin
com.atlassian.confluence.plugins.confluence-cache-management-plugin	2236	2017-04-13 10:18:17.381	cacheStatisticsRestResource
com.atlassian.confluence.plugins.confluence-easyuser-admin	2237	2017-04-13 10:18:17.381	easyuser
com.atlassian.auiplugin	2238	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-toggle
com.atlassian.auiplugin	2239	2017-04-13 10:18:17.381	aui-experimental-spinner
confluence.sections.page.temp	2240	2017-04-13 10:18:17.381	pageunfavourite
com.atlassian.streams.confluence	2241	2017-04-13 10:18:17.381	date-ro-RO
com.atlassian.streams	2242	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2243	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.confluence.plugins.confluence-daily-summary-email	2244	2017-04-13 10:18:17.381	summaryEmail
com.atlassian.confluence.plugins.gadgets	2245	2017-04-13 10:18:17.381	gadget-directory
com.atlassian.confluence.plugins.confluence-email-resources	2246	2017-04-13 10:18:17.381	is-system-user-function
com.atlassian.applinks.applinks-plugin	2247	2017-04-13 10:18:17.381	readOnlyApplicationLinkService
com.atlassian.auiplugin	2248	2017-04-13 10:18:17.381	jquery-ui-widgets
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2249	2017-04-13 10:18:17.381	pageManager
com.atlassian.confluence.plugins.confluence-software-blueprints	2250	2017-04-13 10:18:17.381	jiraReportConfiguration
confluence.sections.space.admin	2251	2017-04-13 10:18:17.381	stylesheet
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2252	2017-04-13 10:18:17.381	confluenceNotificationJwtIssuer
com.atlassian.confluence.extra.officeconnector	2253	2017-04-13 10:18:17.381	viewxls
confluence.web.resources	2254	2017-04-13 10:18:17.381	syntaxhighlighter-core
com.atlassian.mywork.mywork-confluence-host-plugin	2255	2017-04-13 10:18:17.381	storageFormatCleaner
com.atlassian.confluence.plugins.confluence-software-blueprints	2256	2017-04-13 10:18:17.381	setUserPermission
com.atlassian.confluence.plugins.confluence-email-resources	2257	2017-04-13 10:18:17.381	content-templates-content-highlight-1.0.0
com.atlassian.confluence.plugins.confluence-easyuser-admin	2258	2017-04-13 10:18:17.381	userManager
com.atlassian.streams	2259	2017-04-13 10:18:17.381	date-cs-CZ
com.atlassian.applinks.applinks-plugin	2260	2017-04-13 10:18:17.381	listApplicationLinks
com.atlassian.confluence.plugins.confluence-like	2261	2017-04-13 10:18:17.381	vcacheFactory
com.atlassian.confluence.plugins.confluence-jira-content	2262	2017-04-13 10:18:17.381	show-feature-discovery-flag
com.atlassian.confluence.plugins.confluence-inline-tasks	2263	2017-04-13 10:18:17.381	ao-module
com.atlassian.support.stp	2264	2017-04-13 10:18:17.381	applicationProperties
confluence.listeners.core	2265	2017-04-13 10:18:17.381	bundledcontentremovallistener
com.atlassian.confluence.plugins.confluence-lookandfeel	2266	2017-04-13 10:18:17.381	sitelogo
com.atlassian.auiplugin	2267	2017-04-13 10:18:17.381	aui-restfultable
com.atlassian.oauth.serviceprovider	2268	2017-04-13 10:18:17.381	authorization-resources
com.atlassian.confluence.plugins.confluence-inline-tasks	2269	2017-04-13 10:18:17.381	task-email-notification-template-body
confluence.web.resources	2270	2017-04-13 10:18:17.381	view-my-drafts
com.atlassian.confluence.editor	2271	2017-04-13 10:18:17.381	editor-autocomplete-resources-only
confluence.extra.webdav	2272	2017-04-13 10:18:17.381	webdav.plugin.actions
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2273	2017-04-13 10:18:17.381	page-share-notification
com.atlassian.confluence.plugins.confluence-templates	2274	2017-04-13 10:18:17.381	template-variable-placeholder
com.atlassian.confluence.editor	2275	2017-04-13 10:18:17.381	editor-featured-macro-toc
com.atlassian.confluence.editor	2276	2017-04-13 10:18:17.381	sectionAndColumnListener
com.atlassian.confluence.editor	2277	2017-04-13 10:18:17.381	editor-captcha
confluence.comment.action	2278	2017-04-13 10:18:17.381	remove-comment
com.atlassian.analytics.analytics-client	2279	2017-04-13 10:18:17.381	confluenceProgrammaticAnalyticsDetector
confluence.extra.jira	2280	2017-04-13 10:18:17.381	jirachart-resources
com.atlassian.auiplugin	2281	2017-04-13 10:18:17.381	internal-src-js-aui-header-async
com.atlassian.confluence.plugins.confluence-highlight-actions	2282	2017-04-13 10:18:17.381	eventPublisher
confluence.extra.jira	2283	2017-04-13 10:18:17.381	jira-issues-view-mode-async-resource
confluence.content.action.menu	2284	2017-04-13 10:18:17.381	view-in-hierarchy-page
confluence.listeners.core	2285	2017-04-13 10:18:17.381	referralsListener
com.atlassian.confluence.contributors	2286	2017-04-13 10:18:17.381	PageSearchHelper
com.atlassian.auiplugin	2287	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-mediaQuery
com.atlassian.confluence.plugins.confluence-daily-summary-email	2288	2017-04-13 10:18:17.381	summaryEmailHourlyTrigger
com.atlassian.mywork.mywork-common-plugin	2289	2017-04-13 10:18:17.381	reliability-service
com.atlassian.confluence.editor	2290	2017-04-13 10:18:17.381	commentRenderService
com.atlassian.applinks.applinks-trustedapps-plugin	2291	2017-04-13 10:18:17.381	redirectController
com.atlassian.streams.confluence	2292	2017-04-13 10:18:17.381	date-nl-NL
confluence.extra.impresence2	2293	2017-04-13 10:18:17.381	wildfire-migrator
com.atlassian.confluence.plugins.confluence-onboarding	2294	2017-04-13 10:18:17.381	onboarding-notification-less-users
com.atlassian.confluence.plugins.confluence-space-directory	2295	2017-04-13 10:18:17.381	space-directory-rest
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2296	2017-04-13 10:18:17.381	prettyurls-combined-filter-before-decoration
confluence.user.menu	2297	2017-04-13 10:18:17.381	user-watches
com.atlassian.confluence.plugins.confluence-create-content-plugin	2298	2017-04-13 10:18:17.381	trashManager
com.atlassian.applinks.applinks-basicauth-plugin	2299	2017-04-13 10:18:17.381	authenticationConfigurationManager
com.atlassian.confluence.extra.widgetconnector	2300	2017-04-13 10:18:17.381	slideshare
com.atlassian.streams.confluence	2301	2017-04-13 10:18:17.381	date-dv-MV
com.atlassian.confluence.plugins.expand-macro	2302	2017-04-13 10:18:17.381	expand-macro-core
confluence.listeners.core	2303	2017-04-13 10:18:17.381	imageDetailsListener
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2304	2017-04-13 10:18:17.381	clustering-unavailable-resource
com.atlassian.confluence.plugins.confluence-mentions-plugin	2305	2017-04-13 10:18:17.381	notificationDataService
com.atlassian.confluence.ext.newcode-macro-plugin	2306	2017-04-13 10:18:17.381	newcode-json-actions
confluence.search.mappers.lucene	2307	2017-04-13 10:18:17.381	permittedSpaces
com.atlassian.confluence.ext.newcode-macro-plugin	2308	2017-04-13 10:18:17.381	newcode-admin-link
com.atlassian.confluence.plugins.confluence-request-access-plugin	2309	2017-04-13 10:18:17.381	requestAccessPageNotPermittedPanel
com.atlassian.confluence.plugins.recently-viewed-plugin	2310	2017-04-13 10:18:17.381	pluginScheduler
com.atlassian.confluence.plugins.confluence-mobile	2311	2017-04-13 10:18:17.381	search-resources
confluence.search.mappers.lucene	2312	2017-04-13 10:18:17.381	textField
com.atlassian.confluence.plugins.confluence-business-blueprints	2313	2017-04-13 10:18:17.381	sharelinks-service-filter
com.atlassian.auiplugin	2314	2017-04-13 10:18:17.381	ajs-html5shim
com.atlassian.confluence.extra.officeconnector	2315	2017-04-13 10:18:17.381	officeConnectorAnalyticsWhitelist
com.atlassian.streams	2316	2017-04-13 10:18:17.381	streamsFeedUriFactory
confluence.macros.multimedia	2317	2017-04-13 10:18:17.381	xsrfTokenGenerator
com.atlassian.confluence.extra.widgetconnector	2318	2017-04-13 10:18:17.381	googlecalender
com.atlassian.confluence.plugins.confluence-inline-tasks	2319	2017-04-13 10:18:17.381	my-tasks-profile-menu-item
confluence.xhtml.wikimarkup	2320	2017-04-13 10:18:17.381	unmigrated-inline-wiki-markup
com.atlassian.confluence.plugins.confluence-sal-plugin	2321	2017-04-13 10:18:17.381	springHostConnectionAccessor
com.atlassian.confluence.plugins.confluence-content-property-storage	2322	2017-04-13 10:18:17.381	spaceproperty-all-by-key
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2323	2017-04-13 10:18:17.381	space-notification-recipients-provider
com.atlassian.applinks.applinks-plugin	2324	2017-04-13 10:18:17.381	fisheyeCrucibleProject
com.atlassian.auiplugin	2325	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-custom-edit-view
com.atlassian.confluence.plugins.confluence-space-blueprints	2326	2017-04-13 10:18:17.381	view-homepage-email-item
com.atlassian.confluence.extra.widgetconnector	2327	2017-04-13 10:18:17.381	ooyala
com.atlassian.confluence.plugins.confluence-content-property-storage	2328	2017-04-13 10:18:17.381	content-property-index-schema
com.atlassian.mywork.mywork-common-plugin	2329	2017-04-13 10:18:17.381	web-resources
com.atlassian.confluence.plugins.confluence-request-access-plugin	2330	2017-04-13 10:18:17.381	mailService
com.atlassian.confluence.plugins.confluence-previews	2331	2017-04-13 10:18:17.381	confluence-previews-resources
com.atlassian.auiplugin	2332	2017-04-13 10:18:17.381	aui-internal-state
com.atlassian.confluence.plugins.confluence-user-rest	2333	2017-04-13 10:18:17.381	confluenceUserManagementRest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2334	2017-04-13 10:18:17.381	pluginLicenseEventPublisher
com.atlassian.gadgets.publisher	2335	2017-04-13 10:18:17.381	ajax
com.atlassian.auiplugin	2336	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-skate
com.atlassian.confluence.plugins.confluence-software-project	2337	2017-04-13 10:18:17.381	confluence-software-project-resources
com.atlassian.analytics.analytics-client	2338	2017-04-13 10:18:17.381	userManager
confluence.extra.attachments	2339	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.editor	2340	2017-04-13 10:18:17.381	editor-javascript-resources
com.atlassian.confluence.editor	2341	2017-04-13 10:18:17.381	table-resizable-styles
confluence.macros.advanced	2342	2017-04-13 10:18:17.381	blog-post-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2343	2017-04-13 10:18:17.381	confluenceClusterLockServiceAccessor
com.atlassian.confluence.plugins.confluence-mobile	2344	2017-04-13 10:18:17.381	fly-out-resources
com.atlassian.analytics.analytics-client	2345	2017-04-13 10:18:17.381	loginPageRedirector
confluence.extra.jira	2346	2017-04-13 10:18:17.381	help-dialog-extension
confluence.sections.settings.edit	2347	2017-04-13 10:18:17.381	yoursettings
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2348	2017-04-13 10:18:17.381	staticServerPreferenceKeyProvider
confluence.sections.space.advanced	2349	2017-04-13 10:18:17.381	startwatching
com.atlassian.confluence.plugins.confluence-view-file-macro	2350	2017-04-13 10:18:17.381	view-file-macro-resources
com.atlassian.confluence.plugins.confluence-mobile	2351	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.plugin.notifications.notifications-module	2352	2017-04-13 10:18:17.381	notification-util
com.atlassian.applinks.applinks-basicauth-plugin	2353	2017-04-13 10:18:17.381	applicationLinkService
confluence.search.mappers.lucene	2354	2017-04-13 10:18:17.381	textFieldPrefix
com.atlassian.confluence.plugins.view-storage-format	2355	2017-04-13 10:18:17.381	view-storage-menu-resources
com.atlassian.crowd.embedded.admin	2356	2017-04-13 10:18:17.381	internal-directory-options
confluence.sections.space.tools	2357	2017-04-13 10:18:17.381	export-format-html
com.atlassian.plugins.rest.atlassian-rest-module	2358	2017-04-13 10:18:17.381	rest-container-servlet-filter-REQUEST
com.atlassian.confluence.plugins.confluence-daily-summary-email	2359	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.analytics.analytics-client	2360	2017-04-13 10:18:17.381	whitelist-report
com.atlassian.confluence.plugins.confluence-content-property-storage	2361	2017-04-13 10:18:17.381	spaceproperty-by-key
com.atlassian.confluence.plugins.confluence-request-access-plugin	2362	2017-04-13 10:18:17.381	rest
confluence.web.resources	2363	2017-04-13 10:18:17.381	jquery
com.atlassian.confluence.plugins.confluence-mobile	2364	2017-04-13 10:18:17.381	resourceIdentifierContextUtility
confluence.web.resources	2365	2017-04-13 10:18:17.381	regexes
confluence.search.mappers.lucene	2366	2017-04-13 10:18:17.381	subset
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2367	2017-04-13 10:18:17.381	pluginEnablementService
com.atlassian.confluence.plugins.confluence-email-resources	2368	2017-04-13 10:18:17.381	analyticsRenderContext
confluence.renderer.components	2369	2017-04-13 10:18:17.381	subscript
com.atlassian.streams.confluence	2370	2017-04-13 10:18:17.381	date-th-TH
com.atlassian.confluence.plugins.confluence-email-resources	2371	2017-04-13 10:18:17.381	stop-watching-space-email-batch-footer
com.atlassian.confluence.plugins.confluence-like	2372	2017-04-13 10:18:17.381	confluenceAccessManager
confluence.search.lucene.boosting	2373	2017-04-13 10:18:17.381	boostByModificationDate
confluence.sections.admin	2374	2017-04-13 10:18:17.381	dailybackup
com.atlassian.confluence.plugins.pagetree	2375	2017-04-13 10:18:17.381	pagetree-css-resources
confluence.extractors.core	2376	2017-04-13 10:18:17.381	spaceTypeExtractor
com.atlassian.oauth.serviceprovider.sal	2377	2017-04-13 10:18:17.381	consumerStore
com.atlassian.confluence.editor	2378	2017-04-13 10:18:17.381	page-editor-js
com.atlassian.confluence.plugins.quickreload	2379	2017-04-13 10:18:17.381	quickReloadCaches
com.atlassian.plugins.atlassian-nav-links-plugin	2380	2017-04-13 10:18:17.381	salFeatureManager
com.atlassian.streams.confluence	2381	2017-04-13 10:18:17.381	formatPreferenceProvider
com.atlassian.plugins.base-hipchat-integration-plugin-api	2382	2017-04-13 10:18:17.381	hipchat-notification-type
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2383	2017-04-13 10:18:17.381	licenseReceiptValidator
com.atlassian.confluence.plugins.confluence-inline-tasks	2384	2017-04-13 10:18:17.381	my-tasks-resources
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2385	2017-04-13 10:18:17.381	batching-notification-template
com.atlassian.confluence.plugins.recently-viewed-plugin	2386	2017-04-13 10:18:17.381	purgeHistoryJobTrigger
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2387	2017-04-13 10:18:17.381	licenseHealthCheck
confluence.search.mappers.lucene	2388	2017-04-13 10:18:17.381	siteSearchPermissionsFilter
com.atlassian.confluence.plugins.confluence-knowledge-base	2389	2017-04-13 10:18:17.381	kb-how-to-article
com.atlassian.confluence.editor	2390	2017-04-13 10:18:17.381	editor-unrestricted
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2391	2017-04-13 10:18:17.381	databaseHealthCheck
com.atlassian.plugins.editor	2392	2017-04-13 10:18:17.381	atlassian-rte-css
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2393	2017-04-13 10:18:17.381	licenseManagerProvider
com.atlassian.plugins.atlassian-nav-links-plugin	2394	2017-04-13 10:18:17.381	show-app-switcher-soy-function
confluence.macros.advanced	2395	2017-04-13 10:18:17.381	blogs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2396	2017-04-13 10:18:17.381	applicationLifecycleLogger
com.atlassian.confluence.plugins.confluence-mentions-plugin	2397	2017-04-13 10:18:17.381	mention-created-notification
com.atlassian.confluence.plugins.confluence-like	2398	2017-04-13 10:18:17.381	view-email-content-item
com.atlassian.streams.streams-thirdparty-plugin	2399	2017-04-13 10:18:17.381	streams-thirdparty-ao-module
com.atlassian.confluence.plugins.confluence-onboarding	2400	2017-04-13 10:18:17.381	space-service
confluence.extractors.core	2401	2017-04-13 10:18:17.381	attachmentMetadataExtractor
com.atlassian.auiplugin	2402	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-header-async
com.atlassian.plugins.rest.atlassian-rest-module	2403	2017-04-13 10:18:17.381	rest-servlet-filter
com.atlassian.confluence.plugins.confluence-email-resources	2404	2017-04-13 10:18:17.381	notification-templates-page-created-2.0.0
com.atlassian.mywork.mywork-confluence-host-plugin	2405	2017-04-13 10:18:17.381	loginUriProvider
confluence.extra.information	2406	2017-04-13 10:18:17.381	information-plugin-mobile-styles
com.atlassian.oauth.serviceprovider	2407	2017-04-13 10:18:17.381	helpLinkResolver
com.atlassian.auiplugin	2408	2017-04-13 10:18:17.381	aui-experimental-toolbar2
confluence.search.mappers.lucene	2409	2017-04-13 10:18:17.381	viewUserProfilePermissionsSearchFilter
com.atlassian.confluence.plugins.confluence-like	2410	2017-04-13 10:18:17.381	contentEntityManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2411	2017-04-13 10:18:17.381	userSettingsUpgradeTask
com.atlassian.confluence.plugins.confluence-inline-tasks	2412	2017-04-13 10:18:17.381	space-page-picker-shim
confluence.search.mappers.lucene	2413	2017-04-13 10:18:17.381	hasPersonalSpace
com.atlassian.mywork.mywork-common-plugin	2414	2017-04-13 10:18:17.381	backoff-scheduler
com.atlassian.confluence.plugins.confluence-sal-plugin	2415	2017-04-13 10:18:17.381	localeResolver
com.atlassian.plugins.base-hipchat-integration-plugin-api	2416	2017-04-13 10:18:17.381	legacyTokenCleanup
com.atlassian.auiplugin	2417	2017-04-13 10:18:17.381	jquery-aop
com.atlassian.activeobjects.activeobjects-plugin	2418	2017-04-13 10:18:17.381	web-resources
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2419	2017-04-13 10:18:17.381	pluginUsage
com.atlassian.querylang.confluence-cql-plugin	2420	2017-04-13 10:18:17.381	confluence-cql-plugin-macro-resources
com.atlassian.confluence.keyboardshortcuts	2421	2017-04-13 10:18:17.381	addlabel
com.atlassian.confluence.plugins.confluence-email-resources	2422	2017-04-13 10:18:17.381	mail
confluence.sections.space.tools	2423	2017-04-13 10:18:17.381	spacepermissions
com.atlassian.confluence.plugins.confluence-space-ia	2424	2017-04-13 10:18:17.381	sidebarActions
com.atlassian.streams	2425	2017-04-13 10:18:17.381	xsrfHeaderValidator
com.atlassian.confluence.plugins.confluence-onboarding	2426	2017-04-13 10:18:17.381	init-session-flow-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2427	2017-04-13 10:18:17.381	pluginController
com.atlassian.plugins.atlassian-nav-links-plugin	2428	2017-04-13 10:18:17.381	local-navigation-links
confluence.sections.space.pages	2429	2017-04-13 10:18:17.381	list-recently-updated
com.atlassian.applinks.applinks-trustedapps-plugin	2430	2017-04-13 10:18:17.381	trusted-auth-outbound-configuration
com.atlassian.confluence.plugins.confluence-highlight-actions	2431	2017-04-13 10:18:17.381	xmlParserHelper
com.atlassian.confluence.plugins.confluence-file-notifications	2432	2017-04-13 10:18:17.381	file-notifications-page-link-action
com.atlassian.confluence.plugins.confluence-business-blueprints	2433	2017-04-13 10:18:17.381	sharelinksbookmarklet-actions
confluence.sections.page	2434	2017-04-13 10:18:17.381	view-attachments
com.atlassian.confluence.plugins.confluence-create-content-plugin	2435	2017-04-13 10:18:17.381	user-select2
com.atlassian.confluence.plugins.confluence-mentions-plugin	2436	2017-04-13 10:18:17.381	mentionsExcerptor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2437	2017-04-13 10:18:17.381	roadmap-placeholder-css
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2438	2017-04-13 10:18:17.381	pacClientContextFactory
com.atlassian.confluence.plugins.confluence-link-browser	2439	2017-04-13 10:18:17.381	link-browser-tab-weblink
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2440	2017-04-13 10:18:17.381	batch-section-provider
confluence.extra.confluencerpc	2441	2017-04-13 10:18:17.381	notificationsSoapService
com.atlassian.plugins.atlassian-whitelist-core-plugin	2442	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2443	2017-04-13 10:18:17.381	upm-common-install
com.atlassian.applinks.applinks-basicauth-plugin	2444	2017-04-13 10:18:17.381	applicationProperties
confluence.extra.webdav	2445	2017-04-13 10:18:17.381	microsoftMiniRedirectorAuthenticationHeaderFix
com.atlassian.streams.streams-thirdparty-plugin	2446	2017-04-13 10:18:17.381	sessionManager
confluence.web.resources	2447	2017-04-13 10:18:17.381	create-personal-space
com.atlassian.plugins.atlassian-nav-links-plugin	2448	2017-04-13 10:18:17.381	linked-application-capabilities
com.atlassian.applinks.applinks-trustedapps-plugin	2449	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.confluence.plugins.confluence-browser-metrics	2450	2017-04-13 10:18:17.381	whitelist
com.atlassian.confluence.plugins.view-source	2451	2017-04-13 10:18:17.381	view-source-resources
com.atlassian.confluence.plugins.confluence-mobile	2452	2017-04-13 10:18:17.381	dashboard-resources
confluence.macros.dashboard	2453	2017-04-13 10:18:17.381	create-space-button
com.atlassian.confluence.plugins.confluence-space-ia	2454	2017-04-13 10:18:17.381	space-ia-analytics
com.atlassian.plugins.base-hipchat-integration-plugin	2455	2017-04-13 10:18:17.381	connection-status-resources
confluence.web.resources	2456	2017-04-13 10:18:17.381	quicksearchdropdown
com.atlassian.confluence.plugins.confluence-mentions-plugin	2457	2017-04-13 10:18:17.381	mention-email-comment-link
confluence.macros.advanced	2458	2017-04-13 10:18:17.381	xhtml-excerpt
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2459	2017-04-13 10:18:17.381	upm-purchased-addons
confluence.sections.space.tools	2460	2017-04-13 10:18:17.381	orphan
com.atlassian.applinks.applinks-plugin	2461	2017-04-13 10:18:17.381	applinks-new-ui-creation
confluence.sections.news	2462	2017-04-13 10:18:17.381	view-attachments
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2463	2017-04-13 10:18:17.381	jwtService
com.atlassian.confluence.plugins.confluence-like	2464	2017-04-13 10:18:17.381	mobile-comments-like-resource
confluence.content.action.menu	2465	2017-04-13 10:18:17.381	modify
confluence.listeners.core	2466	2017-04-13 10:18:17.381	label-delete-listener
confluence.extra.attachments	2467	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	2468	2017-04-13 10:18:17.381	content-templates-share-notification-comment-pattern-1.0.0
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2469	2017-04-13 10:18:17.381	clusterMonitoring
com.atlassian.querylang.confluence-cql-plugin	2470	2017-04-13 10:18:17.381	user-field
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2471	2017-04-13 10:18:17.381	page-created-notification-template
confluence.extra.masterdetail	2472	2017-04-13 10:18:17.381	pagePropertiesService
com.atlassian.confluence.plugins.soy	2473	2017-04-13 10:18:17.381	soyTemplateRenderer
confluence.sections.space.tools	2474	2017-04-13 10:18:17.381	spacedetails
com.atlassian.confluence.plugins.confluence-business-blueprints	2475	2017-04-13 10:18:17.381	sharelinks-urlmacro-editor-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	2476	2017-04-13 10:18:17.381	confluence-team-space-blueprint-resources
com.atlassian.support.stp	2477	2017-04-13 10:18:17.381	pluginSupportInfoAppenderManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2478	2017-04-13 10:18:17.381	mailServerManager
com.atlassian.confluence.editor	2479	2017-04-13 10:18:17.381	vanilla
com.atlassian.streams	2480	2017-04-13 10:18:17.381	date-hr-HR
com.atlassian.confluence.plugins.confluence-mentions-plugin	2481	2017-04-13 10:18:17.381	mention-email-view-blogpost-link
com.atlassian.confluence.plugins.confluence-cache-management-plugin	2482	2017-04-13 10:18:17.381	cacheStatisticsRestResource-filter
com.atlassian.confluence.plugins.confluence-email-resources	2483	2017-04-13 10:18:17.381	defaultNotificationUserService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2484	2017-04-13 10:18:17.381	bandanaManager
com.atlassian.confluence.extra.widgetconnector	2485	2017-04-13 10:18:17.381	vimeo
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2486	2017-04-13 10:18:17.381	blogpost-created-notification-template-body
com.atlassian.confluence.plugins.confluence-monitoring	2487	2017-04-13 10:18:17.381	live-activity
com.atlassian.plugins.atlassian-nav-links-plugin	2488	2017-04-13 10:18:17.381	plugin-module-type-based-navigation-link-repository
com.atlassian.confluence.plugins.gadgets.spi	2489	2017-04-13 10:18:17.381	gadgetSpecIdGenerator
com.atlassian.confluence.extra.officeconnector	2490	2017-04-13 10:18:17.381	preview
confluence.sections.space.tools	2491	2017-04-13 10:18:17.381	watch-space
com.atlassian.confluence.plugins.search.confluence-search	2492	2017-04-13 10:18:17.381	searchQuerySessionFilter
com.atlassian.confluence.plugins.confluence-view-file-macro	2493	2017-04-13 10:18:17.381	view-file-macro-embedded-file-view-soy-resources
com.atlassian.applinks.applinks-plugin	2494	2017-04-13 10:18:17.381	refapp
com.atlassian.auiplugin	2495	2017-04-13 10:18:17.381	tabs
com.atlassian.auiplugin	2496	2017-04-13 10:18:17.381	keycode
com.atlassian.auiplugin	2497	2017-04-13 10:18:17.381	aui-tipsy
com.atlassian.confluence.plugins.templates-framework	2498	2017-04-13 10:18:17.381	importtemplates
com.atlassian.confluence.plugins.confluence-create-content-plugin	2499	2017-04-13 10:18:17.381	editor-blueprint-resources
com.atlassian.confluence.plugins.confluence-labels	2500	2017-04-13 10:18:17.381	labels-resources-server
com.atlassian.auiplugin	2501	2017-04-13 10:18:17.381	aui-form-notification
com.atlassian.confluence.plugins.confluence-email-resources	2502	2017-04-13 10:18:17.381	notification-templates-page-trashed-2.0.0
com.atlassian.soy.soy-template-plugin	2503	2017-04-13 10:18:17.381	helpUrlFunction
com.atlassian.confluence.plugins.confluence-jira-content	2504	2017-04-13 10:18:17.381	create-jira-content-services
com.atlassian.confluence.plugins.confluence-inline-comments	2505	2017-04-13 10:18:17.381	app
confluence.search.mappers.lucene	2506	2017-04-13 10:18:17.381	anonymousUserInfoSearchFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2507	2017-04-13 10:18:17.381	sysPersisted
com.atlassian.streams.confluence	2508	2017-04-13 10:18:17.381	date-smj-NO
com.atlassian.streams	2509	2017-04-13 10:18:17.381	date-it-CH
com.atlassian.confluence.plugins.confluence-email-resources	2510	2017-04-13 10:18:17.381	get-attachment-download-url-function
com.atlassian.confluence.plugins.confluence-templates	2511	2017-04-13 10:18:17.381	globaltemplates
com.atlassian.auiplugin	2512	2017-04-13 10:18:17.381	jquery-all
com.atlassian.streams.confluence	2513	2017-04-13 10:18:17.381	date-fr-MC
com.atlassian.confluence.plugins.confluence-inline-comments	2514	2017-04-13 10:18:17.381	create-comment-view
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	2515	2017-04-13 10:18:17.381	experiencecanvas-blueprint
com.atlassian.gadgets.publisher	2516	2017-04-13 10:18:17.381	publisher-plugin-rest-endpoints-filter
com.atlassian.auiplugin	2517	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-jquery
confluence.listeners.core	2518	2017-04-13 10:18:17.381	clusterWideReindexEventListener
com.atlassian.streams.confluence	2519	2017-04-13 10:18:17.381	date-nl-BE
com.atlassian.oauth.serviceprovider	2520	2017-04-13 10:18:17.381	oauthAccessTokenServlet
confluence.analytics.whitelist	2521	2017-04-13 10:18:17.381	confluenceCoreAnalyticsWhitelist
com.atlassian.streams.confluence	2522	2017-04-13 10:18:17.381	date-fr-LU
com.atlassian.streams	2523	2017-04-13 10:18:17.381	requestFactory
com.atlassian.streams	2524	2017-04-13 10:18:17.381	streamsWallboardWebResources
com.atlassian.auiplugin	2525	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-forms
confluence.web.resources	2526	2017-04-13 10:18:17.381	support-utility
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2527	2017-04-13 10:18:17.381	opt-in-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2528	2017-04-13 10:18:17.381	blogpost-edited-hipchat-notification-template
com.atlassian.confluence.editor	2529	2017-04-13 10:18:17.381	attachments-insert-utils-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	2530	2017-04-13 10:18:17.381	transactionalExecutorFactory
com.atlassian.confluence.plugins.confluence-templates	2531	2017-04-13 10:18:17.381	confluence-templates-action
confluence.sections.admin.header	2532	2017-04-13 10:18:17.381	admin-plugins
com.atlassian.confluence.plugins.status-macro	2533	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2534	2017-04-13 10:18:17.381	roleBasedLicensingPluginService
com.atlassian.plugins.rest.atlassian-rest-module	2535	2017-04-13 10:18:17.381	cors-defaults
confluence.content.action.menu	2536	2017-04-13 10:18:17.381	move-blogpost
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2537	2017-04-13 10:18:17.381	pluginsEnablementStateStore
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2538	2017-04-13 10:18:17.381	comment-edited-notification
com.atlassian.streams	2539	2017-04-13 10:18:17.381	date-it-IT
com.atlassian.applinks.applinks-oauth-plugin	2540	2017-04-13 10:18:17.381	add-consumer-servlet
com.atlassian.confluence.plugins.confluence-inline-tasks	2541	2017-04-13 10:18:17.381	tasks-report-resources
com.atlassian.streams.confluence	2542	2017-04-13 10:18:17.381	date-bg-BG
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2543	2017-04-13 10:18:17.381	hipChatSpaceDiscovery
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	2544	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.plugins.jquery	2545	2017-04-13 10:18:17.381	darkFeatureManager
com.atlassian.plugins.atlassian-nav-links-plugin	2546	2017-04-13 10:18:17.381	navigation-capability-resource-forward
com.atlassian.streams	2547	2017-04-13 10:18:17.381	projectKeyValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2548	2017-04-13 10:18:17.381	refimpl-upm-osgi-menu
com.atlassian.plugins.base-hipchat-integration-plugin	2549	2017-04-13 10:18:17.381	hipchat-configuration-panel-js
confluence.listeners.core	2550	2017-04-13 10:18:17.381	commentNotificationsListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2551	2017-04-13 10:18:17.381	confluenceGroupManager
com.atlassian.confluence.plugins.confluence-edge-index	2552	2017-04-13 10:18:17.381	nestedCommentCountQuery
com.atlassian.streams	2553	2017-04-13 10:18:17.381	date-ta-IN
com.atlassian.confluence.plugins.confluence-spaces	2554	2017-04-13 10:18:17.381	resources
com.atlassian.confluence.plugins.confluence-email-resources	2555	2017-04-13 10:18:17.381	template-utils-avatar-name-table-1.0.0
com.atlassian.confluence.plugins.confluence-email-resources	2556	2017-04-13 10:18:17.381	manage-user-email-footer-item
com.atlassian.plugins.atlassian-whitelist-core-plugin	2557	2017-04-13 10:18:17.381	userManager
confluence.comment.action	2558	2017-04-13 10:18:17.381	reply-comment
com.atlassian.confluence.plugins.confluence-create-content-plugin	2559	2017-04-13 10:18:17.381	templateChildCreatorListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2560	2017-04-13 10:18:17.381	pluginNotificationService
com.atlassian.confluence.plugins.confluence-ui-rest	2561	2017-04-13 10:18:17.381	ui-rest
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	2562	2017-04-13 10:18:17.381	util
com.atlassian.confluence.extra.widgetconnector	2563	2017-04-13 10:18:17.381	episodic
com.atlassian.confluence.plugins.search.confluence-search	2564	2017-04-13 10:18:17.381	confluenceV3SearchWhiteList
com.atlassian.confluence.plugins.confluence-file-notifications	2565	2017-04-13 10:18:17.381	file-content-mention-payload-transformer
com.atlassian.querylang.confluence-cql-plugin	2566	2017-04-13 10:18:17.381	id-field
com.atlassian.confluence.plugins.gadgets	2567	2017-04-13 10:18:17.381	wikiStyleRenderer
com.atlassian.plugins.atlassian-nav-links-plugin	2568	2017-04-13 10:18:17.381	absolute-url-factory
com.atlassian.plugins.atlassian-nps-plugin	2569	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.plugins.rest.atlassian-rest-module	2570	2017-04-13 10:18:17.381	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2571	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.confluence.plugins.confluence-license-banner	2572	2017-04-13 10:18:17.381	soy-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	2573	2017-04-13 10:18:17.381	DocumentationSpaceEventListener
com.atlassian.applinks.applinks-plugin	2574	2017-04-13 10:18:17.381	applinks-wizard
com.atlassian.auiplugin	2575	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-version
com.atlassian.plugins.atlassian-project-creation-plugin	2576	2017-04-13 10:18:17.381	project-crud-rest-filter
com.atlassian.streams.confluence	2577	2017-04-13 10:18:17.381	date-te-IN
com.atlassian.confluence.plugins.confluence-onboarding	2578	2017-04-13 10:18:17.381	spaceManager
com.atlassian.confluence.plugins.confluence-paste	2579	2017-04-13 10:18:17.381	restEndPoint
com.atlassian.analytics.analytics-client	2580	2017-04-13 10:18:17.381	pluginAccessor
confluence.extra.masterdetail	2581	2017-04-13 10:18:17.381	createButtonService
com.atlassian.applinks.applinks-plugin	2582	2017-04-13 10:18:17.381	applicationLinkRequestFactoryFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2583	2017-04-13 10:18:17.381	noOpPluginControlHandler
com.atlassian.confluence.plugins.confluence-email-resources	2584	2017-04-13 10:18:17.381	chrome-template-html-header-1.0.0
com.atlassian.confluence.plugins.confluence-highlight-actions	2585	2017-04-13 10:18:17.381	xmlModificationValidator
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	2586	2017-04-13 10:18:17.381	emoticonStorageUnmarshaller
com.atlassian.streams.confluence	2587	2017-04-13 10:18:17.381	date-smj-SE
com.atlassian.support.stp	2588	2017-04-13 10:18:17.381	stp-rest-filter
com.atlassian.confluence.keyboardshortcuts	2589	2017-04-13 10:18:17.381	confluence-tinymce-keyboard-shortcuts
com.atlassian.plugin.notifications.notifications-module	2590	2017-04-13 10:18:17.381	serverManager
com.atlassian.mywork.mywork-confluence-host-plugin	2591	2017-04-13 10:18:17.381	mw-miniview
confluence.sections.space.admin	2592	2017-04-13 10:18:17.381	addons
confluence.web.resources	2593	2017-04-13 10:18:17.381	avataror
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	2594	2017-04-13 10:18:17.381	ao-module
com.atlassian.applinks.applinks-plugin	2595	2017-04-13 10:18:17.381	authenticationConfigurator
com.atlassian.activeobjects.confluence.spi	2596	2017-04-13 10:18:17.381	initExecutorServiceProvider
com.atlassian.confluence.plugins.confluence-mobile	2597	2017-04-13 10:18:17.381	mobileAnalyticsWhitelist
com.atlassian.applinks.applinks-plugin	2598	2017-04-13 10:18:17.381	entityLinkClient
com.atlassian.plugins.base-hipchat-integration-plugin-api	2599	2017-04-13 10:18:17.381	ajs-amd
com.atlassian.confluence.plugins.confluence-mobile	2600	2017-04-13 10:18:17.381	macro-resources
com.atlassian.integration.jira.jira-integration-plugin	2601	2017-04-13 10:18:17.381	applicationProperties
confluence.listeners.core	2602	2017-04-13 10:18:17.381	clusterUpdateJobScheduleListener
confluence.extra.attachments	2603	2017-04-13 10:18:17.381	attachments-xhtml
com.atlassian.mywork.mywork-confluence-provider-plugin	2604	2017-04-13 10:18:17.381	internalHostApplication
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2605	2017-04-13 10:18:17.381	comment-edited-notification-template
confluence.web.resources	2606	2017-04-13 10:18:17.381	trigger
com.atlassian.confluence.plugins.confluence-software-blueprints	2607	2017-04-13 10:18:17.381	jirareports-item
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	2608	2017-04-13 10:18:17.381	bulkOperationsWhitelist
com.atlassian.auiplugin	2609	2017-04-13 10:18:17.381	aui-date-picker
com.atlassian.streams.streams-thirdparty-plugin	2610	2017-04-13 10:18:17.381	entityAssociationProviders
com.atlassian.confluence.ext.newcode-macro-plugin	2611	2017-04-13 10:18:17.381	newcode-xhtml
confluence.lifecycle.core	2612	2017-04-13 10:18:17.381	dblowercheck
confluence.extra.dynamictasklist2	2613	2017-04-13 10:18:17.381	v2-tasklist
confluence.macros.dashboard	2614	2017-04-13 10:18:17.381	popular-tab
com.atlassian.gadgets.publisher	2615	2017-04-13 10:18:17.381	publisher-plugin-rest-endpoints
com.atlassian.confluence.plugins.confluence-space-ia	2616	2017-04-13 10:18:17.381	rest-filter
com.atlassian.mywork.mywork-common-plugin	2617	2017-04-13 10:18:17.381	my-work-client-rest-filter
com.atlassian.streams.confluence	2618	2017-04-13 10:18:17.381	followManager
confluence.content.action.menu	2619	2017-04-13 10:18:17.381	remove-blogpost
confluence.extra.confluencerpc	2620	2017-04-13 10:18:17.381	confluence-soap-2
com.atlassian.confluence.plugins.confluence-view-file-macro	2621	2017-04-13 10:18:17.381	view-file
com.atlassian.confluence.plugins.confluence-sal-plugin	2622	2017-04-13 10:18:17.381	helpPathResolver
com.atlassian.plugin.notifications.notifications-module	2623	2017-04-13 10:18:17.381	addNotificationServerServlet
com.atlassian.oauth.consumer.sal	2624	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.confluence.plugins.status-macro	2625	2017-04-13 10:18:17.381	editor-featured-macro-status
com.atlassian.confluence.plugins.search.confluence-search	2626	2017-04-13 10:18:17.381	spanQueryBuilder
com.atlassian.confluence.plugins.recently-viewed-plugin	2627	2017-04-13 10:18:17.381	contentViewedListener
confluence.web.resources	2628	2017-04-13 10:18:17.381	select2
com.atlassian.confluence.plugins.confluence-content-property-storage	2629	2017-04-13 10:18:17.381	contentService
com.atlassian.plugins.atlassian-help-tips	2630	2017-04-13 10:18:17.381	tx-processor
com.atlassian.confluence.plugins.confluence-business-blueprints	2631	2017-04-13 10:18:17.381	decisions-index-page
com.atlassian.confluence.extra.widgetconnector	2632	2017-04-13 10:18:17.381	shareacrobat
com.atlassian.confluence.plugins.dialog-wizard	2633	2017-04-13 10:18:17.381	dialog-wizard-resources
com.atlassian.mywork.mywork-common-plugin	2634	2017-04-13 10:18:17.381	systemStatusService
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2635	2017-04-13 10:18:17.381	operatingSystemInfo
com.atlassian.confluence.plugins.quickreload	2636	2017-04-13 10:18:17.381	renderer
com.atlassian.gadgets.opensocial	2637	2017-04-13 10:18:17.381	authentication-servlet-filter
com.atlassian.applinks.applinks-oauth-plugin	2638	2017-04-13 10:18:17.381	TwoLeggedOAuthAuthenticatorProviderPluginModule
com.atlassian.streams.streams-thirdparty-plugin	2639	2017-04-13 10:18:17.381	activityService
com.atlassian.streams	2640	2017-04-13 10:18:17.381	defaultClock
com.atlassian.confluence.plugins.confluence-request-access-plugin	2641	2017-04-13 10:18:17.381	userNotificationService
com.atlassian.mywork.mywork-common-plugin	2642	2017-04-13 10:18:17.381	application-link-rescheduler
com.atlassian.mywork.mywork-confluence-host-plugin	2643	2017-04-13 10:18:17.381	workday-email-resources
com.atlassian.confluence.plugins.confluence-request-access-plugin	2644	2017-04-13 10:18:17.381	pageNotPermittedPanel
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	2645	2017-04-13 10:18:17.381	bloggingUtils
com.atlassian.streams.confluence	2646	2017-04-13 10:18:17.381	date-fr-FR
com.atlassian.mywork.mywork-confluence-host-plugin	2647	2017-04-13 10:18:17.381	authenticationListener
com.atlassian.support.healthcheck.support-healthcheck-plugin	2648	2017-04-13 10:18:17.381	supportHealthCheckRest
com.atlassian.analytics.analytics-client	2649	2017-04-13 10:18:17.381	userPermissionsHelper
com.atlassian.confluence.plugins.confluence-files	2650	2017-04-13 10:18:17.381	unresolvedCommentCountOnFileVersions
confluence.sections.space.advanced	2651	2017-04-13 10:18:17.381	spacedetails-personal
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2652	2017-04-13 10:18:17.381	spaceConfigurationAction2
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2653	2017-04-13 10:18:17.381	initialise-metrics-collection
confluence.sections.page.temp	2654	2017-04-13 10:18:17.381	edit-blogpost
confluence.web.panels	2655	2017-04-13 10:18:17.381	confluence-userprofile-info
com.atlassian.oauth.serviceprovider	2656	2017-04-13 10:18:17.381	basicConsumerInformationRenderer
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2657	2017-04-13 10:18:17.381	user-settings-panel-resources
com.atlassian.streams.confluence	2658	2017-04-13 10:18:17.381	date-sr-Latn-CS
com.atlassian.confluence.plugins.confluence-business-blueprints	2659	2017-04-13 10:18:17.381	autoconvert-any-link
com.atlassian.streams	2660	2017-04-13 10:18:17.381	date-ns-ZA
com.atlassian.plugins.base-hipchat-integration-plugin	2661	2017-04-13 10:18:17.381	configureServlet
confluence.sections.admin	2662	2017-04-13 10:18:17.381	generalconfiguration
confluence.sections.profile	2663	2017-04-13 10:18:17.381	follow-user
org.randombits.confluence.toc	2664	2017-04-13 10:18:17.381	toc-plugin-analytics
confluence.web.resources	2665	2017-04-13 10:18:17.381	jquery-progressbar
com.atlassian.confluence.extra.widgetconnector	2666	2017-04-13 10:18:17.381	backtype
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2667	2017-04-13 10:18:17.381	licenseHandlerContextItem
com.atlassian.auiplugin	2668	2017-04-13 10:18:17.381	aui-toggle
com.atlassian.confluence.plugins.confluence-inline-tasks	2669	2017-04-13 10:18:17.381	editor-autocomplete-date-js
com.atlassian.plugins.atlassian-help-tips	2670	2017-04-13 10:18:17.381	userManager
com.atlassian.confluence.plugins.confluence-space-ia	2671	2017-04-13 10:18:17.381	space-tools-reorder-pages
com.atlassian.confluence.plugins.confluence-link-browser	2672	2017-04-13 10:18:17.381	link-browser-web-items
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2673	2017-04-13 10:18:17.381	payload-processor
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	2674	2017-04-13 10:18:17.381	emoticonEditorToStorageTransformer
confluence.sections.space.tools	2675	2017-04-13 10:18:17.381	formats
com.atlassian.plugins.atlassian-plugins-webresource-plugin	2676	2017-04-13 10:18:17.381	data
confluence.macros.advanced	2677	2017-04-13 10:18:17.381	blogposts
com.atlassian.confluence.plugins.confluence-email-resources	2678	2017-04-13 10:18:17.381	natto-function
confluence.sections.space.admin	2679	2017-04-13 10:18:17.381	choosetheme
com.atlassian.support.stp	2680	2017-04-13 10:18:17.381	env-support-info
com.atlassian.confluence.plugins.confluence-email-resources	2681	2017-04-13 10:18:17.381	content-templates
com.atlassian.confluence.plugins.confluence-software-blueprints	2682	2017-04-13 10:18:17.381	jirareports-services
com.atlassian.applinks.applinks-trustedapps-plugin	2683	2017-04-13 10:18:17.381	callbackParameter
confluence.search.mappers.lucene	2684	2017-04-13 10:18:17.381	matchNoDocsFilter
com.atlassian.support.stp	2685	2017-04-13 10:18:17.381	support-info
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2686	2017-04-13 10:18:17.381	uriBuilder
com.atlassian.confluence.plugins.soy	2687	2017-04-13 10:18:17.381	soy-doclink-function
confluence.macro.metadata.provider	2688	2017-04-13 10:18:17.381	macro-browser-metadata-resources
com.atlassian.confluence.plugins.confluence-email-resources	2689	2017-04-13 10:18:17.381	template-utils-user-link-1.0.0
com.atlassian.plugins.base-hipchat-integration-plugin-api	2690	2017-04-13 10:18:17.381	jquery-amd
confluence.content.action.menu	2691	2017-04-13 10:18:17.381	linkpopup-resources
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2692	2017-04-13 10:18:17.381	helpPathResolver
confluence.web.resources	2693	2017-04-13 10:18:17.381	analytics-support
com.atlassian.auiplugin	2694	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-document-observer
com.atlassian.querylang.confluence-cql-plugin	2695	2017-04-13 10:18:17.381	contributor-field
com.atlassian.confluence.plugins.share-page	2696	2017-04-13 10:18:17.381	share-page-email-notification-template-body
com.atlassian.confluence.keyboardshortcuts	2697	2017-04-13 10:18:17.381	tinymce.save.editor.page
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2698	2017-04-13 10:18:17.381	userAuthenticationDecorator
com.atlassian.oauth.consumer.sal	2699	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2700	2017-04-13 10:18:17.381	blogpost-created-notification
com.atlassian.support.stp	2701	2017-04-13 10:18:17.381	pluginScheduler
com.atlassian.plugins.base-hipchat-integration-plugin	2702	2017-04-13 10:18:17.381	room-deleted
com.atlassian.confluence.plugins.confluence-edge-index	2703	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2704	2017-04-13 10:18:17.381	hipChatDiscoveryIsSpaceAdmin
com.atlassian.streams	2705	2017-04-13 10:18:17.381	date-pl-PL
com.atlassian.confluence.extra.officeconnector	2706	2017-04-13 10:18:17.381	cleanupTrigger
com.atlassian.applinks.applinks-plugin	2707	2017-04-13 10:18:17.381	applicationPropertiesContextItem
com.atlassian.plugins.authentication.atlassian-authentication-plugin	2708	2017-04-13 10:18:17.381	atlassian-authentication-whitelist
com.atlassian.confluence.plugins.gadgets	2709	2017-04-13 10:18:17.381	gadget-admin
com.atlassian.plugins.atlassian-nav-links-plugin	2710	2017-04-13 10:18:17.381	host-product-login-page
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2711	2017-04-13 10:18:17.381	viewpluginusage
com.atlassian.confluence.plugins.status-macro	2712	2017-04-13 10:18:17.381	status-legacy
com.atlassian.confluence.plugins.confluence-edge-index	2713	2017-04-13 10:18:17.381	like.create
com.atlassian.oauth.serviceprovider	2714	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.confluence.plugins.confluence-onboarding	2715	2017-04-13 10:18:17.381	draftsTransitionHelper
confluence.extra.masterdetail	2716	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.applinks.applinks-oauth-plugin	2717	2017-04-13 10:18:17.381	oauth-auth
confluence.macros.advanced	2718	2017-04-13 10:18:17.381	xhtml-include
com.atlassian.auiplugin	2719	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-set-visible
confluence.macros.advanced	2720	2017-04-13 10:18:17.381	blog-posts
com.atlassian.confluence.plugins.confluence-mentions-plugin	2721	2017-04-13 10:18:17.381	mention-recipients-provider
com.atlassian.confluence.plugins.watch-button	2722	2017-04-13 10:18:17.381	watch-resources
com.atlassian.applinks.applinks-basicauth-plugin	2723	2017-04-13 10:18:17.381	BasicAuthenticationProviderPluginModule
confluence.macros.basic	2724	2017-04-13 10:18:17.381	quote
com.atlassian.confluence.plugins.search.confluence-search	2725	2017-04-13 10:18:17.381	searchService
com.atlassian.streams	2726	2017-04-13 10:18:17.381	date-kok-IN
confluence.macros.advanced	2727	2017-04-13 10:18:17.381	doc
com.atlassian.applinks.applinks-oauth-plugin	2728	2017-04-13 10:18:17.381	adminUIAuthenticator
com.atlassian.confluence.plugins.confluence-email-resources	2729	2017-04-13 10:18:17.381	content-templates-users-involved-pattern-2.0.0
com.atlassian.querylang.confluence-cql-plugin	2730	2017-04-13 10:18:17.381	creator-field
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2731	2017-04-13 10:18:17.381	userManager
com.atlassian.plugins.atlassian-whitelist-core-plugin	2732	2017-04-13 10:18:17.381	ao-module
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2733	2017-04-13 10:18:17.381	tabVisibilityContextItem
com.atlassian.confluence.plugins.search.confluence-search	2734	2017-04-13 10:18:17.381	boostingQueryFactory
com.atlassian.mywork.mywork-common-plugin	2735	2017-04-13 10:18:17.381	pluginEventManager
com.atlassian.plugins.base-hipchat-integration-plugin	2736	2017-04-13 10:18:17.381	hipchat-require-resource-by-context-function
com.atlassian.confluence.plugins.confluence-daily-summary-email	2737	2017-04-13 10:18:17.381	SummaryEmailNotificationManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2738	2017-04-13 10:18:17.381	jwtTokenFactory
com.atlassian.confluence.plugins.confluence-onboarding	2739	2017-04-13 10:18:17.381	confluenceAccessManager
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	2740	2017-04-13 10:18:17.381	settingsManager
com.atlassian.confluence.plugins.confluence-inline-comments	2741	2017-04-13 10:18:17.381	confluence-inline-comments-rest
confluence.extra.chart	2742	2017-04-13 10:18:17.381	com.atlassian.confluence.extra.chart.name
com.atlassian.mywork.mywork-confluence-host-plugin	2743	2017-04-13 10:18:17.381	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	2744	2017-04-13 10:18:17.381	notificationEmailFactory
com.atlassian.confluence.contributors	2745	2017-04-13 10:18:17.381	contributors-summary-xhtml
confluence.admin.user	2746	2017-04-13 10:18:17.381	browse-users-tab-create
com.atlassian.confluence.plugins.search.confluence-search	2747	2017-04-13 10:18:17.381	siteSearch-query-mapper
com.atlassian.confluence.plugins.confluence-space-directory	2748	2017-04-13 10:18:17.381	spaceDirectoryActions
com.atlassian.applinks.applinks-plugin	2749	2017-04-13 10:18:17.381	list-application-entity-action
com.atlassian.confluence.plugins.confluence-mobile	2750	2017-04-13 10:18:17.381	app-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	2751	2017-04-13 10:18:17.381	avatar
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2752	2017-04-13 10:18:17.381	instanceTopologyService
com.atlassian.confluence.plugins.confluence-license-rest	2753	2017-04-13 10:18:17.381	clusterManager
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	2754	2017-04-13 10:18:17.381	confluenceAccessManager
com.atlassian.confluence.editor	2755	2017-04-13 10:18:17.381	editor-page-restricted
com.atlassian.plugins.atlassian-nav-links-plugin	2756	2017-04-13 10:18:17.381	clock
confluence.extra.impresence2	2757	2017-04-13 10:18:17.381	yahoo-xhtml
com.atlassian.mywork.mywork-common-plugin	2758	2017-04-13 10:18:17.381	registration-service
com.atlassian.streams	2759	2017-04-13 10:18:17.381	date-uz-Latn-UZ
com.atlassian.confluence.plugins.confluence-onboarding	2760	2017-04-13 10:18:17.381	contentBlueprintManager
confluence.comment.action	2761	2017-04-13 10:18:17.381	primary
confluence.extra.confluencerpc	2762	2017-04-13 10:18:17.381	xhtmlRpcHandler
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2763	2017-04-13 10:18:17.381	system-information
confluence.sections.admin	2764	2017-04-13 10:18:17.381	loglevel
com.atlassian.confluence.plugins.confluence-inline-tasks	2765	2017-04-13 10:18:17.381	inline-tasks-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2766	2017-04-13 10:18:17.381	blogpost-trashed-notification
com.atlassian.confluence.plugins.confluence-quicknav	2767	2017-04-13 10:18:17.381	quick-nav-rest
confluence.extractors.core	2768	2017-04-13 10:18:17.381	genericExtractor
confluence.user.menu	2769	2017-04-13 10:18:17.381	user-preferences
com.atlassian.confluence.plugins.reliablesave	2770	2017-04-13 10:18:17.381	reliable-save
com.atlassian.confluence.plugins.confluence-create-content-plugin	2771	2017-04-13 10:18:17.381	blueprint
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2772	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.applinks.applinks-plugin	2773	2017-04-13 10:18:17.381	xsrfTokenValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2774	2017-04-13 10:18:17.381	bundledUpdateInfoStore
com.atlassian.confluence.editor	2775	2017-04-13 10:18:17.381	editor-core-resources
com.atlassian.streams.confluence	2776	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.confluence.plugins.confluence-files	2777	2017-04-13 10:18:17.381	confluenceFileRest-filter
com.atlassian.confluence.plugins.confluence-email-resources	2778	2017-04-13 10:18:17.381	siteLogoManager
com.atlassian.streams.streams-thirdparty-plugin	2779	2017-04-13 10:18:17.381	thirdPartyStreamsEntryBuilder
com.atlassian.confluence.extra.officeconnector	2780	2017-04-13 10:18:17.381	macro-browser-smart-fields
com.atlassian.auiplugin	2781	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-backbone-backbone
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2782	2017-04-13 10:18:17.381	soy-templates
confluence.web.resources	2783	2017-04-13 10:18:17.381	keyboard
confluence.sections.help	2784	2017-04-13 10:18:17.381	feedbuilder
com.atlassian.confluence.plugins.confluence-email-tracker	2785	2017-04-13 10:18:17.381	emailTrackerService
com.atlassian.plugins.authentication.atlassian-authentication-plugin	2786	2017-04-13 10:18:17.381	authentication-plugin-ao
com.atlassian.plugins.base-hipchat-integration-plugin	2787	2017-04-13 10:18:17.381	configurationPanel
confluence.extra.livesearch	2788	2017-04-13 10:18:17.381	livesearch-macro-web-resources
com.atlassian.confluence.plugins.confluence-space-directory	2789	2017-04-13 10:18:17.381	space-directory-templates
com.atlassian.querylang.confluence-cql-plugin	2790	2017-04-13 10:18:17.381	user-query-mapper
com.atlassian.streams	2791	2017-04-13 10:18:17.381	date-et-EE
com.atlassian.auiplugin	2792	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-format
com.atlassian.streams.confluence	2793	2017-04-13 10:18:17.381	date-ca-ES
com.atlassian.streams.streams-thirdparty-plugin	2794	2017-04-13 10:18:17.381	uriBuilder
confluence.web.resources	2795	2017-04-13 10:18:17.381	backupadmin
com.atlassian.confluence.plugins.confluence-inline-comments	2796	2017-04-13 10:18:17.381	inline-comment-created-mail-batch-notification-processor
com.atlassian.confluence.plugins.confluence-daily-summary-email	2797	2017-04-13 10:18:17.381	daily-summary-admin-item
com.atlassian.plugins.atlassian-nav-links-plugin	2798	2017-04-13 10:18:17.381	activeObjects
com.atlassian.plugin.jslibs	2799	2017-04-13 10:18:17.381	skate-0.14.0
com.atlassian.confluence.plugins.confluence-business-blueprints	2800	2017-04-13 10:18:17.381	meeting-notes-index
com.atlassian.plugins.atlassian-nav-links-plugin	2801	2017-04-13 10:18:17.381	host-application
com.atlassian.confluence.plugins.confluence-business-blueprints	2802	2017-04-13 10:18:17.381	meeting-notes-page
com.atlassian.mywork.mywork-common-plugin	2803	2017-04-13 10:18:17.381	servingRequestsFilter
com.atlassian.auiplugin	2804	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-has-touch
com.atlassian.confluence.plugins.search.confluence-search	2805	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.extra.flyingpdf	2806	2017-04-13 10:18:17.381	customFontListener
confluence.web.resources	2807	2017-04-13 10:18:17.381	auditlogclient
com.atlassian.confluence.plugins.confluence-file-notifications	2808	2017-04-13 10:18:17.381	file-content-icons
confluence.web.resources	2809	2017-04-13 10:18:17.381	meta
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2810	2017-04-13 10:18:17.381	roadmap-models
com.atlassian.confluence.editor	2811	2017-04-13 10:18:17.381	page-editor-message
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2812	2017-04-13 10:18:17.381	follower-added-hipchat-notification-template
com.atlassian.support.stp	2813	2017-04-13 10:18:17.381	scheduleFactory
confluence.web.resources	2814	2017-04-13 10:18:17.381	breadcrumbs
com.atlassian.confluence.plugins.confluence-mobile	2815	2017-04-13 10:18:17.381	localeManager
com.atlassian.confluence.plugins.soy	2816	2017-04-13 10:18:17.381	soy-import-resource-function
com.atlassian.streams.confluence	2817	2017-04-13 10:18:17.381	date-lv-LV
confluence.listeners.core	2818	2017-04-13 10:18:17.381	plugin-logging-listener
com.atlassian.confluence.plugins.confluence-highlight-actions	2819	2017-04-13 10:18:17.381	tableModificationValidator
com.atlassian.streams.confluence	2820	2017-04-13 10:18:17.381	date-ur-PK
com.atlassian.confluence.plugins.confluence-content-property-storage	2821	2017-04-13 10:18:17.381	contentPropertyIndexSchemaManager
confluence.listeners.core	2822	2017-04-13 10:18:17.381	page-hierarchy-logging-listener
com.atlassian.oauth.serviceprovider.sal	2823	2017-04-13 10:18:17.381	tokenStore
com.atlassian.plugin.notifications.notifications-module	2824	2017-04-13 10:18:17.381	notificationSchemeService
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2825	2017-04-13 10:18:17.381	roadmap-image-servlet
com.atlassian.confluence.plugins.quickedit	2826	2017-04-13 10:18:17.381	quick-comment-initial
com.atlassian.support.stp	2827	2017-04-13 10:18:17.381	scheduledTaskManager
com.atlassian.analytics.analytics-client	2936	2017-04-13 10:18:17.381	whitelist-report-servlet
com.atlassian.plugins.base-hipchat-integration-plugin	2828	2017-04-13 10:18:17.381	hipchat-configuration-panel-resources
com.atlassian.auiplugin	2829	2017-04-13 10:18:17.381	soy
com.atlassian.confluence.plugins.confluence-fixed-headers	2830	2017-04-13 10:18:17.381	confluence-fixed-headers-editor-resources
com.atlassian.querylang.confluence-cql-plugin	2831	2017-04-13 10:18:17.381	start-of-day-zero-arg-function
confluence.sections.space.tools	2832	2017-04-13 10:18:17.381	permissions
com.atlassian.streams	2833	2017-04-13 10:18:17.381	completionService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2834	2017-04-13 10:18:17.381	webResourceUrlProvider
com.atlassian.plugin.jslibs	2835	2017-04-13 10:18:17.381	d3-3.5.5
com.atlassian.auiplugin	2836	2017-04-13 10:18:17.381	aui-spinner
com.atlassian.mywork.mywork-common-plugin	2837	2017-04-13 10:18:17.381	xsrfTokenAccessor
com.atlassian.plugins.atlassian-nav-links-plugin	2838	2017-04-13 10:18:17.381	custom-apps-admin-ui-resources
confluence.macros.advanced	2839	2017-04-13 10:18:17.381	change-history
com.atlassian.confluence.plugins.confluence-previews	2840	2017-04-13 10:18:17.381	confluence-previews-js
com.atlassian.confluence.extra.officeconnector	2841	2017-04-13 10:18:17.381	officeconnector-analytics-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2842	2017-04-13 10:18:17.381	confluence-webpanel-servlet
com.atlassian.confluence.plugins.confluence-labels	2843	2017-04-13 10:18:17.381	labels-editor
com.atlassian.confluence.plugins.confluence-file-notifications	2844	2017-04-13 10:18:17.381	contentService
com.atlassian.plugin.notifications.notifications-module	2845	2017-04-13 10:18:17.381	notification-prefs
confluence.content.action.menu	2846	2017-04-13 10:18:17.381	page-permissions
confluence.web.resources	2847	2017-04-13 10:18:17.381	setup-success
com.atlassian.streams.confluence	2848	2017-04-13 10:18:17.381	date-es-UY
com.atlassian.auiplugin	2849	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-custom-read-view
com.atlassian.auiplugin	2850	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-setup
com.atlassian.confluence.plugins.confluence-daily-summary-email	2851	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-like	2852	2017-04-13 10:18:17.381	like-hipchat-soy-templates
com.atlassian.applinks.applinks-plugin	2853	2017-04-13 10:18:17.381	applinksRestV2-filter
confluence.web.resources	2854	2017-04-13 10:18:17.381	page-restricted-resources
com.atlassian.auiplugin	2855	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-jquery-jquery-spin
com.atlassian.confluence.extra.widgetconnector	2856	2017-04-13 10:18:17.381	widget
com.atlassian.confluence.plugins.soy	2857	2017-04-13 10:18:17.381	soyTemplateRendererHelperContext
com.atlassian.streams.confluence	2858	2017-04-13 10:18:17.381	date-es-VE
com.atlassian.confluence.plugins.confluence-email-resources	2859	2017-04-13 10:18:17.381	template-utils-avatar-name-table-column-2.0.0
confluence.web.resources	2860	2017-04-13 10:18:17.381	setup
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2861	2017-04-13 10:18:17.381	upm-osgi-templates
com.atlassian.confluence.extra.flyingpdf	2862	2017-04-13 10:18:17.381	pdfExportServiceDelegator
com.atlassian.streams	2863	2017-04-13 10:18:17.381	streamsCommentsServlet
com.atlassian.auiplugin	2864	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-when-i-type
com.atlassian.streams.confluence	2865	2017-04-13 10:18:17.381	date-sr-Latn-BA
com.atlassian.streams	2866	2017-04-13 10:18:17.381	date-pa-IN
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2867	2017-04-13 10:18:17.381	confluence-page-edited-batching
com.atlassian.confluence.plugins.confluence-highlight-actions	2868	2017-04-13 10:18:17.381	markSelectionModifier
com.atlassian.confluence.plugins.confluence-business-blueprints	2869	2017-04-13 10:18:17.381	decisions-blueprint
com.atlassian.auiplugin	2870	2017-04-13 10:18:17.381	deprecated-legacy-ajs-file
com.atlassian.streams.confluence	2871	2017-04-13 10:18:17.381	date-fr-CH
com.atlassian.confluence.keyboardshortcuts	2872	2017-04-13 10:18:17.381	toggle.space.sidebar
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2873	2017-04-13 10:18:17.381	prettyurls-combined-filter-before-login
com.atlassian.confluence.plugins.confluence-inline-tasks	2874	2017-04-13 10:18:17.381	location-task-report-template
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2875	2017-04-13 10:18:17.381	personalInformationManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2876	2017-04-13 10:18:17.381	logFileHelper
com.atlassian.confluence.plugins.confluence-easyuser-admin	2877	2017-04-13 10:18:17.381	add-users-button
confluence.listeners.core	2878	2017-04-13 10:18:17.381	userdirectorylistener
confluence.macros.advanced	2879	2017-04-13 10:18:17.381	xhtml-gallery
com.atlassian.streams.confluence	2880	2017-04-13 10:18:17.381	date-fr-CA
com.atlassian.confluence.plugins.confluence-onboarding	2881	2017-04-13 10:18:17.381	cqlSearchService
com.atlassian.confluence.plugins.confluence-view-file-macro	2882	2017-04-13 10:18:17.381	common
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2883	2017-04-13 10:18:17.381	comment-created-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-link-browser	2884	2017-04-13 10:18:17.381	link-browser-tab-recentlyviewed
com.atlassian.confluence.extra.officeconnector	2885	2017-04-13 10:18:17.381	officeauth
confluence.extra.impresence2	2886	2017-04-13 10:18:17.381	skype
com.atlassian.streams.confluence	2887	2017-04-13 10:18:17.381	date-vi-VN
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2888	2017-04-13 10:18:17.381	hostApplicationInformation
com.atlassian.auiplugin	2889	2017-04-13 10:18:17.381	dropdown
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2890	2017-04-13 10:18:17.381	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-mobile	2891	2017-04-13 10:18:17.381	webResourceManager
confluence.web.resources	2892	2017-04-13 10:18:17.381	syntaxhighlighter-xml
com.atlassian.streams	2893	2017-04-13 10:18:17.381	date-default
confluence.search.mappers.lucene	2894	2017-04-13 10:18:17.381	constantScore
com.atlassian.plugins.atlassian-nav-links-plugin	2895	2017-04-13 10:18:17.381	custom-apps-navigation-links
com.atlassian.confluence.plugins.confluence-email-resources	2896	2017-04-13 10:18:17.381	manage-notifications-email-footer-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2897	2017-04-13 10:18:17.381	monitorRepresentationFactory
com.atlassian.confluence.plugins.confluence-email-resources	2898	2017-04-13 10:18:17.381	notification-templates-comment-edit-1.0.0
com.atlassian.instrumentation.atlassian-instrumentation-expose-jmx	2899	2017-04-13 10:18:17.381	jmxInstrumentSchedulerImpl
com.atlassian.applinks.applinks-cors-plugin	2900	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.confluence.plugins.soy	2901	2017-04-13 10:18:17.381	soy-panels-for-location-soy-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2902	2017-04-13 10:18:17.381	upm-common-templates
com.atlassian.auiplugin	2903	2017-04-13 10:18:17.381	aui-experimental-header
com.atlassian.confluence.plugins.share-page	2904	2017-04-13 10:18:17.381	share-attachment-email-notification-template
com.atlassian.applinks.applinks-plugin	2905	2017-04-13 10:18:17.381	applinks-public
com.atlassian.confluence.plugins.gadgets	2906	2017-04-13 10:18:17.381	whitelist
com.atlassian.confluence.plugins.confluence-create-content-plugin	2907	2017-04-13 10:18:17.381	i18nBeanFactory
com.atlassian.streams.confluence	2908	2017-04-13 10:18:17.381	date-fr-BE
com.atlassian.confluence.plugins.view-storage-format	2909	2017-04-13 10:18:17.381	view-comment-storage-resources
com.atlassian.confluence.plugins.confluence-dashboard	2910	2017-04-13 10:18:17.381	react-dashboard-dependencies
com.atlassian.confluence.plugins.confluence-content-property-storage	2911	2017-04-13 10:18:17.381	contentproperty-by-contents-and-keys
com.atlassian.confluence.plugins.confluence-like	2912	2017-04-13 10:18:17.381	view-email-adg-content-item
com.atlassian.confluence.plugins.confluence-space-ia	2913	2017-04-13 10:18:17.381	soy-resources
com.atlassian.applinks.applinks-plugin	2914	2017-04-13 10:18:17.381	feature-v3-feedback-collector
com.atlassian.analytics.analytics-client	2915	2017-04-13 10:18:17.381	programmatic-analytics-init
com.atlassian.confluence.plugins.confluence-inline-tasks	2916	2017-04-13 10:18:17.381	task-email-notification-template
com.atlassian.confluence.ext.newcode-macro-plugin	2917	2017-04-13 10:18:17.381	sh-theme-rdark
com.atlassian.querylang.confluence-cql-plugin	2918	2017-04-13 10:18:17.381	none-query-mapper
com.atlassian.streams	2919	2017-04-13 10:18:17.381	date-sma-SE
confluence.extractors.core	2920	2017-04-13 10:18:17.381	lastModifierName Extractor
com.atlassian.streams.streams-thirdparty-plugin	2921	2017-04-13 10:18:17.381	activityServiceActiveObjects
confluence.extractors.core	2922	2017-04-13 10:18:17.381	htmlEntitiesFilterExtractor
com.atlassian.confluence.plugins.drag-and-drop	2923	2017-04-13 10:18:17.381	files-upload-analytics
crowd.system.passwordencoders	2924	2017-04-13 10:18:17.381	sha
com.atlassian.confluence.plugins.confluence-mobile	2925	2017-04-13 10:18:17.381	mobile-site-filter
com.atlassian.confluence.plugins.confluence-onboarding	2926	2017-04-13 10:18:17.381	userAccessor
com.atlassian.confluence.plugins.confluence-sal-plugin	2927	2017-04-13 10:18:17.381	authenticationListener
confluence.web.resources	2928	2017-04-13 10:18:17.381	draft-changes-css
com.atlassian.applinks.applinks-plugin	2929	2017-04-13 10:18:17.381	requestFactory
com.atlassian.confluence.plugins.confluence-link-browser	2930	2017-04-13 10:18:17.381	confluenceLinkBrowserWhitelist
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	2931	2017-04-13 10:18:17.381	dark-feature-rest-filter
com.atlassian.confluence.plugins.confluence-create-content-plugin	2932	2017-04-13 10:18:17.381	list-space-blueprints-templates-panel
com.atlassian.confluence.plugins.confluence-create-content-plugin	2933	2017-04-13 10:18:17.381	create-from-template-macro-browser-resources
com.atlassian.confluence.plugins.confluence-monitoring	2934	2017-04-13 10:18:17.381	cache-stats
com.atlassian.confluence.plugins.confluence-license-rest	2935	2017-04-13 10:18:17.381	licenseService
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2937	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-mentions-plugin	2938	2017-04-13 10:18:17.381	confluenceMentionsEventListener
confluence.sections.space	2939	2017-04-13 10:18:17.381	space-labels
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2940	2017-04-13 10:18:17.381	pluginHibernateSessionFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	2941	2017-04-13 10:18:17.381	create-blank-space-blueprint
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2942	2017-04-13 10:18:17.381	follower-added-notification
com.atlassian.plugins.rest.atlassian-rest-module	2943	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2944	2017-04-13 10:18:17.381	confluenceNotificationPreferenceManager
com.atlassian.applinks.applinks-cors-plugin	2945	2017-04-13 10:18:17.381	xsrfTokenAccessor
confluence.web.resources	2946	2017-04-13 10:18:17.381	page-move-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2947	2017-04-13 10:18:17.381	plugin-notifications
com.atlassian.auiplugin	2948	2017-04-13 10:18:17.381	ajs-zepto
com.atlassian.applinks.applinks-plugin	2949	2017-04-13 10:18:17.381	bamboo-project
com.atlassian.mywork.mywork-confluence-host-plugin	2950	2017-04-13 10:18:17.381	mwloginminiview
confluence.header.imagelinks	2951	2017-04-13 10:18:17.381	siteDarkFeatures
com.atlassian.streams.confluence	2952	2017-04-13 10:18:17.381	date-es-PY
com.atlassian.confluence.plugins.confluence-templates	2953	2017-04-13 10:18:17.381	template-editor-variables-template-resources
com.atlassian.confluence.plugins.confluence-inline-comments	2954	2017-04-13 10:18:17.381	notification-template-new-mail
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2955	2017-04-13 10:18:17.381	notification-batching
com.atlassian.activeobjects.confluence.spi	2956	2017-04-13 10:18:17.381	activeObjectsBackupRestoreProvider
confluence.lifecycle.core	2957	2017-04-13 10:18:17.381	tenantawarejobrescheduler
com.atlassian.streams.confluence	2958	2017-04-13 10:18:17.381	date-es-PR
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2959	2017-04-13 10:18:17.381	analyticsRenderContext
com.atlassian.applinks.applinks-trustedapps-plugin	2960	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	2961	2017-04-13 10:18:17.381	newcode-migration
confluence.extra.impresence2	2962	2017-04-13 10:18:17.381	wildfire-xhtml
com.atlassian.applinks.applinks-cors-plugin	2963	2017-04-13 10:18:17.381	appLinksCorsDefaults
com.atlassian.confluence.plugins.confluence-page-banner	2964	2017-04-13 10:18:17.381	soy-resources
confluence.comment.action	2965	2017-04-13 10:18:17.381	secondary
com.atlassian.confluence.plugins.recently-viewed-plugin	2966	2017-04-13 10:18:17.381	mobile-menu-panel
com.atlassian.applinks.applinks-plugin	2967	2017-04-13 10:18:17.381	feature-v3-list
com.atlassian.auiplugin	2968	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-form-validation-validator-register
confluence.web.resources	2969	2017-04-13 10:18:17.381	logger
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2970	2017-04-13 10:18:17.381	pluginLicenseEventPublisherPublishCheckEvent
com.atlassian.mywork.mywork-confluence-host-plugin	2971	2017-04-13 10:18:17.381	resources
com.atlassian.confluence.plugins.confluence-business-blueprints	2972	2017-04-13 10:18:17.381	localeManager
confluence.renderer.components	2973	2017-04-13 10:18:17.381	citation
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2974	2017-04-13 10:18:17.381	webpanelDecorator
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2975	2017-04-13 10:18:17.381	cachedContentLoader
confluence.user.menu	2976	2017-04-13 10:18:17.381	drafts
com.atlassian.confluence.plugins.confluence-create-content-plugin	2977	2017-04-13 10:18:17.381	pageContentTemplateService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2978	2017-04-13 10:18:17.381	create-personal-space-blueprint
com.atlassian.confluence.keyboardshortcuts	2979	2017-04-13 10:18:17.381	help
com.atlassian.auiplugin	2980	2017-04-13 10:18:17.381	aui-page-typography
confluence.macros.advanced	2981	2017-04-13 10:18:17.381	contentbylabel-migrator
com.atlassian.confluence.extra.officeconnector	2982	2017-04-13 10:18:17.381	office-connector-css
com.atlassian.confluence.plugins.confluence-mobile	2983	2017-04-13 10:18:17.381	mobile-profile-filter
org.randombits.confluence.toc	2984	2017-04-13 10:18:17.381	toc-regex-migrator
com.atlassian.confluence.plugins.confluence-mobile	2985	2017-04-13 10:18:17.381	xmlStreamWriterTemplate
com.atlassian.confluence.plugins.confluence-highlight-actions	2986	2017-04-13 10:18:17.381	textMatcher
confluence.extra.attachments	2987	2017-04-13 10:18:17.381	attachments
confluence.extractors.core	2988	2017-04-13 10:18:17.381	titleExtractor
confluence.web.resources	2989	2017-04-13 10:18:17.381	lookandfeel
confluence.macros.dashboard	2990	2017-04-13 10:18:17.381	global-reports
com.atlassian.streams.confluence	2991	2017-04-13 10:18:17.381	date-es-PA
com.atlassian.plugins.atlassian-nav-links-plugin	2992	2017-04-13 10:18:17.381	remote-navigation-link-service
confluence.extractors.core	2993	2017-04-13 10:18:17.381	titleChangeExtractor
com.atlassian.applinks.applinks-plugin	2994	2017-04-13 10:18:17.381	applinks-components
com.atlassian.confluence.plugins.confluence-create-content-plugin	2995	2017-04-13 10:18:17.381	createContentPluginsWhitelist
com.atlassian.auiplugin	2996	2017-04-13 10:18:17.381	internal-aui-widget
confluence.extra.userlister	2997	2017-04-13 10:18:17.381	userlister-xhtml
com.atlassian.streams.confluence	2998	2017-04-13 10:18:17.381	date-es-PE
confluence.extra.information	2999	2017-04-13 10:18:17.381	tip
com.atlassian.auiplugin	3000	2017-04-13 10:18:17.381	jquery-form
com.atlassian.confluence.plugins.confluence-like	3001	2017-04-13 10:18:17.381	like-created-notification-transformer
com.atlassian.plugins.atlassian-nav-links-plugin	3002	2017-04-13 10:18:17.381	capability
confluence.web.resources	3003	2017-04-13 10:18:17.381	licensedetails
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3004	2017-04-13 10:18:17.381	defaultNotificationUserService
confluence.sections.space.browse	3005	2017-04-13 10:18:17.381	browse-personal-space
com.atlassian.confluence.plugins.confluence-ui-components	3006	2017-04-13 10:18:17.381	cql
com.atlassian.auiplugin	3007	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-query-input
confluence.macros.advanced	3008	2017-04-13 10:18:17.381	navmap
confluence.user.hover.menu	3009	2017-04-13 10:18:17.381	follow-tab
com.atlassian.confluence.plugins.confluence-email-resources	3010	2017-04-13 10:18:17.381	content-templates-content-title-pattern-2.0.0
com.atlassian.confluence.extra.flyingpdf	3011	2017-04-13 10:18:17.381	pdfexport-xmlrpc
com.atlassian.streams.confluence	3012	2017-04-13 10:18:17.381	activitystream-gadget
com.atlassian.confluence.plugins.gadgets	3013	2017-04-13 10:18:17.381	clusterManager
com.atlassian.confluence.editor	3014	2017-04-13 10:18:17.381	editor-edit-only
com.atlassian.applinks.applinks-plugin	3015	2017-04-13 10:18:17.381	authConfigContainer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3016	2017-04-13 10:18:17.381	mailSender
confluence.macros.advanced	3017	2017-04-13 10:18:17.381	xhtml-recently-updated
confluence.extra.masterdetail	3018	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.streams.confluence	3019	2017-04-13 10:18:17.381	date-es-MX
com.atlassian.streams.confluence	3020	2017-04-13 10:18:17.381	streamsEntryRendererFactory
com.atlassian.auiplugin	3021	2017-04-13 10:18:17.381	aui-experimental-tooltips
com.atlassian.plugins.atlassian-nav-links-plugin	3022	2017-04-13 10:18:17.381	capabilities-cache-loader
confluence.listeners.core	3023	2017-04-13 10:18:17.381	updateAttachmentsOnFilesystemOnPageMoveListener
com.atlassian.plugins.atlassian-nav-links-plugin	3024	2017-04-13 10:18:17.381	typeAccessor
com.atlassian.streams.confluence	3025	2017-04-13 10:18:17.381	date-es-NI
com.atlassian.plugins.atlassian-project-creation-plugin	3026	2017-04-13 10:18:17.381	project-creation-capability
com.atlassian.oauth.serviceprovider	3027	2017-04-13 10:18:17.381	tokenStore
com.atlassian.confluence.plugins.confluence-monitoring-console	3028	2017-04-13 10:18:17.381	monitoring-console-actions
com.atlassian.confluence.extra.widgetconnector	3029	2017-04-13 10:18:17.381	yahoovideo
com.atlassian.applinks.applinks-trustedapps-plugin	3030	2017-04-13 10:18:17.381	trusted-auth
com.atlassian.confluence.plugins.confluence-email-resources	3031	2017-04-13 10:18:17.381	chrome-template-header-pattern-2.0.0
com.atlassian.plugins.atlassian-whitelist-ui-plugin	3032	2017-04-13 10:18:17.381	confluence-whitelist
com.atlassian.streams.confluence	3033	2017-04-13 10:18:17.381	date-sv-FI
com.atlassian.confluence.plugins.confluence-highlight-actions	3034	2017-04-13 10:18:17.381	action-panel
com.atlassian.mywork.mywork-common-plugin	3035	2017-04-13 10:18:17.381	internalHostApplication
com.atlassian.streams	3036	2017-04-13 10:18:17.381	streams-parent-js
com.atlassian.auiplugin	3037	2017-04-13 10:18:17.381	aui-help
com.atlassian.confluence.plugins.confluence-business-blueprints	3038	2017-04-13 10:18:17.381	decisions-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	3039	2017-04-13 10:18:17.381	salUserManager
com.atlassian.querylang.confluence-cql-plugin	3040	2017-04-13 10:18:17.381	mention-field
com.atlassian.querylang.confluence-cql-plugin	3041	2017-04-13 10:18:17.381	attachment-filesize-field
confluence.extra.masterdetail	3042	2017-04-13 10:18:17.381	detailssummary-xhtml
com.atlassian.applinks.applinks-plugin	3043	2017-04-13 10:18:17.381	supported-inbound-authentication
com.atlassian.querylang.confluence-cql-plugin	3044	2017-04-13 10:18:17.381	start-of-week-one-arg-function
confluence.macros.advanced	3045	2017-04-13 10:18:17.381	blog-post
confluence.web.resources	3046	2017-04-13 10:18:17.381	page-ordering-tree
com.atlassian.mywork.mywork-confluence-host-plugin	3047	2017-04-13 10:18:17.381	task-service
com.atlassian.support.healthcheck.support-healthcheck-plugin	3048	2017-04-13 10:18:17.381	operatingSystemInfo
com.atlassian.confluence.plugins.quickreload	3049	2017-04-13 10:18:17.381	rest
confluence.macros.advanced	3050	2017-04-13 10:18:17.381	xhtml-children
com.atlassian.streams	3051	2017-04-13 10:18:17.381	date-mn-MN
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3052	2017-04-13 10:18:17.381	dispatchService
confluence.sections.space.tools	3053	2017-04-13 10:18:17.381	layouts
com.atlassian.auiplugin	3054	2017-04-13 10:18:17.381	ajs-evejs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3055	2017-04-13 10:18:17.381	plugin-osgi-servlet
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	3056	2017-04-13 10:18:17.381	healthmonitor-template
com.atlassian.confluence.plugins.confluence-create-content-plugin	3057	2017-04-13 10:18:17.381	requestStorage
com.atlassian.plugins.base-hipchat-integration-plugin	3058	2017-04-13 10:18:17.381	plugin-resource-url
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3059	2017-04-13 10:18:17.381	pluginInstallationService
com.atlassian.confluence.plugins.confluence-mobile	3060	2017-04-13 10:18:17.381	userDtoFactory
com.atlassian.confluence.extra.officeconnector	3061	2017-04-13 10:18:17.381	file-viewer-plugin
com.atlassian.plugins.base-hipchat-integration-plugin	3062	2017-04-13 10:18:17.381	web-panel-soy-function
com.atlassian.streams.confluence	3063	2017-04-13 10:18:17.381	salUserManager
confluence.listeners.core	3064	2017-04-13 10:18:17.381	userremovallistener
confluence.search.mappers.lucene	3065	2017-04-13 10:18:17.381	userText
com.atlassian.confluence.extra.widgetconnector	3066	2017-04-13 10:18:17.381	mockingbird
com.atlassian.confluence.plugins.confluence-email-resources	3067	2017-04-13 10:18:17.381	content-templates-actions-pattern-1.0.0
com.atlassian.streams.confluence	3068	2017-04-13 10:18:17.381	date-es-SV
com.atlassian.jwt.jwt-plugin	3069	2017-04-13 10:18:17.381	jwtAuthFilter
com.atlassian.confluence.plugins.confluence-email-resources	3070	2017-04-13 10:18:17.381	content-templates-inline-user-pattern-2.0.0
com.atlassian.applinks.applinks-plugin	3071	2017-04-13 10:18:17.381	webSudoManager
com.atlassian.confluence.plugins.confluence-email-resources	3072	2017-04-13 10:18:17.381	change-settings-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3073	2017-04-13 10:18:17.381	comment-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-content-property-storage	3074	2017-04-13 10:18:17.381	contentproperty-by-content
com.atlassian.confluence.extra.officeconnector	3075	2017-04-13 10:18:17.381	editattachmentinworditempathauth
com.atlassian.plugin.jslibs	3076	2017-04-13 10:18:17.381	moment-2.6.0
com.atlassian.confluence.plugins.confluence-like	3077	2017-04-13 10:18:17.381	like-email-soy-templates
com.atlassian.plugin.notifications.notifications-module	3078	2017-04-13 10:18:17.381	tx-processor
confluence.macros.dashboard	3079	2017-04-13 10:18:17.381	confluenceDashboardMacrosRest-filter
com.atlassian.plugins.atlassian-nav-links-plugin	3080	2017-04-13 10:18:17.381	navigation-links-cache-loader
com.atlassian.confluence.plugins.confluence-inline-comments	3081	2017-04-13 10:18:17.381	reply-to-comment-email-adg-footer-item
com.atlassian.querylang.confluence-cql-plugin	3082	2017-04-13 10:18:17.381	ancestorId-query-mapper
com.atlassian.confluence.plugins.confluence-space-directory	3083	2017-04-13 10:18:17.381	space-directory-rest-filter
confluence.listeners.core	3084	2017-04-13 10:18:17.381	rpcConfigurationListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	3085	2017-04-13 10:18:17.381	requestFactory
confluence.sections.profile.view	3086	2017-04-13 10:18:17.381	profile-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3087	2017-04-13 10:18:17.381	executorFactory
com.atlassian.confluence.plugins.confluence-onboarding	3088	2017-04-13 10:18:17.381	onboarding-notification-no-spaces
com.atlassian.applinks.applinks-oauth-plugin	3089	2017-04-13 10:18:17.381	confluence-inbound-two-legged-oauth-with-impersonation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3090	2017-04-13 10:18:17.381	blogpost-created-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-jira-content	3091	2017-04-13 10:18:17.381	common-resource
com.atlassian.mywork.mywork-confluence-provider-plugin	3092	2017-04-13 10:18:17.381	notificationService
com.atlassian.support.healthcheck.support-healthcheck-plugin	3093	2017-04-13 10:18:17.381	tx-processor
com.atlassian.confluence.plugins.confluence-required-health-checks	3094	2017-04-13 10:18:17.381	requiredHealthChecksSupplier
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3095	2017-04-13 10:18:17.381	delete-soy
com.atlassian.confluence.editor	3096	2017-04-13 10:18:17.381	image-properties-web-items
com.atlassian.querylang.confluence-cql-plugin	3097	2017-04-13 10:18:17.381	end-of-year-one-arg-function
com.atlassian.auiplugin	3098	2017-04-13 10:18:17.381	ajs-underscorejs
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3099	2017-04-13 10:18:17.381	analytics-link-builder
com.atlassian.gadgets.opensocial	3100	2017-04-13 10:18:17.381	gadget-rendering-servlet
com.atlassian.oauth.serviceprovider	3101	2017-04-13 10:18:17.381	tokenLoader
com.atlassian.mywork.mywork-confluence-host-plugin	3102	2017-04-13 10:18:17.381	pluginScheduler
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3103	2017-04-13 10:18:17.381	serviceAccessor
com.atlassian.confluence.plugins.view-storage-format	3104	2017-04-13 10:18:17.381	viewstorageActions
com.atlassian.confluence.plugins.confluence-license-rest	3105	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.auiplugin	3106	2017-04-13 10:18:17.381	jquery-ui
com.atlassian.auiplugin	3107	2017-04-13 10:18:17.381	aui-core
com.atlassian.confluence.plugins.confluence-quicknav	3108	2017-04-13 10:18:17.381	contentNameSearchService
com.atlassian.plugins.atlassian-nav-links-plugin	3109	2017-04-13 10:18:17.381	content-links-rest
com.atlassian.gadgets.directory	3110	2017-04-13 10:18:17.381	gadgets-directory-admin-servlet
com.atlassian.confluence.plugins.confluence-like	3111	2017-04-13 10:18:17.381	manage-like-notifications-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-business-blueprints	3112	2017-04-13 10:18:17.381	sharelinks-blueprint-widget-connector-support
confluence.extra.impresence2	3113	2017-04-13 10:18:17.381	reporter-skypeme
com.atlassian.confluence.plugins.confluence-knowledge-base	3114	2017-04-13 10:18:17.381	kb-blueprint-item
com.atlassian.applinks.applinks-plugin	3115	2017-04-13 10:18:17.381	applinks-common-exported
com.atlassian.mywork.mywork-confluence-host-plugin	3116	2017-04-13 10:18:17.381	tx-processor
com.atlassian.auiplugin	3117	2017-04-13 10:18:17.381	aui-focus-manager
confluence.sections.space.tools	3118	2017-04-13 10:18:17.381	trash
com.atlassian.applinks.applinks-plugin	3119	2017-04-13 10:18:17.381	applinks-ui
com.atlassian.streams.streams-thirdparty-plugin	3120	2017-04-13 10:18:17.381	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3121	2017-04-13 10:18:17.381	objectMapperFactory
com.atlassian.confluence.plugins.confluence-space-blueprints	3122	2017-04-13 10:18:17.381	DocumentationSpaceHomePageEventListener
com.atlassian.confluence.plugins.share-page	3123	2017-04-13 10:18:17.381	email-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	3124	2017-04-13 10:18:17.381	show-blueprint-index-popup-flag
com.atlassian.streams.streams-thirdparty-plugin	3125	2017-04-13 10:18:17.381	linkBuilder
confluence.macros.advanced	3126	2017-04-13 10:18:17.381	index
com.atlassian.streams.confluence	3127	2017-04-13 10:18:17.381	date-es-HN
com.atlassian.plugins.atlassian-nav-links-plugin	3128	2017-04-13 10:18:17.381	confluence-custom-apps-manage-menu
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	3129	2017-04-13 10:18:17.381	keyboardShortcutManager
com.atlassian.applinks.applinks-basicauth-plugin	3130	2017-04-13 10:18:17.381	basicAuthUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-create-content-plugin	3131	2017-04-13 10:18:17.381	list-system-templates-panel
confluence.macros.dashboard	3132	2017-04-13 10:18:17.381	confluenceDashboardMacrosWhitelist
com.atlassian.confluence.plugins.confluence-onboarding	3133	2017-04-13 10:18:17.381	find-relevant-spaces-service
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	3134	2017-04-13 10:18:17.381	pluginModuleEventListener
com.atlassian.streams	3135	2017-04-13 10:18:17.381	date-uk-UA
com.atlassian.support.healthcheck.support-healthcheck-plugin	3136	2017-04-13 10:18:17.381	pluginScheduler
com.atlassian.streams	3137	2017-04-13 10:18:17.381	rest
com.atlassian.oauth.serviceprovider	3138	2017-04-13 10:18:17.381	stringEscapeUtil
com.atlassian.streams.confluence	3139	2017-04-13 10:18:17.381	date-es-GT
confluence.web.resources	3140	2017-04-13 10:18:17.381	quick-nav
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3141	2017-04-13 10:18:17.381	requestFactory
confluence.listeners.core	3142	2017-04-13 10:18:17.381	admin-audit-logging-listener
com.atlassian.oauth.consumer.sal	3143	2017-04-13 10:18:17.381	consumerService
com.atlassian.confluence.plugins.confluence-knowledge-base	3144	2017-04-13 10:18:17.381	kb-blueprint
com.atlassian.querylang.confluence-cql-plugin	3145	2017-04-13 10:18:17.381	now-one-arg-function
com.atlassian.auiplugin	3146	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-log
com.atlassian.confluence.plugins.confluence-mentions-plugin	3147	2017-04-13 10:18:17.381	notificationService
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3148	2017-04-13 10:18:17.381	notification
com.atlassian.mywork.mywork-confluence-provider-plugin	3149	2017-04-13 10:18:17.381	confluenceEventRegister
com.atlassian.support.healthcheck.support-healthcheck-plugin	3150	2017-04-13 10:18:17.381	fileSystemInfo
com.atlassian.confluence.plugins.confluence-view-file-macro	3151	2017-04-13 10:18:17.381	unknownAttachmentFilePlaceholderMarshaller
com.atlassian.confluence.plugins.confluence-templates	3152	2017-04-13 10:18:17.381	view-template-styles
confluence.web.resources	3153	2017-04-13 10:18:17.381	dictionary
com.atlassian.confluence.plugins.confluence-create-content-plugin	3154	2017-04-13 10:18:17.381	resources
com.atlassian.plugins.atlassian-plugins-webresource-plugin	3155	2017-04-13 10:18:17.381	web-resource-manager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3156	2017-04-13 10:18:17.381	forgot-password-notification-template-body
com.atlassian.streams.streams-thirdparty-plugin	3157	2017-04-13 10:18:17.381	thirdparty
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3158	2017-04-13 10:18:17.381	hipchat-space-context
confluence.content.action.menu	3159	2017-04-13 10:18:17.381	marker
confluence.macros.basic	3160	2017-04-13 10:18:17.381	cheese
com.atlassian.confluence.plugins.confluence-schedule-admin	3161	2017-04-13 10:18:17.381	scheduled-admin-xwork
confluence.macro.metadata.provider	3162	2017-04-13 10:18:17.381	macroMetadataProvider
com.atlassian.applinks.applinks-plugin	3163	2017-04-13 10:18:17.381	confluence-inbound-two-legged-oauth-with-impersonation
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3164	2017-04-13 10:18:17.381	confluence-collaborative-editor-opt-in
com.atlassian.confluence.plugins.confluence-email-resources	3165	2017-04-13 10:18:17.381	view-content-changes-email-batch-item
com.atlassian.confluence.plugins.confluence-email-resources	3166	2017-04-13 10:18:17.381	notification-templates-page-edit-1.0.0
com.atlassian.analytics.analytics-client	3167	2017-04-13 10:18:17.381	programmatic-analytics
com.atlassian.confluence.plugins.view-storage-format	3168	2017-04-13 10:18:17.381	view-storage
com.atlassian.confluence.plugins.confluence-templates	3169	2017-04-13 10:18:17.381	editTransformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3170	2017-04-13 10:18:17.381	upm-install-templates
confluence.sections.space.admin	3171	2017-04-13 10:18:17.381	import
confluence.sections.settings.edit	3172	2017-04-13 10:18:17.381	changepassword
confluence.sections.space.advanced	3173	2017-04-13 10:18:17.381	space-attachments
com.atlassian.confluence.plugins.confluence-lookandfeel	3174	2017-04-13 10:18:17.381	default-sitelogo-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3175	2017-04-13 10:18:17.381	versioned-resource
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3176	2017-04-13 10:18:17.381	dataSourceFactory
confluence.search.mappers.lucene	3177	2017-04-13 10:18:17.381	prefixSearchFilter
com.atlassian.streams.confluence	3178	2017-04-13 10:18:17.381	date-es-ES
com.atlassian.confluence.plugins.drag-and-drop	3179	2017-04-13 10:18:17.381	drop-zone-for-view-attachments
confluence.web.resources	3180	2017-04-13 10:18:17.381	view-content
com.atlassian.streams.actions	3181	2017-04-13 10:18:17.381	streamsLocaleProvider
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	3182	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.confluence.plugins.confluence-sal-plugin	3183	2017-04-13 10:18:17.381	pluginHibernateSessionFactory
confluence.web.resources	3184	2017-04-13 10:18:17.381	aui-forms
confluence.web.resources	3185	2017-04-13 10:18:17.381	tooltip
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3186	2017-04-13 10:18:17.381	confluence-upm-requests-menu
com.atlassian.confluence.plugins.drag-and-drop	3187	2017-04-13 10:18:17.381	support
com.atlassian.confluence.plugins.confluence-email-resources	3188	2017-04-13 10:18:17.381	content-templates-primary-button-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3189	2017-04-13 10:18:17.381	dialogManager
com.atlassian.confluence.plugins.confluence-view-file-macro	3190	2017-04-13 10:18:17.381	defaultFilePlaceholderMarshaller
com.atlassian.oauth.serviceprovider	3191	2017-04-13 10:18:17.381	loginRedirector
com.atlassian.confluence.plugins.confluence-mobile	3192	2017-04-13 10:18:17.381	xmlEventReaderFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3193	2017-04-13 10:18:17.381	confluenceUserPreferencesManager
confluence.web.resources	3194	2017-04-13 10:18:17.381	cssSubstitution
confluence.converters.core	3195	2017-04-13 10:18:17.381	user-status-converter
com.atlassian.confluence.editor	3196	2017-04-13 10:18:17.381	editor-autocomplete-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3197	2017-04-13 10:18:17.381	page-created-hipchat-notification-template
com.atlassian.confluence.plugins.drag-and-drop	3198	2017-04-13 10:18:17.381	drag-and-drop-for-view-content
confluence.sections.admin	3199	2017-04-13 10:18:17.381	defaultspacelogo
com.atlassian.confluence.plugins.confluence-highlight-actions	3200	2017-04-13 10:18:17.381	darkFeaturesManager
confluence.sections.user.follow.list	3201	2017-04-13 10:18:17.381	resources
confluence.macros.advanced	3202	2017-04-13 10:18:17.381	popular-labels-resources
com.atlassian.applinks.applinks-plugin	3203	2017-04-13 10:18:17.381	adminUIAuthenticator
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3204	2017-04-13 10:18:17.381	bootstrap-resource
com.atlassian.plugins.atlassian-nav-links-plugin	3205	2017-04-13 10:18:17.381	administration-shortcuts
confluence.extra.impresence2	3206	2017-04-13 10:18:17.381	yahoo
com.atlassian.plugins.atlassian-whitelist-ui-plugin	3207	2017-04-13 10:18:17.381	whitelist-bootstrap-template
com.atlassian.confluence.plugins.confluence-dashboard	3208	2017-04-13 10:18:17.381	svgContentTypeServletFilter
com.atlassian.confluence.plugins.confluence-jira-content	3209	2017-04-13 10:18:17.381	ao-module
confluence.sections.space.advanced	3210	2017-04-13 10:18:17.381	spacedetails
com.atlassian.confluence.plugins.confluence-mentions-plugin	3211	2017-04-13 10:18:17.381	notificationUserService
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	3212	2017-04-13 10:18:17.381	confluence-feature-discovery-plugin-features-meta
com.atlassian.confluence.plugins.confluence-required-health-checks	3213	2017-04-13 10:18:17.381	requiredHealthChecksEnabledCheck
com.atlassian.streams	3214	2017-04-13 10:18:17.381	date-tt-RU
confluence.extra.jira	3215	2017-04-13 10:18:17.381	jqlHelper
crowd.system.passwordencoders	3216	2017-04-13 10:18:17.381	bcrypt
com.atlassian.streams	3217	2017-04-13 10:18:17.381	feedBuilder
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3218	2017-04-13 10:18:17.381	views
com.atlassian.confluence.plugins.confluence-nav-links	3219	2017-04-13 10:18:17.381	rotp-menu
com.atlassian.templaterenderer.api	3220	2017-04-13 10:18:17.381	webResourceUrlProvider
com.atlassian.confluence.plugins.confluence-business-blueprints	3221	2017-04-13 10:18:17.381	linkMetadataExtractor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3222	2017-04-13 10:18:17.381	spaceManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	3223	2017-04-13 10:18:17.381	user-multiselect
com.atlassian.confluence.extra.officeconnector	3224	2017-04-13 10:18:17.381	ppt2k7ContentExtractor
com.atlassian.plugins.atlassian-whitelist-core-plugin	3225	2017-04-13 10:18:17.381	applicationLinkChangeListener
com.atlassian.streams	3226	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	3227	2017-04-13 10:18:17.381	notification-templates-comment-remove-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3228	2017-04-13 10:18:17.381	hostLicenseUpdatedHandler
com.atlassian.confluence.plugins.synchrony-interop	3229	2017-04-13 10:18:17.381	synchrony-status-banner-loader
com.atlassian.mywork.mywork-common-plugin	3230	2017-04-13 10:18:17.381	thread-local-delegate-executor-factory
com.atlassian.confluence.plugins.confluence-email-resources	3231	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.confluence.plugins.confluence-edge-index	3232	2017-04-13 10:18:17.381	mobile-can-use-rest-filter
confluence.listeners.core	3233	2017-04-13 10:18:17.381	space-audit-logging-listener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3234	2017-04-13 10:18:17.381	tokenManager
com.atlassian.analytics.analytics-client	3235	2017-04-13 10:18:17.381	event-checklist-servlet
confluence.web.resources	3236	2017-04-13 10:18:17.381	drop-down
com.atlassian.querylang.confluence-cql-plugin	3237	2017-04-13 10:18:17.381	ancestor-field
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3238	2017-04-13 10:18:17.381	purchased-addons-servlet
com.atlassian.streams	3239	2017-04-13 10:18:17.381	date-pt-BR
com.atlassian.plugins.less-transformer-plugin	3240	2017-04-13 10:18:17.381	lessTransformer
com.atlassian.confluence.plugins.confluence-email-resources	3241	2017-04-13 10:18:17.381	notifications-cluster-node-name-function
com.atlassian.analytics.analytics-client	3242	2017-04-13 10:18:17.381	event-checklist
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3243	2017-04-13 10:18:17.381	privateListingsUpgradeTask
com.atlassian.mywork.mywork-confluence-host-plugin	3244	2017-04-13 10:18:17.381	userDao
com.atlassian.confluence.plugins.confluence-dashboard	3245	2017-04-13 10:18:17.381	footer-analytics
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3246	2017-04-13 10:18:17.381	addonMarketplaceQueries
confluence.extractors.core	3247	2017-04-13 10:18:17.381	labelChangeExtractor
com.atlassian.gadgets.opensocial	3248	2017-04-13 10:18:17.381	make-request-servlet
com.atlassian.streams.confluence	3249	2017-04-13 10:18:17.381	date-hy-AM
com.atlassian.confluence.plugins.confluence-email-tracker	3250	2017-04-13 10:18:17.381	resources
com.atlassian.confluence.plugins.confluence-email-resources	3251	2017-04-13 10:18:17.381	change-settings-email-footer-item
com.atlassian.confluence.plugins.confluence-knowledge-base	3252	2017-04-13 10:18:17.381	kb-how-to-item
com.atlassian.streams.confluence	3253	2017-04-13 10:18:17.381	date-sk-SK
com.atlassian.confluence.plugins.confluence-email-resources	3254	2017-04-13 10:18:17.381	chrome-template-footer-pattern-2.0.0
confluence.sections.admin	3255	2017-04-13 10:18:17.381	backup
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3256	2017-04-13 10:18:17.381	fetch
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3257	2017-04-13 10:18:17.381	urlReadingJavascriptTemplateWebResourceTransformer
confluence.extra.jira	3258	2017-04-13 10:18:17.381	jirachart-xhtml
com.atlassian.confluence.plugins.confluence-sal-plugin	3259	2017-04-13 10:18:17.381	pluginScheduler
com.atlassian.streams.confluence	3260	2017-04-13 10:18:17.381	date-sv-SE
com.atlassian.streams.confluence	3261	2017-04-13 10:18:17.381	date-js
com.atlassian.confluence.plugins.gadgets	3262	2017-04-13 10:18:17.381	subscribedGadgetFeedStore
com.atlassian.confluence.plugins.gadgets	3263	2017-04-13 10:18:17.381	tenantRegistry
com.atlassian.auiplugin	3480	2017-04-13 10:18:17.381	aui-experimental-data-handlers
com.atlassian.confluence.plugins.confluence-inline-comments	3264	2017-04-13 10:18:17.381	like-inline-comment-batch-email-action
com.atlassian.oauth.consumer.sal	3265	2017-04-13 10:18:17.381	hostConsumerAndSecretProvider
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3266	2017-04-13 10:18:17.381	configuration-resources
com.atlassian.confluence.plugins.share-page	3267	2017-04-13 10:18:17.381	share-content-plugin-icons
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	3268	2017-04-13 10:18:17.381	internalAdminCheckFallback
com.atlassian.streams.confluence	3269	2017-04-13 10:18:17.381	date-gl-ES
confluence.macros.advanced	3270	2017-04-13 10:18:17.381	recently-updated-social-resources
com.atlassian.auiplugin	3271	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-jquery-jquery-ui-jquery-ui-datepicker
com.atlassian.mywork.mywork-confluence-host-plugin	3272	2017-04-13 10:18:17.381	mailNotificationService
com.atlassian.confluence.plugins.confluence-like	3273	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	3274	2017-04-13 10:18:17.381	velocity-1.6-web-panel-renderer
com.atlassian.confluence.plugins.search.confluence-search	3275	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.confluence.editor	3276	2017-04-13 10:18:17.381	editor-location
com.atlassian.confluence.editor	3277	2017-04-13 10:18:17.381	macro-icon-placeholder
com.atlassian.confluence.plugins.drag-and-drop	3278	2017-04-13 10:18:17.381	drag-and-drop-resource-filter
com.atlassian.confluence.plugins.confluence-email-resources	3279	2017-04-13 10:18:17.381	space-logo-image-function
confluence.extra.masterdetail	3280	2017-04-13 10:18:17.381	cachingDetailsManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	3281	2017-04-13 10:18:17.381	salUserManager
com.atlassian.oauth.serviceprovider	3282	2017-04-13 10:18:17.381	expiredTokenRemoverScheduler
com.atlassian.confluence.extra.widgetconnector	3283	2017-04-13 10:18:17.381	widgetbox
com.atlassian.confluence.plugins.confluence-create-content-plugin	3284	2017-04-13 10:18:17.381	spaceBlueprintCreationListener
com.atlassian.confluence.plugins.confluence-software-blueprints	3285	2017-04-13 10:18:17.381	jirareports-changelog-dynamic
com.atlassian.confluence.plugins.confluence-space-ia	3286	2017-04-13 10:18:17.381	spacebar-pages
com.atlassian.applinks.applinks-plugin	3287	2017-04-13 10:18:17.381	applinks-new-table
confluence.sections.space.pages	3288	2017-04-13 10:18:17.381	list-alphabetically
com.atlassian.plugins.atlassian-nav-links-plugin	3289	2017-04-13 10:18:17.381	is-side-bar-enabled
com.atlassian.streams.core	3290	2017-04-13 10:18:17.381	streamsFeedUriBuilderFactory
com.atlassian.streams	3291	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.confluence.plugins.confluence-business-blueprints	3292	2017-04-13 10:18:17.381	common-template-resources
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	3293	2017-04-13 10:18:17.381	projectmonitor-template
com.atlassian.plugins.atlassian-nav-links-plugin	3294	2017-04-13 10:18:17.381	navigation-capability
com.atlassian.streams	3295	2017-04-13 10:18:17.381	date-lt-LT
confluence.extra.impresence2	3296	2017-04-13 10:18:17.381	sametime
com.atlassian.confluence.plugins.confluence-like	3297	2017-04-13 10:18:17.381	liked-page-action-reply-to-comment-link
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3298	2017-04-13 10:18:17.381	threadLocalDelegateExecutorFactory
com.atlassian.auiplugin	3299	2017-04-13 10:18:17.381	aui-header
com.atlassian.confluence.plugins.gadgets	3300	2017-04-13 10:18:17.381	gadgetViewFactory
com.atlassian.gadgets.directory	3301	2017-04-13 10:18:17.381	gadget-directory-admin-client-main
com.atlassian.streams	3302	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3303	2017-04-13 10:18:17.381	hipchat-space-to-room-global-install
com.atlassian.confluence.plugins.confluence-email-resources	3304	2017-04-13 10:18:17.381	template-utils-avatar-name-table-2.0.0
com.atlassian.confluence.plugins.confluence-mentions-plugin	3305	2017-04-13 10:18:17.381	mentions-hipchat-soy-templates-2
com.atlassian.confluence.plugins.confluence-content-property-storage	3306	2017-04-13 10:18:17.381	contentproperty-by-key
com.atlassian.confluence.plugins.confluence-sal-plugin	3307	2017-04-13 10:18:17.381	salHttpContext
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	3308	2017-04-13 10:18:17.381	shortcuts
com.atlassian.auiplugin	3309	2017-04-13 10:18:17.381	aui-reset
com.atlassian.confluence.plugins.confluence-labels	3310	2017-04-13 10:18:17.381	labels-actions
confluence.aui.staging	3311	2017-04-13 10:18:17.381	skate
com.atlassian.confluence.plugins.confluence-labels	3312	2017-04-13 10:18:17.381	view-labels-all-system
com.atlassian.confluence.plugins.confluence-ui-components	3313	2017-04-13 10:18:17.381	label-picker
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3314	2017-04-13 10:18:17.381	is-room-notify-client-enabled-soy-function
com.atlassian.confluence.plugins.confluence-cache-management-plugin	3315	2017-04-13 10:18:17.381	client-resources
com.atlassian.confluence.plugins.confluence-user-profile	3316	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.confluence.plugins.confluence-space-blueprints	3317	2017-04-13 10:18:17.381	documentation-space-blueprint
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3318	2017-04-13 10:18:17.381	transformer
com.atlassian.confluence.plugins.confluence-create-content-plugin	3319	2017-04-13 10:18:17.381	user-templates-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3320	2017-04-13 10:18:17.381	http-cache-expiry-service
confluence.content.action.menu	3321	2017-04-13 10:18:17.381	word-export
com.atlassian.streams.confluence	3322	2017-04-13 10:18:17.381	spaceRendererFactory
com.atlassian.applinks.applinks-plugin	3323	2017-04-13 10:18:17.381	applinks-new-ui-utils
com.atlassian.plugins.atlassian-whitelist-core-plugin	3324	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.auiplugin	3325	2017-04-13 10:18:17.381	aui-experimental-mobile
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3326	2017-04-13 10:18:17.381	confluence-collaborative-editor-api-rest-filter
confluence.extra.dynamictasklist2	3327	2017-04-13 10:18:17.381	web-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3328	2017-04-13 10:18:17.381	blogpost-created-notification-template
confluence.sections.admin.tasks	3329	2017-04-13 10:18:17.381	marketplaceAdminTask
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3330	2017-04-13 10:18:17.381	pluginMetaDataManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3331	2017-04-13 10:18:17.381	email-source-param-function
com.atlassian.confluence.plugins.confluence-labels	3332	2017-04-13 10:18:17.381	view-all-content-with-label
confluence.sections.profile	3333	2017-04-13 10:18:17.381	edit-notifications-profile
com.atlassian.applinks.applinks-plugin	3334	2017-04-13 10:18:17.381	applinks-v2-shim
com.atlassian.streams	3335	2017-04-13 10:18:17.381	date-mk-MK
com.atlassian.confluence.extra.flyingpdf	3336	2017-04-13 10:18:17.381	pdfExportLongRunningTaskFactory
com.atlassian.mywork.mywork-confluence-host-plugin	3337	2017-04-13 10:18:17.381	mwnotificationsminiview
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3338	2017-04-13 10:18:17.381	localeManager
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3339	2017-04-13 10:18:17.381	config-resource
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3340	2017-04-13 10:18:17.381	plugin-manager-servlet
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	3341	2017-04-13 10:18:17.381	projectposter-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3342	2017-04-13 10:18:17.381	html-service
com.atlassian.confluence.plugins.expand-macro	3343	2017-04-13 10:18:17.381	expand
com.atlassian.confluence.plugins.confluence-mobile	3344	2017-04-13 10:18:17.381	mobile-can-use-rest-filter
confluence.extra.jira	3345	2017-04-13 10:18:17.381	jirachart
com.atlassian.mywork.mywork-confluence-host-plugin	3346	2017-04-13 10:18:17.381	userApplicationLinkDao
com.atlassian.plugins.atlassian-help-tips	3347	2017-04-13 10:18:17.381	helptips-filter
com.atlassian.confluence.plugins.confluence-previews	3348	2017-04-13 10:18:17.381	version-navigation-plugin
com.atlassian.querylang.confluence-cql-plugin	3349	2017-04-13 10:18:17.381	space-type-field
com.atlassian.streams.confluence	3350	2017-04-13 10:18:17.381	date-es-DO
com.atlassian.confluence.plugins.gadgets	3351	2017-04-13 10:18:17.381	requestContextBuilder
com.atlassian.auiplugin	3352	2017-04-13 10:18:17.381	internal-basic-css
com.atlassian.confluence.keyboardshortcuts	3353	2017-04-13 10:18:17.381	tinymce.blockquote
com.atlassian.mywork.mywork-confluence-host-plugin	3354	2017-04-13 10:18:17.381	myWorkAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-daily-summary-email	3355	2017-04-13 10:18:17.381	chrome-template
com.atlassian.auiplugin	3356	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-registry
com.atlassian.auiplugin	3357	2017-04-13 10:18:17.381	aui-badge
com.atlassian.confluence.plugins.confluence-labels	3358	2017-04-13 10:18:17.381	soy-label-link-server-function
com.atlassian.streams	3359	2017-04-13 10:18:17.381	date-en-AU
com.atlassian.oauth.serviceprovider	3360	2017-04-13 10:18:17.381	localeResolver
confluence.web.resources	3361	2017-04-13 10:18:17.381	colours-transformer
com.atlassian.support.healthcheck.support-healthcheck-plugin	3362	2017-04-13 10:18:17.381	salI18nResolver
confluence.web.components	3363	2017-04-13 10:18:17.381	property-panel-js
confluence.extra.chart	3364	2017-04-13 10:18:17.381	chart-xhtml
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	3365	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.auiplugin	3366	2017-04-13 10:18:17.381	aui-page-layout
com.atlassian.plugins.base-hipchat-integration-plugin	3367	2017-04-13 10:18:17.381	configure-integration-data
com.atlassian.streams.confluence	3368	2017-04-13 10:18:17.381	date-es-EC
com.atlassian.support.stp	3369	2017-04-13 10:18:17.381	webResourceManagerContextItem
com.atlassian.streams	3370	2017-04-13 10:18:17.381	date-da-DK
com.atlassian.auiplugin	3371	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-form-validation-basic-validators
com.atlassian.confluence.plugins.search.confluence-search	3372	2017-04-13 10:18:17.381	queryFactory
confluence.search.mappers.lucene	3373	2017-04-13 10:18:17.381	all
com.atlassian.querylang.confluence-cql-plugin	3374	2017-04-13 10:18:17.381	current-content-query-function
com.atlassian.streams.confluence	3375	2017-04-13 10:18:17.381	date-es-CL
com.atlassian.streams	3376	2017-04-13 10:18:17.381	date-en-CA
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3377	2017-04-13 10:18:17.381	rest-compatibility-filter
com.atlassian.streams	3378	2017-04-13 10:18:17.381	date-en-BZ
com.atlassian.streams.confluence	3379	2017-04-13 10:18:17.381	date-es-CO
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3380	2017-04-13 10:18:17.381	site-blog-recipients-provider
com.atlassian.confluence.plugins.confluence-create-content-plugin	3381	2017-04-13 10:18:17.381	spaceCollectionService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3382	2017-04-13 10:18:17.381	confluenceHostLicenseProvider
confluence.macros.multimedia	3383	2017-04-13 10:18:17.381	quicktime
com.atlassian.confluence.plugins.confluence-space-blueprints	3384	2017-04-13 10:18:17.381	sidebarLinkService
com.atlassian.querylang.confluence-cql-plugin	3385	2017-04-13 10:18:17.381	modified-field
confluence.content.action.menu	3386	2017-04-13 10:18:17.381	view-information
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3387	2017-04-13 10:18:17.381	atlassianClusterMonitoring
com.atlassian.confluence.plugins.confluence-space-blueprints	3388	2017-04-13 10:18:17.381	team-space-blueprint-item
com.atlassian.auiplugin	3389	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-alignment
com.atlassian.streams.actions	3390	2017-04-13 10:18:17.381	commentActionHandlers
com.atlassian.streams	3391	2017-04-13 10:18:17.381	executorFactory
confluence.extra.jira	3392	2017-04-13 10:18:17.381	macro-browser-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	3393	2017-04-13 10:18:17.381	create-from-template-resources
confluence.listeners.core	3394	2017-04-13 10:18:17.381	usercredentialupdatelistener
com.atlassian.streams	3395	2017-04-13 10:18:17.381	streamsI18nResolver
com.atlassian.plugins.base-hipchat-integration-plugin	3396	2017-04-13 10:18:17.381	image-resources
com.atlassian.analytics.analytics-client	3397	2017-04-13 10:18:17.381	event-report-servlet
com.atlassian.plugins.atlassian-nav-links-plugin	3398	2017-04-13 10:18:17.381	readOnlyApplicationLinkService
com.atlassian.confluence.plugins.confluence-inline-tasks	3399	2017-04-13 10:18:17.381	tasks-feature-discovery-resources
com.atlassian.confluence.plugins.gadgets	3400	2017-04-13 10:18:17.381	page-gadget-embedded
com.atlassian.streams.confluence	3401	2017-04-13 10:18:17.381	date-es-CR
com.atlassian.confluence.editor	3402	2017-04-13 10:18:17.381	editor-save
com.atlassian.support.healthcheck.support-healthcheck-plugin	3403	2017-04-13 10:18:17.381	supportHealthCheckSupplier
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3404	2017-04-13 10:18:17.381	synchronyWebJsonToken
com.atlassian.confluence.plugins.confluence-email-resources	3405	2017-04-13 10:18:17.381	content-templates-page-link-pattern-1.0.0
confluence.extra.webdav	3406	2017-04-13 10:18:17.381	confluenceDavSessionInvalidatorJobTrigger
com.atlassian.confluence.plugins.confluence-mentions-plugin	3407	2017-04-13 10:18:17.381	mention-hipchat-notification-template
com.atlassian.confluence.editor	3408	2017-04-13 10:18:17.381	pageLayoutListener
com.atlassian.streams.core	3409	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.streams.confluence	3410	2017-04-13 10:18:17.381	date-es-BO
com.atlassian.confluence.plugins.confluence-email-resources	3411	2017-04-13 10:18:17.381	content-templates-status-update-pattern-1.0.0
com.atlassian.streams	3412	2017-04-13 10:18:17.381	streamsActivityRedirectionFilter
com.atlassian.confluence.plugins.confluence-labels	3413	2017-04-13 10:18:17.381	view-label-resources
com.atlassian.confluence.plugins.gadgets	3414	2017-04-13 10:18:17.381	gadget-placeholder
confluence.lifecycle.core	3415	2017-04-13 10:18:17.381	schedulerLifecycle
com.atlassian.applinks.applinks-plugin	3416	2017-04-13 10:18:17.381	applinks-new-ui
com.atlassian.applinks.applinks-oauth-plugin	3417	2017-04-13 10:18:17.381	applinkPluginUtil
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3418	2017-04-13 10:18:17.381	notificationUserService
com.atlassian.confluence.plugins.confluence-edge-index	3419	2017-04-13 10:18:17.381	flushEdgeIndexQueueJob
com.atlassian.confluence.plugins.confluence-sal-plugin	3420	2017-04-13 10:18:17.381	oAuthRequestVerifierFactory
confluence.extra.impresence2	3421	2017-04-13 10:18:17.381	reporter-jabber
com.atlassian.applinks.applinks-plugin	3422	2017-04-13 10:18:17.381	applinks-lib-backbone
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3423	2017-04-13 10:18:17.381	jsonableJacksonService
com.atlassian.confluence.plugins.confluence-create-content-plugin	3424	2017-04-13 10:18:17.381	blueprint-resources
com.atlassian.plugins.less-transformer-plugin	3425	2017-04-13 10:18:17.381	pluginUriResolver
com.atlassian.auiplugin	3426	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-deprecation
confluence.renderer.components	3427	2017-04-13 10:18:17.381	block
com.atlassian.confluence.plugins.confluence-create-content-plugin	3428	2017-04-13 10:18:17.381	header-create-dialog
com.atlassian.confluence.plugins.confluence-inline-comments	3429	2017-04-13 10:18:17.381	loader
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3430	2017-04-13 10:18:17.381	confluence-collaborative-editor-api-rest
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3431	2017-04-13 10:18:17.381	app
com.atlassian.streams.confluence	3432	2017-04-13 10:18:17.381	spaceEntityResolver
com.atlassian.auiplugin	3433	2017-04-13 10:18:17.381	placeholder
com.atlassian.plugins.atlassian-plugins-webresource-plugin	3434	2017-04-13 10:18:17.381	jsI18n
com.atlassian.confluence.extra.widgetconnector	3435	2017-04-13 10:18:17.381	voicethread
com.atlassian.auiplugin	3436	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-layer
com.atlassian.confluence.plugins.confluence-inline-tasks	3437	2017-04-13 10:18:17.381	show-task-feature-discovery-flag-page
com.atlassian.applinks.applinks-basicauth-plugin	3438	2017-04-13 10:18:17.381	applinkPluginUtil
com.atlassian.confluence.plugins.confluence-mentions-plugin	3439	2017-04-13 10:18:17.381	editor-insertmention
com.atlassian.plugin.notifications.notifications-module	3440	2017-04-13 10:18:17.381	notificationSchemeStore
com.atlassian.support.healthcheck.support-healthcheck-plugin	3441	2017-04-13 10:18:17.381	notificationDismissPersistenceService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3442	2017-04-13 10:18:17.381	blog-share-notification
com.atlassian.streams.confluence	3443	2017-04-13 10:18:17.381	date-es-AR
com.atlassian.analytics.analytics-client	3444	2017-04-13 10:18:17.381	policy-update-init
com.atlassian.confluence.plugins.confluence-email-resources	3445	2017-04-13 10:18:17.381	notification-templates-1.0.0
com.atlassian.plugins.atlassian-whitelist-core-plugin	3446	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.plugins.atlassian-nav-links-plugin	3447	2017-04-13 10:18:17.381	project-shortcuts-rest
com.atlassian.plugins.base-hipchat-integration-plugin	3448	2017-04-13 10:18:17.381	rest-ping
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3449	2017-04-13 10:18:17.381	rest-filter
com.atlassian.auiplugin	3450	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-contain-dropdown
com.atlassian.plugins.atlassian-whitelist-core-plugin	3451	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.plugin.notifications.notifications-module	3452	2017-04-13 10:18:17.381	notificationErrorRegistry
com.atlassian.plugins.atlassian-nav-links-plugin	3453	2017-04-13 10:18:17.381	http-request-factory
com.atlassian.confluence.plugins.search.confluence-search	3454	2017-04-13 10:18:17.381	cqlSearcher
com.atlassian.auiplugin	3455	2017-04-13 10:18:17.381	ajs
com.atlassian.analytics.analytics-client	3456	2017-04-13 10:18:17.381	productEventListener
confluence.sections.space.admin	3457	2017-04-13 10:18:17.381	spacelogo
confluence.search.mappers.lucene	3458	2017-04-13 10:18:17.381	customContentType
com.atlassian.webhooks.atlassian-webhooks-plugin	3459	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.confluence.plugins.confluence-mobile	3460	2017-04-13 10:18:17.381	view-content-resources
com.atlassian.applinks.applinks-trustedapps-plugin	3461	2017-04-13 10:18:17.381	trustedApplicationReaper
com.atlassian.confluence.plugins.confluence-knowledge-base	3462	2017-04-13 10:18:17.381	userAccessor
com.atlassian.confluence.plugins.confluence-daily-summary-email	3463	2017-04-13 10:18:17.381	PopularContentManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3464	2017-04-13 10:18:17.381	localLicenseNotificationJob
com.atlassian.plugins.rest.atlassian-rest-module	3465	2017-04-13 10:18:17.381	activator
confluence.extra.impresence2	3466	2017-04-13 10:18:17.381	skypeme-xhtml
com.atlassian.confluence.extra.flyingpdf	3467	2017-04-13 10:18:17.381	configpdflayout-2
com.atlassian.confluence.extra.flyingpdf	3468	2017-04-13 10:18:17.381	export-format-pdf
com.atlassian.applinks.applinks-plugin	3469	2017-04-13 10:18:17.381	applinks-images
confluence.extra.impresence2	3470	2017-04-13 10:18:17.381	presence-reporter
confluence.macros.advanced	3471	2017-04-13 10:18:17.381	favpages-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3472	2017-04-13 10:18:17.381	upm-requirejs
com.atlassian.streams	3473	2017-04-13 10:18:17.381	date-gu-IN
com.atlassian.streams.confluence	3474	2017-04-13 10:18:17.381	date-ka-GE
com.atlassian.plugins.confluence-tdm-merger	3475	2017-04-13 10:18:17.381	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-content-property-storage	3476	2017-04-13 10:18:17.381	contentPropertySearchQueryFactory
com.atlassian.mywork.mywork-common-plugin	3477	2017-04-13 10:18:17.381	velocity-renderer
com.atlassian.confluence.plugins.search.confluence-search	3478	2017-04-13 10:18:17.381	luceneQueryParserFactory
com.atlassian.plugins.atlassian-nps-plugin	3479	2017-04-13 10:18:17.381	nps-rest
com.atlassian.analytics.analytics-client	3481	2017-04-13 10:18:17.381	privacyPolicyUpdateDetector
com.atlassian.support.stp	3482	2017-04-13 10:18:17.381	isUserAdminConditionChecker
com.atlassian.confluence.plugins.confluence-edge-index	3483	2017-04-13 10:18:17.381	commentCountQuery
com.atlassian.confluence.plugins.confluence-default-space-content-plugin	3484	2017-04-13 10:18:17.381	spacecontent-personal
confluence.sections.help	3485	2017-04-13 10:18:17.381	conf-help
com.atlassian.streams.confluence	3486	2017-04-13 10:18:17.381	date-is-IS
confluence.macros.multimedia	3487	2017-04-13 10:18:17.381	video
com.atlassian.auiplugin	3488	2017-04-13 10:18:17.381	template
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3489	2017-04-13 10:18:17.381	delete-resources
com.atlassian.applinks.applinks-plugin	3490	2017-04-13 10:18:17.381	restUrlBuilder
com.atlassian.auiplugin	3491	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-include
com.atlassian.auiplugin	3492	2017-04-13 10:18:17.381	aui-experimental-soy-templates-2
com.atlassian.streams.confluence	3493	2017-04-13 10:18:17.381	date-sms-FI
com.atlassian.confluence.plugins.confluence-email-resources	3494	2017-04-13 10:18:17.381	view-blogpost-email-call-to-action
com.atlassian.auiplugin	3495	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-blanket
com.atlassian.confluence.plugins.confluence-email-resources	3496	2017-04-13 10:18:17.381	get-nice-file-size-function
com.atlassian.plugins.atlassian-nav-links-plugin	3497	2017-04-13 10:18:17.381	cacheRefreshService
com.atlassian.confluence.editor	3498	2017-04-13 10:18:17.381	servletcontextthreadlocalservlet
confluence.extra.jira	3499	2017-04-13 10:18:17.381	applinksProxy
confluence.user.menu	3500	2017-04-13 10:18:17.381	login
confluence.web.resources	3501	2017-04-13 10:18:17.381	pages-dirview
com.atlassian.confluence.plugins.confluence-onboarding	3502	2017-04-13 10:18:17.381	onboardingNumberOfUsersCheckJob
com.atlassian.confluence.plugins.confluence-create-content-plugin	3503	2017-04-13 10:18:17.381	lazyInsertExecutor
com.atlassian.applinks.applinks-plugin	3504	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3505	2017-04-13 10:18:17.381	notificationRepresentationFactory
com.atlassian.applinks.applinks-oauth-plugin	3506	2017-04-13 10:18:17.381	oAuthUIAdminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	3507	2017-04-13 10:18:17.381	highlightActionsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-software-project	3508	2017-04-13 10:18:17.381	confluence-software-project-viewcontent-resources
com.atlassian.auiplugin	3509	2017-04-13 10:18:17.381	aui-experimental-example
com.atlassian.applinks.applinks-plugin	3510	2017-04-13 10:18:17.381	typeAccessor
com.atlassian.confluence.plugins.confluence-file-notifications	3511	2017-04-13 10:18:17.381	file-notifications-file-details-file-version
com.atlassian.plugins.atlassian-nav-links-plugin	3512	2017-04-13 10:18:17.381	application-properties
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3513	2017-04-13 10:18:17.381	roadmap-editor-resources
com.atlassian.auiplugin	3514	2017-04-13 10:18:17.381	cookie
com.atlassian.confluence.plugins.confluence-create-content-plugin	3515	2017-04-13 10:18:17.381	create-from-template
com.atlassian.querylang.confluence-cql-plugin	3516	2017-04-13 10:18:17.381	space-key-field
com.atlassian.confluence.plugins.confluence-email-resources	3517	2017-04-13 10:18:17.381	notification-templates-content-removed-1.0.0
confluence.web.resources	3518	2017-04-13 10:18:17.381	view-comment
com.atlassian.plugins.base-hipchat-integration-plugin	3519	2017-04-13 10:18:17.381	invites-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3520	2017-04-13 10:18:17.381	page-event-notification-transformer
com.atlassian.confluence.plugins.confluence-space-blueprints	3521	2017-04-13 10:18:17.381	documentation-space-homepage-template
com.atlassian.applinks.applinks-plugin	3522	2017-04-13 10:18:17.381	authenticationListener
com.atlassian.applinks.applinks-plugin	3523	2017-04-13 10:18:17.381	webResourceUrlProvider
com.atlassian.confluence.ext.newcode-macro-plugin	3524	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.auiplugin	3525	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-css-deprecations
com.atlassian.confluence.plugins.confluence-inline-tasks	3526	2017-04-13 10:18:17.381	task-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-create-content-plugin	3527	2017-04-13 10:18:17.381	contentBlueprintService
com.atlassian.confluence.plugins.confluence-lookandfeel	3528	2017-04-13 10:18:17.381	fileUploadManager
confluence.listeners.core	3529	2017-04-13 10:18:17.381	look-and-feel-audit-logging-listener
com.atlassian.streams.confluence	3530	2017-04-13 10:18:17.381	date-az-Cyrl-AZ
com.atlassian.plugins.base-hipchat-integration-plugin	3531	2017-04-13 10:18:17.381	hipchatUserConfigurationPanel
com.atlassian.analytics.analytics-client	3532	2017-04-13 10:18:17.381	licenseCreationDateService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3533	2017-04-13 10:18:17.381	searchManager
com.atlassian.auiplugin	3534	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-globalize
com.atlassian.applinks.applinks-plugin	3535	2017-04-13 10:18:17.381	auth-container
com.atlassian.auiplugin	3536	2017-04-13 10:18:17.381	aui-experimental-table-sortable
com.atlassian.streams	3537	2017-04-13 10:18:17.381	date-pt-PT
com.atlassian.confluence.editor	3538	2017-04-13 10:18:17.381	macro-placeholder
com.atlassian.confluence.plugins.confluence-like	3539	2017-04-13 10:18:17.381	like-created-notification-template-hipchat
confluence.renderer.components	3540	2017-04-13 10:18:17.381	url
confluence.sections.page	3541	2017-04-13 10:18:17.381	view-information
com.atlassian.confluence.plugins.share-page	3542	2017-04-13 10:18:17.381	share-attachment-email-notification-template-body
confluence.search.mappers.lucene	3543	2017-04-13 10:18:17.381	spacePermissionsSearchFilter
com.atlassian.confluence.extra.widgetconnector	3544	2017-04-13 10:18:17.381	widget-migrator
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3545	2017-04-13 10:18:17.381	confluenceUserRolesProvider
com.atlassian.confluence.plugins.confluence-knowledge-base	3546	2017-04-13 10:18:17.381	kb-how-to-article-blueprint
com.atlassian.confluence.plugins.confluence-software-blueprints	3547	2017-04-13 10:18:17.381	retrospectives-index
confluence.extra.impresence2	3548	2017-04-13 10:18:17.381	reporter-yahoo
com.atlassian.confluence.plugins.confluence-space-ia	3549	2017-04-13 10:18:17.381	advanced-links
com.atlassian.streams.confluence	3550	2017-04-13 10:18:17.381	activityObjectFactory
com.atlassian.confluence.plugins.confluence-content-property-storage	3551	2017-04-13 10:18:17.381	contentPropertiesExtractor
confluence.listeners.core	3552	2017-04-13 10:18:17.381	superBatchCounterInvalidator
com.atlassian.confluence.plugins.confluence-onboarding	3553	2017-04-13 10:18:17.381	onboarding-common-resources
com.atlassian.support.healthcheck.support-healthcheck-plugin	3554	2017-04-13 10:18:17.381	confluenceIndexInfoService
com.atlassian.auiplugin	3555	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-backbone
com.atlassian.confluence.keyboardshortcuts	3556	2017-04-13 10:18:17.381	tinymce.table.paste.row
com.atlassian.confluence.extra.flyingpdf	3557	2017-04-13 10:18:17.381	exportcss
com.atlassian.confluence.plugins.confluence-sal-plugin	3558	2017-04-13 10:18:17.381	threadLocalContextManager
com.atlassian.querylang.confluence-cql-plugin	3559	2017-04-13 10:18:17.381	user-sort-mapper
com.atlassian.plugin.notifications.notifications-module	3560	2017-04-13 10:18:17.381	userName
com.atlassian.confluence.plugins.confluence-knowledge-base	3561	2017-04-13 10:18:17.381	transactionTemplate
confluence.web.resources	3562	2017-04-13 10:18:17.381	type-helpers
com.atlassian.confluence.plugins.confluence-inline-comments	3563	2017-04-13 10:18:17.381	editor
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3564	2017-04-13 10:18:17.381	batchMessageMap-soy-function
com.atlassian.confluence.plugins.confluence-software-blueprints	3565	2017-04-13 10:18:17.381	jirareports-resources
com.atlassian.confluence.plugins.confluence-file-notifications	3566	2017-04-13 10:18:17.381	file-content-remove-notification
com.atlassian.confluence.plugins.confluence-rest-resources	3567	2017-04-13 10:18:17.381	rest-api-filter
com.atlassian.confluence.plugins.confluence-macro-browser	3568	2017-04-13 10:18:17.381	macro-browser-js
com.atlassian.confluence.restplugin	3569	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.recently-viewed-plugin	3570	2017-04-13 10:18:17.381	app-resources
com.atlassian.confluence.plugins.confluence-sortable-tables	3571	2017-04-13 10:18:17.381	date-format-header-metadata
com.atlassian.confluence.plugins.confluence-mobile	3572	2017-04-13 10:18:17.381	pluginResourceLocator
com.atlassian.confluence.extra.officeconnector	3573	2017-04-13 10:18:17.381	viewdoc-legacy
com.atlassian.confluence.plugins.confluence-create-content-plugin	3574	2017-04-13 10:18:17.381	all-resources
com.atlassian.confluence.plugins.confluence-inline-comments	3575	2017-04-13 10:18:17.381	like-email-adg-content-item
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3576	2017-04-13 10:18:17.381	propertiespanel
com.atlassian.plugins.authentication.atlassian-authentication-plugin	3577	2017-04-13 10:18:17.381	logout-servlet
com.atlassian.confluence.plugins.confluence-content-property-storage	3578	2017-04-13 10:18:17.381	storageContentPropertyManager
confluence.sections.news	3579	2017-04-13 10:18:17.381	view-information
com.atlassian.auiplugin	3580	2017-04-13 10:18:17.381	aui-experimental-progress-buttons
com.atlassian.confluence.plugins.confluence-page-banner	3581	2017-04-13 10:18:17.381	content-metadata-page-inherited-restrictions
confluence.sections.space.advanced	3582	2017-04-13 10:18:17.381	unfavourite
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3583	2017-04-13 10:18:17.381	hipchat-emoticons
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3584	2017-04-13 10:18:17.381	safeModeService
com.atlassian.streams.confluence	3585	2017-04-13 10:18:17.381	wiki
confluence.web.panels	3586	2017-04-13 10:18:17.381	confluence-header-workday-menu
confluence.sections.admin	3587	2017-04-13 10:18:17.381	theme
com.atlassian.crowd.embedded.admin	3588	2017-04-13 10:18:17.381	UpdateDirectoryConfigurationWithLocalUserStatus
com.atlassian.applinks.applinks-plugin	3589	2017-04-13 10:18:17.381	feature-v3
confluence.web.resources	3590	2017-04-13 10:18:17.381	login-styles
com.atlassian.confluence.editor	3591	2017-04-13 10:18:17.381	storageToEditorFragmentTransformer
com.atlassian.auiplugin	3592	2017-04-13 10:18:17.381	inline-dialog
com.atlassian.auiplugin	3593	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-constants
confluence.user.menu.concise	3594	2017-04-13 10:18:17.381	logout
com.atlassian.confluence.contributors	3595	2017-04-13 10:18:17.381	notificationEventListener
com.atlassian.streams.streams-thirdparty-plugin	3596	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.applinks.applinks-plugin	3597	2017-04-13 10:18:17.381	feature-applink-migration
com.atlassian.confluence.plugins.confluence-file-notifications	3598	2017-04-13 10:18:17.381	confluenceFileManagaer
com.atlassian.confluence.plugins.confluence-onboarding	3599	2017-04-13 10:18:17.381	global-storage-service
com.atlassian.querylang.confluence-cql-plugin	3600	2017-04-13 10:18:17.381	current-space-query-function
com.atlassian.confluence.plugins.confluence-onboarding	3601	2017-04-13 10:18:17.381	confluence-flow-resources
com.atlassian.confluence.plugins.confluence-email-resources	3602	2017-04-13 10:18:17.381	clusterManager
com.atlassian.confluence.plugins.confluence-onboarding	3603	2017-04-13 10:18:17.381	onboarding-email-soy-templates
com.atlassian.streams.streams-thirdparty-plugin	3604	2017-04-13 10:18:17.381	feedSanitizer
com.atlassian.plugins.base-hipchat-integration-plugin	3605	2017-04-13 10:18:17.381	atlassianHipChatIntegrationAnalyticsWhitelist
confluence.renderer.components	3606	2017-04-13 10:18:17.381	inserted
com.atlassian.confluence.contributors	3607	2017-04-13 10:18:17.381	rest
com.atlassian.applinks.applinks-oauth-plugin	3608	2017-04-13 10:18:17.381	documentationLinker
com.atlassian.confluence.plugins.confluence-mobile	3609	2017-04-13 10:18:17.381	rest-filter
com.atlassian.gadgets.opensocial	3610	2017-04-13 10:18:17.381	metadata-rpc-servlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3611	2017-04-13 10:18:17.381	linkBuilder
com.atlassian.applinks.applinks-cors-plugin	3612	2017-04-13 10:18:17.381	corsFilter
com.atlassian.mywork.mywork-confluence-host-plugin	3613	2017-04-13 10:18:17.381	mwauthredirect
com.atlassian.integration.jira.jira-integration-plugin	3614	2017-04-13 10:18:17.381	server-side-templates
confluence.extra.confluencerpc	3615	2017-04-13 10:18:17.381	wikiSoapServiceTarget
com.atlassian.support.healthcheck.support-healthcheck-plugin	3616	2017-04-13 10:18:17.381	timeZoneManager
com.atlassian.confluence.plugins.confluence-content-property-storage	3617	2017-04-13 10:18:17.381	spacePropertyFinderFactory
com.atlassian.streams	3618	2017-04-13 10:18:17.381	date-ru-RU
com.atlassian.confluence.plugins.confluence-file-notifications	3619	2017-04-13 10:18:17.381	file-notifications-reply-action
com.atlassian.mywork.mywork-confluence-host-plugin	3620	2017-04-13 10:18:17.381	ao
com.atlassian.applinks.applinks-plugin	3621	2017-04-13 10:18:17.381	feature-help-link
com.atlassian.analytics.analytics-client	3622	2017-04-13 10:18:17.381	logEventFormatter
com.atlassian.plugin.notifications.notifications-module	3623	2017-04-13 10:18:17.381	cacheManager
com.atlassian.confluence.restplugin	3624	2017-04-13 10:18:17.381	rest
com.atlassian.support.healthcheck.support-healthcheck-plugin	3625	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.applinks.applinks-plugin	3626	2017-04-13 10:18:17.381	applicationLinkService
com.atlassian.confluence.editor	3627	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.streams	3628	2017-04-13 10:18:17.381	date-ms-BN
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3629	2017-04-13 10:18:17.381	instanceTopologyFactory
com.atlassian.confluence.plugins.confluence-previews	3630	2017-04-13 10:18:17.381	confluence-previews-css
com.atlassian.confluence.plugins.confluence-cache-management-plugin	3631	2017-04-13 10:18:17.381	actions
com.atlassian.confluence.plugins.confluence-jira-metadata	3632	2017-04-13 10:18:17.381	servlet-jira-redirect
com.atlassian.confluence.plugins.confluence-create-content-plugin	3633	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.confluence-highlight-actions	3634	2017-04-13 10:18:17.381	highlighting-service-filter
com.atlassian.confluence.plugins.quickedit	3635	2017-04-13 10:18:17.381	quick-comment-page
com.atlassian.confluence.plugins.confluence-rest-resources	3636	2017-04-13 10:18:17.381	content-labels-metadata-provider
confluence.sections.space.admin	3637	2017-04-13 10:18:17.381	removespace
com.atlassian.confluence.plugins.confluence-create-content-plugin	3638	2017-04-13 10:18:17.381	blueprintsTemplateHelper
com.atlassian.plugins.atlassian-nav-links-plugin	3639	2017-04-13 10:18:17.381	atlassian-nav-links-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	3640	2017-04-13 10:18:17.381	notification-templates-forgot-password-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3641	2017-04-13 10:18:17.381	localeResolver
com.atlassian.confluence.plugins.confluence-software-project	3642	2017-04-13 10:18:17.381	confluence-software-project-analytics-whitelist
com.atlassian.analytics.analytics-client	3643	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.confluence.plugins.confluence-lookandfeel	3644	2017-04-13 10:18:17.381	siteLogoManager
com.atlassian.applinks.applinks-oauth-plugin	3645	2017-04-13 10:18:17.381	serviceProviderTokenStore
com.atlassian.streams	3646	2017-04-13 10:18:17.381	date-en-NZ
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3647	2017-04-13 10:18:17.381	atlassianClusterMonitoring-filter
confluence.extra.jira	3648	2017-04-13 10:18:17.381	jiraissues-migration
com.atlassian.confluence.plugins.confluence-create-content-plugin	3649	2017-04-13 10:18:17.381	editor-resources
com.atlassian.plugins.atlassian-project-creation-plugin	3650	2017-04-13 10:18:17.381	project-linking-capability
confluence.extra.masterdetail	3651	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.confluence-email-resources	3652	2017-04-13 10:18:17.381	chrome-template-main-table-1.0.0
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3653	2017-04-13 10:18:17.381	applicationProperties
confluence.sections.space.tools	3654	2017-04-13 10:18:17.381	overview
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3655	2017-04-13 10:18:17.381	page-or-blog-notification-recipients-provider
com.atlassian.analytics.analytics-client	3656	2017-04-13 10:18:17.381	s3EventUploader
com.atlassian.plugin.notifications.notifications-module	3657	2017-04-13 10:18:17.381	notification-panel
crowd.system.passwordencoders	3658	2017-04-13 10:18:17.381	des
com.atlassian.streams	3659	2017-04-13 10:18:17.381	date-en-PH
com.atlassian.confluence.plugins.confluence-link-browser	3660	2017-04-13 10:18:17.381	link-browser-editor-resources
confluence.sections.admin	3661	2017-04-13 10:18:17.381	groups
com.atlassian.confluence.plugins.confluence-previews	3662	2017-04-13 10:18:17.381	annotation-plugin
com.atlassian.confluence.plugins.whatsnew	3663	2017-04-13 10:18:17.381	buildInformationService
confluence.extra.information	3664	2017-04-13 10:18:17.381	soy-templates
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3665	2017-04-13 10:18:17.381	upmScheduler
com.atlassian.plugins.atlassian-nav-links-plugin	3666	2017-04-13 10:18:17.381	capabilities-consumer-admin-rest-filter
confluence.macros.dashboard	3667	2017-04-13 10:18:17.381	spaces-list
com.atlassian.confluence.plugins.quickreload	3668	2017-04-13 10:18:17.381	confluence.quick-reload-automated
confluence.web.panels	3669	2017-04-13 10:18:17.381	confluence-header-admin-menu
confluence.search.mappers.lucene	3670	2017-04-13 10:18:17.381	termSearchFilter
com.atlassian.plugins.atlassian-nps-plugin	3671	2017-04-13 10:18:17.381	npsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-file-notifications	3672	2017-04-13 10:18:17.381	file-notifications-reopen-action
confluence.web.resources	3673	2017-04-13 10:18:17.381	page-templates
com.atlassian.streams	3674	2017-04-13 10:18:17.381	date-sma-NO
confluence.extra.attachments	3675	2017-04-13 10:18:17.381	space-attachments-javascript
com.atlassian.confluence.plugins.gadgets	3676	2017-04-13 10:18:17.381	core-services-filter
confluence.sections.space.admin	3677	2017-04-13 10:18:17.381	looknfeel
com.atlassian.auiplugin	3678	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-select
com.atlassian.confluence.plugins.gadgets.spi	3679	2017-04-13 10:18:17.381	subscribedGadgetFeedIdGenerator
com.atlassian.crowd.embedded.admin	3680	2017-04-13 10:18:17.381	enable-html-escaping
com.atlassian.confluence.plugins.confluence-page-banner	3681	2017-04-13 10:18:17.381	page-banner-preview-resources
com.atlassian.auiplugin	3682	2017-04-13 10:18:17.381	aui-experimental-header-rotp
com.atlassian.auiplugin	3683	2017-04-13 10:18:17.381	aui-experimental-soy-templates
com.atlassian.applinks.applinks-cors-plugin	3684	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.streams	3685	2017-04-13 10:18:17.381	date-hi-IN
com.atlassian.confluence.plugins.confluence-email-resources	3686	2017-04-13 10:18:17.381	templateManager
com.atlassian.support.healthcheck.support-healthcheck-plugin	3687	2017-04-13 10:18:17.381	ao
com.atlassian.confluence.plugins.gadgets	3688	2017-04-13 10:18:17.381	css
com.atlassian.confluence.plugins.confluence-like	3689	2017-04-13 10:18:17.381	content-like-resources
com.atlassian.querylang.confluence-cql-plugin	3690	2017-04-13 10:18:17.381	multi-sort-mapper
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	3691	2017-04-13 10:18:17.381	remote-page-view-servlet
com.atlassian.oauth.serviceprovider	3692	2017-04-13 10:18:17.381	consumerStore
com.atlassian.plugins.atlassian-nav-links-plugin	3693	2017-04-13 10:18:17.381	ao-module
com.atlassian.auiplugin	3694	2017-04-13 10:18:17.381	aui-experimental-page-header
com.atlassian.confluence.plugins.confluence-create-content-plugin	3695	2017-04-13 10:18:17.381	hostContextAccessor
com.atlassian.confluence.plugins.confluence-space-blueprints	3696	2017-04-13 10:18:17.381	confluence-space-blueprints-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3697	2017-04-13 10:18:17.381	menu-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	3698	2017-04-13 10:18:17.381	macroResolver
com.atlassian.confluence.plugins.confluence-space-directory	3699	2017-04-13 10:18:17.381	timeZoneManager
com.atlassian.soy.soy-template-plugin	3700	2017-04-13 10:18:17.381	soyTransformer
confluence.extra.information	3701	2017-04-13 10:18:17.381	info
com.atlassian.activeobjects.activeobjects-plugin	3702	2017-04-13 10:18:17.381	admin-ui-filter
confluence.extra.jira	3703	2017-04-13 10:18:17.381	jira-chart-proxy-servlet
confluence.sections.space.advanced	3704	2017-04-13 10:18:17.381	exportxml
com.atlassian.applinks.applinks-plugin	3705	2017-04-13 10:18:17.381	concurrentExecutor
confluence.web.resources	3706	2017-04-13 10:18:17.381	querystring
com.atlassian.confluence.plugins.share-page	3707	2017-04-13 10:18:17.381	share-keyboard-shortcut
confluence.listeners.core	3708	2017-04-13 10:18:17.381	import-export-audit-logging-listener
com.atlassian.support.stp	3709	2017-04-13 10:18:17.381	userManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	3710	2017-04-13 10:18:17.381	contentGenerator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3711	2017-04-13 10:18:17.381	schedulerService
com.atlassian.streams.streams-thirdparty-plugin	3712	2017-04-13 10:18:17.381	userManager
confluence.renderer.components	3713	2017-04-13 10:18:17.381	monospace
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3714	2017-04-13 10:18:17.381	follower-added-notification-template-body
confluence.search.mappers.lucene	3715	2017-04-13 10:18:17.381	macroStorageVersion
com.atlassian.webhooks.atlassian-webhooks-plugin	3716	2017-04-13 10:18:17.381	WebHooksAdminActions
confluence.extra.masterdetail	3717	2017-04-13 10:18:17.381	details-xhtml
com.atlassian.confluence.plugins.gadgets	3718	2017-04-13 10:18:17.381	gadgetSpecUrlChecker
com.atlassian.confluence.plugins.confluence-request-access-plugin	3719	2017-04-13 10:18:17.381	pageRestrictionService
com.atlassian.querylang.confluence-cql-plugin	3720	2017-04-13 10:18:17.381	current-user-query-function
confluence.admin.user	3721	2017-04-13 10:18:17.381	userpicker
com.atlassian.confluence.contributors	3722	2017-04-13 10:18:17.381	contributors-summary
com.atlassian.confluence.plugins.gadgets	3723	2017-04-13 10:18:17.381	confluence-page-gadget
com.atlassian.support.stp	3724	2017-04-13 10:18:17.381	stp-license-banner-data-bitbucket
confluence.comment.action	3725	2017-04-13 10:18:17.381	comment-date
com.atlassian.confluence.plugins.confluence-email-resources	3726	2017-04-13 10:18:17.381	notification-templates-content-added-1.0.0
com.atlassian.applinks.applinks-trustedapps-plugin	3727	2017-04-13 10:18:17.381	trustedUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3728	2017-04-13 10:18:17.381	content-edited-mail-batch-notification-processor
com.atlassian.confluence.plugins.confluence-inline-comments	3729	2017-04-13 10:18:17.381	notification-template-reply
confluence.web.resources	3730	2017-04-13 10:18:17.381	dialog-breadcrumbs
com.atlassian.applinks.applinks-oauth-plugin	3731	2017-04-13 10:18:17.381	consumerTokenService
crowd.system.passwordencoders	3732	2017-04-13 10:18:17.381	ssha
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3733	2017-04-13 10:18:17.381	emoticons-resource-filter
com.atlassian.confluence.plugins.confluence-email-resources	3734	2017-04-13 10:18:17.381	content-templates-1.0.0
confluence.search.mappers.lucene	3735	2017-04-13 10:18:17.381	unlicensedUserSearchFilter
confluence.sections.page	3736	2017-04-13 10:18:17.381	edit
com.atlassian.applinks.applinks-basicauth-plugin	3737	2017-04-13 10:18:17.381	userManager
com.atlassian.plugins.atlassian-help-tips	3738	2017-04-13 10:18:17.381	ao-module
com.atlassian.applinks.applinks-trustedapps-plugin	3739	2017-04-13 10:18:17.381	trusted-auth-inbound-configuration
com.atlassian.plugins.base-hipchat-integration-plugin	3740	2017-04-13 10:18:17.381	conf-menu-item
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3741	2017-04-13 10:18:17.381	roadmap-utilities-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	3742	2017-04-13 10:18:17.381	confluence-documentation-space-blueprint-resources
com.atlassian.applinks.applinks-plugin	3743	2017-04-13 10:18:17.381	applinks-configure-entity-links-2
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3744	2017-04-13 10:18:17.381	upmSchedulerUpgradeTask
confluence.web.resources	3745	2017-04-13 10:18:17.381	userlink
com.atlassian.auiplugin	3746	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-underscore
com.atlassian.confluence.plugins.confluence-page-restrictions-dialog	3747	2017-04-13 10:18:17.381	confluencePageRestrictionsDialogWhitelist
com.atlassian.confluence.plugins.confluence-space-ia	3748	2017-04-13 10:18:17.381	link-dialog
com.atlassian.streams.confluence	3749	2017-04-13 10:18:17.381	date-ms-MY
com.atlassian.applinks.applinks-basicauth-plugin	3750	2017-04-13 10:18:17.381	confluence-inbound-basic
com.atlassian.plugin.notifications.notifications-module	3751	2017-04-13 10:18:17.381	eventPublisher
confluence.search.mappers.lucene	3752	2017-04-13 10:18:17.381	lastModifierSearchFilter
com.atlassian.plugin.notifications.notifications-module	3753	2017-04-13 10:18:17.381	notification-scheme
com.atlassian.confluence.plugins.gadgets	3754	2017-04-13 10:18:17.381	pageManager
com.atlassian.applinks.applinks-basicauth-plugin	3755	2017-04-13 10:18:17.381	internalHostApplication
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3756	2017-04-13 10:18:17.381	blogpost-trashed-notification-template
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3757	2017-04-13 10:18:17.381	imgfilterservler
confluence.sections.news	3758	2017-04-13 10:18:17.381	edit
com.atlassian.confluence.plugins.confluence-edge-index	3759	2017-04-13 10:18:17.381	flushEdgeIndexQueue
com.atlassian.confluence.plugins.confluence-content-property-storage	3760	2017-04-13 10:18:17.381	string-field-type-query-mapper
com.atlassian.streams	3761	2017-04-13 10:18:17.381	date-en-US
com.atlassian.confluence.plugins.confluence-knowledge-base	3762	2017-04-13 10:18:17.381	kbSpacePermissionUpdateService
com.atlassian.applinks.applinks-plugin	3763	2017-04-13 10:18:17.381	listEntityLinks
com.atlassian.plugins.atlassian-nps-plugin	3764	2017-04-13 10:18:17.381	nps-btf-admin-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3765	2017-04-13 10:18:17.381	hostLicenseInformation
com.atlassian.confluence.plugins.confluence-email-resources	3766	2017-04-13 10:18:17.381	notification-templates
com.atlassian.streams	3767	2017-04-13 10:18:17.381	date-en-UK
confluence.macros.dashboard	3768	2017-04-13 10:18:17.381	dashboard-macros-resources
com.atlassian.streams.core	3769	2017-04-13 10:18:17.381	localeResolver
com.atlassian.mywork.mywork-common-plugin	3770	2017-04-13 10:18:17.381	hostService
com.atlassian.plugins.atlassian-nps-plugin	3771	2017-04-13 10:18:17.381	nps-acknowledgement-flag-resources-async
com.atlassian.confluence.plugins.drag-and-drop	3772	2017-04-13 10:18:17.381	actions
com.atlassian.confluence.plugins.confluence-knowledge-base	3773	2017-04-13 10:18:17.381	spacePermissionManager
com.atlassian.streams	3774	2017-04-13 10:18:17.381	date-sw-KE
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3775	2017-04-13 10:18:17.381	upm-manage-templates
com.atlassian.confluence.plugins.confluence-edge-index	3776	2017-04-13 10:18:17.381	page.create
com.atlassian.confluence.plugins.confluence-templates	3777	2017-04-13 10:18:17.381	template-editor-variables-resources
confluence.macros.basic	3778	2017-04-13 10:18:17.381	nolink
com.atlassian.confluence.plugins.confluence-file-notifications	3779	2017-04-13 10:18:17.381	file-content-update-email-notification-template
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3780	2017-04-13 10:18:17.381	url-builder-function
com.atlassian.streams	3781	2017-04-13 10:18:17.381	date-bs-Latn-BA
com.atlassian.streams	3782	2017-04-13 10:18:17.381	date-en-TT
com.atlassian.streams	3783	2017-04-13 10:18:17.381	date-zu-ZA
com.atlassian.confluence.plugins.confluence-onboarding	3784	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-dashboard	3785	2017-04-13 10:18:17.381	confluence-dashboard-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3786	2017-04-13 10:18:17.381	myWorkActionService
com.atlassian.confluence.extra.officeconnector	3787	2017-04-13 10:18:17.381	searchpreview
com.atlassian.confluence.plugins.confluence-create-content-plugin	3788	2017-04-13 10:18:17.381	webItemService
com.atlassian.plugins.atlassian-nav-links-plugin	3789	2017-04-13 10:18:17.381	navigation-client
com.atlassian.confluence.plugins.confluence-dashboard	3790	2017-04-13 10:18:17.381	opt-out
com.atlassian.streams.confluence	3791	2017-04-13 10:18:17.381	userManager
com.atlassian.auiplugin	3792	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-toggle-class-name
com.atlassian.soy.soy-template-plugin	3793	2017-04-13 10:18:17.381	soyWebPanelRenderer
com.atlassian.plugins.base-hipchat-integration-plugin	3794	2017-04-13 10:18:17.381	hipchat-user-link-support
confluence.extra.confluencerpc	3795	2017-04-13 10:18:17.381	xhtmlSoapService
com.atlassian.confluence.plugins.system-templates	3796	2017-04-13 10:18:17.381	welcome-message
com.atlassian.confluence.plugins.confluence-paste	3797	2017-04-13 10:18:17.381	autoconvert-core
com.atlassian.analytics.analytics-client	3798	2017-04-13 10:18:17.381	confluenceEventListener
confluence.macros.profile	3799	2017-04-13 10:18:17.381	network
com.atlassian.auiplugin	3800	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-state
com.atlassian.applinks.applinks-plugin	3801	2017-04-13 10:18:17.381	applinks-whitelist
com.atlassian.streams.actions	3802	2017-04-13 10:18:17.381	actionHandlerWebResources
com.atlassian.confluence.plugins.synchrony-interop	3803	2017-04-13 10:18:17.381	synchrony-interop-plugin-analytics-whitelist
confluence.extractors.core	3804	2017-04-13 10:18:17.381	versionCommentExtractor
com.atlassian.confluence.plugins.confluence-dashboard	3805	2017-04-13 10:18:17.381	navigation-webitems-resources
confluence.sections.space.advanced	3806	2017-04-13 10:18:17.381	rss
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3807	2017-04-13 10:18:17.381	page-moved-notification-template-body
com.atlassian.confluence.plugins.status-macro	3808	2017-04-13 10:18:17.381	status
com.atlassian.streams	3809	2017-04-13 10:18:17.381	date-sa-IN
com.atlassian.confluence.plugins.confluence-content-property-storage	3810	2017-04-13 10:18:17.381	content-property-field
confluence.extra.impresence2	3811	2017-04-13 10:18:17.381	icq-xhtml
com.atlassian.plugins.atlassian-help-tips	3812	2017-04-13 10:18:17.381	ao
com.atlassian.plugins.atlassian-nav-links-plugin	3813	2017-04-13 10:18:17.381	webSudoManager
com.atlassian.streams	3814	2017-04-13 10:18:17.381	date-en-GB
com.atlassian.confluence.plugins.confluence-request-access-plugin	3815	2017-04-13 10:18:17.381	request-access-email-resources
confluence.web.resources	3816	2017-04-13 10:18:17.381	syntaxhighlighter-java
com.atlassian.confluence.plugins.confluence-email-resources	3817	2017-04-13 10:18:17.381	notification-templates-page-remove-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3818	2017-04-13 10:18:17.381	promotedBlueprintService
com.atlassian.confluence.plugins.confluence-templates	3819	2017-04-13 10:18:17.381	breadcrumbGenerator
com.atlassian.streams	3820	2017-04-13 10:18:17.381	date-be-BY
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3821	2017-04-13 10:18:17.381	runtime-information
confluence.sections.space.tools	3822	2017-04-13 10:18:17.381	integrations
com.atlassian.confluence.plugins.confluence-create-content-plugin	3823	2017-04-13 10:18:17.381	show-space-welcome-dialog-flag
com.atlassian.analytics.analytics-client	3824	2017-04-13 10:18:17.381	cacheManager
com.atlassian.confluence.plugins.confluence-user-profile	3825	2017-04-13 10:18:17.381	user.profile.section
com.atlassian.confluence.plugins.share-page	3826	2017-04-13 10:18:17.381	rest-filter
confluence.listeners.core	3827	2017-04-13 10:18:17.381	blogpostNotificationsListener
com.atlassian.confluence.plugins.confluence-content-property-storage	3828	2017-04-13 10:18:17.381	date-field-type-query-mapper
com.atlassian.streams.confluence	3829	2017-04-13 10:18:17.381	date-be-BY
com.atlassian.plugins.atlassian-nav-links-plugin	3830	2017-04-13 10:18:17.381	user-agent-property
confluence.listeners.core	3831	2017-04-13 10:18:17.381	userStatusLabelListener
confluence.renderer.components	3832	2017-04-13 10:18:17.381	newline
com.atlassian.confluence.plugins.quickreload	3833	2017-04-13 10:18:17.381	userAccessor
confluence.extra.impresence2	3834	2017-04-13 10:18:17.381	reporter-skype
confluence.search.mappers.lucene	3835	2017-04-13 10:18:17.381	containingContentType
com.atlassian.applinks.applinks-plugin	3836	2017-04-13 10:18:17.381	servletMessageFactory
com.atlassian.confluence.plugins.confluence-rest-resources	3837	2017-04-13 10:18:17.381	content-api
com.atlassian.confluence.plugins.confluence-edge-index	3838	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.applinks.applinks-plugin	3839	2017-04-13 10:18:17.381	confluence-inbound-trusted
confluence.extractors.core	3840	2017-04-13 10:18:17.381	addressableChangeExtractor
com.atlassian.analytics.analytics-client	3841	2017-04-13 10:18:17.381	whitelistFilter
com.atlassian.confluence.plugins.view-source	3842	2017-04-13 10:18:17.381	confluence-view-source-api-rest-filter
com.atlassian.confluence.plugins.confluence-previews	3843	2017-04-13 10:18:17.381	mediaviewer-core
com.atlassian.streams.confluence	3844	2017-04-13 10:18:17.381	date-en-US
com.atlassian.confluence.plugins.search.confluence-search	3845	2017-04-13 10:18:17.381	lastModificationFormatter
com.atlassian.confluence.plugins.confluence-jira-metadata	3846	2017-04-13 10:18:17.381	jira-metadata-aggregate-cache-invalidation
com.atlassian.streams.actions	3847	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.keyboardshortcuts	3848	2017-04-13 10:18:17.381	view.attachments
com.atlassian.mywork.mywork-confluence-host-plugin	3849	2017-04-13 10:18:17.381	ao-module
com.atlassian.applinks.applinks-plugin	3850	2017-04-13 10:18:17.381	feature-bitbucket-rebrand
com.atlassian.confluence.extra.widgetconnector	3851	2017-04-13 10:18:17.381	dailymotion
com.atlassian.confluence.plugins.confluence-file-notifications	3852	2017-04-13 10:18:17.381	transactionTemplate
confluence.extra.livesearch	3853	2017-04-13 10:18:17.381	livesearch
com.atlassian.confluence.plugins.confluence-space-ia	3854	2017-04-13 10:18:17.381	space-ia-analytics-whitelist
com.atlassian.confluence.plugins.confluence-ui-components	3855	2017-04-13 10:18:17.381	space-picker
confluence.macros.advanced	3856	2017-04-13 10:18:17.381	listlabels
com.atlassian.streams	3857	2017-04-13 10:18:17.381	date-en-IE
com.atlassian.plugins.atlassian-nav-links-plugin	3858	2017-04-13 10:18:17.381	navigation-link-repository-service
com.atlassian.plugins.confluence-tdm-merger	3859	2017-04-13 10:18:17.381	tdmmerger
confluence.listeners.core	3860	2017-04-13 10:18:17.381	clusteredEventListener
com.atlassian.plugin.notifications.notifications-module	3861	2017-04-13 10:18:17.381	ao-module
com.atlassian.support.healthcheck.support-healthcheck-plugin	3862	2017-04-13 10:18:17.381	runtimeHelper
com.atlassian.support.healthcheck.support-healthcheck-plugin	3863	2017-04-13 10:18:17.381	healthCheckSchedulerComponent
com.atlassian.applinks.applinks-oauth-plugin	3864	2017-04-13 10:18:17.381	add-consumer-reciprocal
com.atlassian.streams	3865	2017-04-13 10:18:17.381	date-af-ZA
com.atlassian.confluence.plugins.confluence-email-resources	3866	2017-04-13 10:18:17.381	notification-templates-page-add-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3867	2017-04-13 10:18:17.381	list-templates-resources
com.atlassian.streams.confluence	3868	2017-04-13 10:18:17.381	date-en-TT
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3869	2017-04-13 10:18:17.381	renderContextFactory
com.atlassian.plugins.atlassian-whitelist-core-plugin	3870	2017-04-13 10:18:17.381	confluenceMacroWhitelistMigration
com.atlassian.streams.confluence	3871	2017-04-13 10:18:17.381	date-en-UK
com.atlassian.support.healthcheck.support-healthcheck-plugin	3872	2017-04-13 10:18:17.381	ao-module
confluence.admin.user	3873	2017-04-13 10:18:17.381	browseusers
com.atlassian.auiplugin	3874	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-contains
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3875	2017-04-13 10:18:17.381	confluenceNotificationJwtIssuerRegistry
com.atlassian.confluence.plugins.quickedit	3876	2017-04-13 10:18:17.381	quick-comment-panel
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3877	2017-04-13 10:18:17.381	confluence-comment-created-batching
confluence.sections.space.advanced	3878	2017-04-13 10:18:17.381	stopwatching
com.atlassian.confluence.plugins.confluence-content-report-plugin	3879	2017-04-13 10:18:17.381	content-report-table
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3880	2017-04-13 10:18:17.381	update-check-servlet
com.atlassian.confluence.keyboardshortcuts	3881	2017-04-13 10:18:17.381	go.to.preview.page
com.atlassian.streams.confluence	3882	2017-04-13 10:18:17.381	pageManager
com.atlassian.streams	3883	2017-04-13 10:18:17.381	date-az-Latn-AZ
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3884	2017-04-13 10:18:17.381	image-properties-tab-effects
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3885	2017-04-13 10:18:17.381	notificationTypes
com.atlassian.webhooks.atlassian-webhooks-plugin	3886	2017-04-13 10:18:17.381	cross-prod-webhooks-ao-module
confluence.listeners.core	3887	2017-04-13 10:18:17.381	plugincontentremovallistener
com.atlassian.confluence.plugins.confluence-jira-metadata	3888	2017-04-13 10:18:17.381	confluence-jira-metadata-rest-filter
com.atlassian.confluence.ext.newcode-macro-plugin	3889	2017-04-13 10:18:17.381	newcode-admin
confluence.web.resources	3890	2017-04-13 10:18:17.381	space-permissions-table
confluence.macros.advanced	3891	2017-04-13 10:18:17.381	export-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3892	2017-04-13 10:18:17.381	packageAccessor
com.atlassian.confluence.plugins.confluence-fixed-headers	3893	2017-04-13 10:18:17.381	confluence-fixed-headers-editor-content-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3894	2017-04-13 10:18:17.381	is-user-admin-soy-function
com.atlassian.applinks.applinks-plugin	3895	2017-04-13 10:18:17.381	applicationLinkClient
com.atlassian.applinks.applinks-trustedapps-plugin	3896	2017-04-13 10:18:17.381	localeResolver
com.atlassian.plugins.rest.atlassian-rest-module	3897	2017-04-13 10:18:17.381	servletModuleManager
com.atlassian.confluence.plugins.confluence-inline-tasks	3898	2017-04-13 10:18:17.381	mobile
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3899	2017-04-13 10:18:17.381	rest
com.atlassian.streams.confluence	3900	2017-04-13 10:18:17.381	spaceWatchActionHandler
com.atlassian.confluence.plugins.confluence-email-resources	3901	2017-04-13 10:18:17.381	stop-watching-page-email-batch-footer
confluence.user.menu	3902	2017-04-13 10:18:17.381	anonymous
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3903	2017-04-13 10:18:17.381	notificationQueueManager
com.atlassian.applinks.applinks-plugin	3904	2017-04-13 10:18:17.381	page-common
com.atlassian.applinks.applinks-cors-plugin	3905	2017-04-13 10:18:17.381	corsAuthenticationProviderPluginModule
confluence.extra.jira	3906	2017-04-13 10:18:17.381	web-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3907	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.applinks.applinks-plugin	3908	2017-04-13 10:18:17.381	authenticationConfigurationManager
com.atlassian.plugins.atlassian-nps-plugin	3909	2017-04-13 10:18:17.381	nps-acknowledgement-resources
com.atlassian.mywork.mywork-common-plugin	3910	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.streams.confluence	3911	2017-04-13 10:18:17.381	permissionManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3912	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.search.confluence-search	3913	2017-04-13 10:18:17.381	cql-site-search-field
com.atlassian.streams.confluence	3914	2017-04-13 10:18:17.381	date-en-ZW
com.atlassian.querylang.confluence-cql-plugin	3915	2017-04-13 10:18:17.381	text-field
com.atlassian.plugin.jslibs	3916	2017-04-13 10:18:17.381	marionette-2.1.0-factory
com.atlassian.auiplugin	3917	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-tipsy
com.atlassian.confluence.plugins.confluence-edge-index	3918	2017-04-13 10:18:17.381	edge-type
com.atlassian.streams	3919	2017-04-13 10:18:17.381	date-nb-NO
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3920	2017-04-13 10:18:17.381	disallowStartupInCloud
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3921	2017-04-13 10:18:17.381	mailContentProcessor
confluence.web.resources	3922	2017-04-13 10:18:17.381	page-diffs
com.atlassian.confluence.plugins.confluence-business-blueprints	3923	2017-04-13 10:18:17.381	file-list-blueprint
com.atlassian.confluence.plugins.confluence-inline-tasks	3924	2017-04-13 10:18:17.381	inline-tasks-styles
confluence.web.resources	3925	2017-04-13 10:18:17.381	auditlog
com.atlassian.confluence.plugins.confluence-onboarding	3926	2017-04-13 10:18:17.381	notification-template-no-spaces-body
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	3927	2017-04-13 10:18:17.381	userManager
com.atlassian.streams	3928	2017-04-13 10:18:17.381	date-en-JM
com.atlassian.confluence.plugins.confluence-easyuser-admin	3929	2017-04-13 10:18:17.381	confluence-easyuser-admin-actions
com.atlassian.analytics.analytics-client	3930	2017-04-13 10:18:17.381	whitelistSearcher
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3931	2017-04-13 10:18:17.381	contentService
com.atlassian.support.healthcheck.support-healthcheck-plugin	3932	2017-04-13 10:18:17.381	logFileHelper
com.atlassian.streams.confluence	3933	2017-04-13 10:18:17.381	date-en-ZA
confluence.sections.profile	3934	2017-04-13 10:18:17.381	user-administion
com.atlassian.plugins.atlassian-nav-links-plugin	3935	2017-04-13 10:18:17.381	i18n-resolver
confluence.comment.action	3936	2017-04-13 10:18:17.381	edit-comment
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3937	2017-04-13 10:18:17.381	page-trashed-notification-transformer
com.atlassian.confluence.plugins.confluence-paste	3938	2017-04-13 10:18:17.381	autoconvert-skitch
confluence.macros.dashboard	3939	2017-04-13 10:18:17.381	tabProvider
confluence.lifecycle.core	3940	2017-04-13 10:18:17.381	mananagedjobs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3941	2017-04-13 10:18:17.381	pluginLicenseNotificationChecker
org.randombits.confluence.toc	3942	2017-04-13 10:18:17.381	toc-zone-old
com.atlassian.confluence.plugins.confluence-create-content-plugin	3943	2017-04-13 10:18:17.381	list-blueprints-templates-panel
confluence.web.resources	3944	2017-04-13 10:18:17.381	attachments
com.atlassian.confluence.plugins.confluence-email-resources	3945	2017-04-13 10:18:17.381	get-attachment-filetype-i18n-function
com.atlassian.confluence.plugins.confluence-license-rest	3946	2017-04-13 10:18:17.381	license-resource-filter
com.atlassian.confluence.plugins.confluence-daily-summary-email	3947	2017-04-13 10:18:17.381	personalInformationManager
com.atlassian.streams.core	3948	2017-04-13 10:18:17.381	templateRendererFactory
com.atlassian.confluence.plugins.soy	3949	2017-04-13 10:18:17.381	soy-friendly-format-date-time-function
confluence.extra.jira	3950	2017-04-13 10:18:17.381	jira-xhtml
com.atlassian.confluence.plugins.confluence-view-file-macro	3951	2017-04-13 10:18:17.381	view-file-macro-notification-resources
com.atlassian.plugins.atlassian-project-creation-plugin	3952	2017-04-13 10:18:17.381	linking-rest-url
confluence.listeners.core	3953	2017-04-13 10:18:17.381	removePersonalSpaceListener
com.atlassian.confluence.plugins.confluence-daily-summary-email	3954	2017-04-13 10:18:17.381	popular-content-action-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3955	2017-04-13 10:18:17.381	myTaskDeprecatedListener
com.atlassian.analytics.analytics-client	3956	2017-04-13 10:18:17.381	blacklistFilter
com.atlassian.confluence.plugins.confluence-mobile	3957	2017-04-13 10:18:17.381	rest-caching-filter
com.atlassian.plugins.atlassian-nav-links-plugin	3958	2017-04-13 10:18:17.381	rotp-projectshortcuts
confluence.extra.masterdetail	3959	2017-04-13 10:18:17.381	detailsSummaryBuilder
com.atlassian.streams.confluence	3960	2017-04-13 10:18:17.381	date-ko-KR
com.atlassian.confluence.plugins.confluence-onboarding	3961	2017-04-13 10:18:17.381	userChecker
com.atlassian.confluence.extra.officeconnector	3962	2017-04-13 10:18:17.381	pptslideservlet
com.atlassian.analytics.analytics-client	3963	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.confluence.plugins.quickreload	3964	2017-04-13 10:18:17.381	quickreload
com.atlassian.confluence.plugins.confluence-paste	3965	2017-04-13 10:18:17.381	paste-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3966	2017-04-13 10:18:17.381	menu-service
com.atlassian.templaterenderer.api	3967	2017-04-13 10:18:17.381	i18nResolverContextItem
com.atlassian.confluence.plugins.confluence-inline-tasks	3968	2017-04-13 10:18:17.381	inline-tasks-editor
com.atlassian.confluence.plugins.gadgets	3969	2017-04-13 10:18:17.381	gadgetUsageTracker
com.atlassian.auiplugin	3970	2017-04-13 10:18:17.381	aui-progress-tracker
com.atlassian.plugins.atlassian-nav-links-plugin	3971	2017-04-13 10:18:17.381	login-uri-provider
com.atlassian.auiplugin	3972	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-polyfills-placeholder
confluence.extractors.core	3973	2017-04-13 10:18:17.381	textAttachmentContentExtractor
com.atlassian.auiplugin	3974	2017-04-13 10:18:17.381	jquery-effects
confluence.web.resources	3975	2017-04-13 10:18:17.381	left-nav-panel-resources
com.atlassian.streams.confluence	3976	2017-04-13 10:18:17.381	searchManager
com.atlassian.templaterenderer.api	3977	2017-04-13 10:18:17.381	webResourceManagerContextItem
com.atlassian.confluence.plugins.confluence-daily-summary-email	3978	2017-04-13 10:18:17.381	networkService
com.atlassian.auiplugin	3979	2017-04-13 10:18:17.381	aui-css-deprecation-warnings
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3980	2017-04-13 10:18:17.381	templatePathResolver
com.atlassian.analytics.analytics-client	3981	2017-04-13 10:18:17.381	timeKeeper
com.atlassian.auiplugin	3982	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-dialog
com.atlassian.confluence.extra.widgetconnector	3983	2017-04-13 10:18:17.381	wufoo
com.atlassian.confluence.plugins.confluence-edge-index	3984	2017-04-13 10:18:17.381	dateEntityFactory
com.atlassian.confluence.plugins.confluence-like	3985	2017-04-13 10:18:17.381	like-content-email-batch-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3986	2017-04-13 10:18:17.381	upm-osgi-resources
com.atlassian.streams.confluence	3987	2017-04-13 10:18:17.381	date-en-PH
com.atlassian.confluence.plugins.confluence-daily-summary-email	3988	2017-04-13 10:18:17.381	permissionManager
com.atlassian.confluence.plugins.confluence-page-layout	3989	2017-04-13 10:18:17.381	pagelayout
com.atlassian.auiplugin	3990	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-fix-ie-innerhtml
confluence.search.mappers.lucene	3991	2017-04-13 10:18:17.381	prefix
com.atlassian.auiplugin	3992	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-template
confluence.web.resources	3993	2017-04-13 10:18:17.381	jquery-json
confluence.search.mappers.lucene	3994	2017-04-13 10:18:17.381	matchAllDocsFilter
confluence.web.resources	3995	2017-04-13 10:18:17.381	event
com.atlassian.mywork.mywork-confluence-host-plugin	3996	2017-04-13 10:18:17.381	service-selector
com.atlassian.analytics.analytics-client	3997	2017-04-13 10:18:17.381	eventPreprocessor
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3998	2017-04-13 10:18:17.381	emoticons-resource
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3999	2017-04-13 10:18:17.381	formatSettingsManager
com.atlassian.mywork.mywork-confluence-host-plugin	4000	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.plugins.rest.atlassian-rest-module	4001	2017-04-13 10:18:17.381	xsrfTokenAccessor
com.atlassian.healthcheck.atlassian-healthcheck	4002	2017-04-13 10:18:17.381	hostStateMonitor
com.atlassian.streams.confluence	4003	2017-04-13 10:18:17.381	date-se-FI
com.atlassian.auiplugin	4004	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-binders-placeholder
com.atlassian.plugins.base-hipchat-integration-plugin	4005	2017-04-13 10:18:17.381	soy-resources
confluence.listeners.core	4006	2017-04-13 10:18:17.381	confluence-easyuser-userSignUpEmail
org.randombits.confluence.toc	4007	2017-04-13 10:18:17.381	toc-zone
confluence.extra.webdav	4008	2017-04-13 10:18:17.381	reverseProxyFilterSupport
com.atlassian.plugins.base-hipchat-integration-plugin-api	4009	2017-04-13 10:18:17.381	hipchatAO
com.atlassian.confluence.plugins.gadgets	4010	2017-04-13 10:18:17.381	gadget-macro-migrator
com.atlassian.confluence.plugins.attachmentExtractors	4011	2017-04-13 10:18:17.381	pdfContentExtractor
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4012	2017-04-13 10:18:17.381	inboundWhitelist
com.atlassian.streams.confluence	4013	2017-04-13 10:18:17.381	date-en-NZ
com.atlassian.confluence.plugins.confluence-space-ia	4014	2017-04-13 10:18:17.381	ao-module
com.atlassian.confluence.plugins.confluence-inline-comments	4015	2017-04-13 10:18:17.381	notification-transformer-resolve
com.atlassian.applinks.applinks-oauth-plugin	4016	2017-04-13 10:18:17.381	TwoLeggedOAuthWithImpersonationAuthenticatorProviderPluginModule
com.atlassian.confluence.extra.widgetconnector	4017	2017-04-13 10:18:17.381	placeholderService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4018	2017-04-13 10:18:17.381	licenseHandler
com.atlassian.streams.confluence	4019	2017-04-13 10:18:17.381	captchaManager
com.atlassian.confluence.plugins.confluence-lookandfeel	4020	2017-04-13 10:18:17.381	sitelogo-admin-task
com.atlassian.confluence.plugins.confluence-mentions-plugin	4021	2017-04-13 10:18:17.381	mentionsRest
com.atlassian.auiplugin	4022	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-skate
com.atlassian.mywork.mywork-common-plugin	4023	2017-04-13 10:18:17.381	mywork-registration-provider
com.atlassian.confluence.extra.flyingpdf	4024	2017-04-13 10:18:17.381	globalconfigpdflayout
com.atlassian.querylang.confluence-cql-plugin	4025	2017-04-13 10:18:17.381	cqlsearchaction
com.atlassian.auiplugin	4026	2017-04-13 10:18:17.381	aui-css
com.atlassian.confluence.keyboardshortcuts	4027	2017-04-13 10:18:17.381	create.blog
com.atlassian.confluence.plugins.confluence-email-resources	4028	2017-04-13 10:18:17.381	stop-watching-space-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4029	2017-04-13 10:18:17.381	emoticonStorageToViewTransformer
confluence.web.resources	4030	2017-04-13 10:18:17.381	icons
com.atlassian.confluence.plugins.expand-macro	4031	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	4032	2017-04-13 10:18:17.381	syntaxhighlighter-export
com.atlassian.confluence.plugins.confluence-easyuser-admin	4033	2017-04-13 10:18:17.381	admin-signup-users-panel
com.atlassian.plugin.notifications.notifications-module	4034	2017-04-13 10:18:17.381	notification-macro
com.atlassian.streams	4035	2017-04-13 10:18:17.381	xsrfTokenValidator
confluence.sections.create	4036	2017-04-13 10:18:17.381	add-page-without-parent-template
com.atlassian.auiplugin	4037	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-attributes
com.atlassian.plugins.base-hipchat-integration-plugin	4038	2017-04-13 10:18:17.381	rest-integration-filter
com.atlassian.confluence.plugins.gadgets	4039	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.confluence.plugins.confluence-rest-resources	4040	2017-04-13 10:18:17.381	rest-api-experimental-filter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4041	2017-04-13 10:18:17.381	mpacAnalyticsHttpClientFactory
com.atlassian.streams.confluence	4042	2017-04-13 10:18:17.381	confluence-rest-filter
com.atlassian.confluence.ext.newcode-macro-plugin	4043	2017-04-13 10:18:17.381	syntaxhighlighter-mobile
com.atlassian.mywork.mywork-confluence-provider-plugin	4044	2017-04-13 10:18:17.381	localeManager
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4045	2017-04-13 10:18:17.381	notificationStoreService
confluence.extra.impresence2	4046	2017-04-13 10:18:17.381	icq
confluence.sections.profile	4047	2017-04-13 10:18:17.381	unfollow-user
com.atlassian.confluence.extra.flyingpdf	4048	2017-04-13 10:18:17.381	exportHtmlService
confluence.extra.dynamictasklist2	4049	2017-04-13 10:18:17.381	tasklist
com.atlassian.auiplugin	4050	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-unique-id
com.atlassian.streams.confluence	4051	2017-04-13 10:18:17.381	date-ms-BN
com.atlassian.confluence.plugins.gadgets	4052	2017-04-13 10:18:17.381	externalGadgetStore
com.atlassian.plugins.atlassian-help-tips	4053	2017-04-13 10:18:17.381	helptips
confluence.web.components	4054	2017-04-13 10:18:17.381	show.business.group.in.user.hover
com.atlassian.applinks.applinks-oauth-plugin	4055	2017-04-13 10:18:17.381	serviceProviderStoreService
com.atlassian.applinks.applinks-plugin	4056	2017-04-13 10:18:17.381	applinks-configure-entity-links
com.atlassian.confluence.plugins.confluence-baseurl-plugin	4057	2017-04-13 10:18:17.381	baseurl-filter
com.atlassian.streams.confluence	4058	2017-04-13 10:18:17.381	hibernateSessionFactory
com.atlassian.auiplugin	4059	2017-04-13 10:18:17.381	ajs-gadgets
com.atlassian.auiplugin	4060	2017-04-13 10:18:17.381	internal-src-js-aui-css-deprecations
com.atlassian.mywork.mywork-confluence-host-plugin	4061	2017-04-13 10:18:17.381	open.notifications
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4062	2017-04-13 10:18:17.381	localeResolver
confluence.extractors.core	4063	2017-04-13 10:18:17.381	spaceTypeChangeExtractor
com.atlassian.confluence.plugins.confluence-software-blueprints	4064	2017-04-13 10:18:17.381	requirements-item
confluence.extractors.core	4065	2017-04-13 10:18:17.381	untokenizedTitleChangeExtractor
com.atlassian.confluence.editor	4066	2017-04-13 10:18:17.381	emotions-resources
confluence.extractors.core	4067	2017-04-13 10:18:17.381	versionCommentChangeExtractor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4068	2017-04-13 10:18:17.381	licenseTokenValidator
com.atlassian.confluence.plugins.confluence-file-notifications	4069	2017-04-13 10:18:17.381	file-notifications-file-details-file-link
com.atlassian.mywork.mywork-confluence-host-plugin	4070	2017-04-13 10:18:17.381	systemStatusService
com.atlassian.plugins.authentication.atlassian-authentication-plugin	4071	2017-04-13 10:18:17.381	error-handling-filter
com.atlassian.support.stp	4072	2017-04-13 10:18:17.381	pluginSupportInfoXmlKeyResolver
com.atlassian.streams.streams-thirdparty-plugin	4073	2017-04-13 10:18:17.381	tenantAwareDataSourceProvider
com.atlassian.confluence.plugins.confluence-paste	4074	2017-04-13 10:18:17.381	autoconvert-google-redirect
com.atlassian.confluence.plugins.confluence-mobile	4075	2017-04-13 10:18:17.381	user-profile-resources
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4076	2017-04-13 10:18:17.381	whitelist-rest-filter
com.atlassian.streams.confluence	4077	2017-04-13 10:18:17.381	date-af-ZA
com.atlassian.confluence.plugins.confluence-files	4078	2017-04-13 10:18:17.381	confluenceFileRest
com.atlassian.confluence.extra.flyingpdf	4079	2017-04-13 10:18:17.381	intermediateHtmlBuilder
confluence.macros.advanced	4080	2017-04-13 10:18:17.381	blogpost-resources
com.atlassian.confluence.extra.widgetconnector	4081	2017-04-13 10:18:17.381	skitch
com.atlassian.activeobjects.activeobjects-plugin	4082	2017-04-13 10:18:17.381	enable-html-escaping
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4083	2017-04-13 10:18:17.381	rest-filter
com.atlassian.plugins.atlassian-whitelist-core-plugin	4084	2017-04-13 10:18:17.381	whitelistManager
com.atlassian.applinks.applinks-cors-plugin	4085	2017-04-13 10:18:17.381	applinkPluginUtil
crowd.system.passwordencoders	4086	2017-04-13 10:18:17.381	md5
com.atlassian.mywork.mywork-confluence-host-plugin	4087	2017-04-13 10:18:17.381	user-mapping
com.atlassian.gadgets.opensocial	4088	2017-04-13 10:18:17.381	js-servlet
confluence.web.resources	4089	2017-04-13 10:18:17.381	shared-templates
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4090	2017-04-13 10:18:17.381	servicemonitor-template
confluence.sections.space.admin	4091	2017-04-13 10:18:17.381	spacepermissions
com.atlassian.confluence.plugins.editor-loader	4092	2017-04-13 10:18:17.381	breadcrumb-generator
confluence.extractors.core	4093	2017-04-13 10:18:17.381	commentExtractor
com.atlassian.gadgets.publisher	4094	2017-04-13 10:18:17.381	dashboard-item-common
com.atlassian.confluence.keyboardshortcuts	4095	2017-04-13 10:18:17.381	edit.page
com.atlassian.confluence.plugins.confluence-lookandfeel	4096	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.confluence-mobile	4097	2017-04-13 10:18:17.381	pageBuilderService
com.atlassian.auiplugin	4098	2017-04-13 10:18:17.381	aui-experimental-page
com.atlassian.streams.confluence	4099	2017-04-13 10:18:17.381	date-hi-IN
com.atlassian.auiplugin	4100	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-dropdown2
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4101	2017-04-13 10:18:17.381	hipChatServerDiscovery
confluence.macros.advanced	4102	2017-04-13 10:18:17.381	include-servlet
com.atlassian.streams	4103	2017-04-13 10:18:17.381	feedParser
confluence.listeners.core	4104	2017-04-13 10:18:17.381	resetXStreamPluginListener
com.atlassian.confluence.plugins.confluence-content-property-storage	4105	2017-04-13 10:18:17.381	jsonExpressionEvaluator
com.atlassian.auiplugin	4106	2017-04-13 10:18:17.381	aui-experimental-soy-templates-legacy1
com.atlassian.applinks.applinks-plugin	4107	2017-04-13 10:18:17.381	fisheyeCrucibleRepository
com.atlassian.streams.confluence	4108	2017-04-13 10:18:17.381	date-se-NO
com.atlassian.confluence.plugins.confluence-email-resources	4109	2017-04-13 10:18:17.381	content-templates-content-deleted-lozenge-pattern-1.0.0
com.atlassian.confluence.editor	4110	2017-04-13 10:18:17.381	editor-featured-macro-info
com.atlassian.applinks.applinks-plugin	4111	2017-04-13 10:18:17.381	genericEntity
com.atlassian.confluence.plugins.confluence-space-ia	4112	2017-04-13 10:18:17.381	spacebar-profile
confluence.sections.admin.header	4113	2017-04-13 10:18:17.381	conf-admin
com.atlassian.streams	4114	2017-04-13 10:18:17.381	date-tn-ZA
com.atlassian.plugin.notifications.notifications-module	4115	2017-04-13 10:18:17.381	notificationsMacroVariableHelp
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4116	2017-04-13 10:18:17.381	defaultNotificationPreferenceManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4117	2017-04-13 10:18:17.381	mailContentProcessor
confluence.web.panels	4118	2017-04-13 10:18:17.381	confluence-header-user-menu
com.atlassian.confluence.plugins.confluence-sal-plugin	4119	2017-04-13 10:18:17.381	searchQueryParser
com.atlassian.analytics.analytics-client	4120	2017-04-13 10:18:17.381	analyticsClientWhitelist
com.atlassian.confluence.extra.officeconnector	4121	2017-04-13 10:18:17.381	viewdoc
com.atlassian.streams.confluence	4122	2017-04-13 10:18:17.381	entryFactory
com.atlassian.support.stp	4123	2017-04-13 10:18:17.381	stp-confluence-link
com.atlassian.confluence.plugins.confluence-content-property-storage	4124	2017-04-13 10:18:17.381	contentPropertyService
com.atlassian.confluence.plugins.share-page	4125	2017-04-13 10:18:17.381	share-page-notification
com.atlassian.confluence.plugins.confluence-templates	4126	2017-04-13 10:18:17.381	space-templates-2
com.atlassian.confluence.plugins.confluence-view-file-macro	4127	2017-04-13 10:18:17.381	capabilityService
com.atlassian.confluence.plugins.confluence-create-content-plugin	4128	2017-04-13 10:18:17.381	requestResolver
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4129	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.confluence.extra.widgetconnector	4130	2017-04-13 10:18:17.381	httpRetrievalEmbedService
confluence.web.resources	4131	2017-04-13 10:18:17.381	defaults
com.atlassian.confluence.plugins.confluence-mobile	4132	2017-04-13 10:18:17.381	lib
com.atlassian.streams.confluence	4133	2017-04-13 10:18:17.381	date-en-GB
com.atlassian.confluence.plugins.view-storage-format	4134	2017-04-13 10:18:17.381	view-storage-resources
confluence.listeners.core	4135	2017-04-13 10:18:17.381	macroMetaDataListener
com.atlassian.confluence.extra.flyingpdf	4136	2017-04-13 10:18:17.381	betterpdf
com.atlassian.confluence.plugins.confluence-inline-tasks	4137	2017-04-13 10:18:17.381	hipchat-resources-2.0.0
com.atlassian.applinks.applinks-plugin	4138	2017-04-13 10:18:17.381	localeResolver
confluence.macros.advanced	4139	2017-04-13 10:18:17.381	favpages
com.atlassian.applinks.applinks-plugin	4140	2017-04-13 10:18:17.381	applinks-css
confluence.macros.dashboard	4141	2017-04-13 10:18:17.381	globalEntitiesContextProvider
com.atlassian.confluence.plugins.confluence-inline-comments	4142	2017-04-13 10:18:17.381	confluence-inline-new-mail-batching
com.atlassian.confluence.plugins.gadgets.spi	4143	2017-04-13 10:18:17.381	externalGadgetStore
com.atlassian.auiplugin	4144	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-jquery-plugins-jquery-select2
com.atlassian.analytics.analytics-client	4145	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.mywork.mywork-common-plugin	4146	2017-04-13 10:18:17.381	my-work-client-rest
com.atlassian.applinks.applinks-trustedapps-plugin	4147	2017-04-13 10:18:17.381	webSudoManager
com.atlassian.confluence.editor	4148	2017-04-13 10:18:17.381	page-editor-css
com.atlassian.confluence.editor	4149	2017-04-13 10:18:17.381	editor-settings-panel
com.atlassian.confluence.plugins.confluence-quicknav	4150	2017-04-13 10:18:17.381	admin-section-provider
confluence.renderer.components	4151	2017-04-13 10:18:17.381	embedded
com.atlassian.confluence.plugins.confluence-page-banner	4152	2017-04-13 10:18:17.381	page-banner-common-resources
confluence.web.resources	4153	2017-04-13 10:18:17.381	date-time-formatting
com.atlassian.auiplugin	4154	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-escape
com.atlassian.confluence.plugins.confluence-email-resources	4155	2017-04-13 10:18:17.381	content-templates-inline-user-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-mentions-plugin	4156	2017-04-13 10:18:17.381	mentionsExtractor
com.atlassian.confluence.extra.widgetconnector	4157	2017-04-13 10:18:17.381	flickr
com.atlassian.confluence.plugins.confluence-email-resources	4158	2017-04-13 10:18:17.381	content-templates-users-involved-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-edge-index	4159	2017-04-13 10:18:17.381	blogpost.create
com.atlassian.applinks.applinks-plugin	4160	2017-04-13 10:18:17.381	confluence
confluence.filters.core	4161	2017-04-13 10:18:17.381	gzipFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4162	2017-04-13 10:18:17.381	pluginUpdateCheckJob
confluence.web.resources	4163	2017-04-13 10:18:17.381	space-admin
com.atlassian.confluence.plugins.confluence-inline-comments	4164	2017-04-13 10:18:17.381	strip-inline-comment-marker
com.atlassian.analytics.analytics-client	4165	2017-04-13 10:18:17.381	confluenceLicenseCreationDateProvider
confluence.web.resources	4166	2017-04-13 10:18:17.381	breadcrumbs-jquery
com.atlassian.applinks.applinks-basicauth-plugin	4167	2017-04-13 10:18:17.381	basicContextFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	4168	2017-04-13 10:18:17.381	tableSelectionModifier
com.atlassian.confluence.extra.officeconnector	4169	2017-04-13 10:18:17.381	editattachmentinworditem
com.atlassian.confluence.plugins.confluence-easyuser-admin	4170	2017-04-13 10:18:17.381	taskManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	4171	2017-04-13 10:18:17.381	mentionsRest-filter
confluence.extra.confluencerpc	4172	2017-04-13 10:18:17.381	pagesSoapService
com.atlassian.querylang.confluence-cql-plugin	4173	2017-04-13 10:18:17.381	favourite-spaces-query-function
com.atlassian.confluence.extra.flyingpdf	4174	2017-04-13 10:18:17.381	globalconfigpdfstyle
com.atlassian.applinks.applinks-oauth-plugin	4175	2017-04-13 10:18:17.381	add-atlassian-service-provider
com.atlassian.mywork.mywork-common-plugin	4176	2017-04-13 10:18:17.381	config-service
com.atlassian.confluence.extra.flyingpdf	4177	2017-04-13 10:18:17.381	pdfexportpageop
confluence.extra.impresence2	4178	2017-04-13 10:18:17.381	reporter-aim
com.atlassian.confluence.plugins.confluence-mobile	4179	2017-04-13 10:18:17.381	mobile-resource-servlet
com.atlassian.confluence.plugins.confluence-file-notifications	4180	2017-04-13 10:18:17.381	file-content-remove-email-notification-template-body
com.atlassian.confluence.plugins.confluence-templates	4181	2017-04-13 10:18:17.381	list-global-templates-panel
com.atlassian.analytics.analytics-client	4182	2017-04-13 10:18:17.381	confluence-event-checklist-menu-item
com.atlassian.confluence.keyboardshortcuts	4183	2017-04-13 10:18:17.381	tinymce.h1
com.atlassian.confluence.plugins.confluence-software-project	4184	2017-04-13 10:18:17.381	sp-space-homepage-template
com.atlassian.healthcheck.atlassian-healthcheck	4185	2017-04-13 10:18:17.381	health-check
com.atlassian.confluence.keyboardshortcuts	4186	2017-04-13 10:18:17.381	tinymce.h2
com.atlassian.confluence.keyboardshortcuts	4187	2017-04-13 10:18:17.381	tinymce.h3
confluence.listeners.core	4188	2017-04-13 10:18:17.381	global-settings-audit-logging-listener
com.atlassian.confluence.keyboardshortcuts	4189	2017-04-13 10:18:17.381	tinymce.h4
com.atlassian.streams.actions	4354	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.confluence.plugins.confluence-create-content-plugin	4190	2017-04-13 10:18:17.381	templateFinderFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4191	2017-04-13 10:18:17.381	sysPersistedContextItem
com.atlassian.auiplugin	4192	2017-04-13 10:18:17.381	aui-experimental-navigation
com.atlassian.auiplugin	4193	2017-04-13 10:18:17.381	table
com.atlassian.applinks.applinks-cors-plugin	4194	2017-04-13 10:18:17.381	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-like	4195	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.confluence-email-resources	4196	2017-04-13 10:18:17.381	avatar-image-function
com.atlassian.confluence.keyboardshortcuts	4197	2017-04-13 10:18:17.381	tinymce.h5
com.atlassian.applinks.applinks-plugin	4198	2017-04-13 10:18:17.381	applinks-util-js
com.atlassian.confluence.keyboardshortcuts	4199	2017-04-13 10:18:17.381	tinymce.h6
com.atlassian.confluence.plugins.expand-macro	4200	2017-04-13 10:18:17.381	expand-macro-desktop-resources
com.atlassian.auiplugin	4201	2017-04-13 10:18:17.381	aui-buttons
com.atlassian.streams	4202	2017-04-13 10:18:17.381	date-ko-KR
com.atlassian.confluence.plugins.confluence-space-ia	4203	2017-04-13 10:18:17.381	spacesidebar
com.atlassian.querylang.confluence-cql-plugin	4204	2017-04-13 10:18:17.381	start-of-month-one-arg-function
com.atlassian.confluence.plugins.confluence-software-blueprints	4205	2017-04-13 10:18:17.381	jirareports-blueprint
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4206	2017-04-13 10:18:17.381	upm-audit-log-resources
com.atlassian.plugin.notifications.notifications-module	4207	2017-04-13 10:18:17.381	notificationServersServlet
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4208	2017-04-13 10:18:17.381	confluence-user-authentication-servlet
confluence.search.mappers.lucene	4209	2017-04-13 10:18:17.381	fullname
com.atlassian.querylang.confluence-cql-plugin	4210	2017-04-13 10:18:17.381	label-field
com.atlassian.streams.confluence	4211	2017-04-13 10:18:17.381	date-zh-HK
com.atlassian.confluence.plugins.confluence-like	4212	2017-04-13 10:18:17.381	like-created-notification-template
com.atlassian.confluence.keyboardshortcuts	4213	2017-04-13 10:18:17.381	tinymce.wikimarkup
org.randombits.confluence.toc	4214	2017-04-13 10:18:17.381	toc-old
com.atlassian.analytics.analytics-client	4215	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.oauth.consumer	4216	2017-04-13 10:18:17.381	consumerService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4217	2017-04-13 10:18:17.381	pluginLicenseValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4218	2017-04-13 10:18:17.381	upm-update-check-page
com.atlassian.confluence.plugins.expand-macro	4219	2017-04-13 10:18:17.381	expand-macro-mobile-resources
com.atlassian.labs.atlassian-bot-killer	4220	2017-04-13 10:18:17.381	BotKillerFilter
com.atlassian.applinks.applinks-cors-plugin	4221	2017-04-13 10:18:17.381	corsContextFilter
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	4222	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.streams	4223	2017-04-13 10:18:17.381	date-ms-MY
com.atlassian.confluence.plugins.confluence-software-project	4224	2017-04-13 10:18:17.381	sp-space-product-requirements-template
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4225	2017-04-13 10:18:17.381	rest
com.atlassian.plugins.rest.atlassian-rest-module	4226	2017-04-13 10:18:17.381	darkFeatureManager
com.atlassian.confluence.plugins.confluence-highlight-actions	4227	2017-04-13 10:18:17.381	highlighting-service
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4228	2017-04-13 10:18:17.381	darkFeatureManager
com.atlassian.confluence.plugins.confluence-files	4229	2017-04-13 10:18:17.381	filesUnresolvedCommentCount
com.atlassian.streams	4230	2017-04-13 10:18:17.381	date-en-ZW
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4231	2017-04-13 10:18:17.381	licenseEntityFactory
com.atlassian.confluence.extra.officeconnector	4232	2017-04-13 10:18:17.381	velocity.helper
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4233	2017-04-13 10:18:17.381	tomcatHealthCheck
confluence.search.mappers.lucene	4234	2017-04-13 10:18:17.381	authorSearchFilter
confluence.sections.admin	4235	2017-04-13 10:18:17.381	customhtml
com.atlassian.applinks.applinks-plugin	4236	2017-04-13 10:18:17.381	jira-project
com.atlassian.querylang.confluence-cql-plugin	4237	2017-04-13 10:18:17.381	start-of-day-one-arg-function
com.atlassian.applinks.applinks-plugin	4238	2017-04-13 10:18:17.381	applinks-lib
confluence.sections.space.tools	4239	2017-04-13 10:18:17.381	choosetheme
com.atlassian.confluence.plugins.expand-macro	4240	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.confluence.plugins.recently-viewed-plugin	4241	2017-04-13 10:18:17.381	recently-viewed-content-one-arg-function
com.atlassian.confluence.plugins.confluence-create-content-plugin	4242	2017-04-13 10:18:17.381	templateUpdater
com.atlassian.auiplugin	4243	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-select-suggestions-model
com.atlassian.streams	4244	2017-04-13 10:18:17.381	date-en-ZA
com.atlassian.mywork.mywork-confluence-provider-plugin	4245	2017-04-13 10:18:17.381	xhtmlContent
confluence.sections.space.tools	4246	2017-04-13 10:18:17.381	custompagecontent
com.atlassian.crowd.embedded.admin	4247	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-ui-components	4248	2017-04-13 10:18:17.381	include-exclude-picker
com.atlassian.streams.confluence	4249	2017-04-13 10:18:17.381	date-en-JM
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4250	2017-04-13 10:18:17.381	plugin-finder-servlet
com.atlassian.confluence.plugins.system-templates	4251	2017-04-13 10:18:17.381	system-template-resources
com.atlassian.confluence.extra.officeconnector	4252	2017-04-13 10:18:17.381	tokenProvider-filter
com.atlassian.streams.confluence	4253	2017-04-13 10:18:17.381	date-se-SE
com.atlassian.confluence.keyboardshortcuts	4254	2017-04-13 10:18:17.381	favourite.page
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4255	2017-04-13 10:18:17.381	follower-added-notification-transformer
com.atlassian.streams.streams-thirdparty-plugin	4256	2017-04-13 10:18:17.381	representationFactory
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4257	2017-04-13 10:18:17.381	objectMapperFactory
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4258	2017-04-13 10:18:17.381	amd
com.atlassian.applinks.applinks-oauth-plugin	4259	2017-04-13 10:18:17.381	oAuthContextFilter
com.atlassian.confluence.plugins.drag-and-drop	4260	2017-04-13 10:18:17.381	drag-and-drop-for-editor
com.atlassian.confluence.plugins.confluence-sal-plugin	4261	2017-04-13 10:18:17.381	requestFactory
com.atlassian.confluence.plugins.confluence-file-notifications	4262	2017-04-13 10:18:17.381	file-content-update-notification
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4263	2017-04-13 10:18:17.381	whitelistService
com.atlassian.streams.confluence	4264	2017-04-13 10:18:17.381	date-nb-NO
com.atlassian.confluence.plugins.gadgets	4265	2017-04-13 10:18:17.381	gadgetRequestContextFactory
com.atlassian.confluence.plugins.confluence-email-resources	4266	2017-04-13 10:18:17.381	content-templates-content-added-pattern-1.0.0
com.atlassian.auiplugin	4267	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-results-list
com.atlassian.plugins.atlassian-project-creation-plugin	4268	2017-04-13 10:18:17.381	project-linking-rest
confluence.macros.advanced	4269	2017-04-13 10:18:17.381	blogpost
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4270	2017-04-13 10:18:17.381	innoDBLogFileSizeCheck
com.atlassian.streams.confluence	4271	2017-04-13 10:18:17.381	date-zh-CN
com.atlassian.confluence.plugins.confluence-inline-tasks	4272	2017-04-13 10:18:17.381	view-page-tasks-email-action-item
com.atlassian.confluence.plugins.confluence-create-content-plugin	4273	2017-04-13 10:18:17.381	contentBlueprintManager
confluence.extra.attachments	4274	2017-04-13 10:18:17.381	pluginAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4275	2017-04-13 10:18:17.381	applicationStatusService
com.atlassian.confluence.plugins.gadgets	4276	2017-04-13 10:18:17.381	macro-browser-for-gadgetsplugin
confluence.sections.admin	4277	2017-04-13 10:18:17.381	configurecaptcha
confluence.extra.information	4278	2017-04-13 10:18:17.381	information-plugin-adg-styles
com.atlassian.streams.confluence	4279	2017-04-13 10:18:17.381	date-en-IE
confluence.web.resources	4280	2017-04-13 10:18:17.381	aui-soy-resources
com.atlassian.streams.actions	4281	2017-04-13 10:18:17.381	inlineActionsJs
com.atlassian.confluence.plugins.confluence-mentions-plugin	4282	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4283	2017-04-13 10:18:17.381	confluence-upm-purchased-addons-menu
com.atlassian.confluence.plugins.confluence-sal-plugin	4284	2017-04-13 10:18:17.381	vcacheRequestContextOperations
com.atlassian.confluence.image.effects.ImageEffectsPlugin	4285	2017-04-13 10:18:17.381	imageEffectsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	4286	2017-04-13 10:18:17.381	ao
com.atlassian.plugins.atlassian-whitelist-core-plugin	4287	2017-04-13 10:18:17.381	inboundWhitelist
com.atlassian.streams.confluence	4288	2017-04-13 10:18:17.381	spaceManager
com.atlassian.confluence.extra.widgetconnector	4289	2017-04-13 10:18:17.381	twitter-autoconvert-webresources
com.atlassian.streams.confluence	4290	2017-04-13 10:18:17.381	date-mk-MK
com.atlassian.confluence.plugins.gadgets.spi	4291	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.confluence.plugins.gadgets	4292	2017-04-13 10:18:17.381	gadgetCounter
com.atlassian.applinks.applinks-oauth-plugin	4293	2017-04-13 10:18:17.381	oAuthOrphanedTrustDetector
com.atlassian.auiplugin	4294	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-widget
confluence.editor.actions	4295	2017-04-13 10:18:17.381	edit-image
com.atlassian.auiplugin	4296	2017-04-13 10:18:17.381	aui-experimental-progress-indicator
com.atlassian.streams	4297	2017-04-13 10:18:17.381	date-sl-SI
confluence.sections.page.temp	4298	2017-04-13 10:18:17.381	view
com.atlassian.auiplugin	4299	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-inline-dialog2
com.atlassian.streams	4300	2017-04-13 10:18:17.381	formatPreferenceProvider
com.atlassian.auiplugin	4301	2017-04-13 10:18:17.381	internal-keyboardshortcuts
com.atlassian.confluence.plugins.confluence-inline-tasks	4302	2017-04-13 10:18:17.381	inline-tasks-pdf-export
com.atlassian.confluence.plugins.confluence-like	4303	2017-04-13 10:18:17.381	confluence-like-created-batching
com.atlassian.confluence.plugins.confluence-email-resources	4304	2017-04-13 10:18:17.381	template-utils-avatar-name-table-column-1.0.0
confluence.sections.space.admin	4305	2017-04-13 10:18:17.381	permissionedpages
com.atlassian.plugin.notifications.notifications-module	4306	2017-04-13 10:18:17.381	editNotificationServerServlet
confluence.macros.advanced	4307	2017-04-13 10:18:17.381	recently-updated
confluence.listeners.core	4308	2017-04-13 10:18:17.381	page-templates-logging-listener
com.atlassian.confluence.editor	4309	2017-04-13 10:18:17.381	placeholder-caching-filter
com.atlassian.mywork.mywork-common-plugin	4310	2017-04-13 10:18:17.381	authenticationConfigurationManager
confluence.sections.space.tools	4311	2017-04-13 10:18:17.381	spacedetails-personal
com.atlassian.confluence.plugins.confluence-create-content-plugin	4312	2017-04-13 10:18:17.381	promotedTemplateService
com.atlassian.confluence.plugins.confluence-email-resources	4313	2017-04-13 10:18:17.381	stop-watching-all-blogs-email-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	4314	2017-04-13 10:18:17.381	content-templates-page-title-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-space-ia	4315	2017-04-13 10:18:17.381	space-tools-browse-pages
com.atlassian.confluence.ext.newcode-macro-plugin	4316	2017-04-13 10:18:17.381	code
confluence.listeners.core	4317	2017-04-13 10:18:17.381	updateLabelsInChangeIndexListener
com.atlassian.streams.confluence	4318	2017-04-13 10:18:17.381	date-lt-LT
com.atlassian.analytics.analytics-client	4319	2017-04-13 10:18:17.381	timeoutChecker
com.atlassian.favicon.confluence-custom-favicon-plugin	4320	2017-04-13 10:18:17.381	favicon-soy
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4321	2017-04-13 10:18:17.381	localeResolver
com.atlassian.plugins.atlassian-nps-plugin	4322	2017-04-13 10:18:17.381	skate-shim
com.atlassian.confluence.editor	4323	2017-04-13 10:18:17.381	editor-restricted
com.atlassian.streams.streams-thirdparty-plugin	4324	2017-04-13 10:18:17.381	tx-processor
com.atlassian.streams.confluence	4325	2017-04-13 10:18:17.381	date-zh-MO
com.atlassian.auiplugin	4326	2017-04-13 10:18:17.381	aui-experimental-module
com.atlassian.mywork.mywork-common-plugin	4327	2017-04-13 10:18:17.381	task-service
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4328	2017-04-13 10:18:17.381	upm-audit-log
confluence.web.resources	4329	2017-04-13 10:18:17.381	aui-select2
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4330	2017-04-13 10:18:17.381	confluenceHipChatIntegrationAnalyticsWhitelist
com.atlassian.confluence.editor	4331	2017-04-13 10:18:17.381	tinymceeditor
com.atlassian.auiplugin	4332	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-checkbox-multiselect
confluence.search.mappers.lucene	4333	2017-04-13 10:18:17.381	none
com.atlassian.confluence.ext.newcode-macro-plugin	4334	2017-04-13 10:18:17.381	code-xhtml
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4335	2017-04-13 10:18:17.381	keyboardshortcut-hash
com.atlassian.confluence.extra.officeconnector	4336	2017-04-13 10:18:17.381	downloadInEditor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4337	2017-04-13 10:18:17.381	templateRender
confluence.sections.page	4338	2017-04-13 10:18:17.381	view
confluence.sections.page.operations	4339	2017-04-13 10:18:17.381	copy
confluence.macros.dashboard	4340	2017-04-13 10:18:17.381	recently-updated-dashboard
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4341	2017-04-13 10:18:17.381	page-trashed-notification-template-body
com.atlassian.oauth.serviceprovider	4342	2017-04-13 10:18:17.381	unescaper
confluence.extra.attachments	4343	2017-04-13 10:18:17.381	space-attachments-xhtml
com.atlassian.plugin.notifications.notifications-module	4344	2017-04-13 10:18:17.381	notificationsIssueEventListener
com.atlassian.confluence.extra.officeconnector	4345	2017-04-13 10:18:17.381	importworditem
com.atlassian.plugin.notifications.notifications-module	4346	2017-04-13 10:18:17.381	templatePathResolver
com.atlassian.plugin.notifications.notifications-module	4347	2017-04-13 10:18:17.381	rendererComponentAccessor
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4348	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.confluence-create-content-plugin	4349	2017-04-13 10:18:17.381	i18nResolver
confluence.extra.jira	4350	2017-04-13 10:18:17.381	jira-issues-retriever
com.atlassian.querylang.confluence-cql-plugin	4351	2017-04-13 10:18:17.381	type-sort-mapper
confluence.user.menu.concise	4352	2017-04-13 10:18:17.381	user-concise
com.atlassian.mywork.mywork-common-plugin	4353	2017-04-13 10:18:17.381	helpPathResolver
com.atlassian.streams.confluence	4355	2017-04-13 10:18:17.381	date-tr-TR
com.atlassian.confluence.plugins.profile-picture	4356	2017-04-13 10:18:17.381	profile-picture-editor_resources
com.atlassian.mywork.mywork-confluence-host-plugin	4357	2017-04-13 10:18:17.381	my-work-rest
com.atlassian.oauth.serviceprovider	4358	2017-04-13 10:18:17.381	oauthRequestTokenServlet
confluence.sections.admin	4359	2017-04-13 10:18:17.381	language
com.atlassian.confluence.plugins.confluence-mentions-plugin	4360	2017-04-13 10:18:17.381	mention-email-reply-link
confluence.web.resources	4361	2017-04-13 10:18:17.381	space-permissions-form
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4362	2017-04-13 10:18:17.381	is-room-notification-enabled-soy-function
confluence.sections.space.advanced	4363	2017-04-13 10:18:17.381	advanced
com.atlassian.support.healthcheck.support-healthcheck-plugin	4364	2017-04-13 10:18:17.381	shcWhitelist
com.atlassian.streams	4365	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4366	2017-04-13 10:18:17.381	page-update-notification
com.atlassian.streams	4367	2017-04-13 10:18:17.381	date-es-AR
com.atlassian.confluence.plugins.confluence-mobile	4368	2017-04-13 10:18:17.381	legacyV2RendererContextInitialiser
com.atlassian.confluence.plugins.confluence-mobile	4369	2017-04-13 10:18:17.381	creatorsSearchFilter
com.atlassian.streams	4370	2017-04-13 10:18:17.381	sessionManager
com.atlassian.streams	4371	2017-04-13 10:18:17.381	date-sq-AL
com.atlassian.plugins.less-transformer-plugin	4372	2017-04-13 10:18:17.381	less-transformer
com.atlassian.confluence.plugins.dialog-wizard	4373	2017-04-13 10:18:17.381	dialogManager
com.atlassian.confluence.plugins.confluence-business-blueprints	4374	2017-04-13 10:18:17.381	meeting-notes-item
com.atlassian.confluence.plugins.confluence-link-browser	4375	2017-04-13 10:18:17.381	link-browser-tab-advanced
com.atlassian.querylang.confluence-cql-plugin	4376	2017-04-13 10:18:17.381	end-of-day-zero-arg-function
confluence.extra.impresence2	4377	2017-04-13 10:18:17.381	sametime-resources
com.atlassian.confluence.plugins.confluence-macro-browser	4378	2017-04-13 10:18:17.381	macro-browser-css
com.atlassian.confluence.plugins.confluence-email-resources	4379	2017-04-13 10:18:17.381	email-from-field-renderer
confluence.extra.impresence2	4380	2017-04-13 10:18:17.381	impresence.config
com.atlassian.confluence.plugins.confluence-email-resources	4381	2017-04-13 10:18:17.381	notification-templates-blog-edit-1.0.0
com.atlassian.auiplugin	4382	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-draw-logo
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4383	2017-04-13 10:18:17.381	audit-log-servlet
com.atlassian.confluence.plugins.confluence-email-resources	4384	2017-04-13 10:18:17.381	misc-icons
com.atlassian.applinks.applinks-plugin	4385	2017-04-13 10:18:17.381	applinksRestV2
com.atlassian.applinks.applinks-plugin	4386	2017-04-13 10:18:17.381	applinksRestV3
com.atlassian.confluence.plugins.confluence-inline-comments	4387	2017-04-13 10:18:17.381	confluence-inline-reply-batching
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4388	2017-04-13 10:18:17.381	copy-resources
com.atlassian.plugins.atlassian-whitelist-core-plugin	4389	2017-04-13 10:18:17.381	bandanaManager
com.atlassian.querylang.confluence-cql-plugin	4390	2017-04-13 10:18:17.381	start-of-week-zero-arg-function
com.atlassian.confluence.plugins.soy	4391	2017-04-13 10:18:17.381	soy-items-for-section-soy-function
com.atlassian.confluence.plugins.confluence-create-content-plugin	4392	2017-04-13 10:18:17.381	ao-module
confluence.sections.news	4393	2017-04-13 10:18:17.381	view
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4394	2017-04-13 10:18:17.381	periodic-collaborative-editing-mode-event
com.atlassian.confluence.extra.officeconnector	4395	2017-04-13 10:18:17.381	excel97ContentExtractor
confluence.sections.help	4396	2017-04-13 10:18:17.381	confluence-help
com.atlassian.applinks.applinks-plugin	4397	2017-04-13 10:18:17.381	authenticatorAccessor
confluence.search.mappers.lucene	4398	2017-04-13 10:18:17.381	inSpaceSearchFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4399	2017-04-13 10:18:17.381	pluginRequestFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4400	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.confluence.plugins.confluence-inline-comments	4401	2017-04-13 10:18:17.381	view-resolved-comments
com.atlassian.confluence.plugins.recently-viewed-plugin	4402	2017-04-13 10:18:17.381	ao-module
com.atlassian.applinks.applinks-trustedapps-plugin	4403	2017-04-13 10:18:17.381	requestFactory
com.atlassian.confluence.plugins.confluence-default-space-content-plugin	4404	2017-04-13 10:18:17.381	spacecontent-global
com.atlassian.streams	4405	2017-04-13 10:18:17.381	date-es-CL
com.atlassian.confluence.plugins.soy	4406	2017-04-13 10:18:17.381	soy-version-number-function
com.atlassian.streams	4407	2017-04-13 10:18:17.381	date-es-CO
com.atlassian.confluence.plugins.confluence-lookandfeel	4408	2017-04-13 10:18:17.381	faviconManager
com.atlassian.mywork.mywork-confluence-provider-plugin	4409	2017-04-13 10:18:17.381	impersonationService
com.atlassian.applinks.applinks-cors-plugin	4410	2017-04-13 10:18:17.381	corsAuthServlet
com.atlassian.streams	4411	2017-04-13 10:18:17.381	date-es-CR
com.atlassian.streams.confluence	4412	2017-04-13 10:18:17.381	date-en-CA
com.atlassian.auiplugin	4413	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-label
com.atlassian.analytics.analytics-client	4414	2017-04-13 10:18:17.381	confluence-analytics-configuration-menu-item
com.atlassian.confluence.plugins.confluence-license-rest	4415	2017-04-13 10:18:17.381	licenseWebFacade
com.atlassian.applinks.applinks-plugin	4416	2017-04-13 10:18:17.381	pluginSettingsFactory
com.atlassian.support.stp	4417	2017-04-13 10:18:17.381	action-factory
com.atlassian.mywork.mywork-confluence-provider-plugin	4418	2017-04-13 10:18:17.381	registrationProvider
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4419	2017-04-13 10:18:17.381	page-trashed-notification-template
confluence.extractors.core	4420	2017-04-13 10:18:17.381	attachmentMimeTypeChangeExtractor
tac.confluence.languages.fr_FR	4421	2017-04-13 10:18:17.381	fr_FR
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4422	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.extra.flyingpdf	4423	2017-04-13 10:18:17.381	pdfExportSettingsManager
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4424	2017-04-13 10:18:17.381	roadmap-analytics-resources
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4425	2017-04-13 10:18:17.381	roadmap-editor-toolbar-view-resources
com.atlassian.auiplugin	4426	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-polyfills-custom-event
com.atlassian.confluence.plugins.confluence-inline-comments	4427	2017-04-13 10:18:17.381	confluence-inline-comments-rest-filter
confluence.extra.layout	4428	2017-04-13 10:18:17.381	resources
com.atlassian.confluence.plugins.confluence-mobile	4429	2017-04-13 10:18:17.381	darkFeaturesManager
org.randombits.confluence.toc	4430	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.confluence.plugins.confluence-create-content-plugin	4431	2017-04-13 10:18:17.381	spaceLevelDisabledBlueprintsUpgradeTask
com.atlassian.confluence.plugins.confluence-quicknav	4432	2017-04-13 10:18:17.381	quicknav-admin-resources
com.atlassian.streams	4433	2017-04-13 10:18:17.381	date-es-BO
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4434	2017-04-13 10:18:17.381	hipchat-space-to-room-global
confluence.web.resources	4435	2017-04-13 10:18:17.381	mutation-observer
com.atlassian.plugins.atlassian-nav-links-plugin	4436	2017-04-13 10:18:17.381	locale-supporting-i18n-resolver
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4437	2017-04-13 10:18:17.381	roadmap-editor-timeline-view-resources
com.atlassian.confluence.extra.flyingpdf	4438	2017-04-13 10:18:17.381	pdfexport
com.atlassian.gadgets.embedded	4439	2017-04-13 10:18:17.381	gadget-container-resources
confluence.extractors.core	4440	2017-04-13 10:18:17.381	pluginContentEntityObjectChangeExtractor
com.atlassian.confluence.plugins.confluence-previews	4441	2017-04-13 10:18:17.381	confluencePreviewsWhitelistFileViewer
com.atlassian.confluence.plugins.confluence-sal-plugin	4442	2017-04-13 10:18:17.381	componentLocator
com.atlassian.confluence.plugins.confluence-sal-plugin	4443	2017-04-13 10:18:17.381	confluenceConnectionProvider
com.atlassian.streams.confluence	4444	2017-04-13 10:18:17.381	date-en-BZ
com.atlassian.analytics.analytics-client	4445	2017-04-13 10:18:17.381	analytics-rest-filter
confluence.renderer.components	4446	2017-04-13 10:18:17.381	superscript
com.atlassian.confluence.plugins.recently-viewed-plugin	4447	2017-04-13 10:18:17.381	main-resources
com.atlassian.confluence.plugins.confluence-like	4448	2017-04-13 10:18:17.381	like-email-soy-templates-2
com.atlassian.applinks.applinks-trustedapps-plugin	4449	2017-04-13 10:18:17.381	xsrfTokenAccessor
com.atlassian.crowd.embedded.admin	4450	2017-04-13 10:18:17.381	confluence-ldap-additional-config
com.atlassian.confluence.plugins.recently-viewed-plugin	4451	2017-04-13 10:18:17.381	mobile-resources
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4452	2017-04-13 10:18:17.381	whitelist-soy-servlet
com.atlassian.querylang.confluence-cql-plugin	4453	2017-04-13 10:18:17.381	user-query-field-mapper
confluence.web.resources	4454	2017-04-13 10:18:17.381	contentnamesearch
com.atlassian.plugins.rest.atlassian-rest-module	4455	2017-04-13 10:18:17.381	rest-container-servlet-filter-INCLUDE
com.atlassian.auiplugin	4456	2017-04-13 10:18:17.381	aui-label
com.atlassian.streams	4457	2017-04-13 10:18:17.381	date-es-ES
com.atlassian.templaterenderer.api	4458	2017-04-13 10:18:17.381	webResourceUrlProviderContextItem
com.atlassian.confluence.plugins.confluence-onboarding	4459	2017-04-13 10:18:17.381	onboardingManager
com.atlassian.plugins.rest.atlassian-rest-module	4460	2017-04-13 10:18:17.381	rest-container-servlet-filter-ERROR
com.atlassian.auiplugin	4461	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-set-current
com.atlassian.confluence.plugins.gadgets	4462	2017-04-13 10:18:17.381	gadgetMacroMetadataProvider
confluence.extra.masterdetail	4463	2017-04-13 10:18:17.381	rest-caching-filter
com.atlassian.streams.confluence	4464	2017-04-13 10:18:17.381	date-en-AU
confluence.sections.space.tools	4465	2017-04-13 10:18:17.381	rss
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4466	2017-04-13 10:18:17.381	notification-templates
com.atlassian.confluence.plugins.confluence-daily-summary-email	4467	2017-04-13 10:18:17.381	dataSourceFactory
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4468	2017-04-13 10:18:17.381	emoticonEditorMarshaller
com.atlassian.gadgets.opensocial	4469	2017-04-13 10:18:17.381	oauth-callback-servlet
com.atlassian.confluence.plugins.gadgets	4470	2017-04-13 10:18:17.381	transactionTemplate
confluence.comment.action	4471	2017-04-13 10:18:17.381	comment-permalink
com.atlassian.confluence.plugins.view-source	4472	2017-04-13 10:18:17.381	viewsourceActions
com.atlassian.confluence.plugins.confluence-file-notifications	4473	2017-04-13 10:18:17.381	fileContentEventListener
com.atlassian.auiplugin	4474	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-row
com.atlassian.auiplugin	4475	2017-04-13 10:18:17.381	internal-jquery-ui-datepicker
com.atlassian.plugins.rest.atlassian-rest-module	4476	2017-04-13 10:18:17.381	xsrfRequestValidator
com.atlassian.confluence.plugins.confluence-nav-links	4477	2017-04-13 10:18:17.381	navlinksProjectPermissionManager
com.atlassian.streams	4478	2017-04-13 10:18:17.381	date-es-DO
confluence.extra.attachments	4479	2017-04-13 10:18:17.381	none
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4480	2017-04-13 10:18:17.381	confluenceMailer
com.atlassian.support.healthcheck.support-healthcheck-plugin	4481	2017-04-13 10:18:17.381	systemInformationService
com.atlassian.confluence.plugins.confluence-request-access-plugin	4482	2017-04-13 10:18:17.381	pagePermissionChecker
com.atlassian.auiplugin	4483	2017-04-13 10:18:17.381	jquery-progressbar
com.atlassian.streams.confluence	4484	2017-04-13 10:18:17.381	date-da-DK
confluence.extractors.core	4485	2017-04-13 10:18:17.381	versionNumberChangeExtractor
confluence.extra.dynamictasklist2	4486	2017-04-13 10:18:17.381	taskListManager
com.atlassian.confluence.extra.widgetconnector	4487	2017-04-13 10:18:17.381	viddler
com.atlassian.confluence.keyboardshortcuts	4488	2017-04-13 10:18:17.381	tinymce.strikethrough
com.atlassian.streams	4489	2017-04-13 10:18:17.381	date-es-EC
com.atlassian.confluence.plugins.recently-viewed-plugin	4490	2017-04-13 10:18:17.381	recently-viewed-rest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4491	2017-04-13 10:18:17.381	pluginManagerHandler
com.atlassian.confluence.plugins.view-source	4492	2017-04-13 10:18:17.381	confluence-view-source-api-rest
confluence.macros.basic	4493	2017-04-13 10:18:17.381	loremipsum-xhtml
com.atlassian.confluence.keyboardshortcuts	4494	2017-04-13 10:18:17.381	tinymce.table.cut.row
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4495	2017-04-13 10:18:17.381	upm-marketplace-resources
com.atlassian.plugin.jslibs	4496	2017-04-13 10:18:17.381	marionette-1.4.1-factory
com.atlassian.applinks.applinks-basicauth-plugin	4497	2017-04-13 10:18:17.381	typeAccessor
confluence.filters.core	4498	2017-04-13 10:18:17.381	confluenceActivityFilter
com.atlassian.confluence.plugins.confluence-business-blueprints	4499	2017-04-13 10:18:17.381	sharelinks-index-page
com.atlassian.applinks.applinks-oauth-plugin	4500	2017-04-13 10:18:17.381	oAuthTokenRetriever
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4501	2017-04-13 10:18:17.381	clusterLockService
com.atlassian.confluence.plugins.pagetree	4502	2017-04-13 10:18:17.381	pagetree-xhtml
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4503	2017-04-13 10:18:17.381	confluence-collaborative-editor-plugin-resources
com.atlassian.mywork.mywork-confluence-host-plugin	4504	2017-04-13 10:18:17.381	internalHostApplication
com.atlassian.confluence.plugins.confluence-inline-tasks	4505	2017-04-13 10:18:17.381	tasks-notification-payload-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4506	2017-04-13 10:18:17.381	uriBuilderContextItem
confluence.listeners.core	4507	2017-04-13 10:18:17.381	thumbnailRemovingListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4508	2017-04-13 10:18:17.381	web-item-link
com.atlassian.auiplugin	4509	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-utils
com.atlassian.streams	4510	2017-04-13 10:18:17.381	date-ka-GE
confluence.extra.impresence2	4511	2017-04-13 10:18:17.381	skypeme
com.atlassian.confluence.plugins.gadgets	4512	2017-04-13 10:18:17.381	tokenStore
com.atlassian.confluence.plugins.confluence-mobile	4513	2017-04-13 10:18:17.381	removeApostropheEntityTransformer
confluence.search.mappers.lucene	4514	2017-04-13 10:18:17.381	inSpace
com.atlassian.confluence.plugins.confluence-rest-resources	4515	2017-04-13 10:18:17.381	view-page-api-link
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4516	2017-04-13 10:18:17.381	analyticsEventPublisher
com.atlassian.applinks.applinks-plugin	4517	2017-04-13 10:18:17.381	applicationProperties
confluence.extra.masterdetail	4518	2017-04-13 10:18:17.381	transactionTemplate
confluence.sections.space.tools	4519	2017-04-13 10:18:17.381	lookandfeel
com.atlassian.confluence.plugins.confluence-create-content-plugin	4520	2017-04-13 10:18:17.381	userStorageService
com.atlassian.mywork.mywork-confluence-host-plugin	4521	2017-04-13 10:18:17.381	client-registration-event-listener
com.atlassian.applinks.applinks-plugin	4522	2017-04-13 10:18:17.381	confluence-inbound-oauth
com.atlassian.streams	4523	2017-04-13 10:18:17.381	date-is-IS
com.atlassian.auiplugin	4524	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-vendor-jquery-serializetoobject
com.atlassian.confluence.plugins.status-macro	4525	2017-04-13 10:18:17.381	imageGeneratorServlet
confluence.user.menu	4526	2017-04-13 10:18:17.381	logout
com.atlassian.confluence.plugins.confluence-sal-plugin	4527	2017-04-13 10:18:17.381	platformTransactionManager
com.atlassian.streams.confluence	4528	2017-04-13 10:18:17.381	date-quz-BO
confluence.sections.profile	4529	2017-04-13 10:18:17.381	favourite-user-personal-space
com.atlassian.plugins.base-hipchat-integration-plugin	4530	2017-04-13 10:18:17.381	rest-integration
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4531	2017-04-13 10:18:17.381	dacidecision-resources
com.atlassian.confluence.plugins.confluence-monitoring-console	4532	2017-04-13 10:18:17.381	monitoring-console-helper-servlet
com.atlassian.confluence.plugins.confluence-inline-tasks	4533	2017-04-13 10:18:17.381	tasks-report
confluence.web.resources	4534	2017-04-13 10:18:17.381	setup-eval-license
com.atlassian.webhooks.atlassian-webhooks-plugin	4535	2017-04-13 10:18:17.381	webhooks-admin-resources
confluence.macros.basic	4536	2017-04-13 10:18:17.381	anchor-xhtml
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4537	2017-04-13 10:18:17.381	webSudoManager
com.atlassian.confluence.plugins.confluence-fixed-headers	4538	2017-04-13 10:18:17.381	confluence-fixed-headers-view-content-resources
com.atlassian.confluence.plugins.confluence-daily-summary-email	4539	2017-04-13 10:18:17.381	unsubscribeTokenManager
com.atlassian.streams.confluence	4540	2017-04-13 10:18:17.381	date-en-029
com.atlassian.mywork.mywork-confluence-provider-plugin	4541	2017-04-13 10:18:17.381	fieldHelper
com.atlassian.confluence.editor	4542	2017-04-13 10:18:17.381	contentPropertyService
com.atlassian.confluence.plugins.confluence-sal-plugin	4543	2017-04-13 10:18:17.381	xsrfTokenAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4544	2017-04-13 10:18:17.381	remoteAddonLicenseService
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4545	2017-04-13 10:18:17.381	playbookWhitelist
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4546	2017-04-13 10:18:17.381	hipchat-soy-server-resources
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4547	2017-04-13 10:18:17.381	confluence-copy-page-hierarchy-plugin-loader
com.atlassian.confluence.plugins.quickreload	4548	2017-04-13 10:18:17.381	commentManager
confluence.macros.advanced	4549	2017-04-13 10:18:17.381	navmap-resources
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4550	2017-04-13 10:18:17.381	experiencecanvas-template
confluence.macros.advanced	4551	2017-04-13 10:18:17.381	common-resources
com.atlassian.confluence.plugins.confluence-cache-management-plugin	4552	2017-04-13 10:18:17.381	server-resources
com.atlassian.plugin.jslibs	4553	2017-04-13 10:18:17.381	underscore-1.4.4
confluence.macros.advanced	4554	2017-04-13 10:18:17.381	related-labels
com.atlassian.confluence.plugins.confluence-view-file-macro	4555	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-mobile	4556	2017-04-13 10:18:17.381	viewLinkMarshallerFactory
com.atlassian.confluence.extra.officeconnector	4557	2017-04-13 10:18:17.381	viewxls-legacy
confluence.editor.actions	4558	2017-04-13 10:18:17.381	editor-macro-browser
com.atlassian.confluence.extra.flyingpdf	4559	2017-04-13 10:18:17.381	configurepdflanguagesupport
com.atlassian.confluence.plugins.confluence-business-blueprints	4560	2017-04-13 10:18:17.381	sharelinksbookmarklet-decorator
com.atlassian.analytics.analytics-client	4561	2017-04-13 10:18:17.381	confluence-event-report-menu-item
com.atlassian.confluence.plugins.confluence-email-resources	4562	2017-04-13 10:18:17.381	chrome-template-footer-pattern-1.0.0
confluence.web.resources	4563	2017-04-13 10:18:17.381	jira-controls
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4564	2017-04-13 10:18:17.381	rest-compatibility
com.atlassian.auiplugin	4565	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-i18n
com.atlassian.mywork.mywork-common-plugin	4566	2017-04-13 10:18:17.381	application-link-service
com.atlassian.confluence.extra.officeconnector	4567	2017-04-13 10:18:17.381	viewfile
confluence.content.action.menu	4568	2017-04-13 10:18:17.381	copy-page
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4569	2017-04-13 10:18:17.381	templateLocator
confluence.macros.dashboard	4570	2017-04-13 10:18:17.381	dashboard-global-entity-resources
com.atlassian.auiplugin	4571	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-cookie
com.atlassian.confluence.plugins.confluence-browser-metrics	4572	2017-04-13 10:18:17.381	util
com.atlassian.confluence.plugins.confluence-email-resources	4573	2017-04-13 10:18:17.381	template-utils-2.0.0
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4574	2017-04-13 10:18:17.381	rest
com.atlassian.applinks.applinks-plugin	4575	2017-04-13 10:18:17.381	confluence-space
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4576	2017-04-13 10:18:17.381	representationFactory
com.atlassian.oauth.serviceprovider	4577	2017-04-13 10:18:17.381	stringEscapeUtilContextItem
com.atlassian.plugins.atlassian-nav-links-plugin	4578	2017-04-13 10:18:17.381	rotp-menu
com.atlassian.auiplugin	4579	2017-04-13 10:18:17.381	aui-experimental-lozenge
com.atlassian.confluence.plugins.confluence-user-rest	4580	2017-04-13 10:18:17.381	crowd-aggregation-warning
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4581	2017-04-13 10:18:17.381	helpPathResolver
confluence.web.resources	4582	2017-04-13 10:18:17.381	create-space
confluence.sections.attachments	4583	2017-04-13 10:18:17.381	remove
com.atlassian.support.stp	4584	2017-04-13 10:18:17.381	java-support-info
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4585	2017-04-13 10:18:17.381	permissionEnforcerContextItem
com.atlassian.auiplugin	4586	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-throbber
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4587	2017-04-13 10:18:17.381	batching-notification-recipients-provider
com.atlassian.confluence.plugins.confluence-sal-plugin	4588	2017-04-13 10:18:17.381	confluenceHttpContext
com.atlassian.streams.confluence	4589	2017-04-13 10:18:17.381	contentEntityRendererFactory
com.atlassian.confluence.editor	4590	2017-04-13 10:18:17.381	page-editor-quit-dialog
com.atlassian.confluence.plugins.confluence-inline-tasks	4591	2017-04-13 10:18:17.381	my-tasks-blank-exp-resources
com.atlassian.confluence.plugins.confluence-email-resources	4592	2017-04-13 10:18:17.381	template-utils-image-with-text-1.0.0
confluence.extra.jira	4593	2017-04-13 10:18:17.381	common
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4594	2017-04-13 10:18:17.381	confluenceNotificationSettings
com.atlassian.auiplugin	4595	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-to-init
com.atlassian.analytics.analytics-client	4596	2017-04-13 10:18:17.381	confluencePropertyExtractor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4597	2017-04-13 10:18:17.381	roadmap-macro
com.atlassian.plugin.notifications.notifications-module	4598	2017-04-13 10:18:17.381	taskComponents
com.atlassian.applinks.applinks-trustedapps-plugin	4599	2017-04-13 10:18:17.381	internalHostApplication
confluence.macros.advanced	4600	2017-04-13 10:18:17.381	get-more-helper
confluence.extra.confluencerpc	4601	2017-04-13 10:18:17.381	wikiRpcHandler
confluence.macros.dashboard	4602	2017-04-13 10:18:17.381	confluenceDashboardMacrosRest
com.atlassian.confluence.plugins.confluence-email-resources	4603	2017-04-13 10:18:17.381	user-full-name-function
com.atlassian.streams.confluence	4604	2017-04-13 10:18:17.381	date-zh-SG
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4605	2017-04-13 10:18:17.381	keyboardShortcutsRest-filter
com.atlassian.auiplugin	4606	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-header
com.atlassian.confluence.plugins.confluence-lookandfeel	4607	2017-04-13 10:18:17.381	attachmentManager
com.atlassian.streams.confluence	4608	2017-04-13 10:18:17.381	date-gu-IN
confluence.macros.profile	4609	2017-04-13 10:18:17.381	network-resources
confluence.listeners.core	4610	2017-04-13 10:18:17.381	updateSpacesInChangeIndexListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4611	2017-04-13 10:18:17.381	pluginUpdateChecker
com.atlassian.confluence.plugins.confluence-previews	4612	2017-04-13 10:18:17.381	confluence-previews-jquery
com.atlassian.mywork.mywork-confluence-host-plugin	4613	2017-04-13 10:18:17.381	authenticationController
com.atlassian.confluence.keyboardshortcuts	4614	2017-04-13 10:18:17.381	quicksearch
com.atlassian.confluence.plugins.confluence-onboarding	4615	2017-04-13 10:18:17.381	onboardingSpaceCheckTrigger
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4616	2017-04-13 10:18:17.381	blog-create-notification
confluence.extra.jira	4617	2017-04-13 10:18:17.381	pdf-export-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	4618	2017-04-13 10:18:17.381	team-space-blueprint
com.atlassian.auiplugin	4619	2017-04-13 10:18:17.381	aui-avatars
com.atlassian.confluence.extra.widgetconnector	4620	2017-04-13 10:18:17.381	googlespreadsheets
confluence.renderer.components	4621	2017-04-13 10:18:17.381	escape
com.atlassian.confluence.plugins.confluence-create-content-plugin	4622	2017-04-13 10:18:17.381	transactionTemplate
confluence.web.resources	4623	2017-04-13 10:18:17.381	memoir
com.atlassian.confluence.plugins.confluence-jira-metadata	4624	2017-04-13 10:18:17.381	content-metadata-jira
com.atlassian.support.healthcheck.support-healthcheck-plugin	4625	2017-04-13 10:18:17.381	support-health-check
com.atlassian.plugins.atlassian-nav-links-plugin	4626	2017-04-13 10:18:17.381	custom-apps-admin-ui-resources-old
confluence.macros.html	4627	2017-04-13 10:18:17.381	rss-xhtml
confluence.web.resources	4628	2017-04-13 10:18:17.381	setup-select-install-type
com.atlassian.confluence.plugins.soy	4629	2017-04-13 10:18:17.381	soy-base-url-function
confluence.search.mappers.lucene	4630	2017-04-13 10:18:17.381	contentPermissionsSearchFilter
com.atlassian.streams.confluence	4631	2017-04-13 10:18:17.381	date-uz-Cyrl-UZ
confluence.sections.space.tools	4632	2017-04-13 10:18:17.381	addons
com.atlassian.confluence.plugins.confluence-business-blueprints	4633	2017-04-13 10:18:17.381	decisions-blueprint-item
com.atlassian.confluence.plugins.dialog-wizard	4634	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-highlight-actions	4635	2017-04-13 10:18:17.381	markSelectionTransformer
com.atlassian.streams.confluence	4636	2017-04-13 10:18:17.381	date-zh-TW
com.atlassian.streams.confluence	4637	2017-04-13 10:18:17.381	date-quz-EC
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4638	2017-04-13 10:18:17.381	marketplaceClientManager
com.atlassian.auiplugin	4639	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-on-text-resize
confluence.macro.metadata.provider	4640	2017-04-13 10:18:17.381	macroMetadataProviders
com.atlassian.confluence.plugins.recently-viewed-plugin	4641	2017-04-13 10:18:17.381	recently-viewed-content-two-args-function
confluence.macros.advanced	4642	2017-04-13 10:18:17.381	editor_includemacro
com.atlassian.confluence.extra.flyingpdf	4643	2017-04-13 10:18:17.381	betterpdfpage
com.atlassian.gadgets.embedded	4644	2017-04-13 10:18:17.381	gadget-standalone-resources
confluence.web.resources	4645	2017-04-13 10:18:17.381	deferred-loaders
com.atlassian.oauth.serviceprovider	4646	2017-04-13 10:18:17.381	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4647	2017-04-13 10:18:17.381	diffContextProvider
com.atlassian.auiplugin	4648	2017-04-13 10:18:17.381	aui-experimental-buttons
com.atlassian.streams	4649	2017-04-13 10:18:17.381	date-es-PA
confluence.extra.jira	4650	2017-04-13 10:18:17.381	mobileThreadLocalFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4651	2017-04-13 10:18:17.381	notificationPageDataFactory
com.atlassian.streams	4652	2017-04-13 10:18:17.381	date-es-PE
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4653	2017-04-13 10:18:17.381	notificationFactoryImpl
com.atlassian.streams.confluence	4654	2017-04-13 10:18:17.381	confluence-rest
com.atlassian.plugins.atlassian-whitelist-core-plugin	4655	2017-04-13 10:18:17.381	whitelistBasedCorsDefaults
com.atlassian.support.stp	4656	2017-04-13 10:18:17.381	supportZipService
confluence.user.hover.menu	4657	2017-04-13 10:18:17.381	personal-space
com.atlassian.confluence.plugins.confluence-view-file-macro	4658	2017-04-13 10:18:17.381	attachedImageRenderHelper
com.atlassian.confluence.extra.officeconnector	4659	2017-04-13 10:18:17.381	officeconnector-editor-resources
com.atlassian.confluence.plugins.confluence-space-directory	4660	2017-04-13 10:18:17.381	pagination-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	4661	2017-04-13 10:18:17.381	quote-comment
com.atlassian.webhooks.atlassian-webhooks-plugin	4662	2017-04-13 10:18:17.381	webhooks-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4663	2017-04-13 10:18:17.381	settingsManager
com.atlassian.plugins.atlassian-project-creation-plugin	4664	2017-04-13 10:18:17.381	project-crud-rest
com.atlassian.streams	4665	2017-04-13 10:18:17.381	date-es-PR
com.atlassian.streams.confluence	4666	2017-04-13 10:18:17.381	localeManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	4667	2017-04-13 10:18:17.381	taskManager
com.atlassian.mywork.mywork-confluence-provider-plugin	4668	2017-04-13 10:18:17.381	userAccessor
confluence.extra.confluencerpc	4669	2017-04-13 10:18:17.381	usersSoapService
com.atlassian.confluence.plugins.confluence-document-conversion-library	4670	2017-04-13 10:18:17.381	Confluence Document Conversion Library REST support-filter
com.atlassian.confluence.plugins.search.confluence-search	4671	2017-04-13 10:18:17.381	darkFeatureManager
confluence.macros.advanced	4672	2017-04-13 10:18:17.381	junitreport
com.atlassian.confluence.plugins.gadgets	4673	2017-04-13 10:18:17.381	oauth-access-tokens
com.atlassian.confluence.plugins.confluence-inline-comments	4674	2017-04-13 10:18:17.381	notification-template-resolve-body
com.atlassian.applinks.applinks-oauth-plugin	4675	2017-04-13 10:18:17.381	add-non-applinks-service-provider
confluence.listeners.core	4676	2017-04-13 10:18:17.381	clusterChangeJobStatusListener
com.atlassian.integration.jira.jira-integration-plugin	4677	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.querylang.confluence-cql-plugin	4678	2017-04-13 10:18:17.381	end-of-month-zero-arg-function
com.atlassian.confluence.editor	4679	2017-04-13 10:18:17.381	atlassian-pdl-resources
com.atlassian.auiplugin	4680	2017-04-13 10:18:17.381	internal-skatejs-template-html-0.0.0-dist-template-html
confluence.extractors.core	4681	2017-04-13 10:18:17.381	defaultSearchableTextExtractor
com.atlassian.confluence.themes.default	4682	2017-04-13 10:18:17.381	styles
confluence.sections.profile	4683	2017-04-13 10:18:17.381	my-favourites
com.atlassian.confluence.plugins.confluence-view-file-macro	4684	2017-04-13 10:18:17.381	conversionManager
com.atlassian.confluence.extra.widgetconnector	4685	2017-04-13 10:18:17.381	youtube
com.atlassian.confluence.plugins.confluence-mobile	4686	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.integration.jira.jira-integration-plugin	4687	2017-04-13 10:18:17.381	confluenceJiraSettings
com.atlassian.confluence.plugins.gadgets	4688	2017-04-13 10:18:17.381	cacheManager
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4689	2017-04-13 10:18:17.381	lib
confluence.sections.create	4690	2017-04-13 10:18:17.381	create-attachment
com.atlassian.auiplugin	4691	2017-04-13 10:18:17.381	ajs-raf
com.atlassian.confluence.contributors	4692	2017-04-13 10:18:17.381	authorContributionExtractor
com.atlassian.confluence.plugins.confluence-like	4693	2017-04-13 10:18:17.381	like-created-notification
com.atlassian.confluence.plugins.confluence-browser-metrics	4694	2017-04-13 10:18:17.381	dashboard
com.atlassian.plugins.base-hipchat-integration-plugin	4695	2017-04-13 10:18:17.381	hipchat-glance
com.atlassian.mywork.mywork-confluence-host-plugin	4696	2017-04-13 10:18:17.381	service-selector-wrapper
confluence.search.mappers.lucene	4697	2017-04-13 10:18:17.381	relevance
confluence.listeners.core	4698	2017-04-13 10:18:17.381	luceneSearchMapperRegistryCacheUpdateListener
confluence.web.resources	4699	2017-04-13 10:18:17.381	page-history
com.atlassian.oauth.serviceprovider	4700	2017-04-13 10:18:17.381	clock
com.atlassian.confluence.extra.widgetconnector	4701	2017-04-13 10:18:17.381	blip
com.atlassian.support.healthcheck.support-healthcheck-plugin	4702	2017-04-13 10:18:17.381	salUserManager
com.atlassian.plugins.atlassian-nav-links-plugin	4703	2017-04-13 10:18:17.381	environment-soy-function
com.atlassian.confluence.plugins.confluence-like	4704	2017-04-13 10:18:17.381	like-created-notification-template-hipchat-body
com.atlassian.confluence.plugins.share-page	4705	2017-04-13 10:18:17.381	email-resources-2.0.0
com.atlassian.streams	4706	2017-04-13 10:18:17.381	date-ro-RO
com.atlassian.confluence.plugins.confluence-view-file-macro	4707	2017-04-13 10:18:17.381	view-file-macro-embedded-file-view-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	4708	2017-04-13 10:18:17.381	appendToSelectionTransformer
com.atlassian.streams	4709	2017-04-13 10:18:17.381	date-es-PY
confluence.lifecycle.core	4710	2017-04-13 10:18:17.381	remigration
com.atlassian.plugins.atlassian-whitelist-core-plugin	4711	2017-04-13 10:18:17.381	activeObjects
com.atlassian.confluence.plugins.confluence-email-resources	4712	2017-04-13 10:18:17.381	notification-templates-page-test-1.0.0
com.atlassian.confluence.plugins.confluence-previews	4713	2017-04-13 10:18:17.381	feature-discovery-plugin
com.atlassian.auiplugin	4714	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-clone
com.atlassian.confluence.plugins.confluence-inline-comments	4715	2017-04-13 10:18:17.381	confirm-dialog-view
com.atlassian.analytics.analytics-client	4716	2017-04-13 10:18:17.381	pluginScheduler
com.atlassian.auiplugin	4717	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-form-validation
com.atlassian.plugins.atlassian-plugins-webresource-rest	4718	2017-04-13 10:18:17.381	web-resources
com.atlassian.confluence.keyboardshortcuts	4719	2017-04-13 10:18:17.381	add.comment
com.atlassian.confluence.plugins.confluence-email-resources	4720	2017-04-13 10:18:17.381	notification-templates-2.0.0
confluence.listeners.core	4721	2017-04-13 10:18:17.381	removeContentPropertiesOnRemoveContentListener
com.atlassian.streams.streams-thirdparty-plugin	4722	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.pagetree	4723	2017-04-13 10:18:17.381	pagetree-mobile-resources
com.atlassian.activeobjects.confluence.spi	4724	2017-04-13 10:18:17.381	tenantContext
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4725	2017-04-13 10:18:17.381	pluginLicenseStore
com.atlassian.confluence.plugins.confluence-schedule-admin	4726	2017-04-13 10:18:17.381	none
com.atlassian.confluence.plugins.confluence-daily-summary-email	4727	2017-04-13 10:18:17.381	SummaryEmailTaskFactory
com.atlassian.confluence.plugins.drag-and-drop	4728	2017-04-13 10:18:17.381	drag-and-drop-resource
confluence.listeners.core	4729	2017-04-13 10:18:17.381	attachmentNotificationsListener
com.atlassian.confluence.plugins.confluence-daily-summary-email	4730	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-document-conversion-library	4731	2017-04-13 10:18:17.381	Confluence Document Conversion Library REST support
com.atlassian.confluence.plugins.confluence-rest-resources	4732	2017-04-13 10:18:17.381	rest-api
com.atlassian.auiplugin	4733	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-select-suggestions-view
com.atlassian.plugins.base-hipchat-integration-plugin	4734	2017-04-13 10:18:17.381	view-oauth-servlet
confluence.web.resources	4899	2017-04-13 10:18:17.381	ajs
com.atlassian.confluence.plugins.confluence-space-ia	4735	2017-04-13 10:18:17.381	left-ia-sidebar-panel
com.atlassian.confluence.plugins.confluence-create-content-plugin	4736	2017-04-13 10:18:17.381	spaceBlueprintManagerDelegate
confluence.search.mappers.lucene	4737	2017-04-13 10:18:17.381	fieldValueSearchFilter
com.atlassian.activeobjects.confluence.spi	4738	2017-04-13 10:18:17.381	tenantAwareDataSourceProvider
com.atlassian.mywork.mywork-confluence-provider-plugin	4739	2017-04-13 10:18:17.381	mentionFinder
com.atlassian.integration.jira.jira-integration-plugin	4740	2017-04-13 10:18:17.381	jira-icon-servlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4741	2017-04-13 10:18:17.381	txTemplate
com.atlassian.confluence.extra.widgetconnector	4742	2017-04-13 10:18:17.381	getsatisfaction
tac.confluence.languages.zh_CN	4743	2017-04-13 10:18:17.381	zh_CN
com.atlassian.support.healthcheck.support-healthcheck-plugin	4744	2017-04-13 10:18:17.381	support-healthcheck-plugin-resources
com.atlassian.confluence.plugins.confluence-email-resources	4745	2017-04-13 10:18:17.381	content-templates-inline-content-styles-1.0.0
com.atlassian.confluence.plugins.confluence-like	4746	2017-04-13 10:18:17.381	unlike-content-email-batch-item
com.atlassian.confluence.extra.officeconnector	4747	2017-04-13 10:18:17.381	ppt97ContentExtractor
confluence.extractors.core	4748	2017-04-13 10:18:17.381	spaceKeyAndNameChangeExtractor
com.atlassian.confluence.plugins.confluence-sal-plugin	4749	2017-04-13 10:18:17.381	userSettingsService
com.atlassian.confluence.plugins.confluence-email-resources	4750	2017-04-13 10:18:17.381	content-type-icons
com.atlassian.streams.confluence	4751	2017-04-13 10:18:17.381	date-sr-Cyrl-BA
com.atlassian.auiplugin	4752	2017-04-13 10:18:17.381	internal-skatejs-0.13.17-lib-globals
com.atlassian.confluence.plugins.confluence-edge-index	4753	2017-04-13 10:18:17.381	edgeIndexRebuildUpgradeTask
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4754	2017-04-13 10:18:17.381	asyncTaskRepresentationFactory
com.atlassian.confluence.plugins.confluence-daily-summary-email	4755	2017-04-13 10:18:17.381	i18NBeanFactory
confluence.sections.profile	4756	2017-04-13 10:18:17.381	follow
com.atlassian.plugins.atlassian-whitelist-core-plugin	4757	2017-04-13 10:18:17.381	clearHttpCacheAdapter
com.atlassian.querylang.confluence-cql-plugin	4758	2017-04-13 10:18:17.381	recently-modified-pages-blogs-by-user-three-arg-function
confluence.web.resources	4759	2017-04-13 10:18:17.381	page-loading-indicator
com.atlassian.crowd.embedded.admin	4760	2017-04-13 10:18:17.381	crowd-ldap-properties-helper
com.atlassian.auiplugin	4761	2017-04-13 10:18:17.381	internal-form-css
com.atlassian.analytics.analytics-client	4762	2017-04-13 10:18:17.381	licenseHandler
confluence.extra.jira	4763	2017-04-13 10:18:17.381	flexigrid-resources
com.atlassian.confluence.plugins.confluence-mentions-plugin	4764	2017-04-13 10:18:17.381	mention-icon
com.atlassian.plugin.notifications.notifications-module	4765	2017-04-13 10:18:17.381	notificationsRest-filter
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	4766	2017-04-13 10:18:17.381	featureDiscoveryService
com.atlassian.applinks.applinks-oauth-plugin	4767	2017-04-13 10:18:17.381	servletMessageFactory
com.atlassian.confluence.plugins.confluence-email-resources	4768	2017-04-13 10:18:17.381	content-templates-notification-comment-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4769	2017-04-13 10:18:17.381	locate
com.atlassian.confluence.plugins.confluence-email-resources	4770	2017-04-13 10:18:17.381	chrome-template-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	4771	2017-04-13 10:18:17.381	rest-experimental
com.atlassian.soy.soy-template-plugin	4772	2017-04-13 10:18:17.381	jiraSoyTransformer
com.atlassian.streams	4773	2017-04-13 10:18:17.381	date-es-SV
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4774	2017-04-13 10:18:17.381	css
confluence.user.menu.concise	4775	2017-04-13 10:18:17.381	administration
com.atlassian.confluence.plugins.confluence-cache-management-plugin	4776	2017-04-13 10:18:17.381	analytics-whitelist
com.atlassian.streams	4777	2017-04-13 10:18:17.381	date-es-VE
com.atlassian.confluence.plugins.quickreload	4778	2017-04-13 10:18:17.381	quick-reload-bootstrap
com.atlassian.streams.confluence	4779	2017-04-13 10:18:17.381	webResourceManager
com.atlassian.confluence.plugins.confluence-inline-tasks	4780	2017-04-13 10:18:17.381	task-report-blueprint-item
com.atlassian.oauth.serviceprovider.sal	4781	2017-04-13 10:18:17.381	userManager
com.atlassian.auiplugin	4782	2017-04-13 10:18:17.381	jquery-compatibility
com.atlassian.confluence.plugins.confluence-mentions-plugin	4783	2017-04-13 10:18:17.381	editor-autocomplete-mentions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4784	2017-04-13 10:18:17.381	pluginRestartRequiredService
com.atlassian.plugins.atlassian-nav-links-plugin	4785	2017-04-13 10:18:17.381	locale-resolver
com.atlassian.streams.confluence	4786	2017-04-13 10:18:17.381	date-sr-Cyrl-CS
com.atlassian.confluence.plugins.gadgets	4787	2017-04-13 10:18:17.381	external-gadget
com.atlassian.confluence.extra.officeconnector	4788	2017-04-13 10:18:17.381	tokenProvider
com.atlassian.plugins.confluence-tdm-merger	4789	2017-04-13 10:18:17.381	xmlOutputFactoryProvider
com.atlassian.confluence.plugins.confluence-create-content-plugin	4790	2017-04-13 10:18:17.381	blueprintSorter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4791	2017-04-13 10:18:17.381	dacidecision-index-template
com.atlassian.confluence.plugins.confluence-browser-metrics	4792	2017-04-13 10:18:17.381	spa-transitions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4793	2017-04-13 10:18:17.381	userAccessor
com.atlassian.streams.confluence	4794	2017-04-13 10:18:17.381	date-mn-MN
com.atlassian.streams	4795	2017-04-13 10:18:17.381	date-smj-NO
com.atlassian.confluence.plugins.confluence-like	4796	2017-04-13 10:18:17.381	mobile-content-like-resource
com.atlassian.streams	4797	2017-04-13 10:18:17.381	date-es-UY
com.atlassian.integration.jira.jira-integration-plugin	4798	2017-04-13 10:18:17.381	jira-create-issue-form
confluence.macros.basic	4799	2017-04-13 10:18:17.381	nl
com.atlassian.analytics.analytics-client	4800	2017-04-13 10:18:17.381	remoteFilterRead
com.atlassian.confluence.plugins.confluence-onboarding	4801	2017-04-13 10:18:17.381	onboarding-actions
com.atlassian.applinks.applinks-plugin	4802	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.streams	4803	2017-04-13 10:18:17.381	date-es-GT
com.atlassian.support.healthcheck.support-healthcheck-plugin	4804	2017-04-13 10:18:17.381	healthStatusPersistenceService
confluence.listeners.core	4805	2017-04-13 10:18:17.381	titleChangeListener
com.atlassian.crowd.embedded.admin	4806	2017-04-13 10:18:17.381	confluence-user-directories-web-item
com.atlassian.confluence.plugins.search.confluence-search	4807	2017-04-13 10:18:17.381	rest
confluence.content.action.menu	4808	2017-04-13 10:18:17.381	remove-page
com.atlassian.confluence.plugins.share-page	4809	2017-04-13 10:18:17.381	mail-page-resources
confluence.sections.space.admin	4810	2017-04-13 10:18:17.381	colorscheme
com.atlassian.applinks.applinks-basicauth-plugin	4811	2017-04-13 10:18:17.381	servletMessageFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4812	2017-04-13 10:18:17.381	pageManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4813	2017-04-13 10:18:17.381	notificationservers
com.atlassian.applinks.applinks-basicauth-plugin	4814	2017-04-13 10:18:17.381	xsrfTokenAccessor
confluence.macro.metadata.provider	4815	2017-04-13 10:18:17.381	userMacroMetadataProvider
confluence.sections.profile	4816	2017-04-13 10:18:17.381	settings
com.atlassian.plugin.notifications.notifications-module	4817	2017-04-13 10:18:17.381	notificationsRest
com.atlassian.confluence.plugins.confluence-space-blueprints	4818	2017-04-13 10:18:17.381	TeamSpaceBlueprintCreateEventListener
com.atlassian.confluence.plugins.confluence-like	4819	2017-04-13 10:18:17.381	cachedContentFinder
confluence.extra.jira	4820	2017-04-13 10:18:17.381	text-placeholders-jira
com.atlassian.confluence.plugins.confluence-space-blueprints	4821	2017-04-13 10:18:17.381	documentation-space-blueprint-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4822	2017-04-13 10:18:17.381	pacClient
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4823	2017-04-13 10:18:17.381	confluenceUserLists
com.atlassian.confluence.plugins.confluence-dashboard	4824	2017-04-13 10:18:17.381	recentlyViewedManager
com.atlassian.confluence.extra.flyingpdf	4825	2017-04-13 10:18:17.381	pdfExportSemaphore
com.atlassian.plugins.base-hipchat-integration-plugin-api	4826	2017-04-13 10:18:17.381	backbone-amd
com.atlassian.confluence.editor	4827	2017-04-13 10:18:17.381	rest
com.atlassian.auiplugin	4828	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-inline-dialog
com.atlassian.auiplugin	4829	2017-04-13 10:18:17.381	aui-labels
com.atlassian.confluence.plugins.confluence-license-rest	4830	2017-04-13 10:18:17.381	userCountService
com.atlassian.confluence.plugins.share-page	4831	2017-04-13 10:18:17.381	share-keyboard-shortcut-js-resources
confluence.web.resources	4832	2017-04-13 10:18:17.381	admin-styles
com.atlassian.analytics.analytics-client	4833	2017-04-13 10:18:17.381	confluenceSessionIdProvider
confluence.user.menu	4834	2017-04-13 10:18:17.381	user-content
com.atlassian.confluence.plugins.confluence-onboarding	4835	2017-04-13 10:18:17.381	welcome
confluence.web.resources	4836	2017-04-13 10:18:17.381	amd
com.atlassian.mywork.mywork-confluence-host-plugin	4837	2017-04-13 10:18:17.381	timeout-service
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4838	2017-04-13 10:18:17.381	upm-requests-resources
confluence.sections.space.tools	4839	2017-04-13 10:18:17.381	importpages
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4840	2017-04-13 10:18:17.381	healthmonitor-blueprint-item
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4841	2017-04-13 10:18:17.381	confluence-collaborative-editor-plugin-editor-content-resources
confluence.admin.user	4842	2017-04-13 10:18:17.381	browse-users-tab-invite
com.atlassian.applinks.applinks-oauth-plugin	4843	2017-04-13 10:18:17.381	applinksRestV2OAuth-filter
com.atlassian.confluence.plugins.confluence-easyuser-admin	4844	2017-04-13 10:18:17.381	easyuser-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	4845	2017-04-13 10:18:17.381	content-templates-actions-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-page-banner	4846	2017-04-13 10:18:17.381	content-metadata-page-restrictions
com.atlassian.mywork.mywork-confluence-host-plugin	4847	2017-04-13 10:18:17.381	clusterLockService
com.atlassian.confluence.plugins.confluence-email-resources	4848	2017-04-13 10:18:17.381	view-page-email-adg-footer-item
com.atlassian.mywork.mywork-confluence-provider-plugin	4849	2017-04-13 10:18:17.381	likeManager
com.atlassian.confluence.plugins.confluence-business-blueprints	4850	2017-04-13 10:18:17.381	blueprintsTemplateHelper
com.atlassian.streams	4851	2017-04-13 10:18:17.381	activityProviders
confluence.sections.admin	4852	2017-04-13 10:18:17.381	custompagecontent
com.atlassian.applinks.applinks-plugin	4853	2017-04-13 10:18:17.381	list-entity-links
com.atlassian.oauth.serviceprovider	4854	2017-04-13 10:18:17.381	randomizer
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4855	2017-04-13 10:18:17.381	page-edited-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-mentions-plugin	4856	2017-04-13 10:18:17.381	confluenceMentionsFinder
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4857	2017-04-13 10:18:17.381	hipchatSpaceToRoomAO
confluence.extra.jira	4858	2017-04-13 10:18:17.381	jira-issues-view-mode-resources
com.atlassian.confluence.plugins.confluence-jira-content	4859	2017-04-13 10:18:17.381	create-JIRA-issue-summary
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4860	2017-04-13 10:18:17.381	clusterLockServiceFactory
com.atlassian.confluence.plugins.confluence-dashboard	4861	2017-04-13 10:18:17.381	onboarding-dialog
com.atlassian.applinks.applinks-trustedapps-plugin	4862	2017-04-13 10:18:17.381	trustConfigurator
com.atlassian.streams.confluence	4863	2017-04-13 10:18:17.381	date-quz-PE
confluence.extractors.core	4864	2017-04-13 10:18:17.381	attachmentOwnerContentTypeExtractor
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4865	2017-04-13 10:18:17.381	homeDirectoryHealthCheck
confluence.sections.browse	4866	2017-04-13 10:18:17.381	global
com.atlassian.confluence.plugins.confluence-software-blueprints	4867	2017-04-13 10:18:17.381	retrospectives-item
confluence.macros.html	4868	2017-04-13 10:18:17.381	rss
com.atlassian.confluence.plugins.confluence-previews	4869	2017-04-13 10:18:17.381	mediaviewer-chunks
confluence.sections.admin.indexing	4870	2017-04-13 10:18:17.381	mainIndexRecoverer
com.atlassian.confluence.plugins.search.confluence-search	4871	2017-04-13 10:18:17.381	nonViewableContentTypeFilterFactory
confluence.search.mappers.lucene	4872	2017-04-13 10:18:17.381	contributor
com.atlassian.streams	4873	2017-04-13 10:18:17.381	date-es-HN
com.atlassian.plugins.less-transformer-plugin	4874	2017-04-13 10:18:17.381	webstaticUriResolver
com.atlassian.auiplugin	4875	2017-04-13 10:18:17.381	aui-toolbar2
com.atlassian.confluence.plugins.confluence-edge-index	4876	2017-04-13 10:18:17.381	userDtoFactory
com.atlassian.support.stp	4877	2017-04-13 10:18:17.381	confluence-mail-utility
com.atlassian.streams	4878	2017-04-13 10:18:17.381	date-gl-ES
com.atlassian.confluence.plugins.confluence-create-content-plugin	4879	2017-04-13 10:18:17.381	localeManager
com.atlassian.confluence.plugins.search.confluence-search	4880	2017-04-13 10:18:17.381	blank
com.atlassian.streams	4881	2017-04-13 10:18:17.381	date-hy-AM
com.atlassian.confluence.plugins.confluence-email-resources	4882	2017-04-13 10:18:17.381	template-utils-anonymous-user-link-1.0.0
com.atlassian.confluence.extra.widgetconnector	4883	2017-04-13 10:18:17.381	statusImagegenerator
confluence.web.resources	4884	2017-04-13 10:18:17.381	vmI18n
confluence.sections.space.advanced	4885	2017-04-13 10:18:17.381	orphan
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4886	2017-04-13 10:18:17.381	confluence-blogpost-edited-batching
com.atlassian.plugins.atlassian-nav-links-plugin	4887	2017-04-13 10:18:17.381	customAppService
com.atlassian.auiplugin	4888	2017-04-13 10:18:17.381	internal-css.escape-1.5.0-css-escape
com.atlassian.auiplugin	4889	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-events
confluence.macros.advanced	4890	2017-04-13 10:18:17.381	contentbylabel-excerpt-migrator
com.atlassian.streams.core	4891	2017-04-13 10:18:17.381	userManager
com.atlassian.plugin.notifications.notifications-module	4892	2017-04-13 10:18:17.381	serverFactory
com.atlassian.plugins.atlassian-nav-links-plugin	4893	2017-04-13 10:18:17.381	module-factory
confluence.search.mappers.lucene	4894	2017-04-13 10:18:17.381	boolean
com.atlassian.confluence.plugins.confluence-create-content-plugin	4895	2017-04-13 10:18:17.381	blueprintManager
com.atlassian.confluence.extra.widgetconnector	4896	2017-04-13 10:18:17.381	metacafe
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4897	2017-04-13 10:18:17.381	mailServerManager
com.atlassian.plugins.atlassian-nav-links-plugin	4898	2017-04-13 10:18:17.381	http-client-factory
com.atlassian.confluence.plugins.confluence-create-content-plugin	4900	2017-04-13 10:18:17.381	create-blog-post
confluence.listeners.core	4901	2017-04-13 10:18:17.381	velocityPluginListener
confluence.listeners.core	4902	2017-04-13 10:18:17.381	flushUserCheckerOnLicenseUpdate
com.atlassian.streams	4903	2017-04-13 10:18:17.381	date-smj-SE
com.atlassian.confluence.plugins.confluence-inline-comments	4904	2017-04-13 10:18:17.381	display-comment-view
com.atlassian.confluence.extra.flyingpdf	4905	2017-04-13 10:18:17.381	pdfexport-soap
com.atlassian.plugins.atlassian-nav-links-plugin	4906	2017-04-13 10:18:17.381	mutatingEntityLinkService
com.atlassian.plugins.atlassian-whitelist-core-plugin	4907	2017-04-13 10:18:17.381	aoWhitelistRulesDao
confluence.web.resources	4908	2017-04-13 10:18:17.381	jsUri
com.atlassian.confluence.plugins.confluence-inline-tasks	4909	2017-04-13 10:18:17.381	email-resources
com.atlassian.confluence.plugins.confluence-mentions-plugin	4910	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.analytics.analytics-client	4911	2017-04-13 10:18:17.381	serverIdProvider
com.atlassian.confluence.ext.newcode-macro-plugin	4912	2017-04-13 10:18:17.381	macro-icons
com.atlassian.streams.confluence	4913	2017-04-13 10:18:17.381	templateRendererFactory
com.atlassian.auiplugin	4914	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-animation
confluence.sections.page.temp	4915	2017-04-13 10:18:17.381	edit-page
com.atlassian.confluence.plugins.gadgets	4916	2017-04-13 10:18:17.381	outboundWhitelist
confluence.user.menu	4917	2017-04-13 10:18:17.381	settings
com.atlassian.confluence.plugins.search.confluence-search	4918	2017-04-13 10:18:17.381	searchv3Filter
com.atlassian.confluence.plugins.confluence-create-content-plugin	4919	2017-04-13 10:18:17.381	globalBlueprintsUpgradeTask
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4920	2017-04-13 10:18:17.381	integrations
com.atlassian.support.stp	4921	2017-04-13 10:18:17.381	licenseStatusService
com.atlassian.applinks.applinks-trustedapps-plugin	4922	2017-04-13 10:18:17.381	servletMessageFactory
com.atlassian.auiplugin	4923	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-debounce
com.atlassian.confluence.plugins.search.confluence-search	4924	2017-04-13 10:18:17.381	filterFactory
confluence.extra.impresence2	4925	2017-04-13 10:18:17.381	aim
confluence.listeners.core	4926	2017-04-13 10:18:17.381	asyncPageNotificationsListener
com.atlassian.confluence.plugins.confluence-mobile	4927	2017-04-13 10:18:17.381	mobileViewRenderer
com.atlassian.querylang.confluence-cql-plugin	4928	2017-04-13 10:18:17.381	end-of-week-one-arg-function
com.atlassian.streams.actions	4929	2017-04-13 10:18:17.381	moduleFactory
com.atlassian.mywork.mywork-confluence-host-plugin	4930	2017-04-13 10:18:17.381	task-cleaner-scheduler
com.atlassian.crowd.embedded.admin	4931	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.confluence-daily-summary-email	4932	2017-04-13 10:18:17.381	salUserManager
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4933	2017-04-13 10:18:17.381	confluenceEmoticonService
com.atlassian.confluence.image.effects.ImageEffectsPlugin	4934	2017-04-13 10:18:17.381	config-resource-filter
com.atlassian.streams	4935	2017-04-13 10:18:17.381	date-es-MX
com.atlassian.confluence.ext.newcode-macro-plugin	4936	2017-04-13 10:18:17.381	sh-theme-confluence
com.atlassian.crowd.embedded.admin	4937	2017-04-13 10:18:17.381	dispatcher-servlet
com.atlassian.confluence.plugins.confluence-inline-comments	4938	2017-04-13 10:18:17.381	inlineCommentExtensions
confluence.content.action.menu	4939	2017-04-13 10:18:17.381	view-attachments
com.atlassian.applinks.applinks-plugin	4940	2017-04-13 10:18:17.381	compatibility-css
confluence.sections.profile	4941	2017-04-13 10:18:17.381	view-profile
com.atlassian.analytics.analytics-client	4942	2017-04-13 10:18:17.381	events-logged
com.atlassian.auiplugin	4943	2017-04-13 10:18:17.381	jquery-throbber
com.atlassian.streams	4944	2017-04-13 10:18:17.381	date-es-NI
com.atlassian.confluence.plugins.confluence-knowledge-base	4945	2017-04-13 10:18:17.381	kb-troubleshooting-item
com.atlassian.confluence.plugins.confluence-inline-comments	4946	2017-04-13 10:18:17.381	inline-comment-email-soy-templates-2
com.atlassian.confluence.plugins.confluence-software-blueprints	4947	2017-04-13 10:18:17.381	requirements-resources
confluence.extra.attachments	4948	2017-04-13 10:18:17.381	space-attachments
com.atlassian.confluence.plugins.expand-macro	4949	2017-04-13 10:18:17.381	expand-macro-soy-templates
com.atlassian.confluence.plugins.gadgets	4950	2017-04-13 10:18:17.381	gadget
com.atlassian.analytics.analytics-client	4951	2017-04-13 10:18:17.381	analytics-configuration-servlet
com.atlassian.auiplugin	4952	2017-04-13 10:18:17.381	modernizr-touch
com.atlassian.confluence.plugins.confluence-knowledge-base	4953	2017-04-13 10:18:17.381	confluenceAccessManager
com.atlassian.confluence.editor	4954	2017-04-13 10:18:17.381	table-resizable-plugin
com.atlassian.confluence.ext.newcode-macro-plugin	4955	2017-04-13 10:18:17.381	sh-theme-fadetogrey
com.atlassian.confluence.plugins.confluence-edge-index	4956	2017-04-13 10:18:17.381	edgeTypeRepository
com.atlassian.applinks.applinks-plugin	4957	2017-04-13 10:18:17.381	bamboo
com.atlassian.querylang.confluence-cql-plugin	4958	2017-04-13 10:18:17.381	end-of-year-zero-arg-function
confluence.web.resources	4959	2017-04-13 10:18:17.381	login
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4960	2017-04-13 10:18:17.381	batching-notification
com.atlassian.confluence.extra.officeconnector	4961	2017-04-13 10:18:17.381	excel2k7ContentExtractor
com.atlassian.auiplugin	4962	2017-04-13 10:18:17.381	internal-inline-dialog-common
confluence.web.resources	4963	2017-04-13 10:18:17.381	dashboard-resources
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4964	2017-04-13 10:18:17.381	storageEngineCheck
com.atlassian.streams.confluence	4965	2017-04-13 10:18:17.381	date-ns-ZA
com.atlassian.plugins.atlassian-nav-links-plugin	4966	2017-04-13 10:18:17.381	content-links-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	4967	2017-04-13 10:18:17.381	view-comment-email-batch-item
confluence.listeners.core	4968	2017-04-13 10:18:17.381	searchResultRendererCache
confluence.sections.admin	4969	2017-04-13 10:18:17.381	users
com.atlassian.applinks.applinks-plugin	4970	2017-04-13 10:18:17.381	internalHostApplication
com.atlassian.streams	4971	2017-04-13 10:18:17.381	date-fr-FR
com.atlassian.plugin.jslibs	4972	2017-04-13 10:18:17.381	d3-3.3.13
com.atlassian.auiplugin	4973	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-internal-amdify
com.atlassian.streams	4974	2017-04-13 10:18:17.381	date-syr-SY
confluence.extra.confluencerpc	4975	2017-04-13 10:18:17.381	confluence-xmlrpc-2
com.atlassian.confluence.plugins.confluence-space-ia	4976	2017-04-13 10:18:17.381	spacebar-blogs
com.atlassian.confluence.plugins.confluence-onboarding	4977	2017-04-13 10:18:17.381	notification-template-less-users-body
com.atlassian.confluence.plugins.confluence-request-access-plugin	4978	2017-04-13 10:18:17.381	grantAccessRequestValidator
com.atlassian.plugins.atlassian-whitelist-core-plugin	4979	2017-04-13 10:18:17.381	defaultPermissionChecker
com.atlassian.confluence.plugins.drag-and-drop	4980	2017-04-13 10:18:17.381	drop-zone-for-image-dialog
confluence.sections.space.pages	4981	2017-04-13 10:18:17.381	list-content-tree
com.atlassian.confluence.plugins.confluence-user-profile	4982	2017-04-13 10:18:17.381	editprofilepicture
com.atlassian.instrumentation.atlassian-instrumentation-expose-jmx	4983	2017-04-13 10:18:17.381	jmxInstrumentNamerImpl
org.randombits.confluence.toc	4984	2017-04-13 10:18:17.381	toc-plugin-styles
com.atlassian.auiplugin	4985	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-is-visible
com.atlassian.analytics.analytics-client	4986	2017-04-13 10:18:17.381	analyticConfig
com.atlassian.confluence.plugins.confluence-mentions-plugin	4987	2017-04-13 10:18:17.381	dateEntityFactory
com.atlassian.gadgets.opensocial	4988	2017-04-13 10:18:17.381	directory-checking-servlet-filter
com.atlassian.confluence.plugins.confluence-email-resources	4989	2017-04-13 10:18:17.381	reply-to-comment-email-footer-item
com.atlassian.plugins.atlassian-plugins-webresource-plugin	4990	2017-04-13 10:18:17.381	context-path
com.atlassian.applinks.applinks-plugin	4991	2017-04-13 10:18:17.381	bitbucketProject
confluence.web.resources	4992	2017-04-13 10:18:17.381	rss-feed-builder
com.atlassian.confluence.plugins.pagetree	4993	2017-04-13 10:18:17.381	pagetreesearch
confluence.sections.space.browse	4994	2017-04-13 10:18:17.381	browse-space
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4995	2017-04-13 10:18:17.381	featureDiscovery
confluence.extra.jira	4996	2017-04-13 10:18:17.381	jiraissues
com.atlassian.crowd.embedded.admin	4997	2017-04-13 10:18:17.381	supported-directory-permission-options
com.atlassian.applinks.applinks-plugin	4998	2017-04-13 10:18:17.381	bitbucket
com.atlassian.confluence.plugins.confluence-page-banner	4999	2017-04-13 10:18:17.381	page-banner-panel
confluence.search.mappers.lucene	5000	2017-04-13 10:18:17.381	attachmentType
com.atlassian.auiplugin	5001	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-flag
com.atlassian.confluence.editor	5002	2017-04-13 10:18:17.381	editor-insert-files
com.atlassian.confluence.plugins.confluence-dashboard	5003	2017-04-13 10:18:17.381	spa-friendly-metadata-provider
com.atlassian.confluence.plugins.confluence-nav-links	5004	2017-04-13 10:18:17.381	admin
confluence.macros.basic	5005	2017-04-13 10:18:17.381	anchor
com.atlassian.oauth.serviceprovider	5006	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5007	2017-04-13 10:18:17.381	confluenceHostLicenseEventReader
com.atlassian.oauth.serviceprovider	5008	2017-04-13 10:18:17.381	templateRenderer
com.atlassian.analytics.analytics-client	5009	2017-04-13 10:18:17.381	lastPrivacyPolicyUpdateDateProvider
com.atlassian.analytics.analytics-client	5010	2017-04-13 10:18:17.381	confluenceSystemShutdownDetector
com.atlassian.confluence.plugins.confluence-easyuser-admin	5011	2017-04-13 10:18:17.381	confluence-easyuser-mailServerDeletedListener
com.atlassian.confluence.plugins.confluence-knowledge-base	5012	2017-04-13 10:18:17.381	kb-serviceDeskExternalCustomerServletFilter-component
com.atlassian.templaterenderer.api	5013	2017-04-13 10:18:17.381	templateContextFactory
com.atlassian.confluence.plugins.dashboard-actions	5014	2017-04-13 10:18:17.381	add-space
confluence.lifecycle.core	5015	2017-04-13 10:18:17.381	removeindexwritelock
com.atlassian.auiplugin	5016	2017-04-13 10:18:17.381	internal-ajs-no-context-path
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	5017	2017-04-13 10:18:17.381	collab-xwork
com.atlassian.confluence.plugins.confluence-business-blueprints	5018	2017-04-13 10:18:17.381	sharelinks-service
org.randombits.confluence.toc	5019	2017-04-13 10:18:17.381	toc
com.atlassian.confluence.plugins.recently-viewed-plugin	5020	2017-04-13 10:18:17.381	open.recent
confluence.macros.advanced	5021	2017-04-13 10:18:17.381	content-by-label-resources
com.atlassian.streams.confluence	5022	2017-04-13 10:18:17.381	date-ta-IN
com.atlassian.streams	5023	2017-04-13 10:18:17.381	date-te-IN
com.atlassian.streams.confluence	5024	2017-04-13 10:18:17.381	date-kok-IN
com.atlassian.analytics.analytics-client	5025	2017-04-13 10:18:17.381	confluence-logged-events-servlet
com.atlassian.confluence.plugins.confluence-sal-plugin	5026	2017-04-13 10:18:17.381	xsrfRequestValidator
com.atlassian.plugins.rest.atlassian-rest-module	5027	2017-04-13 10:18:17.381	pluginEventManager
com.atlassian.applinks.applinks-plugin	5028	2017-04-13 10:18:17.381	manifestRetriever
com.atlassian.plugins.atlassian-nav-links-plugin	5029	2017-04-13 10:18:17.381	initialiseCustomOrderFlagUpgradeTask
com.atlassian.applinks.applinks-plugin	5030	2017-04-13 10:18:17.381	propertyService
com.atlassian.confluence.plugins.share-page	5031	2017-04-13 10:18:17.381	share-page-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-ui-components	5032	2017-04-13 10:18:17.381	pagination
com.atlassian.confluence.plugins.confluence-create-content-plugin	5033	2017-04-13 10:18:17.381	create-dialog-init-params
confluence.sections.admin	5034	2017-04-13 10:18:17.381	managereferers
com.atlassian.confluence.plugins.confluence-onboarding	5035	2017-04-13 10:18:17.381	notification-template-no-spaces
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	5036	2017-04-13 10:18:17.381	projectposter-blueprint-item
com.atlassian.plugin.notifications.notifications-module	5037	2017-04-13 10:18:17.381	chosen
com.atlassian.streams	5038	2017-04-13 10:18:17.381	applicationProperties
com.atlassian.confluence.plugins.confluence-browser-metrics	5039	2017-04-13 10:18:17.381	defer-js
com.atlassian.confluence.plugins.confluence-paste	5040	2017-04-13 10:18:17.381	autoconvert-youtu.be-rewrite
confluence.renderer.components	5041	2017-04-13 10:18:17.381	force-newline
confluence.search.mappers.lucene	5042	2017-04-13 10:18:17.381	chainedSearchFilter
com.atlassian.confluence.plugins.confluence-email-resources	5043	2017-04-13 10:18:17.381	notification-templates-page-moved-2.0.0
confluence.extra.dynamictasklist2	5044	2017-04-13 10:18:17.381	tasklist-servlet
com.atlassian.mywork.mywork-confluence-host-plugin	5045	2017-04-13 10:18:17.381	mw-header-anchor
com.atlassian.auiplugin	5046	2017-04-13 10:18:17.381	aui-header-unresponsive
com.atlassian.applinks.applinks-basicauth-plugin	5047	2017-04-13 10:18:17.381	webSudoManager
com.atlassian.confluence.plugins.pagetree	5048	2017-04-13 10:18:17.381	pagetreesearchactions
com.atlassian.mywork.mywork-confluence-provider-plugin	5049	2017-04-13 10:18:17.381	taskService
com.atlassian.confluence.plugins.search.confluence-search	5050	2017-04-13 10:18:17.381	es-siteSearch-query-mapper
confluence.sections.space.advanced	5051	2017-04-13 10:18:17.381	undefined
com.atlassian.confluence.plugins.confluence-mobile	5052	2017-04-13 10:18:17.381	mobile-dashboard-redirect-filter
confluence.extra.webdav	5053	2017-04-13 10:18:17.381	webdav-servlet
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	5054	2017-04-13 10:18:17.381	metaWeblog-xmlrpc
com.atlassian.auiplugin	5055	2017-04-13 10:18:17.381	internal-aui-is-input
com.atlassian.confluence.plugins.confluence-mobile	5056	2017-04-13 10:18:17.381	viewLinkSubMarshallerFactory
com.atlassian.auiplugin	5057	2017-04-13 10:18:17.381	aui-dropdown2
com.atlassian.gadgets.oauth.serviceprovider	5058	2017-04-13 10:18:17.381	helpLinkResolverContextItem
com.atlassian.confluence.plugins.confluence-file-notifications	5059	2017-04-13 10:18:17.381	file-content-email-soy-templates
com.atlassian.applinks.applinks-plugin	5060	2017-04-13 10:18:17.381	confluence-inbound-basic
confluence.sections.admin	5061	2017-04-13 10:18:17.381	quickpipesettings
com.atlassian.mywork.mywork-confluence-host-plugin	5062	2017-04-13 10:18:17.381	notification-dao
confluence.extra.masterdetail	5063	2017-04-13 10:18:17.381	detailssummary-migrator
com.atlassian.mywork.mywork-confluence-host-plugin	5064	2017-04-13 10:18:17.381	notificationRendererService
com.atlassian.confluence.plugins.confluence-daily-summary-email	5065	2017-04-13 10:18:17.381	summaryEmailTrackingServlet
com.atlassian.confluence.plugins.confluence-file-notifications	5066	2017-04-13 10:18:17.381	notificationUserService
com.atlassian.applinks.applinks-plugin	5067	2017-04-13 10:18:17.381	refappCharlie
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	5068	2017-04-13 10:18:17.381	darkFeaturesManager
com.atlassian.analytics.analytics-client	5069	2017-04-13 10:18:17.381	confluenceBaseDataLogger
com.atlassian.support.healthcheck.support-healthcheck-plugin	5070	2017-04-13 10:18:17.381	confluenceLicenseService
com.atlassian.confluence.plugins.quickreload	5071	2017-04-13 10:18:17.381	vcacheFactory
com.atlassian.confluence.plugins.confluence-jira-metadata	5072	2017-04-13 10:18:17.381	jira-metadata-cache-config
com.atlassian.auiplugin	5073	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-events
confluence.web.resources	5074	2017-04-13 10:18:17.381	constants
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5075	2017-04-13 10:18:17.381	settingsService
com.atlassian.confluence.plugins.confluence-create-content-plugin	5076	2017-04-13 10:18:17.381	blueprintDiscoverer
com.atlassian.confluence.plugins.confluence-mentions-plugin	5077	2017-04-13 10:18:17.381	mentions-styling
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5078	2017-04-13 10:18:17.381	pluginLicenseRepository
com.atlassian.streams.core	5079	2017-04-13 10:18:17.381	streamsEntryRendererFactory
confluence.search.mappers.lucene	5080	2017-04-13 10:18:17.381	favouriteSort
com.atlassian.plugins.atlassian-whitelist-ui-plugin	5081	2017-04-13 10:18:17.381	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5082	2017-04-13 10:18:17.381	hipChatIntegrationDiscoveryService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5083	2017-04-13 10:18:17.381	confluenceNotificationPreferenceManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5084	2017-04-13 10:18:17.381	ao-module
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5085	2017-04-13 10:18:17.381	blogpost-created-notification-transformer
com.atlassian.confluence.plugins.confluence-space-ia	5086	2017-04-13 10:18:17.381	header-sidebar-styles-panel
com.atlassian.confluence.plugins.confluence-email-tracker	5087	2017-04-13 10:18:17.381	contentEntityManager
confluence.extractors.core	5088	2017-04-13 10:18:17.381	homePageChangeExtractor
com.atlassian.confluence.plugins.confluence-like	5089	2017-04-13 10:18:17.381	liked-page-action-view-blog-post-link
com.atlassian.confluence.extra.widgetconnector	5090	2017-04-13 10:18:17.381	xwork-actions
confluence.macro.metadata.provider	5091	2017-04-13 10:18:17.381	allMacroMetadataCache
com.atlassian.confluence.plugins.confluence-like	5092	2017-04-13 10:18:17.381	rest
com.atlassian.confluence.plugins.confluence-business-blueprints	5093	2017-04-13 10:18:17.381	sharelinks-urlmacro-resources
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	5094	2017-04-13 10:18:17.381	projectposter-blueprint
com.atlassian.auiplugin	5095	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-select2
com.atlassian.streams	5096	2017-04-13 10:18:17.381	date-ca-ES
com.atlassian.confluence.tinymceplugin	5097	2017-04-13 10:18:17.381	editor-resources
com.atlassian.streams	5098	2017-04-13 10:18:17.381	date-xh-ZA
confluence.extra.impresence2	5099	2017-04-13 10:18:17.381	reporter-icq
com.atlassian.confluence.contributors	5100	2017-04-13 10:18:17.381	watchiContributionExtractor
com.atlassian.streams	5101	2017-04-13 10:18:17.381	date-fr-LU
com.atlassian.confluence.plugins.confluence-email-resources	5102	2017-04-13 10:18:17.381	notification-templates-content-created-2.0.0
com.atlassian.confluence.plugins.confluence-inline-tasks	5103	2017-04-13 10:18:17.381	view-all-my-tasks-email-action-item
confluence.sections.space.tools	5104	2017-04-13 10:18:17.381	browse
com.atlassian.auiplugin	5105	2017-04-13 10:18:17.381	aui-table-sortable
com.atlassian.confluence.editor	5106	2017-04-13 10:18:17.381	charmap-resources
com.atlassian.mywork.mywork-confluence-provider-plugin	5107	2017-04-13 10:18:17.381	eventListener
confluence.macros.advanced	5108	2017-04-13 10:18:17.381	contentbylabel
com.atlassian.support.healthcheck.support-healthcheck-plugin	5109	2017-04-13 10:18:17.381	helpPathResolver
confluence.renderer.components	5110	2017-04-13 10:18:17.381	camelcase
confluence.macros.multimedia	5111	2017-04-13 10:18:17.381	audio
com.atlassian.plugin.notifications.notifications-module	5112	2017-04-13 10:18:17.381	notification-server
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5113	2017-04-13 10:18:17.381	blogpost-trashed-notification-template-body
com.atlassian.confluence.extra.widgetconnector	5114	2017-04-13 10:18:17.381	outboundWhitelist
com.atlassian.streams	5115	2017-04-13 10:18:17.381	date-fr-MC
com.atlassian.auiplugin	5116	2017-04-13 10:18:17.381	aui-progress-indicator
com.atlassian.confluence.plugins.confluence-like	5117	2017-04-13 10:18:17.381	liked-page-action-view-page-link
com.atlassian.confluence.plugins.confluence-browser-metrics	5118	2017-04-13 10:18:17.381	legacy-browser-metrics
com.atlassian.confluence.plugins.confluence-software-blueprints	5119	2017-04-13 10:18:17.381	common-resources
confluence.listeners.core	5120	2017-04-13 10:18:17.381	cdn-cache-flush-listener
confluence.sections.profile.view	5121	2017-04-13 10:18:17.381	profile-js
confluence.macros.multimedia	5122	2017-04-13 10:18:17.381	multimedia
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5123	2017-04-13 10:18:17.381	salWebSudoManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5124	2017-04-13 10:18:17.381	forgot-password-notification-template
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5125	2017-04-13 10:18:17.381	pluginRestUninstaller
com.atlassian.confluence.plugins.gadgets	5126	2017-04-13 10:18:17.381	core-services
com.atlassian.confluence.plugins.confluence-mentions-plugin	5127	2017-04-13 10:18:17.381	mention-email-like-link
com.atlassian.plugins.atlassian-nav-links-plugin	5128	2017-04-13 10:18:17.381	custom-apps-admin-ui
com.atlassian.mywork.mywork-confluence-provider-plugin	5129	2017-04-13 10:18:17.381	locale-service
com.atlassian.confluence.plugins.confluence-user-rest	5130	2017-04-13 10:18:17.381	pluginsSettingsFactory
com.atlassian.applinks.applinks-oauth-plugin	5131	2017-04-13 10:18:17.381	applinksRestV2OAuth
com.atlassian.confluence.plugins.editor-loader	5132	2017-04-13 10:18:17.381	editor-loader-actions
com.atlassian.confluence.plugins.share-page	5133	2017-04-13 10:18:17.381	share
confluence.extractors.core	5134	2017-04-13 10:18:17.381	contentPermissionsExtractor
confluence.macros.multimedia	5135	2017-04-13 10:18:17.381	macro-browser-smart-fields
confluence.macros.advanced	5136	2017-04-13 10:18:17.381	excerpt-include
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5137	2017-04-13 10:18:17.381	hipChatContextProvider
com.atlassian.confluence.plugins.confluence-inline-comments	5138	2017-04-13 10:18:17.381	models
com.atlassian.confluence.plugins.confluence-email-resources	5139	2017-04-13 10:18:17.381	content-templates-page-link-pattern-2.0.0
confluence.listeners.core	5140	2017-04-13 10:18:17.381	confluenceCachingBandanaListener
com.atlassian.confluence.plugins.confluence-knowledge-base	5141	2017-04-13 10:18:17.381	space-kb-web-resource
com.atlassian.plugins.issue-status-plugin	5142	2017-04-13 10:18:17.381	issue-status-resources
confluence.renderer.components	5143	2017-04-13 10:18:17.381	link
com.atlassian.confluence.plugins.confluence-nav-links	5144	2017-04-13 10:18:17.381	rotp.project.shortcuts
com.atlassian.confluence.plugins.confluence-email-resources	5145	2017-04-13 10:18:17.381	notification-templates-comment-add-1.0.0
com.atlassian.support.stp	5146	2017-04-13 10:18:17.381	pluginEventManager
com.atlassian.streams.confluence	5147	2017-04-13 10:18:17.381	date-et-EE
confluence.extra.impresence2	5148	2017-04-13 10:18:17.381	skypeme-migrator
com.atlassian.confluence.plugins.confluence-email-resources	5149	2017-04-13 10:18:17.381	stop-watching-space-blogs-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-files	5150	2017-04-13 10:18:17.381	fileVersionsById
com.atlassian.streams.actions	5151	2017-04-13 10:18:17.381	streams-action-handlers
confluence.macros.basic	5152	2017-04-13 10:18:17.381	panel
org.randombits.confluence.toc	5153	2017-04-13 10:18:17.381	client-side-toc-resources
com.atlassian.auiplugin	5154	2017-04-13 10:18:17.381	aui-experimental-expander
com.atlassian.auiplugin	5155	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-firebug
com.atlassian.confluence.plugins.confluence-ui-components	5156	2017-04-13 10:18:17.381	blank-placeholder-box
confluence.web.resources	5157	2017-04-13 10:18:17.381	console-instrumentation
com.atlassian.oauth.serviceprovider	5158	2017-04-13 10:18:17.381	pluginScheduler
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	5159	2017-04-13 10:18:17.381	ao-module
confluence.getting-started	5160	2017-04-13 10:18:17.381	getting-started-resources
com.atlassian.confluence.extra.flyingpdf	5161	2017-04-13 10:18:17.381	configpdfstyle-2
com.atlassian.plugins.atlassian-nav-links-plugin	5162	2017-04-13 10:18:17.381	capability-service
org.randombits.confluence.toc	5163	2017-04-13 10:18:17.381	toc-zone-regex-migrator
com.atlassian.confluence.plugins.gadgets	5164	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	5165	2017-04-13 10:18:17.381	system-monitoring
com.atlassian.confluence.plugins.confluence-request-access-plugin	5166	2017-04-13 10:18:17.381	userService
com.atlassian.confluence.plugins.confluence-email-resources	5167	2017-04-13 10:18:17.381	content-templates-2.0.0
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	5168	2017-04-13 10:18:17.381	confluence-feature-discovery-plugin-resources
com.atlassian.plugins.base-hipchat-integration-plugin	5169	2017-04-13 10:18:17.381	hipchat-dialog
com.atlassian.confluence.plugins.soy	5170	2017-04-13 10:18:17.381	soy-static-resource-url-prefix-function
com.atlassian.plugins.jquery	5171	2017-04-13 10:18:17.381	jquery
com.atlassian.analytics.analytics-client	5172	2017-04-13 10:18:17.381	renderer
com.atlassian.confluence.plugins.confluence-inline-tasks	5173	2017-04-13 10:18:17.381	task-hipchat-notification-template
com.atlassian.integration.jira.jira-integration-plugin	5174	2017-04-13 10:18:17.381	jiraConfig
com.atlassian.confluence.plugins.soy	5175	2017-04-13 10:18:17.381	confluenceSoyTemplateRenderer
com.atlassian.confluence.editor	5176	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.recently-viewed-plugin	5177	2017-04-13 10:18:17.381	threadLocalDelegateExecutorFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5178	2017-04-13 10:18:17.381	atlassianAnalyticsPublisher
com.atlassian.confluence.editor	5179	2017-04-13 10:18:17.381	mailServerExistsCriteria
com.atlassian.confluence.plugins.confluence-templates	5180	2017-04-13 10:18:17.381	confluenceTemplateWhiteList
com.atlassian.plugin.notifications.notifications-module	5181	2017-04-13 10:18:17.381	notification-handler
confluence.macros.advanced	5182	2017-04-13 10:18:17.381	gallery-resources
com.atlassian.auiplugin	5183	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-jquery-jquery-hotkeys
com.atlassian.confluence.plugins.confluence-paste	5184	2017-04-13 10:18:17.381	autoconvert-cloudapp
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5185	2017-04-13 10:18:17.381	mpacAnalyticsPublisher
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	5186	2017-04-13 10:18:17.381	emoticonStorageToEditorTransformer
com.atlassian.auiplugin	5187	2017-04-13 10:18:17.381	aui-lozenge
com.atlassian.confluence.plugins.confluence-daily-summary-email	5188	2017-04-13 10:18:17.381	recommendedUpdatesTrackingListener
confluence.extra.layout	5189	2017-04-13 10:18:17.381	xhtml-column
com.atlassian.confluence.plugins.confluence-templates	5190	2017-04-13 10:18:17.381	space-templates
com.atlassian.plugins.base-hipchat-integration-plugin-api	5191	2017-04-13 10:18:17.381	amd
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5192	2017-04-13 10:18:17.381	analyticsWhitelist
com.atlassian.auiplugin	5193	2017-04-13 10:18:17.381	aui-sidebar
com.atlassian.confluence.plugins.confluence-file-notifications	5194	2017-04-13 10:18:17.381	file-content-remove-email-notification-template
com.atlassian.auiplugin	5195	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-button
com.atlassian.querylang.confluence-cql-plugin	5196	2017-04-13 10:18:17.381	start-of-month-zero-arg-function
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5197	2017-04-13 10:18:17.381	synchronizationManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5198	2017-04-13 10:18:17.381	forgot-password-recipients-provider
com.atlassian.confluence.plugins.pagetree	5199	2017-04-13 10:18:17.381	pagetree
com.atlassian.confluence.plugins.confluence-rest-resources	5200	2017-04-13 10:18:17.381	content-properties-metadata-provider
com.atlassian.analytics.analytics-client	5201	2017-04-13 10:18:17.381	confluenceOnDemandDetector
com.atlassian.confluence.plugins.pagetree	5202	2017-04-13 10:18:17.381	naturalchildrenaction
com.atlassian.confluence.plugins.sticky-table-headers	5203	2017-04-13 10:18:17.381	stickytableheaders-resources
confluence.sections.create	5204	2017-04-13 10:18:17.381	create-space
com.atlassian.confluence.plugins.confluence-email-resources	5205	2017-04-13 10:18:17.381	template-utils-attached-image-1.0.0
confluence.extra.webdav	5206	2017-04-13 10:18:17.381	reverseProxyCopyAndMoveDestinationFix
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	5207	2017-04-13 10:18:17.381	copy-soy
com.atlassian.auiplugin	5208	2017-04-13 10:18:17.381	aui-header-async
com.atlassian.auiplugin	5209	2017-04-13 10:18:17.381	aui-experimental-iconfont
com.atlassian.confluence.plugins.confluence-software-project	5210	2017-04-13 10:18:17.381	sp-space-decisions-template
com.atlassian.analytics.analytics-client	5211	2017-04-13 10:18:17.381	enable-analytics
com.atlassian.auiplugin	5212	2017-04-13 10:18:17.381	internal-aui-animation
com.atlassian.plugins.atlassian-whitelist-core-plugin	5213	2017-04-13 10:18:17.381	applicationLinksMigration
com.atlassian.plugins.authentication.atlassian-authentication-plugin	5214	2017-04-13 10:18:17.381	logout
com.atlassian.confluence.plugins.confluence-macro-browser	5215	2017-04-13 10:18:17.381	macro-browser-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5216	2017-04-13 10:18:17.381	userManager
confluence.sections.space.advanced	5217	2017-04-13 10:18:17.381	startwatchingall
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5218	2017-04-13 10:18:17.381	pluginRequestStore
confluence.renderer.components	5219	2017-04-13 10:18:17.381	dash
com.atlassian.applinks.applinks-trustedapps-plugin	5220	2017-04-13 10:18:17.381	pluginAccessor
confluence.extra.impresence2	5221	2017-04-13 10:18:17.381	presenceManager
com.atlassian.mywork.mywork-confluence-host-plugin	5222	2017-04-13 10:18:17.381	clientRegistrationService
com.atlassian.confluence.plugins.dialog-wizard	5223	2017-04-13 10:18:17.381	rest
com.atlassian.oauth.serviceprovider	5224	2017-04-13 10:18:17.381	unescaperContextItem
com.atlassian.confluence.editor	5225	2017-04-13 10:18:17.381	editor-labels
com.atlassian.integration.jira.jira-integration-plugin	5226	2017-04-13 10:18:17.381	jira-issues-dialog-trigger
com.atlassian.confluence.plugins.confluence-nav-links	5227	2017-04-13 10:18:17.381	settingsManager
com.atlassian.oauth.serviceprovider	5228	2017-04-13 10:18:17.381	accessTokensServlet
com.atlassian.confluence.plugins.confluence-business-blueprints	5229	2017-04-13 10:18:17.381	file-list-resources
com.atlassian.confluence.plugins.confluence-email-tracker	5230	2017-04-13 10:18:17.381	eventPublisher
com.atlassian.auiplugin	5231	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-layer-manager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5232	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	5233	2017-04-13 10:18:17.381	batchingJobConfig
com.atlassian.streams	5234	2017-04-13 10:18:17.381	date-fr-BE
com.atlassian.confluence.plugins.confluence-daily-summary-email	5235	2017-04-13 10:18:17.381	popular-content-template
com.atlassian.streams	5236	2017-04-13 10:18:17.381	date-fr-CA
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5237	2017-04-13 10:18:17.381	page-moved-notification
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5238	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.confluence.plugins.confluence-inline-tasks	5239	2017-04-13 10:18:17.381	date-helper-js-resources
confluence.web.resources	5240	2017-04-13 10:18:17.381	bigpipe
com.atlassian.confluence.plugins.confluence-email-resources	5241	2017-04-13 10:18:17.381	manage-notifications-email-adg-footer-item
com.atlassian.streams.confluence	5242	2017-04-13 10:18:17.381	date-pa-IN
confluence.admin.user	5243	2017-04-13 10:18:17.381	browsegroups
com.atlassian.auiplugin	5244	2017-04-13 10:18:17.381	internal-src-js-aui-fancy-file-input
com.atlassian.confluence.plugins.confluence-inline-tasks	5245	2017-04-13 10:18:17.381	editor-autocomplete-date-css
com.atlassian.applinks.applinks-oauth-plugin	5246	2017-04-13 10:18:17.381	oauth-2lo-config
com.atlassian.auiplugin	5247	2017-04-13 10:18:17.381	jquery-ui-position
com.atlassian.confluence.plugins.confluence-file-notifications	5248	2017-04-13 10:18:17.381	file-notifications-file-details-file-comments
com.atlassian.confluence.plugins.confluence-inline-tasks	5249	2017-04-13 10:18:17.381	view-blog-tasks-email-action-item
com.atlassian.streams	5250	2017-04-13 10:18:17.381	date-sr-Latn-BA
com.atlassian.confluence.plugins.confluence-space-directory	5251	2017-04-13 10:18:17.381	dateFormatterFactory
confluence.user.menu	5252	2017-04-13 10:18:17.381	follow
com.atlassian.confluence.plugins.confluence-link-browser	5253	2017-04-13 10:18:17.381	link-browser-tab-search
com.atlassian.gadgets.directory	5254	2017-04-13 10:18:17.381	gadget-directory-admin-client
com.atlassian.confluence.plugins.confluence-user-rest	5255	2017-04-13 10:18:17.381	confluenceUserManagementRest-filter
confluence.extra.userlister	5256	2017-04-13 10:18:17.381	confluence.extra.userlister.xwork
com.atlassian.confluence.extra.flyingpdf	5257	2017-04-13 10:18:17.381	configpdfstyle
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5258	2017-04-13 10:18:17.381	rest-filter
com.atlassian.confluence.plugins.confluence-software-project	5259	2017-04-13 10:18:17.381	SoftwareProjectSpaceEventListener
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5260	2017-04-13 10:18:17.381	renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5261	2017-04-13 10:18:17.381	velocityEscapeTool
com.atlassian.plugin.notifications.notifications-module	5262	2017-04-13 10:18:17.381	backbone
confluence.web.components	5263	2017-04-13 10:18:17.381	property-panel
com.atlassian.streams.streams-thirdparty-plugin	5264	2017-04-13 10:18:17.381	webResourceManager
confluence.extractors.core	5265	2017-04-13 10:18:17.381	contentEntityMetadataChangeExtractor
com.atlassian.confluence.plugins.confluence-inline-comments	5266	2017-04-13 10:18:17.381	likes
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5267	2017-04-13 10:18:17.381	tomcatHelper
com.atlassian.integration.jira.jira-integration-plugin	5268	2017-04-13 10:18:17.381	jira-resource-filter
com.atlassian.confluence.plugins.confluence-page-banner	5269	2017-04-13 10:18:17.381	content-metadata-page-restrictions-none
confluence.extra.jira	5270	2017-04-13 10:18:17.381	created-content-jira-remote-link-callback
com.atlassian.applinks.applinks-trustedapps-plugin	5271	2017-04-13 10:18:17.381	typeAccessor
com.atlassian.confluence.plugins.confluence-email-resources	5272	2017-04-13 10:18:17.381	reply-to-comment-email-adg-footer-item
com.atlassian.support.stp	5273	2017-04-13 10:18:17.381	webResourceManager
confluence.sections.admin.upgrade	5274	2017-04-13 10:18:17.381	resources
com.atlassian.mywork.mywork-common-plugin	5275	2017-04-13 10:18:17.381	loginUriProvider
com.atlassian.auiplugin	5276	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-result-set
com.atlassian.streams.confluence	5277	2017-04-13 10:18:17.381	xhtmlRenderer
com.atlassian.applinks.applinks-basicauth-plugin	5278	2017-04-13 10:18:17.381	requestFactory
com.atlassian.confluence.plugins.confluence-mobile	5279	2017-04-13 10:18:17.381	mobile-super-batch-exclusion-filter
confluence.filters.core	5280	2017-04-13 10:18:17.381	httpRequestStatsFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	5281	2017-04-13 10:18:17.381	tasks-recipients-provider
com.atlassian.plugin.notifications.notifications-module	5282	2017-04-13 10:18:17.381	userRole
com.atlassian.streams.confluence	5283	2017-04-13 10:18:17.381	date-smn-FI
com.atlassian.analytics.analytics-client	5284	2017-04-13 10:18:17.381	analyticsEmailHasher
com.atlassian.confluence.plugins.confluence-dashboard	5285	2017-04-13 10:18:17.381	pluginHibernateSessionFactory
com.atlassian.confluence.plugins.expand-macro	5286	2017-04-13 10:18:17.381	expand-macro-css-only
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	5287	2017-04-13 10:18:17.381	projectposter-template
com.atlassian.plugins.atlassian-nav-links-plugin	5288	2017-04-13 10:18:17.381	projectManager
com.atlassian.streams	5289	2017-04-13 10:18:17.381	appLinkServiceExtensions
com.atlassian.streams	5290	2017-04-13 10:18:17.381	date-th-TH
com.atlassian.confluence.editor	5291	2017-04-13 10:18:17.381	macroParameterTypeParser
com.atlassian.streams	5292	2017-04-13 10:18:17.381	date-sr-Latn-CS
com.atlassian.auiplugin	5293	2017-04-13 10:18:17.381	internal-@atlassian-aui-src-js-aui-restful-table-class-names
com.atlassian.confluence.plugins.confluence-jira-metadata	5294	2017-04-13 10:18:17.381	confluence-jira-metadata-rest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5295	2017-04-13 10:18:17.381	userManagerContextItem
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5296	2017-04-13 10:18:17.381	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5297	2017-04-13 10:18:17.381	confluence-upm-osgi-menu
confluence.listeners.core	5298	2017-04-13 10:18:17.381	pluginCounterInvalidator
com.atlassian.confluence.tinymceplugin	5299	2017-04-13 10:18:17.381	editor-autocomplete-resources
com.atlassian.oauth.consumer.sal	5300	2017-04-13 10:18:17.381	tokenStore
com.atlassian.plugin.notifications.notifications-module	5301	2017-04-13 10:18:17.381	userServerManager
com.atlassian.streams	5302	2017-04-13 10:18:17.381	date-lv-LV
com.atlassian.confluence.plugins.confluence-inline-comments	5303	2017-04-13 10:18:17.381	display-reply-view
com.atlassian.streams	5304	2017-04-13 10:18:17.381	date-fr-CH
confluence.web.resources	5305	2017-04-13 10:18:17.381	aui-experimental
com.atlassian.confluence.extra.widgetconnector	5306	2017-04-13 10:18:17.381	web-widget-xhtml
com.atlassian.confluence.plugins.confluence-email-resources	5307	2017-04-13 10:18:17.381	content-templates-contextual-excerpt-pattern-1.0.0
com.atlassian.applinks.applinks-plugin	5308	2017-04-13 10:18:17.381	velocityContextFactory
com.atlassian.auiplugin	5309	2017-04-13 10:18:17.381	aui-select
com.atlassian.applinks.applinks-trustedapps-plugin	5310	2017-04-13 10:18:17.381	webResourceUrlProvider
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5311	2017-04-13 10:18:17.381	bandanaToAoMigrationController
com.atlassian.support.stp	5312	2017-04-13 10:18:17.381	supportZipFileServerServlet
com.atlassian.querylang.confluence-cql-plugin	5313	2017-04-13 10:18:17.381	now-zero-arg-function
com.atlassian.confluence.plugins.confluence-dashboard	5314	2017-04-13 10:18:17.381	confluenceDashboardWhiteList
com.atlassian.applinks.applinks-oauth-plugin	5315	2017-04-13 10:18:17.381	applinks-oauth-ui
com.atlassian.plugins.atlassian-nps-plugin	5316	2017-04-13 10:18:17.381	nps-amd-shims
com.atlassian.plugin.jslibs	5317	2017-04-13 10:18:17.381	uri-1.14.1
com.atlassian.integration.jira.jira-integration-plugin	5318	2017-04-13 10:18:17.381	i18nResolver
com.atlassian.confluence.keyboardshortcuts	5319	2017-04-13 10:18:17.381	tinymce.p
\.


--
-- Name: AO_6384AB_FEATURE_METADATA_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_6384AB_FEATURE_METADATA_AO_ID_seq"', 5319, true);


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
\.


--
-- Name: AO_88263F_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_88263F_HEALTH_CHECK_STATUS_ID_seq"', 1, false);


--
-- Data for Name: AO_88263F_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY "AO_88263F_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
\.


--
-- Name: AO_88263F_PROPERTIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_88263F_PROPERTIES_ID_seq"', 1, false);


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
360467	PAGE	1	2017-04-13 10:19:55.123	TEST	2c9480835b66d1e8015b66d2d7280000
\.


--
-- Name: AO_92296B_AORECENTLY_VIEWED_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_92296B_AORECENTLY_VIEWED_ID_seq"', 1, true);


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
819201	TEST	Space	753667
819202	TEST	Space	753668
819203	TEST	Space	753669
819204	TEST	Space	753670
819205	TEST	Space	753671
819206	TEST	Space	753672
819207	TEST	Space	753673
819208	TEST	Space	753674
819209	TEST	Space	753675
819210	TEST	Space	753676
819211	TEST	Space	753677
819212	TEST	Space	753678
819213	TEST	Space	753679
819214	TEST	Space	753680
819215	TEST	Space	753681
819216	TEST	Space	753682
819217	TEST	Space	753683
819218	TEST	Space	753684
819219	TEST	Space	753685
819220	TEST	Space	753686
819221	TEST	Space	753687
819222	TEST	Space	753688
819223	TEST	Space	753689
819224	TEST	Space	753690
819225	TEST	Space	753691
819226	TEST	Space	753692
819227	TEST	Space	753693
819228	TEST	Space	753694
819229	TEST	Space	753695
819230	TEST	Space	753696
819231	TEST	Space	753697
819232	TEST	Space	753698
819233	TEST	Space	753699
819234	TEST	Space	753700
819235	TEST	Space	753701
819236	TEST	Space	753702
819237	TEST	Space	753703
819238	TEST	Space	753704
819239	TEST	Space	753705
819240	TEST	Space	753706
819241	TEST	Space	753707
819242	TEST	Space	753708
819243	TEST	Space	753709
819244	TEST	Space	753710
819245	TEST	Space	753711
819246	TEST	Space	753712
819247	TEST	Space	753713
819248	TEST	Space	753714
819249	TEST	Space	753715
819250	TEST	Space	753716
819251	TEST	Space	753717
819252	TEST	Space	753718
819253	TEST	Space	753719
819254	TEST	Space	753720
819255	TEST	Space	753721
819256	TEST	Space	753722
819257	TEST	Space	753723
819258	TEST	Space	753724
819259	TEST	Space	753725
819260	TEST	Space	753726
819261	TEST	Space	753727
819262	TEST	Space	753728
819263	TEST	Space	753729
819264	TEST	Space	753730
819265	TEST	Space	753731
819266	TEST	Space	753732
819267	TEST	Space	753733
819268	TEST	Space	753734
819269	TEST	Space	753735
819270	TEST	Space	753736
819271	TEST	Space	753737
819272	TEST	Space	753738
819273	TEST	Space	753739
819274	TEST	Space	753740
819275	TEST	Space	753741
819276	TEST	Space	753742
819277	TEST	Space	753743
819278	TEST	Space	753744
819279	TEST	Space	753745
819280	TEST	Space	753746
819281	TEST	Space	753747
819282	TEST	Space	753748
819283	TEST	Space	753749
819284	TEST	Space	753750
819285	TEST	Space	753751
819286	TEST	Space	753752
819287	TEST	Space	753753
819288	TEST	Space	753754
819289	TEST	Space	753755
819290	TEST	Space	753756
819291	TEST	Space	753757
819292	TEST	Space	753758
819293	TEST	Space	753759
819294	TEST	Space	753760
819295	TEST	Space	753761
819296	TEST	Space	753762
819297	TEST	Space	753763
819298	TEST	Space	753764
819299	TEST	Space	753765
819300	TEST	Space	753766
819301	TEST	Space	753767
819302	TEST	Space	753768
819303	TEST	Space	753769
819304	TEST	Space	753770
819305	TEST	Space	753771
819306	TEST	Space	753772
819307	TEST	Space	753773
819308	TEST	Space	753774
819309	TEST	Space	753775
819310	TEST	Space	753776
\.


--
-- Data for Name: audit_changed_value; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY audit_changed_value (id, name, oldvalue, newvalue, auditrecordid) FROM stdin;
786433	Space type		global	753665
786434	Space status		CURRENT	753665
786435	Name		TEST	753665
786436	Space key		TEST	753665
786437	Home page		page: TEST v.1 (360451)	753665
786438	Group	confluence-users		753667
786439	Type	VIEWSPACE		753667
786440	Type	VIEWSPACE		753668
786441	User	admin		753668
786442	Group	confluence-administrators		753669
786443	Type	VIEWSPACE		753669
786444	Group	confluence-users		753670
786445	Type	COMMENT		753670
786446	Type	COMMENT		753671
786447	User	admin		753671
786448	Group	confluence-administrators		753672
786449	Type	COMMENT		753672
786450	Type	VIEWSPACE		753673
786451	Group	confluence-administrators		753674
786452	Type	SETPAGEPERMISSIONS		753674
786453	Type	REMOVEMAIL		753675
786454	Group	confluence-users		753676
786455	Type	REMOVEMAIL		753676
786456	Type	REMOVEMAIL		753677
786457	User	admin		753677
786458	Group	confluence-users		753678
786459	Type	SETPAGEPERMISSIONS		753678
786460	Type	SETPAGEPERMISSIONS		753679
786461	User	admin		753679
786462	Group	confluence-administrators		753680
786463	Type	EXPORTSPACE		753680
786464	Type	EXPORTPAGE		753681
786465	Group	confluence-users		753682
786466	Type	EXPORTPAGE		753682
786467	Type	EXPORTPAGE		753683
786468	User	admin		753683
786469	Group	confluence-administrators		753684
786470	Type	REMOVEMAIL		753684
786471	Type	EXPORTSPACE		753685
786472	Group	confluence-users		753686
786473	Type	EXPORTSPACE		753686
786474	Type	EXPORTSPACE		753687
786475	User	admin		753687
786476	Group	confluence-administrators		753688
786477	Type	EDITBLOG		753688
786478	Type	REMOVEATTACHMENT		753689
786479	Group	confluence-users		753690
786480	Type	REMOVEATTACHMENT		753690
786481	Type	REMOVEATTACHMENT		753691
786482	User	admin		753691
786483	Group	confluence-administrators		753692
786484	Type	EXPORTPAGE		753692
786485	Type	EDITBLOG		753693
786486	Group	confluence-users		753694
786487	Type	EDITBLOG		753694
786488	Type	EDITBLOG		753695
786489	User	admin		753695
786490	Group	confluence-administrators		753696
786491	Type	CREATEATTACHMENT		753696
786492	Type	REMOVEBLOG		753697
786493	Group	confluence-users		753698
786494	Type	REMOVEBLOG		753698
786495	Type	REMOVEBLOG		753699
786496	User	admin		753699
786497	Group	confluence-administrators		753700
786498	Type	REMOVEATTACHMENT		753700
786499	Type	CREATEATTACHMENT		753701
786500	Group	confluence-users		753702
786501	Type	CREATEATTACHMENT		753702
786502	Type	CREATEATTACHMENT		753703
786503	User	admin		753703
786504	Group	confluence-administrators		753704
786505	Type	REMOVECOMMENT		753704
786506	Type	REMOVEPAGE		753705
786507	Group	confluence-users		753706
786508	Type	REMOVEPAGE		753706
786509	Type	REMOVEPAGE		753707
786510	User	admin		753707
786511	Group	confluence-administrators		753708
786512	Type	REMOVEBLOG		753708
786513	Type	REMOVECOMMENT		753709
786514	Group	confluence-users		753710
786515	Type	REMOVECOMMENT		753710
786516	Type	REMOVECOMMENT		753711
786517	User	admin		753711
786518	Group	confluence-users		753712
786519	Type	EDITSPACE		753712
786520	Type	EDITSPACE		753713
786521	User	admin		753713
786522	Group	confluence-administrators		753714
786523	Type	EDITSPACE		753714
786524	Type	COMMENT		753715
786525	Group	confluence-administrators		753716
786526	Type	REMOVEPAGE		753716
786527	Type	SETSPACEPERMISSIONS		753717
786528	User	admin		753717
786529	Group	confluence-administrators		753718
786530	Type	SETSPACEPERMISSIONS		753718
786531	Type	EDITSPACE		753719
786532	Group		confluence-administrators	753720
786533	Type		VIEWSPACE	753720
786534	Space		TEST	753720
786535	Type		VIEWSPACE	753721
786536	Space		TEST	753721
786537	User		admin	753721
786538	Group		confluence-users	753722
786539	Type		VIEWSPACE	753722
786540	Space		TEST	753722
786541	Type		VIEWSPACE	753723
786542	Space		TEST	753723
786543	Group		confluence-administrators	753724
786544	Type		REMOVEOWNCONTENT	753724
786545	Space		TEST	753724
786546	Type		REMOVEOWNCONTENT	753725
786547	Space		TEST	753725
786548	User		admin	753725
786549	Group		confluence-users	753726
786550	Type		REMOVEOWNCONTENT	753726
786551	Space		TEST	753726
786552	Type		REMOVEOWNCONTENT	753727
786553	Space		TEST	753727
786554	Group		confluence-administrators	753728
786555	Type		COMMENT	753728
786556	Space		TEST	753728
786557	Type		COMMENT	753729
786558	Space		TEST	753729
786559	User		admin	753729
786560	Group		confluence-users	753730
786561	Type		COMMENT	753730
786562	Space		TEST	753730
786563	Type		COMMENT	753731
786564	Space		TEST	753731
786565	Group		confluence-administrators	753732
786566	Type		EDITSPACE	753732
786567	Space		TEST	753732
786568	Type		EDITSPACE	753733
786569	Space		TEST	753733
786570	User		admin	753733
786571	Group		confluence-users	753734
786572	Type		EDITSPACE	753734
786573	Space		TEST	753734
786574	Type		EDITSPACE	753735
786575	Space		TEST	753735
786576	Group		confluence-administrators	753736
786577	Type		SETSPACEPERMISSIONS	753736
786578	Space		TEST	753736
786579	Type		SETSPACEPERMISSIONS	753737
786580	Space		TEST	753737
786581	User		admin	753737
786582	Group		confluence-administrators	753738
786583	Type		REMOVEPAGE	753738
786584	Space		TEST	753738
786585	Type		REMOVEPAGE	753739
786586	Space		TEST	753739
786587	User		admin	753739
786588	Group		confluence-users	753740
786589	Type		REMOVEPAGE	753740
786590	Space		TEST	753740
786591	Type		REMOVEPAGE	753741
786592	Space		TEST	753741
786593	Group		confluence-administrators	753742
786594	Type		REMOVECOMMENT	753742
786595	Space		TEST	753742
786596	Type		REMOVECOMMENT	753743
786597	Space		TEST	753743
786598	User		admin	753743
786599	Group		confluence-users	753744
786600	Type		REMOVECOMMENT	753744
786601	Space		TEST	753744
786602	Type		REMOVECOMMENT	753745
786603	Space		TEST	753745
786604	Group		confluence-administrators	753746
786605	Type		REMOVEBLOG	753746
786606	Space		TEST	753746
786607	Type		REMOVEBLOG	753747
786608	Space		TEST	753747
786609	User		admin	753747
786610	Group		confluence-users	753748
786611	Type		REMOVEBLOG	753748
786612	Space		TEST	753748
786613	Type		REMOVEBLOG	753749
786614	Space		TEST	753749
786615	Group		confluence-administrators	753750
786616	Type		CREATEATTACHMENT	753750
786617	Space		TEST	753750
786618	Type		CREATEATTACHMENT	753751
786619	Space		TEST	753751
786620	User		admin	753751
786621	Group		confluence-users	753752
786622	Type		CREATEATTACHMENT	753752
786623	Space		TEST	753752
786624	Type		CREATEATTACHMENT	753753
786625	Space		TEST	753753
786626	Group		confluence-administrators	753754
786627	Type		REMOVEATTACHMENT	753754
786628	Space		TEST	753754
786629	Type		REMOVEATTACHMENT	753755
786630	Space		TEST	753755
786631	User		admin	753755
786632	Group		confluence-users	753756
786633	Type		REMOVEATTACHMENT	753756
786634	Space		TEST	753756
786635	Type		REMOVEATTACHMENT	753757
786636	Space		TEST	753757
786637	Group		confluence-administrators	753758
786638	Type		EDITBLOG	753758
786639	Space		TEST	753758
786640	Type		EDITBLOG	753759
786641	Space		TEST	753759
786642	User		admin	753759
786643	Group		confluence-users	753760
786644	Type		EDITBLOG	753760
786645	Space		TEST	753760
786646	Type		EDITBLOG	753761
786647	Space		TEST	753761
786648	Group		confluence-administrators	753762
786649	Type		EXPORTPAGE	753762
786650	Space		TEST	753762
786651	Type		EXPORTPAGE	753763
786652	Space		TEST	753763
786653	User		admin	753763
786654	Group		confluence-users	753764
786655	Type		EXPORTPAGE	753764
786656	Space		TEST	753764
786657	Type		EXPORTPAGE	753765
786658	Space		TEST	753765
786659	Group		confluence-administrators	753766
786660	Type		EXPORTSPACE	753766
786661	Space		TEST	753766
786662	Type		EXPORTSPACE	753767
786663	Space		TEST	753767
786664	User		admin	753767
786665	Group		confluence-users	753768
786666	Type		EXPORTSPACE	753768
786667	Space		TEST	753768
786668	Type		EXPORTSPACE	753769
786669	Space		TEST	753769
786670	Group		confluence-administrators	753770
786671	Type		REMOVEMAIL	753770
786672	Space		TEST	753770
786673	Type		REMOVEMAIL	753771
786674	Space		TEST	753771
786675	User		admin	753771
786676	Group		confluence-users	753772
786677	Type		REMOVEMAIL	753772
786678	Space		TEST	753772
786679	Type		REMOVEMAIL	753773
786680	Space		TEST	753773
786681	Group		confluence-administrators	753774
786682	Type		SETPAGEPERMISSIONS	753774
786683	Space		TEST	753774
786684	Type		SETPAGEPERMISSIONS	753775
786685	Space		TEST	753775
786686	User		admin	753775
786687	Group		confluence-users	753776
786688	Type		SETPAGEPERMISSIONS	753776
786689	Space		TEST	753776
\.


--
-- Data for Name: auditrecord; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY auditrecord (auditrecordid, summary, description, category, address, sysamdin, authorname, authorfullname, authorkey, objectname, objecttype, searchstring, creationdate) FROM stdin;
753666	Space import		Import/Export	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	TEST	Space	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space import import/export test	1492078776453
753665	Space configuration updated		Spaces	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	TEST	Space	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space configuration updated spaces test type global status current name key home page page: v.1 (360451)	1492078776508
753667	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type viewspace	1492078778017
753668	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type viewspace	1492078778082
753669	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type viewspace	1492078778108
753670	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type comment	1492078778129
753671	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type comment	1492078778147
753672	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type comment	1492078778164
753673	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type viewspace	1492078778180
753674	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type setpagepermissions	1492078778198
753675	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type removemail	1492078778215
753676	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type removemail	1492078778232
753677	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type removemail	1492078778247
753678	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type setpagepermissions	1492078778262
753679	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type setpagepermissions	1492078778278
753680	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type exportspace	1492078778294
753681	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type exportpage	1492078778311
753682	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type exportpage	1492078778336
753683	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type exportpage	1492078778356
753684	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type removemail	1492078778373
753685	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type exportspace	1492078778389
753686	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type exportspace	1492078778405
753687	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type exportspace	1492078778422
753688	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type editblog	1492078778438
753689	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type removeattachment	1492078778454
753690	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type removeattachment	1492078778471
753691	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type removeattachment	1492078778488
753719	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type editspace	1492078778991
753692	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type exportpage	1492078778505
753693	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type editblog	1492078778523
753694	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type editblog	1492078778539
753695	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type editblog	1492078778555
753696	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type createattachment	1492078778572
753697	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type removeblog	1492078778593
753698	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type removeblog	1492078778611
753699	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type removeblog	1492078778629
753700	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type removeattachment	1492078778645
753701	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type createattachment	1492078778662
753702	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type createattachment	1492078778685
753703	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type createattachment	1492078778704
753704	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type removecomment	1492078778722
753705	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type removepage	1492078778738
753706	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type removepage	1492078778755
753707	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type removepage	1492078778772
753708	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type removeblog	1492078778789
753709	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type removecomment	1492078778807
753710	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type removecomment	1492078778822
753711	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type removecomment	1492078778838
753712	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-users group test type editspace	1492078778854
753713	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type editspace	1492078778871
753714	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type editspace	1492078778893
753715	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions anonymous user test type comment	1492078778913
753716	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type removepage	1492078778936
753717	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions user test type setspacepermissions	1492078778954
753718	Space permission removed		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission removed permissions confluence-administrators group test type setspacepermissions	1492078778973
753720	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type viewspace	1492078779014
753721	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type viewspace	1492078779045
753722	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type viewspace	1492078779064
753723	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type viewspace	1492078779082
753724	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type removeowncontent	1492078779099
753725	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type removeowncontent	1492078779122
753726	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type removeowncontent	1492078779139
753727	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type removeowncontent	1492078779163
753728	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type comment	1492078779181
753729	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type comment	1492078779197
753730	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type comment	1492078779214
753731	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type comment	1492078779230
753732	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type editspace	1492078779248
753733	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type editspace	1492078779263
753734	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type editspace	1492078779280
753735	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type editspace	1492078779298
753736	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type setspacepermissions	1492078779314
753737	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type setspacepermissions	1492078779330
753738	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type removepage	1492078779346
753739	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type removepage	1492078779369
753740	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type removepage	1492078779385
753741	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type removepage	1492078779399
753742	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type removecomment	1492078779414
753743	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type removecomment	1492078779429
753744	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type removecomment	1492078779445
753745	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type removecomment	1492078779461
753746	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type removeblog	1492078779478
753747	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type removeblog	1492078779494
753748	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type removeblog	1492078779509
753749	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type removeblog	1492078779523
753750	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type createattachment	1492078779539
753751	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type createattachment	1492078779555
753752	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type createattachment	1492078779571
753753	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type createattachment	1492078779586
753754	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type removeattachment	1492078779601
753755	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type removeattachment	1492078779616
753756	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type removeattachment	1492078779630
753757	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type removeattachment	1492078779645
753758	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type editblog	1492078779656
753759	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type editblog	1492078779672
753760	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type editblog	1492078779686
753761	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type editblog	1492078779701
753762	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type exportpage	1492078779714
753763	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type exportpage	1492078779729
753764	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type exportpage	1492078779745
753765	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type exportpage	1492078779760
753766	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type exportspace	1492078779773
753767	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type exportspace	1492078779787
753768	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type exportspace	1492078779802
753769	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type exportspace	1492078779819
753770	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type removemail	1492078779834
753771	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type removemail	1492078779849
753772	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type removemail	1492078779865
753773	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	anonymous	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions anonymous user test type removemail	1492078779881
753774	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-administrators	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-administrators group test type setpagepermissions	1492078779896
753775	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	admin	User	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions user test type setpagepermissions	1492078779912
753776	Space permission added		Permissions	172.20.0.1	t	admin	admin	2c9480835b66d1e8015b66d2d7280000	confluence-users	Group	admin 2c9480835b66d1e8015b66d2d7280000 172.20.0.1 space permission added permissions confluence-users group test type setpagepermissions	1492078779928
\.


--
-- Data for Name: bandana; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY bandana (bandanaid, bandanacontext, bandanakey, bandanavalue) FROM stdin;
1	_GLOBAL	confluence.server.id	<string>BVZ5-JKZL-XUV6-Q021</string>
2	_GLOBAL	confluence.server.installation.date	<date>2017-04-13 10:18:17.381 GMT</date>
4	_GLOBAL	synchrony_collaborative_editor_app_passphrase	<string>zHXtqfsAXWqrvd+Kgc80rvGlBwlNigWz1IQYWAngYeo=</string>
5	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.plugin-installed-date-in-millis	<string>1492078698649</string>
6	_GLOBAL	synchrony_collaborative_editor_app_id	<string>Synchrony-e6e8f719-99d8-3ccb-a58f-fb4d7e41d390</string>
7	_GLOBAL	synchrony_collaborative_editor_UUID	<string>39a45ba1-7dcc-4ef0-b381-c9f471d03a99</string>
8	_GLOBAL	synchrony_collaborative_editor_app_secret	<string>TejW5JEzzjgmLsx7l9vIkfVtgo2Ct3mArOFHVTTuhbk=</string>
9	_GLOBAL	AO_9412A1_#	<string>8</string>
10	_GLOBAL	AO_26DB7F_#	<string>1</string>
11	_GLOBAL	plugin.manager.state.Map	<map/>
12	_GLOBAL	atlassian.confluence.plugin.resource.counter	<int>2</int>
3	_GLOBAL	atlassian.confluence.settings	<settings>\n  <doNotSave>false</doNotSave>\n  <allowCamelCase>false</allowCamelCase>\n  <allowTrackbacks>false</allowTrackbacks>\n  <allowThreadedComments>true</allowThreadedComments>\n  <externalUserManagement>false</externalUserManagement>\n  <denyPublicSignup>true</denyPublicSignup>\n  <emailAdminMessageOff>false</emailAdminMessageOff>\n  <almostSupportPeriodEndMessageOff>false</almostSupportPeriodEndMessageOff>\n  <senMissingInLicenseMessageOff>true</senMissingInLicenseMessageOff>\n  <baseUrlAdminMessageOff>false</baseUrlAdminMessageOff>\n  <allowRemoteApi>false</allowRemoteApi>\n  <allowRemoteApiAnonymous>false</allowRemoteApiAnonymous>\n  <antiXssMode>true</antiXssMode>\n  <gzippingResponse>true</gzippingResponse>\n  <disableLogo>false</disableLogo>\n  <sharedMode>false</sharedMode>\n  <enableDidYouMean>false</enableDidYouMean>\n  <enableQuickNav>true</enableQuickNav>\n  <enableSpaceStyles>false</enableSpaceStyles>\n  <enableOpenSearch>true</enableOpenSearch>\n  <showSystemInfoIn500Page>false</showSystemInfoIn500Page>\n  <showApplicationTitle>false</showApplicationTitle>\n  <referrerSettings>\n    <collectReferrerData>true</collectReferrerData>\n    <excludedReferrers/>\n    <hideExternalReferrers>false</hideExternalReferrers>\n  </referrerSettings>\n  <captchaSettings>\n    <enableCaptcha>false</enableCaptcha>\n    <enableDebug>false</enableDebug>\n    <captchaGroups class="list"/>\n    <exclude>registered</exclude>\n  </captchaSettings>\n  <customHtmlSettings>\n    <beforeHeadEnd></beforeHeadEnd>\n    <afterBodyStart></afterBodyStart>\n    <beforeBodyEnd></beforeBodyEnd>\n  </customHtmlSettings>\n  <colourSchemesSettings>\n    <colourSchemeType>custom</colourSchemeType>\n  </colourSchemesSettings>\n  <loginManagerSettings>\n    <enableElevatedSecurityCheck>true</enableElevatedSecurityCheck>\n    <loginAttemptsThreshold>3</loginAttemptsThreshold>\n  </loginManagerSettings>\n  <confluenceHttpParameters>\n    <connectionTimeout>10000</connectionTimeout>\n    <socketTimeout>10000</socketTimeout>\n    <enabled>true</enabled>\n  </confluenceHttpParameters>\n  <attachmentMaxSize>104857600</attachmentMaxSize>\n  <auditLogRetentionNumber>3</auditLogRetentionNumber>\n  <auditLogRetentionUnit>Years</auditLogRetentionUnit>\n  <draftSaveInterval>30000</draftSaveInterval>\n  <maxAttachmentsInUI>5</maxAttachmentsInUI>\n  <siteTitle>Confluence</siteTitle>\n  <documentationUrlPattern>http://docs.atlassian.com/confluence/docs-{0}/{1}</documentationUrlPattern>\n  <showContactAdministratorsForm>true</showContactAdministratorsForm>\n  <emailAddressVisibility>email.address.public</emailAddressVisibility>\n  <defaultEncoding>UTF-8</defaultEncoding>\n  <maxThumbHeight>300</maxThumbHeight>\n  <maxThumbWidth>300</maxThumbWidth>\n  <backupAttachmentsDaily>true</backupAttachmentsDaily>\n  <backupDaily>true</backupDaily>\n  <backupPath>/confluence-shared-home/backups</backupPath>\n  <nofollowExternalLinks>true</nofollowExternalLinks>\n  <indexingLanguage>english</indexingLanguage>\n  <globalDefaultLocale>en_GB</globalDefaultLocale>\n  <dailyBackupFilePrefix>backup-</dailyBackupFilePrefix>\n  <dailyBackupDateFormatPattern>yyyy_MM_dd</dailyBackupDateFormatPattern>\n  <supportRequestEmail>confluence-autosupportrequests@atlassian.com</supportRequestEmail>\n  <defaultSpaceHomepageTitle>Home</defaultSpaceHomepageTitle>\n  <baseUrl>http://localhost:8090</baseUrl>\n  <attachmentDataStore>file.system.based.attachments.storage</attachmentDataStore>\n  <displayLinkIcons>false</displayLinkIcons>\n  <addWildcardsToUserAndGroupSearches>true</addWildcardsToUserAndGroupSearches>\n  <xsrfAddComments>true</xsrfAddComments>\n  <webSudoTimeout>10</webSudoTimeout>\n  <webSudoEnabled>true</webSudoEnabled>\n  <defaultUsersGroup>confluence-users</defaultUsersGroup>\n  <attachmentSecurityLevel>smart</attachmentSecurityLevel>\n  <enableJavascriptTop>true</enableJavascriptTop>\n  <supportPeriodEndMessageOff>false</supportPeriodEndMessageOff>\n  <enableWysiwyg>true</enableWysiwyg>\n  <useWysiwygByDefault>true</useWysiwygByDefault>\n  <numberOfBreadcrumbAncestors>1</numberOfBreadcrumbAncestors>\n  <viewSpaceGoesToSpaceSummary>false</viewSpaceGoesToSpaceSummary>\n  <maxSimultaneousQuickNavRequests>40</maxSimultaneousQuickNavRequests>\n  <maxRssItems>200</maxRssItems>\n  <rssTimeout>60</rssTimeout>\n  <pageTimeout>120</pageTimeout>\n</settings>
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
31	_GLOBAL	com.atlassian.upm:notifications:dismissal-evaluation.expired	<list/>
33	_GLOBAL	com.atlassian.upm:notifications:dismissal-edition.mismatch	<list/>
34	_GLOBAL	com.atlassian.upm:notifications:dismissal-maintenance.expired	<list/>
36	_GLOBAL	com.atlassian.upm:notifications:dismissal-auto.updated.plugin	<list/>
37	_GLOBAL	com.atlassian.upm:notifications:dismissal-auto.updated.upm	<list/>
38	_GLOBAL	com.atlassian.upm.request.PluginSettingsPluginRequestStore:requests:requests_v2	<list/>
85	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.is-first-space-created	<string>true</string>
26	_GLOBAL	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	<string>5</string>
39	_GLOBAL	com.atlassian.support.stp:build	<string>1</string>
40	_GLOBAL	com.atlassian.confluence.plugins.confluence-create-content-plugin:build	<string>4</string>
41	_GLOBAL	com.atlassian.analytics.client.configuration..policy_acknowledged	<string>true</string>
42	_GLOBAL	com.atlassian.analytics.client.configuration..analytics_enabled	<string>true</string>
43	_GLOBAL	gadget.counter	<int>2</int>
44	_GLOBAL	com.atlassian.analytics.client.configuration.uuid	<string>5bcdc5cd-1fea-466f-bb11-a71b58434068</string>
45	_GLOBAL	com.atlassian.analytics.client.configuration.serverid	<string>BVZ5-JKZL-XUV6-Q021</string>
27	_GLOBAL	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	<list>\n  <string>{&quot;userKey&quot;:&quot;Confluence&quot;,&quot;date&quot;:1492078758420,&quot;i18nKey&quot;:&quot;upm.auditLog.upm.startup&quot;,&quot;entryType&quot;:&quot;UPM_STARTUP&quot;,&quot;params&quot;:[]}</string>\n</list>
46	com.atlassian.confluence.content.render.xhtml.migration.macro.MacroMigrationService	migration.required	<boolean>false</boolean>
47	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#LocalTaskQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
49	_GLOBAL	com.atlassian.upm:notifications:notification-edition.mismatch	<list/>
48	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#AuditLogCleaner	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
51	_GLOBAL	com.atlassian.upm:notifications:notification-plugin.request	<list/>
50	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#CleanTempDirectoryJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
52	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#EhCacheCompactionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
53	_GLOBAL	com.atlassian.upm:notifications:notification-evaluation.expired	<list/>
55	_GLOBAL	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	<list/>
54	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#TaskQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
56	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClusterCacheCompactionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
57	_GLOBAL	com.atlassian.upm:notifications:notification-maintenance.expired	<list/>
58	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#LaasPerformanceLoggingJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
59	_GLOBAL	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	<list/>
60	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClusterSafetyJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
61	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClearExpiredRememberMeTokensJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
62	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#JournalCleaner	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
63	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#MailQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
64	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#clearOldMailErrorsJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
78	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.onboardingNumberOfUsersCheckJob	<string>JOB_FIRST_EXECUTE</string>
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
79	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.onboardingSpaceCheckJob	<string>JOB_FIRST_EXECUTE</string>
81	_GLOBAL	c.a.c.plugins:confluence-user-rest:firstCheckDateMs	<string>1492078764884</string>
82	_GLOBAL	c.a.c.plugins:confluence-user-rest:hadHadASingleDirectory	<string>true</string>
83	_GLOBAL	com.atlassian.upm:notifications:notification-update	<list>\n  <string>com.atlassian.confluence.plugins.confluence-healthcheck-plugin</string>\n</list>
84	_GLOBAL	com.atlassian.analytics.client.configuration..logged_base_analytics_data	<string>true</string>
86	_GLOBAL	com.atlassian.nps.plugin.status.nps_enabled	<string>false</string>
87	_GLOBAL	com.atlassian.nps.plugin.status.nps_acknowledged	<string>true</string>
\.


--
-- Data for Name: bodycontent; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY bodycontent (bodycontentid, body, contentid, bodytypeid) FROM stdin;
622593	<ac:layout><ac:layout-section ac:type="single"><ac:layout-cell><ac:structured-macro ac:macro-id="5da7fd26-ee1a-4fe5-a582-dcf9bfaf8f45" ac:name="tip" ac:schema-version="1"><ac:rich-text-body><p>Welcome to your first space. Go ahead, edit and customize this home page any way you like. We've added some sample content to get you started.</p></ac:rich-text-body></ac:structured-macro></ac:layout-cell></ac:layout-section><ac:layout-section ac:type="single"><ac:layout-cell><p><ac:image><ri:attachment ri:filename="peak.jpeg" /></ac:image></p><p>&nbsp;</p></ac:layout-cell></ac:layout-section><ac:layout-section ac:type="two_right_sidebar"><ac:layout-cell><hr /><h1><strong>Goal</strong></h1><h2><em>Your space homepage should summarize what the space is for, and provide links to key resources for your team.&nbsp;</em></h2><hr /><p>&nbsp;</p><h1><strong>Core team</strong></h1><table><tbody><tr><td><p style="text-align: center;"><ac:image ac:thumbnail="true" ac:width="100"><ri:attachment ri:filename="Harvey.jpg" /></ac:image></p><p style="text-align: center;"><strong>Harvey Honner-white<br /></strong>Team Lead<strong>&nbsp;</strong></p></td><td><p style="text-align: center;"><ac:image ac:thumbnail="true" ac:width="100"><ri:attachment ri:filename="Alana.jpg" /></ac:image></p><p style="text-align: center;"><strong>Alana Baczewski<br />&nbsp;</strong>Tech Lead</p></td><td><p style="text-align: center;"><ac:image ac:thumbnail="true" ac:width="100"><ri:attachment ri:filename="Sameer.jpg" /></ac:image></p><p style="text-align: center;"><strong>Sameer Farrell<br />&nbsp;</strong>Marketing</p></td><td><p style="text-align: center;"><ac:image ac:thumbnail="true" ac:width="100"><ri:attachment ri:filename="Cassie.jpg" /></ac:image></p><p style="text-align: center;"><strong>Mia Bednarczyk<br />&nbsp;</strong>Recruitment</p></td></tr></tbody></table><p>&nbsp;</p><h1><strong>Roadmap</strong></h1><p>You can edit this roadmap or create a new one by adding the Roadmap Planner macro from the Insert menu. Link your Confluence pages to each bar to add visibility, and find more tips by reading the Atlassian blog:&nbsp;<a href="http://blogs.atlassian.com/2015/01/roadmap-planner-macro/">Plan better in 2015 with the Roadmap Planner macro</a>.</p><p><ac:structured-macro ac:macro-id="acab4a3d-dde3-4e22-a912-ce9f886e3e91" ac:name="roadmap" ac:schema-version="1"><ac:parameter ac:name="maplinks" /><ac:parameter ac:name="timeline">true</ac:parameter><ac:parameter ac:name="pagelinks" /><ac:parameter ac:name="source">%7B%22title%22%3A%22Roadmap%20Planner%22%2C%22timeline%22%3A%7B%22startDate%22%3A%222015-06-01%2000%3A00%3A00%22%2C%22endDate%22%3A%222015-12-31%2000%3A00%3A00%22%2C%22displayOption%22%3A%22MONTH%22%7D%2C%22lanes%22%3A%5B%7B%22title%22%3A%22Marketing%22%2C%22color%22%3A%7B%22lane%22%3A%22%23f15c75%22%2C%22bar%22%3A%22%23f58598%22%2C%22text%22%3A%22%23ffffff%22%2C%22count%22%3A1%7D%2C%22bars%22%3A%5B%7B%22title%22%3A%22Social%20campaign%22%2C%22description%22%3A%22Add%20a%20description%20to%20your%20bars%20here.%22%2C%22startDate%22%3A%222015-07-30%2011%3A10%3A05%22%2C%22duration%22%3A3.6435643564356437%2C%22rowIndex%22%3A0%2C%22id%22%3A%22e703c6a8-1649-4d20-9ccf-2c7a8698e385%22%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22title%22%3A%22Website%20development%22%2C%22description%22%3A%22Add%20a%20description%20to%20your%20bars%20here.%22%2C%22startDate%22%3A%222015-07-17%2006%3A24%3A57%22%2C%22duration%22%3A3.3069306930693068%2C%22rowIndex%22%3A1%2C%22id%22%3A%22655d454d-b701-4584-a301-9ea0bb86ed32%22%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A2%2C%22startDate%22%3A%222015-06-01%2000%3A00%3A00%22%2C%22id%22%3A%22c420ef33-ae28-4828-958f-8a9d793153b3%22%2C%22title%22%3A%22Crowdfunding%20campaign%22%2C%22description%22%3A%22Add%20a%20description%20to%20your%20bars%20here.%22%2C%22duration%22%3A2.5544554455445545%2C%22pageLink%22%3A%7B%7D%7D%5D%7D%2C%7B%22title%22%3A%22People%22%2C%22color%22%3A%7B%22lane%22%3A%22%23654982%22%2C%22bar%22%3A%22%238c77a1%22%2C%22text%22%3A%22%23ffffff%22%2C%22count%22%3A1%7D%2C%22bars%22%3A%5B%7B%22title%22%3A%22Recruitment%22%2C%22description%22%3A%22%22%2C%22startDate%22%3A%222015-06-01%2000%3A00%3A00%22%2C%22duration%22%3A2.5%2C%22rowIndex%22%3A0%2C%22id%22%3A%221230bab8-718c-47da-903a-2cbdcb220d97%22%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-08-17%2013%3A46%3A55%22%2C%22id%22%3A%228639d09c-59d1-4d1f-ad91-c78f04b20135%22%2C%22title%22%3A%22Assessment%20Period%22%2C%22description%22%3A%22%22%2C%22duration%22%3A2.910891089108911%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A1%2C%22startDate%22%3A%222015-09-01%2021%3A23%3A10%22%2C%22id%22%3A%22802b53f7-ba66-4415-984d-efef93b4caec%22%2C%22title%22%3A%22Training%22%2C%22description%22%3A%22%22%2C%22duration%22%3A2.5841584158415842%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-11-15%2006%3A10%3A41%22%2C%22id%22%3A%22502fac56-3849-415f-b412-af27c39229b7%22%2C%22title%22%3A%22Finalisation%22%2C%22description%22%3A%22%22%2C%22duration%22%3A1.4356435643564356%2C%22pageLink%22%3A%7B%7D%7D%5D%7D%2C%7B%22title%22%3A%22Product%22%2C%22color%22%3A%7B%22lane%22%3A%22%233b7fc4%22%2C%22bar%22%3A%22%236c9fd3%22%2C%22text%22%3A%22%23ffffff%22%2C%22count%22%3A1%7D%2C%22bars%22%3A%5B%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-06-24%2004%3A02%3A22%22%2C%22id%22%3A%2200ada54b-0998-41a5-aa98-712ecdec8c7f%22%2C%22title%22%3A%22Planning%22%2C%22description%22%3A%22%22%2C%22duration%22%3A2.1782178217821784%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-08-31%2001%3A54%3A03%22%2C%22id%22%3A%2271967f2c-f3ab-4871-aaf5-7cf31389e62f%22%2C%22title%22%3A%22Development%22%2C%22description%22%3A%22%22%2C%22duration%22%3A1.9207920792079207%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-10-29%2013%3A04%3A09%22%2C%22id%22%3A%22d76ac773-3ee7-495b-9d7f-1daf267dc58c%22%2C%22title%22%3A%22Testing%22%2C%22description%22%3A%22%22%2C%22duration%22%3A1%2C%22pageLink%22%3A%7B%7D%7D%2C%7B%22rowIndex%22%3A0%2C%22startDate%22%3A%222015-11-30%2002%3A36%3A49%22%2C%22id%22%3A%224f584dc6-63b8-4efa-a98e-a5d7bbe9910e%22%2C%22title%22%3A%22Deploy%22%2C%22description%22%3A%22%22%2C%22duration%22%3A1.0297029702970297%2C%22pageLink%22%3A%7B%7D%7D%5D%7D%5D%2C%22markers%22%3A%5B%7B%22title%22%3A%22Yearly%20Finalisation%22%2C%22markerDate%22%3A%222015-11-29%2012%3A21%3A23%22%7D%5D%7D</ac:parameter><ac:parameter ac:name="title">Roadmap%20Planner</ac:parameter><ac:parameter ac:name="hash">f0477dfac6f6ca380d8c5f2f44041947</ac:parameter></ac:structured-macro></p><p>&nbsp;</p><h1><strong>Know your spaces</strong>&nbsp;</h1><p>Everything your team is working on - meeting notes and agendas, project plans and timelines, technical documentation and more - is located in a space; it's home base for your team.</p><p>A small team should plan to have a space for the team, and a space for each big project. If you'll be working in Confluence with several other teams and departments, we recommend a space for each team as well as a space for each major cross-team project. The key is to think of a space as the container that holds all the important stuff - like pages, files, and blog posts - a team, group, or project needs to work.</p><h1><strong>Know your pages</strong></h1><p>If you're working on something related to your team - project plans, product requirements, blog posts, internal communications, you name it - create and store it in a Confluence page. Confluence pages offer a lot of flexibility in creating and storing information, and there are a number of useful page templates included to get you started, like the&nbsp;meeting notes template. Your spaces should be filled with pages that document your business processes, outline your plans, contain your files, and report on your progress. The more you learn to do in Confluence (adding tables and graphs, or embedding video and links are great places to start), the more engaging and helpful your pages will become.</p><p>Learn more by reading&nbsp;<a href="https://www.atlassian.com/collaboration/confluence-organize-work-in-spaces">Confluence 101: organize your work in spaces</a></p><p>&nbsp;</p><hr /></ac:layout-cell><ac:layout-cell><h1><strong>Quick navigation</strong></h1><p>When you create new pages in this space, they'll appear here automatically.</p><p><ac:structured-macro ac:macro-id="8ca379f2-ea2a-4fbb-bf4a-77619f9875ed" ac:name="children" ac:schema-version="2" /></p><h1><strong>Useful links</strong></h1><table><tbody><tr><th>Link</th><th>Description</th></tr><tr><td><a href="https://www.atlassian.com/collaboration/confluence-organize-work-in-spaces">Confluence 101: organize your work in spaces</a></td><td><p>Chances are, the information you need to do your job lives in multiple places. Word docs, Evernote files, email, PDFs, even Post-it notes. It's scattered among different systems. And to make matters worse,&nbsp;<em>the stuff your teammates need is equally siloed</em>. If information had feelings, it would be lonely.</p><p>But with&nbsp;Confluence, you can bring all that information into one place.</p></td></tr><tr><td><a href="https://www.atlassian.com/collaboration/confluence-discuss-work-with-your-team">Confluence 101: discuss work with your team</a></td><td>Getting a project outlined and adding the right content are just the first steps. Now it's time for your team to weigh in.&nbsp;Confluence&nbsp;makes it easy to discuss your work - with your team, your boss, or your entire company - in the same place where you organized and created it.</td></tr><tr><td colspan="1"><a href="https://www.atlassian.com/collaboration/confluence-create-content-with-pages">Confluence 101: create content with pages</a></td><td colspan="1">Think of pages as a New Age &quot;document.&quot; If Word docs were rotary phones, Confluence pages would be smart phones. A smart phone still makes calls (like their rotary counterparts), but it can do so much more than that</td></tr></tbody></table><p><strong style="font-size: 24.0px;line-height: 1.25;"><br /></strong></p><p><strong style="font-size: 24.0px;line-height: 1.25;">Tasks</strong></p><table><tbody><tr><td><ac:task-list>\n<ac:task>\n<ac:task-id>59</ac:task-id>\n<ac:task-status>incomplete</ac:task-status>\n<ac:task-body><a href="https://confluence.atlassian.com/x/NgszKw">Customize the name, colour, and icon of Confluence</a>.</ac:task-body>\n</ac:task>\n<ac:task>\n<ac:task-id>56</ac:task-id>\n<ac:task-status>incomplete</ac:task-status>\n<ac:task-body>Decide who can see and edit this space or a specific page by clicking the <ac:image><ri:attachment ri:filename="lock-icon.png" /></ac:image> icon. Learn more about <a href="https://confluence.atlassian.com/x/liAC">Page Restrictions</a> and <a href="https://confluence.atlassian.com/x/ASEC">Space Permissions</a>.</ac:task-body>\n</ac:task>\n<ac:task>\n<ac:task-id>57</ac:task-id>\n<ac:task-status>incomplete</ac:task-status>\n<ac:task-body>Try adding an <a href="https://confluence.atlassian.com/x/2yAC">inline comment</a> by highlighting some text and click the comment icon.</ac:task-body>\n</ac:task>\n<ac:task>\n<ac:task-id>58</ac:task-id>\n<ac:task-status>incomplete</ac:task-status>\n<ac:task-body>Learn more about <a href="https://confluence.atlassian.com/x/SRwC">inviting your team to Confluence</a>.</ac:task-body>\n</ac:task>\n</ac:task-list>\n</td></tr></tbody></table></ac:layout-cell></ac:layout-section></ac:layout>	360451	2
622594		360452	0
622595	<p><span>You can add comments directly to images. Use file comments to review designs, add feedback, or just start a conversation.</span></p>	360459	2
622596	efionboardingspace	360460	0
622597	<p>test</p>	360467	2
\.


--
-- Data for Name: clustersafety; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY clustersafety (clustersafetyid, safetynumber) FROM stdin;
491521	9506305
\.


--
-- Data for Name: confancestors; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY confancestors (descendentid, ancestorposition, ancestorid) FROM stdin;
360467	0	360451
\.


--
-- Data for Name: confversion; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY confversion (confversionid, buildnumber, installdate, versiontag, creationdate, lastmoddate) FROM stdin;
425985	7109	2017-04-13 10:19:05.878	lock_for_upgrade_to_7109	\N	\N
\.


--
-- Data for Name: content; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY content (contentid, hibernateversion, contenttype, title, lowertitle, version, creator, creationdate, lastmodifier, lastmoddate, versioncomment, prevver, content_status, pageid, spaceid, child_position, parentid, messageid, pluginkey, pluginver, parentccid, draftpageid, draftspacekey, drafttype, draftpageversion, parentcommentid, username) FROM stdin;
360449	1	USERINFO	\N	\N	1	\N	2017-04-13 10:19:05.548	\N	2017-04-13 10:19:05.548		\N	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000
360450	1	GLOBALDESCRIPTION	\N	\N	1	\N	2017-04-13 10:19:05.842	\N	2017-04-13 10:19:05.842		\N	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360451	24	PAGE	TEST	test	1	\N	2017-04-13 10:19:32.93	\N	2017-04-13 10:19:32.93		\N	current	\N	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360455	2	ATTACHMENT	Alana.jpg	alana.jpg	1	\N	2017-04-13 10:19:32.93	\N	2017-04-13 10:19:32.93		\N	current	360451	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360456	3	ATTACHMENT	peak.jpeg	peak.jpeg	1	\N	2017-04-13 10:19:32.93	\N	2017-04-13 10:19:32.93		\N	current	360451	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360457	2	ATTACHMENT	Harvey.jpg	harvey.jpg	1	\N	2017-04-13 10:19:32.93	\N	2017-04-13 10:19:32.93		\N	current	360451	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360458	2	ATTACHMENT	Cassie.jpg	cassie.jpg	1	\N	2017-04-13 10:19:32.93	\N	2017-04-13 10:19:32.93		\N	current	360451	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360453	3	ATTACHMENT	lock-icon.png	lock-icon.png	1	\N	2017-04-13 10:19:32.93	\N	2017-04-13 10:19:32.93		\N	current	360451	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360454	3	ATTACHMENT	Sameer.jpg	sameer.jpg	1	\N	2017-04-13 10:19:32.93	\N	2017-04-13 10:19:32.93		\N	current	360451	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360459	4	COMMENT	\N	\N	1	\N	2017-04-13 10:19:32.93	\N	2017-04-13 10:19:32.93		\N	current	360456	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360460	10	SPACEDESCRIPTION	\N	\N	1	2c9480835b66d1e8015b66d348290001	2015-08-12 17:14:17.61	2c9480835b66d1e8015b66d2d7280000	2015-11-03 13:10:49.552		360452	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360452	12	SPACEDESCRIPTION	\N	\N	2	2c9480835b66d1e8015b66d348290001	2015-08-12 17:14:17.61	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:36.484		\N	current	\N	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360466	3	ATTACHMENT	pie.png	pie.png	1	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:40.448	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:53.306		\N	current	360467	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360465	3	ATTACHMENT	cake.jpg	cake.jpg	1	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:40.397	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:53.386		\N	current	360467	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360464	3	ATTACHMENT	design_feedback.jpg	design_feedback.jpg	1	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:40.347	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:53.425		\N	current	360467	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360463	3	ATTACHMENT	mobile_login_screen.png	mobile_login_screen.png	1	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:40.288	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:53.451		\N	current	360467	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360462	3	ATTACHMENT	mobile_activity_screen.png	mobile_activity_screen.png	1	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:40.03	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:53.474		\N	current	360467	524289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
360467	2	PAGE	Test 123	test 123	1	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:53.206	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:53.206		\N	current	\N	524289	\N	360451	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: content_label; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY content_label (id, labelid, contentid, pagetemplateid, owner, creationdate, lastmoddate, labelableid, labelabletype) FROM stdin;
720897	688129	360452	\N	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:19:53.445	2015-09-21 12:19:53.445	1998863	CONTENT
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
557057	macro-count.tip	2-1	\N	\N	360451
557058	macro-count.recently-updated	1-1	\N	\N	360451
557059	macro-count.contributors	1-1	\N	\N	360451
557060	macro-count.roadmap	2-1	\N	\N	360451
557061	macro-create-events-published-for-version	\N	2	\N	360451
557062	macro-count.children	2-1	\N	\N	360451
557071	MEDIA_TYPE	image/png	\N	\N	360453
557077	FILESIZE	\N	3448	\N	360453
557066	FILESIZE	\N	17681	\N	360454
557069	MINOR_EDIT	\N	1	\N	360454
557063	FILESIZE	\N	19306	\N	360455
557068	MEDIA_TYPE	image/jpeg	\N	\N	360455
557072	MINOR_EDIT	\N	1	\N	360455
557065	FILESIZE	\N	43498	\N	360456
557070	MINOR_EDIT	\N	1	\N	360456
557078	MEDIA_TYPE	image/jpeg	\N	\N	360456
557067	MINOR_EDIT	\N	1	\N	360457
557073	FILESIZE	\N	18662	\N	360457
557074	MEDIA_TYPE	image/jpeg	\N	\N	360457
557064	MINOR_EDIT	\N	1	\N	360458
557075	FILESIZE	\N	19123	\N	360458
557076	MEDIA_TYPE	image/jpeg	\N	\N	360458
557079	MINOR_EDIT	\N	1	\N	360453
557080	MEDIA_TYPE	image/jpeg	\N	\N	360454
557081	status	open	\N	\N	360459
557082	ANCHOR	{"type":"pin","page":1,"x":0.5071428571428571,"y":0.6082474226804123}	\N	\N	360459
557083	MEDIA_TYPE	image/png	\N	\N	360462
557084	FILESIZE	\N	94904	\N	360462
557085	MINOR_EDIT	\N	0	\N	360462
557086	HIDDEN	\N	0	\N	360462
557087	MEDIA_TYPE	image/png	\N	\N	360463
557088	FILESIZE	\N	53204	\N	360463
557089	MINOR_EDIT	\N	0	\N	360463
557090	HIDDEN	\N	0	\N	360463
557091	MEDIA_TYPE	image/jpeg	\N	\N	360464
557092	FILESIZE	\N	91912	\N	360464
557093	MINOR_EDIT	\N	0	\N	360464
557094	HIDDEN	\N	0	\N	360464
557095	MEDIA_TYPE	image/jpeg	\N	\N	360465
557096	FILESIZE	\N	14638	\N	360465
557097	MINOR_EDIT	\N	0	\N	360465
557098	HIDDEN	\N	0	\N	360465
557099	MEDIA_TYPE	image/png	\N	\N	360466
557100	FILESIZE	\N	23216	\N	360466
557101	MINOR_EDIT	\N	0	\N	360466
557102	HIDDEN	\N	0	\N	360466
557104	macro-create-events-published-for-version	\N	0	\N	360467
557105	macroNames		\N	\N	360467
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
163841	UPDATE_USER
163841	CREATE_GROUP
163841	UPDATE_ROLE
163841	CREATE_USER
163841	DELETE_USER
163841	DELETE_GROUP
163841	UPDATE_USER_ATTRIBUTE
163841	UPDATE_GROUP_ATTRIBUTE
163841	DELETE_ROLE
163841	CREATE_ROLE
163841	UPDATE_GROUP
163841	UPDATE_ROLE_ATTRIBUTE
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
98305	crowd-embedded	crowd-embedded	2017-04-13 10:19:05.004	2017-04-13 10:19:05.061	T	\N	GENERIC_APPLICATION	X
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
131073	Confluence Internal Directory	confluence internal directory	2017-04-13 10:19:05.038	2017-04-13 10:19:05.038	T	Confluence default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL
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
131073	UPDATE_USER
131073	CREATE_GROUP
131073	UPDATE_ROLE
131073	CREATE_USER
131073	DELETE_USER
131073	DELETE_GROUP
131073	UPDATE_USER_ATTRIBUTE
131073	UPDATE_GROUP_ATTRIBUTE
131073	DELETE_ROLE
131073	CREATE_ROLE
131073	UPDATE_GROUP
131073	UPDATE_ROLE_ATTRIBUTE
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, group_type, directory_id) FROM stdin;
196609	confluence-administrators	confluence-administrators	T	F	2017-04-13 10:19:05.125	2017-04-13 10:19:05.125	\N	GROUP	131073
196610	confluence-users	confluence-users	T	F	2017-04-13 10:19:05.193	2017-04-13 10:19:05.193	\N	GROUP	131073
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
262145	admin	admin	T	2017-04-13 10:19:05.343	2017-04-13 10:19:05.343			admin	admin	admin	admin	admin@noreply.foo	admin@noreply.foo	2331b5f1-8b95-4d40-9470-f7dadcd2754d	131073	{PKCS5S2}Zf5RfgDolY/ojYMtsIwP7VYSZiQzIdkVrp03OcmP4jW+qBqqCFhmLGTi7+Q+cgv4
\.


--
-- Data for Name: cwd_user_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_user_attribute (id, user_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
294913	262145	131073	requiresPasswordChange	false	false
294914	262145	131073	invalidPasswordAttempts	0	0
294915	262145	131073	passwordLastChanged	1492078745387	1492078745387
294916	262145	131073	lastAuthenticated	1492078745634	1492078745634
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
27
\.


--
-- Data for Name: imagedetails; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY imagedetails (attachmentid, height, width, mimetype) FROM stdin;
360466	159	300	image/png
360465	295	319	image/jpeg
360464	360	640	image/pjpeg
360463	796	389	image/png
360462	793	385	image/png
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
1	main_index	2017-04-13 10:19:05.217	REINDEX_USERS_IN_GROUP	confluence-administrators
2	main_index	2017-04-13 10:19:05.223	REINDEX_USERS_IN_GROUP	confluence-users
3	main_index	2017-04-13 10:19:05.562	UPDATE_DOCUMENT	com.atlassian.confluence.user.PersonalInformation-360449
4	main_index	2017-04-13 10:19:05.615	UPDATE_DOCUMENT	com.atlassian.confluence.user.PersonalInformation-360449
5	main_index	2017-04-13 10:19:36.495	ADD_CHANGE_DOCUMENT	com.atlassian.confluence.spaces.SpaceDescription-360452
6	main_index	2017-04-13 10:19:36.496	UPDATE_DOCUMENT	com.atlassian.confluence.spaces.SpaceDescription-360452
7	main_index	2017-04-13 10:19:53.208	ADD_CHANGE_DOCUMENT	com.atlassian.confluence.pages.Page-360467
8	main_index	2017-04-13 10:19:53.21	UPDATE_DOCUMENT	com.atlassian.confluence.pages.Page-360467
9	main_index	2017-04-13 10:19:53.231	ADD_CHANGE_DOCUMENT	com.atlassian.confluence.pages.Page-360467
10	main_index	2017-04-13 10:19:53.232	UPDATE_DOCUMENT	com.atlassian.confluence.pages.Page-360467
11	main_index	2017-04-13 10:19:53.306	ADD_CHANGE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360466
12	main_index	2017-04-13 10:19:53.306	UPDATE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360466
13	main_index	2017-04-13 10:19:53.386	ADD_CHANGE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360465
14	main_index	2017-04-13 10:19:53.387	UPDATE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360465
15	main_index	2017-04-13 10:19:53.425	ADD_CHANGE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360464
16	main_index	2017-04-13 10:19:53.426	UPDATE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360464
17	main_index	2017-04-13 10:19:53.451	ADD_CHANGE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360463
18	main_index	2017-04-13 10:19:53.452	UPDATE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360463
19	main_index	2017-04-13 10:19:53.474	ADD_CHANGE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360462
20	main_index	2017-04-13 10:19:53.474	UPDATE_DOCUMENT	com.atlassian.confluence.pages.Attachment-360462
21	edge_index	2017-04-13 10:19:53.547	ADD_DOCUMENT	{"edgeId":"360467","userKey":"2c9480835b66d1e8015b66d2d7280000","targetId":360467,"date":1492078793206,"typeKey":"page.create"}
\.


--
-- Data for Name: keystore; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY keystore (keyid, alias, type, algorithm, keyspec) FROM stdin;
32769	confluence:5798632	public	RSA	MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuPfZssOaLO4nUsJX42ZxEuX7+eoZSs9j0sqZMwsjmeGIVC4UYAsgCj4vJD32hjAtj8o8BEXGuYsgLKslfutj3Oy+qV94Z9MUtRhIBJTqKIpAqI6g38k2T1ZWyQ3nWN2bOG0okZ+vd0kq1Znlm+5fMZt9klWmwEHxIEH+IKGGgVlLC/UZgqwedQZlMIlVI6Jzev9UqGd/1VdPoZoTUnMlB+K8WrB2ayaWpgUUtFFoWvk70+HGWaN5XpQZ1FcIBaBIgX47D4ximpDuReX7GXL/0wFwfEvx736dFc+uNzes06+x+mvWhvANyGrxK8XlEIojgSHPUrKzJa7jCwi1dGVuiQIDAQAB
32770	confluence:5798632	private	RSA	MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC499myw5os7idSwlfjZnES5fv56hlKz2PSypkzCyOZ4YhULhRgCyAKPi8kPfaGMC2PyjwERca5iyAsqyV+62Pc7L6pX3hn0xS1GEgElOooikCojqDfyTZPVlbJDedY3Zs4bSiRn693SSrVmeWb7l8xm32SVabAQfEgQf4goYaBWUsL9RmCrB51BmUwiVUjonN6/1SoZ3/VV0+hmhNScyUH4rxasHZrJpamBRS0UWha+TvT4cZZo3lelBnUVwgFoEiBfjsPjGKakO5F5fsZcv/TAXB8S/Hvfp0Vz643N6zTr7H6a9aG8A3IavErxeUQiiOBIc9SsrMlruMLCLV0ZW6JAgMBAAECggEAEzRkrYtilBysB4s3Hdyyi9BGL8YPFzXeOvIfIu4apa0FfxwDsI8nJfkb4uruEDOrX10TiywFfJlF321rqLhe9367MxG/CiSf50ecnqEpiMkF+ppIeMPG+EjSHPDtHsxvg9XNmwUV7lAx+tiOPvjqeFeZG5r6A8c09nDzpkavFPnXuxSqitd7yO9QPuiYsJVcWA7WUFhALUHMb+p1S7YL6E5CsIMNjJcQS47mcKlKCBLJpeH222+5aSEGmsVY7TVKMNz2rlbP/BYYdkVElYPUxwAd1NZmRbAp6G3WgKNDd2XXxOGu4Dlu7swGLU28hiOrDjO//pRG1YDOYQl9kXntqQKBgQDg+bwlZNvBJNIc9Sv2WpwZPPxBgEt4zbkA+h3Zrc6z84Ehp5ldb/z9H/Y9F55q981rQBvv6m1SQP8bCnKA8kCA5QSJRsMISa3Z/PhJ8MazFxHJaiyy5b1sNRSZFHHVFQhmRUDNP0+0W8jXGaSbN2BsEddrP8n02YZSmviCEvNGdQKBgQDSeb5lDtINgD54kWmc0UMdcqhMIOvVKUqIwOv5TYi/Ugmk1Bg0g+CPgvcyX432W3JURGeVyNMP0Gvdjp7rUV4IuryQ8pXCuKVbtzC9fQGdpZyDk3VXJo6MQjNYKR73OnmnXZq1PEC6B4Z4JsmxFpLraiTHuPtjbfAZB+lG0FGNRQKBgGMOksEEP54zUDBf4xN9oe2a5JcSnih6rFK5zhriZHjnZpwi52w0uvfY8trDY4VFxrTKbYKdfbUR2UFWwEP2ZmBadjzbY1Rq3Jl2wPwNf++q4LIGhdffQCA83uzoC5b+w8wEAhxdHAMVxsCvEcMmBtaOpIMcexfMD1Cf23uqTGNhAoGAPQKHOxn5r2ouMZrNB2TtVHro5/BfDBIFBfEONdzQt8ya+Ql13rsfe9oVt6dVKkVFtcGCWTu2Wo4qxjVSQZn7bQJcKJP471HAtP48BaFXt4/K96TlzZZimauS4IpC7J0pqGcMsl490O7ffrKXolqNyemhsbcgP6kdgNP3Pcyi5xUCgYEAydqRpk4//SxYArmHK9kflXLWd+pnipww7KRuUBa8FpDPML/hR0mSnnGQZ7HGUdHVGqdgV7Eqqpw/AU3FPxwe3cGwhc7afwrX8kq+QTYWLNYQeV0BbNxGTOLSGgIkxnEYEqDWqEq/HfOmz4S2dF7UzUJXBlOzzjCwcvXiMR+zk9g=
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY label (labelid, name, owner, namespace, creationdate, lastmoddate) FROM stdin;
688129	favourite	2c9480835b66d1e8015b66d2d7280000	my	2015-09-15 16:59:33.517	2015-09-15 16:59:33.517
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
589827	//confluence.atlassian.com/x/SRwC	//confluence.atlassian.com/x/srwc	https	https	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
589828	//confluence.atlassian.com/x/2yAC	//confluence.atlassian.com/x/2yac	https	https	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
589829	ob	ob	OB	ob	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
589830	//blogs.atlassian.com/2015/01/roadmap-planner-macro/	//blogs.atlassian.com/2015/01/roadmap-planner-macro/	http	http	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
589831	//confluence.atlassian.com/x/NgszKw	//confluence.atlassian.com/x/ngszkw	https	https	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
589832	//www.atlassian.com/collaboration/confluence-organize-work-in-spaces	//www.atlassian.com/collaboration/confluence-organize-work-in-spaces	https	https	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
589833	//www.atlassian.com/collaboration/confluence-create-content-with-pages	//www.atlassian.com/collaboration/confluence-create-content-with-pages	https	https	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
589834	//www.atlassian.com/collaboration/confluence-discuss-work-with-your-team	//www.atlassian.com/collaboration/confluence-discuss-work-with-your-team	https	https	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
589825	//confluence.atlassian.com/x/liAC	//confluence.atlassian.com/x/liac	https	https	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
589826	//confluence.atlassian.com/x/ASEC	//confluence.atlassian.com/x/asec	https	https	360451	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257	2c9480835b66d1e8015b66d2d7280000	2015-09-21 12:31:34.257
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
655361	360451	\N	\N	2c9480835b66d1e8015b66d348290001	2c9480835b66d1e8015b66d348290001	2015-08-12 17:14:17.637	2c9480835b66d1e8015b66d348290001	2015-08-12 17:14:17.637	f	f	page
655362	360467	\N	\N	2c9480835b66d1e8015b66d2d7280000	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:53.222	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:53.222	f	f	page
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
confluence_ContentEntityObject	360451	confluence.inline.tasks.sequence.last	5	f	0	13		0	0	\N
USERPROPS-2c9480835b66d1e8015b66d2d7280000	0	efi.store.onboarding.onboarding-state:introWorkflow	5	f	0	__complete__		0	0	\N
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
393217	admin	1492078745654	7b4652f9588e6fadf4e5e8fcc38c127064c7d5c6
\.


--
-- Data for Name: scheduler_clustered_jobs; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY scheduler_clustered_jobs (id, job_id, next_run_time, version, job_runner_key, raw_parameters, sched_type, cron_expression, cron_time_zone, interval_first_run_time, interval_millis) FROM stdin;
65537	analytics-collection	2017-04-13 23:00:00	1	com.atlassian.plugins.authentication.impl.analytics.StatisticsCollectionService	\N	C	0 0 23 * * ?	\N	\N	0
65538	assertionId-cleanup	2017-04-13 11:18:21.149	1	com.atlassian.plugins.authentication.impl.web.saml.AssertionValidationService	\N	I	\N	\N	2017-04-13 11:18:21.149	3600000
65539	CompatibilityPluginScheduler.JobId.Service Provider Session Remover	2017-04-13 18:19:18.428	1	CompatibilityPluginScheduler.JobRunnerKey.Service Provider Session Remover	\N	I	\N	\N	2017-04-13 18:19:18.428	28800000
65543	PluginUpdateCheckJob-job	2017-04-14 01:08:07.215	1	PluginUpdateCheckJob-runner	\N	I	\N	\N	2017-04-14 01:08:07.215	86400000
65544	InstanceTopologyJob-job	2017-04-14 04:34:17.065	1	InstanceTopologyJob-runner	\N	I	\N	\N	2017-04-14 04:34:17.065	86400000
65541	LocalPluginLicenseNotificationJob-job	2017-04-14 10:19:19.491	2	LocalPluginLicenseNotificationJob-runner	\N	I	\N	\N	2017-04-13 10:19:18.566	86400000
65542	PluginRequestCheckJob-job	2017-04-13 11:19:19.529	2	PluginRequestCheckJob-runner	\N	I	\N	\N	2017-04-13 10:19:18.599	3600000
65545	AuditLogCleaner	2017-04-14 00:00:45	1	AuditLogCleaner	\N	C	45 0 0 * * ?	GMT	\N	0
65546	ClearExpiredRememberMeTokensJob	2017-04-20 00:00:00	1	ClearExpiredRememberMeTokensJob	\N	C	0 0 0 20 * ?	GMT	\N	0
65547	JournalCleaner	2017-04-14 02:00:00	1	JournalCleaner	\N	C	0 0 2 * * ?	GMT	\N	0
65548	clearOldMailErrorsJob	2017-04-14 03:00:00	1	clearOldMailErrorsJob	\N	C	0 0 3 * * ?	GMT	\N	0
65549	BackupJob	2017-04-14 02:00:00	1	BackupJob	\N	C	0 0 2 * * ?	GMT	\N	0
65550	DailyReportJob	2017-04-14 00:00:00	1	DailyReportJob	\N	C	0 0 0 * * ?	GMT	\N	0
65551	ESIndexJournalVerifierJob	2017-04-13 10:21:19.89	2	ESIndexJournalVerifierJob	\N	I	\N	\N	\N	120000
65556	periodicEventPublisherJob	2017-04-14 02:15:00	1	com.atlassian.confluence.plugins.analytics-jobs-plugin:periodicEventPublisherJob	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c02000078700000000174004b636f6d2e61746c61737369616e2e636f6e666c75656e63652e7363686564756c652e54656e616e7441776172654a6f6252657363686564756c65723a69732d747a2d73656e7369746976657571007e000400000001737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787001	C	0 15 2 1/1 * ? *	GMT	\N	0
65555	synchronyStatusCheck	2017-04-13 10:20:20.551	3	com.atlassian.confluence.plugins.synchrony-interop:synchronyStatusCheckJob	\N	I	\N	\N	\N	30000
65554	batchingJobConfig	2017-04-13 10:30:00	2	com.atlassian.confluence.plugins.confluence-notifications-batch-plugin:batchingJob	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c02000078700000000174004b636f6d2e61746c61737369616e2e636f6e666c75656e63652e7363686564756c652e54656e616e7441776172654a6f6252657363686564756c65723a69732d747a2d73656e7369746976657571007e000400000001737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787001	C	0 0/10 * 1/1 * ? *	GMT	\N	0
\.


--
-- Data for Name: scheduler_run_details; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY scheduler_run_details (id, job_id, start_time, duration, outcome, message) FROM stdin;
458753	BundledUpdateCheckJob-job	2017-04-13 10:19:19.486	57	S	
458754	LocalTaskQueueFlushJob	2017-04-13 10:19:19.565	29	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@4afc83b6
458755	PluginRequestCheckJob-job	2017-04-13 10:19:19.529	88	S	
458756	EhCacheCompactionJob	2017-04-13 10:19:19.639	30	S	
458757	TaskQueueFlushJob	2017-04-13 10:19:19.665	18	S	Executed tasks for queue com.atlassian.confluence.cluster.ClusteredTaskQueue@1bb6d1e8
458758	LaasPerformanceLoggingJob	2017-04-13 10:19:19.702	6	A	LaaS performance logging is turned off
458759	LocalPluginLicenseNotificationJob-job	2017-04-13 10:19:19.491	250	S	
458760	ClusterSafetyJob	2017-04-13 10:19:19.728	29	S	
458761	MailQueueFlushJob	2017-04-13 10:19:19.774	2	S	Executed tasks for queue com.atlassian.core.task.ErrorQueuedTaskQueue@51de41ef
458762	DeferredFileDeletionJob	2017-04-13 10:19:19.816	3	S	
458763	ESIndexJournalVerifierJob	2017-04-13 10:19:19.89	37	A	Dark feature es.indexing disabled
458764	flushEdgeIndexQueue	2017-04-13 10:19:19.961	14	S	
458765	ReferralQueueFlushJob	2017-04-13 10:19:20.506	4	S	Executed tasks for queue com.atlassian.confluence.links.ReferralTaskQueue@4a1c9b78
458766	flushEdgeIndexQueue	2017-04-13 10:19:20.551	10	S	
458767	synchronyStatusCheck	2017-04-13 10:19:20.551	26	S	
458768	LuceneIndexFlusher	2017-04-13 10:19:19.483	1532	S	Flush done
458769	conversionLoader	2017-04-13 10:19:20.565	700	F	NoClassDefFoundError: Could not initialize class sun.awt.X11FontManager
458770	conversionQueueMonitor	2017-04-13 10:19:30.001	5	S	
458771	DefaultPluginScheduler:com.atlassian.analytics.client.upload.RemoteFilterRead:job	2017-04-13 10:19:28.531	3819	S	
458772	LuceneIndexFlusher	2017-04-13 10:19:42.939	288	S	Flush done
458773	conversionQueueMonitor	2017-04-13 10:19:45	5	S	
458774	ClusterSafetyJob	2017-04-13 10:19:49.73	20	S	
458775	flushEdgeIndexQueue	2017-04-13 10:19:50.551	16	S	
458776	synchronyStatusCheck	2017-04-13 10:19:50.551	27	S	
458777	LuceneIndexFlusher	2017-04-13 10:19:58.849	415	S	Flush done
458779	conversionQueueMonitor	2017-04-13 10:20:00.004	7	S	
458778	contentJobQueueExecutorTrigger	2017-04-13 10:20:00.004	6	S	
458780	confluenceDavSessionInvalidatorJobTrigger	2017-04-13 10:20:00.003	10	S	
458781	batchingJobConfig	2017-04-13 10:20:00.003	30	S	
\.


--
-- Name: seq_journal_entry_id; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('seq_journal_entry_id', 21, true);


--
-- Data for Name: spacepermissions; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY spacepermissions (permid, spaceid, permtype, permgroupname, permusername, permalluserssubject, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
229377	\N	USECONFLUENCE	confluence-administrators	\N	\N	\N	2017-04-13 10:19:05.198	\N	2017-04-13 10:19:05.198
229378	\N	PERSONALSPACE	confluence-users	\N	\N	\N	2017-04-13 10:19:05.221	\N	2017-04-13 10:19:05.221
229379	\N	ADMINISTRATECONFLUENCE	confluence-administrators	\N	\N	\N	2017-04-13 10:19:05.222	\N	2017-04-13 10:19:05.222
229380	\N	USECONFLUENCE	confluence-users	\N	\N	\N	2017-04-13 10:19:05.222	\N	2017-04-13 10:19:05.222
229381	\N	SYSTEMADMINISTRATOR	confluence-administrators	\N	\N	\N	2017-04-13 10:19:05.223	\N	2017-04-13 10:19:05.223
229382	\N	PERSONALSPACE	confluence-administrators	\N	\N	\N	2017-04-13 10:19:05.224	\N	2017-04-13 10:19:05.224
229383	\N	CREATESPACE	confluence-users	\N	\N	\N	2017-04-13 10:19:05.225	\N	2017-04-13 10:19:05.225
229384	\N	CREATESPACE	confluence-administrators	\N	\N	\N	2017-04-13 10:19:05.225	\N	2017-04-13 10:19:05.225
229438	524289	VIEWSPACE	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.011	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.011
229439	524289	VIEWSPACE	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.043	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.043
229440	524289	VIEWSPACE	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.064	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.064
229441	524289	VIEWSPACE	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.081	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.081
229442	524289	REMOVEOWNCONTENT	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.099	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.099
229443	524289	REMOVEOWNCONTENT	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.121	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.121
229444	524289	REMOVEOWNCONTENT	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.138	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.138
229445	524289	REMOVEOWNCONTENT	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.163	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.163
229446	524289	COMMENT	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.181	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.181
229447	524289	COMMENT	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.196	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.196
229448	524289	COMMENT	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.214	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.214
229449	524289	COMMENT	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.23	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.23
229450	524289	EDITSPACE	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.247	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.247
229451	524289	EDITSPACE	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.263	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.263
229452	524289	EDITSPACE	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.279	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.279
229453	524289	EDITSPACE	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.296	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.296
229454	524289	SETSPACEPERMISSIONS	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.313	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.313
229455	524289	SETSPACEPERMISSIONS	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.329	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.329
229456	524289	REMOVEPAGE	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.345	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.345
229457	524289	REMOVEPAGE	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.368	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.368
229458	524289	REMOVEPAGE	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.384	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.384
229459	524289	REMOVEPAGE	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.399	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.399
229460	524289	REMOVECOMMENT	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.414	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.414
229461	524289	REMOVECOMMENT	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.429	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.429
229462	524289	REMOVECOMMENT	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.444	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.444
229463	524289	REMOVECOMMENT	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.461	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.461
229464	524289	REMOVEBLOG	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.478	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.478
229465	524289	REMOVEBLOG	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.494	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.494
229466	524289	REMOVEBLOG	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.509	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.509
229467	524289	REMOVEBLOG	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.522	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.522
229468	524289	CREATEATTACHMENT	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.539	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.539
229469	524289	CREATEATTACHMENT	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.555	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.555
229470	524289	CREATEATTACHMENT	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.571	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.571
229471	524289	CREATEATTACHMENT	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.585	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.585
229472	524289	REMOVEATTACHMENT	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.6	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.6
229473	524289	REMOVEATTACHMENT	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.616	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.616
229474	524289	REMOVEATTACHMENT	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.63	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.63
229475	524289	REMOVEATTACHMENT	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.644	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.644
229476	524289	EDITBLOG	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.656	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.656
229477	524289	EDITBLOG	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.671	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.671
229478	524289	EDITBLOG	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.686	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.686
229479	524289	EDITBLOG	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.7	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.7
229480	524289	EXPORTPAGE	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.714	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.714
229481	524289	EXPORTPAGE	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.729	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.729
229482	524289	EXPORTPAGE	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.745	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.745
229483	524289	EXPORTPAGE	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.759	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.759
229484	524289	EXPORTSPACE	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.772	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.772
229485	524289	EXPORTSPACE	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.787	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.787
229486	524289	EXPORTSPACE	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.802	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.802
229487	524289	EXPORTSPACE	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.819	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.819
229488	524289	REMOVEMAIL	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.834	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.834
229489	524289	REMOVEMAIL	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.849	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.849
229490	524289	REMOVEMAIL	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.865	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.865
229491	524289	REMOVEMAIL	\N	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.881	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.881
229492	524289	SETPAGEPERMISSIONS	confluence-administrators	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.895	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.895
229493	524289	SETPAGEPERMISSIONS	\N	2c9480835b66d1e8015b66d2d7280000	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.911	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.911
229494	524289	SETPAGEPERMISSIONS	confluence-users	\N	\N	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.928	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:39.928
\.


--
-- Data for Name: spaces; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY spaces (spaceid, spacename, spacekey, lowerspacekey, spacedescid, homepage, creator, creationdate, lastmodifier, lastmoddate, spacetype, spacestatus) FROM stdin;
524289	TEST	TEST	test	360452	360451	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:32.93	2c9480835b66d1e8015b66d2d7280000	2017-04-13 10:19:36.504	global	CURRENT
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
2c9480835b66d1e8015b66d2d7280000	admin	admin
2c9480835b66d1e8015b66d348290001	exporter	exporter
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
851969	360467	2c9480835b66d1e8015b66d2d7280000	PAGE	collaborator	2017-04-13 10:19:53.622	2017-04-13 10:19:53.622	2c9480835b66d1e8015b66d2d7280000	2c9480835b66d1e8015b66d2d7280000
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

