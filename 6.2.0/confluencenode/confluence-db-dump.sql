--
-- PostgreSQL database dump
--

drop schema public cascade;
create schema public;

-- Dumped from database version 9.4.12
-- Dumped by pg_dump version 9.6.2

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
confluence.extra.userlister	1	2017-05-27 12:40:31.278	userlister
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2	2017-05-27 12:40:31.278	luceneSupportHealthCheck
com.atlassian.confluence.plugins.confluence-paste	3	2017-05-27 12:40:31.278	autoconvert-widget-connector
confluence.listeners.core	4	2017-05-27 12:40:31.278	relatedContentRefactoringListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5	2017-05-27 12:40:31.278	instanceTopologyReportUpgradeTask
com.atlassian.support.healthcheck.support-healthcheck-plugin	6	2017-05-27 12:40:31.278	shc-common-modules
com.atlassian.confluence.plugins.confluence-content-property-storage	7	2017-05-27 12:40:31.278	contentPropertyFinderFactory
com.atlassian.confluence.plugins.confluence-like	8	2017-05-27 12:40:31.278	like-icon-resources
com.atlassian.confluence.editor	9	2017-05-27 12:40:31.278	xmlEventReaderFactory
confluence.sections.admin	10	2017-05-27 12:40:31.278	attachmentstoragesetup
com.atlassian.confluence.plugins.recently-viewed-plugin	11	2017-05-27 12:40:31.278	recentlyViewedManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	12	2017-05-27 12:40:31.278	create-blank-page
com.atlassian.confluence.plugins.confluence-inline-comments	13	2017-05-27 12:40:31.278	new-mail-notification-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	14	2017-05-27 12:40:31.278	upm-js-libraries
com.atlassian.confluence.plugins.confluence-email-resources	15	2017-05-27 12:40:31.278	content-templates-content-created-pattern-2.0.0
confluence.sections.admin	16	2017-05-27 12:40:31.278	mailservers
com.atlassian.confluence.plugins.confluence-mobile	17	2017-05-27 12:40:31.278	view-comments-resource
com.atlassian.applinks.applinks-trustedapps-plugin	18	2017-05-27 12:40:31.278	userManager
com.atlassian.streams.confluence	19	2017-05-27 12:40:31.278	date-sma-SE
com.atlassian.applinks.applinks-plugin	20	2017-05-27 12:40:31.278	applinksRest
com.atlassian.confluence.plugins.gadgets	21	2017-05-27 12:40:31.278	permissionManager
confluence.extra.layout	22	2017-05-27 12:40:31.278	xhtml-section
com.atlassian.support.stp	23	2017-05-27 12:40:31.278	servletContextProvider
com.atlassian.oauth.serviceprovider	24	2017-05-27 12:40:31.278	tokenFactory
com.atlassian.confluence.plugins.confluence-nav-links	25	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.applinks.applinks-plugin	26	2017-05-27 12:40:31.278	applinks-whoami
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	27	2017-05-27 12:40:31.278	notificationQueueAdminLink
com.atlassian.support.stp	28	2017-05-27 12:40:31.278	stp-view
com.atlassian.plugins.base-hipchat-integration-plugin	29	2017-05-27 12:40:31.278	apiMessagePanel
confluence.macros.multimedia	30	2017-05-27 12:40:31.278	flash-autosize
com.atlassian.confluence.plugins.confluence-file-notifications	31	2017-05-27 12:40:31.278	datasourceFactory
com.atlassian.confluence.plugins.confluence-templates	32	2017-05-27 12:40:31.278	template-management-resources
com.atlassian.plugins.atlassian-nav-links-plugin	33	2017-05-27 12:40:31.278	custom-apps-admin-page-template
com.atlassian.applinks.applinks-plugin	34	2017-05-27 12:40:31.278	jira
confluence.sections.space.tools	35	2017-05-27 12:40:31.278	reorder
com.atlassian.confluence.plugins.confluence-create-content-plugin	36	2017-05-27 12:40:31.278	main
com.atlassian.confluence.plugins.confluence-rest-resources	37	2017-05-27 12:40:31.278	content-search-api
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	38	2017-05-27 12:40:31.278	synchrony-util
com.atlassian.auiplugin	39	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-params
confluence.extra.impresence2	40	2017-05-27 12:40:31.278	aim-xhtml
confluence.web.resources	41	2017-05-27 12:40:31.278	draft-changes-js
com.atlassian.confluence.plugins.dialog-wizard	42	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.confluence.plugins.view-source	43	2017-05-27 12:40:31.278	view-source-menu-resources
confluence.web.resources	44	2017-05-27 12:40:31.278	page-editor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	45	2017-05-27 12:40:31.278	settingsManager
com.atlassian.oauth.serviceprovider	46	2017-05-27 12:40:31.278	helpLinkResolverContextItem
com.atlassian.confluence.ext.newcode-macro-plugin	47	2017-05-27 12:40:31.278	syntaxhighlighter-brushes
confluence.search.mappers.lucene	48	2017-05-27 12:40:31.278	searchResultTypeSearchFilter
com.atlassian.confluence.keyboardshortcuts	49	2017-05-27 12:40:31.278	tinymce.table.copy.row
com.atlassian.auiplugin	50	2017-05-27 12:40:31.278	aui-experimental-reset
com.atlassian.streams.confluence	51	2017-05-27 12:40:31.278	userAccessor
com.atlassian.crowd.embedded.admin	52	2017-05-27 12:40:31.278	web-resources
com.atlassian.confluence.plugins.confluence-inline-comments	53	2017-05-27 12:40:31.278	inlineCommentsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	54	2017-05-27 12:40:31.278	follower-added-recipients-provider
confluence.extra.impresence2	55	2017-05-27 12:40:31.278	reporter-wildfire
com.atlassian.confluence.restplugin	56	2017-05-27 12:40:31.278	userManager
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	57	2017-05-27 12:40:31.278	service
com.atlassian.confluence.plugins.confluence-email-resources	58	2017-05-27 12:40:31.278	get-attachment-icon-function
com.atlassian.confluence.plugins.gadgets	59	2017-05-27 12:40:31.278	settingsManager
com.atlassian.streams.confluence	60	2017-05-27 12:40:31.278	date-bs-Latn-BA
confluence.listeners.core	61	2017-05-27 12:40:31.278	pageNotificationsListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	62	2017-05-27 12:40:31.278	header-create-quick
com.atlassian.plugins.editor	63	2017-05-27 12:40:31.278	components
com.atlassian.plugin.jslibs	64	2017-05-27 12:40:31.278	backbone.paginator-2.0.2-factory
com.atlassian.confluence.plugins.confluence-space-ia	65	2017-05-27 12:40:31.278	server-soy-resources
com.atlassian.confluence.plugins.confluence-templates	66	2017-05-27 12:40:31.278	variable-editor-content-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	67	2017-05-27 12:40:31.278	upm-purchased-addons-resources
com.atlassian.streams	68	2017-05-27 12:40:31.278	date-nl-NL
com.atlassian.mywork.mywork-common-plugin	69	2017-05-27 12:40:31.278	actionServiceSelector
com.atlassian.applinks.applinks-plugin	70	2017-05-27 12:40:31.278	fisheyeCrucible
com.atlassian.support.stp	71	2017-05-27 12:40:31.278	isDisplayableAppCondition
com.atlassian.streams	72	2017-05-27 12:40:31.278	date-bg-BG
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	73	2017-05-27 12:40:31.278	darkFeatureManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	74	2017-05-27 12:40:31.278	admin-resources
com.atlassian.querylang.confluence-cql-plugin	75	2017-05-27 12:40:31.278	content-id-sort-mapper
com.atlassian.confluence.contributors	76	2017-05-27 12:40:31.278	labelContributionExtractor
com.atlassian.querylang.confluence-cql-plugin	77	2017-05-27 12:40:31.278	start-of-year-zero-arg-function
confluence.macros.profile	78	2017-05-27 12:40:31.278	network-resources-css
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	79	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.streams.confluence	80	2017-05-27 12:40:31.278	pageWatchActionHandler
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	81	2017-05-27 12:40:31.278	localeResolver
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	82	2017-05-27 12:40:31.278	jwtTokenGenerator
com.atlassian.plugins.rest.atlassian-rest-module	83	2017-05-27 12:40:31.278	rest-container-servlet-filter-FORWARD
com.atlassian.confluence.plugins.share-page	84	2017-05-27 12:40:31.278	share-address-recipients-provider
com.atlassian.confluence.plugins.confluence-edge-index	85	2017-05-27 12:40:31.278	popularContentQueries
com.atlassian.confluence.plugins.confluence-monitoring-console	86	2017-05-27 12:40:31.278	monitoring-console-resources
com.atlassian.applinks.applinks-plugin	87	2017-05-27 12:40:31.278	servlet-edit-application-link
com.atlassian.applinks.applinks-plugin	88	2017-05-27 12:40:31.278	entityLinkBuilderFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	89	2017-05-27 12:40:31.278	page-edited-notification-template
com.atlassian.confluence.plugins.confluence-page-banner	90	2017-05-27 12:40:31.278	content-metadata-page-restrictions-edit
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	91	2017-05-27 12:40:31.278	rest-filter
com.atlassian.plugins.tinymce	92	2017-05-27 12:40:31.278	popup-resources
com.atlassian.mywork.mywork-confluence-provider-plugin	93	2017-05-27 12:40:31.278	notificationManager
confluence.search.mappers.lucene	94	2017-05-27 12:40:31.278	externallyDeletedUserSearchFilter
com.atlassian.confluence.plugins.confluence-create-content-plugin	95	2017-05-27 12:40:31.278	pluginEnabledListener
confluence.filters.core	96	2017-05-27 12:40:31.278	confluenceTimingFilter
com.atlassian.confluence.plugins.confluence-daily-summary-email	97	2017-05-27 12:40:31.278	secureTokenGenerator
confluence.renderer.components	98	2017-05-27 12:40:31.278	token
confluence.macros.advanced	99	2017-05-27 12:40:31.278	junit-report-resources
com.atlassian.plugins.atlassian-whitelist-core-plugin	100	2017-05-27 12:40:31.278	selfUrlMatcher
com.atlassian.confluence.plugins.gadgets	101	2017-05-27 12:40:31.278	gadgetWhiteListManager
com.atlassian.confluence.plugins.confluence-dashboard	102	2017-05-27 12:40:31.278	welcomeMessageService
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	103	2017-05-27 12:40:31.278	pluginEventManager
com.atlassian.confluence.plugins.confluence-dashboard	104	2017-05-27 12:40:31.278	dashboard-rest-filter
com.atlassian.confluence.plugins.confluence-easyuser-admin	105	2017-05-27 12:40:31.278	easyuser-rest
com.atlassian.plugins.editor	106	2017-05-27 12:40:31.278	editoractions
com.atlassian.confluence.plugins.confluence-lookandfeel	107	2017-05-27 12:40:31.278	logoInterceptor
tac.confluence.languages.es_ES	108	2017-05-27 12:40:31.278	es_ES
confluence.listeners.core	109	2017-05-27 12:40:31.278	pluginEventLogger
com.atlassian.auiplugin	110	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-unbind-text-resize
com.atlassian.confluence.ext.newcode-macro-plugin	111	2017-05-27 12:40:31.278	code-macro-editor
com.atlassian.confluence.plugins.confluence-paste	112	2017-05-27 12:40:31.278	restEndPoint-filter
com.atlassian.plugins.atlassian-nps-plugin	113	2017-05-27 12:40:31.278	licenseHandler
com.atlassian.confluence.plugins.confluence-document-conversion-library	114	2017-05-27 12:40:31.278	conversionCacheListener
com.atlassian.applinks.applinks-plugin	115	2017-05-27 12:40:31.278	applinksRest-filter
com.atlassian.confluence.plugins.confluence-knowledge-base	116	2017-05-27 12:40:31.278	knowledge-base-search
com.atlassian.auiplugin	117	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-i18n-aui
com.atlassian.applinks.applinks-basicauth-plugin	118	2017-05-27 12:40:31.278	localeResolver
com.atlassian.support.stp	119	2017-05-27 12:40:31.278	licenseHandler
com.atlassian.analytics.analytics-whitelist	120	2017-05-27 12:40:31.278	globalConfluenceAnalyticsWhitelist
com.atlassian.plugins.authentication.atlassian-authentication-plugin	121	2017-05-27 12:40:31.278	confluence-authentication-config-web-item
com.atlassian.mywork.mywork-confluence-host-plugin	122	2017-05-27 12:40:31.278	mw-mobile
com.atlassian.confluence.plugins.confluence-onboarding	123	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-edge-index	124	2017-05-27 12:40:31.278	likeCountQuery
com.atlassian.streams.streams-thirdparty-plugin	125	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	126	2017-05-27 12:40:31.278	forgot-password-notification
com.atlassian.confluence.plugins.confluence-email-resources	127	2017-05-27 12:40:31.278	content-templates-move-page-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	128	2017-05-27 12:40:31.278	space-creation-step
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	129	2017-05-27 12:40:31.278	pluginUpdateRequestStore
com.atlassian.auiplugin	130	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-jquery-jquery-tablesorter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	131	2017-05-27 12:40:31.278	blogpost-edited-notification
com.atlassian.applinks.applinks-basicauth-plugin	132	2017-05-27 12:40:31.278	i18nResolver
confluence.macros.multimedia	133	2017-05-27 12:40:31.278	windows-media
com.atlassian.auiplugin	134	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-alphanum
com.atlassian.confluence.plugins.confluence-request-access-plugin	135	2017-05-27 12:40:31.278	request-access-notification-transformer
com.atlassian.confluence.plugins.confluence-sal-plugin	136	2017-05-27 12:40:31.278	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	137	2017-05-27 12:40:31.278	notification-template
com.atlassian.plugin.notifications.notifications-module	138	2017-05-27 12:40:31.278	notificationQueueAdminServlet
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	139	2017-05-27 12:40:31.278	dark-feature-rest
com.atlassian.confluence.plugins.recently-viewed-plugin	140	2017-05-27 12:40:31.278	recently-viewed-spaces-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	141	2017-05-27 12:40:31.278	lifecycleManager
confluence.web.resources	142	2017-05-27 12:40:31.278	help-content-resources
com.atlassian.confluence.plugins.soy	143	2017-05-27 12:40:31.278	soy-content-type-i18n-key-function
confluence.search.mappers.lucene	144	2017-05-27 12:40:31.278	inheritedLabel
com.atlassian.confluence.plugins.confluence-daily-summary-email	145	2017-05-27 12:40:31.278	rest
confluence.sections.space.tools	146	2017-05-27 12:40:31.278	stop-watching-blog
com.atlassian.mywork.mywork-confluence-host-plugin	147	2017-05-27 12:40:31.278	mwfullview
com.atlassian.confluence.plugins.quickedit	148	2017-05-27 12:40:31.278	quick-comment-hide-traditional
com.atlassian.analytics.analytics-client	149	2017-05-27 12:40:31.278	event-report
com.atlassian.auiplugin	150	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-sidebar
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	151	2017-05-27 12:40:31.278	defaultRoutesProvider
com.atlassian.confluence.editor	152	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-file-notifications	153	2017-05-27 12:40:31.278	file-content-email-css
com.atlassian.auiplugin	154	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-select-template
com.atlassian.confluence.plugins.quickreload	155	2017-05-27 12:40:31.278	commentRenderService
confluence.sections.space.tools	156	2017-05-27 12:40:31.278	colorscheme
com.atlassian.confluence.plugins.confluence-user-profile	157	2017-05-27 12:40:31.278	confluence-user-profile-resources
com.atlassian.plugins.base-hipchat-integration-plugin	158	2017-05-27 12:40:31.278	integration-steps-resources
confluence.admin.user	159	2017-05-27 12:40:31.278	browsegroupmembers
confluence.macros.advanced	160	2017-05-27 12:40:31.278	children-resource
com.atlassian.oauth.serviceprovider	161	2017-05-27 12:40:31.278	oauthFilter
com.atlassian.confluence.plugins.confluence-browser-metrics	162	2017-05-27 12:40:31.278	spa-navigation
com.atlassian.streams.core	163	2017-05-27 12:40:31.278	moduleFactory
com.atlassian.applinks.applinks-trustedapps-plugin	164	2017-05-27 12:40:31.278	applinkPluginUtil
com.atlassian.applinks.applinks-oauth-plugin	165	2017-05-27 12:40:31.278	oauth
com.atlassian.confluence.plugins.soy	166	2017-05-27 12:40:31.278	soy-sections-for-location-soy-function
com.atlassian.confluence.ext.newcode-macro-plugin	167	2017-05-27 12:40:31.278	sh-theme-eclipse
com.atlassian.confluence.plugins.confluence-create-content-plugin	168	2017-05-27 12:40:31.278	create-content-keyboard-shortcut
com.atlassian.confluence.plugins.confluence-sal-plugin	169	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.extra.widgetconnector	170	2017-05-27 12:40:31.278	velocityRenderService
com.atlassian.streams.confluence	171	2017-05-27 12:40:31.278	date-hr-HR
com.atlassian.plugins.atlassian-plugins-webresource-plugin	172	2017-05-27 12:40:31.278	loaders
confluence.renderer.components	173	2017-05-27 12:40:31.278	deleted
com.atlassian.confluence.plugins.soy	174	2017-05-27 12:40:31.278	soy-get-user-by-name-function
com.atlassian.confluence.plugins.confluence-content-property-storage	175	2017-05-27 12:40:31.278	text-field-type-query-mapper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	176	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.gadgets	177	2017-05-27 12:40:31.278	gadget-directory-resources
confluence.search.mappers.lucene	178	2017-05-27 12:40:31.278	spanNear
com.atlassian.streams	179	2017-05-27 12:40:31.278	oauthCompletionServlet
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	180	2017-05-27 12:40:31.278	formatSettingsManager
com.atlassian.confluence.plugins.confluence-lookandfeel	181	2017-05-27 12:40:31.278	sitelogoaction
com.atlassian.plugins.atlassian-nav-links-plugin	182	2017-05-27 12:40:31.278	administration-shortcuts-resources
confluence.sections.create	183	2017-05-27 12:40:31.278	add-page-with-parent-template
com.atlassian.plugins.atlassian-nav-links-plugin	184	2017-05-27 12:40:31.278	capabilities-resource
com.atlassian.confluence.plugins.confluence-sal-plugin	185	2017-05-27 12:40:31.278	licenseHandler
confluence.search.mappers.lucene	186	2017-05-27 12:40:31.278	textSearchFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	187	2017-05-27 12:40:31.278	appendToSelectionModifier
com.atlassian.auiplugin	188	2017-05-27 12:40:31.278	jquery-autocomplete-deprecated
com.atlassian.confluence.plugins.confluence-like	189	2017-05-27 12:40:31.278	like-recipients-provider
com.atlassian.confluence.plugins.confluence-email-resources	190	2017-05-27 12:40:31.278	view-comment-email-call-to-action
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	191	2017-05-27 12:40:31.278	pluginFactory
com.atlassian.integration.jira.jira-integration-plugin	192	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	193	2017-05-27 12:40:31.278	marketplace_confluence
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	194	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.confluence.plugins.confluence-quicknav	195	2017-05-27 12:40:31.278	quicksearch
com.atlassian.auiplugin	196	2017-05-27 12:40:31.278	internal-tether-0.6.5-tether
com.atlassian.oauth.serviceprovider	197	2017-05-27 12:40:31.278	authenticationController
com.atlassian.confluence.ext.newcode-macro-plugin	198	2017-05-27 12:40:31.278	syntaxhighlighter
com.atlassian.confluence.plugins.confluence-cache-management-plugin	199	2017-05-27 12:40:31.278	cacheAdmin
com.atlassian.confluence.plugins.confluence-mobile	200	2017-05-27 12:40:31.278	viewMacroMarshallerFactory
com.atlassian.plugins.atlassian-nav-links-plugin	201	2017-05-27 12:40:31.278	application-type-service
com.atlassian.auiplugin	202	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-drop-down
com.atlassian.activeobjects.activeobjects-plugin	203	2017-05-27 12:40:31.278	dispatcher-servlet
com.atlassian.confluence.plugins.confluence-avatar-plugin	204	2017-05-27 12:40:31.278	confluenceAvatarProvider
com.atlassian.streams.confluence	205	2017-05-27 12:40:31.278	date-it-IT
confluence.web.resources	206	2017-05-27 12:40:31.278	keygen
com.atlassian.mywork.mywork-confluence-host-plugin	207	2017-05-27 12:40:31.278	servlet-renderer
com.atlassian.streams.confluence	208	2017-05-27 12:40:31.278	date-pl-PL
com.atlassian.plugins.atlassian-help-tips	209	2017-05-27 12:40:31.278	compatibilityUserManager
com.atlassian.confluence.contributors	210	2017-05-27 12:40:31.278	noResult
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	211	2017-05-27 12:40:31.278	legacy-axis-endpoint
com.atlassian.auiplugin	212	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-date-picker
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	213	2017-05-27 12:40:31.278	follower-network-notification-recipients-provider
confluence.web.components	214	2017-05-27 12:40:31.278	editor-notifications
com.atlassian.confluence.plugins.confluence-daily-summary-email	215	2017-05-27 12:40:31.278	populartodayaction
com.atlassian.support.stp	216	2017-05-27 12:40:31.278	stp-rest
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	217	2017-05-27 12:40:31.278	api
com.atlassian.streams	218	2017-05-27 12:40:31.278	pluginScheduler
confluence.search.mappers.lucene	219	2017-05-27 12:40:31.278	shadowedUserSearchFilter
com.atlassian.support.stp	220	2017-05-27 12:40:31.278	logScanService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	221	2017-05-27 12:40:31.278	comment-created-notification
com.atlassian.confluence.plugins.confluence-request-access-plugin	222	2017-05-27 12:40:31.278	request-access-notification-recipients-provider
confluence.web.resources	223	2017-05-27 12:40:31.278	panel-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	224	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.confluence.plugins.confluence-email-resources	225	2017-05-27 12:40:31.278	content-templates-page-title-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-inline-comments	226	2017-05-27 12:40:31.278	reply-inline-comment-batch-email-action
confluence.sections.space.tools	227	2017-05-27 12:40:31.278	export
com.atlassian.support.stp	228	2017-05-27 12:40:31.278	os-support-info
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	229	2017-05-27 12:40:31.278	prettyurls-combined-filter-after-encoding
com.atlassian.confluence.plugins.confluence-email-resources	230	2017-05-27 12:40:31.278	debug-email-border-function
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	231	2017-05-27 12:40:31.278	remote-view-page-web-resource
com.atlassian.plugin.notifications.notifications-module	232	2017-05-27 12:40:31.278	userEmail
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	233	2017-05-27 12:40:31.278	comment-edited-notification-template-body
com.atlassian.confluence.plugins.confluence-inline-comments	234	2017-05-27 12:40:31.278	notification-template-resolve
com.atlassian.plugins.tinymce	235	2017-05-27 12:40:31.278	utils-resources
com.atlassian.support.stp	236	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.applinks.applinks-plugin	237	2017-05-27 12:40:31.278	applinks-configure-application-links
com.atlassian.confluence.plugins.gadgets	238	2017-05-27 12:40:31.278	gadgetSpecFactory
com.atlassian.confluence.plugins.confluence-email-resources	239	2017-05-27 12:40:31.278	notification-templates-forgot-password-2.0.0
com.atlassian.plugins.rest.atlassian-rest-module	240	2017-05-27 12:40:31.278	moduleFactory
confluence.macros.advanced	241	2017-05-27 12:40:31.278	recently-updated-concise-resources
com.atlassian.confluence.plugins.confluence-email-resources	242	2017-05-27 12:40:31.278	view-changes-email-footer-item
com.atlassian.applinks.applinks-basicauth-plugin	243	2017-05-27 12:40:31.278	basic-auth-configuration
com.atlassian.plugins.atlassian-nav-links-plugin	244	2017-05-27 12:40:31.278	navigation-capability-resource
confluence.web.resources	245	2017-05-27 12:40:31.278	page-analytics
com.atlassian.streams.confluence	246	2017-05-27 12:40:31.278	date-it-CH
com.atlassian.confluence.extra.officeconnector	247	2017-05-27 12:40:31.278	wordactions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	248	2017-05-27 12:40:31.278	confluenceLicenseDateFormatter
com.atlassian.confluence.plugins.confluence-business-blueprints	249	2017-05-27 12:40:31.278	contextProviderHelper
com.atlassian.confluence.plugins.confluence-space-blueprints	250	2017-05-27 12:40:31.278	view-space-email-item
confluence.web.resources	251	2017-05-27 12:40:31.278	url
com.atlassian.confluence.plugins.dialog-wizard	252	2017-05-27 12:40:31.278	dialog
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	253	2017-05-27 12:40:31.278	templateManager
com.atlassian.mywork.mywork-confluence-provider-plugin	254	2017-05-27 12:40:31.278	i18NBeanFactory
com.atlassian.confluence.plugins.confluence-space-blueprints	255	2017-05-27 12:40:31.278	team-space-homepage-template
com.atlassian.confluence.plugins.confluence-email-resources	256	2017-05-27 12:40:31.278	add-comment-to-content-email-footer-item
confluence.converters.core	257	2017-05-27 12:40:31.278	space-converter
com.atlassian.plugin.notifications.notifications-module	258	2017-05-27 12:40:31.278	notificationQueueManager
confluence.extra.jira	259	2017-05-27 12:40:31.278	countImagegenerator
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	260	2017-05-27 12:40:31.278	hipChatAnalyticsWhitelist
com.atlassian.confluence.keyboardshortcuts	261	2017-05-27 12:40:31.278	tinymce.link
com.atlassian.confluence.plugins.confluence-request-access-plugin	262	2017-05-27 12:40:31.278	request-access-notification-email-template
confluence.extra.confluencerpc	263	2017-05-27 12:40:31.278	confluence-soap
confluence.user.hover.menu	264	2017-05-27 12:40:31.278	user-blog
com.atlassian.confluence.plugins.confluence-file-notifications	265	2017-05-27 12:40:31.278	mimeBodyPartRecorder
com.atlassian.oauth.serviceprovider	266	2017-05-27 12:40:31.278	compatibilityPluginScheduler
com.atlassian.confluence.plugins.confluence-email-resources	267	2017-05-27 12:40:31.278	stop-watching-page-email-footer-item
confluence.extra.attachments	268	2017-05-27 12:40:31.278	attachments.actions
com.atlassian.confluence.extra.officeconnector	269	2017-05-27 12:40:31.278	wordXMLContentExtractor
confluence.user.menu	270	2017-05-27 12:40:31.278	user-favourites
confluence.web.resources	271	2017-05-27 12:40:31.278	bigpipe-settings
confluence.aui.staging	272	2017-05-27 12:40:31.278	confluence-flags
com.atlassian.confluence.plugins.confluence-email-resources	273	2017-05-27 12:40:31.278	template-utils-source-link-1.0.0
com.atlassian.streams.confluence	274	2017-05-27 12:40:31.278	activityItemFactory
com.atlassian.applinks.applinks-basicauth-plugin	275	2017-05-27 12:40:31.278	basic-auth
com.atlassian.confluence.plugins.confluence-create-content-plugin	276	2017-05-27 12:40:31.278	pageTemplateWebItemService
com.atlassian.mywork.mywork-common-plugin	277	2017-05-27 12:40:31.278	plugin-settings-factory
com.atlassian.confluence.plugins.confluence-spaces	278	2017-05-27 12:40:31.278	perms
com.atlassian.support.stp	279	2017-05-27 12:40:31.278	stp-license-banner-data-fecru
com.atlassian.auiplugin	280	2017-05-27 12:40:31.278	dialog
com.atlassian.mywork.mywork-confluence-provider-plugin	281	2017-05-27 12:40:31.278	contentEntityManager
com.atlassian.confluence.plugins.gadgets	282	2017-05-27 12:40:31.278	gadget-search
confluence.sections.space.advanced	283	2017-05-27 12:40:31.278	startwatchingblogsonly
com.atlassian.confluence.plugins.confluence-create-content-plugin	284	2017-05-27 12:40:31.278	create-blank-space-item
com.atlassian.auiplugin	285	2017-05-27 12:40:31.278	aui-navigation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	286	2017-05-27 12:40:31.278	blogpost-edited-notification-transformer
com.atlassian.confluence.editor	287	2017-05-27 12:40:31.278	file-types-utils-resources
com.atlassian.confluence.extra.widgetconnector	288	2017-05-27 12:40:31.278	dabbledb
com.atlassian.confluence.plugins.confluence-onboarding	289	2017-05-27 12:40:31.278	onboarding-recipients-provider
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	290	2017-05-27 12:40:31.278	hipchat-presence-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	291	2017-05-27 12:40:31.278	firstBlueprintCreationListener
com.atlassian.healthcheck.atlassian-healthcheck	292	2017-05-27 12:40:31.278	healthCheckManager
confluence.extra.impresence2	293	2017-05-27 12:40:31.278	im
confluence.web.resources	294	2017-05-27 12:40:31.278	raphael
com.atlassian.plugin.notifications.notifications-module	295	2017-05-27 12:40:31.278	configManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	296	2017-05-27 12:40:31.278	discovery-javascript-data
tac.confluence.languages.ko_KR	297	2017-05-27 12:40:31.278	ko_KR
com.atlassian.streams.confluence	298	2017-05-27 12:40:31.278	predefinedSearchBuilder
com.atlassian.confluence.contributors	299	2017-05-27 12:40:31.278	contributors
com.atlassian.confluence.plugins.confluence-email-resources	300	2017-05-27 12:40:31.278	view-attachments-email-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	301	2017-05-27 12:40:31.278	notification-templates-invite-user-1.0.0
com.atlassian.mywork.mywork-confluence-provider-plugin	302	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	303	2017-05-27 12:40:31.278	code-syntax
confluence.search.mappers.lucene	304	2017-05-27 12:40:31.278	term
com.atlassian.analytics.analytics-client	305	2017-05-27 12:40:31.278	eventReportPermissionManager
com.atlassian.confluence.editor	306	2017-05-27 12:40:31.278	editor-content-styles
com.atlassian.auiplugin	307	2017-05-27 12:40:31.278	jquery
com.atlassian.crowd.embedded.admin	308	2017-05-27 12:40:31.278	supportInformationService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	309	2017-05-27 12:40:31.278	userAccessor
com.atlassian.confluence.plugins.expand-macro	310	2017-05-27 12:40:31.278	expand-migration
com.atlassian.confluence.plugins.confluence-create-content-plugin	311	2017-05-27 12:40:31.278	rest-experimental-filter
com.atlassian.plugins.editor	312	2017-05-27 12:40:31.278	atlassian-rte-resources
com.atlassian.confluence.plugins.share-page	313	2017-05-27 12:40:31.278	share-page-email-notification-template
com.atlassian.confluence.plugins.confluence-document-conversion-library	314	2017-05-27 12:40:31.278	file-conversions
confluence.sections.space.tools	315	2017-05-27 12:40:31.278	permissionedpages
com.atlassian.confluence.plugins.status-macro	316	2017-05-27 12:40:31.278	view_content_status
com.atlassian.streams	317	2017-05-27 12:40:31.278	date-nl-BE
com.atlassian.confluence.plugins.confluence-document-conversion-library	318	2017-05-27 12:40:31.278	cloudAttachmentListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	319	2017-05-27 12:40:31.278	upm-marketplace
com.atlassian.confluence.plugins.confluence-inline-comments	320	2017-05-27 12:40:31.278	inlinecomment.sidebar.navigate.next
com.atlassian.applinks.applinks-trustedapps-plugin	321	2017-05-27 12:40:31.278	confluence-inbound-trusted
confluence.sections.space.tools	322	2017-05-27 12:40:31.278	undefined
com.atlassian.streams	323	2017-05-27 12:40:31.278	datepicker
com.atlassian.confluence.plugins.gadgets	324	2017-05-27 12:40:31.278	static-resources
confluence.web.resources	325	2017-05-27 12:40:31.278	signup
com.atlassian.confluence.plugins.confluence-sal-plugin	326	2017-05-27 12:40:31.278	salWebSudoManager
com.atlassian.auiplugin	327	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-tabs
com.atlassian.confluence.plugins.soy	328	2017-05-27 12:40:31.278	soy-dark-feature-function
confluence.macros.multimedia	329	2017-05-27 12:40:31.278	mimeTypeTranslator
com.atlassian.auiplugin	330	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-create-element
com.atlassian.plugin.notifications.notifications-module	331	2017-05-27 12:40:31.278	threadLocalDelegateExecutorFactory
com.atlassian.querylang.confluence-cql-plugin	332	2017-05-27 12:40:31.278	favorite-field
com.atlassian.confluence.plugins.confluence-inline-comments	333	2017-05-27 12:40:31.278	library
com.atlassian.confluence.plugins.confluence-dashboard	334	2017-05-27 12:40:31.278	confluence-dashboard-web-panel
confluence.search.mappers.lucene	335	2017-05-27 12:40:31.278	macroUsage
com.atlassian.auiplugin	336	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-add-id
com.atlassian.confluence.plugins.confluence-like	337	2017-05-27 12:40:31.278	rest-caching-filter
com.atlassian.applinks.applinks-oauth-plugin	338	2017-05-27 12:40:31.278	configure-outgoing-2lo-reciprocal
com.atlassian.confluence.plugins.confluence-email-resources	339	2017-05-27 12:40:31.278	template-utils-1.0.0
com.atlassian.confluence.plugins.share-page	340	2017-05-27 12:40:31.278	share-page-hipchat-notification-template
com.atlassian.analytics.analytics-client	341	2017-05-27 12:40:31.278	policy-update
confluence.sections.profile	342	2017-05-27 12:40:31.278	drafts
confluence.web.resources	343	2017-05-27 12:40:31.278	setup-cluster
com.atlassian.confluence.plugins.confluence-onboarding	344	2017-05-27 12:40:31.278	contentGenerator
confluence.extra.webdav	345	2017-05-27 12:40:31.278	webdav-config-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	346	2017-05-27 12:40:31.278	userBlueprintConfigManager
com.atlassian.confluence.contributors	347	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	348	2017-05-27 12:40:31.278	accessControlAllowOriginServletFilter
com.atlassian.confluence.extra.officeconnector	349	2017-05-27 12:40:31.278	cacheCleanupJobDetail
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	350	2017-05-27 12:40:31.278	pluginRetriever
com.atlassian.confluence.plugins.confluence-jira-content	351	2017-05-27 12:40:31.278	confluence-jira-content-loader
com.atlassian.confluence.plugins.confluence-email-resources	352	2017-05-27 12:40:31.278	notification-templates-blogpost-edited-2.0.0
com.atlassian.support.healthcheck.support-healthcheck-plugin	353	2017-05-27 12:40:31.278	healthCheckUserSettingsService
com.atlassian.streams	354	2017-05-27 12:40:31.278	date-ja-JP
com.atlassian.confluence.plugins.confluence-license-rest	355	2017-05-27 12:40:31.278	permissionManager
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	356	2017-05-27 12:40:31.278	styles
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	357	2017-05-27 12:40:31.278	hipchat2-space-configuration-2
com.atlassian.streams.core	358	2017-05-27 12:40:31.278	activity-streams-provider
com.atlassian.confluence.plugins.confluence-lookandfeel	359	2017-05-27 12:40:31.278	autoLookAndFeelManager
com.atlassian.confluence.contributors	360	2017-05-27 12:40:31.278	commentContributionExtractor
com.atlassian.confluence.plugins.confluence-inline-comments	361	2017-05-27 12:40:31.278	util-resource
com.atlassian.confluence.plugins.confluence-user-rest	362	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.auiplugin	363	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-jquery-jquery-moveto
com.atlassian.confluence.plugins.confluence-content-property-storage	364	2017-05-27 12:40:31.278	spaceService
com.atlassian.confluence.ext.newcode-macro-plugin	365	2017-05-27 12:40:31.278	moduleFactory
confluence.web.resources	366	2017-05-27 12:40:31.278	setup-select-bundle
com.atlassian.streams	367	2017-05-27 12:40:31.278	date-sk-SK
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	368	2017-05-27 12:40:31.278	comment-created-notification-template
com.atlassian.oauth.serviceprovider	369	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.streams	370	2017-05-27 12:40:31.278	date-sv-SE
com.atlassian.streams.confluence	371	2017-05-27 12:40:31.278	date-hr-BA
confluence.extractors.core	372	2017-05-27 12:40:31.278	entityDateChangeExtractor
com.atlassian.confluence.plugins.confluence-knowledge-base	373	2017-05-27 12:40:31.278	templateRendererHelper
confluence.web.resources	374	2017-05-27 12:40:31.278	edit-user-group-resources
com.atlassian.confluence.plugins.confluence-labels	375	2017-05-27 12:40:31.278	view-labels-popular-system
com.atlassian.confluence.plugins.confluence-rest-resources	376	2017-05-27 12:40:31.278	rest-api-experimental
com.atlassian.confluence.plugins.confluence-edge-index	377	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.querylang.confluence-cql-plugin	378	2017-05-27 12:40:31.278	not-query-mapper
com.atlassian.confluence.plugins.confluence-mobile	379	2017-05-27 12:40:31.278	rest
com.atlassian.applinks.applinks-cors-plugin	380	2017-05-27 12:40:31.278	corsService
com.atlassian.plugins.atlassian-nav-links-plugin	381	2017-05-27 12:40:31.278	weights
confluence.search.mappers.lucene	382	2017-05-27 12:40:31.278	modified
com.atlassian.confluence.plugins.templates-framework	383	2017-05-27 12:40:31.278	none
com.atlassian.auiplugin	384	2017-05-27 12:40:31.278	internal-message-css
com.atlassian.confluence.extra.flyingpdf	385	2017-05-27 12:40:31.278	pdfExportFontsDirectoryFontDao
com.atlassian.confluence.plugins.confluence-email-resources	386	2017-05-27 12:40:31.278	notification-templates-blogpost-trashed-2.0.0
com.atlassian.confluence.keyboardshortcuts	387	2017-05-27 12:40:31.278	confluence-keyboard-shortcuts-action
com.atlassian.confluence.plugins.confluence-monitoring-console	388	2017-05-27 12:40:31.278	stats-resource-filter
confluence.search.lucene.initialisation	389	2017-05-27 12:40:31.278	contentNameSearcherInitialisation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	390	2017-05-27 12:40:31.278	notificationManager
com.atlassian.confluence.plugins.confluence-email-resources	391	2017-05-27 12:40:31.278	notification-templates-follower-added-2.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	392	2017-05-27 12:40:31.278	upmInformationContextItem
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	393	2017-05-27 12:40:31.278	btf-config-resources
com.atlassian.mywork.mywork-common-plugin	394	2017-05-27 12:40:31.278	webSudoManager
com.atlassian.confluence.rpc.confluence-json-rpc-plugin	395	2017-05-27 12:40:31.278	json-rpc-filter
confluence.macros.advanced	396	2017-05-27 12:40:31.278	pageProvider
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	397	2017-05-27 12:40:31.278	emoticonStorageMarshaller
confluence.extra.information	398	2017-05-27 12:40:31.278	xhtml-warning
com.atlassian.confluence.plugins.confluence-space-directory	399	2017-05-27 12:40:31.278	space-directory
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	400	2017-05-27 12:40:31.278	discoveredFeatureManager
com.atlassian.auiplugin	401	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-stop-event
confluence.sections.space.advanced	402	2017-05-27 12:40:31.278	favourite
com.atlassian.mywork.mywork-confluence-host-plugin	403	2017-05-27 12:40:31.278	myworkRegistrationProvider
com.atlassian.streams.confluence	404	2017-05-27 12:40:31.278	date-uz-Latn-UZ
com.atlassian.plugins.authentication.atlassian-authentication-plugin	405	2017-05-27 12:40:31.278	authentication-config-rest-filter
com.atlassian.auiplugin	406	2017-05-27 12:40:31.278	keyboardshortcuts
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	407	2017-05-27 12:40:31.278	bundleAccessor
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	408	2017-05-27 12:40:31.278	ao
com.atlassian.mywork.mywork-confluence-host-plugin	409	2017-05-27 12:40:31.278	notification-service
com.atlassian.confluence.plugins.confluence-inline-comments	410	2017-05-27 12:40:31.278	inline-notification-reply
com.atlassian.confluence.plugins.confluence-email-resources	411	2017-05-27 12:40:31.278	stop-following-user-email-footer-item
com.atlassian.streams.confluence	412	2017-05-27 12:40:31.278	date-pt-BR
confluence.macros.advanced	413	2017-05-27 12:40:31.278	excerpt
com.atlassian.oauth.serviceprovider.sal	414	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.confluence.plugins.confluence-periodic-analytics-events	415	2017-05-27 12:40:31.278	periodic-languages-available-event
com.atlassian.confluence.editor	416	2017-05-27 12:40:31.278	panel-components
com.atlassian.gadgets.embedded	417	2017-05-27 12:40:31.278	gadget-core-resources
confluence.extra.attachments	418	2017-05-27 12:40:31.278	rest-filter
com.atlassian.streams.confluence	419	2017-05-27 12:40:31.278	date-mi-NZ
com.atlassian.streams.confluence	420	2017-05-27 12:40:31.278	date-tt-RU
com.atlassian.confluence.plugins.confluence-spaces	421	2017-05-27 12:40:31.278	spacesconfiguration
com.atlassian.streams	422	2017-05-27 12:40:31.278	date-ky-KG
com.atlassian.confluence.extra.flyingpdf	423	2017-05-27 12:40:31.278	pdfExportFileNameGenerator
com.atlassian.auiplugin	424	2017-05-27 12:40:31.278	aui-alignment
com.atlassian.confluence.extra.officeconnector	425	2017-05-27 12:40:31.278	editInWordResourceFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	426	2017-05-27 12:40:31.278	pluginLicenseManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	427	2017-05-27 12:40:31.278	excerpter
com.atlassian.mywork.mywork-confluence-host-plugin	428	2017-05-27 12:40:31.278	shared-data-lookup
com.atlassian.streams.confluence	429	2017-05-27 12:40:31.278	date-mt-MT
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	430	2017-05-27 12:40:31.278	confluence-webpanel-static-resources
com.atlassian.applinks.applinks-plugin	431	2017-05-27 12:40:31.278	applinks-common
com.atlassian.confluence.plugins.confluence-request-access-plugin	432	2017-05-27 12:40:31.278	confluence-request-access-plugin-resources
com.atlassian.auiplugin	433	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-escape-html
com.atlassian.confluence.plugins.confluence-view-file-macro	434	2017-05-27 12:40:31.278	editorFilePlaceholderGeneratorServlet
com.atlassian.gadgets.directory	435	2017-05-27 12:40:31.278	gadget-directory-admin-server-templates
com.atlassian.plugins.authentication.atlassian-authentication-plugin	436	2017-05-27 12:40:31.278	external-login-servlet
com.atlassian.confluence.plugins.confluence-email-resources	437	2017-05-27 12:40:31.278	attach-inline-dialog-images
com.atlassian.plugins.atlassian-nav-links-plugin	438	2017-05-27 12:40:31.278	atlassian-ui-popup-display-controller
com.atlassian.querylang.confluence-cql-plugin	439	2017-05-27 12:40:31.278	start-of-year-one-arg-function
confluence.search.mappers.lucene	440	2017-05-27 12:40:31.278	creator
com.atlassian.confluence.plugins.confluence-content-report-plugin	441	2017-05-27 12:40:31.278	resources
com.atlassian.confluence.plugins.confluence-previews	442	2017-05-27 12:40:31.278	upload-plugin
com.atlassian.auiplugin	443	2017-05-27 12:40:31.278	icons
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	444	2017-05-27 12:40:31.278	javascriptTemplateWebResourceTransformer
com.atlassian.confluence.plugins.status-macro	445	2017-05-27 12:40:31.278	editorImagePlageholderServlet
com.atlassian.querylang.confluence-cql-plugin	446	2017-05-27 12:40:31.278	rest-cql-metadata-filter
com.atlassian.confluence.plugins.confluence-request-access-plugin	447	2017-05-27 12:40:31.278	grant-access-notification
com.atlassian.confluence.plugins.confluence-periodic-analytics-events	448	2017-05-27 12:40:31.278	periodic-language-state-event
com.atlassian.streams.confluence	449	2017-05-27 12:40:31.278	date-el-GR
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	450	2017-05-27 12:40:31.278	velocity-1.6-template-renderer
com.atlassian.confluence.plugins.confluence-inline-tasks	451	2017-05-27 12:40:31.278	recommended-email-tasks-panel
com.atlassian.confluence.plugins.confluence-space-blueprints	452	2017-05-27 12:40:31.278	documentation-space-making-a-template-template
com.atlassian.confluence.extra.officeconnector	453	2017-05-27 12:40:31.278	viewppt-legacy
com.atlassian.confluence.editor	454	2017-05-27 12:40:31.278	editor-parent-restricted
com.atlassian.confluence.plugins.watch-button	455	2017-05-27 12:40:31.278	watch
com.atlassian.confluence.plugins.confluence-content-property-storage	456	2017-05-27 12:40:31.278	spacePropertyService
com.atlassian.confluence.plugins.gadgets.spi	457	2017-05-27 12:40:31.278	permissionService
com.atlassian.auiplugin	458	2017-05-27 12:40:31.278	aui-flag
com.atlassian.applinks.applinks-trustedapps-plugin	459	2017-05-27 12:40:31.278	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	460	2017-05-27 12:40:31.278	eolHealthCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	461	2017-05-27 12:40:31.278	space-blog-recipients-provider
confluence.extra.jira	462	2017-05-27 12:40:31.278	jirachart-macro
com.atlassian.streams	463	2017-05-27 12:40:31.278	date-ur-PK
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	464	2017-05-27 12:40:31.278	soap-axis1
confluence.macros.dashboard	465	2017-05-27 12:40:31.278	recentlyUpdatedContentService
com.atlassian.streams.core	466	2017-05-27 12:40:31.278	feedSanitizer
confluence.macros.dashboard	467	2017-05-27 12:40:31.278	space-details
confluence.sections.admin.tasks	468	2017-05-27 12:40:31.278	general
com.atlassian.confluence.plugins.pagetree	469	2017-05-27 12:40:31.278	pagetreesearch-xhtml
com.atlassian.applinks.applinks-plugin	470	2017-05-27 12:40:31.278	contextFilter
confluence.macros.advanced	471	2017-05-27 12:40:31.278	recent-updated-actions
com.atlassian.integration.jira.jira-integration-plugin	472	2017-05-27 12:40:31.278	transition-form
com.atlassian.confluence.plugins.confluence-mobile	473	2017-05-27 12:40:31.278	linkMarshallingFactory
com.atlassian.confluence.plugins.profile-picture	474	2017-05-27 12:40:31.278	profile-picture
com.atlassian.plugins.atlassian-whitelist-ui-plugin	475	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.confluence-create-content-plugin	476	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.share-page	477	2017-05-27 12:40:31.278	share-attachment-notification
com.atlassian.streams	478	2017-05-27 12:40:31.278	date-kn-IN
com.atlassian.auiplugin	479	2017-05-27 12:40:31.278	toolbar
com.atlassian.confluence.plugins.confluence-easyuser-admin	480	2017-05-27 12:40:31.278	add-users-userdir-button
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	481	2017-05-27 12:40:31.278	upm_section
com.atlassian.mywork.mywork-confluence-host-plugin	482	2017-05-27 12:40:31.278	applink-helper
com.atlassian.confluence.extra.widgetconnector	483	2017-05-27 12:40:31.278	googledocs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	484	2017-05-27 12:40:31.278	confluence-upm-manage-menu
com.atlassian.confluence.plugins.confluence-knowledge-base	485	2017-05-27 12:40:31.278	kb-troubleshooting-article-blueprint
com.atlassian.querylang.confluence-cql-plugin	486	2017-05-27 12:40:31.278	favourite-field
com.atlassian.plugins.authentication.atlassian-authentication-plugin	487	2017-05-27 12:40:31.278	authentication-configuration-servlet
confluence.macros.basic	488	2017-05-27 12:40:31.278	color
com.atlassian.confluence.plugins.confluence-create-content-plugin	489	2017-05-27 12:40:31.278	featureDiscoveryService
confluence.editor.actions	490	2017-05-27 12:40:31.278	macrobrowseraction
com.atlassian.templaterenderer.api	491	2017-05-27 12:40:31.278	pluginAccessor
confluence.web.resources	492	2017-05-27 12:40:31.278	aui-messages
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	493	2017-05-27 12:40:31.278	featureMetadataManager
com.atlassian.auiplugin	494	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-expander
confluence.web.resources	495	2017-05-27 12:40:31.278	master-styles
com.atlassian.confluence.plugins.confluence-like	496	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-inline-tasks	497	2017-05-27 12:40:31.278	inlinetasksactions
com.atlassian.streams	498	2017-05-27 12:40:31.278	date-fo-FO
confluence.extra.jira	499	2017-05-27 12:40:31.278	jiraAnalytics
com.atlassian.confluence.plugins.share-page	500	2017-05-27 12:40:31.278	rest
com.atlassian.plugins.atlassian-help-tips	501	2017-05-27 12:40:31.278	helpTipManager
com.atlassian.confluence.plugins.confluence-view-file-macro	502	2017-05-27 12:40:31.278	delegateFileMarshaller
com.atlassian.confluence.editor	503	2017-05-27 12:40:31.278	xhtmlContent
com.atlassian.auiplugin	504	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-progress-indicator
confluence.user.menu	505	2017-05-27 12:40:31.278	user-profile
confluence.sections.user.view.follow	506	2017-05-27 12:40:31.278	resources
com.atlassian.confluence.plugins.confluence-inline-tasks	507	2017-05-27 12:40:31.278	team-task-report-template
com.atlassian.confluence.plugins.soy	508	2017-05-27 12:40:31.278	soy-site-title-function
com.atlassian.confluence.keyboardshortcuts	509	2017-05-27 12:40:31.278	tinymce.bullist
confluence.extra.information	510	2017-05-27 12:40:31.278	note
com.atlassian.confluence.plugins.confluence-daily-summary-email	511	2017-05-27 12:40:31.278	summaryEmailServiceTarget
com.atlassian.streams.confluence	512	2017-05-27 12:40:31.278	date-ar-YE
com.atlassian.querylang.confluence-cql-plugin	513	2017-05-27 12:40:31.278	macro-instance-field
com.atlassian.plugins.authentication.atlassian-authentication-plugin	514	2017-05-27 12:40:31.278	templates
com.atlassian.confluence.plugins.confluence-create-content-plugin	515	2017-05-27 12:40:31.278	rest-caching-filter
com.atlassian.plugins.authentication.atlassian-authentication-plugin	516	2017-05-27 12:40:31.278	saml-consumer-servlet
com.atlassian.confluence.extra.widgetconnector	517	2017-05-27 12:40:31.278	vcacheFactory
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	518	2017-05-27 12:40:31.278	hipChatLinkProvider
com.atlassian.confluence.extra.widgetconnector	519	2017-05-27 12:40:31.278	web-widget-migrator
com.atlassian.confluence.plugins.confluence-email-resources	520	2017-05-27 12:40:31.278	inject-css-inline-function
confluence.web.resources	521	2017-05-27 12:40:31.278	browser
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	522	2017-05-27 12:40:31.278	follower-added-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-onboarding	523	2017-05-27 12:40:31.278	userSettingsService
com.atlassian.auiplugin	524	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-underscorejs-underscore
com.atlassian.confluence.plugins.confluence-highlight-actions	525	2017-05-27 12:40:31.278	stripTagModifier
com.atlassian.streams	526	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.confluence.plugins.confluence-space-directory	527	2017-05-27 12:40:31.278	add-space
com.atlassian.confluence.plugins.confluence-onboarding	528	2017-05-27 12:40:31.278	onboarding-flow-resources
com.atlassian.streams.confluence	529	2017-05-27 12:40:31.278	date-uk-UA
com.atlassian.confluence.plugins.confluence-inline-tasks	530	2017-05-27 12:40:31.278	view-tasks-hipchat-adg-footer-item
com.atlassian.confluence.plugins.confluence-inline-comments	531	2017-05-27 12:40:31.278	likes-view
confluence.web.resources	532	2017-05-27 12:40:31.278	navigator-context
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	533	2017-05-27 12:40:31.278	upm-marketplace-templates
confluence.extractors.core	534	2017-05-27 12:40:31.278	spaceKeyAndNameExtractor
com.atlassian.confluence.contributors	535	2017-05-27 12:40:31.278	componentLocator
com.atlassian.confluence.plugins.confluence-inline-comments	536	2017-05-27 12:40:31.278	reply-list-view
com.atlassian.mywork.mywork-common-plugin	537	2017-05-27 12:40:31.278	myworkauth
com.atlassian.confluence.plugins.confluence-sal-plugin	538	2017-05-27 12:40:31.278	searchProvider
com.atlassian.analytics.analytics-client	539	2017-05-27 12:40:31.278	confluence-whitelist-report-menu-item
com.atlassian.auiplugin	540	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-select-suggestion-model
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	541	2017-05-27 12:40:31.278	confluenceInitialiser
confluence.listeners.core	542	2017-05-27 12:40:31.278	contentNameSearchSemaphoreListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	543	2017-05-27 12:40:31.278	confluenceSettingsWebItem
com.atlassian.mywork.mywork-confluence-host-plugin	544	2017-05-27 12:40:31.278	pluginSharedDataRegistry
com.atlassian.integration.jira.jira-integration-plugin	545	2017-05-27 12:40:31.278	jiraService
confluence.macros.advanced	546	2017-05-27 12:40:31.278	recently-updated-sidebar-resources
com.atlassian.auiplugin	547	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-raf-raf
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	548	2017-05-27 12:40:31.278	confluenceContentNotificationsAnalyticsWhitelist
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	549	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.confluence.plugins.confluence-onboarding	550	2017-05-27 12:40:31.278	confluence-efi-rest-filter
com.atlassian.analytics.analytics-client	551	2017-05-27 12:40:31.278	threadLocalDelegateExecutorFactory
com.atlassian.plugins.base-hipchat-integration-plugin	552	2017-05-27 12:40:31.278	hipchat-links-support
com.atlassian.oauth.serviceprovider.sal	553	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.oauth.serviceprovider	554	2017-05-27 12:40:31.278	delegateTokenStore
confluence.extra.jira	555	2017-05-27 12:40:31.278	jim-xwork
com.atlassian.confluence.plugins.confluence-spaces	556	2017-05-27 12:40:31.278	shortcuts
com.atlassian.mywork.mywork-confluence-host-plugin	557	2017-05-27 12:40:31.278	user-manager
com.atlassian.confluence.plugins.confluence-content-property-storage	558	2017-05-27 12:40:31.278	spacePropertyValidator
com.atlassian.plugin.notifications.notifications-module	559	2017-05-27 12:40:31.278	macroResolver
com.atlassian.crowd.embedded.admin	560	2017-05-27 12:40:31.278	support-directory-configuration
com.atlassian.mywork.mywork-confluence-provider-plugin	561	2017-05-27 12:40:31.278	renderer
com.atlassian.plugins.atlassian-nav-links-plugin	562	2017-05-27 12:40:31.278	executor-service
com.atlassian.confluence.plugins.confluence-email-resources	563	2017-05-27 12:40:31.278	templates
com.atlassian.confluence.plugins.confluence-space-blueprints	564	2017-05-27 12:40:31.278	TeamSpaceHomePageEventListener
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	565	2017-05-27 12:40:31.278	keyboardShortcutsRest
com.atlassian.confluence.plugins.confluence-page-layout	566	2017-05-27 12:40:31.278	editor-pagelayout-content-styles
com.atlassian.auiplugin	567	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-mutation-observer
com.atlassian.querylang.confluence-cql-plugin	568	2017-05-27 12:40:31.278	content-field
com.atlassian.confluence.plugins.confluence-edge-index	569	2017-05-27 12:40:31.278	edgeListener
com.atlassian.support.healthcheck.support-healthcheck-plugin	570	2017-05-27 12:40:31.278	supportHealthCheckRest-filter
com.atlassian.plugins.atlassian-nav-links-plugin	571	2017-05-27 12:40:31.278	navigation-links
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	572	2017-05-27 12:40:31.278	cluster-monitoring
com.atlassian.plugins.base-hipchat-integration-plugin	573	2017-05-27 12:40:31.278	get-product-text
com.atlassian.plugins.atlassian-plugins-webresource-plugin	574	2017-05-27 12:40:31.278	atlassian-module
com.atlassian.confluence.plugins.confluence-business-blueprints	575	2017-05-27 12:40:31.278	meeting-notes-blueprint
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	576	2017-05-27 12:40:31.278	healthmonitor-resources
confluence.extractors.core	577	2017-05-27 12:40:31.278	contentAuthorExtractor
com.atlassian.streams	578	2017-05-27 12:40:31.278	date-dv-MV
com.atlassian.confluence.plugins.recently-viewed-plugin	579	2017-05-27 12:40:31.278	purgeHistoryJob
com.atlassian.streams.confluence	580	2017-05-27 12:40:31.278	date-cs-CZ
com.atlassian.applinks.applinks-cors-plugin	581	2017-05-27 12:40:31.278	xsrfTokenValidator
com.atlassian.oauth.serviceprovider	582	2017-05-27 12:40:31.278	authenticator
com.atlassian.plugins.base-hipchat-integration-plugin	583	2017-05-27 12:40:31.278	hipchat-action
com.atlassian.analytics.analytics-client	584	2017-05-27 12:40:31.278	analytics-filter
com.atlassian.auiplugin	585	2017-05-27 12:40:31.278	event
confluence.listeners.core	586	2017-05-27 12:40:31.278	app-status-plugin-framework-listener
confluence.sections.admin	587	2017-05-27 12:40:31.278	lookandfeel
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	588	2017-05-27 12:40:31.278	pluginController
com.atlassian.confluence.plugins.confluence-document-conversion-library	589	2017-05-27 12:40:31.278	conversionLoader
com.atlassian.applinks.applinks-cors-plugin	590	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.auiplugin	591	2017-05-27 12:40:31.278	aui-page-header
com.atlassian.confluence.plugins.confluence-knowledge-base	592	2017-05-27 12:40:31.278	oAuthRequestVerifierFactory
com.atlassian.confluence.editor	593	2017-05-27 12:40:31.278	tinymceaction
com.atlassian.confluence.plugins.confluence-business-blueprints	594	2017-05-27 12:40:31.278	meeting-notes-resources
com.atlassian.auiplugin	595	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-jquery-jquery-tipsy
confluence.sections.create	596	2017-05-27 12:40:31.278	add-page-with-parent
com.atlassian.confluence.keyboardshortcuts	597	2017-05-27 12:40:31.278	tinymce.go.to.preview.page
com.atlassian.confluence.plugins.confluence-email-resources	598	2017-05-27 12:40:31.278	find-user-function
com.atlassian.healthcheck.atlassian-healthcheck	599	2017-05-27 12:40:31.278	healthCheckSupplier
com.atlassian.analytics.analytics-client	600	2017-05-27 12:40:31.278	allowedWordFilter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	601	2017-05-27 12:40:31.278	healthmonitor-blueprint
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	602	2017-05-27 12:40:31.278	prettyurls-sitemesh-fixup-filter-before-dispatch
confluence.web.resources	603	2017-05-27 12:40:31.278	syntaxhighlighter-css
com.atlassian.activeobjects.confluence.spi	604	2017-05-27 12:40:31.278	hibernateSessionFactory
com.atlassian.plugins.base-hipchat-integration-plugin	605	2017-05-27 12:40:31.278	hipchat-configurable
com.atlassian.confluence.plugins.confluence-dashboard	606	2017-05-27 12:40:31.278	dashboard-rest
com.atlassian.confluence.extra.widgetconnector	607	2017-05-27 12:40:31.278	friendfeed
com.atlassian.confluence.plugins.confluence-license-banner	608	2017-05-27 12:40:31.278	confluence-license-banner-resources
com.atlassian.streams.confluence	609	2017-05-27 12:40:31.278	date-default
com.atlassian.streams	610	2017-05-27 12:40:31.278	date-sv-FI
com.atlassian.oauth.serviceprovider	611	2017-05-27 12:40:31.278	validator
com.atlassian.streams	612	2017-05-27 12:40:31.278	date-vi-VN
com.atlassian.confluence.plugins.confluence-business-blueprints	613	2017-05-27 12:40:31.278	sharelinks-blueprint-listener
com.atlassian.confluence.plugins.confluence-dashboard	614	2017-05-27 12:40:31.278	routing-spaces-reverse
com.atlassian.confluence.plugins.confluence-user-rest	615	2017-05-27 12:40:31.278	userAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	616	2017-05-27 12:40:31.278	notification-transformer
confluence.listeners.core	617	2017-05-27 12:40:31.278	mailServerListener
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	618	2017-05-27 12:40:31.278	page-trashed-notification
com.atlassian.confluence.plugins.confluence-highlight-actions	619	2017-05-27 12:40:31.278	tableSelectionTransformer
confluence.search.mappers.lucene	620	2017-05-27 12:40:31.278	dateRange
com.atlassian.confluence.plugins.confluence-knowledge-base	621	2017-05-27 12:40:31.278	kbApplicationLinkRequestVerifier
confluence.extra.impresence2	622	2017-05-27 12:40:31.278	im-xhtml
com.atlassian.confluence.plugins.confluence-dashboard	623	2017-05-27 12:40:31.278	featureDiscoveryService
com.atlassian.confluence.plugins.drag-and-drop	624	2017-05-27 12:40:31.278	plupload
com.atlassian.confluence.plugins.confluence-knowledge-base	625	2017-05-27 12:40:31.278	searchResultAugmenter
com.atlassian.confluence.plugins.confluence-business-blueprints	626	2017-05-27 12:40:31.278	file-list-item
com.atlassian.confluence.plugins.confluence-email-resources	627	2017-05-27 12:40:31.278	notification-templates-blogpost-moved-1.0.0
com.atlassian.applinks.applinks-basicauth-plugin	628	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.confluence.plugins.confluence-mobile	629	2017-05-27 12:40:31.278	mention-resources
com.atlassian.confluence.plugins.confluence-edge-index	630	2017-05-27 12:40:31.278	comment.create
confluence.web.resources	631	2017-05-27 12:40:31.278	edit-user-profile
com.atlassian.oauth.consumer	632	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	633	2017-05-27 12:40:31.278	notificationWebResourceTransformer
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	634	2017-05-27 12:40:31.278	batchingJob
com.atlassian.applinks.applinks-plugin	635	2017-05-27 12:40:31.278	projectManagerContextItem
com.atlassian.confluence.plugins.confluence-email-resources	636	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.confluence.plugins.confluence-dashboard	637	2017-05-27 12:40:31.278	dashboard-server-side-soy
confluence.converters.core	638	2017-05-27 12:40:31.278	blog-converter
com.atlassian.confluence.plugins.confluence-fixed-headers	639	2017-05-27 12:40:31.278	handlers
com.atlassian.confluence.plugins.confluence-software-blueprints	640	2017-05-27 12:40:31.278	requirements-page
confluence.macros.advanced	641	2017-05-27 12:40:31.278	popular-labels
com.atlassian.confluence.plugins.recently-viewed-plugin	642	2017-05-27 12:40:31.278	userManager
confluence.search.mappers.lucene	643	2017-05-27 12:40:31.278	doubleRange
confluence.extractors.core	644	2017-05-27 12:40:31.278	contentPermissionsChangeExtractor
confluence.extra.masterdetail	645	2017-05-27 12:40:31.278	pagePropertiesExtractor
com.atlassian.auiplugin	646	2017-05-27 12:40:31.278	fancy-file-input
com.atlassian.confluence.plugins.confluence-software-project	647	2017-05-27 12:40:31.278	sp-space-meeting-notes-template
confluence.listeners.core	648	2017-05-27 12:40:31.278	userIndexingListener
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	649	2017-05-27 12:40:31.278	featureDiscoveryRest
com.atlassian.applinks.applinks-cors-plugin	650	2017-05-27 12:40:31.278	localeResolver
com.atlassian.applinks.applinks-oauth-plugin	651	2017-05-27 12:40:31.278	consumerTokenStore
com.atlassian.streams	652	2017-05-27 12:40:31.278	date-fa-IR
com.atlassian.templaterenderer.api	653	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	654	2017-05-27 12:40:31.278	notificationQueueManager
com.atlassian.confluence.plugins.confluence-email-resources	655	2017-05-27 12:40:31.278	resource-image-function
com.atlassian.oauth.consumer.sal	656	2017-05-27 12:40:31.278	consumerStore
com.atlassian.confluence.plugins.confluence-roadmap-plugin	657	2017-05-27 12:40:31.278	roadmap-dialog-resources
com.atlassian.confluence.editor	658	2017-05-27 12:40:31.278	editor-featured-macro-gallery
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	659	2017-05-27 12:40:31.278	confluence-collaborative-editor-config
com.atlassian.mywork.mywork-confluence-host-plugin	660	2017-05-27 12:40:31.278	localeResolver
com.atlassian.confluence.plugins.confluence-business-blueprints	661	2017-05-27 12:40:31.278	file-list-page
confluence.extra.attachments	662	2017-05-27 12:40:31.278	attachments-javascript
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	663	2017-05-27 12:40:31.278	page-created-notification
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	664	2017-05-27 12:40:31.278	packageAdmin
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	665	2017-05-27 12:40:31.278	hsqlHealthCheck
com.atlassian.confluence.plugins.confluence-files	666	2017-05-27 12:40:31.278	filesAttNotInList
com.atlassian.applinks.applinks-oauth-plugin	667	2017-05-27 12:40:31.278	OAuthAuthenticatorProviderPluginModule
confluence.sections.admin	668	2017-05-27 12:40:31.278	administration
confluence.extra.masterdetail	669	2017-05-27 12:40:31.278	details
com.atlassian.plugins.tinymce	670	2017-05-27 12:40:31.278	atlassian-rte-javascript-tinymce-core
com.atlassian.mywork.mywork-common-plugin	671	2017-05-27 12:40:31.278	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	672	2017-05-27 12:40:31.278	blogpost-edited-hipchat-notification-template-body
com.atlassian.streams.confluence	673	2017-05-27 12:40:31.278	notificationManager
com.atlassian.confluence.plugins.confluence-onboarding	674	2017-05-27 12:40:31.278	onboarding-blueprint-templates-resources
com.atlassian.confluence.editor	675	2017-05-27 12:40:31.278	macroBodyTranformationCondition
com.atlassian.confluence.plugins.confluence-email-resources	676	2017-05-27 12:40:31.278	notification-templates-page-edited-2.0.0
confluence.web.resources	677	2017-05-27 12:40:31.278	language-picker
com.atlassian.streams.confluence	678	2017-05-27 12:40:31.278	date-hu-HU
com.atlassian.confluence.plugins.gadgets	679	2017-05-27 12:40:31.278	gadgetsActions
com.atlassian.auiplugin	680	2017-05-27 12:40:31.278	aui-form-validation
com.atlassian.streams.confluence	681	2017-05-27 12:40:31.278	date-ar-QA
confluence.extra.webdav	682	2017-05-27 12:40:31.278	reverseProxyFilter
com.atlassian.streams.confluence	683	2017-05-27 12:40:31.278	date-zu-ZA
com.atlassian.streams.confluence	684	2017-05-27 12:40:31.278	date-ar-TN
com.atlassian.streams.confluence	685	2017-05-27 12:40:31.278	date-pt-PT
com.atlassian.confluence.plugins.share-page	686	2017-05-27 12:40:31.278	jquery-elastic
confluence.user.menu	687	2017-05-27 12:40:31.278	create-personal-space
com.atlassian.plugin.notifications.notifications-module	688	2017-05-27 12:40:31.278	templateManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	689	2017-05-27 12:40:31.278	pluginDownloadService
com.atlassian.confluence.plugins.quickreload	690	2017-05-27 12:40:31.278	pageManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	691	2017-05-27 12:40:31.278	pluginMetadataAccessor
com.atlassian.analytics.analytics-client	692	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.plugins.base-hipchat-integration-plugin-api	693	2017-05-27 12:40:31.278	wrm-amd
com.atlassian.confluence.plugins.confluence-edge-index	694	2017-05-27 12:40:31.278	confluenceAccessManager
com.atlassian.confluence.plugins.confluence-mobile	695	2017-05-27 12:40:31.278	macroMarshallingFactory
com.atlassian.streams.confluence	696	2017-05-27 12:40:31.278	date-ar-SY
com.atlassian.confluence.keyboardshortcuts	697	2017-05-27 12:40:31.278	save.editor.page
confluence.extra.confluencerpc	698	2017-05-27 12:40:31.278	attachmentsSoapService
confluence.sections.admin	699	2017-05-27 12:40:31.278	securityconfiguration
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	700	2017-05-27 12:40:31.278	notification-recipients
com.atlassian.confluence.plugins.search.confluence-search	701	2017-05-27 12:40:31.278	boosting-query-mapper
com.atlassian.auiplugin	702	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-data
com.atlassian.auiplugin	703	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-entry-model
confluence.user.menu.concise	704	2017-05-27 12:40:31.278	settings
com.atlassian.confluence.plugins.confluence-easyuser-admin	705	2017-05-27 12:40:31.278	mailServerExistsCriteria
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	706	2017-05-27 12:40:31.278	models
confluence.web.resources	707	2017-05-27 12:40:31.278	custom-page-content-resources
com.atlassian.confluence.ext.newcode-macro-plugin	708	2017-05-27 12:40:31.278	newcode
confluence.macros.advanced	709	2017-05-27 12:40:31.278	children-migrator
com.atlassian.confluence.plugins.confluence-space-ia	710	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.plugins.confluence-knowledge-base	711	2017-05-27 12:40:31.278	kb-serviceDeskExternalCustomerServletFilter-filter
com.atlassian.plugins.authentication.atlassian-authentication-plugin	712	2017-05-27 12:40:31.278	confluence-logout-filter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	713	2017-05-27 12:40:31.278	dacidecision-blueprint-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	714	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.applinks.applinks-trustedapps-plugin	715	2017-05-27 12:40:31.278	documentationLinker
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	716	2017-05-27 12:40:31.278	notificationCacheUpdateEventListener
com.atlassian.confluence.plugins.soy	717	2017-05-27 12:40:31.278	soy-format-date-function
com.atlassian.confluence.plugins.confluence-view-file-macro	718	2017-05-27 12:40:31.278	view-file-macro-export-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	719	2017-05-27 12:40:31.278	differ
confluence.search.mappers.lucene	720	2017-05-27 12:40:31.278	longRange
com.atlassian.plugins.editor	721	2017-05-27 12:40:31.278	editor-panel
confluence.user.menu	722	2017-05-27 12:40:31.278	user-operations
com.atlassian.confluence.plugins.confluence-sal-plugin	723	2017-05-27 12:40:31.278	bootstrapManager
com.atlassian.plugins.base-hipchat-integration-plugin	724	2017-05-27 12:40:31.278	resources
com.atlassian.plugin.notifications.notifications-module	725	2017-05-27 12:40:31.278	notificationsAdminServlet
com.atlassian.streams.confluence	726	2017-05-27 12:40:31.278	date-ar-SA
confluence.sections.admin	727	2017-05-27 12:40:31.278	stylesheet
confluence.extra.confluencerpc	728	2017-05-27 12:40:31.278	confluence-xmlrpc
com.atlassian.confluence.plugins.confluence-license-banner	729	2017-05-27 12:40:31.278	rest-resource-filter
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	730	2017-05-27 12:40:31.278	collabEditingModeCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	731	2017-05-27 12:40:31.278	cachedContentFinder
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	732	2017-05-27 12:40:31.278	page-moved-notification-transformer
com.atlassian.querylang.confluence-cql-plugin	733	2017-05-27 12:40:31.278	end-of-month-one-arg-function
com.atlassian.auiplugin	734	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-prevent-default
com.atlassian.confluence.extra.widgetconnector	735	2017-05-27 12:40:31.278	twitter-webresources
com.atlassian.plugins.rest.atlassian-rest-module	736	2017-05-27 12:40:31.278	httpContext
com.atlassian.confluence.plugins.confluence-create-content-plugin	737	2017-05-27 12:40:31.278	blueprintContentTemplateService
com.atlassian.mywork.mywork-confluence-host-plugin	738	2017-05-27 12:40:31.278	velocity-renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	739	2017-05-27 12:40:31.278	upm-manage-plugins-module
com.atlassian.confluence.plugins.confluence-inline-tasks	740	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-mentions-plugin	741	2017-05-27 12:40:31.278	dataSourceFactory
confluence.extra.masterdetail	742	2017-05-27 12:40:31.278	master-details-resources
com.atlassian.confluence.plugins.confluence-jira-metadata	743	2017-05-27 12:40:31.278	jira-metadata-cache-config-trigger
confluence.sections.space.admin	744	2017-05-27 12:40:31.278	layouts
com.atlassian.confluence.plugins.confluence-inline-comments	745	2017-05-27 12:40:31.278	notification-template-new-mail-body
confluence.sections.page.temp	746	2017-05-27 12:40:31.278	pagefavourite
confluence.search.mappers.lucene	747	2017-05-27 12:40:31.278	spaceCategory
confluence.web.resources	748	2017-05-27 12:40:31.278	js-reporting
com.atlassian.auiplugin	749	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-browser
com.atlassian.applinks.applinks-basicauth-plugin	750	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.plugin.jslibs	751	2017-05-27 12:40:31.278	underscore-1.5.2
com.atlassian.plugins.atlassian-whitelist-ui-plugin	752	2017-05-27 12:40:31.278	applicationLinkService
com.atlassian.oauth.serviceprovider	753	2017-05-27 12:40:31.278	access-token-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	754	2017-05-27 12:40:31.278	page-moved-notification-template
com.atlassian.confluence.plugins.watch-button	755	2017-05-27 12:40:31.278	watch-keyboard-shortcut
confluence.editor.actions	756	2017-05-27 12:40:31.278	edit-macro
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	757	2017-05-27 12:40:31.278	urlReadingNotificationWebResourceTransformer
confluence.sections.profile	758	2017-05-27 12:40:31.278	personalspace
com.atlassian.applinks.applinks-trustedapps-plugin	759	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	760	2017-05-27 12:40:31.278	escapeToolContextItem
com.atlassian.confluence.plugins.status-macro	761	2017-05-27 12:40:31.278	editor_content_status
com.atlassian.confluence.plugins.confluence-link-browser	762	2017-05-27 12:40:31.278	linkbrowser-css-resources
com.atlassian.confluence.contributors	763	2017-05-27 12:40:31.278	contributors-web-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	764	2017-05-27 12:40:31.278	comment-created-notification-transformer
confluence.xhtml.wikimarkup	765	2017-05-27 12:40:31.278	unmigrated-wiki-markup
com.atlassian.confluence.plugins.confluence-email-resources	766	2017-05-27 12:40:31.278	notifications-cluster-node-id-function
com.atlassian.confluence.plugins.confluence-space-ia	767	2017-05-27 12:40:31.278	customPageSettingsManager
confluence.web.resources	768	2017-05-27 12:40:31.278	atlassian-effects
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	769	2017-05-27 12:40:31.278	cacheFactory
com.atlassian.support.healthcheck.support-healthcheck-plugin	770	2017-05-27 12:40:31.278	optionalServiceProvider
confluence.extra.information	771	2017-05-27 12:40:31.278	xhtml-note
com.atlassian.support.stp	772	2017-05-27 12:40:31.278	salWebSudoManager
com.atlassian.confluence.plugins.confluence-lookandfeel	773	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-content-property-storage	774	2017-05-27 12:40:31.278	content-property-field-sort-mapper
com.atlassian.confluence.plugins.status-macro	775	2017-05-27 12:40:31.278	editor_status
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	776	2017-05-27 12:40:31.278	upm-web-resources
com.atlassian.confluence.plugins.confluence-user-profile	777	2017-05-27 12:40:31.278	user-avatar-resource
com.atlassian.plugins.rest.atlassian-rest-module	778	2017-05-27 12:40:31.278	requestFactory
com.atlassian.confluence.plugins.confluence-file-notifications	779	2017-05-27 12:40:31.278	notificationManager
com.atlassian.confluence.plugins.recently-viewed-plugin	780	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	781	2017-05-27 12:40:31.278	requestCheckJob
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	782	2017-05-27 12:40:31.278	page-edited-notification-transformer
confluence.extra.layout	783	2017-05-27 12:40:31.278	section
confluence.macros.advanced	784	2017-05-27 12:40:31.278	listlabels-resources
com.atlassian.confluence.editor	785	2017-05-27 12:40:31.278	xmlOutputFactory
confluence.sections.space.tools	786	2017-05-27 12:40:31.278	removespace
com.atlassian.confluence.plugins.confluence-business-blueprints	787	2017-05-27 12:40:31.278	sharelinks-blueprint-item
com.atlassian.mywork.mywork-common-plugin	788	2017-05-27 12:40:31.278	i18nResolver
confluence.web.resources	789	2017-05-27 12:40:31.278	moment
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	790	2017-05-27 12:40:31.278	remotePageViewService
com.atlassian.confluence.plugins.confluence-fixed-headers	791	2017-05-27 12:40:31.278	utils
com.atlassian.applinks.applinks-plugin	792	2017-05-27 12:40:31.278	applicationLinkUIService
com.atlassian.confluence.plugins.confluence-email-resources	793	2017-05-27 12:40:31.278	template-utils
com.atlassian.confluence.plugins.share-page	794	2017-05-27 12:40:31.278	share-page-notification-transformer
com.atlassian.plugins.atlassian-project-creation-plugin	795	2017-05-27 12:40:31.278	aggregate-roots-rest-url
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	796	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.confluence.plugins.search.confluence-search	797	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.confluence.plugins.quickedit	798	2017-05-27 12:40:31.278	quick-edit-general
com.atlassian.confluence.plugins.synchrony-interop	799	2017-05-27 12:40:31.278	synchronyStatusCheck
confluence.web.resources	800	2017-05-27 12:40:31.278	pagination-styles
confluence.extra.impresence2	801	2017-05-27 12:40:31.278	reporter-sametime
com.atlassian.confluence.plugins.confluence-software-blueprints	802	2017-05-27 12:40:31.278	retrospectives-page
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	803	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	804	2017-05-27 12:40:31.278	hipchat-oauth-profile-page
com.atlassian.streams.actions	805	2017-05-27 12:40:31.278	action-handler-web-resource
com.atlassian.confluence.plugins.confluence-knowledge-base	806	2017-05-27 12:40:31.278	permissionManager
com.atlassian.streams	807	2017-05-27 12:40:31.278	date-he-IL
com.atlassian.confluence.plugins.confluence-browser-metrics	808	2017-05-27 12:40:31.278	browser-metrics-api
com.atlassian.confluence.plugins.confluence-inline-comments	809	2017-05-27 12:40:31.278	inline-notification-new-mail
confluence.aui.staging	810	2017-05-27 12:40:31.278	meta
com.atlassian.confluence.plugins.confluence-file-notifications	811	2017-05-27 12:40:31.278	file-notifications-like-action
com.atlassian.applinks.applinks-cors-plugin	812	2017-05-27 12:40:31.278	adminUIAuthenticator
com.atlassian.confluence.plugins.confluence-inline-comments	813	2017-05-27 12:40:31.278	view-inline-email-adg-footer-item
confluence.web.resources	814	2017-05-27 12:40:31.278	setup-language-picker-resources
com.atlassian.support.healthcheck.support-healthcheck-plugin	815	2017-05-27 12:40:31.278	healthcheck-resources
com.atlassian.auiplugin	816	2017-05-27 12:40:31.278	internal-jquery-ui-partial
confluence.macros.html	817	2017-05-27 12:40:31.278	outboundWhitelist
com.atlassian.confluence.plugins.confluence-knowledge-base	818	2017-05-27 12:40:31.278	spaceManager
com.atlassian.confluence.plugins.confluence-inline-comments	819	2017-05-27 12:40:31.278	create-inline-comment
com.atlassian.confluence.editor	820	2017-05-27 12:40:31.278	page-editor
com.atlassian.auiplugin	821	2017-05-27 12:40:31.278	deprecated-legacy-images
confluence.sections.admin.generalconfig	822	2017-05-27 12:40:31.278	resources
com.atlassian.applinks.applinks-cors-plugin	823	2017-05-27 12:40:31.278	cors-auth
com.atlassian.confluence.plugins.confluence-sal-plugin	824	2017-05-27 12:40:31.278	projectManager
com.atlassian.confluence.plugins.confluence-mobile	825	2017-05-27 12:40:31.278	webResourceAssemblerFactory
com.atlassian.applinks.applinks-trustedapps-plugin	826	2017-05-27 12:40:31.278	xsrfTokenValidator
com.atlassian.plugins.atlassian-whitelist-core-plugin	827	2017-05-27 12:40:31.278	applicationLinkService
com.atlassian.querylang.confluence-cql-plugin	828	2017-05-27 12:40:31.278	content-type-field
com.atlassian.confluence.plugins.confluence-space-ia	829	2017-05-27 12:40:31.278	header-people-link
com.atlassian.confluence.plugins.confluence-user-rest	830	2017-05-27 12:40:31.278	aggregationWarningManager
com.atlassian.confluence.contributors	831	2017-05-27 12:40:31.278	creationDate
com.atlassian.confluence.plugins.quickedit	832	2017-05-27 12:40:31.278	quick-edit-util
com.atlassian.confluence.plugins.confluence-sortable-tables	833	2017-05-27 12:40:31.278	ConfluenceSortableTablesEditorPlugin
com.atlassian.mywork.mywork-confluence-provider-plugin	834	2017-05-27 12:40:31.278	commentService
com.atlassian.confluence.extra.flyingpdf	835	2017-05-27 12:40:31.278	none
com.atlassian.confluence.plugins.confluence-lookandfeel	836	2017-05-27 12:40:31.278	siteLogoHelperContext
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	837	2017-05-27 12:40:31.278	auditLogUpgradeTask
com.atlassian.applinks.applinks-plugin	838	2017-05-27 12:40:31.278	applinks-application-type
com.atlassian.templaterenderer.api	839	2017-05-27 12:40:31.278	template-context-item
com.atlassian.oauth.serviceprovider	840	2017-05-27 12:40:31.278	postAuthorizationProcessor
com.atlassian.streams.confluence	841	2017-05-27 12:40:31.278	date-ar-IQ
com.atlassian.confluence.plugins.confluence-templates	842	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.plugins.atlassian-nav-links-plugin	843	2017-05-27 12:40:31.278	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-space-directory	844	2017-05-27 12:40:31.278	spaceDirectoryEntityBuilder
com.atlassian.auiplugin	845	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-edit-row
com.atlassian.applinks.applinks-trustedapps-plugin	846	2017-05-27 12:40:31.278	adminUIAuthenticator
com.atlassian.streams.confluence	847	2017-05-27 12:40:31.278	streamsLocaleProvider
com.atlassian.confluence.plugins.drag-and-drop	848	2017-05-27 12:40:31.278	drag-and-drop-for-view-attachments
com.atlassian.streams.confluence	849	2017-05-27 12:40:31.278	streamsFeedUrlBuilderFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	850	2017-05-27 12:40:31.278	mailRenderer
com.atlassian.applinks.applinks-oauth-plugin	851	2017-05-27 12:40:31.278	confluence-inbound-two-legged-oauth
com.atlassian.confluence.plugins.confluence-space-ia	852	2017-05-27 12:40:31.278	spacemenu-resources
com.atlassian.confluence.plugins.gadgets	853	2017-05-27 12:40:31.278	publishedGadgetsDirectory
com.atlassian.confluence.plugins.confluence-license-rest	854	2017-05-27 12:40:31.278	userChecker
com.atlassian.confluence.plugins.confluence-create-content-plugin	855	2017-05-27 12:40:31.278	create-personal-space-item
com.atlassian.confluence.plugins.confluence-email-resources	856	2017-05-27 12:40:31.278	chrome-template-1.0.0
com.atlassian.confluence.plugins.confluence-email-resources	857	2017-05-27 12:40:31.278	email-reply-to-provider
com.atlassian.confluence.plugins.confluence-space-blueprints	858	2017-05-27 12:40:31.278	documentation-space-getting-started-template
com.atlassian.streams	859	2017-05-27 12:40:31.278	feedRenderer
com.atlassian.confluence.extra.flyingpdf	860	2017-05-27 12:40:31.278	pdfExportCustomFontMigrator
com.atlassian.streams.confluence	861	2017-05-27 12:40:31.278	date-nn-NO
com.atlassian.confluence.plugins.confluence-macro-usage	862	2017-05-27 12:40:31.278	macroExtractor
com.atlassian.applinks.applinks-cors-plugin	863	2017-05-27 12:40:31.278	applicationLinkService
com.atlassian.activeobjects.confluence.spi	864	2017-05-27 12:40:31.278	synchronizationManager
com.atlassian.confluence.plugins.confluence-page-banner	865	2017-05-27 12:40:31.278	content-metadata-attachments
confluence.extra.confluencerpc	866	2017-05-27 12:40:31.278	blogsSoapService
confluence.sections.space.tools	867	2017-05-27 12:40:31.278	stylesheet
com.atlassian.auiplugin	868	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-spin
com.atlassian.streams	869	2017-05-27 12:40:31.278	date-uz-Cyrl-UZ
com.atlassian.crowd.embedded.admin	870	2017-05-27 12:40:31.278	confluence-internal-directory-options
com.atlassian.plugins.atlassian-nav-links-plugin	871	2017-05-27 12:40:31.278	custom-apps-filter
com.atlassian.confluence.plugins.confluence-email-resources	872	2017-05-27 12:40:31.278	mimeBodyPartRecorder
com.atlassian.streams.confluence	873	2017-05-27 12:40:31.278	date-ar-LB
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	874	2017-05-27 12:40:31.278	hipchat-css-resources
com.atlassian.auiplugin	875	2017-05-27 12:40:31.278	internal-fancy-file-input-2.0.1-dist-fancy-file-input
com.atlassian.confluence.editor	876	2017-05-27 12:40:31.278	captcha-editor-panel
com.atlassian.confluence.extra.flyingpdf	877	2017-05-27 12:40:31.278	pdfExportFontManager
com.atlassian.querylang.confluence-cql-plugin	878	2017-05-27 12:40:31.278	created-date-field
com.atlassian.confluence.plugins.confluence-onboarding	879	2017-05-27 12:40:31.278	less-users-notification-transformer
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	880	2017-05-27 12:40:31.278	batching-notification-payload-processor
confluence.sections.admin	881	2017-05-27 12:40:31.278	security
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	882	2017-05-27 12:40:31.278	collationCheck
com.atlassian.confluence.plugins.confluence-inline-comments	883	2017-05-27 12:40:31.278	notification-template-reply-body
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	884	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	885	2017-05-27 12:40:31.278	auditLogService
com.atlassian.streams.confluence	886	2017-05-27 12:40:31.278	date-ar-KW
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	887	2017-05-27 12:40:31.278	tx-processor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	888	2017-05-27 12:40:31.278	upm-update-check-templates
com.atlassian.confluence.plugins.confluence-onboarding	889	2017-05-27 12:40:31.278	common-flow-resources
com.atlassian.confluence.plugins.view-storage-format	890	2017-05-27 12:40:31.278	darkFeaturesManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	891	2017-05-27 12:40:31.278	userKeyUpgradeTask
com.atlassian.auiplugin	892	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-header-create-header
confluence.listeners.core	893	2017-05-27 12:40:31.278	mergerListener
com.atlassian.auiplugin	894	2017-05-27 12:40:31.278	dialog2
confluence.sections.admin.header	895	2017-05-27 12:40:31.278	admin-user
confluence.sections.space.advanced	896	2017-05-27 12:40:31.278	exportsection
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	897	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.confluence.plugins.confluence-email-resources	898	2017-05-27 12:40:31.278	content-templates-content-excerpt-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	899	2017-05-27 12:40:31.278	space-blueprints
com.atlassian.streams.confluence	900	2017-05-27 12:40:31.278	date-ar-JO
com.atlassian.confluence.plugins.synchrony-interop	901	2017-05-27 12:40:31.278	confluence-synchrony-interop-rest-api-filter
com.atlassian.confluence.plugins.confluence-license-banner	902	2017-05-27 12:40:31.278	rest-resource
com.atlassian.confluence.plugins.confluence-create-content-plugin	903	2017-05-27 12:40:31.278	create-content-with-init-context
com.atlassian.confluence.plugins.pagetree	904	2017-05-27 12:40:31.278	pagetree-js-resources
confluence.web.panels	905	2017-05-27 12:40:31.278	confluence-footer
confluence.search.lucene.initialisation	906	2017-05-27 12:40:31.278	defaultSearcherInitialisation
com.atlassian.confluence.plugins.confluence-business-blueprints	907	2017-05-27 12:40:31.278	contentBlueprintManager
confluence.extra.jira	908	2017-05-27 12:40:31.278	blueprint-selector
tac.confluence.languages.en_US	909	2017-05-27 12:40:31.278	en_US
com.atlassian.confluence.contributors	910	2017-05-27 12:40:31.278	keyword
com.atlassian.auiplugin	911	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-data-keys
com.atlassian.confluence.plugins.confluence-daily-summary-email	912	2017-05-27 12:40:31.278	popularContentQueries
com.atlassian.streams	913	2017-05-27 12:40:31.278	date-eu-ES
com.atlassian.querylang.confluence-cql-plugin	914	2017-05-27 12:40:31.278	container-field
com.atlassian.streams.confluence	915	2017-05-27 12:40:31.278	spacePermissionManager
com.atlassian.analytics.analytics-client	916	2017-05-27 12:40:31.278	uploadAnalyticsInitialiser
confluence.search.mappers.lucene	917	2017-05-27 12:40:31.278	created
com.atlassian.analytics.analytics-client	918	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.plugins.base-hipchat-integration-plugin	919	2017-05-27 12:40:31.278	common-resources
com.atlassian.plugins.base-hipchat-integration-plugin	920	2017-05-27 12:40:31.278	hipchat-installed-scopes
confluence.search.mappers.lucene	921	2017-05-27 12:40:31.278	contentType
com.atlassian.confluence.plugins.confluence-content-property-storage	922	2017-05-27 12:40:31.278	number-field-type-query-mapper
com.atlassian.confluence.plugins.confluence-create-content-plugin	923	2017-05-27 12:40:31.278	templateUpdatedListener
com.atlassian.streams.confluence	924	2017-05-27 12:40:31.278	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-mentions-plugin	925	2017-05-27 12:40:31.278	mention-notification-template-body
com.atlassian.streams	926	2017-05-27 12:40:31.278	date-mr-IN
com.atlassian.confluence.plugins.confluence-roadmap-plugin	927	2017-05-27 12:40:31.278	roadmap-create-page-context
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	928	2017-05-27 12:40:31.278	page-edited-notification-template-body
com.atlassian.streams.confluence	929	2017-05-27 12:40:31.278	date-ar-MA
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	930	2017-05-27 12:40:31.278	rpv-serviceDeskExternalCustomerServletFilter-filter
com.atlassian.confluence.plugins.drag-and-drop	931	2017-05-27 12:40:31.278	image-dialog-client
com.atlassian.confluence.plugins.confluence-content-property-storage	932	2017-05-27 12:40:31.278	content-property
confluence.converters.core	933	2017-05-27 12:40:31.278	page-converter
confluence.macros.advanced	934	2017-05-27 12:40:31.278	xhtml-blog-posts
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	935	2017-05-27 12:40:31.278	transactionTemplate
confluence.web.resources	936	2017-05-27 12:40:31.278	floating-scrollbar
com.atlassian.querylang.confluence-cql-plugin	937	2017-05-27 12:40:31.278	watcher-field
com.atlassian.confluence.plugins.confluence-create-content-plugin	938	2017-05-27 12:40:31.278	blueprintResolver
com.atlassian.confluence.plugins.confluence-business-blueprints	939	2017-05-27 12:40:31.278	i18nBeanFactory
com.atlassian.applinks.applinks-plugin	940	2017-05-27 12:40:31.278	webFragmentHelper
com.atlassian.confluence.extra.officeconnector	941	2017-05-27 12:40:31.278	wordContentExtractor
com.atlassian.auiplugin	942	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-version
confluence.sections.admin.indexing	943	2017-05-27 12:40:31.278	resources
com.atlassian.streams.confluence	944	2017-05-27 12:40:31.278	date-ar-LY
com.atlassian.confluence.plugins.confluence-email-tracker	945	2017-05-27 12:40:31.278	emailTrackerServlet
com.atlassian.confluence.plugins.confluence-email-resources	946	2017-05-27 12:40:31.278	template-utils-fail-safe-user-link-1.0.0
confluence.sections.space	947	2017-05-27 12:40:31.278	space-blogposts
confluence.search.mappers.lucene	948	2017-05-27 12:40:31.278	booleanSearchFilter
confluence.extra.confluencerpc	949	2017-05-27 12:40:31.278	wikiSoapService
com.atlassian.confluence.plugins.gadgets	950	2017-05-27 12:40:31.278	cacheStatisticsManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	951	2017-05-27 12:40:31.278	underscoreTemplateRenderer
confluence.extractors.core	952	2017-05-27 12:40:31.278	objectDateExtractor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	953	2017-05-27 12:40:31.278	actions
tac.confluence.languages.ru_RU	954	2017-05-27 12:40:31.278	ru_RU
com.atlassian.applinks.applinks-trustedapps-plugin	955	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.plugin.notifications.notifications-module	956	2017-05-27 12:40:31.278	notificationMediumManager
com.atlassian.confluence.plugins.confluence-business-blueprints	957	2017-05-27 12:40:31.278	sharePageService
com.atlassian.confluence.plugins.templates-framework	958	2017-05-27 12:40:31.278	templates_js
com.atlassian.confluence.extra.officeconnector	959	2017-05-27 12:40:31.278	viewfile-legacy
confluence.sections.admin	960	2017-05-27 12:40:31.278	mailqueue
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	961	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	962	2017-05-27 12:40:31.278	space-blueprint
com.atlassian.applinks.applinks-plugin	963	2017-05-27 12:40:31.278	page-applink-edit
com.atlassian.oauth.serviceprovider	964	2017-05-27 12:40:31.278	oAuthRequestVerifierFactory
com.atlassian.confluence.plugins.confluence-software-blueprints	965	2017-05-27 12:40:31.278	requirements-blueprint
confluence.extra.jira	966	2017-05-27 12:40:31.278	editor-featured-macro-jira
confluence.sections.admin	967	2017-05-27 12:40:31.278	indexing
confluence.lifecycle.core	968	2017-05-27 12:40:31.278	xhtmlWikiMarkupMacroMigration
com.atlassian.confluence.plugins.confluence-sal-plugin	969	2017-05-27 12:40:31.278	loginUriProvider
confluence.content.action.menu	1026	2017-05-27 12:40:31.278	view-history
com.atlassian.auiplugin	970	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-progressive-data-set
com.atlassian.mywork.mywork-confluence-host-plugin	971	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.favicon.confluence-custom-favicon-plugin	972	2017-05-27 12:40:31.278	favicon-plugin-resources
confluence.renderer.components	973	2017-05-27 12:40:31.278	html-entity-tokenize
com.atlassian.confluence.plugins.confluence-templates	974	2017-05-27 12:40:31.278	viewTransformer
com.atlassian.streams.confluence	975	2017-05-27 12:40:31.278	date-ar-OM
com.atlassian.confluence.plugins.confluence-like	976	2017-05-27 12:40:31.278	networkService
com.atlassian.confluence.plugins.confluence-ui-components	977	2017-05-27 12:40:31.278	page-picker
com.atlassian.confluence.plugins.confluence-image-attributes	978	2017-05-27 12:40:31.278	soy-resources
com.atlassian.analytics.analytics-client	979	2017-05-27 12:40:31.278	eventAnonymizer
com.atlassian.auiplugin	980	2017-05-27 12:40:31.278	aui-experimental-page-layout-typography-legacy1
com.atlassian.confluence.plugins.search.confluence-search	981	2017-05-27 12:40:31.278	confluence-search-resources
com.atlassian.auiplugin	982	2017-05-27 12:40:31.278	aui-experimental-restfultable
com.atlassian.plugins.atlassian-nav-links-plugin	983	2017-05-27 12:40:31.278	project-shortcuts-rest-filter
com.atlassian.plugins.atlassian-plugins-webresource-rest	984	2017-05-27 12:40:31.278	web-resource-manager
com.atlassian.streams	985	2017-05-27 12:40:31.278	date-de-DE
confluence.listeners.core	986	2017-05-27 12:40:31.278	clusterPanicListener
confluence.extra.confluencerpc	987	2017-05-27 12:40:31.278	spacesSoapService
confluence.web.components	988	2017-05-27 12:40:31.278	core
com.atlassian.confluence.plugins.confluence-mobile	989	2017-05-27 12:40:31.278	dashboard-dependencies
com.atlassian.auiplugin	990	2017-05-27 12:40:31.278	aui-mobile-suite
com.atlassian.confluence.plugins.confluence-software-blueprints	991	2017-05-27 12:40:31.278	retrospective-resources
confluence.sections.admin	992	2017-05-27 12:40:31.278	auditlog
com.atlassian.streams	993	2017-05-27 12:40:31.278	streamsWebResources
confluence.extractors.core	994	2017-05-27 12:40:31.278	untokenizedTitleExtractor
com.atlassian.confluence.plugins.confluence-like	995	2017-05-27 12:40:31.278	confluenceNotificationPreferenceManager
confluence.listeners.core	996	2017-05-27 12:40:31.278	createPersonalSpaceListener
com.atlassian.streams.confluence	997	2017-05-27 12:40:31.278	date-ar-AE
com.atlassian.integration.jira.jira-integration-plugin	998	2017-05-27 12:40:31.278	fields
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	999	2017-05-27 12:40:31.278	hamletClient
com.atlassian.confluence.plugins.gadgets	1000	2017-05-27 12:40:31.278	gadget-user-settings
com.atlassian.confluence.plugins.quickreload	1001	2017-05-27 12:40:31.278	permissionManager
com.atlassian.confluence.plugins.confluence-previews	1002	2017-05-27 12:40:31.278	confluencePreviewsWhitelist
com.atlassian.oauth.serviceprovider	1003	2017-05-27 12:40:31.278	getAuthorizationProcessor
confluence.web.resources	1004	2017-05-27 12:40:31.278	macro-js-overrides
confluence.sections.space.admin	1005	2017-05-27 12:40:31.278	editspace
com.atlassian.plugins.atlassian-nav-links-plugin	1006	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-easyuser-admin	1007	2017-05-27 12:40:31.278	eventPublisher
confluence.sections.space	1008	2017-05-27 12:40:31.278	space-pages
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1009	2017-05-27 12:40:31.278	blogpost-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-browser-metrics	1010	2017-05-27 12:40:31.278	editor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1011	2017-05-27 12:40:31.278	hostApplicationLicenseFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	1012	2017-05-27 12:40:31.278	contentBlueprintInstanceAdapter
com.atlassian.streams	1013	2017-05-27 12:40:31.278	date-se-FI
confluence.extra.information	1014	2017-05-27 12:40:31.278	warning
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1015	2017-05-27 12:40:31.278	upm-dac-landing-page-templates
com.atlassian.confluence.plugins.confluence-user-rest	1016	2017-05-27 12:40:31.278	usersEntityBuilder
com.atlassian.auiplugin	1017	2017-05-27 12:40:31.278	jquery-lib
com.atlassian.streams.confluence	1018	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.streams	1019	2017-05-27 12:40:31.278	date-cy-GB
com.atlassian.support.stp	1020	2017-05-27 12:40:31.278	salPluginSettingsFactory
com.atlassian.streams	1021	2017-05-27 12:40:31.278	configRepresentationBuilder
com.atlassian.auiplugin	1022	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-banner
com.atlassian.confluence.plugins.confluence-like	1023	2017-05-27 12:40:31.278	like-created-notification-template-body
com.atlassian.gadgets.publisher	1024	2017-05-27 12:40:31.278	ajs-gadgets
com.atlassian.plugins.atlassian-nav-links-plugin	1025	2017-05-27 12:40:31.278	custom-app-store
com.atlassian.querylang.confluence-cql-plugin	1027	2017-05-27 12:40:31.278	title-text-field
confluence.web.resources	1028	2017-05-27 12:40:31.278	safe-ajax
confluence.web.resources	1029	2017-05-27 12:40:31.278	page-location
confluence.web.resources	1030	2017-05-27 12:40:31.278	marionette
com.atlassian.applinks.applinks-plugin	1031	2017-05-27 12:40:31.278	applinks-oauth-ui
confluence.macros.multimedia	1032	2017-05-27 12:40:31.278	real-media
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1033	2017-05-27 12:40:31.278	notificationsEventDispatcher
com.atlassian.confluence.plugins.view-source	1034	2017-05-27 12:40:31.278	view-source
confluence.sections.admin	1035	2017-05-27 12:40:31.278	usermacros
confluence.user.menu.concise	1036	2017-05-27 12:40:31.278	user-history
com.atlassian.querylang.confluence-cql-plugin	1037	2017-05-27 12:40:31.278	confluence-cql-plugin-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1038	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.confluence.plugins.gadgets	1039	2017-05-27 12:40:31.278	cdnActivationListener
com.atlassian.confluence.plugins.confluence-sal-plugin	1040	2017-05-27 12:40:31.278	pluginAccessor
confluence.macros.dashboard	1041	2017-05-27 12:40:31.278	old-dashboard-resource-loader
confluence.extra.jira	1042	2017-05-27 12:40:31.278	jiraissues-xhtml
com.atlassian.confluence.plugins.confluence-user-profile	1043	2017-05-27 12:40:31.278	avatar-picker
com.atlassian.plugins.atlassian-nav-links-plugin	1044	2017-05-27 12:40:31.278	projectPermissionManager
com.atlassian.streams.confluence	1045	2017-05-27 12:40:31.278	date-ar-BH
confluence.web.resources	1046	2017-05-27 12:40:31.278	fancy-box
com.atlassian.confluence.plugins.confluence-lookandfeel	1047	2017-05-27 12:40:31.278	imageScaler
com.atlassian.confluence.plugins.confluence-email-resources	1048	2017-05-27 12:40:31.278	content-templates-contextual-excerpt-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-email-resources	1049	2017-05-27 12:40:31.278	notification-templates-page-moved-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1050	2017-05-27 12:40:31.278	permissionService
com.atlassian.confluence.plugins.confluence-mobile	1051	2017-05-27 12:40:31.278	storageDefaultFragmentTransformerFactory
com.atlassian.confluence.plugins.confluence-lookandfeel	1052	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	1053	2017-05-27 12:40:31.278	prettyurls-sitemesh-filter-before-dispatch
com.atlassian.support.stp	1054	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1055	2017-05-27 12:40:31.278	confluenceAccessManager
confluence.extra.webdav	1056	2017-05-27 12:40:31.278	webdavconfig
com.atlassian.auiplugin	1057	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-messages
com.atlassian.plugins.atlassian-nav-links-plugin	1058	2017-05-27 12:40:31.278	capabilities-forward
com.atlassian.streams.confluence	1059	2017-05-27 12:40:31.278	date-ar-EG
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1060	2017-05-27 12:40:31.278	page-edited-hipchat-notification-template-body
confluence.extra.masterdetail	1061	2017-05-27 12:40:31.278	details-migrator
com.atlassian.confluence.plugins.confluence-link-browser	1062	2017-05-27 12:40:31.278	link-browser-tab-files
com.atlassian.confluence.ext.newcode-macro-plugin	1063	2017-05-27 12:40:31.278	sh-theme-django
com.atlassian.plugins.atlassian-nav-links-plugin	1064	2017-05-27 12:40:31.278	app-link-service
com.atlassian.auiplugin	1065	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-navigation
confluence.sections.space.advanced	1066	2017-05-27 12:40:31.278	subscribesection
com.atlassian.plugins.atlassian-nav-links-plugin	1067	2017-05-27 12:40:31.278	custom-content-link-provider
com.atlassian.confluence.plugins.confluence-daily-summary-email	1068	2017-05-27 12:40:31.278	daily-summary-popular-content
com.atlassian.confluence.extra.widgetconnector	1069	2017-05-27 12:40:31.278	myspacevideo
com.atlassian.streams.confluence	1070	2017-05-27 12:40:31.278	date-ar-DZ
com.atlassian.confluence.plugins.confluence-ui-components	1071	2017-05-27 12:40:31.278	user-group-select2
com.atlassian.gadgets.oauth.serviceprovider	1072	2017-05-27 12:40:31.278	stringEscapeUtilContextItem
tac.confluence.languages.ja_JP	1073	2017-05-27 12:40:31.278	ja_JP
com.atlassian.auiplugin	1074	2017-05-27 12:40:31.278	aui-experimental-dropdown2
com.atlassian.gadgets.publisher	1075	2017-05-27 12:40:31.278	templates
com.atlassian.plugins.rest.atlassian-rest-module	1076	2017-05-27 12:40:31.278	rest-seraph-filter
com.atlassian.support.healthcheck.support-healthcheck-plugin	1077	2017-05-27 12:40:31.278	healthCheckProcessFactory
confluence.extractors.core	1078	2017-05-27 12:40:31.278	personalInformationExtractor
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1079	2017-05-27 12:40:31.278	templateContextFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	1080	2017-05-27 12:40:31.278	content-template
com.atlassian.auiplugin	1134	2017-05-27 12:40:31.278	aui-experimental-avatars
com.atlassian.mywork.mywork-confluence-host-plugin	1081	2017-05-27 12:40:31.278	userDeletedListener
com.atlassian.support.stp	1082	2017-05-27 12:40:31.278	permissionValidationService
com.atlassian.confluence.plugins.quickreload	1083	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1084	2017-05-27 12:40:31.278	experiencecanvas-resources
com.atlassian.confluence.plugins.confluence-onboarding	1085	2017-05-27 12:40:31.278	notificationUserService
com.atlassian.confluence.plugins.confluence-sal-plugin	1086	2017-05-27 12:40:31.278	tenantAccessor
com.atlassian.auiplugin	1087	2017-05-27 12:40:31.278	jquery-selection
com.atlassian.confluence.editor	1088	2017-05-27 12:40:31.278	utils-resources
com.atlassian.confluence.plugins.confluence-email-resources	1089	2017-05-27 12:40:31.278	notification-templates-status-updated-1.0.0
com.atlassian.confluence.plugins.confluence-jira-content	1090	2017-05-27 12:40:31.278	confluence-jira-content-resources
confluence.search.mappers.lucene	1091	2017-05-27 12:40:31.278	excludePersonalInformationSearchFilter
com.atlassian.streams.confluence	1092	2017-05-27 12:40:31.278	date-sa-IN
confluence.sections.space.advanced	1093	2017-05-27 12:40:31.278	startwatchingblogs
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1094	2017-05-27 12:40:31.278	contentEntityManager
com.atlassian.confluence.plugins.confluence-highlight-actions	1095	2017-05-27 12:40:31.278	highlighting-experiment-resources
com.atlassian.confluence.plugins.confluence-link-browser	1096	2017-05-27 12:40:31.278	link-browser-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1097	2017-05-27 12:40:31.278	httpClientTrustedRequestFactory
com.atlassian.integration.jira.jira-integration-plugin	1098	2017-05-27 12:40:31.278	issue-jump-servlet
com.atlassian.confluence.plugins.gadgets.spi	1099	2017-05-27 12:40:31.278	subscribedGadgetFeedStore
confluence.user.hover.menu	1100	2017-05-27 12:40:31.278	primary
confluence.search.mappers.lucene	1101	2017-05-27 12:40:31.278	filesize
confluence.macros.advanced	1102	2017-05-27 12:40:31.278	children
com.atlassian.confluence.plugins.confluence-file-notifications	1103	2017-05-27 12:40:31.278	file-content-recipients-provider
com.atlassian.confluence.ext.newcode-macro-plugin	1104	2017-05-27 12:40:31.278	configure-newcode
com.atlassian.confluence.plugins.confluence-email-resources	1105	2017-05-27 12:40:31.278	batch-notification-templates
com.atlassian.plugin.notifications.notifications-module	1106	2017-05-27 12:40:31.278	notification-queue
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1107	2017-05-27 12:40:31.278	licenseReceiptHandler
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1108	2017-05-27 12:40:31.278	comment-created-notification-template-body
com.atlassian.confluence.plugins.confluence-create-content-plugin	1109	2017-05-27 12:40:31.278	spaceBlueprintManager
com.atlassian.streams.confluence	1110	2017-05-27 12:40:31.278	date-az-Latn-AZ
com.atlassian.streams	1111	2017-05-27 12:40:31.278	date-fi-FI
com.atlassian.confluence.plugins.confluence-mentions-plugin	1112	2017-05-27 12:40:31.278	mentions-email-soy-templates-2
com.atlassian.plugins.base-hipchat-integration-plugin	1113	2017-05-27 12:40:31.278	invites-soy-resources
com.atlassian.confluence.plugins.confluence-inline-comments	1114	2017-05-27 12:40:31.278	confluence-inline-resolved-batching
com.atlassian.confluence.plugins.confluence-mobile	1115	2017-05-27 12:40:31.278	dashboard-servlet
com.atlassian.streams	1116	2017-05-27 12:40:31.278	date-az-Cyrl-AZ
com.atlassian.confluence.extra.widgetconnector	1117	2017-05-27 12:40:31.278	twitter
confluence.sections.page.operations	1118	2017-05-27 12:40:31.278	wordexport
com.atlassian.confluence.plugins.confluence-knowledge-base	1119	2017-05-27 12:40:31.278	kb-article-resources
confluence.web.resources	1120	2017-05-27 12:40:31.278	print-styles
com.atlassian.confluence.plugins.confluence-inline-tasks	1121	2017-05-27 12:40:31.278	task-report-blueprint-resources
com.atlassian.confluence.plugins.confluence-email-resources	1122	2017-05-27 12:40:31.278	template-utils-floating-table-1.0.0
com.atlassian.gadgets.opensocial	1123	2017-05-27 12:40:31.278	guice-context-listener
com.atlassian.confluence.plugins.confluence-inline-comments	1124	2017-05-27 12:40:31.278	inlinecomment.sidebar.navigate.previous
com.atlassian.activeobjects.confluence.spi	1125	2017-05-27 12:40:31.278	dialectExractor
com.atlassian.confluence.plugins.confluence-create-content-plugin	1126	2017-05-27 12:40:31.278	removeSpaceListener
com.atlassian.plugins.base-hipchat-integration-plugin	1127	2017-05-27 12:40:31.278	hipchat-webhook
com.atlassian.confluence.plugins.confluence-document-conversion-library	1128	2017-05-27 12:40:31.278	conversionQueueMonitor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1129	2017-05-27 12:40:31.278	hipchat-invite-resources
com.atlassian.streams	1130	2017-05-27 12:40:31.278	applinkService
com.atlassian.plugins.atlassian-plugins-webresource-rest	1131	2017-05-27 12:40:31.278	web-resources-filter
com.atlassian.confluence.plugins.confluence-view-file-macro	1132	2017-05-27 12:40:31.278	view-file-macro-amd-resources
confluence.sections.space.tools	1133	2017-05-27 12:40:31.278	watch-blog
com.atlassian.applinks.applinks-plugin	1135	2017-05-27 12:40:31.278	page-v3
com.atlassian.confluence.keyboardshortcuts	1136	2017-05-27 12:40:31.278	keyboard-shortcuts-dialog-help-menu
com.atlassian.plugins.atlassian-nav-links-plugin	1137	2017-05-27 12:40:31.278	capability-client
com.atlassian.plugin.notifications.notifications-module	1138	2017-05-27 12:40:31.278	product
com.atlassian.confluence.plugins.confluence-previews	1139	2017-05-27 12:40:31.278	confluence-previews-pdf
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1140	2017-05-27 12:40:31.278	appManager
com.atlassian.plugins.authentication.atlassian-authentication-plugin	1141	2017-05-27 12:40:31.278	confluence-authentication-filter
com.atlassian.confluence.plugins.confluence-license-banner	1142	2017-05-27 12:40:31.278	suppressStp1
com.atlassian.plugins.atlassian-nav-links-plugin	1143	2017-05-27 12:40:31.278	cacheFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1144	2017-05-27 12:40:31.278	confluenceUserI18nResolver
com.atlassian.confluence.plugins.search.confluence-search	1145	2017-05-27 12:40:31.278	disabledContentTypeFilterFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1146	2017-05-27 12:40:31.278	pluginRequestNotificationChecker
confluence.sections.space.admin	1147	2017-05-27 12:40:31.278	trash
com.atlassian.auiplugin	1148	2017-05-27 12:40:31.278	aui-page-suite
com.atlassian.streams	1149	2017-05-27 12:40:31.278	rest-filter
confluence.sections.space.tools	1150	2017-05-27 12:40:31.278	space-attachments
com.atlassian.streams	1151	2017-05-27 12:40:31.278	userManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1152	2017-05-27 12:40:31.278	upm-dac-landing-page-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1153	2017-05-27 12:40:31.278	pluginControlHandlerRegistry
com.atlassian.confluence.plugins.gadgets	1154	2017-05-27 12:40:31.278	gadgetFeedReaderFactory
com.atlassian.support.stp	1155	2017-05-27 12:40:31.278	renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1156	2017-05-27 12:40:31.278	requests-servlet
com.atlassian.applinks.applinks-plugin	1157	2017-05-27 12:40:31.278	feature-oauth-dance
com.atlassian.applinks.applinks-plugin	1158	2017-05-27 12:40:31.278	auth-config-css
com.atlassian.confluence.plugins.confluence-business-blueprints	1159	2017-05-27 12:40:31.278	sharelinks-page
com.atlassian.auiplugin	1160	2017-05-27 12:40:31.278	aui-experimental-badge
com.atlassian.confluence.plugins.confluence-software-project	1161	2017-05-27 12:40:31.278	sp-space-file-lists-template
com.atlassian.confluence.plugins.confluence-lookandfeel	1162	2017-05-27 12:40:31.278	sitelogo-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1163	2017-05-27 12:40:31.278	blogpost-edited-notification-template-body
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	1164	2017-05-27 12:40:31.278	remote-view-page-web-css-resource
confluence.sections.admin	1165	2017-05-27 12:40:31.278	license
com.atlassian.applinks.applinks-plugin	1166	2017-05-27 12:40:31.278	list-application-links
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1167	2017-05-27 12:40:31.278	pluginLicenseEventPublisherRegistry
com.atlassian.support.healthcheck.support-healthcheck-plugin	1168	2017-05-27 12:40:31.278	supportHealthCheckManager
com.atlassian.confluence.plugins.confluence-easyuser-admin	1169	2017-05-27 12:40:31.278	wikiStyleRenderer
com.atlassian.auiplugin	1170	2017-05-27 12:40:31.278	layer
com.atlassian.confluence.plugins.confluence-user-profile	1171	2017-05-27 12:40:31.278	user-avatar-resource-filter
com.atlassian.support.stp	1172	2017-05-27 12:40:31.278	stp-license-banner-data
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1173	2017-05-27 12:40:31.278	urlReadingWebResourceUrlBuilder
com.atlassian.confluence.plugins.confluence-labels	1174	2017-05-27 12:40:31.278	labels-resources
confluence.macros.basic	1175	2017-05-27 12:40:31.278	noformat
com.atlassian.applinks.applinks-plugin	1176	2017-05-27 12:40:31.278	xsrfTokenAccessor
confluence.extractors.core	1177	2017-05-27 12:40:31.278	spaceDescriptionUserNameExtractor
confluence.content.action.menu	1178	2017-05-27 12:40:31.278	secondary
confluence.content.action.menu	1179	2017-05-27 12:40:31.278	move-page
com.atlassian.streams.confluence.inlineactions	1180	2017-05-27 12:40:31.278	actionHandlers
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1181	2017-05-27 12:40:31.278	upm-manage-plugins-resources
com.atlassian.streams	1182	2017-05-27 12:40:31.278	date-sms-FI
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1183	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.confluence.plugins.confluence-view-file-macro	1184	2017-05-27 12:40:31.278	view-file-macro-editor-resources
com.atlassian.applinks.applinks-plugin	1185	2017-05-27 12:40:31.278	generic
com.atlassian.confluence.plugins.confluence-mentions-plugin	1186	2017-05-27 12:40:31.278	mention-notification-template
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1187	2017-05-27 12:40:31.278	openFilesHealthCheck
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1188	2017-05-27 12:40:31.278	dataSourceFactory
com.atlassian.applinks.applinks-plugin	1189	2017-05-27 12:40:31.278	model-applink
confluence.listeners.core	1190	2017-05-27 12:40:31.278	createUserNotificationsListener
com.atlassian.confluence.plugins.confluence-quicknav	1191	2017-05-27 12:40:31.278	quicknav-panel
com.atlassian.streams.confluence	1192	2017-05-27 12:40:31.278	date-de-LU
com.atlassian.confluence.plugins.confluence-knowledge-base	1193	2017-05-27 12:40:31.278	salDarkFeatureManager
com.atlassian.applinks.applinks-cors-plugin	1194	2017-05-27 12:40:31.278	i18nResolver
confluence.macros.advanced	1195	2017-05-27 12:40:31.278	xhtml-excerpt-include
com.atlassian.plugins.base-hipchat-integration-plugin	1196	2017-05-27 12:40:31.278	inviteServlet
confluence.admin.user	1197	2017-05-27 12:40:31.278	browse-users-tab-search
confluence.extra.masterdetail	1198	2017-05-27 12:40:31.278	clearCacheUpgradeTask
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1199	2017-05-27 12:40:31.278	userManager
com.atlassian.confluence.plugins.confluence-email-resources	1200	2017-05-27 12:40:31.278	view-page-email-call-to-action
confluence.macros.basic	1201	2017-05-27 12:40:31.278	loremipsum
com.atlassian.streams.actions	1202	2017-05-27 12:40:31.278	actionHandlerAccessor
com.atlassian.streams.confluence	1203	2017-05-27 12:40:31.278	date-id-ID
com.atlassian.confluence.plugins.confluence-email-resources	1204	2017-05-27 12:40:31.278	chrome-template
com.atlassian.streams.confluence	1205	2017-05-27 12:40:31.278	date-sw-KE
com.atlassian.applinks.applinks-plugin	1206	2017-05-27 12:40:31.278	feature-applink-status
com.atlassian.plugin.jslibs	1207	2017-05-27 12:40:31.278	backbone-1.0.0-factory
com.atlassian.applinks.applinks-cors-plugin	1208	2017-05-27 12:40:31.278	requestFactory
confluence.extra.information	1209	2017-05-27 12:40:31.278	xhtml-tip
com.atlassian.analytics.analytics-client	1210	2017-05-27 12:40:31.278	pluginEventManager
com.atlassian.applinks.applinks-oauth-plugin	1211	2017-05-27 12:40:31.278	oAuthConfigListener
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	1212	2017-05-27 12:40:31.278	rpv-serviceDeskExternalCustomerServletFilter-component
com.atlassian.streams.confluence	1213	2017-05-27 12:40:31.278	date-de-LI
com.atlassian.analytics.analytics-client	1214	2017-05-27 12:40:31.278	schedulerComponent
com.atlassian.applinks.applinks-plugin	1215	2017-05-27 12:40:31.278	redirectController
com.atlassian.confluence.plugins.confluence-create-content-plugin	1216	2017-05-27 12:40:31.278	ao
com.atlassian.plugin.notifications.notifications-module	1217	2017-05-27 12:40:31.278	passwordEncrypter
com.atlassian.support.stp	1218	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.streams.confluence	1219	2017-05-27 12:40:31.278	date-sma-NO
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1220	2017-05-27 12:40:31.278	jdkHealthCheck
confluence.web.panel.renderers	1221	2017-05-27 12:40:31.278	confluenceAwareWebPanelRenderer
com.atlassian.confluence.plugins.confluence-image-attributes	1222	2017-05-27 12:40:31.278	image-properties-tab-attributes
com.atlassian.mywork.mywork-confluence-host-plugin	1223	2017-05-27 12:40:31.278	task-dao
com.atlassian.streams.confluence	1224	2017-05-27 12:40:31.278	uriProvider
com.atlassian.confluence.plugins.recently-viewed-plugin	1225	2017-05-27 12:40:31.278	tx-processor
com.atlassian.applinks.applinks-cors-plugin	1226	2017-05-27 12:40:31.278	webSudoManager
com.atlassian.plugins.authentication.atlassian-authentication-plugin	1227	2017-05-27 12:40:31.278	authentication-config-rest
com.atlassian.auiplugin	1228	2017-05-27 12:40:31.278	aui-select2
com.atlassian.applinks.applinks-plugin	1229	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.oauth.serviceprovider	1230	2017-05-27 12:40:31.278	serviceProviderFactory
com.atlassian.querylang.confluence-cql-plugin	1231	2017-05-27 12:40:31.278	space-title-field
com.atlassian.confluence.plugins.confluence-onboarding	1232	2017-05-27 12:40:31.278	confluence-efi-rest
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1233	2017-05-27 12:40:31.278	hipchat-resources
com.atlassian.confluence.plugins.confluence-inline-comments	1234	2017-05-27 12:40:31.278	sidebar-view
com.atlassian.streams.confluence	1235	2017-05-27 12:40:31.278	formatSettingsManager
com.atlassian.confluence.plugins.confluence-edge-index	1236	2017-05-27 12:40:31.278	rest
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1237	2017-05-27 12:40:31.278	velocity-1.6-template-renderer-factory
com.atlassian.plugins.atlassian-nps-plugin	1238	2017-05-27 12:40:31.278	atlassian-nps-plugin-resources
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1239	2017-05-27 12:40:31.278	atlassian-cluster-monitoring
com.atlassian.confluence.plugins.soy	1240	2017-05-27 12:40:31.278	soy-format-time-function
com.atlassian.confluence.plugins.confluence-onboarding	1241	2017-05-27 12:40:31.278	webItemService
com.atlassian.confluence.plugins.confluence-email-resources	1242	2017-05-27 12:40:31.278	view-blogpost-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	1243	2017-05-27 12:40:31.278	notification-templates-comment-add-2.0.0
com.atlassian.streams	1244	2017-05-27 12:40:31.278	date-de-AT
com.atlassian.confluence.plugins.quickedit	1245	2017-05-27 12:40:31.278	editor-view-resources
confluence.extra.masterdetail	1246	2017-05-27 12:40:31.278	detailssummary
com.atlassian.streams	1247	2017-05-27 12:40:31.278	feedSanitizer
com.atlassian.auiplugin	1248	2017-05-27 12:40:31.278	aui-experimental-page-layout
com.atlassian.auiplugin	1249	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-custom-create-view
com.atlassian.confluence.extra.officeconnector	1250	2017-05-27 12:40:31.278	wordimportresource
com.atlassian.confluence.plugins.confluence-view-file-macro	1251	2017-05-27 12:40:31.278	filePlaceholderGeneratorServlet
com.atlassian.streams	1252	2017-05-27 12:40:31.278	date-kk-KZ
com.atlassian.confluence.plugins.whatsnew	1253	2017-05-27 12:40:31.278	whatsNewManager
com.atlassian.streams.confluence	1254	2017-05-27 12:40:31.278	date-ru-RU
com.atlassian.confluence.plugins.confluence-paste	1255	2017-05-27 12:40:31.278	autoconvert-linkedin-links
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1256	2017-05-27 12:40:31.278	manifestoHashAdapter
com.atlassian.confluence.plugins.confluence-onboarding	1257	2017-05-27 12:40:31.278	storage-service
confluence.extra.webdav	1258	2017-05-27 12:40:31.278	contentJobQueueExecutorTrigger
com.atlassian.confluence.plugins.confluence-like	1259	2017-05-27 12:40:31.278	notificationStoreService
tac.confluence.languages.pt_BR	1260	2017-05-27 12:40:31.278	pt_BR
com.atlassian.confluence.plugins.confluence-daily-summary-email	1261	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.mywork.mywork-confluence-provider-plugin	1262	2017-05-27 12:40:31.278	tasksEventListener
com.atlassian.confluence.plugins.confluence-onboarding	1263	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1264	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.confluence.extra.officeconnector	1265	2017-05-27 12:40:31.278	worddavadmin
com.atlassian.auiplugin	1266	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-constants
confluence.sections.admin	1267	2017-05-27 12:40:31.278	colourscheme
confluence.converters.core	1268	2017-05-27 12:40:31.278	user-statuslist-converter
com.atlassian.streams	1269	2017-05-27 12:40:31.278	date-de-CH
confluence.web.resources	1270	2017-05-27 12:40:31.278	es6-promise
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1271	2017-05-27 12:40:31.278	requiredPluginsHealthCheck
com.atlassian.confluence.extra.widgetconnector	1272	2017-05-27 12:40:31.278	ooyalaConfigurationManager
com.atlassian.plugins.atlassian-nav-links-plugin	1273	2017-05-27 12:40:31.278	custom-content-links
confluence.macros.advanced	1274	2017-05-27 12:40:31.278	nonViewableContentTypeSearchFilter
confluence.sections.admin.header	1275	2017-05-27 12:40:31.278	administration
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1276	2017-05-27 12:40:31.278	comment-edited-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-mobile	1277	2017-05-27 12:40:31.278	transactionTemplate
confluence.extra.userlister	1278	2017-05-27 12:40:31.278	defaultUserListManager
com.atlassian.confluence.plugins.confluence-templates	1279	2017-05-27 12:40:31.278	saveTransformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1280	2017-05-27 12:40:31.278	xmlPluginInstallHandler
confluence.user.menu	1281	2017-05-27 12:40:31.278	personal-space
com.atlassian.confluence.plugins.share-page	1282	2017-05-27 12:40:31.278	hipchat-resources-2.0.0
com.atlassian.confluence.plugins.soy	1283	2017-05-27 12:40:31.278	soy-format-date-time-function
com.atlassian.analytics.analytics-client	1284	2017-05-27 12:40:31.278	salHttpContextProvider
com.atlassian.confluence.keyboardshortcuts	1285	2017-05-27 12:40:31.278	goto.space
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1286	2017-05-27 12:40:31.278	upm-purchased-addons-templates
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1287	2017-05-27 12:40:31.278	confluenceNotificationsSpiAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-monitoring-console	1288	2017-05-27 12:40:31.278	monitoringControl
com.atlassian.confluence.plugins.confluence-highlight-actions	1289	2017-05-27 12:40:31.278	permissionManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1290	2017-05-27 12:40:31.278	luceneHealthCheck
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1291	2017-05-27 12:40:31.278	characterSetCheck
com.atlassian.crowd.embedded.admin	1292	2017-05-27 12:40:31.278	confluence-users-default-group
com.atlassian.confluence.extra.widgetconnector	1293	2017-05-27 12:40:31.278	googlemaps
com.atlassian.confluence.plugins.confluence-knowledge-base	1294	2017-05-27 12:40:31.278	kb-space-homepage-template
confluence.macros.advanced	1295	2017-05-27 12:40:31.278	galleryMacroMigrator
com.atlassian.streams.streams-thirdparty-plugin	1296	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.analytics.analytics-client	1297	2017-05-27 12:40:31.278	confluenceSenProvider
com.atlassian.confluence.plugins.confluence-email-resources	1298	2017-05-27 12:40:31.278	view-full-history-email-batch-item
com.atlassian.confluence.plugins.confluence-highlight-actions	1299	2017-05-27 12:40:31.278	markModificationValidator
com.atlassian.confluence.plugins.confluence-content-property-storage	1300	2017-05-27 12:40:31.278	pluginAccessor
confluence.user.hover.menu	1301	2017-05-27 12:40:31.278	user-profile
com.atlassian.streams.confluence	1302	2017-05-27 12:40:31.278	canCommentPredicateFactory
com.atlassian.streams.confluence	1303	2017-05-27 12:40:31.278	date-sl-SI
confluence.extra.jira	1304	2017-05-27 12:40:31.278	amd-support
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1305	2017-05-27 12:40:31.278	forgot-password-notification-transformer
confluence.extra.impresence2	1306	2017-05-27 12:40:31.278	wildfire
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1307	2017-05-27 12:40:31.278	linkBuilderContextItem
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1308	2017-05-27 12:40:31.278	systemInformationService
com.atlassian.gadgets.publisher	1309	2017-05-27 12:40:31.278	util
confluence.extra.jira	1310	2017-05-27 12:40:31.278	two-dimensional-chart-show-more-renderer
confluence.sections.space.advanced	1311	2017-05-27 12:40:31.278	stopwatchingblogs
confluence.listeners.core	1312	2017-05-27 12:40:31.278	stylesheetChangeListener
com.atlassian.auiplugin	1313	2017-05-27 12:40:31.278	binders
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1314	2017-05-27 12:40:31.278	emoticonEditorUnmarshaller
com.atlassian.mywork.mywork-confluence-host-plugin	1315	2017-05-27 12:40:31.278	registration-service
com.atlassian.analytics.analytics-client	1316	2017-05-27 12:40:31.278	compatibilityPluginScheduler
com.atlassian.streams	1317	2017-05-27 12:40:31.278	date-ar-AE
com.atlassian.favicon.confluence-custom-favicon-plugin	1318	2017-05-27 12:40:31.278	faviconInterceptor
com.atlassian.auiplugin	1319	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-filter-by-search
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1320	2017-05-27 12:40:31.278	clustering-resource
com.atlassian.streams	1321	2017-05-27 12:40:31.278	date-zh-MO
com.atlassian.confluence.plugins.confluence-email-tracker	1322	2017-05-27 12:40:31.278	emailUrlValidator
com.atlassian.confluence.plugins.confluence-quicknav	1323	2017-05-27 12:40:31.278	quicknav-resources
com.atlassian.streams	1324	2017-05-27 12:40:31.278	date-tr-TR
com.atlassian.querylang.confluence-cql-plugin	1325	2017-05-27 12:40:31.278	container-query-mapper
com.atlassian.confluence.plugins.confluence-create-content-plugin	1326	2017-05-27 12:40:31.278	indexPageManager
com.atlassian.auiplugin	1327	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table
com.atlassian.confluence.plugins.confluence-inline-tasks	1328	2017-05-27 12:40:31.278	tasks-notification
com.atlassian.confluence.plugins.confluence-email-resources	1329	2017-05-27 12:40:31.278	view-content-email-footer-item
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	1330	2017-05-27 12:40:31.278	common-soy
com.atlassian.plugins.atlassian-whitelist-core-plugin	1331	2017-05-27 12:40:31.278	cacheManager
com.atlassian.confluence.plugins.confluence-inline-comments	1332	2017-05-27 12:40:31.278	inlinecomment.sidebar.close
com.atlassian.streams.confluence	1333	2017-05-27 12:40:31.278	date-cy-GB
confluence.web.resources	1334	2017-05-27 12:40:31.278	syntaxhighlighter-all
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1335	2017-05-27 12:40:31.278	license-receipt-servlet
com.atlassian.confluence.plugins.confluence-space-ia	1336	2017-05-27 12:40:31.278	header-spaces-directory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1337	2017-05-27 12:40:31.278	userSettingsPanel
com.atlassian.confluence.plugins.confluence-paste	1338	2017-05-27 12:40:31.278	autoconvert-shortcut-links
com.atlassian.plugins.editor	1339	2017-05-27 12:40:31.278	sections
com.atlassian.auiplugin	1340	2017-05-27 12:40:31.278	aui-tooltips
confluence.listeners.core	1341	2017-05-27 12:40:31.278	databaseLikesRemovalListener
com.atlassian.confluence.plugins.confluence-software-project	1342	2017-05-27 12:40:31.278	sp-space-retrospectives-template
confluence.macros.dashboard	1343	2017-05-27 12:40:31.278	velocity-renderer
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1344	2017-05-27 12:40:31.278	internalAdminCheck
com.atlassian.auiplugin	1345	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-form-notification
com.atlassian.confluence.plugins.share-page	1346	2017-05-27 12:40:31.278	_private_temp-compat-question-resources
com.atlassian.confluence.plugins.confluence-onboarding	1347	2017-05-27 12:40:31.278	onboarding
confluence.web.resources	1348	2017-05-27 12:40:31.278	global-permissions-inline-dialog
com.atlassian.confluence.plugins.confluence-nav-links	1349	2017-05-27 12:40:31.278	navlinksProjectManager
com.atlassian.confluence.extra.flyingpdf	1350	2017-05-27 12:40:31.278	flyingPdfExporterService
com.atlassian.confluence.plugins.confluence-email-resources	1351	2017-05-27 12:40:31.278	template-utils-render-web-panels-1.0.0
com.atlassian.streams.confluence	1352	2017-05-27 12:40:31.278	date-de-CH
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1353	2017-05-27 12:40:31.278	confluence-webpanel-resources
com.atlassian.confluence.plugins.confluence-email-resources	1354	2017-05-27 12:40:31.278	content-templates-move-page-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-fixed-headers	1355	2017-05-27 12:40:31.278	confluence-fixed-headers-editor-preview-resources
confluence.macros.advanced	1356	2017-05-27 12:40:31.278	content-by-user
confluence.macros.dashboard	1357	2017-05-27 12:40:31.278	spaces
com.atlassian.healthcheck.atlassian-healthcheck	1358	2017-05-27 12:40:31.278	healthCheckRest-filter
com.atlassian.streams	1359	2017-05-27 12:40:31.278	streamsGadgetResources
com.atlassian.auiplugin	1360	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-truncating-progressive-data-set
com.atlassian.applinks.applinks-basicauth-plugin	1361	2017-05-27 12:40:31.278	adminUIAuthenticator
confluence.extra.jira	1362	2017-05-27 12:40:31.278	proxy-js
com.atlassian.mywork.mywork-common-plugin	1363	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1364	2017-05-27 12:40:31.278	hostLicenseUpdatedEventListener
confluence.extra.masterdetail	1365	2017-05-27 12:40:31.278	contentRetriever
com.atlassian.auiplugin	1366	2017-05-27 12:40:31.278	jquery-ui-other
com.atlassian.confluence.plugins.confluence-templates	1367	2017-05-27 12:40:31.278	list-global-templates-resources
com.atlassian.confluence.plugins.confluence-files	1368	2017-05-27 12:40:31.278	fileAutowatchEventListener
confluence.user.hover.menu	1369	2017-05-27 12:40:31.278	secondary
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	1370	2017-05-27 12:40:31.278	userManager
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	1371	2017-05-27 12:40:31.278	PluginUsage-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1372	2017-05-27 12:40:31.278	certificateFactory
com.atlassian.confluence.plugins.confluence-like	1373	2017-05-27 12:40:31.278	actions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1374	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.confluence-mentions-plugin	1375	2017-05-27 12:40:31.278	help-dialog-extension
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1376	2017-05-27 12:40:31.278	content-type-icons
com.atlassian.confluence.plugins.confluence-inline-tasks	1377	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.plugins.confluence-create-content-plugin	1378	2017-05-27 12:40:31.278	contentTemplateService
com.atlassian.confluence.extra.officeconnector	1379	2017-05-27 12:40:31.278	slide-viewer-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	1380	2017-05-27 12:40:31.278	documentationBeanFactory
com.atlassian.confluence.plugins.confluence-file-notifications	1381	2017-05-27 12:40:31.278	userAccessor
com.atlassian.streams.confluence	1382	2017-05-27 12:40:31.278	date-de-DE
com.atlassian.auiplugin	1383	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-enforcer
com.atlassian.applinks.applinks-oauth-plugin	1384	2017-05-27 12:40:31.278	consumerService
com.atlassian.confluence.plugins.confluence-like	1385	2017-05-27 12:40:31.278	like-created-mail-batch-notification-processor
com.atlassian.plugin.notifications.notifications-module	1386	2017-05-27 12:40:31.278	userNotificationSettingsServlet
confluence.listeners.core	1387	2017-05-27 12:40:31.278	notification-removal-listener
confluence.listeners.core	1388	2017-05-27 12:40:31.278	createInitialContentListener
com.atlassian.streams	1389	2017-05-27 12:40:31.278	date-se-SE
com.atlassian.confluence.plugins.confluence-knowledge-base	1390	2017-05-27 12:40:31.278	kb-troubleshooting-article
com.atlassian.confluence.plugins.recently-viewed-plugin	1391	2017-05-27 12:40:31.278	recentlyViewedDao
com.atlassian.healthcheck.atlassian-healthcheck	1392	2017-05-27 12:40:31.278	healthCheckCorsDefaults
confluence.search.lucene.boosting	1393	2017-05-27 12:40:31.278	boostPreferredSpace
com.atlassian.confluence.plugins.confluence-email-resources	1394	2017-05-27 12:40:31.278	notification-templates-blogpost-created-2.0.0
confluence.extractors.core	1395	2017-05-27 12:40:31.278	pageContentEntityObjectExtractor
com.atlassian.plugins.base-hipchat-integration-plugin-api	1396	2017-05-27 12:40:31.278	underscore-amd
confluence.extra.jira	1397	2017-05-27 12:40:31.278	jira
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1398	2017-05-27 12:40:31.278	page-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-inline-tasks	1399	2017-05-27 12:40:31.278	task-report-blueprint
com.atlassian.analytics.analytics-client	1400	2017-05-27 12:40:31.278	darkFeatureManager
com.atlassian.streams.confluence	1401	2017-05-27 12:40:31.278	date-fi-FI
com.atlassian.confluence.plugins.confluence-knowledge-base	1402	2017-05-27 12:40:31.278	rest-filter
com.atlassian.oauth.consumer.sal	1403	2017-05-27 12:40:31.278	keyPairFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1404	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.plugins.confluence-dashboard	1405	2017-05-27 12:40:31.278	dashboardContext
com.atlassian.streams	1461	2017-05-27 12:40:31.278	date-de-LI
com.atlassian.confluence.plugins.confluence-inline-comments	1406	2017-05-27 12:40:31.278	notification-transformer-reply
confluence.web.resources	1407	2017-05-27 12:40:31.278	admin-tasklist
com.atlassian.confluence.editor	1408	2017-05-27 12:40:31.278	macro-heading
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1409	2017-05-27 12:40:31.278	userAccessor
com.atlassian.confluence.extra.officeconnector	1410	2017-05-27 12:40:31.278	importworditem1
confluence.sections.admin	1411	2017-05-27 12:40:31.278	systeminfo
com.atlassian.confluence.ext.newcode-macro-plugin	1412	2017-05-27 12:40:31.278	sh-theme-midnight
confluence.renderer.components	1413	2017-05-27 12:40:31.278	html-escape
com.atlassian.support.healthcheck.support-healthcheck-plugin	1414	2017-05-27 12:40:31.278	threadLimitHealthCheck
com.atlassian.confluence.plugins.gadgets	1415	2017-05-27 12:40:31.278	page-gadget-resources
confluence.sections.create	1416	2017-05-27 12:40:31.278	create-user
com.atlassian.applinks.applinks-basicauth-plugin	1417	2017-05-27 12:40:31.278	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-highlight-actions	1418	2017-05-27 12:40:31.278	pageManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1419	2017-05-27 12:40:31.278	analyticsLogger
com.atlassian.oauth.serviceprovider	1420	2017-05-27 12:40:31.278	authenticationListener
confluence.sections.space	1421	2017-05-27 12:40:31.278	space-operations
com.atlassian.plugins.atlassian-nps-plugin	1422	2017-05-27 12:40:31.278	nps-util
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1423	2017-05-27 12:40:31.278	permissionEnforcer
com.atlassian.confluence.plugins.confluence-email-resources	1424	2017-05-27 12:40:31.278	settingsManager
com.atlassian.confluence.plugins.confluence-email-resources	1425	2017-05-27 12:40:31.278	template-utils-user-link-2.0.0
com.atlassian.confluence.plugins.soy	1426	2017-05-27 12:40:31.278	soy-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1427	2017-05-27 12:40:31.278	page-edited-notification
com.atlassian.confluence.plugins.confluence-create-content-plugin	1428	2017-05-27 12:40:31.278	actions
com.atlassian.confluence.plugins.confluence-sal-plugin	1429	2017-05-27 12:40:31.278	authenticationController
com.atlassian.confluence.plugins.confluence-labels	1430	2017-05-27 12:40:31.278	view-labels-all
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1431	2017-05-27 12:40:31.278	hipChatEmoticonService
com.atlassian.auiplugin	1432	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-jquery-plugins-jquery-aop
confluence.extra.webdav	1433	2017-05-27 12:40:31.278	confluenceResourceFactory
com.atlassian.applinks.applinks-cors-plugin	1434	2017-05-27 12:40:31.278	userManager
com.atlassian.confluence.plugins.analytics-jobs-plugin	1435	2017-05-27 12:40:31.278	periodicEventPublisherJob
com.atlassian.confluence.plugins.confluence-highlight-actions	1436	2017-05-27 12:40:31.278	textCollector
com.atlassian.streams	1437	2017-05-27 12:40:31.278	date-en-029
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1438	2017-05-27 12:40:31.278	whitelistBeanService
com.atlassian.confluence.plugins.confluence-inline-comments	1439	2017-05-27 12:40:31.278	navigation-view
com.atlassian.confluence.plugins.watch-button	1440	2017-05-27 12:40:31.278	rest-filter
confluence.aui.staging	1441	2017-05-27 12:40:31.278	persistable
confluence.extra.attachments	1442	2017-05-27 12:40:31.278	attachments-css
com.atlassian.streams	1443	2017-05-27 12:40:31.278	date-quz-PE
com.atlassian.confluence.restplugin	1444	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.auiplugin	1445	2017-05-27 12:40:31.278	message
com.atlassian.confluence.editor	1446	2017-05-27 12:40:31.278	error-placeholder
confluence.listeners.core	1447	2017-05-27 12:40:31.278	updatePersonalSpaceListener
com.atlassian.confluence.plugins.confluence-like	1448	2017-05-27 12:40:31.278	excerpter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1449	2017-05-27 12:40:31.278	obrPluginInstallHandler
com.atlassian.applinks.applinks-oauth-plugin	1450	2017-05-27 12:40:31.278	auto-configuration-servlet
com.atlassian.confluence.plugins.confluence-dashboard	1451	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.gadgets.opensocial	1452	2017-05-27 12:40:31.278	gadget-spec-not-found-error-servlet
com.atlassian.confluence.plugins.confluence-software-blueprints	1453	2017-05-27 12:40:31.278	retrospectives-blueprint
confluence.extra.confluencerpc	1454	2017-05-27 12:40:31.278	labelsSoapService
com.atlassian.applinks.applinks-trustedapps-plugin	1455	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.confluence.plugins.confluence-create-content-plugin	1456	2017-05-27 12:40:31.278	contentTemplateRefManager
com.atlassian.auiplugin	1457	2017-05-27 12:40:31.278	internal-object-assign-4.0.1-index
com.atlassian.confluence.plugins.confluence-schedule-admin	1458	2017-05-27 12:40:31.278	scheduledjobs
com.atlassian.confluence.plugins.recently-viewed-plugin	1459	2017-05-27 12:40:31.278	recently-viewed-rest-filter
com.atlassian.streams.confluence	1460	2017-05-27 12:40:31.278	date-tn-ZA
com.atlassian.confluence.plugins.templates-framework	1462	2017-05-27 12:40:31.278	configure-templates
com.atlassian.plugins.atlassian-nav-links-plugin	1463	2017-05-27 12:40:31.278	application-header-administration-cog-resource
com.atlassian.confluence.plugins.gadgets	1464	2017-05-27 12:40:31.278	whitelistService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1465	2017-05-27 12:40:31.278	page-create-notification
com.atlassian.mywork.mywork-common-plugin	1466	2017-05-27 12:40:31.278	myworkserviceselectorlink
confluence.extra.webdav	1467	2017-05-27 12:40:31.278	clientWriteDenyFilter
com.atlassian.plugins.atlassian-help-tips	1468	2017-05-27 12:40:31.278	helpTipsDao
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1469	2017-05-27 12:40:31.278	selfUpdatePluginAccessor
confluence.web.resources	1470	2017-05-27 12:40:31.278	almond
com.atlassian.confluence.plugins.gadgets	1471	2017-05-27 12:40:31.278	confluence-news-gadget
com.atlassian.support.stp	1472	2017-05-27 12:40:31.278	stp-license-status-resources
com.atlassian.querylang.confluence-cql-plugin	1473	2017-05-27 12:40:31.278	space-field
confluence.renderer.components	1474	2017-05-27 12:40:31.278	strong
com.atlassian.streams	1475	2017-05-27 12:40:31.278	localActivityProviders
com.atlassian.confluence.plugins.confluence-mobile	1476	2017-05-27 12:40:31.278	mobile-can-use-filter
com.atlassian.streams	1477	2017-05-27 12:40:31.278	date-de-LU
com.atlassian.confluence.plugins.view-storage-format	1478	2017-05-27 12:40:31.278	view-comment-storage
com.atlassian.plugin.notifications.notifications-module	1479	2017-05-27 12:40:31.278	notification-medium
confluence.macros.profile	1480	2017-05-27 12:40:31.278	profile
com.atlassian.streams.confluence	1481	2017-05-27 12:40:31.278	xmlOutputFactory
confluence.web.resources	1482	2017-05-27 12:40:31.278	admin
confluence.sections.help	1483	2017-05-27 12:40:31.278	confluence-about
com.atlassian.applinks.applinks-plugin	1484	2017-05-27 12:40:31.278	threadLocalDelegateExecutorFactory
confluence.extra.jira	1485	2017-05-27 12:40:31.278	dialogsJs
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1486	2017-05-27 12:40:31.278	dacidecision-template
com.atlassian.mywork.mywork-common-plugin	1487	2017-05-27 12:40:31.278	unreliable-worker
com.atlassian.streams	1488	2017-05-27 12:40:31.278	date-quz-BO
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1489	2017-05-27 12:40:31.278	outboundWhitelist
com.atlassian.streams	1490	2017-05-27 12:40:31.278	date-se-NO
com.atlassian.integration.jira.jira-integration-plugin	1491	2017-05-27 12:40:31.278	entityLinksService
com.atlassian.confluence.keyboardshortcuts	1492	2017-05-27 12:40:31.278	tinymce.table
confluence.macros.multimedia	1493	2017-05-27 12:40:31.278	flash
com.atlassian.confluence.plugins.confluence-baseurl-plugin	1494	2017-05-27 12:40:31.278	baseurl-resource
confluence.web.resources	1495	2017-05-27 12:40:31.278	people-directory
com.atlassian.confluence.plugins.confluence-space-ia	1496	2017-05-27 12:40:31.278	space-sidebar-xmlrpc
com.atlassian.confluence.editor	1497	2017-05-27 12:40:31.278	editor-resources
com.atlassian.querylang.confluence-cql-plugin	1498	2017-05-27 12:40:31.278	content-id-query-field-mapper
com.atlassian.confluence.ext.newcode-macro-plugin	1499	2017-05-27 12:40:31.278	syntaxhighlighter-init
com.atlassian.gadgets.opensocial	1500	2017-05-27 12:40:31.278	security-token-servlet
confluence.sections.space.admin	1501	2017-05-27 12:40:31.278	importpages
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1502	2017-05-27 12:40:31.278	createPageListener
confluence.search.mappers.lucene	1503	2017-05-27 12:40:31.278	multiTextField
com.atlassian.applinks.applinks-plugin	1504	2017-05-27 12:40:31.278	entityRetriever
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1505	2017-05-27 12:40:31.278	batching-notification-template-body
com.atlassian.confluence.plugins.confluence-email-resources	1506	2017-05-27 12:40:31.278	contentService
com.atlassian.applinks.applinks-trustedapps-plugin	1507	2017-05-27 12:40:31.278	trusted-auto-configuration-servlet
com.atlassian.confluence.plugins.confluence-inline-comments	1508	2017-05-27 12:40:31.278	highlight-view
com.atlassian.activeobjects.confluence.spi	1509	2017-05-27 12:40:31.278	aoSynchronizationManager
com.atlassian.auiplugin	1510	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-focus-manager
com.atlassian.streams	1511	2017-05-27 12:40:31.278	date-zh-SG
com.atlassian.confluence.plugins.confluence-jira-metadata	1512	2017-05-27 12:40:31.278	confluence-jira-metadata-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1513	2017-05-27 12:40:31.278	blogpost-trashed-notification-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1514	2017-05-27 12:40:31.278	jarPluginInstallHandler
com.atlassian.plugins.atlassian-nav-links-plugin	1515	2017-05-27 12:40:31.278	userSettingsService
confluence.extra.jira	1516	2017-05-27 12:40:31.278	servers-filter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1517	2017-05-27 12:40:31.278	fileCleanup
confluence.search.mappers.lucene	1518	2017-05-27 12:40:31.278	title
com.atlassian.confluence.extra.flyingpdf	1519	2017-05-27 12:40:31.278	exportactions
com.atlassian.analytics.analytics-client	1520	2017-05-27 12:40:31.278	js-events
com.atlassian.querylang.confluence-cql-plugin	1521	2017-05-27 12:40:31.278	filesize-query-mapper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1522	2017-05-27 12:40:31.278	hostContextAccessor
com.atlassian.confluence.extra.officeconnector	1523	2017-05-27 12:40:31.278	viewpdf-legacy
com.atlassian.confluence.plugins.confluence-quicknav	1524	2017-05-27 12:40:31.278	quick-nav-rest-filter
confluence.extra.webdav	1525	2017-05-27 12:40:31.278	pageRestoreListener
com.atlassian.streams.confluence	1526	2017-05-27 12:40:31.278	date-kk-KZ
com.atlassian.auiplugin	1527	2017-05-27 12:40:31.278	aui-layer-manager
com.atlassian.confluence.plugins.confluence-knowledge-base	1528	2017-05-27 12:40:31.278	sidebar-icons
com.atlassian.confluence.plugins.confluence-file-notifications	1529	2017-05-27 12:40:31.278	file-content-remove-payload-transformer
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1530	2017-05-27 12:40:31.278	roadmap-bar-dialog-resources
confluence.web.resources	1531	2017-05-27 12:40:31.278	about
com.atlassian.confluence.plugins.confluence-inline-tasks	1532	2017-05-27 12:40:31.278	inlineTasksAnalyticsWhitelist
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1533	2017-05-27 12:40:31.278	licenseTokenStore
confluence.listeners.core	1534	2017-05-27 12:40:31.278	trackbackListener
com.atlassian.confluence.plugins.confluence-email-resources	1535	2017-05-27 12:40:31.278	template-utils-bullet-point-1.0.0
confluence.web.resources	1536	2017-05-27 12:40:31.278	content-styles
com.atlassian.confluence.plugins.whatsnew	1537	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.streams	1538	2017-05-27 12:40:31.278	date-zh-TW
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1539	2017-05-27 12:40:31.278	experiencecanvas-blueprint-item
com.atlassian.confluence.extra.widgetconnector	1540	2017-05-27 12:40:31.278	googlegadgets
com.atlassian.streams	1541	2017-05-27 12:40:31.278	postReplyHandler
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1542	2017-05-27 12:40:31.278	upm-common-licensing
confluence.extractors.core	1543	2017-05-27 12:40:31.278	homePageExtractor
com.atlassian.streams	1544	2017-05-27 12:40:31.278	date-quz-EC
com.atlassian.integration.jira.jira-integration-plugin	1545	2017-05-27 12:40:31.278	jira-error-page
confluence.extractors.core	1546	2017-05-27 12:40:31.278	versionNumberExtractor
com.atlassian.plugins.atlassian-nav-links-plugin	1547	2017-05-27 12:40:31.278	custom-apps
com.atlassian.applinks.applinks-plugin	1548	2017-05-27 12:40:31.278	feature-oauth-picker
com.atlassian.streams	1549	2017-05-27 12:40:31.278	date-ar-DZ
com.atlassian.confluence.plugins.confluence-page-restrictions-dialog	1550	2017-05-27 12:40:31.278	dialog-resources
com.atlassian.plugins.atlassian-nps-plugin	1551	2017-05-27 12:40:31.278	nps-rest-filter
com.atlassian.integration.jira.jira-integration-plugin	1552	2017-05-27 12:40:31.278	applicationLinkService
com.atlassian.support.healthcheck.support-healthcheck-plugin	1553	2017-05-27 12:40:31.278	networkMountHealthCheck
com.atlassian.confluence.plugins.confluence-mobile	1554	2017-05-27 12:40:31.278	app-frame
com.atlassian.confluence.plugins.confluence-create-content-plugin	1555	2017-05-27 12:40:31.278	restrictedUserSpaceCreationStep
confluence.macros.advanced	1556	2017-05-27 12:40:31.278	blog
com.atlassian.streams	1557	2017-05-27 12:40:31.278	date-ar-EG
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1558	2017-05-27 12:40:31.278	impl
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1559	2017-05-27 12:40:31.278	reviewsNotificationsService
com.atlassian.confluence.keyboardshortcuts	1560	2017-05-27 12:40:31.278	tinymce.macro
com.atlassian.streams.confluence	1561	2017-05-27 12:40:31.278	settingsManager
com.atlassian.confluence.plugins.confluence-email-resources	1562	2017-05-27 12:40:31.278	confluenceNotificationPreferenceManager
com.atlassian.streams	1563	2017-05-27 12:40:31.278	date-id-ID
com.atlassian.auiplugin	1564	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-event
com.atlassian.confluence.plugins.confluence-inline-comments	1565	2017-05-27 12:40:31.278	bootstrap
com.atlassian.confluence.plugins.confluence-inline-comments	1566	2017-05-27 12:40:31.278	resolved-comment-view
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1567	2017-05-27 12:40:31.278	upm-common-licensing-templates
com.atlassian.confluence.plugins.confluence-create-content-plugin	1568	2017-05-27 12:40:31.278	watchSpaceCreationStep
com.atlassian.mywork.mywork-confluence-host-plugin	1569	2017-05-27 12:40:31.278	applinkid-service
com.atlassian.confluence.plugins.confluence-edge-index	1570	2017-05-27 12:40:31.278	pluginScheduler
com.atlassian.confluence.plugins.confluence-business-blueprints	1571	2017-05-27 12:40:31.278	sharelinks-urlmacro
com.atlassian.gadgets.publisher	1572	2017-05-27 12:40:31.278	ajs-gadgets-lite
confluence.macros.advanced	1900	2017-05-27 12:40:31.278	get-more
confluence.extractors.core	1573	2017-05-27 12:40:31.278	pluginContentEntityObjectExtractor
com.atlassian.plugins.atlassian-help-tips	1574	2017-05-27 12:40:31.278	common
com.atlassian.confluence.plugins.search.confluence-search	1575	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.confluence.plugins.confluence-email-resources	1576	2017-05-27 12:40:31.278	content-url-function
com.atlassian.applinks.applinks-cors-plugin	1577	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.plugin.jslibs	1578	2017-05-27 12:40:31.278	skate-0.12.6
com.atlassian.plugins.atlassian-nav-links-plugin	1579	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.confluence.plugins.search.confluence-search	1580	2017-05-27 12:40:31.278	actions
com.atlassian.plugin.jslibs	1581	2017-05-27 12:40:31.278	skate-0.12.5
com.atlassian.applinks.applinks-basicauth-plugin	1582	2017-05-27 12:40:31.278	documentationLinker
confluence.sections.space.tools	1583	2017-05-27 12:40:31.278	contenttools
com.atlassian.mywork.mywork-confluence-provider-plugin	1584	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.confluence.contributors	1585	2017-05-27 12:40:31.278	soy-templates
com.atlassian.confluence.plugins.confluence-jira-content	1586	2017-05-27 12:40:31.278	create-jira-content-services-filter
confluence.extractors.core	1587	2017-05-27 12:40:31.278	attachmentOwnerContentTypeChangeExtractor
com.atlassian.confluence.plugins.recently-viewed-plugin	1588	2017-05-27 12:40:31.278	userAccessor
confluence.search.mappers.lucene	1589	2017-05-27 12:40:31.278	lastModifierUserSearchFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	1590	2017-05-27 12:40:31.278	inline-tasks-view
com.atlassian.applinks.applinks-oauth-plugin	1591	2017-05-27 12:40:31.278	serviceProviderConsumerStore
com.atlassian.confluence.plugins.confluence-email-resources	1592	2017-05-27 12:40:31.278	stop-watching-space-email-footer-item
confluence.macros.multimedia	1593	2017-05-27 12:40:31.278	compatibility-multimedia
com.atlassian.streams.confluence	1594	2017-05-27 12:40:31.278	date-de-AT
com.atlassian.plugins.atlassian-whitelist-ui-plugin	1595	2017-05-27 12:40:31.278	whitelist-rest
com.atlassian.confluence.plugins.gadgets	1596	2017-05-27 12:40:31.278	publishedGadgetSpecStore
confluence.sections.admin	1597	2017-05-27 12:40:31.278	configuration
com.atlassian.confluence.contributors	1598	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.confluence.plugins.search.confluence-search	1599	2017-05-27 12:40:31.278	searcherv3
com.atlassian.confluence.extra.widgetconnector	1600	2017-05-27 12:40:31.278	ooyala-web-resources
com.atlassian.applinks.applinks-plugin	1601	2017-05-27 12:40:31.278	helpurl-soy-function
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1602	2017-05-27 12:40:31.278	serverManager
com.atlassian.confluence.plugins.search.confluence-search	1603	2017-05-27 12:40:31.278	searcherv2
com.atlassian.confluence.plugins.confluence-email-resources	1604	2017-05-27 12:40:31.278	notification-templates-comment-edit-2.0.0
com.atlassian.confluence.plugins.gadgets	1605	2017-05-27 12:40:31.278	userAccessor
confluence.sections.create	1606	2017-05-27 12:40:31.278	create-comment
confluence.extra.impresence2	1607	2017-05-27 12:40:31.278	skype-xhtml
com.atlassian.confluence.plugins.confluence-view-file-macro	1608	2017-05-27 12:40:31.278	view-file-macro-editor-content-resources
com.atlassian.confluence.plugins.confluence-labels	1609	2017-05-27 12:40:31.278	view-labels-popular
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1610	2017-05-27 12:40:31.278	notification-templates-healthcheck
confluence.web.resources	1611	2017-05-27 12:40:31.278	user-macro-admin
com.atlassian.confluence.plugins.confluence-edge-index	1612	2017-05-27 12:40:31.278	edgeIndexRecoverer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1613	2017-05-27 12:40:31.278	confluenceQueueTaskManager
com.atlassian.confluence.plugins.confluence-inline-tasks	1614	2017-05-27 12:40:31.278	sortable-table-server-side
com.atlassian.applinks.applinks-basicauth-plugin	1615	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	1616	2017-05-27 12:40:31.278	xmlOutputFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1617	2017-05-27 12:40:31.278	pluginLogService
com.atlassian.auiplugin	1618	2017-05-27 12:40:31.278	ajs-gadgets-base
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1619	2017-05-27 12:40:31.278	pluginSystemEventManager
com.atlassian.auiplugin	1620	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-populate-parameters
com.atlassian.confluence.plugins.confluence-email-resources	1621	2017-05-27 12:40:31.278	chrome-template-header-pattern-1.0.0
confluence.macros.advanced	1622	2017-05-27 12:40:31.278	recently-updated-mobile-resources
com.atlassian.confluence.plugins.confluence-edge-index	1623	2017-05-27 12:40:31.278	streamItemFactory
com.atlassian.streams	1624	2017-05-27 12:40:31.278	date-ar-BH
confluence.extra.information	1625	2017-05-27 12:40:31.278	xhtml-info
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	1626	2017-05-27 12:40:31.278	featureManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1627	2017-05-27 12:40:31.278	follower-added-notification-template
com.atlassian.auiplugin	1628	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-spin-spin
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	1629	2017-05-27 12:40:31.278	featureDiscoveryRest-filter
confluence.listeners.core	1630	2017-05-27 12:40:31.278	permissions-logging-listener
com.atlassian.confluence.plugins.pagetree	1631	2017-05-27 12:40:31.278	PageHierarchyExtractor
com.atlassian.analytics.analytics-client	1632	2017-05-27 12:40:31.278	whitelistCollector
com.atlassian.streams	1633	2017-05-27 12:40:31.278	date-ar-QA
com.atlassian.gadgets.opensocial	1634	2017-05-27 12:40:31.278	opensocial-rpc-servlet
com.atlassian.auiplugin	1635	2017-05-27 12:40:31.278	aui-checkbox-multiselect
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1636	2017-05-27 12:40:31.278	renderer
com.atlassian.confluence.plugins.confluence-sal-plugin	1637	2017-05-27 12:40:31.278	trustedRequestFactory
com.atlassian.confluence.plugins.confluence-browser-metrics	1638	2017-05-27 12:40:31.278	bigpipe-reporter
com.atlassian.confluence.extra.flyingpdf	1639	2017-05-27 12:40:31.278	pdfResourceManager
com.atlassian.analytics.analytics-client	1640	2017-05-27 12:40:31.278	confluenceAnalyticsPropertyService
com.atlassian.confluence.plugins.gadgets	1641	2017-05-27 12:40:31.278	salUserManager
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1642	2017-05-27 12:40:31.278	discovery-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	1643	2017-05-27 12:40:31.278	xsrfTokenValidator
confluence.web.resources	1644	2017-05-27 12:40:31.278	select-all-row
com.atlassian.confluence.plugins.gadgets	1645	2017-05-27 12:40:31.278	gadgetSpecIdGenerator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1646	2017-05-27 12:40:31.278	upm-osgi
com.atlassian.confluence.plugins.confluence-inline-tasks	1647	2017-05-27 12:40:31.278	notification-styles
com.atlassian.applinks.applinks-trustedapps-plugin	1648	2017-05-27 12:40:31.278	trustedContextFilter
com.atlassian.confluence.plugins.confluence-previews	1649	2017-05-27 12:40:31.278	minimode-plugin
com.atlassian.applinks.applinks-plugin	1650	2017-05-27 12:40:31.278	callbackParameter
com.atlassian.confluence.plugins.gadgets	1651	2017-05-27 12:40:31.278	gadget-search-resources
confluence.extra.masterdetail	1652	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.contributors	1653	2017-05-27 12:40:31.278	contributors-xhtml
com.atlassian.confluence.ext.newcode-macro-plugin	1654	2017-05-27 12:40:31.278	sh-theme-emacs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1655	2017-05-27 12:40:31.278	auditLogPipQueue
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1656	2017-05-27 12:40:31.278	localeManager
com.atlassian.auiplugin	1657	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-tooltip
confluence.web.resources	1658	2017-05-27 12:40:31.278	content-body-with-styles
confluence.extra.masterdetail	1659	2017-05-27 12:40:31.278	cqlSearchService
confluence.extra.information	1660	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.auiplugin	1661	2017-05-27 12:40:31.278	aui-experimental-labels
confluence.converters.core	1662	2017-05-27 12:40:31.278	user-converter
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1663	2017-05-27 12:40:31.278	bandanaManager
com.atlassian.mywork.mywork-confluence-provider-plugin	1664	2017-05-27 12:40:31.278	inlineTaskService
com.atlassian.streams.confluence	1665	2017-05-27 12:40:31.278	date-fa-IR
confluence.macros.advanced	1666	2017-05-27 12:40:31.278	xhtml-listlabels
com.atlassian.confluence.plugins.confluence-software-blueprints	1667	2017-05-27 12:40:31.278	jirareports-services-filter
com.atlassian.confluence.plugins.share-page	1668	2017-05-27 12:40:31.278	share-user-recipients-provider
com.atlassian.auiplugin	1669	2017-05-27 12:40:31.278	jquery-ui-interactions
com.atlassian.confluence.plugins.confluence-page-layout	1670	2017-05-27 12:40:31.278	pagelayout-content-styles
com.atlassian.confluence.plugins.confluence-request-access-plugin	1671	2017-05-27 12:40:31.278	rest-filter
confluence.macros.core	1672	2017-05-27 12:40:31.278	loremipsum
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1673	2017-05-27 12:40:31.278	comment-edited-notification-transformer
com.atlassian.applinks.applinks-oauth-plugin	1674	2017-05-27 12:40:31.278	add-consumer-manually
com.atlassian.applinks.applinks-plugin	1675	2017-05-27 12:40:31.278	confluence-list-application-links-legacy-url-filter
confluence.sections.space.export.view	1676	2017-05-27 12:40:31.278	spaceexport
com.atlassian.auiplugin	1677	2017-05-27 12:40:31.278	aui-experimental-autocomplete-helpers
com.atlassian.confluence.plugins.confluence-spaces	1678	2017-05-27 12:40:31.278	defaultspaceperms
com.atlassian.support.stp	1679	2017-05-27 12:40:31.278	stpWhitelist
com.atlassian.streams.confluence	1680	2017-05-27 12:40:31.278	attachmentItemFactory
confluence.sections.space	1681	2017-05-27 12:40:31.278	space-administration
com.atlassian.confluence.plugins.drag-and-drop	1682	2017-05-27 12:40:31.278	drag-and-drop-tip
com.atlassian.plugins.atlassian-nav-links-plugin	1683	2017-05-27 12:40:31.278	project-manager
com.atlassian.confluence.plugins.confluence-mentions-plugin	1684	2017-05-27 12:40:31.278	mention-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-onboarding	1685	2017-05-27 12:40:31.278	onboardingNumberOfUsersCheckTrigger
com.atlassian.confluence.plugins.confluence-email-resources	1686	2017-05-27 12:40:31.278	stop-watching-page-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-email-tracker	1687	2017-05-27 12:40:31.278	userAccessor
com.atlassian.confluence.plugins.share-page	1688	2017-05-27 12:40:31.278	sharePageWhitelist
com.atlassian.confluence.plugins.confluence-spaces	1689	2017-05-27 12:40:31.278	soy-templates
confluence.extra.jira	1690	2017-05-27 12:40:31.278	mobile-browser-resources
confluence.renderer.components	1691	2017-05-27 12:40:31.278	template-parameters
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1692	2017-05-27 12:40:31.278	selfUpdateController
com.atlassian.confluence.plugins.confluence-software-blueprints	1693	2017-05-27 12:40:31.278	jirareports-statusreport
com.atlassian.applinks.applinks-trustedapps-plugin	1694	2017-05-27 12:40:31.278	trustedAppsOrphanedTrustDetector
com.atlassian.confluence.editor	1695	2017-05-27 12:40:31.278	search-ms-edge
com.atlassian.auiplugin	1696	2017-05-27 12:40:31.278	ajs-backbone
com.atlassian.auiplugin	1697	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-is-clipped
confluence.macros.advanced	1698	2017-05-27 12:40:31.278	search
com.atlassian.streams.confluence	1699	2017-05-27 12:40:31.278	date-he-IL
com.atlassian.confluence.extra.widgetconnector	1700	2017-05-27 12:40:31.278	googlevideo
com.atlassian.streams	1701	2017-05-27 12:40:31.278	date-ar-OM
com.atlassian.applinks.applinks-oauth-plugin	1702	2017-05-27 12:40:31.278	callbackParameter
com.atlassian.querylang.confluence-cql-plugin	1703	2017-05-27 12:40:31.278	parent-field
com.atlassian.auiplugin	1704	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-select-option
com.atlassian.gadgets.directory	1705	2017-05-27 12:40:31.278	directory-config
com.atlassian.auiplugin	1706	2017-05-27 12:40:31.278	aui-experimental-devtools-iconfont
com.atlassian.confluence.plugins.confluence-onboarding	1707	2017-05-27 12:40:31.278	notification-template-less-users
com.atlassian.confluence.plugins.confluence-highlight-actions	1708	2017-05-27 12:40:31.278	selectionStorageFormatModifier
com.atlassian.confluence.plugins.confluence-easyuser-admin	1709	2017-05-27 12:40:31.278	admin-invite-users-panel
com.atlassian.support.healthcheck.support-healthcheck-plugin	1710	2017-05-27 12:40:31.278	userSettingsService
com.atlassian.auiplugin	1711	2017-05-27 12:40:31.278	aui-experimental-page-layout-legacy1
com.atlassian.plugin.jslibs	1712	2017-05-27 12:40:31.278	d3-3.4.13
com.atlassian.confluence.plugins.gadgets	1713	2017-05-27 12:40:31.278	gadget-old
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1714	2017-05-27 12:40:31.278	hipchat-room-context
com.atlassian.confluence.plugins.confluence-email-resources	1715	2017-05-27 12:40:31.278	add-comment-to-content-email-adg-footer-item
com.atlassian.auiplugin	1716	2017-05-27 12:40:31.278	aui-experimental-module-and-header-legacy1
com.atlassian.plugin.jslibs	1717	2017-05-27 12:40:31.278	moment-2.10.3
com.atlassian.plugin.jslibs	1718	2017-05-27 12:40:31.278	brace-2014.09.03-factory
com.atlassian.confluence.plugins.confluence-file-notifications	1719	2017-05-27 12:40:31.278	file-content-update-email-notification-template-body
com.atlassian.plugins.atlassian-project-creation-plugin	1720	2017-05-27 12:40:31.278	project-linking-rest-filter
com.atlassian.plugins.base-hipchat-integration-plugin-api	1721	2017-05-27 12:40:31.278	hipchat-notification-context
com.atlassian.confluence.editor	1722	2017-05-27 12:40:31.278	unknown-attachment-placeholder
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	1723	2017-05-27 12:40:31.278	dacidecision-blueprint
com.atlassian.gadgets.directory	1724	2017-05-27 12:40:31.278	directory-config-filter
com.atlassian.confluence.plugins.dialog-wizard	1725	2017-05-27 12:40:31.278	dialog-wizard
com.atlassian.confluence.editor	1726	2017-05-27 12:40:31.278	popup-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1727	2017-05-27 12:40:31.278	asynchronousTaskStatusStore
confluence.web.components	1728	2017-05-27 12:40:31.278	property-panel-css
com.atlassian.oauth.serviceprovider	1729	2017-05-27 12:40:31.278	oauthAuthorizeServlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1730	2017-05-27 12:40:31.278	userManager
com.atlassian.gadgets.opensocial	1731	2017-05-27 12:40:31.278	rpc-relay-servlet
com.atlassian.streams	1732	2017-05-27 12:40:31.278	date-ar-MA
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1733	2017-05-27 12:40:31.278	compatibilityUserManager
crowd.system.passwordencoders	1734	2017-05-27 12:40:31.278	plaintext
com.atlassian.confluence.plugins.confluence-email-resources	1735	2017-05-27 12:40:31.278	stop-watching-all-blogs-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-inline-tasks	1736	2017-05-27 12:40:31.278	show-task-feature-discovery-flag-blogpost
com.atlassian.confluence.plugins.confluence-ui-components	1737	2017-05-27 12:40:31.278	space-page-picker
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1738	2017-05-27 12:40:31.278	confluence-upm-marketplace-menu
com.atlassian.streams	1739	2017-05-27 12:40:31.278	date-ar-LY
com.atlassian.confluence.plugins.confluence-create-content-plugin	1740	2017-05-27 12:40:31.278	spaceEditedTemplatesUpgradeTask
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	1741	2017-05-27 12:40:31.278	velocity-1.6-web-panel-renderer-tracker
com.atlassian.confluence.keyboardshortcuts	1742	2017-05-27 12:40:31.278	confluenceKeyboardShortcutsRest-filter
com.atlassian.mywork.mywork-confluence-host-plugin	1743	2017-05-27 12:40:31.278	my-work-rest-filter
com.atlassian.confluence.extra.widgetconnector	1744	2017-05-27 12:40:31.278	web-widget
com.atlassian.confluence.plugins.confluence-page-banner	1745	2017-05-27 12:40:31.278	content-metadata-page-restrictions-hidden
com.atlassian.confluence.plugins.confluence-mobile	1746	2017-05-27 12:40:31.278	mobile-switch-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1747	2017-05-27 12:40:31.278	differ
com.atlassian.streams	1748	2017-05-27 12:40:31.278	entityLinkService
confluence.extractors.core	1749	2017-05-27 12:40:31.278	labelExtractor
confluence.web.resources	1750	2017-05-27 12:40:31.278	view-user-profile
com.atlassian.confluence.plugins.confluence-mobile	1751	2017-05-27 12:40:31.278	dateEntityFactory
com.atlassian.confluence.plugins.confluence-ui-components	1752	2017-05-27 12:40:31.278	common
confluence.extra.confluencerpc	1753	2017-05-27 12:40:31.278	adminSoapService
confluence.extra.layout	1754	2017-05-27 12:40:31.278	column
com.atlassian.streams	1755	2017-05-27 12:40:31.278	date-ar-LB
com.atlassian.confluence.plugins.drag-and-drop	1756	2017-05-27 12:40:31.278	capabilityService
confluence.content.action.menu	1757	2017-05-27 12:40:31.278	primary
com.atlassian.plugins.atlassian-nav-links-plugin	1758	2017-05-27 12:40:31.278	local-navigation-link-service
confluence.web.resources	1759	2017-05-27 12:40:31.278	common-header-resources
com.atlassian.streams	1760	2017-05-27 12:40:31.278	date-ar-KW
confluence.extra.impresence2	1761	2017-05-27 12:40:31.278	sametime-xhtml
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1762	2017-05-27 12:40:31.278	upmInformation
com.atlassian.applinks.applinks-oauth-plugin	1763	2017-05-27 12:40:31.278	oauth-dance
confluence.extra.jira	1764	2017-05-27 12:40:31.278	singleJiraIssuesMapThreadLocalFilter
confluence.web.components	1765	2017-05-27 12:40:31.278	dom-filter-field
com.atlassian.confluence.extra.flyingpdf	1766	2017-05-27 12:40:31.278	configpdflayout
com.atlassian.confluence.editor	1767	2017-05-27 12:40:31.278	unknown-macro-placeholder
confluence.sections.space.admin	1768	2017-05-27 12:40:31.278	editspacelabels
com.atlassian.plugins.atlassian-nav-links-plugin	1769	2017-05-27 12:40:31.278	transactionTempate
com.atlassian.confluence.extra.officeconnector	1770	2017-05-27 12:40:31.278	editinoffice
com.atlassian.analytics.analytics-client	1771	2017-05-27 12:40:31.278	universal-analytics-filter
com.atlassian.confluence.plugins.gadgets	1772	2017-05-27 12:40:31.278	gadgetLabelManager
confluence.aui.staging	1773	2017-05-27 12:40:31.278	storage-manager
com.atlassian.auiplugin	1774	2017-05-27 12:40:31.278	aui-inline-dialog2
com.atlassian.streams	1775	2017-05-27 12:40:31.278	date-hu-HU
com.atlassian.applinks.applinks-cors-plugin	1776	2017-05-27 12:40:31.278	typeAccessor
com.atlassian.mywork.mywork-common-plugin	1777	2017-05-27 12:40:31.278	userManager
com.atlassian.confluence.plugins.confluence-space-ia	1778	2017-05-27 12:40:31.278	collector-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1779	2017-05-27 12:40:31.278	bundledUpdateCheckJob
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1780	2017-05-27 12:40:31.278	pluginSettingsFactory
confluence.web.resources	1781	2017-05-27 12:40:31.278	colors
com.atlassian.confluence.plugins.confluence-browser-metrics	1782	2017-05-27 12:40:31.278	space
com.atlassian.auiplugin	1783	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-trigger
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1784	2017-05-27 12:40:31.278	confluenceUserAccessor
com.atlassian.applinks.applinks-plugin	1785	2017-05-27 12:40:31.278	applinks-authentication-provider
com.atlassian.confluence.plugins.confluence-business-blueprints	1786	2017-05-27 12:40:31.278	sharelinks-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1787	2017-05-27 12:40:31.278	pluginInstallHandlerRegistry
com.atlassian.confluence.restplugin	1788	2017-05-27 12:40:31.278	confluence-rest
confluence.renderer.components	1789	2017-05-27 12:40:31.278	emoticon
com.atlassian.confluence.plugins.confluence-license-rest	1790	2017-05-27 12:40:31.278	license-resource
com.atlassian.confluence.keyboardshortcuts	1791	2017-05-27 12:40:31.278	confluenceKeyboardShortcutsRest
com.atlassian.plugins.base-hipchat-integration-plugin	1792	2017-05-27 12:40:31.278	hipchat-external-page
com.atlassian.auiplugin	1793	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-key-code
com.atlassian.gadgets.oauth.serviceprovider	1794	2017-05-27 12:40:31.278	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-create-content-plugin	1795	2017-05-27 12:40:31.278	httpContext
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1796	2017-05-27 12:40:31.278	userNotificationDefaultsService
com.atlassian.confluence.extra.widgetconnector	1797	2017-05-27 12:40:31.278	tudou
com.atlassian.confluence.plugins.confluence-monitoring-console	1798	2017-05-27 12:40:31.278	stats-resource
com.atlassian.applinks.applinks-oauth-plugin	1799	2017-05-27 12:40:31.278	consumerTokenStoreService
com.atlassian.streams	1800	2017-05-27 12:40:31.278	date-ar-IQ
confluence.listeners.core	1801	2017-05-27 12:40:31.278	user-management-logging-listener
com.atlassian.confluence.plugins.confluence-nav-links	1802	2017-05-27 12:40:31.278	capability-content-link
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	1803	2017-05-27 12:40:31.278	synchrony-plugin-analytics-whitelist
com.atlassian.applinks.applinks-cors-plugin	1804	2017-05-27 12:40:31.278	servletMessageFactory
confluence.web.resources	1805	2017-05-27 12:40:31.278	setup-license
com.atlassian.mywork.mywork-confluence-host-plugin	1806	2017-05-27 12:40:31.278	mw-login-miniview
com.atlassian.confluence.plugins.confluence-edge-index	1807	2017-05-27 12:40:31.278	build-edge-index-servlet
com.atlassian.streams	1808	2017-05-27 12:40:31.278	date-ar-JO
com.atlassian.confluence.ext.newcode-macro-plugin	1809	2017-05-27 12:40:31.278	sh-theme-default
com.atlassian.confluence.plugins.confluence-nav-links	1810	2017-05-27 12:40:31.278	home
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1811	2017-05-27 12:40:31.278	contentEntityManager
com.atlassian.plugins.atlassian-nav-links-plugin	1812	2017-05-27 12:40:31.278	salDarkFeatureService
com.atlassian.confluence.plugins.confluence-create-content-plugin	1813	2017-05-27 12:40:31.278	iconUrlProvider
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1814	2017-05-27 12:40:31.278	roadmap-editor-view-resources
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1815	2017-05-27 12:40:31.278	moduleFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1816	2017-05-27 12:40:31.278	dispatchService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1817	2017-05-27 12:40:31.278	roleBasedPluginDescriptorMetadataCache
com.atlassian.confluence.plugins.share-page	1818	2017-05-27 12:40:31.278	share-dialog-service
com.atlassian.mywork.mywork-confluence-host-plugin	1819	2017-05-27 12:40:31.278	applicationLinkService
com.atlassian.confluence.plugins.confluence-browser-metrics	1820	2017-05-27 12:40:31.278	server-duration
com.atlassian.plugins.confluence-tdm-merger	1821	2017-05-27 12:40:31.278	xmlEventReaderFactory
com.atlassian.streams	1822	2017-05-27 12:40:31.278	date-ar-YE
com.atlassian.streams	1823	2017-05-27 12:40:31.278	inline-activity-stream-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1824	2017-05-27 12:40:31.278	spacePermissionManager
com.atlassian.confluence.plugins.confluence-sortable-tables	1825	2017-05-27 12:40:31.278	sortable-table-resources
com.atlassian.auiplugin	1826	2017-05-27 12:40:31.278	aui-experimental-date-picker
com.atlassian.confluence.editor	1827	2017-05-27 12:40:31.278	editor-css-resources
com.atlassian.labs.atlassian-bot-killer	1828	2017-05-27 12:40:31.278	userManager
com.atlassian.plugins.atlassian-whitelist-core-plugin	1829	2017-05-27 12:40:31.278	whitelistService
com.atlassian.oauth.serviceprovider	1830	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.mywork.mywork-confluence-host-plugin	1831	2017-05-27 12:40:31.278	confluenceCommonHeaderIcon
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1832	2017-05-27 12:40:31.278	hipchat-js-resources
com.atlassian.streams	1833	2017-05-27 12:40:31.278	xml2json
com.atlassian.confluence.plugins.confluence-inline-tasks	1834	2017-05-27 12:40:31.278	inline-tasks-macro-browser
com.atlassian.confluence.keyboardshortcuts	1835	2017-05-27 12:40:31.278	tinymce.file
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1836	2017-05-27 12:40:31.278	instanceHealthCopyEolFileTask
com.atlassian.integration.jira.jira-integration-plugin	1837	2017-05-27 12:40:31.278	jira-issues-dialog
com.atlassian.confluence.plugins.confluence-file-notifications	1838	2017-05-27 12:40:31.278	confluenceAccessManager
com.atlassian.applinks.applinks-oauth-plugin	1839	2017-05-27 12:40:31.278	confluence-inbound-oauth
com.atlassian.applinks.applinks-plugin	1840	2017-05-27 12:40:31.278	webInterfaceManager
com.atlassian.streams.confluence	1841	2017-05-27 12:40:31.278	evictor
com.atlassian.confluence.plugins.confluence-space-ia	1842	2017-05-27 12:40:31.278	header-spaces-link
confluence.search.mappers.lucene	1843	2017-05-27 12:40:31.278	archivedSpacesSearchFilter
com.atlassian.confluence.keyboardshortcuts	1844	2017-05-27 12:40:31.278	tinymce.numlist
com.atlassian.support.stp	1901	2017-05-27 12:40:31.278	stp-license-banner-data-bamboo
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1845	2017-05-27 12:40:31.278	maxAllowedPacketsCheck
com.atlassian.confluence.plugins.confluence-create-content-plugin	1846	2017-05-27 12:40:31.278	webInterfaceManager
com.atlassian.streams	1847	2017-05-27 12:40:31.278	date-nn-NO
com.atlassian.templaterenderer.api	1848	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.confluence.plugins.confluence-like	1849	2017-05-27 12:40:31.278	like-plugin-icons
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1850	2017-05-27 12:40:31.278	comment-created-mail-batch-notification-processor
confluence.extra.jira	1851	2017-05-27 12:40:31.278	refresh-resources
com.atlassian.confluence.extra.officeconnector	1852	2017-05-27 12:40:31.278	htmlslideservlet
com.atlassian.confluence.plugins.confluence-mentions-plugin	1853	2017-05-27 12:40:31.278	mention-email-view-page-link
com.atlassian.confluence.extra.officeconnector	1854	2017-05-27 12:40:31.278	viewppt
com.atlassian.confluence.plugins.confluence-nav-links	1855	2017-05-27 12:40:31.278	sidebar-link-service
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1856	2017-05-27 12:40:31.278	ao
com.atlassian.confluence.plugins.confluence-space-ia	1857	2017-05-27 12:40:31.278	avatar-picker
com.atlassian.confluence.plugins.confluence-like	1858	2017-05-27 12:40:31.278	manage-notifications-email-footer-item
com.atlassian.plugins.authentication.atlassian-authentication-plugin	1859	2017-05-27 12:40:31.278	save-fragment
com.atlassian.confluence.plugins.confluence-space-ia	1860	2017-05-27 12:40:31.278	main-links
com.atlassian.confluence.plugins.confluence-mentions-plugin	1861	2017-05-27 12:40:31.278	new-content-mention-payload-transformer
confluence.lifecycle.core	1862	2017-05-27 12:40:31.278	sysinfodump
confluence.search.mappers.lucene	1863	2017-05-27 12:40:31.278	filename
com.atlassian.confluence.plugins.confluence-inline-comments	1864	2017-05-27 12:40:31.278	inline-notification-resolved
com.atlassian.webhooks.atlassian-webhooks-plugin	1865	2017-05-27 12:40:31.278	webhooksRest-filter
confluence.web.resources	1866	2017-05-27 12:40:31.278	macro-browser-sprites
confluence.editor.actions	1867	2017-05-27 12:40:31.278	insert
com.atlassian.analytics.analytics-client	1868	2017-05-27 12:40:31.278	analytics-rest
confluence.sections.attachments	1869	2017-05-27 12:40:31.278	remove-version
tac.confluence.languages.de_DE	1870	2017-05-27 12:40:31.278	de_DE
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1871	2017-05-27 12:40:31.278	defaultNotificationUserService
com.atlassian.confluence.plugins.confluence-onboarding	1872	2017-05-27 12:40:31.278	onboardingSpaceCheckJob
confluence.admin.user	1873	2017-05-27 12:40:31.278	entitypicker
com.atlassian.auiplugin	1874	2017-05-27 12:40:31.278	internal-aui-browser
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1875	2017-05-27 12:40:31.278	blogpost-moved-notification
com.atlassian.confluence.plugins.confluence-dashboard	1876	2017-05-27 12:40:31.278	onboardingService
com.atlassian.mywork.mywork-confluence-provider-plugin	1877	2017-05-27 12:40:31.278	confluenceActionService
confluence.renderer.components	1878	2017-05-27 12:40:31.278	emphases
com.atlassian.oauth.serviceprovider.sal	1879	2017-05-27 12:40:31.278	clock
com.atlassian.streams	1880	2017-05-27 12:40:31.278	date-zh-CN
confluence.web.resources	1881	2017-05-27 12:40:31.278	search-results-grid
com.atlassian.confluence.keyboardshortcuts	1882	2017-05-27 12:40:31.278	keyboardshortcut-flag
com.atlassian.confluence.plugins.confluence-space-blueprints	1883	2017-05-27 12:40:31.278	team-space-email-resources
confluence.user.menu	1884	2017-05-27 12:40:31.278	signup
com.atlassian.streams.confluence	1885	2017-05-27 12:40:31.278	commentManager
confluence.macros.dashboard	1886	2017-05-27 12:40:31.278	welcome-message
com.atlassian.confluence.plugins.confluence-email-resources	1887	2017-05-27 12:40:31.278	templates-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	1888	2017-05-27 12:40:31.278	spaceBlueprintService
com.atlassian.confluence.plugins.recently-viewed-plugin	1889	2017-05-27 12:40:31.278	ao
com.atlassian.plugins.editor	1890	2017-05-27 12:40:31.278	atlassian-rte-javascript
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1891	2017-05-27 12:40:31.278	hipchat-soy-resources
com.atlassian.streams.streams-thirdparty-plugin	1892	2017-05-27 12:40:31.278	thirdparty-web-resources
com.atlassian.auiplugin	1893	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-is-input
com.atlassian.confluence.plugins.confluence-space-ia	1894	2017-05-27 12:40:31.278	header-spaces-create-space
confluence.sections.search.view	1895	2017-05-27 12:40:31.278	search
com.atlassian.mywork.mywork-confluence-host-plugin	1896	2017-05-27 12:40:31.278	actionServiceSelector
com.atlassian.analytics.analytics-client	1897	2017-05-27 12:40:31.278	eventReporter
com.atlassian.confluence.plugins.confluence-business-blueprints	1898	2017-05-27 12:40:31.278	sharelinksbookmarklet-resources
com.atlassian.confluence.plugins.gadgets	1899	2017-05-27 12:40:31.278	localeManager
com.atlassian.confluence.plugins.confluence-roadmap-plugin	1902	2017-05-27 12:40:31.278	roadmap-view-resources
com.atlassian.soy.soy-template-plugin	1903	2017-05-27 12:40:31.278	soy-deps
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	1904	2017-05-27 12:40:31.278	batchMessage-soy-function
com.atlassian.auiplugin	1905	2017-05-27 12:40:31.278	aui-experimental-progress-tracker
com.atlassian.plugins.atlassian-whitelist-core-plugin	1906	2017-05-27 12:40:31.278	outboundWhitelist
com.atlassian.confluence.plugins.view-source	1907	2017-05-27 12:40:31.278	confluenceViewSourceWhitelist
com.atlassian.confluence.extra.widgetconnector	1908	2017-05-27 12:40:31.278	widget-xhtml
com.atlassian.confluence.plugins.confluence-create-content-plugin	1909	2017-05-27 12:40:31.278	default-index-template
com.atlassian.confluence.plugins.search.confluence-search	1910	2017-05-27 12:40:31.278	excludedContentTypeSearchFilter
com.atlassian.confluence.editor	1911	2017-05-27 12:40:31.278	table-resizable-editor-content-styles
com.atlassian.confluence.plugins.confluence-browser-metrics	1912	2017-05-27 12:40:31.278	browser-metrics-reporters
com.atlassian.confluence.plugins.confluence-user-rest	1913	2017-05-27 12:40:31.278	permissionManager
confluence.listeners.core	1914	2017-05-27 12:40:31.278	autogroupadderlistener
com.atlassian.confluence.plugins.confluence-spaces	1915	2017-05-27 12:40:31.278	actions
com.atlassian.plugins.atlassian-whitelist-core-plugin	1916	2017-05-27 12:40:31.278	whitelistOnOffSwitch
com.atlassian.support.stp	1917	2017-05-27 12:40:31.278	applicationPropertiesContextItem
com.atlassian.plugins.atlassian-nav-links-plugin	1918	2017-05-27 12:40:31.278	template-renderer
confluence.sections.space.tools	1919	2017-05-27 12:40:31.278	export-format-xml
com.atlassian.confluence.plugins.confluence-software-project	1920	2017-05-27 12:40:31.278	sp-space-blueprint-item
com.atlassian.plugins.atlassian-plugins-webresource-rest	1921	2017-05-27 12:40:31.278	curl
com.atlassian.applinks.applinks-plugin	1922	2017-05-27 12:40:31.278	get-documentation-base-url-soy-function
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1923	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.streams.confluence	1924	2017-05-27 12:40:31.278	date-eu-ES
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	1925	2017-05-27 12:40:31.278	prettyurls-dispatcher-filter-before-dispatch
com.atlassian.confluence.plugins.confluence-user-profile	1926	2017-05-27 12:40:31.278	editmyprofilepicture
com.atlassian.streams.streams-thirdparty-plugin	1927	2017-05-27 12:40:31.278	userProfileAccessor
confluence.lifecycle.core	1928	2017-05-27 12:40:31.278	pluginframeworkdependentupgrades
com.atlassian.confluence.plugins.share-page	1929	2017-05-27 12:40:31.278	share-attachment-notification-transformer
com.atlassian.streams	1930	2017-05-27 12:40:31.278	feedRendererContext
confluence.sections.settings.edit	1931	2017-05-27 12:40:31.278	editemailpreferences
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1932	2017-05-27 12:40:31.278	upm-update-check-resources
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1933	2017-05-27 12:40:31.278	keyboard-shortcut
com.atlassian.mywork.mywork-confluence-host-plugin	1934	2017-05-27 12:40:31.278	mwLeftMenuPanel
confluence.listeners.core	1935	2017-05-27 12:40:31.278	confluenceCrowdUserEventAdaptorListener
confluence.aui.staging	1936	2017-05-27 12:40:31.278	dark-features
com.atlassian.streams	1937	2017-05-27 12:40:31.278	date-ar-TN
com.atlassian.support.healthcheck.support-healthcheck-plugin	1938	2017-05-27 12:40:31.278	supportHealthStatusProperties
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1939	2017-05-27 12:40:31.278	confluenceApplicationDescriptor
com.atlassian.applinks.applinks-plugin	1940	2017-05-27 12:40:31.278	lodash-amd
com.atlassian.confluence.plugins.confluence-fixed-headers	1941	2017-05-27 12:40:31.278	confFixedHeadersAnalyticsWhitelist
com.atlassian.querylang.confluence-cql-plugin	1942	2017-05-27 12:40:31.278	end-of-day-one-arg-function
com.atlassian.confluence.plugins.confluence-business-blueprints	1943	2017-05-27 12:40:31.278	decisions-page
com.atlassian.querylang.confluence-cql-plugin	1944	2017-05-27 12:40:31.278	end-of-week-zero-arg-function
com.atlassian.confluence.plugins.confluence-ui-rest	1945	2017-05-27 12:40:31.278	ui-rest-filter
com.atlassian.streams	1946	2017-05-27 12:40:31.278	date-ar-SA
com.atlassian.confluence.extra.widgetconnector	1947	2017-05-27 12:40:31.278	scribd
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1948	2017-05-27 12:40:31.278	simple-json-serialize-function
com.atlassian.streams	1949	2017-05-27 12:40:31.278	date-ar-SY
com.atlassian.confluence.plugins.whatsnew	1950	2017-05-27 12:40:31.278	whats-new-item-help-menu
com.atlassian.streams.core	1951	2017-05-27 12:40:31.278	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	1952	2017-05-27 12:40:31.278	sqlModeCheck
com.atlassian.confluence.plugins.confluence-mentions-plugin	1953	2017-05-27 12:40:31.278	email-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1954	2017-05-27 12:40:31.278	upmPluginAccessor
com.atlassian.confluence.plugins.confluence-inline-tasks	1955	2017-05-27 12:40:31.278	my-tasks-menu-item
com.atlassian.streams	1956	2017-05-27 12:40:31.278	appLinksUriSupplier
com.atlassian.confluence.plugins.confluence-image-attributes	1957	2017-05-27 12:40:31.278	image-attributes
com.atlassian.plugin.notifications.notifications-module	1958	2017-05-27 12:40:31.278	applicationPropertiesContextItem
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	1959	2017-05-27 12:40:31.278	tabVisibility
confluence.macros.profile	1960	2017-05-27 12:40:31.278	profile-macro-styles
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	1961	2017-05-27 12:40:31.278	httpContext
confluence.admin.user	1962	2017-05-27 12:40:31.278	browse-users-tab-signup
com.atlassian.confluence.plugins.confluence-mobile	1963	2017-05-27 12:40:31.278	macroManagerFactory
com.atlassian.confluence.plugins.confluence-lookandfeel	1964	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.mywork.mywork-common-plugin	1965	2017-05-27 12:40:31.278	notification-service
confluence.sections.create	1966	2017-05-27 12:40:31.278	add-page-without-parent
com.atlassian.support.stp	1967	2017-05-27 12:40:31.278	confluence-application-info
com.atlassian.oauth.serviceprovider	1968	2017-05-27 12:40:31.278	userManager
com.atlassian.confluence.plugins.confluence-monitoring-console	1969	2017-05-27 12:40:31.278	userManager
com.atlassian.confluence.plugins.gadgets	1970	2017-05-27 12:40:31.278	gadget-render-resources
confluence.search.mappers.lucene	1971	2017-05-27 12:40:31.278	fileExtension
com.atlassian.analytics.analytics-client	1972	2017-05-27 12:40:31.278	eventSerializer
com.atlassian.confluence.plugins.confluence-software-project	1973	2017-05-27 12:40:31.278	sp-space-blueprint
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	1974	2017-05-27 12:40:31.278	httpRequestWrapper
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	1975	2017-05-27 12:40:31.278	userManager
confluence.search.lucene.initialisation	1976	2017-05-27 12:40:31.278	boostByModificationDateStrategySearcherInitialisation
com.atlassian.auiplugin	1977	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-polyfills-console
confluence.sections.space.advanced	1978	2017-05-27 12:40:31.278	exporthtml
com.atlassian.confluence.plugins.confluence-software-blueprints	1979	2017-05-27 12:40:31.278	requirements-index
confluence.extra.impresence2	1980	2017-05-27 12:40:31.278	localeSupport
com.atlassian.streams.confluence	1981	2017-05-27 12:40:31.278	date-sq-AL
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1982	2017-05-27 12:40:31.278	page-created-notification-template-body
com.atlassian.support.stp	1983	2017-05-27 12:40:31.278	schedulerCleanUpTask
com.atlassian.confluence.plugins.synchrony-interop	1984	2017-05-27 12:40:31.278	synchrony-status-banner-resources
com.atlassian.streams.confluence	1985	2017-05-27 12:40:31.278	date-mr-IN
com.atlassian.crowd.embedded.admin	1986	2017-05-27 12:40:31.278	default-groups
com.atlassian.streams	1987	2017-05-27 12:40:31.278	date-zh-HK
com.atlassian.confluence.plugins.editor-loader	1988	2017-05-27 12:40:31.278	background-loading-editor
com.atlassian.confluence.keyboardshortcuts	1989	2017-05-27 12:40:31.278	confluence-keyboard-shortcuts
confluence.sections.profile	1990	2017-05-27 12:40:31.278	primary
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	1991	2017-05-27 12:40:31.278	hipchat2-space-configuration
com.atlassian.confluence.plugins.confluence-email-resources	1992	2017-05-27 12:40:31.278	notification-templates-follower-added-1.0.0
com.atlassian.templaterenderer.api	1993	2017-05-27 12:40:31.278	pluginEventManager
com.atlassian.plugins.rest.atlassian-rest-module	1994	2017-05-27 12:40:31.278	restRequestFactory
com.atlassian.confluence.plugins.confluence-dashboard	1995	2017-05-27 12:40:31.278	buttons-web-items
confluence.sections.profile	1996	2017-05-27 12:40:31.278	profile-administer-user
com.atlassian.confluence.ext.newcode-macro-plugin	1997	2017-05-27 12:40:31.278	editor-scripts
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	1998	2017-05-27 12:40:31.278	darkFeatureManager
com.atlassian.streams.confluence	1999	2017-05-27 12:40:31.278	date-kn-IN
com.atlassian.confluence.plugins.confluence-browser-metrics	2000	2017-05-27 12:40:31.278	viewcontent
com.atlassian.confluence.plugins.confluence-lookandfeel	2001	2017-05-27 12:40:31.278	xsrfTokenGenerator
com.atlassian.plugins.atlassian-nav-links-plugin	2002	2017-05-27 12:40:31.278	userManager
com.atlassian.plugin.notifications.notifications-module	2003	2017-05-27 12:40:31.278	userProfileMappingResolver
com.atlassian.confluence.plugins.confluence-edge-index	2004	2017-05-27 12:40:31.278	networkService
confluence.sections.settings.edit	2005	2017-05-27 12:40:31.278	editeditorpreferences
com.atlassian.plugins.atlassian-nav-links-plugin	2006	2017-05-27 12:40:31.278	applinks-change-listener
com.atlassian.confluence.plugins.confluence-email-resources	2007	2017-05-27 12:40:31.278	stop-following-user-email-adg-footer-item
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	2008	2017-05-27 12:40:31.278	blogger-xmlrpc
com.atlassian.streams.confluence	2009	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.confluence.editor	2283	2017-05-27 12:40:31.278	editor-captcha
com.atlassian.instrumentation.atlassian-instrumentation-expose-jmx	2010	2017-05-27 12:40:31.278	jmxInstrumentExposer
com.atlassian.streams.confluence	2011	2017-05-27 12:40:31.278	xmlEventReaderFactory
com.atlassian.confluence.plugins.confluence-email-resources	2012	2017-05-27 12:40:31.278	notification-templates-blogpost-add-1.0.0
com.atlassian.crowd.embedded.admin	2013	2017-05-27 12:40:31.278	UpdateDirectoriesConfigurationWithExternalI
com.atlassian.confluence.extra.widgetconnector	2014	2017-05-27 12:40:31.278	sliderocket
confluence.search.mappers.lucene	2015	2017-05-27 12:40:31.278	labelsSearchFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	2016	2017-05-27 12:40:31.278	inline-task-mail-resources
com.atlassian.auiplugin	2017	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-lifecycle
com.atlassian.confluence.plugins.confluence-email-resources	2018	2017-05-27 12:40:31.278	notification-templates-blog-remove-1.0.0
confluence.search.contentname	2019	2017-05-27 12:40:31.278	default-contentname-search-provider
com.atlassian.confluence.plugins.confluence-create-content-plugin	2020	2017-05-27 12:40:31.278	createButtonService
com.atlassian.confluence.plugins.confluence-email-resources	2021	2017-05-27 12:40:31.278	content-templates-status-update-pattern-2.0.0
com.atlassian.streams.confluence	2022	2017-05-27 12:40:31.278	date-syr-SY
com.atlassian.auiplugin	2023	2017-05-27 12:40:31.278	aui-experimental-page-layout-typography
confluence.macros.advanced	2024	2017-05-27 12:40:31.278	blogpost-mobile-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2025	2017-05-27 12:40:31.278	confluence-webpanel-data-resources
com.atlassian.auiplugin	2026	2017-05-27 12:40:31.278	hotkeys
com.atlassian.streams.confluence	2027	2017-05-27 12:40:31.278	date-ky-KG
com.atlassian.applinks.applinks-trustedapps-plugin	2028	2017-05-27 12:40:31.278	trustedAppsAuthenticationProviderPluginModule
com.atlassian.confluence.plugins.confluence-schedule-admin	2029	2017-05-27 12:40:31.278	view-scheduled-jobs
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2030	2017-05-27 12:40:31.278	notificationStoreService
com.atlassian.plugins.base-hipchat-integration-plugin	2031	2017-05-27 12:40:31.278	hipchat-webpanel
com.atlassian.confluence.plugins.watch-button	2032	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.plugins.confluence-software-project	2033	2017-05-27 12:40:31.278	SoftwareProjectSpaceHomePageEventListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	2034	2017-05-27 12:40:31.278	header-create-link
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2035	2017-05-27 12:40:31.278	whitelistRuleComparator
com.atlassian.integration.jira.jira-integration-plugin	2036	2017-05-27 12:40:31.278	jiraKeyScanner
com.atlassian.confluence.plugins.confluence-content-property-storage	2037	2017-05-27 12:40:31.278	contentPropertyValidator
confluence.sections.profile	2038	2017-05-27 12:40:31.278	stop-favourite-user-personal-space
com.atlassian.confluence.plugins.confluence-email-resources	2039	2017-05-27 12:40:31.278	content-templates-simple-data-table-pattern-1.0.0
com.atlassian.streams	2040	2017-05-27 12:40:31.278	templateRendererFactory
com.atlassian.streams	2041	2017-05-27 12:40:31.278	streamsActivityServlet
confluence.search.mappers.lucene	2042	2017-05-27 12:40:31.278	label
com.atlassian.confluence.plugins.templates-framework	2043	2017-05-27 12:40:31.278	templates_css
com.atlassian.applinks.applinks-plugin	2044	2017-05-27 12:40:31.278	crowd
com.atlassian.analytics.analytics-client	2045	2017-05-27 12:40:31.278	productUUIDProvider
com.atlassian.auiplugin	2046	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-jquery-jquery-os
com.atlassian.streams.core	2047	2017-05-27 12:40:31.278	templateRenderer
confluence.macros.advanced	2048	2017-05-27 12:40:31.278	advancedMacrosExcerpter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2049	2017-05-27 12:40:31.278	instanceTopologyJob
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2050	2017-05-27 12:40:31.278	blogpost-edited-notification-template
com.atlassian.confluence.plugins.confluence-daily-summary-email	2051	2017-05-27 12:40:31.278	title-metadata
com.atlassian.confluence.plugins.search.confluence-search	2052	2017-05-27 12:40:31.278	searchResultBuilderFactory
com.atlassian.auiplugin	2053	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-binder
com.atlassian.streams.confluence	2054	2017-05-27 12:40:31.278	spaceKeys
confluence.sections.admin	2055	2017-05-27 12:40:31.278	layouts
com.atlassian.gadgets.opensocial	2056	2017-05-27 12:40:31.278	gadget-removed-error-page-resources
com.atlassian.confluence.plugins.confluence-user-rest	2057	2017-05-27 12:40:31.278	groupEntityBuilder
com.atlassian.confluence.plugins.confluence-content-property-storage	2058	2017-05-27 12:40:31.278	contentPropertyExtractionManager
com.atlassian.confluence.plugins.confluence-space-blueprints	2059	2017-05-27 12:40:31.278	sidebarService
com.atlassian.confluence.plugins.confluence-nav-links	2060	2017-05-27 12:40:31.278	confluenceWeights
com.atlassian.mywork.mywork-common-plugin	2061	2017-05-27 12:40:31.278	myworkserviceselector
confluence.sections.space.admin	2062	2017-05-27 12:40:31.278	spaceops
com.atlassian.mywork.mywork-common-plugin	2063	2017-05-27 12:40:31.278	reliable-rest-service
com.atlassian.applinks.applinks-cors-plugin	2064	2017-05-27 12:40:31.278	corsUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2065	2017-05-27 12:40:31.278	propertiesManager
com.atlassian.applinks.applinks-trustedapps-plugin	2066	2017-05-27 12:40:31.278	applicationLinkService
com.atlassian.oauth.serviceprovider	2067	2017-05-27 12:40:31.278	requestFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2068	2017-05-27 12:40:31.278	dac-landing-page-servlet
com.atlassian.confluence.plugins.confluence-sal-plugin	2069	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.plugins.base-hipchat-integration-plugin	2070	2017-05-27 12:40:31.278	hipchat-global
com.atlassian.auiplugin	2071	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-tables-sortable
com.atlassian.oauth.serviceprovider	2072	2017-05-27 12:40:31.278	converter
confluence.sections.create	2073	2017-05-27 12:40:31.278	add-blogpost
com.atlassian.confluence.plugins.gadgets	2074	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.keyboardshortcuts	2075	2017-05-27 12:40:31.278	return.to.edit.page
com.atlassian.labs.lucene-compat-plugin	2076	2017-05-27 12:40:31.278	extractor
confluence.macros.basic	2077	2017-05-27 12:40:31.278	panel-xhtml
com.atlassian.confluence.plugins.confluence-onboarding	2078	2017-05-27 12:40:31.278	no-spaces-notification-transformer
com.atlassian.confluence.plugins.confluence-nav-links	2079	2017-05-27 12:40:31.278	profile
com.atlassian.streams.confluence	2080	2017-05-27 12:40:31.278	attachmentRendererFactory
com.atlassian.plugins.atlassian-nav-links-plugin	2081	2017-05-27 12:40:31.278	content-link
com.atlassian.plugins.atlassian-nav-links-plugin	2082	2017-05-27 12:40:31.278	projects-service
com.atlassian.streams	2083	2017-05-27 12:40:31.278	date-el-GR
com.atlassian.oauth.consumer	2084	2017-05-27 12:40:31.278	consumerInfoServlet
com.atlassian.confluence.plugins.confluence-email-resources	2085	2017-05-27 12:40:31.278	use-custom-site-logo-function
com.atlassian.confluence.plugins.confluence-inline-comments	2086	2017-05-27 12:40:31.278	inlinecomment-findAllResolvedComment
confluence.listeners.core	2087	2017-05-27 12:40:31.278	resetHiloAfterImportListener
com.atlassian.confluence.plugins.confluence-previews	2088	2017-05-27 12:40:31.278	share-plugin
com.atlassian.confluence.keyboardshortcuts	2089	2017-05-27 12:40:31.278	tinymce.pre
com.atlassian.gadgets.publisher	2090	2017-05-27 12:40:31.278	ajs-gadgets-debug
com.atlassian.plugins.atlassian-nps-plugin	2091	2017-05-27 12:40:31.278	nps-specific-resources-async
com.atlassian.webhooks.atlassian-webhooks-plugin	2092	2017-05-27 12:40:31.278	webhooksRest
com.atlassian.streams	2093	2017-05-27 12:40:31.278	pluginEventManager
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2094	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.auiplugin	2095	2017-05-27 12:40:31.278	aui-deprecation
com.atlassian.confluence.plugins.quickreload	2096	2017-05-27 12:40:31.278	quick-reload-resources
com.atlassian.confluence.plugins.confluence-paste	2097	2017-05-27 12:40:31.278	autoconvert-confluence
com.atlassian.confluence.plugins.search.confluence-search	2098	2017-05-27 12:40:31.278	moduleDescriptorCacheFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2099	2017-05-27 12:40:31.278	blogpost-moved-notification-transformer
com.atlassian.confluence.plugins.confluence-knowledge-base	2100	2017-05-27 12:40:31.278	rest
confluence.search.mappers.lucene	2101	2017-05-27 12:40:31.278	deactivatedUserSearchFilter
com.atlassian.applinks.applinks-plugin	2102	2017-05-27 12:40:31.278	applinksRestV3-filter
confluence.extra.dynamictasklist2	2103	2017-05-27 12:40:31.278	v2-dynamictasklist2
com.atlassian.analytics.analytics-client	2104	2017-05-27 12:40:31.278	analyticsLogger
com.atlassian.plugins.atlassian-nav-links-plugin	2105	2017-05-27 12:40:31.278	web-interface-manager
com.atlassian.plugins.atlassian-nav-links-plugin	2106	2017-05-27 12:40:31.278	navigation-link
com.atlassian.streams	2107	2017-05-27 12:40:31.278	feedAggregator
com.atlassian.mywork.mywork-confluence-host-plugin	2108	2017-05-27 12:40:31.278	registration-dao
com.atlassian.confluence.extra.officeconnector	2109	2017-05-27 12:40:31.278	viewpdf
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2110	2017-05-27 12:40:31.278	admin.cluster-monitoring
confluence.extra.confluencerpc	2111	2017-05-27 12:40:31.278	xhtmlSoapServiceTarget
com.atlassian.confluence.plugins.confluence-lookandfeel	2112	2017-05-27 12:40:31.278	transactionTemplate
confluence.search.mappers.lucene	2113	2017-05-27 12:40:31.278	phrase
com.atlassian.confluence.plugins.confluence-create-content-plugin	2114	2017-05-27 12:40:31.278	blueprint-first-time-tooltip-resources
com.atlassian.applinks.applinks-plugin	2115	2017-05-27 12:40:31.278	projectManager
com.atlassian.streams.confluence	2116	2017-05-27 12:40:31.278	contentEntityItemFactory
com.atlassian.confluence.plugins.gadgets	2117	2017-05-27 12:40:31.278	analytics-whitelist
confluence.comment.action	2284	2017-05-27 12:40:31.278	remove-comment
com.atlassian.plugins.atlassian-nav-links-plugin	2118	2017-05-27 12:40:31.278	menu-rest
com.atlassian.confluence.plugins.confluence-email-resources	2119	2017-05-27 12:40:31.278	content-templates-content-excerpt-pattern-1.0.0
confluence.macros.advanced	2120	2017-05-27 12:40:31.278	news
com.atlassian.confluence.plugins.confluence-software-blueprints	2121	2017-05-27 12:40:31.278	jirareports-index
com.atlassian.confluence.extra.flyingpdf	2122	2017-05-27 12:40:31.278	flyingPdfDocumentConverter
confluence.macros.advanced	2123	2017-05-27 12:40:31.278	recently-used-labels
com.atlassian.oauth.consumer.sal	2124	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.applinks.applinks-plugin	2125	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-sortable-tables	2126	2017-05-27 12:40:31.278	sortable-table-loader
com.atlassian.confluence.plugins.gadgets	2127	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2128	2017-05-27 12:40:31.278	asynchronousTaskManager
com.atlassian.applinks.applinks-plugin	2129	2017-05-27 12:40:31.278	manifestRetrieverContextItem
com.atlassian.auiplugin	2130	2017-05-27 12:40:31.278	darkFeatureManager
com.atlassian.streams	2131	2017-05-27 12:40:31.278	date-hr-BA
com.atlassian.streams.confluence	2132	2017-05-27 12:40:31.278	date-ja-JP
com.atlassian.auiplugin	2133	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-dialog2
com.atlassian.streams	2134	2017-05-27 12:40:31.278	date-mi-NZ
com.atlassian.confluence.plugins.confluence-business-blueprints	2135	2017-05-27 12:40:31.278	sharelinks-blueprint
com.atlassian.confluence.plugins.synchrony-interop	2136	2017-05-27 12:40:31.278	confluence-synchrony-interop-rest-api
com.atlassian.streams	2137	2017-05-27 12:40:31.278	date-mt-MT
com.atlassian.applinks.applinks-oauth-plugin	2138	2017-05-27 12:40:31.278	redirectController
confluence.extra.jira	2139	2017-05-27 12:40:31.278	servers
com.atlassian.confluence.plugins.confluence-sal-plugin	2140	2017-05-27 12:40:31.278	applicationProperties
confluence.extra.livesearch	2141	2017-05-27 12:40:31.278	livesearch-xhtml
com.atlassian.confluence.plugins.drag-and-drop	2142	2017-05-27 12:40:31.278	drag-and-drop-overlay
com.atlassian.auiplugin	2143	2017-05-27 12:40:31.278	aui-banner
confluence.user.menu	2144	2017-05-27 12:40:31.278	user-history
com.atlassian.confluence.plugins.confluence-software-blueprints	2145	2017-05-27 12:40:31.278	jirareports-changelog-static
com.atlassian.streams.confluence	2146	2017-05-27 12:40:31.278	userProfileAccessor
com.atlassian.applinks.applinks-plugin	2147	2017-05-27 12:40:31.278	applinks-entity-type
confluence.web.resources	2148	2017-05-27 12:40:31.278	draft-changes
com.atlassian.confluence.plugins.confluence-file-notifications	2149	2017-05-27 12:40:31.278	file-content-payload-transformer
com.atlassian.plugins.atlassian-nav-links-plugin	2150	2017-05-27 12:40:31.278	project-shortcut
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2151	2017-05-27 12:40:31.278	whitelist-web-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	2152	2017-05-27 12:40:31.278	highlightOptionPanelConfigService
com.atlassian.applinks.applinks-oauth-plugin	2153	2017-05-27 12:40:31.278	add-consumer-redirect
confluence.web.resources	2154	2017-05-27 12:40:31.278	jquery-autocomplete
confluence.extra.confluencerpc	2155	2017-05-27 12:40:31.278	soapServiceHelper
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2156	2017-05-27 12:40:31.278	transactionTemplate
confluence.macros.basic	2157	2017-05-27 12:40:31.278	noformat-xhtml
com.atlassian.plugins.tinymce	2158	2017-05-27 12:40:31.278	atlassian-rte-javascript-tinymce-extensions
com.atlassian.confluence.plugins.confluence-onboarding	2159	2017-05-27 12:40:31.278	confluenceOnboardingPluginAnalyticsWhitelist
com.atlassian.applinks.applinks-plugin	2160	2017-05-27 12:40:31.278	feature-v3-onboarding
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2161	2017-05-27 12:40:31.278	rest-filter
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2162	2017-05-27 12:40:31.278	prettyurls-matcher-filter-before-dispatch
com.atlassian.confluence.plugins.confluence-email-resources	2163	2017-05-27 12:40:31.278	stop-watching-space-blogs-email-footer-item
com.atlassian.mywork.mywork-confluence-provider-plugin	2164	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.confluence.plugins.reliablesave	2165	2017-05-27 12:40:31.278	confluenceReliableSaveWhitelist
com.atlassian.streams	2166	2017-05-27 12:40:31.278	date-sr-Cyrl-CS
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2167	2017-05-27 12:40:31.278	confluenceNotificationRenderer
com.atlassian.confluence.plugins.confluence-email-resources	2168	2017-05-27 12:40:31.278	reply-to-comment-email-batch-item
com.atlassian.mywork.mywork-common-plugin	2169	2017-05-27 12:40:31.278	mywork-action-service
com.atlassian.streams	2170	2017-05-27 12:40:31.278	appLinksWhitelist
confluence.macros.advanced	2171	2017-05-27 12:40:31.278	include
com.atlassian.streams.confluence	2172	2017-05-27 12:40:31.278	thumbnailManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2173	2017-05-27 12:40:31.278	fancy-select
com.atlassian.integration.jira.jira-integration-plugin	2174	2017-05-27 12:40:31.278	jira-resource
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2175	2017-05-27 12:40:31.278	roadmap-analytics-whitelist
com.atlassian.confluence.plugins.confluence-jira-content	2176	2017-05-27 12:40:31.278	issues-created-panel
confluence.web.resources	2177	2017-05-27 12:40:31.278	general-analytics-bindings
org.randombits.confluence.toc	2178	2017-05-27 12:40:31.278	server-soy-templates
com.atlassian.confluence.plugins.confluence-inline-comments	2179	2017-05-27 12:40:31.278	common-resource
com.atlassian.confluence.contributors	2180	2017-05-27 12:40:31.278	PageDetailsHelper
com.atlassian.auiplugin	2181	2017-05-27 12:40:31.278	ajs-contextpath
com.atlassian.streams.streams-thirdparty-plugin	2182	2017-05-27 12:40:31.278	ao
confluence.sections.space.tools	2183	2017-05-27 12:40:31.278	stop-watching-space
com.atlassian.plugins.base-hipchat-integration-plugin	2184	2017-05-27 12:40:31.278	view-oauth-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2185	2017-05-27 12:40:31.278	comment-edited-hipchat-notification-template
com.atlassian.applinks.applinks-cors-plugin	2186	2017-05-27 12:40:31.278	documentationLinker
com.atlassian.healthcheck.atlassian-healthcheck	2187	2017-05-27 12:40:31.278	healthCheckRest
confluence.extractors.core	2188	2017-05-27 12:40:31.278	lastModifierNameChangeExtractor
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	2189	2017-05-27 12:40:31.278	leadershipmonitor-template
com.atlassian.plugins.base-hipchat-integration-plugin	2190	2017-05-27 12:40:31.278	rest-ping-filter
com.atlassian.applinks.applinks-plugin	2191	2017-05-27 12:40:31.278	confluence-inbound-two-legged-oauth
com.atlassian.confluence.plugins.confluence-email-resources	2192	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.soy.soy-template-plugin	2193	2017-05-27 12:40:31.278	toStringFunction
confluence.renderer.components	2194	2017-05-27 12:40:31.278	macro
confluence.search.mappers.lucene	2195	2017-05-27 12:40:31.278	queryString
com.atlassian.streams	2196	2017-05-27 12:40:31.278	date-sr-Cyrl-BA
com.atlassian.auiplugin	2197	2017-05-27 12:40:31.278	aui-expander
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2198	2017-05-27 12:40:31.278	pluginManualUpdateNotificationService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2199	2017-05-27 12:40:31.278	confluenceSpaceToRoomNotificationsAnalyticsWhitelist
confluence.web.resources	2200	2017-05-27 12:40:31.278	module-exporter
confluence.search.mappers.lucene	2201	2017-05-27 12:40:31.278	termRange
com.atlassian.streams.streams-thirdparty-plugin	2202	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.plugins.atlassian-whitelist-core-plugin	2203	2017-05-27 12:40:31.278	confluenceGadgetWhitelistMigration
com.atlassian.confluence.plugins.confluence-email-resources	2204	2017-05-27 12:40:31.278	template-utils-user-avatar-name-table-2.0.0
confluence.sections.attachments	2205	2017-05-27 12:40:31.278	edit
com.atlassian.auiplugin	2206	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-index-of
com.atlassian.confluence.plugins.confluence-inline-tasks	2207	2017-05-27 12:40:31.278	custom-task-report-template
com.atlassian.confluence.plugins.confluence-inline-comments	2208	2017-05-27 12:40:31.278	view-inline-comment-batch-email-action
com.atlassian.analytics.analytics-client	2209	2017-05-27 12:40:31.278	confluenceClusterInformationProvider
com.atlassian.support.stp	2210	2017-05-27 12:40:31.278	resources
com.atlassian.confluence.keyboardshortcuts	2211	2017-05-27 12:40:31.278	create.page
com.atlassian.streams.confluence	2212	2017-05-27 12:40:31.278	date-fo-FO
com.atlassian.mywork.mywork-confluence-host-plugin	2213	2017-05-27 12:40:31.278	mw-header-anchor-css
confluence.macros.advanced	2214	2017-05-27 12:40:31.278	gallery
com.atlassian.plugins.atlassian-nps-plugin	2215	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-previews	2216	2017-05-27 12:40:31.278	fallback-mode
com.atlassian.querylang.confluence-cql-plugin	2217	2017-05-27 12:40:31.278	rest-cql-metadata
com.atlassian.confluence.plugins.confluence-content-property-storage	2218	2017-05-27 12:40:31.278	hostContextAccessor
com.atlassian.plugins.atlassian-nav-links-plugin	2219	2017-05-27 12:40:31.278	capabilities-consumer-admin-rest
com.atlassian.confluence.keyboardshortcuts	2220	2017-05-27 12:40:31.278	goto.dashboard
com.atlassian.mywork.mywork-confluence-host-plugin	2221	2017-05-27 12:40:31.278	client-service
confluence.sections.space.admin	2222	2017-05-27 12:40:31.278	security
com.atlassian.plugins.base-hipchat-integration-plugin	2223	2017-05-27 12:40:31.278	hipchat-command
com.atlassian.confluence.plugins.gadgets	2224	2017-05-27 12:40:31.278	themeManager
confluence.extra.jira	2225	2017-05-27 12:40:31.278	autoconvert-jira
confluence.web.panels	2226	2017-05-27 12:40:31.278	confluence-header-help-menu
com.atlassian.confluence.image.effects.ImageEffectsPlugin	2227	2017-05-27 12:40:31.278	imgfilterfilter
com.atlassian.confluence.plugins.confluence-knowledge-base	2228	2017-05-27 12:40:31.278	searcher
com.atlassian.confluence.plugins.confluence-inline-tasks	2229	2017-05-27 12:40:31.278	email-resources-2.0.0
com.atlassian.streams	2230	2017-05-27 12:40:31.278	date-smn-FI
com.atlassian.applinks.applinks-cors-plugin	2231	2017-05-27 12:40:31.278	internalHostApplication
com.atlassian.confluence.plugins.soy	2232	2017-05-27 12:40:31.278	soy-web-panel-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2233	2017-05-27 12:40:31.278	userSettingsStore
com.atlassian.streams.confluence	2234	2017-05-27 12:40:31.278	date-xh-ZA
confluence.web.resources	2235	2017-05-27 12:40:31.278	master-scripts
com.atlassian.streams	2236	2017-05-27 12:40:31.278	date-js
com.atlassian.analytics.analytics-client	2237	2017-05-27 12:40:31.278	atomicEventSender
com.atlassian.auiplugin	2238	2017-05-27 12:40:31.278	aui-trigger
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2239	2017-05-27 12:40:31.278	templatePathResolver
com.atlassian.confluence.plugins.recently-viewed-plugin	2240	2017-05-27 12:40:31.278	current-user-metadata-provider
com.atlassian.confluence.plugins.confluence-previews	2241	2017-05-27 12:40:31.278	permalink-plugin
com.atlassian.confluence.plugins.confluence-cache-management-plugin	2242	2017-05-27 12:40:31.278	cacheStatisticsRestResource
com.atlassian.confluence.plugins.confluence-easyuser-admin	2243	2017-05-27 12:40:31.278	easyuser
com.atlassian.auiplugin	2244	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-toggle
com.atlassian.auiplugin	2245	2017-05-27 12:40:31.278	aui-experimental-spinner
confluence.sections.page.temp	2246	2017-05-27 12:40:31.278	pageunfavourite
com.atlassian.streams.confluence	2247	2017-05-27 12:40:31.278	date-ro-RO
com.atlassian.streams	2248	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2249	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.confluence.plugins.confluence-daily-summary-email	2250	2017-05-27 12:40:31.278	summaryEmail
com.atlassian.confluence.plugins.gadgets	2251	2017-05-27 12:40:31.278	gadget-directory
com.atlassian.confluence.plugins.confluence-email-resources	2252	2017-05-27 12:40:31.278	is-system-user-function
com.atlassian.applinks.applinks-plugin	2253	2017-05-27 12:40:31.278	readOnlyApplicationLinkService
com.atlassian.auiplugin	2254	2017-05-27 12:40:31.278	jquery-ui-widgets
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2255	2017-05-27 12:40:31.278	pageManager
com.atlassian.confluence.plugins.confluence-software-blueprints	2256	2017-05-27 12:40:31.278	jiraReportConfiguration
confluence.sections.space.admin	2257	2017-05-27 12:40:31.278	stylesheet
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2258	2017-05-27 12:40:31.278	confluenceNotificationJwtIssuer
com.atlassian.confluence.extra.officeconnector	2259	2017-05-27 12:40:31.278	viewxls
confluence.web.resources	2260	2017-05-27 12:40:31.278	syntaxhighlighter-core
com.atlassian.mywork.mywork-confluence-host-plugin	2261	2017-05-27 12:40:31.278	storageFormatCleaner
com.atlassian.confluence.plugins.confluence-software-blueprints	2262	2017-05-27 12:40:31.278	setUserPermission
com.atlassian.confluence.plugins.confluence-email-resources	2263	2017-05-27 12:40:31.278	content-templates-content-highlight-1.0.0
com.atlassian.confluence.plugins.confluence-easyuser-admin	2264	2017-05-27 12:40:31.278	userManager
com.atlassian.streams	2265	2017-05-27 12:40:31.278	date-cs-CZ
com.atlassian.applinks.applinks-plugin	2266	2017-05-27 12:40:31.278	listApplicationLinks
com.atlassian.confluence.plugins.confluence-like	2267	2017-05-27 12:40:31.278	vcacheFactory
com.atlassian.confluence.plugins.confluence-jira-content	2268	2017-05-27 12:40:31.278	show-feature-discovery-flag
com.atlassian.confluence.plugins.confluence-inline-tasks	2269	2017-05-27 12:40:31.278	ao-module
com.atlassian.support.stp	2270	2017-05-27 12:40:31.278	applicationProperties
confluence.listeners.core	2271	2017-05-27 12:40:31.278	bundledcontentremovallistener
com.atlassian.confluence.plugins.confluence-lookandfeel	2272	2017-05-27 12:40:31.278	sitelogo
com.atlassian.auiplugin	2273	2017-05-27 12:40:31.278	aui-restfultable
com.atlassian.oauth.serviceprovider	2274	2017-05-27 12:40:31.278	authorization-resources
com.atlassian.confluence.plugins.confluence-inline-tasks	2275	2017-05-27 12:40:31.278	task-email-notification-template-body
confluence.web.resources	2276	2017-05-27 12:40:31.278	view-my-drafts
com.atlassian.confluence.editor	2277	2017-05-27 12:40:31.278	editor-autocomplete-resources-only
confluence.extra.webdav	2278	2017-05-27 12:40:31.278	webdav.plugin.actions
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2279	2017-05-27 12:40:31.278	page-share-notification
com.atlassian.confluence.plugins.confluence-templates	2280	2017-05-27 12:40:31.278	template-variable-placeholder
com.atlassian.confluence.editor	2281	2017-05-27 12:40:31.278	editor-featured-macro-toc
com.atlassian.confluence.editor	2282	2017-05-27 12:40:31.278	sectionAndColumnListener
com.atlassian.analytics.analytics-client	2285	2017-05-27 12:40:31.278	confluenceProgrammaticAnalyticsDetector
confluence.extra.jira	2286	2017-05-27 12:40:31.278	jirachart-resources
com.atlassian.auiplugin	2287	2017-05-27 12:40:31.278	internal-src-js-aui-header-async
com.atlassian.confluence.plugins.confluence-highlight-actions	2288	2017-05-27 12:40:31.278	eventPublisher
confluence.extra.jira	2289	2017-05-27 12:40:31.278	jira-issues-view-mode-async-resource
confluence.content.action.menu	2290	2017-05-27 12:40:31.278	view-in-hierarchy-page
confluence.listeners.core	2291	2017-05-27 12:40:31.278	referralsListener
com.atlassian.confluence.contributors	2292	2017-05-27 12:40:31.278	PageSearchHelper
com.atlassian.auiplugin	2293	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-mediaQuery
com.atlassian.confluence.plugins.confluence-daily-summary-email	2294	2017-05-27 12:40:31.278	summaryEmailHourlyTrigger
com.atlassian.mywork.mywork-common-plugin	2295	2017-05-27 12:40:31.278	reliability-service
com.atlassian.confluence.editor	2296	2017-05-27 12:40:31.278	commentRenderService
com.atlassian.applinks.applinks-trustedapps-plugin	2297	2017-05-27 12:40:31.278	redirectController
com.atlassian.streams.confluence	2298	2017-05-27 12:40:31.278	date-nl-NL
confluence.extra.impresence2	2299	2017-05-27 12:40:31.278	wildfire-migrator
com.atlassian.confluence.plugins.confluence-onboarding	2300	2017-05-27 12:40:31.278	onboarding-notification-less-users
com.atlassian.confluence.plugins.confluence-space-directory	2301	2017-05-27 12:40:31.278	space-directory-rest
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2302	2017-05-27 12:40:31.278	prettyurls-combined-filter-before-decoration
confluence.user.menu	2303	2017-05-27 12:40:31.278	user-watches
com.atlassian.confluence.plugins.confluence-create-content-plugin	2304	2017-05-27 12:40:31.278	trashManager
com.atlassian.applinks.applinks-basicauth-plugin	2305	2017-05-27 12:40:31.278	authenticationConfigurationManager
com.atlassian.confluence.extra.widgetconnector	2306	2017-05-27 12:40:31.278	slideshare
com.atlassian.streams.confluence	2307	2017-05-27 12:40:31.278	date-dv-MV
com.atlassian.confluence.plugins.expand-macro	2308	2017-05-27 12:40:31.278	expand-macro-core
confluence.listeners.core	2309	2017-05-27 12:40:31.278	imageDetailsListener
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2310	2017-05-27 12:40:31.278	clustering-unavailable-resource
com.atlassian.confluence.plugins.confluence-mentions-plugin	2311	2017-05-27 12:40:31.278	notificationDataService
com.atlassian.confluence.ext.newcode-macro-plugin	2312	2017-05-27 12:40:31.278	newcode-json-actions
confluence.search.mappers.lucene	2313	2017-05-27 12:40:31.278	permittedSpaces
com.atlassian.confluence.ext.newcode-macro-plugin	2314	2017-05-27 12:40:31.278	newcode-admin-link
com.atlassian.confluence.plugins.recently-viewed-plugin	2315	2017-05-27 12:40:31.278	pluginScheduler
com.atlassian.confluence.plugins.confluence-mobile	2316	2017-05-27 12:40:31.278	search-resources
confluence.search.mappers.lucene	2317	2017-05-27 12:40:31.278	textField
com.atlassian.confluence.plugins.confluence-business-blueprints	2318	2017-05-27 12:40:31.278	sharelinks-service-filter
com.atlassian.auiplugin	2319	2017-05-27 12:40:31.278	ajs-html5shim
com.atlassian.confluence.extra.officeconnector	2320	2017-05-27 12:40:31.278	officeConnectorAnalyticsWhitelist
com.atlassian.streams	2321	2017-05-27 12:40:31.278	streamsFeedUriFactory
confluence.macros.multimedia	2322	2017-05-27 12:40:31.278	xsrfTokenGenerator
com.atlassian.confluence.extra.widgetconnector	2323	2017-05-27 12:40:31.278	googlecalender
com.atlassian.confluence.plugins.confluence-inline-tasks	2324	2017-05-27 12:40:31.278	my-tasks-profile-menu-item
confluence.xhtml.wikimarkup	2325	2017-05-27 12:40:31.278	unmigrated-inline-wiki-markup
com.atlassian.confluence.plugins.confluence-sal-plugin	2326	2017-05-27 12:40:31.278	springHostConnectionAccessor
com.atlassian.confluence.plugins.confluence-content-property-storage	2327	2017-05-27 12:40:31.278	spaceproperty-all-by-key
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2328	2017-05-27 12:40:31.278	space-notification-recipients-provider
com.atlassian.applinks.applinks-plugin	2329	2017-05-27 12:40:31.278	fisheyeCrucibleProject
com.atlassian.auiplugin	2330	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-custom-edit-view
com.atlassian.confluence.plugins.confluence-space-blueprints	2331	2017-05-27 12:40:31.278	view-homepage-email-item
com.atlassian.confluence.extra.widgetconnector	2332	2017-05-27 12:40:31.278	ooyala
com.atlassian.confluence.plugins.confluence-content-property-storage	2333	2017-05-27 12:40:31.278	content-property-index-schema
com.atlassian.mywork.mywork-common-plugin	2334	2017-05-27 12:40:31.278	web-resources
com.atlassian.confluence.plugins.confluence-previews	2335	2017-05-27 12:40:31.278	confluence-previews-resources
com.atlassian.auiplugin	2336	2017-05-27 12:40:31.278	aui-internal-state
com.atlassian.confluence.plugins.confluence-user-rest	2337	2017-05-27 12:40:31.278	confluenceUserManagementRest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2338	2017-05-27 12:40:31.278	pluginLicenseEventPublisher
com.atlassian.gadgets.publisher	2339	2017-05-27 12:40:31.278	ajax
com.atlassian.auiplugin	2340	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-skate
com.atlassian.confluence.plugins.confluence-software-project	2341	2017-05-27 12:40:31.278	confluence-software-project-resources
com.atlassian.analytics.analytics-client	2342	2017-05-27 12:40:31.278	userManager
confluence.extra.attachments	2343	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.editor	2344	2017-05-27 12:40:31.278	editor-javascript-resources
com.atlassian.confluence.editor	2345	2017-05-27 12:40:31.278	table-resizable-styles
confluence.macros.advanced	2346	2017-05-27 12:40:31.278	blog-post-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2347	2017-05-27 12:40:31.278	confluenceClusterLockServiceAccessor
com.atlassian.confluence.plugins.confluence-mobile	2348	2017-05-27 12:40:31.278	fly-out-resources
com.atlassian.analytics.analytics-client	2349	2017-05-27 12:40:31.278	loginPageRedirector
confluence.extra.jira	2350	2017-05-27 12:40:31.278	help-dialog-extension
confluence.sections.settings.edit	2351	2017-05-27 12:40:31.278	yoursettings
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2352	2017-05-27 12:40:31.278	staticServerPreferenceKeyProvider
confluence.sections.space.advanced	2353	2017-05-27 12:40:31.278	startwatching
com.atlassian.confluence.plugins.confluence-view-file-macro	2354	2017-05-27 12:40:31.278	view-file-macro-resources
com.atlassian.confluence.plugins.confluence-mobile	2355	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.plugin.notifications.notifications-module	2356	2017-05-27 12:40:31.278	notification-util
com.atlassian.applinks.applinks-basicauth-plugin	2357	2017-05-27 12:40:31.278	applicationLinkService
confluence.search.mappers.lucene	2358	2017-05-27 12:40:31.278	textFieldPrefix
com.atlassian.confluence.plugins.view-storage-format	2359	2017-05-27 12:40:31.278	view-storage-menu-resources
com.atlassian.crowd.embedded.admin	2360	2017-05-27 12:40:31.278	internal-directory-options
confluence.sections.space.tools	2361	2017-05-27 12:40:31.278	export-format-html
com.atlassian.plugins.rest.atlassian-rest-module	2362	2017-05-27 12:40:31.278	rest-container-servlet-filter-REQUEST
com.atlassian.confluence.plugins.confluence-daily-summary-email	2363	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.analytics.analytics-client	2364	2017-05-27 12:40:31.278	whitelist-report
com.atlassian.confluence.plugins.confluence-content-property-storage	2365	2017-05-27 12:40:31.278	spaceproperty-by-key
com.atlassian.confluence.plugins.confluence-request-access-plugin	2366	2017-05-27 12:40:31.278	rest
confluence.web.resources	2367	2017-05-27 12:40:31.278	jquery
com.atlassian.confluence.plugins.confluence-mobile	2368	2017-05-27 12:40:31.278	resourceIdentifierContextUtility
confluence.web.resources	2369	2017-05-27 12:40:31.278	regexes
confluence.search.mappers.lucene	2370	2017-05-27 12:40:31.278	subset
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2371	2017-05-27 12:40:31.278	pluginEnablementService
com.atlassian.confluence.plugins.confluence-email-resources	2372	2017-05-27 12:40:31.278	analyticsRenderContext
confluence.renderer.components	2373	2017-05-27 12:40:31.278	subscript
com.atlassian.streams.confluence	2374	2017-05-27 12:40:31.278	date-th-TH
com.atlassian.confluence.plugins.confluence-email-resources	2375	2017-05-27 12:40:31.278	stop-watching-space-email-batch-footer
com.atlassian.confluence.plugins.confluence-like	2376	2017-05-27 12:40:31.278	confluenceAccessManager
confluence.search.lucene.boosting	2377	2017-05-27 12:40:31.278	boostByModificationDate
confluence.sections.admin	2378	2017-05-27 12:40:31.278	dailybackup
com.atlassian.confluence.plugins.pagetree	2379	2017-05-27 12:40:31.278	pagetree-css-resources
confluence.extractors.core	2380	2017-05-27 12:40:31.278	spaceTypeExtractor
com.atlassian.oauth.serviceprovider.sal	2381	2017-05-27 12:40:31.278	consumerStore
com.atlassian.confluence.editor	2382	2017-05-27 12:40:31.278	page-editor-js
com.atlassian.confluence.plugins.quickreload	2383	2017-05-27 12:40:31.278	quickReloadCaches
com.atlassian.plugins.atlassian-nav-links-plugin	2384	2017-05-27 12:40:31.278	salFeatureManager
com.atlassian.streams.confluence	2385	2017-05-27 12:40:31.278	formatPreferenceProvider
com.atlassian.plugins.base-hipchat-integration-plugin-api	2386	2017-05-27 12:40:31.278	hipchat-notification-type
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2387	2017-05-27 12:40:31.278	licenseReceiptValidator
com.atlassian.confluence.plugins.confluence-inline-tasks	2388	2017-05-27 12:40:31.278	my-tasks-resources
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2389	2017-05-27 12:40:31.278	batching-notification-template
com.atlassian.confluence.plugins.recently-viewed-plugin	2390	2017-05-27 12:40:31.278	purgeHistoryJobTrigger
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2391	2017-05-27 12:40:31.278	licenseHealthCheck
confluence.search.mappers.lucene	2392	2017-05-27 12:40:31.278	siteSearchPermissionsFilter
com.atlassian.confluence.plugins.confluence-knowledge-base	2393	2017-05-27 12:40:31.278	kb-how-to-article
com.atlassian.confluence.editor	2394	2017-05-27 12:40:31.278	editor-unrestricted
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2395	2017-05-27 12:40:31.278	databaseHealthCheck
com.atlassian.plugins.editor	2396	2017-05-27 12:40:31.278	atlassian-rte-css
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2397	2017-05-27 12:40:31.278	licenseManagerProvider
com.atlassian.plugins.atlassian-nav-links-plugin	2398	2017-05-27 12:40:31.278	show-app-switcher-soy-function
confluence.macros.advanced	2399	2017-05-27 12:40:31.278	blogs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2400	2017-05-27 12:40:31.278	applicationLifecycleLogger
com.atlassian.confluence.plugins.confluence-mentions-plugin	2401	2017-05-27 12:40:31.278	mention-created-notification
com.atlassian.confluence.plugins.confluence-like	2402	2017-05-27 12:40:31.278	view-email-content-item
com.atlassian.streams.streams-thirdparty-plugin	2403	2017-05-27 12:40:31.278	streams-thirdparty-ao-module
com.atlassian.confluence.plugins.confluence-onboarding	2404	2017-05-27 12:40:31.278	space-service
confluence.extractors.core	2405	2017-05-27 12:40:31.278	attachmentMetadataExtractor
com.atlassian.auiplugin	2406	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-header-async
com.atlassian.plugins.rest.atlassian-rest-module	2407	2017-05-27 12:40:31.278	rest-servlet-filter
com.atlassian.confluence.plugins.confluence-email-resources	2408	2017-05-27 12:40:31.278	notification-templates-page-created-2.0.0
com.atlassian.mywork.mywork-confluence-host-plugin	2409	2017-05-27 12:40:31.278	loginUriProvider
confluence.extra.information	2410	2017-05-27 12:40:31.278	information-plugin-mobile-styles
com.atlassian.oauth.serviceprovider	2411	2017-05-27 12:40:31.278	helpLinkResolver
com.atlassian.auiplugin	2412	2017-05-27 12:40:31.278	aui-experimental-toolbar2
confluence.search.mappers.lucene	2413	2017-05-27 12:40:31.278	viewUserProfilePermissionsSearchFilter
com.atlassian.confluence.plugins.confluence-like	2414	2017-05-27 12:40:31.278	contentEntityManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2415	2017-05-27 12:40:31.278	userSettingsUpgradeTask
com.atlassian.confluence.plugins.confluence-inline-tasks	2416	2017-05-27 12:40:31.278	space-page-picker-shim
confluence.search.mappers.lucene	2417	2017-05-27 12:40:31.278	hasPersonalSpace
com.atlassian.mywork.mywork-common-plugin	2418	2017-05-27 12:40:31.278	backoff-scheduler
com.atlassian.confluence.plugins.confluence-sal-plugin	2419	2017-05-27 12:40:31.278	localeResolver
com.atlassian.plugins.base-hipchat-integration-plugin-api	2420	2017-05-27 12:40:31.278	legacyTokenCleanup
com.atlassian.auiplugin	2421	2017-05-27 12:40:31.278	jquery-aop
com.atlassian.activeobjects.activeobjects-plugin	2422	2017-05-27 12:40:31.278	web-resources
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2423	2017-05-27 12:40:31.278	pluginUsage
com.atlassian.querylang.confluence-cql-plugin	2424	2017-05-27 12:40:31.278	confluence-cql-plugin-macro-resources
com.atlassian.confluence.plugins.confluence-request-access-plugin	2425	2017-05-27 12:40:31.278	grant-access-notification-transformer
com.atlassian.confluence.keyboardshortcuts	2426	2017-05-27 12:40:31.278	addlabel
com.atlassian.confluence.plugins.confluence-email-resources	2427	2017-05-27 12:40:31.278	mail
confluence.sections.space.tools	2428	2017-05-27 12:40:31.278	spacepermissions
com.atlassian.confluence.plugins.confluence-space-ia	2429	2017-05-27 12:40:31.278	sidebarActions
com.atlassian.streams	2430	2017-05-27 12:40:31.278	xsrfHeaderValidator
com.atlassian.confluence.plugins.confluence-onboarding	2431	2017-05-27 12:40:31.278	init-session-flow-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2432	2017-05-27 12:40:31.278	pluginController
com.atlassian.plugins.atlassian-nav-links-plugin	2433	2017-05-27 12:40:31.278	local-navigation-links
confluence.sections.space.pages	2434	2017-05-27 12:40:31.278	list-recently-updated
com.atlassian.applinks.applinks-trustedapps-plugin	2435	2017-05-27 12:40:31.278	trusted-auth-outbound-configuration
com.atlassian.confluence.plugins.confluence-highlight-actions	2436	2017-05-27 12:40:31.278	xmlParserHelper
com.atlassian.confluence.plugins.confluence-file-notifications	2437	2017-05-27 12:40:31.278	file-notifications-page-link-action
com.atlassian.confluence.plugins.confluence-business-blueprints	2438	2017-05-27 12:40:31.278	sharelinksbookmarklet-actions
confluence.sections.page	2439	2017-05-27 12:40:31.278	view-attachments
com.atlassian.confluence.plugins.confluence-create-content-plugin	2440	2017-05-27 12:40:31.278	user-select2
com.atlassian.confluence.plugins.confluence-mentions-plugin	2441	2017-05-27 12:40:31.278	mentionsExcerptor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2442	2017-05-27 12:40:31.278	roadmap-placeholder-css
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2443	2017-05-27 12:40:31.278	pacClientContextFactory
com.atlassian.confluence.plugins.confluence-link-browser	2444	2017-05-27 12:40:31.278	link-browser-tab-weblink
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2445	2017-05-27 12:40:31.278	batch-section-provider
confluence.extra.confluencerpc	2446	2017-05-27 12:40:31.278	notificationsSoapService
com.atlassian.plugins.atlassian-whitelist-core-plugin	2447	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2448	2017-05-27 12:40:31.278	upm-common-install
com.atlassian.applinks.applinks-basicauth-plugin	2449	2017-05-27 12:40:31.278	applicationProperties
confluence.extra.webdav	2450	2017-05-27 12:40:31.278	microsoftMiniRedirectorAuthenticationHeaderFix
com.atlassian.streams.streams-thirdparty-plugin	2451	2017-05-27 12:40:31.278	sessionManager
confluence.web.resources	2452	2017-05-27 12:40:31.278	create-personal-space
com.atlassian.plugins.atlassian-nav-links-plugin	2453	2017-05-27 12:40:31.278	linked-application-capabilities
com.atlassian.applinks.applinks-trustedapps-plugin	2454	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.confluence.plugins.confluence-browser-metrics	2455	2017-05-27 12:40:31.278	whitelist
com.atlassian.confluence.plugins.view-source	2456	2017-05-27 12:40:31.278	view-source-resources
com.atlassian.confluence.plugins.confluence-mobile	2457	2017-05-27 12:40:31.278	dashboard-resources
confluence.macros.dashboard	2458	2017-05-27 12:40:31.278	create-space-button
com.atlassian.confluence.plugins.confluence-space-ia	2459	2017-05-27 12:40:31.278	space-ia-analytics
com.atlassian.plugins.base-hipchat-integration-plugin	2460	2017-05-27 12:40:31.278	connection-status-resources
confluence.web.resources	2461	2017-05-27 12:40:31.278	quicksearchdropdown
com.atlassian.confluence.plugins.confluence-mentions-plugin	2462	2017-05-27 12:40:31.278	mention-email-comment-link
confluence.macros.advanced	2463	2017-05-27 12:40:31.278	xhtml-excerpt
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2464	2017-05-27 12:40:31.278	upm-purchased-addons
confluence.sections.space.tools	2465	2017-05-27 12:40:31.278	orphan
com.atlassian.applinks.applinks-plugin	2466	2017-05-27 12:40:31.278	applinks-new-ui-creation
confluence.sections.news	2467	2017-05-27 12:40:31.278	view-attachments
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2468	2017-05-27 12:40:31.278	jwtService
com.atlassian.confluence.plugins.confluence-like	2469	2017-05-27 12:40:31.278	mobile-comments-like-resource
confluence.content.action.menu	2470	2017-05-27 12:40:31.278	modify
confluence.listeners.core	2471	2017-05-27 12:40:31.278	label-delete-listener
confluence.extra.attachments	2472	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	2473	2017-05-27 12:40:31.278	content-templates-share-notification-comment-pattern-1.0.0
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2474	2017-05-27 12:40:31.278	clusterMonitoring
com.atlassian.querylang.confluence-cql-plugin	2475	2017-05-27 12:40:31.278	user-field
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2476	2017-05-27 12:40:31.278	page-created-notification-template
confluence.extra.masterdetail	2477	2017-05-27 12:40:31.278	pagePropertiesService
tac.confluence.languages.fi_FI	2478	2017-05-27 12:40:31.278	fi_FI
com.atlassian.confluence.plugins.soy	2479	2017-05-27 12:40:31.278	soyTemplateRenderer
confluence.sections.space.tools	2480	2017-05-27 12:40:31.278	spacedetails
com.atlassian.confluence.plugins.confluence-business-blueprints	2481	2017-05-27 12:40:31.278	sharelinks-urlmacro-editor-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	2482	2017-05-27 12:40:31.278	confluence-team-space-blueprint-resources
com.atlassian.support.stp	2483	2017-05-27 12:40:31.278	pluginSupportInfoAppenderManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2484	2017-05-27 12:40:31.278	mailServerManager
com.atlassian.confluence.editor	2485	2017-05-27 12:40:31.278	vanilla
com.atlassian.streams	2486	2017-05-27 12:40:31.278	date-hr-HR
com.atlassian.confluence.plugins.confluence-mentions-plugin	2487	2017-05-27 12:40:31.278	mention-email-view-blogpost-link
com.atlassian.confluence.plugins.confluence-cache-management-plugin	2488	2017-05-27 12:40:31.278	cacheStatisticsRestResource-filter
com.atlassian.confluence.plugins.confluence-email-resources	2489	2017-05-27 12:40:31.278	defaultNotificationUserService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2490	2017-05-27 12:40:31.278	bandanaManager
com.atlassian.confluence.extra.widgetconnector	2491	2017-05-27 12:40:31.278	vimeo
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2492	2017-05-27 12:40:31.278	blogpost-created-notification-template-body
com.atlassian.confluence.plugins.confluence-monitoring	2493	2017-05-27 12:40:31.278	live-activity
com.atlassian.plugins.atlassian-nav-links-plugin	2494	2017-05-27 12:40:31.278	plugin-module-type-based-navigation-link-repository
com.atlassian.confluence.plugins.gadgets.spi	2495	2017-05-27 12:40:31.278	gadgetSpecIdGenerator
com.atlassian.confluence.extra.officeconnector	2496	2017-05-27 12:40:31.278	preview
confluence.sections.space.tools	2497	2017-05-27 12:40:31.278	watch-space
com.atlassian.confluence.plugins.search.confluence-search	2498	2017-05-27 12:40:31.278	searchQuerySessionFilter
com.atlassian.confluence.plugins.confluence-view-file-macro	2499	2017-05-27 12:40:31.278	view-file-macro-embedded-file-view-soy-resources
com.atlassian.applinks.applinks-plugin	2500	2017-05-27 12:40:31.278	refapp
com.atlassian.auiplugin	2501	2017-05-27 12:40:31.278	tabs
com.atlassian.auiplugin	2502	2017-05-27 12:40:31.278	keycode
com.atlassian.auiplugin	2503	2017-05-27 12:40:31.278	aui-tipsy
com.atlassian.confluence.plugins.templates-framework	2504	2017-05-27 12:40:31.278	importtemplates
com.atlassian.confluence.plugins.confluence-create-content-plugin	2505	2017-05-27 12:40:31.278	editor-blueprint-resources
com.atlassian.confluence.plugins.confluence-labels	2506	2017-05-27 12:40:31.278	labels-resources-server
com.atlassian.auiplugin	2507	2017-05-27 12:40:31.278	aui-form-notification
com.atlassian.confluence.plugins.confluence-email-resources	2508	2017-05-27 12:40:31.278	notification-templates-page-trashed-2.0.0
com.atlassian.soy.soy-template-plugin	2509	2017-05-27 12:40:31.278	helpUrlFunction
com.atlassian.confluence.plugins.confluence-jira-content	2510	2017-05-27 12:40:31.278	create-jira-content-services
com.atlassian.confluence.plugins.confluence-inline-comments	2511	2017-05-27 12:40:31.278	app
confluence.search.mappers.lucene	2512	2017-05-27 12:40:31.278	anonymousUserInfoSearchFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2513	2017-05-27 12:40:31.278	sysPersisted
com.atlassian.streams.confluence	2514	2017-05-27 12:40:31.278	date-smj-NO
com.atlassian.streams	2515	2017-05-27 12:40:31.278	date-it-CH
com.atlassian.confluence.plugins.confluence-email-resources	2516	2017-05-27 12:40:31.278	get-attachment-download-url-function
com.atlassian.confluence.plugins.confluence-templates	2517	2017-05-27 12:40:31.278	globaltemplates
com.atlassian.auiplugin	2518	2017-05-27 12:40:31.278	jquery-all
com.atlassian.streams.confluence	2519	2017-05-27 12:40:31.278	date-fr-MC
com.atlassian.confluence.plugins.confluence-inline-comments	2520	2017-05-27 12:40:31.278	create-comment-view
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	2521	2017-05-27 12:40:31.278	experiencecanvas-blueprint
com.atlassian.gadgets.publisher	2522	2017-05-27 12:40:31.278	publisher-plugin-rest-endpoints-filter
com.atlassian.auiplugin	2523	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-jquery
confluence.listeners.core	2524	2017-05-27 12:40:31.278	clusterWideReindexEventListener
com.atlassian.streams.confluence	2525	2017-05-27 12:40:31.278	date-nl-BE
com.atlassian.oauth.serviceprovider	2526	2017-05-27 12:40:31.278	oauthAccessTokenServlet
confluence.analytics.whitelist	2527	2017-05-27 12:40:31.278	confluenceCoreAnalyticsWhitelist
com.atlassian.streams.confluence	2528	2017-05-27 12:40:31.278	date-fr-LU
com.atlassian.streams	2529	2017-05-27 12:40:31.278	requestFactory
com.atlassian.streams	2530	2017-05-27 12:40:31.278	streamsWallboardWebResources
com.atlassian.confluence.editor	2531	2017-05-27 12:40:31.278	editor-support-util
com.atlassian.auiplugin	2532	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-forms
confluence.web.resources	2533	2017-05-27 12:40:31.278	support-utility
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2534	2017-05-27 12:40:31.278	opt-in-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2535	2017-05-27 12:40:31.278	blogpost-edited-hipchat-notification-template
com.atlassian.confluence.editor	2536	2017-05-27 12:40:31.278	attachments-insert-utils-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	2537	2017-05-27 12:40:31.278	transactionalExecutorFactory
com.atlassian.confluence.plugins.confluence-templates	2538	2017-05-27 12:40:31.278	confluence-templates-action
confluence.sections.admin.header	2539	2017-05-27 12:40:31.278	admin-plugins
com.atlassian.confluence.plugins.status-macro	2540	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2541	2017-05-27 12:40:31.278	roleBasedLicensingPluginService
com.atlassian.plugins.rest.atlassian-rest-module	2542	2017-05-27 12:40:31.278	cors-defaults
confluence.content.action.menu	2543	2017-05-27 12:40:31.278	move-blogpost
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2544	2017-05-27 12:40:31.278	pluginsEnablementStateStore
com.atlassian.confluence.plugins.share-page	2545	2017-05-27 12:40:31.278	share-draft-email-notification-template
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2546	2017-05-27 12:40:31.278	comment-edited-notification
com.atlassian.streams	2547	2017-05-27 12:40:31.278	date-it-IT
com.atlassian.applinks.applinks-oauth-plugin	2548	2017-05-27 12:40:31.278	add-consumer-servlet
com.atlassian.confluence.plugins.confluence-inline-tasks	2549	2017-05-27 12:40:31.278	tasks-report-resources
com.atlassian.streams.confluence	2550	2017-05-27 12:40:31.278	date-bg-BG
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2551	2017-05-27 12:40:31.278	hipChatSpaceDiscovery
com.atlassian.plugins.browser.metrics.browser-metrics-plugin	2552	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.plugins.jquery	2553	2017-05-27 12:40:31.278	darkFeatureManager
com.atlassian.plugins.atlassian-nav-links-plugin	2554	2017-05-27 12:40:31.278	navigation-capability-resource-forward
com.atlassian.streams	2555	2017-05-27 12:40:31.278	projectKeyValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2556	2017-05-27 12:40:31.278	refimpl-upm-osgi-menu
com.atlassian.plugins.base-hipchat-integration-plugin	2557	2017-05-27 12:40:31.278	hipchat-configuration-panel-js
confluence.listeners.core	2558	2017-05-27 12:40:31.278	commentNotificationsListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2559	2017-05-27 12:40:31.278	confluenceGroupManager
com.atlassian.confluence.plugins.confluence-edge-index	2560	2017-05-27 12:40:31.278	nestedCommentCountQuery
com.atlassian.streams	2561	2017-05-27 12:40:31.278	date-ta-IN
com.atlassian.confluence.plugins.confluence-spaces	2562	2017-05-27 12:40:31.278	resources
com.atlassian.confluence.plugins.confluence-email-resources	2563	2017-05-27 12:40:31.278	template-utils-avatar-name-table-1.0.0
com.atlassian.confluence.plugins.confluence-email-resources	2564	2017-05-27 12:40:31.278	manage-user-email-footer-item
com.atlassian.plugins.atlassian-whitelist-core-plugin	2565	2017-05-27 12:40:31.278	userManager
confluence.comment.action	2566	2017-05-27 12:40:31.278	reply-comment
com.atlassian.confluence.plugins.confluence-create-content-plugin	2567	2017-05-27 12:40:31.278	templateChildCreatorListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2568	2017-05-27 12:40:31.278	pluginNotificationService
com.atlassian.confluence.plugins.confluence-ui-rest	2569	2017-05-27 12:40:31.278	ui-rest
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	2570	2017-05-27 12:40:31.278	util
com.atlassian.confluence.extra.widgetconnector	2571	2017-05-27 12:40:31.278	episodic
com.atlassian.confluence.plugins.search.confluence-search	2572	2017-05-27 12:40:31.278	confluenceV3SearchWhiteList
com.atlassian.confluence.plugins.confluence-file-notifications	2573	2017-05-27 12:40:31.278	file-content-mention-payload-transformer
com.atlassian.querylang.confluence-cql-plugin	2574	2017-05-27 12:40:31.278	id-field
confluence.macros.advanced	2575	2017-05-27 12:40:31.278	index-macro-resources
com.atlassian.confluence.plugins.gadgets	2576	2017-05-27 12:40:31.278	wikiStyleRenderer
com.atlassian.plugins.atlassian-nav-links-plugin	2577	2017-05-27 12:40:31.278	absolute-url-factory
com.atlassian.plugins.atlassian-nps-plugin	2578	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.plugins.rest.atlassian-rest-module	2579	2017-05-27 12:40:31.278	xsrfTokenValidator
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2580	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.confluence.plugins.confluence-license-banner	2581	2017-05-27 12:40:31.278	soy-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	2582	2017-05-27 12:40:31.278	DocumentationSpaceEventListener
com.atlassian.applinks.applinks-plugin	2583	2017-05-27 12:40:31.278	applinks-wizard
com.atlassian.auiplugin	2584	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-version
com.atlassian.plugins.atlassian-project-creation-plugin	2585	2017-05-27 12:40:31.278	project-crud-rest-filter
com.atlassian.streams.confluence	2586	2017-05-27 12:40:31.278	date-te-IN
com.atlassian.confluence.plugins.confluence-onboarding	2587	2017-05-27 12:40:31.278	spaceManager
com.atlassian.confluence.plugins.confluence-paste	2588	2017-05-27 12:40:31.278	restEndPoint
com.atlassian.analytics.analytics-client	2589	2017-05-27 12:40:31.278	pluginAccessor
confluence.extra.masterdetail	2590	2017-05-27 12:40:31.278	createButtonService
com.atlassian.applinks.applinks-plugin	2591	2017-05-27 12:40:31.278	applicationLinkRequestFactoryFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2592	2017-05-27 12:40:31.278	noOpPluginControlHandler
com.atlassian.confluence.plugins.confluence-email-resources	2593	2017-05-27 12:40:31.278	chrome-template-html-header-1.0.0
com.atlassian.confluence.plugins.confluence-highlight-actions	2594	2017-05-27 12:40:31.278	xmlModificationValidator
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	2595	2017-05-27 12:40:31.278	emoticonStorageUnmarshaller
com.atlassian.streams.confluence	2596	2017-05-27 12:40:31.278	date-smj-SE
com.atlassian.support.stp	2597	2017-05-27 12:40:31.278	stp-rest-filter
com.atlassian.confluence.keyboardshortcuts	2598	2017-05-27 12:40:31.278	confluence-tinymce-keyboard-shortcuts
com.atlassian.plugin.notifications.notifications-module	2599	2017-05-27 12:40:31.278	serverManager
com.atlassian.mywork.mywork-confluence-host-plugin	2600	2017-05-27 12:40:31.278	mw-miniview
confluence.sections.space.admin	2601	2017-05-27 12:40:31.278	addons
confluence.web.resources	2602	2017-05-27 12:40:31.278	avataror
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	2603	2017-05-27 12:40:31.278	ao-module
com.atlassian.applinks.applinks-plugin	2604	2017-05-27 12:40:31.278	authenticationConfigurator
com.atlassian.activeobjects.confluence.spi	2605	2017-05-27 12:40:31.278	initExecutorServiceProvider
com.atlassian.confluence.plugins.confluence-mobile	2606	2017-05-27 12:40:31.278	mobileAnalyticsWhitelist
com.atlassian.applinks.applinks-plugin	2607	2017-05-27 12:40:31.278	entityLinkClient
com.atlassian.plugins.base-hipchat-integration-plugin-api	2608	2017-05-27 12:40:31.278	ajs-amd
com.atlassian.confluence.plugins.confluence-mobile	2609	2017-05-27 12:40:31.278	macro-resources
com.atlassian.integration.jira.jira-integration-plugin	2610	2017-05-27 12:40:31.278	applicationProperties
confluence.listeners.core	2611	2017-05-27 12:40:31.278	clusterUpdateJobScheduleListener
confluence.extra.attachments	2612	2017-05-27 12:40:31.278	attachments-xhtml
com.atlassian.mywork.mywork-confluence-provider-plugin	2613	2017-05-27 12:40:31.278	internalHostApplication
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2614	2017-05-27 12:40:31.278	comment-edited-notification-template
confluence.web.resources	2615	2017-05-27 12:40:31.278	trigger
com.atlassian.confluence.plugins.confluence-software-blueprints	2616	2017-05-27 12:40:31.278	jirareports-item
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	2617	2017-05-27 12:40:31.278	bulkOperationsWhitelist
com.atlassian.auiplugin	2618	2017-05-27 12:40:31.278	aui-date-picker
com.atlassian.streams.streams-thirdparty-plugin	2619	2017-05-27 12:40:31.278	entityAssociationProviders
com.atlassian.confluence.ext.newcode-macro-plugin	2620	2017-05-27 12:40:31.278	newcode-xhtml
confluence.lifecycle.core	2621	2017-05-27 12:40:31.278	dblowercheck
confluence.extra.dynamictasklist2	2622	2017-05-27 12:40:31.278	v2-tasklist
confluence.macros.dashboard	2623	2017-05-27 12:40:31.278	popular-tab
com.atlassian.gadgets.publisher	2624	2017-05-27 12:40:31.278	publisher-plugin-rest-endpoints
com.atlassian.confluence.plugins.confluence-space-ia	2625	2017-05-27 12:40:31.278	rest-filter
com.atlassian.mywork.mywork-common-plugin	2626	2017-05-27 12:40:31.278	my-work-client-rest-filter
com.atlassian.streams.confluence	2627	2017-05-27 12:40:31.278	followManager
confluence.content.action.menu	2628	2017-05-27 12:40:31.278	remove-blogpost
confluence.extra.confluencerpc	2629	2017-05-27 12:40:31.278	confluence-soap-2
com.atlassian.confluence.plugins.confluence-view-file-macro	2630	2017-05-27 12:40:31.278	view-file
com.atlassian.confluence.plugins.confluence-sal-plugin	2631	2017-05-27 12:40:31.278	helpPathResolver
com.atlassian.plugin.notifications.notifications-module	2632	2017-05-27 12:40:31.278	addNotificationServerServlet
com.atlassian.oauth.consumer.sal	2633	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.confluence.plugins.status-macro	2634	2017-05-27 12:40:31.278	editor-featured-macro-status
com.atlassian.confluence.plugins.search.confluence-search	2635	2017-05-27 12:40:31.278	spanQueryBuilder
com.atlassian.confluence.plugins.recently-viewed-plugin	2636	2017-05-27 12:40:31.278	contentViewedListener
confluence.web.resources	2637	2017-05-27 12:40:31.278	select2
com.atlassian.confluence.plugins.confluence-content-property-storage	2638	2017-05-27 12:40:31.278	contentService
com.atlassian.plugins.atlassian-help-tips	2639	2017-05-27 12:40:31.278	tx-processor
com.atlassian.confluence.plugins.confluence-business-blueprints	2640	2017-05-27 12:40:31.278	decisions-index-page
com.atlassian.confluence.extra.widgetconnector	2641	2017-05-27 12:40:31.278	shareacrobat
com.atlassian.confluence.plugins.dialog-wizard	2642	2017-05-27 12:40:31.278	dialog-wizard-resources
com.atlassian.mywork.mywork-common-plugin	2643	2017-05-27 12:40:31.278	systemStatusService
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2644	2017-05-27 12:40:31.278	operatingSystemInfo
com.atlassian.confluence.plugins.quickreload	2645	2017-05-27 12:40:31.278	renderer
com.atlassian.gadgets.opensocial	2646	2017-05-27 12:40:31.278	authentication-servlet-filter
com.atlassian.applinks.applinks-oauth-plugin	2647	2017-05-27 12:40:31.278	TwoLeggedOAuthAuthenticatorProviderPluginModule
com.atlassian.streams.streams-thirdparty-plugin	2648	2017-05-27 12:40:31.278	activityService
com.atlassian.streams	2649	2017-05-27 12:40:31.278	defaultClock
com.atlassian.mywork.mywork-common-plugin	2650	2017-05-27 12:40:31.278	application-link-rescheduler
com.atlassian.mywork.mywork-confluence-host-plugin	2651	2017-05-27 12:40:31.278	workday-email-resources
com.atlassian.confluence.plugins.confluence-request-access-plugin	2652	2017-05-27 12:40:31.278	pageNotPermittedPanel
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	2653	2017-05-27 12:40:31.278	bloggingUtils
com.atlassian.streams.confluence	2654	2017-05-27 12:40:31.278	date-fr-FR
com.atlassian.mywork.mywork-confluence-host-plugin	2655	2017-05-27 12:40:31.278	authenticationListener
com.atlassian.support.healthcheck.support-healthcheck-plugin	2656	2017-05-27 12:40:31.278	supportHealthCheckRest
com.atlassian.analytics.analytics-client	2657	2017-05-27 12:40:31.278	userPermissionsHelper
com.atlassian.confluence.plugins.confluence-files	2658	2017-05-27 12:40:31.278	unresolvedCommentCountOnFileVersions
confluence.sections.space.advanced	2659	2017-05-27 12:40:31.278	spacedetails-personal
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2660	2017-05-27 12:40:31.278	spaceConfigurationAction2
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2661	2017-05-27 12:40:31.278	initialise-metrics-collection
confluence.sections.page.temp	2662	2017-05-27 12:40:31.278	edit-blogpost
confluence.web.panels	2663	2017-05-27 12:40:31.278	confluence-userprofile-info
com.atlassian.oauth.serviceprovider	2664	2017-05-27 12:40:31.278	basicConsumerInformationRenderer
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2665	2017-05-27 12:40:31.278	user-settings-panel-resources
com.atlassian.streams.confluence	2666	2017-05-27 12:40:31.278	date-sr-Latn-CS
com.atlassian.confluence.plugins.confluence-business-blueprints	2667	2017-05-27 12:40:31.278	autoconvert-any-link
com.atlassian.streams	2668	2017-05-27 12:40:31.278	date-ns-ZA
com.atlassian.plugins.base-hipchat-integration-plugin	2669	2017-05-27 12:40:31.278	configureServlet
confluence.sections.admin	2670	2017-05-27 12:40:31.278	generalconfiguration
confluence.sections.profile	2671	2017-05-27 12:40:31.278	follow-user
org.randombits.confluence.toc	2672	2017-05-27 12:40:31.278	toc-plugin-analytics
confluence.web.resources	2673	2017-05-27 12:40:31.278	jquery-progressbar
com.atlassian.confluence.extra.widgetconnector	2674	2017-05-27 12:40:31.278	backtype
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2675	2017-05-27 12:40:31.278	licenseHandlerContextItem
com.atlassian.auiplugin	2676	2017-05-27 12:40:31.278	aui-toggle
com.atlassian.confluence.plugins.confluence-inline-tasks	2677	2017-05-27 12:40:31.278	editor-autocomplete-date-js
com.atlassian.plugins.atlassian-help-tips	2678	2017-05-27 12:40:31.278	userManager
com.atlassian.confluence.plugins.confluence-space-ia	2679	2017-05-27 12:40:31.278	space-tools-reorder-pages
com.atlassian.confluence.plugins.confluence-link-browser	2680	2017-05-27 12:40:31.278	link-browser-web-items
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2681	2017-05-27 12:40:31.278	payload-processor
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	2682	2017-05-27 12:40:31.278	emoticonEditorToStorageTransformer
confluence.sections.space.tools	2683	2017-05-27 12:40:31.278	formats
com.atlassian.plugins.atlassian-plugins-webresource-plugin	2684	2017-05-27 12:40:31.278	data
confluence.macros.advanced	2685	2017-05-27 12:40:31.278	blogposts
com.atlassian.confluence.plugins.confluence-email-resources	2686	2017-05-27 12:40:31.278	natto-function
confluence.sections.space.admin	2687	2017-05-27 12:40:31.278	choosetheme
com.atlassian.support.stp	2688	2017-05-27 12:40:31.278	env-support-info
com.atlassian.confluence.plugins.confluence-email-resources	2689	2017-05-27 12:40:31.278	content-templates
com.atlassian.confluence.plugins.confluence-software-blueprints	2690	2017-05-27 12:40:31.278	jirareports-services
com.atlassian.applinks.applinks-trustedapps-plugin	2691	2017-05-27 12:40:31.278	callbackParameter
confluence.search.mappers.lucene	2692	2017-05-27 12:40:31.278	matchNoDocsFilter
com.atlassian.support.stp	2693	2017-05-27 12:40:31.278	support-info
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2694	2017-05-27 12:40:31.278	uriBuilder
com.atlassian.confluence.plugins.soy	2695	2017-05-27 12:40:31.278	soy-doclink-function
confluence.macro.metadata.provider	2696	2017-05-27 12:40:31.278	macro-browser-metadata-resources
com.atlassian.confluence.plugins.confluence-email-resources	2697	2017-05-27 12:40:31.278	template-utils-user-link-1.0.0
com.atlassian.plugins.base-hipchat-integration-plugin-api	2698	2017-05-27 12:40:31.278	jquery-amd
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2699	2017-05-27 12:40:31.278	helpPathResolver
confluence.web.resources	2700	2017-05-27 12:40:31.278	analytics-support
com.atlassian.auiplugin	2701	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-document-observer
com.atlassian.querylang.confluence-cql-plugin	2702	2017-05-27 12:40:31.278	contributor-field
com.atlassian.confluence.plugins.share-page	2703	2017-05-27 12:40:31.278	share-page-email-notification-template-body
com.atlassian.confluence.keyboardshortcuts	2704	2017-05-27 12:40:31.278	tinymce.save.editor.page
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2705	2017-05-27 12:40:31.278	userAuthenticationDecorator
com.atlassian.oauth.consumer.sal	2706	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2707	2017-05-27 12:40:31.278	blogpost-created-notification
com.atlassian.support.stp	2708	2017-05-27 12:40:31.278	pluginScheduler
com.atlassian.plugins.base-hipchat-integration-plugin	2709	2017-05-27 12:40:31.278	room-deleted
com.atlassian.confluence.plugins.confluence-edge-index	2710	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2711	2017-05-27 12:40:31.278	hipChatDiscoveryIsSpaceAdmin
com.atlassian.streams	2712	2017-05-27 12:40:31.278	date-pl-PL
com.atlassian.confluence.extra.officeconnector	2713	2017-05-27 12:40:31.278	cleanupTrigger
com.atlassian.applinks.applinks-plugin	2714	2017-05-27 12:40:31.278	applicationPropertiesContextItem
com.atlassian.plugins.authentication.atlassian-authentication-plugin	2715	2017-05-27 12:40:31.278	atlassian-authentication-whitelist
com.atlassian.confluence.plugins.gadgets	2716	2017-05-27 12:40:31.278	gadget-admin
com.atlassian.plugins.atlassian-nav-links-plugin	2717	2017-05-27 12:40:31.278	host-product-login-page
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2718	2017-05-27 12:40:31.278	viewpluginusage
com.atlassian.confluence.plugins.status-macro	2719	2017-05-27 12:40:31.278	status-legacy
com.atlassian.support.healthcheck.support-healthcheck-plugin	2720	2017-05-27 12:40:31.278	notificationService
com.atlassian.confluence.plugins.confluence-edge-index	2721	2017-05-27 12:40:31.278	like.create
com.atlassian.oauth.serviceprovider	2722	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.confluence.plugins.confluence-onboarding	2723	2017-05-27 12:40:31.278	draftsTransitionHelper
confluence.extra.masterdetail	2724	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.applinks.applinks-oauth-plugin	2725	2017-05-27 12:40:31.278	oauth-auth
confluence.macros.advanced	2726	2017-05-27 12:40:31.278	xhtml-include
com.atlassian.auiplugin	2727	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-set-visible
confluence.macros.advanced	2728	2017-05-27 12:40:31.278	blog-posts
com.atlassian.confluence.plugins.confluence-mentions-plugin	2729	2017-05-27 12:40:31.278	mention-recipients-provider
com.atlassian.confluence.plugins.watch-button	2730	2017-05-27 12:40:31.278	watch-resources
com.atlassian.applinks.applinks-basicauth-plugin	2731	2017-05-27 12:40:31.278	BasicAuthenticationProviderPluginModule
confluence.macros.basic	2732	2017-05-27 12:40:31.278	quote
com.atlassian.confluence.plugins.search.confluence-search	2733	2017-05-27 12:40:31.278	searchService
com.atlassian.streams	2734	2017-05-27 12:40:31.278	date-kok-IN
confluence.macros.advanced	2735	2017-05-27 12:40:31.278	doc
com.atlassian.applinks.applinks-oauth-plugin	2736	2017-05-27 12:40:31.278	adminUIAuthenticator
com.atlassian.confluence.plugins.confluence-email-resources	2737	2017-05-27 12:40:31.278	content-templates-users-involved-pattern-2.0.0
com.atlassian.querylang.confluence-cql-plugin	2738	2017-05-27 12:40:31.278	creator-field
com.atlassian.plugins.atlassian-whitelist-ui-plugin	2739	2017-05-27 12:40:31.278	userManager
com.atlassian.plugins.atlassian-whitelist-core-plugin	2740	2017-05-27 12:40:31.278	ao-module
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2741	2017-05-27 12:40:31.278	tabVisibilityContextItem
com.atlassian.confluence.plugins.search.confluence-search	2742	2017-05-27 12:40:31.278	boostingQueryFactory
com.atlassian.mywork.mywork-common-plugin	2743	2017-05-27 12:40:31.278	pluginEventManager
com.atlassian.plugins.base-hipchat-integration-plugin	2744	2017-05-27 12:40:31.278	hipchat-require-resource-by-context-function
com.atlassian.confluence.plugins.confluence-daily-summary-email	2745	2017-05-27 12:40:31.278	SummaryEmailNotificationManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2746	2017-05-27 12:40:31.278	jwtTokenFactory
com.atlassian.confluence.plugins.confluence-onboarding	2747	2017-05-27 12:40:31.278	confluenceAccessManager
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	2748	2017-05-27 12:40:31.278	settingsManager
com.atlassian.confluence.plugins.confluence-inline-comments	2749	2017-05-27 12:40:31.278	confluence-inline-comments-rest
confluence.extra.chart	2750	2017-05-27 12:40:31.278	com.atlassian.confluence.extra.chart.name
com.atlassian.mywork.mywork-confluence-host-plugin	2751	2017-05-27 12:40:31.278	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	2752	2017-05-27 12:40:31.278	notificationEmailFactory
com.atlassian.confluence.contributors	2753	2017-05-27 12:40:31.278	contributors-summary-xhtml
confluence.admin.user	2754	2017-05-27 12:40:31.278	browse-users-tab-create
com.atlassian.confluence.plugins.search.confluence-search	2755	2017-05-27 12:40:31.278	siteSearch-query-mapper
com.atlassian.confluence.plugins.confluence-space-directory	2756	2017-05-27 12:40:31.278	spaceDirectoryActions
com.atlassian.applinks.applinks-plugin	2757	2017-05-27 12:40:31.278	list-application-entity-action
com.atlassian.confluence.plugins.confluence-mobile	2758	2017-05-27 12:40:31.278	app-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	2759	2017-05-27 12:40:31.278	avatar
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2760	2017-05-27 12:40:31.278	instanceTopologyService
com.atlassian.confluence.plugins.confluence-license-rest	2761	2017-05-27 12:40:31.278	clusterManager
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	2762	2017-05-27 12:40:31.278	confluenceAccessManager
com.atlassian.confluence.editor	2763	2017-05-27 12:40:31.278	editor-page-restricted
com.atlassian.plugins.atlassian-nav-links-plugin	2764	2017-05-27 12:40:31.278	clock
confluence.extra.impresence2	2765	2017-05-27 12:40:31.278	yahoo-xhtml
com.atlassian.mywork.mywork-common-plugin	2766	2017-05-27 12:40:31.278	registration-service
com.atlassian.streams	2767	2017-05-27 12:40:31.278	date-uz-Latn-UZ
com.atlassian.confluence.plugins.confluence-onboarding	2768	2017-05-27 12:40:31.278	contentBlueprintManager
confluence.comment.action	2769	2017-05-27 12:40:31.278	primary
confluence.extra.confluencerpc	2770	2017-05-27 12:40:31.278	xhtmlRpcHandler
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2771	2017-05-27 12:40:31.278	system-information
confluence.sections.admin	2772	2017-05-27 12:40:31.278	loglevel
com.atlassian.confluence.plugins.confluence-inline-tasks	2773	2017-05-27 12:40:31.278	inline-tasks-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2774	2017-05-27 12:40:31.278	blogpost-trashed-notification
com.atlassian.confluence.plugins.confluence-quicknav	2775	2017-05-27 12:40:31.278	quick-nav-rest
confluence.extractors.core	2776	2017-05-27 12:40:31.278	genericExtractor
confluence.user.menu	2777	2017-05-27 12:40:31.278	user-preferences
com.atlassian.confluence.plugins.reliablesave	2778	2017-05-27 12:40:31.278	reliable-save
com.atlassian.confluence.plugins.confluence-create-content-plugin	2779	2017-05-27 12:40:31.278	blueprint
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2780	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.applinks.applinks-plugin	2781	2017-05-27 12:40:31.278	xsrfTokenValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2782	2017-05-27 12:40:31.278	bundledUpdateInfoStore
com.atlassian.confluence.editor	2783	2017-05-27 12:40:31.278	editor-core-resources
com.atlassian.streams.confluence	2784	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.confluence.plugins.confluence-files	2785	2017-05-27 12:40:31.278	confluenceFileRest-filter
com.atlassian.confluence.plugins.confluence-email-resources	2786	2017-05-27 12:40:31.278	siteLogoManager
com.atlassian.streams.streams-thirdparty-plugin	2787	2017-05-27 12:40:31.278	thirdPartyStreamsEntryBuilder
com.atlassian.confluence.extra.officeconnector	2788	2017-05-27 12:40:31.278	macro-browser-smart-fields
com.atlassian.auiplugin	2789	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-backbone-backbone
com.atlassian.confluence.plugins.confluence-macro-usage-admin-plugin	2790	2017-05-27 12:40:31.278	soy-templates
confluence.web.resources	2791	2017-05-27 12:40:31.278	keyboard
confluence.sections.help	2792	2017-05-27 12:40:31.278	feedbuilder
com.atlassian.confluence.plugins.confluence-email-tracker	2793	2017-05-27 12:40:31.278	emailTrackerService
com.atlassian.plugins.authentication.atlassian-authentication-plugin	2794	2017-05-27 12:40:31.278	authentication-plugin-ao
com.atlassian.plugins.base-hipchat-integration-plugin	2795	2017-05-27 12:40:31.278	configurationPanel
confluence.extra.livesearch	2796	2017-05-27 12:40:31.278	livesearch-macro-web-resources
com.atlassian.confluence.plugins.confluence-space-directory	2797	2017-05-27 12:40:31.278	space-directory-templates
com.atlassian.querylang.confluence-cql-plugin	2798	2017-05-27 12:40:31.278	user-query-mapper
com.atlassian.streams	2799	2017-05-27 12:40:31.278	date-et-EE
com.atlassian.auiplugin	2800	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-format
com.atlassian.streams.confluence	2801	2017-05-27 12:40:31.278	date-ca-ES
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	2802	2017-05-27 12:40:31.278	synchrony-content
com.atlassian.support.healthcheck.support-healthcheck-plugin	2803	2017-05-27 12:40:31.278	healthCheckTimeoutListener
com.atlassian.streams.streams-thirdparty-plugin	2804	2017-05-27 12:40:31.278	uriBuilder
confluence.web.resources	2805	2017-05-27 12:40:31.278	backupadmin
com.atlassian.confluence.plugins.confluence-inline-comments	2806	2017-05-27 12:40:31.278	inline-comment-created-mail-batch-notification-processor
com.atlassian.confluence.plugins.confluence-daily-summary-email	2807	2017-05-27 12:40:31.278	daily-summary-admin-item
com.atlassian.plugins.atlassian-nav-links-plugin	2808	2017-05-27 12:40:31.278	activeObjects
com.atlassian.plugin.jslibs	2809	2017-05-27 12:40:31.278	skate-0.14.0
com.atlassian.confluence.plugins.confluence-business-blueprints	2810	2017-05-27 12:40:31.278	meeting-notes-index
com.atlassian.plugins.atlassian-nav-links-plugin	2811	2017-05-27 12:40:31.278	host-application
com.atlassian.confluence.plugins.confluence-business-blueprints	2812	2017-05-27 12:40:31.278	meeting-notes-page
com.atlassian.mywork.mywork-common-plugin	2813	2017-05-27 12:40:31.278	servingRequestsFilter
com.atlassian.auiplugin	2814	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-has-touch
com.atlassian.confluence.plugins.search.confluence-search	2815	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.extra.flyingpdf	2816	2017-05-27 12:40:31.278	customFontListener
confluence.web.resources	2817	2017-05-27 12:40:31.278	auditlogclient
com.atlassian.confluence.plugins.confluence-file-notifications	2818	2017-05-27 12:40:31.278	file-content-icons
confluence.web.resources	2819	2017-05-27 12:40:31.278	meta
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2820	2017-05-27 12:40:31.278	roadmap-models
com.atlassian.confluence.editor	2821	2017-05-27 12:40:31.278	page-editor-message
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2822	2017-05-27 12:40:31.278	follower-added-hipchat-notification-template
com.atlassian.support.stp	2823	2017-05-27 12:40:31.278	scheduleFactory
confluence.web.resources	2824	2017-05-27 12:40:31.278	breadcrumbs
com.atlassian.confluence.plugins.confluence-mobile	2825	2017-05-27 12:40:31.278	localeManager
com.atlassian.confluence.plugins.soy	2826	2017-05-27 12:40:31.278	soy-import-resource-function
com.atlassian.streams.confluence	2827	2017-05-27 12:40:31.278	date-lv-LV
confluence.listeners.core	2828	2017-05-27 12:40:31.278	plugin-logging-listener
com.atlassian.confluence.plugins.confluence-highlight-actions	2829	2017-05-27 12:40:31.278	tableModificationValidator
com.atlassian.streams.confluence	2830	2017-05-27 12:40:31.278	date-ur-PK
com.atlassian.confluence.plugins.confluence-content-property-storage	2831	2017-05-27 12:40:31.278	contentPropertyIndexSchemaManager
confluence.listeners.core	2832	2017-05-27 12:40:31.278	page-hierarchy-logging-listener
com.atlassian.oauth.serviceprovider.sal	2833	2017-05-27 12:40:31.278	tokenStore
com.atlassian.plugin.notifications.notifications-module	2834	2017-05-27 12:40:31.278	notificationSchemeService
com.atlassian.confluence.plugins.confluence-roadmap-plugin	2835	2017-05-27 12:40:31.278	roadmap-image-servlet
com.atlassian.confluence.plugins.quickedit	2836	2017-05-27 12:40:31.278	quick-comment-initial
com.atlassian.support.stp	2837	2017-05-27 12:40:31.278	scheduledTaskManager
com.atlassian.plugins.base-hipchat-integration-plugin	2838	2017-05-27 12:40:31.278	hipchat-configuration-panel-resources
com.atlassian.auiplugin	2839	2017-05-27 12:40:31.278	soy
com.atlassian.confluence.plugins.confluence-fixed-headers	2840	2017-05-27 12:40:31.278	confluence-fixed-headers-editor-resources
com.atlassian.querylang.confluence-cql-plugin	2841	2017-05-27 12:40:31.278	start-of-day-zero-arg-function
confluence.sections.space.tools	2842	2017-05-27 12:40:31.278	permissions
com.atlassian.streams	2843	2017-05-27 12:40:31.278	completionService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2844	2017-05-27 12:40:31.278	webResourceUrlProvider
com.atlassian.plugin.jslibs	2845	2017-05-27 12:40:31.278	d3-3.5.5
com.atlassian.auiplugin	2846	2017-05-27 12:40:31.278	aui-spinner
com.atlassian.mywork.mywork-common-plugin	2847	2017-05-27 12:40:31.278	xsrfTokenAccessor
com.atlassian.plugins.atlassian-nav-links-plugin	2848	2017-05-27 12:40:31.278	custom-apps-admin-ui-resources
confluence.macros.advanced	2849	2017-05-27 12:40:31.278	change-history
com.atlassian.confluence.plugins.confluence-previews	2850	2017-05-27 12:40:31.278	confluence-previews-js
com.atlassian.confluence.extra.officeconnector	2851	2017-05-27 12:40:31.278	officeconnector-analytics-resources
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2852	2017-05-27 12:40:31.278	confluence-webpanel-servlet
com.atlassian.confluence.plugins.confluence-labels	2853	2017-05-27 12:40:31.278	labels-editor
com.atlassian.confluence.plugins.confluence-file-notifications	2854	2017-05-27 12:40:31.278	contentService
com.atlassian.plugin.notifications.notifications-module	2855	2017-05-27 12:40:31.278	notification-prefs
confluence.content.action.menu	2856	2017-05-27 12:40:31.278	page-permissions
confluence.web.resources	2857	2017-05-27 12:40:31.278	setup-success
com.atlassian.streams.confluence	2858	2017-05-27 12:40:31.278	date-es-UY
com.atlassian.auiplugin	2859	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-custom-read-view
com.atlassian.auiplugin	2860	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-setup
com.atlassian.confluence.plugins.confluence-daily-summary-email	2861	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.confluence.plugins.confluence-like	2862	2017-05-27 12:40:31.278	like-hipchat-soy-templates
com.atlassian.applinks.applinks-plugin	2863	2017-05-27 12:40:31.278	applinksRestV2-filter
confluence.web.resources	2864	2017-05-27 12:40:31.278	page-restricted-resources
com.atlassian.auiplugin	2865	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-jquery-jquery-spin
com.atlassian.confluence.extra.widgetconnector	2866	2017-05-27 12:40:31.278	widget
com.atlassian.confluence.plugins.soy	2867	2017-05-27 12:40:31.278	soyTemplateRendererHelperContext
com.atlassian.streams.confluence	2868	2017-05-27 12:40:31.278	date-es-VE
com.atlassian.confluence.plugins.confluence-email-resources	2869	2017-05-27 12:40:31.278	template-utils-avatar-name-table-column-2.0.0
confluence.web.resources	2870	2017-05-27 12:40:31.278	setup
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2871	2017-05-27 12:40:31.278	upm-osgi-templates
com.atlassian.confluence.extra.flyingpdf	2872	2017-05-27 12:40:31.278	pdfExportServiceDelegator
com.atlassian.streams	2873	2017-05-27 12:40:31.278	streamsCommentsServlet
com.atlassian.auiplugin	2874	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-when-i-type
com.atlassian.streams.confluence	2875	2017-05-27 12:40:31.278	date-sr-Latn-BA
com.atlassian.streams	2876	2017-05-27 12:40:31.278	date-pa-IN
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2877	2017-05-27 12:40:31.278	confluence-page-edited-batching
com.atlassian.confluence.plugins.confluence-highlight-actions	2878	2017-05-27 12:40:31.278	markSelectionModifier
com.atlassian.confluence.plugins.confluence-business-blueprints	2879	2017-05-27 12:40:31.278	decisions-blueprint
com.atlassian.auiplugin	2880	2017-05-27 12:40:31.278	deprecated-legacy-ajs-file
com.atlassian.streams.confluence	2881	2017-05-27 12:40:31.278	date-fr-CH
com.atlassian.confluence.keyboardshortcuts	2882	2017-05-27 12:40:31.278	toggle.space.sidebar
com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2883	2017-05-27 12:40:31.278	prettyurls-combined-filter-before-login
com.atlassian.confluence.plugins.confluence-inline-tasks	2884	2017-05-27 12:40:31.278	location-task-report-template
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2885	2017-05-27 12:40:31.278	personalInformationManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	2886	2017-05-27 12:40:31.278	logFileHelper
com.atlassian.confluence.plugins.confluence-easyuser-admin	2887	2017-05-27 12:40:31.278	add-users-button
confluence.listeners.core	2888	2017-05-27 12:40:31.278	userdirectorylistener
confluence.macros.advanced	2889	2017-05-27 12:40:31.278	xhtml-gallery
com.atlassian.streams.confluence	2890	2017-05-27 12:40:31.278	date-fr-CA
com.atlassian.confluence.plugins.confluence-onboarding	2891	2017-05-27 12:40:31.278	cqlSearchService
com.atlassian.confluence.plugins.confluence-view-file-macro	2892	2017-05-27 12:40:31.278	common
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2893	2017-05-27 12:40:31.278	comment-created-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-link-browser	2894	2017-05-27 12:40:31.278	link-browser-tab-recentlyviewed
com.atlassian.confluence.extra.officeconnector	2895	2017-05-27 12:40:31.278	officeauth
confluence.extra.impresence2	2896	2017-05-27 12:40:31.278	skype
com.atlassian.streams.confluence	2897	2017-05-27 12:40:31.278	date-vi-VN
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2898	2017-05-27 12:40:31.278	hostApplicationInformation
com.atlassian.auiplugin	2899	2017-05-27 12:40:31.278	dropdown
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2900	2017-05-27 12:40:31.278	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-mobile	2901	2017-05-27 12:40:31.278	webResourceManager
confluence.web.resources	2902	2017-05-27 12:40:31.278	syntaxhighlighter-xml
com.atlassian.streams	2903	2017-05-27 12:40:31.278	date-default
confluence.search.mappers.lucene	2904	2017-05-27 12:40:31.278	constantScore
com.atlassian.plugins.atlassian-nav-links-plugin	2905	2017-05-27 12:40:31.278	custom-apps-navigation-links
com.atlassian.confluence.plugins.confluence-email-resources	2906	2017-05-27 12:40:31.278	manage-notifications-email-footer-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2907	2017-05-27 12:40:31.278	monitorRepresentationFactory
com.atlassian.confluence.plugins.confluence-email-resources	2908	2017-05-27 12:40:31.278	notification-templates-comment-edit-1.0.0
com.atlassian.instrumentation.atlassian-instrumentation-expose-jmx	2909	2017-05-27 12:40:31.278	jmxInstrumentSchedulerImpl
com.atlassian.applinks.applinks-cors-plugin	2910	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.confluence.plugins.soy	2911	2017-05-27 12:40:31.278	soy-panels-for-location-soy-function
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2912	2017-05-27 12:40:31.278	upm-common-templates
com.atlassian.auiplugin	2913	2017-05-27 12:40:31.278	aui-experimental-header
com.atlassian.confluence.plugins.share-page	2914	2017-05-27 12:40:31.278	share-attachment-email-notification-template
com.atlassian.applinks.applinks-plugin	2915	2017-05-27 12:40:31.278	applinks-public
com.atlassian.confluence.plugins.gadgets	2916	2017-05-27 12:40:31.278	whitelist
com.atlassian.confluence.plugins.confluence-create-content-plugin	2917	2017-05-27 12:40:31.278	i18nBeanFactory
com.atlassian.streams.confluence	2918	2017-05-27 12:40:31.278	date-fr-BE
com.atlassian.confluence.plugins.view-storage-format	2919	2017-05-27 12:40:31.278	view-comment-storage-resources
com.atlassian.confluence.plugins.confluence-dashboard	2920	2017-05-27 12:40:31.278	react-dashboard-dependencies
com.atlassian.confluence.plugins.confluence-content-property-storage	2921	2017-05-27 12:40:31.278	contentproperty-by-contents-and-keys
com.atlassian.confluence.plugins.confluence-like	2922	2017-05-27 12:40:31.278	view-email-adg-content-item
com.atlassian.confluence.plugins.confluence-space-ia	2923	2017-05-27 12:40:31.278	soy-resources
com.atlassian.applinks.applinks-plugin	2924	2017-05-27 12:40:31.278	feature-v3-feedback-collector
com.atlassian.analytics.analytics-client	2925	2017-05-27 12:40:31.278	programmatic-analytics-init
com.atlassian.confluence.plugins.confluence-inline-tasks	2926	2017-05-27 12:40:31.278	task-email-notification-template
com.atlassian.confluence.ext.newcode-macro-plugin	2927	2017-05-27 12:40:31.278	sh-theme-rdark
com.atlassian.querylang.confluence-cql-plugin	2928	2017-05-27 12:40:31.278	none-query-mapper
com.atlassian.streams	2929	2017-05-27 12:40:31.278	date-sma-SE
confluence.extractors.core	2930	2017-05-27 12:40:31.278	lastModifierName Extractor
com.atlassian.streams.streams-thirdparty-plugin	2931	2017-05-27 12:40:31.278	activityServiceActiveObjects
confluence.extractors.core	2932	2017-05-27 12:40:31.278	htmlEntitiesFilterExtractor
com.atlassian.confluence.plugins.drag-and-drop	2933	2017-05-27 12:40:31.278	files-upload-analytics
crowd.system.passwordencoders	2934	2017-05-27 12:40:31.278	sha
com.atlassian.confluence.plugins.confluence-mobile	2935	2017-05-27 12:40:31.278	mobile-site-filter
com.atlassian.confluence.plugins.confluence-onboarding	2936	2017-05-27 12:40:31.278	userAccessor
com.atlassian.confluence.plugins.confluence-sal-plugin	2937	2017-05-27 12:40:31.278	authenticationListener
confluence.web.resources	2938	2017-05-27 12:40:31.278	draft-changes-css
com.atlassian.applinks.applinks-plugin	2939	2017-05-27 12:40:31.278	requestFactory
com.atlassian.confluence.plugins.confluence-link-browser	2940	2017-05-27 12:40:31.278	confluenceLinkBrowserWhitelist
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	2941	2017-05-27 12:40:31.278	dark-feature-rest-filter
com.atlassian.confluence.plugins.confluence-create-content-plugin	2942	2017-05-27 12:40:31.278	list-space-blueprints-templates-panel
com.atlassian.confluence.plugins.confluence-create-content-plugin	2943	2017-05-27 12:40:31.278	create-from-template-macro-browser-resources
com.atlassian.confluence.plugins.confluence-monitoring	2944	2017-05-27 12:40:31.278	cache-stats
com.atlassian.confluence.plugins.confluence-license-rest	2945	2017-05-27 12:40:31.278	licenseService
com.atlassian.analytics.analytics-client	2946	2017-05-27 12:40:31.278	whitelist-report-servlet
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2947	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-mentions-plugin	2948	2017-05-27 12:40:31.278	confluenceMentionsEventListener
confluence.sections.space	2949	2017-05-27 12:40:31.278	space-labels
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2950	2017-05-27 12:40:31.278	pluginHibernateSessionFactory
com.atlassian.confluence.plugins.confluence-create-content-plugin	2951	2017-05-27 12:40:31.278	create-blank-space-blueprint
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2952	2017-05-27 12:40:31.278	follower-added-notification
com.atlassian.plugins.rest.atlassian-rest-module	2953	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2954	2017-05-27 12:40:31.278	confluenceNotificationPreferenceManager
com.atlassian.applinks.applinks-cors-plugin	2955	2017-05-27 12:40:31.278	xsrfTokenAccessor
confluence.web.resources	2956	2017-05-27 12:40:31.278	page-move-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2957	2017-05-27 12:40:31.278	plugin-notifications
com.atlassian.auiplugin	2958	2017-05-27 12:40:31.278	ajs-zepto
com.atlassian.applinks.applinks-plugin	2959	2017-05-27 12:40:31.278	bamboo-project
com.atlassian.mywork.mywork-confluence-host-plugin	2960	2017-05-27 12:40:31.278	mwloginminiview
confluence.header.imagelinks	2961	2017-05-27 12:40:31.278	siteDarkFeatures
com.atlassian.streams.confluence	2962	2017-05-27 12:40:31.278	date-es-PY
com.atlassian.confluence.plugins.confluence-templates	2963	2017-05-27 12:40:31.278	template-editor-variables-template-resources
com.atlassian.confluence.plugins.confluence-inline-comments	2964	2017-05-27 12:40:31.278	notification-template-new-mail
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	2965	2017-05-27 12:40:31.278	notification-batching
com.atlassian.activeobjects.confluence.spi	2966	2017-05-27 12:40:31.278	activeObjectsBackupRestoreProvider
confluence.lifecycle.core	2967	2017-05-27 12:40:31.278	tenantawarejobrescheduler
com.atlassian.streams.confluence	2968	2017-05-27 12:40:31.278	date-es-PR
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	2969	2017-05-27 12:40:31.278	analyticsRenderContext
com.atlassian.applinks.applinks-trustedapps-plugin	2970	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	2971	2017-05-27 12:40:31.278	newcode-migration
confluence.extra.impresence2	2972	2017-05-27 12:40:31.278	wildfire-xhtml
com.atlassian.applinks.applinks-cors-plugin	2973	2017-05-27 12:40:31.278	appLinksCorsDefaults
com.atlassian.confluence.plugins.confluence-page-banner	2974	2017-05-27 12:40:31.278	soy-resources
confluence.comment.action	2975	2017-05-27 12:40:31.278	secondary
com.atlassian.confluence.plugins.recently-viewed-plugin	2976	2017-05-27 12:40:31.278	mobile-menu-panel
com.atlassian.applinks.applinks-plugin	2977	2017-05-27 12:40:31.278	feature-v3-list
com.atlassian.auiplugin	2978	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-form-validation-validator-register
confluence.web.resources	2979	2017-05-27 12:40:31.278	logger
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2980	2017-05-27 12:40:31.278	pluginLicenseEventPublisherPublishCheckEvent
com.atlassian.mywork.mywork-confluence-host-plugin	2981	2017-05-27 12:40:31.278	resources
com.atlassian.confluence.plugins.confluence-business-blueprints	2982	2017-05-27 12:40:31.278	localeManager
confluence.renderer.components	2983	2017-05-27 12:40:31.278	citation
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	2984	2017-05-27 12:40:31.278	webpanelDecorator
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	2985	2017-05-27 12:40:31.278	cachedContentLoader
confluence.user.menu	2986	2017-05-27 12:40:31.278	drafts
com.atlassian.confluence.plugins.confluence-create-content-plugin	2987	2017-05-27 12:40:31.278	pageContentTemplateService
com.atlassian.confluence.plugins.confluence-create-content-plugin	2988	2017-05-27 12:40:31.278	create-personal-space-blueprint
com.atlassian.confluence.keyboardshortcuts	2989	2017-05-27 12:40:31.278	help
com.atlassian.auiplugin	2990	2017-05-27 12:40:31.278	aui-page-typography
confluence.macros.advanced	2991	2017-05-27 12:40:31.278	contentbylabel-migrator
com.atlassian.confluence.extra.officeconnector	2992	2017-05-27 12:40:31.278	office-connector-css
com.atlassian.confluence.plugins.confluence-mobile	2993	2017-05-27 12:40:31.278	mobile-profile-filter
org.randombits.confluence.toc	2994	2017-05-27 12:40:31.278	toc-regex-migrator
com.atlassian.confluence.plugins.confluence-mobile	2995	2017-05-27 12:40:31.278	xmlStreamWriterTemplate
com.atlassian.confluence.plugins.confluence-highlight-actions	2996	2017-05-27 12:40:31.278	textMatcher
confluence.extra.attachments	2997	2017-05-27 12:40:31.278	attachments
confluence.extractors.core	2998	2017-05-27 12:40:31.278	titleExtractor
confluence.web.resources	2999	2017-05-27 12:40:31.278	lookandfeel
confluence.macros.dashboard	3000	2017-05-27 12:40:31.278	global-reports
com.atlassian.streams.confluence	3001	2017-05-27 12:40:31.278	date-es-PA
com.atlassian.plugins.atlassian-nav-links-plugin	3002	2017-05-27 12:40:31.278	remote-navigation-link-service
confluence.extractors.core	3003	2017-05-27 12:40:31.278	titleChangeExtractor
com.atlassian.applinks.applinks-plugin	3004	2017-05-27 12:40:31.278	applinks-components
com.atlassian.confluence.plugins.confluence-create-content-plugin	3005	2017-05-27 12:40:31.278	createContentPluginsWhitelist
com.atlassian.auiplugin	3006	2017-05-27 12:40:31.278	internal-aui-widget
confluence.extra.userlister	3007	2017-05-27 12:40:31.278	userlister-xhtml
com.atlassian.streams.confluence	3008	2017-05-27 12:40:31.278	date-es-PE
confluence.extra.information	3009	2017-05-27 12:40:31.278	tip
com.atlassian.auiplugin	3010	2017-05-27 12:40:31.278	jquery-form
com.atlassian.confluence.plugins.confluence-like	3011	2017-05-27 12:40:31.278	like-created-notification-transformer
com.atlassian.plugins.atlassian-nav-links-plugin	3012	2017-05-27 12:40:31.278	capability
confluence.web.resources	3013	2017-05-27 12:40:31.278	licensedetails
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3014	2017-05-27 12:40:31.278	defaultNotificationUserService
confluence.sections.space.browse	3015	2017-05-27 12:40:31.278	browse-personal-space
com.atlassian.confluence.plugins.confluence-ui-components	3016	2017-05-27 12:40:31.278	cql
com.atlassian.auiplugin	3017	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-query-input
confluence.macros.advanced	3018	2017-05-27 12:40:31.278	navmap
confluence.user.hover.menu	3019	2017-05-27 12:40:31.278	follow-tab
com.atlassian.confluence.plugins.confluence-email-resources	3020	2017-05-27 12:40:31.278	content-templates-content-title-pattern-2.0.0
com.atlassian.confluence.extra.flyingpdf	3021	2017-05-27 12:40:31.278	pdfexport-xmlrpc
com.atlassian.confluence.plugins.share-page	3022	2017-05-27 12:40:31.278	edit-resources
com.atlassian.streams.confluence	3023	2017-05-27 12:40:31.278	activitystream-gadget
com.atlassian.confluence.plugins.gadgets	3024	2017-05-27 12:40:31.278	clusterManager
com.atlassian.confluence.editor	3025	2017-05-27 12:40:31.278	editor-edit-only
com.atlassian.applinks.applinks-plugin	3026	2017-05-27 12:40:31.278	authConfigContainer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3027	2017-05-27 12:40:31.278	mailSender
confluence.macros.advanced	3028	2017-05-27 12:40:31.278	xhtml-recently-updated
com.atlassian.confluence.plugins.share-page	3029	2017-05-27 12:40:31.278	dialog-async-loader
confluence.extra.masterdetail	3030	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.streams.confluence	3031	2017-05-27 12:40:31.278	date-es-MX
com.atlassian.streams.confluence	3032	2017-05-27 12:40:31.278	streamsEntryRendererFactory
com.atlassian.auiplugin	3033	2017-05-27 12:40:31.278	aui-experimental-tooltips
com.atlassian.plugins.atlassian-nav-links-plugin	3034	2017-05-27 12:40:31.278	capabilities-cache-loader
confluence.listeners.core	3035	2017-05-27 12:40:31.278	updateAttachmentsOnFilesystemOnPageMoveListener
com.atlassian.plugins.atlassian-nav-links-plugin	3036	2017-05-27 12:40:31.278	typeAccessor
com.atlassian.streams.confluence	3037	2017-05-27 12:40:31.278	date-es-NI
com.atlassian.plugins.atlassian-project-creation-plugin	3038	2017-05-27 12:40:31.278	project-creation-capability
com.atlassian.oauth.serviceprovider	3039	2017-05-27 12:40:31.278	tokenStore
com.atlassian.confluence.plugins.confluence-monitoring-console	3040	2017-05-27 12:40:31.278	monitoring-console-actions
com.atlassian.confluence.extra.widgetconnector	3041	2017-05-27 12:40:31.278	yahoovideo
com.atlassian.applinks.applinks-trustedapps-plugin	3042	2017-05-27 12:40:31.278	trusted-auth
com.atlassian.confluence.plugins.confluence-email-resources	3043	2017-05-27 12:40:31.278	chrome-template-header-pattern-2.0.0
com.atlassian.plugins.atlassian-whitelist-ui-plugin	3044	2017-05-27 12:40:31.278	confluence-whitelist
com.atlassian.streams.confluence	3045	2017-05-27 12:40:31.278	date-sv-FI
com.atlassian.confluence.plugins.confluence-highlight-actions	3046	2017-05-27 12:40:31.278	action-panel
com.atlassian.mywork.mywork-common-plugin	3047	2017-05-27 12:40:31.278	internalHostApplication
com.atlassian.streams	3048	2017-05-27 12:40:31.278	streams-parent-js
com.atlassian.auiplugin	3049	2017-05-27 12:40:31.278	aui-help
com.atlassian.confluence.plugins.confluence-business-blueprints	3050	2017-05-27 12:40:31.278	decisions-resources
com.atlassian.confluence.plugins.confluence-sal-plugin	3051	2017-05-27 12:40:31.278	salUserManager
com.atlassian.querylang.confluence-cql-plugin	3052	2017-05-27 12:40:31.278	mention-field
com.atlassian.querylang.confluence-cql-plugin	3053	2017-05-27 12:40:31.278	attachment-filesize-field
confluence.extra.masterdetail	3054	2017-05-27 12:40:31.278	detailssummary-xhtml
com.atlassian.applinks.applinks-plugin	3055	2017-05-27 12:40:31.278	supported-inbound-authentication
com.atlassian.querylang.confluence-cql-plugin	3056	2017-05-27 12:40:31.278	start-of-week-one-arg-function
confluence.macros.advanced	3057	2017-05-27 12:40:31.278	blog-post
confluence.web.resources	3058	2017-05-27 12:40:31.278	page-ordering-tree
com.atlassian.mywork.mywork-confluence-host-plugin	3059	2017-05-27 12:40:31.278	task-service
com.atlassian.support.healthcheck.support-healthcheck-plugin	3060	2017-05-27 12:40:31.278	operatingSystemInfo
com.atlassian.confluence.plugins.quickreload	3061	2017-05-27 12:40:31.278	rest
confluence.macros.advanced	3062	2017-05-27 12:40:31.278	xhtml-children
com.atlassian.streams	3063	2017-05-27 12:40:31.278	date-mn-MN
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3064	2017-05-27 12:40:31.278	dispatchService
confluence.sections.space.tools	3065	2017-05-27 12:40:31.278	layouts
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3066	2017-05-27 12:40:31.278	plugin-osgi-servlet
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	3067	2017-05-27 12:40:31.278	healthmonitor-template
com.atlassian.confluence.plugins.confluence-create-content-plugin	3068	2017-05-27 12:40:31.278	requestStorage
com.atlassian.plugins.base-hipchat-integration-plugin	3069	2017-05-27 12:40:31.278	plugin-resource-url
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3070	2017-05-27 12:40:31.278	pluginInstallationService
com.atlassian.confluence.plugins.confluence-mobile	3071	2017-05-27 12:40:31.278	userDtoFactory
com.atlassian.confluence.extra.officeconnector	3072	2017-05-27 12:40:31.278	file-viewer-plugin
com.atlassian.plugins.base-hipchat-integration-plugin	3073	2017-05-27 12:40:31.278	web-panel-soy-function
com.atlassian.streams.confluence	3074	2017-05-27 12:40:31.278	salUserManager
confluence.listeners.core	3075	2017-05-27 12:40:31.278	userremovallistener
confluence.search.mappers.lucene	3076	2017-05-27 12:40:31.278	userText
com.atlassian.confluence.extra.widgetconnector	3077	2017-05-27 12:40:31.278	mockingbird
com.atlassian.confluence.plugins.confluence-email-resources	3078	2017-05-27 12:40:31.278	content-templates-actions-pattern-1.0.0
com.atlassian.streams.confluence	3079	2017-05-27 12:40:31.278	date-es-SV
com.atlassian.jwt.jwt-plugin	3080	2017-05-27 12:40:31.278	jwtAuthFilter
com.atlassian.confluence.plugins.confluence-email-resources	3081	2017-05-27 12:40:31.278	content-templates-inline-user-pattern-2.0.0
com.atlassian.applinks.applinks-plugin	3082	2017-05-27 12:40:31.278	webSudoManager
com.atlassian.confluence.plugins.confluence-email-resources	3083	2017-05-27 12:40:31.278	change-settings-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3084	2017-05-27 12:40:31.278	comment-created-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-content-property-storage	3085	2017-05-27 12:40:31.278	contentproperty-by-content
com.atlassian.confluence.extra.officeconnector	3086	2017-05-27 12:40:31.278	editattachmentinworditempathauth
com.atlassian.plugin.jslibs	3087	2017-05-27 12:40:31.278	moment-2.6.0
com.atlassian.confluence.plugins.confluence-like	3088	2017-05-27 12:40:31.278	like-email-soy-templates
com.atlassian.plugin.notifications.notifications-module	3089	2017-05-27 12:40:31.278	tx-processor
confluence.macros.dashboard	3090	2017-05-27 12:40:31.278	confluenceDashboardMacrosRest-filter
com.atlassian.plugins.atlassian-nav-links-plugin	3091	2017-05-27 12:40:31.278	navigation-links-cache-loader
com.atlassian.confluence.plugins.confluence-inline-comments	3092	2017-05-27 12:40:31.278	reply-to-comment-email-adg-footer-item
com.atlassian.querylang.confluence-cql-plugin	3093	2017-05-27 12:40:31.278	ancestorId-query-mapper
com.atlassian.confluence.plugins.confluence-space-directory	3094	2017-05-27 12:40:31.278	space-directory-rest-filter
confluence.listeners.core	3095	2017-05-27 12:40:31.278	rpcConfigurationListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	3096	2017-05-27 12:40:31.278	requestFactory
confluence.sections.profile.view	3097	2017-05-27 12:40:31.278	profile-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3098	2017-05-27 12:40:31.278	executorFactory
com.atlassian.confluence.plugins.confluence-onboarding	3099	2017-05-27 12:40:31.278	onboarding-notification-no-spaces
com.atlassian.applinks.applinks-oauth-plugin	3100	2017-05-27 12:40:31.278	confluence-inbound-two-legged-oauth-with-impersonation
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3101	2017-05-27 12:40:31.278	blogpost-created-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-jira-content	3102	2017-05-27 12:40:31.278	common-resource
com.atlassian.mywork.mywork-confluence-provider-plugin	3103	2017-05-27 12:40:31.278	notificationService
com.atlassian.support.healthcheck.support-healthcheck-plugin	3104	2017-05-27 12:40:31.278	tx-processor
com.atlassian.confluence.plugins.confluence-required-health-checks	3105	2017-05-27 12:40:31.278	requiredHealthChecksSupplier
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3106	2017-05-27 12:40:31.278	delete-soy
com.atlassian.confluence.editor	3107	2017-05-27 12:40:31.278	image-properties-web-items
com.atlassian.querylang.confluence-cql-plugin	3108	2017-05-27 12:40:31.278	end-of-year-one-arg-function
com.atlassian.auiplugin	3109	2017-05-27 12:40:31.278	ajs-underscorejs
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3110	2017-05-27 12:40:31.278	analytics-link-builder
com.atlassian.gadgets.opensocial	3111	2017-05-27 12:40:31.278	gadget-rendering-servlet
com.atlassian.oauth.serviceprovider	3112	2017-05-27 12:40:31.278	tokenLoader
com.atlassian.mywork.mywork-confluence-host-plugin	3113	2017-05-27 12:40:31.278	pluginScheduler
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3114	2017-05-27 12:40:31.278	serviceAccessor
com.atlassian.confluence.plugins.view-storage-format	3115	2017-05-27 12:40:31.278	viewstorageActions
com.atlassian.confluence.plugins.confluence-license-rest	3116	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.auiplugin	3117	2017-05-27 12:40:31.278	jquery-ui
com.atlassian.auiplugin	3118	2017-05-27 12:40:31.278	aui-core
com.atlassian.confluence.plugins.confluence-quicknav	3119	2017-05-27 12:40:31.278	contentNameSearchService
com.atlassian.plugins.atlassian-nav-links-plugin	3120	2017-05-27 12:40:31.278	content-links-rest
com.atlassian.gadgets.directory	3121	2017-05-27 12:40:31.278	gadgets-directory-admin-servlet
com.atlassian.confluence.plugins.confluence-like	3122	2017-05-27 12:40:31.278	manage-like-notifications-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-business-blueprints	3123	2017-05-27 12:40:31.278	sharelinks-blueprint-widget-connector-support
confluence.extra.impresence2	3124	2017-05-27 12:40:31.278	reporter-skypeme
com.atlassian.confluence.plugins.confluence-knowledge-base	3125	2017-05-27 12:40:31.278	kb-blueprint-item
com.atlassian.applinks.applinks-plugin	3126	2017-05-27 12:40:31.278	applinks-common-exported
com.atlassian.mywork.mywork-confluence-host-plugin	3127	2017-05-27 12:40:31.278	tx-processor
com.atlassian.auiplugin	3128	2017-05-27 12:40:31.278	aui-focus-manager
confluence.sections.space.tools	3129	2017-05-27 12:40:31.278	trash
com.atlassian.applinks.applinks-plugin	3130	2017-05-27 12:40:31.278	applinks-ui
com.atlassian.streams.streams-thirdparty-plugin	3131	2017-05-27 12:40:31.278	streamsI18nResolver
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3132	2017-05-27 12:40:31.278	objectMapperFactory
com.atlassian.confluence.plugins.confluence-space-blueprints	3133	2017-05-27 12:40:31.278	DocumentationSpaceHomePageEventListener
com.atlassian.confluence.plugins.confluence-create-content-plugin	3134	2017-05-27 12:40:31.278	show-blueprint-index-popup-flag
com.atlassian.streams.streams-thirdparty-plugin	3135	2017-05-27 12:40:31.278	linkBuilder
confluence.macros.advanced	3136	2017-05-27 12:40:31.278	index
com.atlassian.streams.confluence	3137	2017-05-27 12:40:31.278	date-es-HN
com.atlassian.plugins.atlassian-nav-links-plugin	3138	2017-05-27 12:40:31.278	confluence-custom-apps-manage-menu
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	3139	2017-05-27 12:40:31.278	keyboardShortcutManager
com.atlassian.applinks.applinks-basicauth-plugin	3140	2017-05-27 12:40:31.278	basicAuthUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-create-content-plugin	3141	2017-05-27 12:40:31.278	list-system-templates-panel
confluence.macros.dashboard	3142	2017-05-27 12:40:31.278	confluenceDashboardMacrosWhitelist
com.atlassian.confluence.plugins.confluence-onboarding	3143	2017-05-27 12:40:31.278	find-relevant-spaces-service
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	3144	2017-05-27 12:40:31.278	pluginModuleEventListener
com.atlassian.streams	3145	2017-05-27 12:40:31.278	date-uk-UA
com.atlassian.support.healthcheck.support-healthcheck-plugin	3146	2017-05-27 12:40:31.278	pluginScheduler
com.atlassian.streams	3147	2017-05-27 12:40:31.278	rest
com.atlassian.oauth.serviceprovider	3148	2017-05-27 12:40:31.278	stringEscapeUtil
com.atlassian.streams.confluence	3149	2017-05-27 12:40:31.278	date-es-GT
confluence.web.resources	3150	2017-05-27 12:40:31.278	quick-nav
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3151	2017-05-27 12:40:31.278	requestFactory
confluence.listeners.core	3152	2017-05-27 12:40:31.278	admin-audit-logging-listener
com.atlassian.oauth.consumer.sal	3153	2017-05-27 12:40:31.278	consumerService
com.atlassian.confluence.plugins.confluence-knowledge-base	3154	2017-05-27 12:40:31.278	kb-blueprint
com.atlassian.querylang.confluence-cql-plugin	3155	2017-05-27 12:40:31.278	now-one-arg-function
com.atlassian.auiplugin	3156	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-log
com.atlassian.confluence.plugins.confluence-mentions-plugin	3157	2017-05-27 12:40:31.278	notificationService
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3158	2017-05-27 12:40:31.278	notification
com.atlassian.mywork.mywork-confluence-provider-plugin	3159	2017-05-27 12:40:31.278	confluenceEventRegister
com.atlassian.support.healthcheck.support-healthcheck-plugin	3160	2017-05-27 12:40:31.278	fileSystemInfo
com.atlassian.confluence.plugins.confluence-view-file-macro	3161	2017-05-27 12:40:31.278	unknownAttachmentFilePlaceholderMarshaller
com.atlassian.confluence.plugins.confluence-templates	3162	2017-05-27 12:40:31.278	view-template-styles
confluence.web.resources	3163	2017-05-27 12:40:31.278	dictionary
com.atlassian.confluence.plugins.confluence-create-content-plugin	3164	2017-05-27 12:40:31.278	resources
com.atlassian.plugins.atlassian-plugins-webresource-plugin	3165	2017-05-27 12:40:31.278	web-resource-manager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3166	2017-05-27 12:40:31.278	forgot-password-notification-template-body
com.atlassian.streams.streams-thirdparty-plugin	3167	2017-05-27 12:40:31.278	thirdparty
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3168	2017-05-27 12:40:31.278	hipchat-space-context
confluence.content.action.menu	3169	2017-05-27 12:40:31.278	marker
com.atlassian.confluence.plugins.confluence-request-access-plugin	3170	2017-05-27 12:40:31.278	grant-access-notification-email-template
confluence.macros.basic	3171	2017-05-27 12:40:31.278	cheese
com.atlassian.confluence.plugins.confluence-schedule-admin	3172	2017-05-27 12:40:31.278	scheduled-admin-xwork
confluence.macro.metadata.provider	3173	2017-05-27 12:40:31.278	macroMetadataProvider
com.atlassian.applinks.applinks-plugin	3174	2017-05-27 12:40:31.278	confluence-inbound-two-legged-oauth-with-impersonation
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3175	2017-05-27 12:40:31.278	confluence-collaborative-editor-opt-in
com.atlassian.confluence.plugins.confluence-email-resources	3176	2017-05-27 12:40:31.278	view-content-changes-email-batch-item
com.atlassian.confluence.plugins.confluence-email-resources	3177	2017-05-27 12:40:31.278	notification-templates-page-edit-1.0.0
com.atlassian.analytics.analytics-client	3178	2017-05-27 12:40:31.278	programmatic-analytics
com.atlassian.confluence.plugins.view-storage-format	3179	2017-05-27 12:40:31.278	view-storage
com.atlassian.confluence.plugins.confluence-templates	3180	2017-05-27 12:40:31.278	editTransformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3181	2017-05-27 12:40:31.278	upm-install-templates
confluence.sections.space.admin	3182	2017-05-27 12:40:31.278	import
confluence.sections.settings.edit	3183	2017-05-27 12:40:31.278	changepassword
confluence.sections.space.advanced	3184	2017-05-27 12:40:31.278	space-attachments
com.atlassian.confluence.plugins.confluence-lookandfeel	3185	2017-05-27 12:40:31.278	default-sitelogo-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3186	2017-05-27 12:40:31.278	versioned-resource
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3187	2017-05-27 12:40:31.278	dataSourceFactory
confluence.search.mappers.lucene	3188	2017-05-27 12:40:31.278	prefixSearchFilter
com.atlassian.streams.confluence	3189	2017-05-27 12:40:31.278	date-es-ES
com.atlassian.confluence.plugins.drag-and-drop	3190	2017-05-27 12:40:31.278	drop-zone-for-view-attachments
confluence.web.resources	3191	2017-05-27 12:40:31.278	view-content
com.atlassian.streams.actions	3192	2017-05-27 12:40:31.278	streamsLocaleProvider
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	3193	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.confluence.plugins.confluence-sal-plugin	3194	2017-05-27 12:40:31.278	pluginHibernateSessionFactory
confluence.web.resources	3195	2017-05-27 12:40:31.278	aui-forms
confluence.web.resources	3196	2017-05-27 12:40:31.278	tooltip
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3197	2017-05-27 12:40:31.278	confluence-upm-requests-menu
com.atlassian.confluence.plugins.drag-and-drop	3198	2017-05-27 12:40:31.278	support
com.atlassian.confluence.plugins.confluence-email-resources	3199	2017-05-27 12:40:31.278	content-templates-primary-button-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3200	2017-05-27 12:40:31.278	dialogManager
com.atlassian.confluence.plugins.confluence-view-file-macro	3201	2017-05-27 12:40:31.278	defaultFilePlaceholderMarshaller
com.atlassian.oauth.serviceprovider	3202	2017-05-27 12:40:31.278	loginRedirector
com.atlassian.confluence.plugins.confluence-mobile	3203	2017-05-27 12:40:31.278	xmlEventReaderFactory
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3204	2017-05-27 12:40:31.278	confluenceUserPreferencesManager
confluence.web.resources	3205	2017-05-27 12:40:31.278	cssSubstitution
confluence.converters.core	3206	2017-05-27 12:40:31.278	user-status-converter
com.atlassian.confluence.editor	3207	2017-05-27 12:40:31.278	editor-autocomplete-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3208	2017-05-27 12:40:31.278	page-created-hipchat-notification-template
com.atlassian.confluence.plugins.drag-and-drop	3209	2017-05-27 12:40:31.278	drag-and-drop-for-view-content
confluence.sections.admin	3210	2017-05-27 12:40:31.278	defaultspacelogo
com.atlassian.confluence.plugins.confluence-highlight-actions	3211	2017-05-27 12:40:31.278	darkFeaturesManager
confluence.sections.user.follow.list	3212	2017-05-27 12:40:31.278	resources
confluence.macros.advanced	3213	2017-05-27 12:40:31.278	popular-labels-resources
com.atlassian.applinks.applinks-plugin	3214	2017-05-27 12:40:31.278	adminUIAuthenticator
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3215	2017-05-27 12:40:31.278	bootstrap-resource
com.atlassian.plugins.atlassian-nav-links-plugin	3216	2017-05-27 12:40:31.278	administration-shortcuts
confluence.extra.impresence2	3217	2017-05-27 12:40:31.278	yahoo
com.atlassian.plugins.atlassian-whitelist-ui-plugin	3218	2017-05-27 12:40:31.278	whitelist-bootstrap-template
com.atlassian.confluence.plugins.confluence-dashboard	3219	2017-05-27 12:40:31.278	svgContentTypeServletFilter
com.atlassian.confluence.plugins.confluence-jira-content	3220	2017-05-27 12:40:31.278	ao-module
confluence.sections.space.advanced	3221	2017-05-27 12:40:31.278	spacedetails
com.atlassian.confluence.plugins.confluence-mentions-plugin	3222	2017-05-27 12:40:31.278	notificationUserService
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	3223	2017-05-27 12:40:31.278	confluence-feature-discovery-plugin-features-meta
com.atlassian.confluence.plugins.confluence-required-health-checks	3224	2017-05-27 12:40:31.278	requiredHealthChecksEnabledCheck
com.atlassian.confluence.plugins.confluence-baseurl-plugin	3225	2017-05-27 12:40:31.278	confluenceBaseUrlWhitelist
com.atlassian.streams	3226	2017-05-27 12:40:31.278	date-tt-RU
confluence.extra.jira	3227	2017-05-27 12:40:31.278	jqlHelper
crowd.system.passwordencoders	3228	2017-05-27 12:40:31.278	bcrypt
com.atlassian.streams	3229	2017-05-27 12:40:31.278	feedBuilder
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3230	2017-05-27 12:40:31.278	views
com.atlassian.confluence.plugins.confluence-nav-links	3231	2017-05-27 12:40:31.278	rotp-menu
com.atlassian.templaterenderer.api	3232	2017-05-27 12:40:31.278	webResourceUrlProvider
com.atlassian.confluence.plugins.confluence-business-blueprints	3233	2017-05-27 12:40:31.278	linkMetadataExtractor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3234	2017-05-27 12:40:31.278	spaceManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	3235	2017-05-27 12:40:31.278	user-multiselect
com.atlassian.confluence.extra.officeconnector	3236	2017-05-27 12:40:31.278	ppt2k7ContentExtractor
com.atlassian.plugins.atlassian-whitelist-core-plugin	3237	2017-05-27 12:40:31.278	applicationLinkChangeListener
com.atlassian.streams	3238	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	3239	2017-05-27 12:40:31.278	notification-templates-comment-remove-1.0.0
com.atlassian.confluence.plugins.share-page	3240	2017-05-27 12:40:31.278	view-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3241	2017-05-27 12:40:31.278	hostLicenseUpdatedHandler
com.atlassian.confluence.plugins.synchrony-interop	3242	2017-05-27 12:40:31.278	synchrony-status-banner-loader
com.atlassian.mywork.mywork-common-plugin	3243	2017-05-27 12:40:31.278	thread-local-delegate-executor-factory
com.atlassian.confluence.plugins.confluence-email-resources	3244	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.confluence.plugins.confluence-edge-index	3245	2017-05-27 12:40:31.278	mobile-can-use-rest-filter
confluence.listeners.core	3246	2017-05-27 12:40:31.278	space-audit-logging-listener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3247	2017-05-27 12:40:31.278	tokenManager
com.atlassian.analytics.analytics-client	3248	2017-05-27 12:40:31.278	event-checklist-servlet
confluence.web.resources	3249	2017-05-27 12:40:31.278	drop-down
com.atlassian.querylang.confluence-cql-plugin	3250	2017-05-27 12:40:31.278	ancestor-field
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3251	2017-05-27 12:40:31.278	purchased-addons-servlet
com.atlassian.streams	3252	2017-05-27 12:40:31.278	date-pt-BR
com.atlassian.plugins.less-transformer-plugin	3253	2017-05-27 12:40:31.278	lessTransformer
com.atlassian.confluence.plugins.confluence-email-resources	3254	2017-05-27 12:40:31.278	notifications-cluster-node-name-function
com.atlassian.analytics.analytics-client	3255	2017-05-27 12:40:31.278	event-checklist
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3256	2017-05-27 12:40:31.278	privateListingsUpgradeTask
com.atlassian.mywork.mywork-confluence-host-plugin	3257	2017-05-27 12:40:31.278	userDao
com.atlassian.confluence.plugins.confluence-dashboard	3258	2017-05-27 12:40:31.278	footer-analytics
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3259	2017-05-27 12:40:31.278	addonMarketplaceQueries
confluence.extractors.core	3260	2017-05-27 12:40:31.278	labelChangeExtractor
com.atlassian.gadgets.opensocial	3261	2017-05-27 12:40:31.278	make-request-servlet
com.atlassian.streams.confluence	3262	2017-05-27 12:40:31.278	date-hy-AM
com.atlassian.confluence.plugins.confluence-email-tracker	3263	2017-05-27 12:40:31.278	resources
com.atlassian.confluence.plugins.confluence-email-resources	3264	2017-05-27 12:40:31.278	change-settings-email-footer-item
com.atlassian.confluence.plugins.confluence-knowledge-base	3265	2017-05-27 12:40:31.278	kb-how-to-item
com.atlassian.streams.confluence	3266	2017-05-27 12:40:31.278	date-sk-SK
com.atlassian.confluence.plugins.confluence-email-resources	3267	2017-05-27 12:40:31.278	chrome-template-footer-pattern-2.0.0
confluence.sections.admin	3268	2017-05-27 12:40:31.278	backup
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3269	2017-05-27 12:40:31.278	fetch
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3270	2017-05-27 12:40:31.278	urlReadingJavascriptTemplateWebResourceTransformer
confluence.extra.jira	3271	2017-05-27 12:40:31.278	jirachart-xhtml
com.atlassian.confluence.plugins.confluence-sal-plugin	3272	2017-05-27 12:40:31.278	pluginScheduler
com.atlassian.streams.confluence	3273	2017-05-27 12:40:31.278	date-sv-SE
com.atlassian.streams.confluence	3274	2017-05-27 12:40:31.278	date-js
com.atlassian.confluence.plugins.gadgets	3275	2017-05-27 12:40:31.278	subscribedGadgetFeedStore
com.atlassian.confluence.plugins.gadgets	3276	2017-05-27 12:40:31.278	tenantRegistry
com.atlassian.confluence.plugins.confluence-inline-comments	3277	2017-05-27 12:40:31.278	like-inline-comment-batch-email-action
com.atlassian.oauth.consumer.sal	3278	2017-05-27 12:40:31.278	hostConsumerAndSecretProvider
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3279	2017-05-27 12:40:31.278	configuration-resources
com.atlassian.confluence.plugins.share-page	3280	2017-05-27 12:40:31.278	share-content-plugin-icons
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	3281	2017-05-27 12:40:31.278	internalAdminCheckFallback
com.atlassian.streams.confluence	3282	2017-05-27 12:40:31.278	date-gl-ES
confluence.macros.advanced	3283	2017-05-27 12:40:31.278	recently-updated-social-resources
com.atlassian.auiplugin	3284	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-jquery-jquery-ui-jquery-ui-datepicker
com.atlassian.mywork.mywork-confluence-host-plugin	3285	2017-05-27 12:40:31.278	mailNotificationService
com.atlassian.confluence.plugins.confluence-like	3286	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	3287	2017-05-27 12:40:31.278	velocity-1.6-web-panel-renderer
com.atlassian.confluence.plugins.search.confluence-search	3288	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.confluence.editor	3289	2017-05-27 12:40:31.278	editor-location
com.atlassian.confluence.editor	3290	2017-05-27 12:40:31.278	macro-icon-placeholder
com.atlassian.confluence.plugins.drag-and-drop	3291	2017-05-27 12:40:31.278	drag-and-drop-resource-filter
com.atlassian.confluence.plugins.confluence-email-resources	3292	2017-05-27 12:40:31.278	space-logo-image-function
confluence.extra.masterdetail	3293	2017-05-27 12:40:31.278	cachingDetailsManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	3294	2017-05-27 12:40:31.278	salUserManager
com.atlassian.oauth.serviceprovider	3295	2017-05-27 12:40:31.278	expiredTokenRemoverScheduler
com.atlassian.confluence.extra.widgetconnector	3296	2017-05-27 12:40:31.278	widgetbox
com.atlassian.confluence.plugins.confluence-create-content-plugin	3297	2017-05-27 12:40:31.278	spaceBlueprintCreationListener
com.atlassian.confluence.plugins.confluence-software-blueprints	3298	2017-05-27 12:40:31.278	jirareports-changelog-dynamic
com.atlassian.confluence.plugins.confluence-space-ia	3299	2017-05-27 12:40:31.278	spacebar-pages
com.atlassian.applinks.applinks-plugin	3300	2017-05-27 12:40:31.278	applinks-new-table
confluence.sections.space.pages	3301	2017-05-27 12:40:31.278	list-alphabetically
com.atlassian.plugins.atlassian-nav-links-plugin	3302	2017-05-27 12:40:31.278	is-side-bar-enabled
com.atlassian.streams.core	3303	2017-05-27 12:40:31.278	streamsFeedUriBuilderFactory
com.atlassian.streams	3304	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.confluence.plugins.confluence-business-blueprints	3305	2017-05-27 12:40:31.278	common-template-resources
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	3306	2017-05-27 12:40:31.278	projectmonitor-template
com.atlassian.plugins.atlassian-nav-links-plugin	3307	2017-05-27 12:40:31.278	navigation-capability
com.atlassian.streams	3308	2017-05-27 12:40:31.278	date-lt-LT
confluence.extra.impresence2	3309	2017-05-27 12:40:31.278	sametime
com.atlassian.confluence.plugins.confluence-like	3310	2017-05-27 12:40:31.278	liked-page-action-reply-to-comment-link
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3311	2017-05-27 12:40:31.278	threadLocalDelegateExecutorFactory
com.atlassian.auiplugin	3312	2017-05-27 12:40:31.278	aui-header
com.atlassian.confluence.plugins.gadgets	3313	2017-05-27 12:40:31.278	gadgetViewFactory
com.atlassian.gadgets.directory	3314	2017-05-27 12:40:31.278	gadget-directory-admin-client-main
com.atlassian.streams	3315	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3316	2017-05-27 12:40:31.278	hipchat-space-to-room-global-install
com.atlassian.confluence.plugins.confluence-email-resources	3317	2017-05-27 12:40:31.278	template-utils-avatar-name-table-2.0.0
com.atlassian.confluence.plugins.confluence-mentions-plugin	3318	2017-05-27 12:40:31.278	mentions-hipchat-soy-templates-2
com.atlassian.confluence.plugins.confluence-content-property-storage	3319	2017-05-27 12:40:31.278	contentproperty-by-key
com.atlassian.confluence.plugins.confluence-sal-plugin	3320	2017-05-27 12:40:31.278	salHttpContext
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	3321	2017-05-27 12:40:31.278	shortcuts
com.atlassian.auiplugin	3322	2017-05-27 12:40:31.278	aui-reset
com.atlassian.confluence.plugins.confluence-labels	3323	2017-05-27 12:40:31.278	labels-actions
confluence.aui.staging	3324	2017-05-27 12:40:31.278	skate
com.atlassian.confluence.plugins.confluence-labels	3325	2017-05-27 12:40:31.278	view-labels-all-system
com.atlassian.confluence.plugins.confluence-ui-components	3326	2017-05-27 12:40:31.278	label-picker
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3327	2017-05-27 12:40:31.278	is-room-notify-client-enabled-soy-function
com.atlassian.confluence.plugins.confluence-cache-management-plugin	3328	2017-05-27 12:40:31.278	client-resources
com.atlassian.confluence.plugins.confluence-user-profile	3329	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.confluence.plugins.confluence-space-blueprints	3330	2017-05-27 12:40:31.278	documentation-space-blueprint
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3331	2017-05-27 12:40:31.278	transformer
com.atlassian.confluence.plugins.confluence-create-content-plugin	3332	2017-05-27 12:40:31.278	user-templates-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3333	2017-05-27 12:40:31.278	http-cache-expiry-service
confluence.content.action.menu	3334	2017-05-27 12:40:31.278	word-export
com.atlassian.streams.confluence	3335	2017-05-27 12:40:31.278	spaceRendererFactory
com.atlassian.applinks.applinks-plugin	3336	2017-05-27 12:40:31.278	applinks-new-ui-utils
com.atlassian.plugins.atlassian-whitelist-core-plugin	3337	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.auiplugin	3338	2017-05-27 12:40:31.278	aui-experimental-mobile
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3339	2017-05-27 12:40:31.278	confluence-collaborative-editor-api-rest-filter
confluence.extra.dynamictasklist2	3340	2017-05-27 12:40:31.278	web-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3341	2017-05-27 12:40:31.278	blogpost-created-notification-template
confluence.sections.admin.tasks	3342	2017-05-27 12:40:31.278	marketplaceAdminTask
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3343	2017-05-27 12:40:31.278	pluginMetaDataManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3344	2017-05-27 12:40:31.278	email-source-param-function
com.atlassian.confluence.plugins.confluence-labels	3345	2017-05-27 12:40:31.278	view-all-content-with-label
confluence.sections.profile	3346	2017-05-27 12:40:31.278	edit-notifications-profile
com.atlassian.applinks.applinks-plugin	3347	2017-05-27 12:40:31.278	applinks-v2-shim
com.atlassian.streams	3348	2017-05-27 12:40:31.278	date-mk-MK
com.atlassian.confluence.extra.flyingpdf	3349	2017-05-27 12:40:31.278	pdfExportLongRunningTaskFactory
com.atlassian.mywork.mywork-confluence-host-plugin	3350	2017-05-27 12:40:31.278	mwnotificationsminiview
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3351	2017-05-27 12:40:31.278	localeManager
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3352	2017-05-27 12:40:31.278	config-resource
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3353	2017-05-27 12:40:31.278	plugin-manager-servlet
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	3354	2017-05-27 12:40:31.278	projectposter-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3355	2017-05-27 12:40:31.278	html-service
com.atlassian.confluence.plugins.expand-macro	3356	2017-05-27 12:40:31.278	expand
com.atlassian.confluence.plugins.confluence-mobile	3357	2017-05-27 12:40:31.278	mobile-can-use-rest-filter
confluence.extra.jira	3358	2017-05-27 12:40:31.278	jirachart
com.atlassian.mywork.mywork-confluence-host-plugin	3359	2017-05-27 12:40:31.278	userApplicationLinkDao
com.atlassian.plugins.atlassian-help-tips	3360	2017-05-27 12:40:31.278	helptips-filter
com.atlassian.confluence.plugins.confluence-previews	3361	2017-05-27 12:40:31.278	version-navigation-plugin
com.atlassian.querylang.confluence-cql-plugin	3362	2017-05-27 12:40:31.278	space-type-field
com.atlassian.streams.confluence	3363	2017-05-27 12:40:31.278	date-es-DO
com.atlassian.confluence.plugins.gadgets	3364	2017-05-27 12:40:31.278	requestContextBuilder
com.atlassian.auiplugin	3365	2017-05-27 12:40:31.278	internal-basic-css
com.atlassian.confluence.keyboardshortcuts	3366	2017-05-27 12:40:31.278	tinymce.blockquote
com.atlassian.mywork.mywork-confluence-host-plugin	3367	2017-05-27 12:40:31.278	myWorkAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-daily-summary-email	3368	2017-05-27 12:40:31.278	chrome-template
com.atlassian.auiplugin	3369	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-registry
com.atlassian.auiplugin	3370	2017-05-27 12:40:31.278	aui-badge
com.atlassian.confluence.plugins.confluence-labels	3371	2017-05-27 12:40:31.278	soy-label-link-server-function
com.atlassian.streams	3372	2017-05-27 12:40:31.278	date-en-AU
com.atlassian.oauth.serviceprovider	3373	2017-05-27 12:40:31.278	localeResolver
confluence.web.resources	3374	2017-05-27 12:40:31.278	colours-transformer
com.atlassian.support.healthcheck.support-healthcheck-plugin	3375	2017-05-27 12:40:31.278	salI18nResolver
confluence.web.components	3376	2017-05-27 12:40:31.278	property-panel-js
confluence.extra.chart	3377	2017-05-27 12:40:31.278	chart-xhtml
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	3378	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.auiplugin	3379	2017-05-27 12:40:31.278	aui-page-layout
com.atlassian.plugins.base-hipchat-integration-plugin	3380	2017-05-27 12:40:31.278	configure-integration-data
com.atlassian.streams.confluence	3381	2017-05-27 12:40:31.278	date-es-EC
com.atlassian.support.stp	3382	2017-05-27 12:40:31.278	webResourceManagerContextItem
com.atlassian.streams	3383	2017-05-27 12:40:31.278	date-da-DK
com.atlassian.auiplugin	3384	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-form-validation-basic-validators
com.atlassian.confluence.plugins.search.confluence-search	3385	2017-05-27 12:40:31.278	queryFactory
confluence.search.mappers.lucene	3386	2017-05-27 12:40:31.278	all
com.atlassian.querylang.confluence-cql-plugin	3387	2017-05-27 12:40:31.278	current-content-query-function
com.atlassian.streams.confluence	3388	2017-05-27 12:40:31.278	date-es-CL
com.atlassian.streams	3389	2017-05-27 12:40:31.278	date-en-CA
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3390	2017-05-27 12:40:31.278	rest-compatibility-filter
tac.confluence.languages.no_NO	3391	2017-05-27 12:40:31.278	no_NO
com.atlassian.streams	3392	2017-05-27 12:40:31.278	date-en-BZ
com.atlassian.streams.confluence	3393	2017-05-27 12:40:31.278	date-es-CO
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3394	2017-05-27 12:40:31.278	site-blog-recipients-provider
com.atlassian.confluence.plugins.confluence-create-content-plugin	3395	2017-05-27 12:40:31.278	spaceCollectionService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3396	2017-05-27 12:40:31.278	confluenceHostLicenseProvider
confluence.macros.multimedia	3397	2017-05-27 12:40:31.278	quicktime
com.atlassian.confluence.plugins.confluence-space-blueprints	3398	2017-05-27 12:40:31.278	sidebarLinkService
com.atlassian.querylang.confluence-cql-plugin	3399	2017-05-27 12:40:31.278	modified-field
confluence.content.action.menu	3400	2017-05-27 12:40:31.278	view-information
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3401	2017-05-27 12:40:31.278	atlassianClusterMonitoring
com.atlassian.confluence.plugins.confluence-space-blueprints	3402	2017-05-27 12:40:31.278	team-space-blueprint-item
com.atlassian.auiplugin	3403	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-alignment
com.atlassian.streams.actions	3404	2017-05-27 12:40:31.278	commentActionHandlers
com.atlassian.streams	3405	2017-05-27 12:40:31.278	executorFactory
confluence.extra.jira	3406	2017-05-27 12:40:31.278	macro-browser-resources
com.atlassian.confluence.plugins.confluence-create-content-plugin	3407	2017-05-27 12:40:31.278	create-from-template-resources
confluence.listeners.core	3408	2017-05-27 12:40:31.278	usercredentialupdatelistener
com.atlassian.streams	3409	2017-05-27 12:40:31.278	streamsI18nResolver
com.atlassian.plugins.base-hipchat-integration-plugin	3410	2017-05-27 12:40:31.278	image-resources
com.atlassian.analytics.analytics-client	3411	2017-05-27 12:40:31.278	event-report-servlet
com.atlassian.plugins.atlassian-nav-links-plugin	3412	2017-05-27 12:40:31.278	readOnlyApplicationLinkService
com.atlassian.confluence.plugins.confluence-inline-tasks	3413	2017-05-27 12:40:31.278	tasks-feature-discovery-resources
com.atlassian.confluence.plugins.gadgets	3414	2017-05-27 12:40:31.278	page-gadget-embedded
com.atlassian.streams.confluence	3415	2017-05-27 12:40:31.278	date-es-CR
com.atlassian.confluence.editor	3416	2017-05-27 12:40:31.278	editor-save
com.atlassian.support.healthcheck.support-healthcheck-plugin	3417	2017-05-27 12:40:31.278	supportHealthCheckSupplier
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3418	2017-05-27 12:40:31.278	synchronyWebJsonToken
com.atlassian.confluence.plugins.confluence-email-resources	3419	2017-05-27 12:40:31.278	content-templates-page-link-pattern-1.0.0
confluence.extra.webdav	3420	2017-05-27 12:40:31.278	confluenceDavSessionInvalidatorJobTrigger
com.atlassian.confluence.plugins.confluence-mentions-plugin	3421	2017-05-27 12:40:31.278	mention-hipchat-notification-template
com.atlassian.confluence.editor	3422	2017-05-27 12:40:31.278	pageLayoutListener
com.atlassian.streams.core	3423	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.streams.confluence	3424	2017-05-27 12:40:31.278	date-es-BO
com.atlassian.confluence.plugins.confluence-email-resources	3425	2017-05-27 12:40:31.278	content-templates-status-update-pattern-1.0.0
com.atlassian.streams	3426	2017-05-27 12:40:31.278	streamsActivityRedirectionFilter
com.atlassian.confluence.plugins.confluence-labels	3427	2017-05-27 12:40:31.278	view-label-resources
com.atlassian.confluence.plugins.gadgets	3428	2017-05-27 12:40:31.278	gadget-placeholder
confluence.lifecycle.core	3429	2017-05-27 12:40:31.278	schedulerLifecycle
com.atlassian.support.healthcheck.support-healthcheck-plugin	3430	2017-05-27 12:40:31.278	executorServiceFactory
com.atlassian.applinks.applinks-plugin	3431	2017-05-27 12:40:31.278	applinks-new-ui
com.atlassian.applinks.applinks-oauth-plugin	3432	2017-05-27 12:40:31.278	applinkPluginUtil
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3433	2017-05-27 12:40:31.278	notificationUserService
com.atlassian.confluence.plugins.confluence-edge-index	3434	2017-05-27 12:40:31.278	flushEdgeIndexQueueJob
com.atlassian.confluence.plugins.confluence-sal-plugin	3435	2017-05-27 12:40:31.278	oAuthRequestVerifierFactory
confluence.extra.impresence2	3436	2017-05-27 12:40:31.278	reporter-jabber
com.atlassian.applinks.applinks-plugin	3437	2017-05-27 12:40:31.278	applinks-lib-backbone
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3438	2017-05-27 12:40:31.278	jsonableJacksonService
com.atlassian.confluence.plugins.confluence-create-content-plugin	3439	2017-05-27 12:40:31.278	blueprint-resources
com.atlassian.plugins.less-transformer-plugin	3440	2017-05-27 12:40:31.278	pluginUriResolver
com.atlassian.auiplugin	3441	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-deprecation
confluence.renderer.components	3442	2017-05-27 12:40:31.278	block
com.atlassian.confluence.plugins.confluence-request-access-plugin	3443	2017-05-27 12:40:31.278	confluence-request-access-plugin-loader
com.atlassian.confluence.plugins.confluence-create-content-plugin	3444	2017-05-27 12:40:31.278	header-create-dialog
com.atlassian.confluence.plugins.confluence-inline-comments	3445	2017-05-27 12:40:31.278	loader
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	3446	2017-05-27 12:40:31.278	confluence-collaborative-editor-api-rest
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3447	2017-05-27 12:40:31.278	app
com.atlassian.streams.confluence	3448	2017-05-27 12:40:31.278	spaceEntityResolver
com.atlassian.auiplugin	3449	2017-05-27 12:40:31.278	placeholder
com.atlassian.plugins.atlassian-plugins-webresource-plugin	3450	2017-05-27 12:40:31.278	jsI18n
com.atlassian.confluence.extra.widgetconnector	3451	2017-05-27 12:40:31.278	voicethread
com.atlassian.auiplugin	3452	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-layer
com.atlassian.confluence.plugins.confluence-inline-tasks	3453	2017-05-27 12:40:31.278	show-task-feature-discovery-flag-page
com.atlassian.applinks.applinks-basicauth-plugin	3454	2017-05-27 12:40:31.278	applinkPluginUtil
com.atlassian.confluence.plugins.confluence-mentions-plugin	3455	2017-05-27 12:40:31.278	editor-insertmention
com.atlassian.plugin.notifications.notifications-module	3456	2017-05-27 12:40:31.278	notificationSchemeStore
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3457	2017-05-27 12:40:31.278	blog-share-notification
com.atlassian.streams.confluence	3458	2017-05-27 12:40:31.278	date-es-AR
com.atlassian.analytics.analytics-client	3459	2017-05-27 12:40:31.278	policy-update-init
com.atlassian.confluence.plugins.confluence-email-resources	3460	2017-05-27 12:40:31.278	notification-templates-1.0.0
com.atlassian.plugins.atlassian-whitelist-core-plugin	3461	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.plugins.atlassian-nav-links-plugin	3462	2017-05-27 12:40:31.278	project-shortcuts-rest
com.atlassian.plugins.base-hipchat-integration-plugin	3463	2017-05-27 12:40:31.278	rest-ping
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3464	2017-05-27 12:40:31.278	rest-filter
com.atlassian.auiplugin	3465	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-contain-dropdown
com.atlassian.plugins.atlassian-whitelist-core-plugin	3466	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.plugin.notifications.notifications-module	3467	2017-05-27 12:40:31.278	notificationErrorRegistry
com.atlassian.plugins.atlassian-nav-links-plugin	3468	2017-05-27 12:40:31.278	http-request-factory
com.atlassian.confluence.plugins.search.confluence-search	3469	2017-05-27 12:40:31.278	cqlSearcher
com.atlassian.auiplugin	3470	2017-05-27 12:40:31.278	ajs
com.atlassian.analytics.analytics-client	3471	2017-05-27 12:40:31.278	productEventListener
confluence.sections.space.admin	3472	2017-05-27 12:40:31.278	spacelogo
confluence.search.mappers.lucene	3473	2017-05-27 12:40:31.278	customContentType
com.atlassian.webhooks.atlassian-webhooks-plugin	3474	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.confluence.plugins.confluence-mobile	3475	2017-05-27 12:40:31.278	view-content-resources
com.atlassian.applinks.applinks-trustedapps-plugin	3476	2017-05-27 12:40:31.278	trustedApplicationReaper
com.atlassian.confluence.plugins.confluence-knowledge-base	3477	2017-05-27 12:40:31.278	userAccessor
com.atlassian.confluence.plugins.confluence-daily-summary-email	3478	2017-05-27 12:40:31.278	PopularContentManager
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3479	2017-05-27 12:40:31.278	localLicenseNotificationJob
com.atlassian.plugins.rest.atlassian-rest-module	3480	2017-05-27 12:40:31.278	activator
confluence.extra.impresence2	3481	2017-05-27 12:40:31.278	skypeme-xhtml
com.atlassian.confluence.extra.flyingpdf	3482	2017-05-27 12:40:31.278	configpdflayout-2
com.atlassian.confluence.extra.flyingpdf	3483	2017-05-27 12:40:31.278	export-format-pdf
com.atlassian.applinks.applinks-plugin	3484	2017-05-27 12:40:31.278	applinks-images
confluence.extra.impresence2	3485	2017-05-27 12:40:31.278	presence-reporter
confluence.macros.advanced	3486	2017-05-27 12:40:31.278	favpages-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3487	2017-05-27 12:40:31.278	upm-requirejs
com.atlassian.streams	3488	2017-05-27 12:40:31.278	date-gu-IN
com.atlassian.streams.confluence	3489	2017-05-27 12:40:31.278	date-ka-GE
com.atlassian.plugins.confluence-tdm-merger	3490	2017-05-27 12:40:31.278	threadLocalDelegateExecutorFactory
com.atlassian.confluence.plugins.confluence-content-property-storage	3491	2017-05-27 12:40:31.278	contentPropertySearchQueryFactory
com.atlassian.mywork.mywork-common-plugin	3492	2017-05-27 12:40:31.278	velocity-renderer
com.atlassian.confluence.plugins.search.confluence-search	3493	2017-05-27 12:40:31.278	luceneQueryParserFactory
com.atlassian.plugins.atlassian-nps-plugin	3494	2017-05-27 12:40:31.278	nps-rest
com.atlassian.auiplugin	3495	2017-05-27 12:40:31.278	aui-experimental-data-handlers
com.atlassian.analytics.analytics-client	3496	2017-05-27 12:40:31.278	privacyPolicyUpdateDetector
com.atlassian.support.stp	3497	2017-05-27 12:40:31.278	isUserAdminConditionChecker
com.atlassian.confluence.plugins.confluence-edge-index	3498	2017-05-27 12:40:31.278	commentCountQuery
com.atlassian.confluence.plugins.confluence-default-space-content-plugin	3499	2017-05-27 12:40:31.278	spacecontent-personal
confluence.sections.help	3500	2017-05-27 12:40:31.278	conf-help
com.atlassian.streams.confluence	3501	2017-05-27 12:40:31.278	date-is-IS
confluence.macros.multimedia	3502	2017-05-27 12:40:31.278	video
com.atlassian.auiplugin	3503	2017-05-27 12:40:31.278	template
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	3504	2017-05-27 12:40:31.278	delete-resources
com.atlassian.applinks.applinks-plugin	3505	2017-05-27 12:40:31.278	restUrlBuilder
com.atlassian.auiplugin	3506	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-include
tac.confluence.languages.it_IT	3507	2017-05-27 12:40:31.278	it_IT
com.atlassian.auiplugin	3508	2017-05-27 12:40:31.278	aui-experimental-soy-templates-2
com.atlassian.streams.confluence	3509	2017-05-27 12:40:31.278	date-sms-FI
com.atlassian.confluence.plugins.confluence-email-resources	3510	2017-05-27 12:40:31.278	view-blogpost-email-call-to-action
com.atlassian.auiplugin	3511	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-blanket
com.atlassian.confluence.plugins.confluence-email-resources	3512	2017-05-27 12:40:31.278	get-nice-file-size-function
com.atlassian.plugins.atlassian-nav-links-plugin	3513	2017-05-27 12:40:31.278	cacheRefreshService
com.atlassian.confluence.editor	3514	2017-05-27 12:40:31.278	servletcontextthreadlocalservlet
confluence.extra.jira	3515	2017-05-27 12:40:31.278	applinksProxy
confluence.user.menu	3516	2017-05-27 12:40:31.278	login
confluence.web.resources	3517	2017-05-27 12:40:31.278	pages-dirview
com.atlassian.confluence.plugins.confluence-onboarding	3518	2017-05-27 12:40:31.278	onboardingNumberOfUsersCheckJob
com.atlassian.confluence.plugins.confluence-create-content-plugin	3519	2017-05-27 12:40:31.278	lazyInsertExecutor
com.atlassian.applinks.applinks-plugin	3520	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3521	2017-05-27 12:40:31.278	notificationRepresentationFactory
com.atlassian.applinks.applinks-oauth-plugin	3522	2017-05-27 12:40:31.278	oAuthUIAdminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	3523	2017-05-27 12:40:31.278	highlightActionsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-software-project	3524	2017-05-27 12:40:31.278	confluence-software-project-viewcontent-resources
com.atlassian.auiplugin	3525	2017-05-27 12:40:31.278	aui-experimental-example
com.atlassian.applinks.applinks-plugin	3526	2017-05-27 12:40:31.278	typeAccessor
com.atlassian.confluence.plugins.confluence-file-notifications	3527	2017-05-27 12:40:31.278	file-notifications-file-details-file-version
com.atlassian.plugins.atlassian-nav-links-plugin	3528	2017-05-27 12:40:31.278	application-properties
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3529	2017-05-27 12:40:31.278	roadmap-editor-resources
com.atlassian.auiplugin	3530	2017-05-27 12:40:31.278	cookie
com.atlassian.confluence.plugins.confluence-create-content-plugin	3531	2017-05-27 12:40:31.278	create-from-template
com.atlassian.querylang.confluence-cql-plugin	3532	2017-05-27 12:40:31.278	space-key-field
com.atlassian.confluence.plugins.confluence-email-resources	3533	2017-05-27 12:40:31.278	notification-templates-content-removed-1.0.0
confluence.web.resources	3534	2017-05-27 12:40:31.278	view-comment
com.atlassian.plugins.base-hipchat-integration-plugin	3535	2017-05-27 12:40:31.278	invites-resources
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3536	2017-05-27 12:40:31.278	page-event-notification-transformer
com.atlassian.confluence.plugins.confluence-space-blueprints	3537	2017-05-27 12:40:31.278	documentation-space-homepage-template
com.atlassian.applinks.applinks-plugin	3538	2017-05-27 12:40:31.278	authenticationListener
com.atlassian.applinks.applinks-plugin	3539	2017-05-27 12:40:31.278	webResourceUrlProvider
com.atlassian.confluence.ext.newcode-macro-plugin	3540	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.auiplugin	3541	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-css-deprecations
com.atlassian.confluence.plugins.confluence-inline-tasks	3542	2017-05-27 12:40:31.278	task-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-create-content-plugin	3543	2017-05-27 12:40:31.278	contentBlueprintService
com.atlassian.confluence.plugins.confluence-lookandfeel	3544	2017-05-27 12:40:31.278	fileUploadManager
confluence.listeners.core	3545	2017-05-27 12:40:31.278	look-and-feel-audit-logging-listener
com.atlassian.streams.confluence	3546	2017-05-27 12:40:31.278	date-az-Cyrl-AZ
com.atlassian.plugins.base-hipchat-integration-plugin	3547	2017-05-27 12:40:31.278	hipchatUserConfigurationPanel
com.atlassian.analytics.analytics-client	3548	2017-05-27 12:40:31.278	licenseCreationDateService
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3549	2017-05-27 12:40:31.278	searchManager
com.atlassian.auiplugin	3550	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-globalize
com.atlassian.applinks.applinks-plugin	3551	2017-05-27 12:40:31.278	auth-container
com.atlassian.auiplugin	3552	2017-05-27 12:40:31.278	aui-experimental-table-sortable
com.atlassian.streams	3553	2017-05-27 12:40:31.278	date-pt-PT
com.atlassian.confluence.editor	3554	2017-05-27 12:40:31.278	macro-placeholder
com.atlassian.confluence.plugins.confluence-like	3555	2017-05-27 12:40:31.278	like-created-notification-template-hipchat
confluence.renderer.components	3556	2017-05-27 12:40:31.278	url
confluence.sections.page	3557	2017-05-27 12:40:31.278	view-information
com.atlassian.confluence.plugins.share-page	3558	2017-05-27 12:40:31.278	share-attachment-email-notification-template-body
confluence.search.mappers.lucene	3559	2017-05-27 12:40:31.278	spacePermissionsSearchFilter
com.atlassian.confluence.extra.widgetconnector	3560	2017-05-27 12:40:31.278	widget-migrator
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3561	2017-05-27 12:40:31.278	confluenceUserRolesProvider
com.atlassian.confluence.plugins.confluence-knowledge-base	3562	2017-05-27 12:40:31.278	kb-how-to-article-blueprint
confluence.web.resources	3563	2017-05-27 12:40:31.278	page-intrash-resources
com.atlassian.confluence.plugins.confluence-software-blueprints	3564	2017-05-27 12:40:31.278	retrospectives-index
confluence.extra.impresence2	3565	2017-05-27 12:40:31.278	reporter-yahoo
com.atlassian.confluence.plugins.confluence-space-ia	3566	2017-05-27 12:40:31.278	advanced-links
com.atlassian.streams.confluence	3567	2017-05-27 12:40:31.278	activityObjectFactory
com.atlassian.confluence.plugins.confluence-content-property-storage	3568	2017-05-27 12:40:31.278	contentPropertiesExtractor
confluence.listeners.core	3569	2017-05-27 12:40:31.278	superBatchCounterInvalidator
com.atlassian.confluence.plugins.confluence-onboarding	3570	2017-05-27 12:40:31.278	onboarding-common-resources
com.atlassian.support.healthcheck.support-healthcheck-plugin	3571	2017-05-27 12:40:31.278	confluenceIndexInfoService
com.atlassian.auiplugin	3572	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-backbone
com.atlassian.confluence.keyboardshortcuts	3573	2017-05-27 12:40:31.278	tinymce.table.paste.row
com.atlassian.confluence.extra.flyingpdf	3574	2017-05-27 12:40:31.278	exportcss
com.atlassian.confluence.plugins.confluence-sal-plugin	3575	2017-05-27 12:40:31.278	threadLocalContextManager
com.atlassian.querylang.confluence-cql-plugin	3576	2017-05-27 12:40:31.278	user-sort-mapper
com.atlassian.plugin.notifications.notifications-module	3577	2017-05-27 12:40:31.278	userName
com.atlassian.confluence.plugins.confluence-knowledge-base	3578	2017-05-27 12:40:31.278	transactionTemplate
confluence.web.resources	3579	2017-05-27 12:40:31.278	type-helpers
com.atlassian.confluence.plugins.confluence-inline-comments	3580	2017-05-27 12:40:31.278	editor
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	3581	2017-05-27 12:40:31.278	batchMessageMap-soy-function
com.atlassian.confluence.plugins.confluence-software-blueprints	3582	2017-05-27 12:40:31.278	jirareports-resources
com.atlassian.confluence.plugins.confluence-file-notifications	3583	2017-05-27 12:40:31.278	file-content-remove-notification
com.atlassian.confluence.plugins.confluence-rest-resources	3584	2017-05-27 12:40:31.278	rest-api-filter
com.atlassian.confluence.plugins.confluence-macro-browser	3585	2017-05-27 12:40:31.278	macro-browser-js
com.atlassian.confluence.restplugin	3586	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.recently-viewed-plugin	3587	2017-05-27 12:40:31.278	app-resources
com.atlassian.confluence.plugins.confluence-sortable-tables	3588	2017-05-27 12:40:31.278	date-format-header-metadata
com.atlassian.confluence.plugins.confluence-mobile	3589	2017-05-27 12:40:31.278	pluginResourceLocator
com.atlassian.confluence.extra.officeconnector	3590	2017-05-27 12:40:31.278	viewdoc-legacy
com.atlassian.confluence.plugins.confluence-create-content-plugin	3591	2017-05-27 12:40:31.278	all-resources
com.atlassian.confluence.plugins.confluence-inline-comments	3592	2017-05-27 12:40:31.278	like-email-adg-content-item
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3593	2017-05-27 12:40:31.278	propertiespanel
com.atlassian.plugins.authentication.atlassian-authentication-plugin	3594	2017-05-27 12:40:31.278	logout-servlet
com.atlassian.confluence.plugins.confluence-content-property-storage	3595	2017-05-27 12:40:31.278	storageContentPropertyManager
confluence.sections.news	3596	2017-05-27 12:40:31.278	view-information
com.atlassian.auiplugin	3597	2017-05-27 12:40:31.278	aui-experimental-progress-buttons
com.atlassian.confluence.plugins.confluence-page-banner	3598	2017-05-27 12:40:31.278	content-metadata-page-inherited-restrictions
confluence.sections.space.advanced	3599	2017-05-27 12:40:31.278	unfavourite
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3600	2017-05-27 12:40:31.278	hipchat-emoticons
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3601	2017-05-27 12:40:31.278	safeModeService
com.atlassian.streams.confluence	3602	2017-05-27 12:40:31.278	wiki
confluence.web.panels	3603	2017-05-27 12:40:31.278	confluence-header-workday-menu
confluence.sections.admin	3604	2017-05-27 12:40:31.278	theme
com.atlassian.crowd.embedded.admin	3605	2017-05-27 12:40:31.278	UpdateDirectoryConfigurationWithLocalUserStatus
com.atlassian.applinks.applinks-plugin	3606	2017-05-27 12:40:31.278	feature-v3
confluence.web.resources	3607	2017-05-27 12:40:31.278	login-styles
com.atlassian.confluence.editor	3608	2017-05-27 12:40:31.278	storageToEditorFragmentTransformer
com.atlassian.auiplugin	3609	2017-05-27 12:40:31.278	inline-dialog
com.atlassian.auiplugin	3610	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-constants
confluence.user.menu.concise	3611	2017-05-27 12:40:31.278	logout
com.atlassian.confluence.contributors	3612	2017-05-27 12:40:31.278	notificationEventListener
com.atlassian.streams.streams-thirdparty-plugin	3613	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.applinks.applinks-plugin	3614	2017-05-27 12:40:31.278	feature-applink-migration
com.atlassian.confluence.plugins.confluence-file-notifications	3615	2017-05-27 12:40:31.278	confluenceFileManagaer
com.atlassian.confluence.plugins.confluence-onboarding	3616	2017-05-27 12:40:31.278	global-storage-service
com.atlassian.querylang.confluence-cql-plugin	3617	2017-05-27 12:40:31.278	current-space-query-function
com.atlassian.confluence.plugins.confluence-periodic-analytics-events	3618	2017-05-27 12:40:31.278	periodicAnalyticsEventsWhitelist
com.atlassian.confluence.plugins.confluence-onboarding	3619	2017-05-27 12:40:31.278	confluence-flow-resources
com.atlassian.confluence.plugins.confluence-email-resources	3620	2017-05-27 12:40:31.278	clusterManager
com.atlassian.confluence.plugins.confluence-onboarding	3621	2017-05-27 12:40:31.278	onboarding-email-soy-templates
com.atlassian.streams.streams-thirdparty-plugin	3622	2017-05-27 12:40:31.278	feedSanitizer
com.atlassian.plugins.base-hipchat-integration-plugin	3623	2017-05-27 12:40:31.278	atlassianHipChatIntegrationAnalyticsWhitelist
confluence.renderer.components	3624	2017-05-27 12:40:31.278	inserted
com.atlassian.confluence.contributors	3625	2017-05-27 12:40:31.278	rest
com.atlassian.applinks.applinks-oauth-plugin	3626	2017-05-27 12:40:31.278	documentationLinker
com.atlassian.confluence.plugins.confluence-mobile	3627	2017-05-27 12:40:31.278	rest-filter
com.atlassian.gadgets.opensocial	3628	2017-05-27 12:40:31.278	metadata-rpc-servlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3629	2017-05-27 12:40:31.278	linkBuilder
com.atlassian.applinks.applinks-cors-plugin	3630	2017-05-27 12:40:31.278	corsFilter
com.atlassian.mywork.mywork-confluence-host-plugin	3631	2017-05-27 12:40:31.278	mwauthredirect
com.atlassian.integration.jira.jira-integration-plugin	3632	2017-05-27 12:40:31.278	server-side-templates
confluence.extra.confluencerpc	3633	2017-05-27 12:40:31.278	wikiSoapServiceTarget
com.atlassian.support.healthcheck.support-healthcheck-plugin	3634	2017-05-27 12:40:31.278	timeZoneManager
com.atlassian.confluence.plugins.confluence-content-property-storage	3635	2017-05-27 12:40:31.278	spacePropertyFinderFactory
com.atlassian.streams	3636	2017-05-27 12:40:31.278	date-ru-RU
com.atlassian.confluence.plugins.confluence-file-notifications	3637	2017-05-27 12:40:31.278	file-notifications-reply-action
com.atlassian.mywork.mywork-confluence-host-plugin	3638	2017-05-27 12:40:31.278	ao
com.atlassian.applinks.applinks-plugin	3639	2017-05-27 12:40:31.278	feature-help-link
com.atlassian.analytics.analytics-client	3640	2017-05-27 12:40:31.278	logEventFormatter
com.atlassian.plugin.notifications.notifications-module	3641	2017-05-27 12:40:31.278	cacheManager
com.atlassian.confluence.restplugin	3642	2017-05-27 12:40:31.278	rest
com.atlassian.support.healthcheck.support-healthcheck-plugin	3643	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.applinks.applinks-plugin	3644	2017-05-27 12:40:31.278	applicationLinkService
com.atlassian.confluence.editor	3645	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.streams	3646	2017-05-27 12:40:31.278	date-ms-BN
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3647	2017-05-27 12:40:31.278	instanceTopologyFactory
com.atlassian.confluence.plugins.confluence-previews	3648	2017-05-27 12:40:31.278	confluence-previews-css
com.atlassian.confluence.plugins.confluence-cache-management-plugin	3649	2017-05-27 12:40:31.278	actions
com.atlassian.confluence.plugins.confluence-jira-metadata	3650	2017-05-27 12:40:31.278	servlet-jira-redirect
com.atlassian.confluence.plugins.confluence-create-content-plugin	3651	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.plugins.confluence-highlight-actions	3652	2017-05-27 12:40:31.278	highlighting-service-filter
com.atlassian.confluence.plugins.quickedit	3653	2017-05-27 12:40:31.278	quick-comment-page
com.atlassian.confluence.plugins.confluence-rest-resources	3654	2017-05-27 12:40:31.278	content-labels-metadata-provider
confluence.sections.space.admin	3655	2017-05-27 12:40:31.278	removespace
com.atlassian.confluence.plugins.confluence-create-content-plugin	3656	2017-05-27 12:40:31.278	blueprintsTemplateHelper
com.atlassian.plugins.atlassian-nav-links-plugin	3657	2017-05-27 12:40:31.278	atlassian-nav-links-whitelist
com.atlassian.confluence.plugins.confluence-email-resources	3658	2017-05-27 12:40:31.278	notification-templates-forgot-password-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3659	2017-05-27 12:40:31.278	localeResolver
com.atlassian.confluence.plugins.confluence-software-project	3660	2017-05-27 12:40:31.278	confluence-software-project-analytics-whitelist
com.atlassian.analytics.analytics-client	3661	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.confluence.plugins.confluence-lookandfeel	3662	2017-05-27 12:40:31.278	siteLogoManager
com.atlassian.applinks.applinks-oauth-plugin	3663	2017-05-27 12:40:31.278	serviceProviderTokenStore
com.atlassian.streams	3664	2017-05-27 12:40:31.278	date-en-NZ
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3665	2017-05-27 12:40:31.278	atlassianClusterMonitoring-filter
confluence.extra.jira	3666	2017-05-27 12:40:31.278	jiraissues-migration
com.atlassian.confluence.plugins.confluence-create-content-plugin	3667	2017-05-27 12:40:31.278	editor-resources
com.atlassian.plugins.atlassian-project-creation-plugin	3668	2017-05-27 12:40:31.278	project-linking-capability
confluence.extra.masterdetail	3669	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.plugins.confluence-email-resources	3670	2017-05-27 12:40:31.278	chrome-template-main-table-1.0.0
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	3671	2017-05-27 12:40:31.278	applicationProperties
confluence.sections.space.tools	3672	2017-05-27 12:40:31.278	overview
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3673	2017-05-27 12:40:31.278	page-or-blog-notification-recipients-provider
com.atlassian.analytics.analytics-client	3674	2017-05-27 12:40:31.278	s3EventUploader
com.atlassian.plugin.notifications.notifications-module	3675	2017-05-27 12:40:31.278	notification-panel
crowd.system.passwordencoders	3676	2017-05-27 12:40:31.278	des
com.atlassian.streams	3677	2017-05-27 12:40:31.278	date-en-PH
com.atlassian.confluence.plugins.confluence-link-browser	3678	2017-05-27 12:40:31.278	link-browser-editor-resources
confluence.sections.admin	3679	2017-05-27 12:40:31.278	groups
com.atlassian.confluence.plugins.confluence-previews	3680	2017-05-27 12:40:31.278	annotation-plugin
com.atlassian.confluence.plugins.whatsnew	3681	2017-05-27 12:40:31.278	buildInformationService
confluence.extra.information	3682	2017-05-27 12:40:31.278	soy-templates
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3683	2017-05-27 12:40:31.278	upmScheduler
com.atlassian.plugins.atlassian-nav-links-plugin	3684	2017-05-27 12:40:31.278	capabilities-consumer-admin-rest-filter
confluence.macros.dashboard	3685	2017-05-27 12:40:31.278	spaces-list
com.atlassian.confluence.plugins.quickreload	3686	2017-05-27 12:40:31.278	confluence.quick-reload-automated
confluence.web.panels	3687	2017-05-27 12:40:31.278	confluence-header-admin-menu
com.atlassian.confluence.plugins.share-page	3688	2017-05-27 12:40:31.278	share-draft-email-notification-template-body
confluence.search.mappers.lucene	3689	2017-05-27 12:40:31.278	termSearchFilter
com.atlassian.plugins.atlassian-nps-plugin	3690	2017-05-27 12:40:31.278	npsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-file-notifications	3691	2017-05-27 12:40:31.278	file-notifications-reopen-action
confluence.web.resources	3692	2017-05-27 12:40:31.278	page-templates
com.atlassian.streams	3693	2017-05-27 12:40:31.278	date-sma-NO
confluence.extra.attachments	3694	2017-05-27 12:40:31.278	space-attachments-javascript
com.atlassian.confluence.plugins.gadgets	3695	2017-05-27 12:40:31.278	core-services-filter
confluence.sections.space.admin	3696	2017-05-27 12:40:31.278	looknfeel
com.atlassian.auiplugin	3697	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-select
com.atlassian.confluence.plugins.gadgets.spi	3698	2017-05-27 12:40:31.278	subscribedGadgetFeedIdGenerator
com.atlassian.crowd.embedded.admin	3699	2017-05-27 12:40:31.278	enable-html-escaping
com.atlassian.confluence.plugins.confluence-page-banner	3700	2017-05-27 12:40:31.278	page-banner-preview-resources
com.atlassian.auiplugin	3701	2017-05-27 12:40:31.278	aui-experimental-header-rotp
com.atlassian.auiplugin	3702	2017-05-27 12:40:31.278	aui-experimental-soy-templates
com.atlassian.applinks.applinks-cors-plugin	3703	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.streams	3704	2017-05-27 12:40:31.278	date-hi-IN
com.atlassian.confluence.plugins.confluence-email-resources	3705	2017-05-27 12:40:31.278	templateManager
com.atlassian.support.healthcheck.support-healthcheck-plugin	3706	2017-05-27 12:40:31.278	ao
com.atlassian.confluence.plugins.gadgets	3707	2017-05-27 12:40:31.278	css
com.atlassian.confluence.plugins.confluence-like	3708	2017-05-27 12:40:31.278	content-like-resources
com.atlassian.querylang.confluence-cql-plugin	3709	2017-05-27 12:40:31.278	multi-sort-mapper
com.atlassian.confluence.plugins.confluence-remote-page-view-plugin	3710	2017-05-27 12:40:31.278	remote-page-view-servlet
com.atlassian.oauth.serviceprovider	3711	2017-05-27 12:40:31.278	consumerStore
com.atlassian.plugins.atlassian-nav-links-plugin	3712	2017-05-27 12:40:31.278	ao-module
com.atlassian.auiplugin	3713	2017-05-27 12:40:31.278	aui-experimental-page-header
com.atlassian.confluence.plugins.confluence-create-content-plugin	3714	2017-05-27 12:40:31.278	hostContextAccessor
com.atlassian.confluence.plugins.confluence-space-blueprints	3715	2017-05-27 12:40:31.278	confluence-space-blueprints-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3716	2017-05-27 12:40:31.278	menu-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	3717	2017-05-27 12:40:31.278	macroResolver
com.atlassian.confluence.plugins.confluence-space-directory	3718	2017-05-27 12:40:31.278	timeZoneManager
com.atlassian.soy.soy-template-plugin	3719	2017-05-27 12:40:31.278	soyTransformer
confluence.extra.information	3720	2017-05-27 12:40:31.278	info
com.atlassian.activeobjects.activeobjects-plugin	3721	2017-05-27 12:40:31.278	admin-ui-filter
confluence.extra.jira	3722	2017-05-27 12:40:31.278	jira-chart-proxy-servlet
confluence.sections.space.advanced	3723	2017-05-27 12:40:31.278	exportxml
com.atlassian.applinks.applinks-plugin	3724	2017-05-27 12:40:31.278	concurrentExecutor
confluence.web.resources	3725	2017-05-27 12:40:31.278	querystring
com.atlassian.confluence.plugins.share-page	3726	2017-05-27 12:40:31.278	share-keyboard-shortcut
confluence.listeners.core	3727	2017-05-27 12:40:31.278	import-export-audit-logging-listener
com.atlassian.support.stp	3728	2017-05-27 12:40:31.278	userManager
com.atlassian.confluence.plugins.confluence-create-content-plugin	3729	2017-05-27 12:40:31.278	contentGenerator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3730	2017-05-27 12:40:31.278	schedulerService
com.atlassian.streams.streams-thirdparty-plugin	3731	2017-05-27 12:40:31.278	userManager
confluence.renderer.components	3732	2017-05-27 12:40:31.278	monospace
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3733	2017-05-27 12:40:31.278	follower-added-notification-template-body
confluence.search.mappers.lucene	3734	2017-05-27 12:40:31.278	macroStorageVersion
com.atlassian.webhooks.atlassian-webhooks-plugin	3735	2017-05-27 12:40:31.278	WebHooksAdminActions
confluence.extra.masterdetail	3736	2017-05-27 12:40:31.278	details-xhtml
com.atlassian.confluence.plugins.gadgets	3737	2017-05-27 12:40:31.278	gadgetSpecUrlChecker
com.atlassian.querylang.confluence-cql-plugin	3738	2017-05-27 12:40:31.278	current-user-query-function
confluence.admin.user	3739	2017-05-27 12:40:31.278	userpicker
com.atlassian.confluence.contributors	3740	2017-05-27 12:40:31.278	contributors-summary
com.atlassian.confluence.plugins.gadgets	3741	2017-05-27 12:40:31.278	confluence-page-gadget
com.atlassian.support.stp	3742	2017-05-27 12:40:31.278	stp-license-banner-data-bitbucket
confluence.comment.action	3743	2017-05-27 12:40:31.278	comment-date
com.atlassian.confluence.plugins.confluence-email-resources	3744	2017-05-27 12:40:31.278	notification-templates-content-added-1.0.0
com.atlassian.applinks.applinks-trustedapps-plugin	3745	2017-05-27 12:40:31.278	trustedUISysadminAuthenticatorFilter
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3746	2017-05-27 12:40:31.278	content-edited-mail-batch-notification-processor
com.atlassian.confluence.plugins.confluence-inline-comments	3747	2017-05-27 12:40:31.278	notification-template-reply
confluence.web.resources	3748	2017-05-27 12:40:31.278	dialog-breadcrumbs
com.atlassian.applinks.applinks-oauth-plugin	3749	2017-05-27 12:40:31.278	consumerTokenService
crowd.system.passwordencoders	3750	2017-05-27 12:40:31.278	ssha
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	3751	2017-05-27 12:40:31.278	emoticons-resource-filter
com.atlassian.confluence.plugins.confluence-email-resources	3752	2017-05-27 12:40:31.278	content-templates-1.0.0
confluence.search.mappers.lucene	3753	2017-05-27 12:40:31.278	unlicensedUserSearchFilter
confluence.sections.page	3754	2017-05-27 12:40:31.278	edit
com.atlassian.applinks.applinks-basicauth-plugin	3755	2017-05-27 12:40:31.278	userManager
com.atlassian.plugins.atlassian-help-tips	3756	2017-05-27 12:40:31.278	ao-module
com.atlassian.applinks.applinks-trustedapps-plugin	3757	2017-05-27 12:40:31.278	trusted-auth-inbound-configuration
com.atlassian.plugins.base-hipchat-integration-plugin	3758	2017-05-27 12:40:31.278	conf-menu-item
com.atlassian.confluence.plugins.confluence-roadmap-plugin	3759	2017-05-27 12:40:31.278	roadmap-utilities-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	3760	2017-05-27 12:40:31.278	confluence-documentation-space-blueprint-resources
com.atlassian.applinks.applinks-plugin	3761	2017-05-27 12:40:31.278	applinks-configure-entity-links-2
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3762	2017-05-27 12:40:31.278	upmSchedulerUpgradeTask
confluence.web.resources	3763	2017-05-27 12:40:31.278	userlink
com.atlassian.auiplugin	3764	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-underscore
com.atlassian.confluence.plugins.confluence-page-restrictions-dialog	3765	2017-05-27 12:40:31.278	confluencePageRestrictionsDialogWhitelist
com.atlassian.confluence.plugins.confluence-space-ia	3766	2017-05-27 12:40:31.278	link-dialog
com.atlassian.streams.confluence	3767	2017-05-27 12:40:31.278	date-ms-MY
com.atlassian.applinks.applinks-basicauth-plugin	3768	2017-05-27 12:40:31.278	confluence-inbound-basic
com.atlassian.plugin.notifications.notifications-module	3769	2017-05-27 12:40:31.278	eventPublisher
confluence.search.mappers.lucene	3770	2017-05-27 12:40:31.278	lastModifierSearchFilter
com.atlassian.plugin.notifications.notifications-module	3771	2017-05-27 12:40:31.278	notification-scheme
com.atlassian.confluence.plugins.gadgets	3772	2017-05-27 12:40:31.278	pageManager
com.atlassian.applinks.applinks-basicauth-plugin	3773	2017-05-27 12:40:31.278	internalHostApplication
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3774	2017-05-27 12:40:31.278	blogpost-trashed-notification-template
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3775	2017-05-27 12:40:31.278	imgfilterservler
confluence.sections.news	3776	2017-05-27 12:40:31.278	edit
com.atlassian.confluence.plugins.confluence-edge-index	3777	2017-05-27 12:40:31.278	flushEdgeIndexQueue
com.atlassian.confluence.plugins.confluence-content-property-storage	3778	2017-05-27 12:40:31.278	string-field-type-query-mapper
com.atlassian.streams	3779	2017-05-27 12:40:31.278	date-en-US
com.atlassian.confluence.plugins.confluence-knowledge-base	3780	2017-05-27 12:40:31.278	kbSpacePermissionUpdateService
com.atlassian.applinks.applinks-plugin	3781	2017-05-27 12:40:31.278	listEntityLinks
com.atlassian.plugins.atlassian-nps-plugin	3782	2017-05-27 12:40:31.278	nps-btf-admin-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3783	2017-05-27 12:40:31.278	hostLicenseInformation
com.atlassian.confluence.plugins.confluence-email-resources	3784	2017-05-27 12:40:31.278	notification-templates
com.atlassian.streams	3785	2017-05-27 12:40:31.278	date-en-UK
confluence.macros.dashboard	3786	2017-05-27 12:40:31.278	dashboard-macros-resources
com.atlassian.streams.core	3787	2017-05-27 12:40:31.278	localeResolver
com.atlassian.mywork.mywork-common-plugin	3788	2017-05-27 12:40:31.278	hostService
com.atlassian.plugins.atlassian-nps-plugin	3789	2017-05-27 12:40:31.278	nps-acknowledgement-flag-resources-async
com.atlassian.confluence.plugins.drag-and-drop	3790	2017-05-27 12:40:31.278	actions
com.atlassian.confluence.plugins.confluence-knowledge-base	3791	2017-05-27 12:40:31.278	spacePermissionManager
com.atlassian.streams	3792	2017-05-27 12:40:31.278	date-sw-KE
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3793	2017-05-27 12:40:31.278	upm-manage-templates
com.atlassian.confluence.plugins.confluence-edge-index	3794	2017-05-27 12:40:31.278	page.create
com.atlassian.confluence.plugins.confluence-templates	3795	2017-05-27 12:40:31.278	template-editor-variables-resources
confluence.macros.basic	3796	2017-05-27 12:40:31.278	nolink
com.atlassian.confluence.plugins.confluence-file-notifications	3797	2017-05-27 12:40:31.278	file-content-update-email-notification-template
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3798	2017-05-27 12:40:31.278	url-builder-function
com.atlassian.confluence.plugins.confluence-request-access-plugin	3799	2017-05-27 12:40:31.278	grant-access-notification-email-template-body
com.atlassian.streams	3800	2017-05-27 12:40:31.278	date-bs-Latn-BA
com.atlassian.streams	3801	2017-05-27 12:40:31.278	date-en-TT
com.atlassian.streams	3802	2017-05-27 12:40:31.278	date-zu-ZA
com.atlassian.confluence.plugins.confluence-onboarding	3803	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-dashboard	3804	2017-05-27 12:40:31.278	confluence-dashboard-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3805	2017-05-27 12:40:31.278	myWorkActionService
com.atlassian.confluence.extra.officeconnector	3806	2017-05-27 12:40:31.278	searchpreview
com.atlassian.confluence.plugins.confluence-create-content-plugin	3807	2017-05-27 12:40:31.278	webItemService
com.atlassian.plugins.atlassian-nav-links-plugin	3808	2017-05-27 12:40:31.278	navigation-client
com.atlassian.confluence.plugins.confluence-dashboard	3809	2017-05-27 12:40:31.278	opt-out
com.atlassian.streams.confluence	3810	2017-05-27 12:40:31.278	userManager
com.atlassian.auiplugin	3811	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-toggle-class-name
com.atlassian.soy.soy-template-plugin	3812	2017-05-27 12:40:31.278	soyWebPanelRenderer
com.atlassian.plugins.base-hipchat-integration-plugin	3813	2017-05-27 12:40:31.278	hipchat-user-link-support
confluence.extra.confluencerpc	3814	2017-05-27 12:40:31.278	xhtmlSoapService
com.atlassian.confluence.plugins.system-templates	3815	2017-05-27 12:40:31.278	welcome-message
com.atlassian.confluence.plugins.confluence-paste	3816	2017-05-27 12:40:31.278	autoconvert-core
com.atlassian.analytics.analytics-client	3817	2017-05-27 12:40:31.278	confluenceEventListener
confluence.macros.profile	3818	2017-05-27 12:40:31.278	network
com.atlassian.auiplugin	3819	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-state
com.atlassian.applinks.applinks-plugin	3820	2017-05-27 12:40:31.278	applinks-whitelist
com.atlassian.streams.actions	3821	2017-05-27 12:40:31.278	actionHandlerWebResources
com.atlassian.confluence.plugins.synchrony-interop	3822	2017-05-27 12:40:31.278	synchrony-interop-plugin-analytics-whitelist
confluence.extractors.core	3823	2017-05-27 12:40:31.278	versionCommentExtractor
com.atlassian.confluence.plugins.confluence-dashboard	3824	2017-05-27 12:40:31.278	navigation-webitems-resources
confluence.sections.space.advanced	3825	2017-05-27 12:40:31.278	rss
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3826	2017-05-27 12:40:31.278	page-moved-notification-template-body
com.atlassian.confluence.plugins.status-macro	3827	2017-05-27 12:40:31.278	status
com.atlassian.streams	3828	2017-05-27 12:40:31.278	date-sa-IN
com.atlassian.confluence.plugins.confluence-content-property-storage	3829	2017-05-27 12:40:31.278	content-property-field
confluence.extra.impresence2	3830	2017-05-27 12:40:31.278	icq-xhtml
com.atlassian.plugins.atlassian-help-tips	3831	2017-05-27 12:40:31.278	ao
com.atlassian.plugins.atlassian-nav-links-plugin	3832	2017-05-27 12:40:31.278	webSudoManager
com.atlassian.streams	3833	2017-05-27 12:40:31.278	date-en-GB
confluence.web.resources	3834	2017-05-27 12:40:31.278	syntaxhighlighter-java
com.atlassian.confluence.plugins.confluence-email-resources	3835	2017-05-27 12:40:31.278	notification-templates-page-remove-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3836	2017-05-27 12:40:31.278	promotedBlueprintService
com.atlassian.confluence.plugins.confluence-templates	3837	2017-05-27 12:40:31.278	breadcrumbGenerator
com.atlassian.streams	3838	2017-05-27 12:40:31.278	date-be-BY
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	3839	2017-05-27 12:40:31.278	runtime-information
confluence.sections.space.tools	3840	2017-05-27 12:40:31.278	integrations
com.atlassian.confluence.plugins.confluence-create-content-plugin	3841	2017-05-27 12:40:31.278	show-space-welcome-dialog-flag
com.atlassian.analytics.analytics-client	3842	2017-05-27 12:40:31.278	cacheManager
com.atlassian.confluence.plugins.confluence-user-profile	3843	2017-05-27 12:40:31.278	user.profile.section
com.atlassian.confluence.plugins.share-page	3844	2017-05-27 12:40:31.278	rest-filter
confluence.listeners.core	3845	2017-05-27 12:40:31.278	blogpostNotificationsListener
com.atlassian.confluence.plugins.confluence-content-property-storage	3846	2017-05-27 12:40:31.278	date-field-type-query-mapper
com.atlassian.streams.confluence	3847	2017-05-27 12:40:31.278	date-be-BY
com.atlassian.plugins.atlassian-nav-links-plugin	3848	2017-05-27 12:40:31.278	user-agent-property
confluence.listeners.core	3849	2017-05-27 12:40:31.278	userStatusLabelListener
confluence.renderer.components	3850	2017-05-27 12:40:31.278	newline
com.atlassian.confluence.plugins.quickreload	3851	2017-05-27 12:40:31.278	userAccessor
confluence.extra.impresence2	3852	2017-05-27 12:40:31.278	reporter-skype
confluence.search.mappers.lucene	3853	2017-05-27 12:40:31.278	containingContentType
com.atlassian.applinks.applinks-plugin	3854	2017-05-27 12:40:31.278	servletMessageFactory
com.atlassian.confluence.plugins.confluence-rest-resources	3855	2017-05-27 12:40:31.278	content-api
com.atlassian.confluence.plugins.confluence-edge-index	3856	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.applinks.applinks-plugin	3857	2017-05-27 12:40:31.278	confluence-inbound-trusted
confluence.extractors.core	3858	2017-05-27 12:40:31.278	addressableChangeExtractor
com.atlassian.analytics.analytics-client	3859	2017-05-27 12:40:31.278	whitelistFilter
com.atlassian.confluence.plugins.view-source	3860	2017-05-27 12:40:31.278	confluence-view-source-api-rest-filter
com.atlassian.confluence.plugins.confluence-previews	3861	2017-05-27 12:40:31.278	mediaviewer-core
com.atlassian.streams.confluence	3862	2017-05-27 12:40:31.278	date-en-US
com.atlassian.confluence.plugins.search.confluence-search	3863	2017-05-27 12:40:31.278	lastModificationFormatter
com.atlassian.confluence.plugins.confluence-jira-metadata	3864	2017-05-27 12:40:31.278	jira-metadata-aggregate-cache-invalidation
com.atlassian.streams.actions	3865	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.keyboardshortcuts	3866	2017-05-27 12:40:31.278	view.attachments
com.atlassian.mywork.mywork-confluence-host-plugin	3867	2017-05-27 12:40:31.278	ao-module
com.atlassian.applinks.applinks-plugin	3868	2017-05-27 12:40:31.278	feature-bitbucket-rebrand
com.atlassian.confluence.extra.widgetconnector	3869	2017-05-27 12:40:31.278	dailymotion
com.atlassian.confluence.plugins.confluence-file-notifications	3870	2017-05-27 12:40:31.278	transactionTemplate
confluence.extra.livesearch	3871	2017-05-27 12:40:31.278	livesearch
com.atlassian.confluence.plugins.confluence-space-ia	3872	2017-05-27 12:40:31.278	space-ia-analytics-whitelist
com.atlassian.confluence.plugins.confluence-ui-components	3873	2017-05-27 12:40:31.278	space-picker
confluence.macros.advanced	3874	2017-05-27 12:40:31.278	listlabels
com.atlassian.streams	3875	2017-05-27 12:40:31.278	date-en-IE
com.atlassian.plugins.atlassian-nav-links-plugin	3876	2017-05-27 12:40:31.278	navigation-link-repository-service
com.atlassian.plugins.confluence-tdm-merger	3877	2017-05-27 12:40:31.278	tdmmerger
confluence.listeners.core	3878	2017-05-27 12:40:31.278	clusteredEventListener
com.atlassian.plugin.notifications.notifications-module	3879	2017-05-27 12:40:31.278	ao-module
com.atlassian.support.healthcheck.support-healthcheck-plugin	3880	2017-05-27 12:40:31.278	runtimeHelper
com.atlassian.support.healthcheck.support-healthcheck-plugin	3881	2017-05-27 12:40:31.278	healthCheckSchedulerComponent
com.atlassian.applinks.applinks-oauth-plugin	3882	2017-05-27 12:40:31.278	add-consumer-reciprocal
com.atlassian.streams	3883	2017-05-27 12:40:31.278	date-af-ZA
com.atlassian.confluence.plugins.confluence-email-resources	3884	2017-05-27 12:40:31.278	notification-templates-page-add-1.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	3885	2017-05-27 12:40:31.278	list-templates-resources
com.atlassian.streams.confluence	3886	2017-05-27 12:40:31.278	date-en-TT
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3887	2017-05-27 12:40:31.278	renderContextFactory
com.atlassian.plugins.atlassian-whitelist-core-plugin	3888	2017-05-27 12:40:31.278	confluenceMacroWhitelistMigration
com.atlassian.streams.confluence	3889	2017-05-27 12:40:31.278	date-en-UK
com.atlassian.support.healthcheck.support-healthcheck-plugin	3890	2017-05-27 12:40:31.278	ao-module
confluence.admin.user	3891	2017-05-27 12:40:31.278	browseusers
com.atlassian.auiplugin	3892	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-contains
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3893	2017-05-27 12:40:31.278	confluenceNotificationJwtIssuerRegistry
com.atlassian.confluence.plugins.quickedit	3894	2017-05-27 12:40:31.278	quick-comment-panel
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3895	2017-05-27 12:40:31.278	confluence-comment-created-batching
confluence.sections.space.advanced	3896	2017-05-27 12:40:31.278	stopwatching
com.atlassian.confluence.plugins.confluence-content-report-plugin	3897	2017-05-27 12:40:31.278	content-report-table
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3898	2017-05-27 12:40:31.278	update-check-servlet
com.atlassian.confluence.keyboardshortcuts	3899	2017-05-27 12:40:31.278	go.to.preview.page
com.atlassian.streams.confluence	3900	2017-05-27 12:40:31.278	pageManager
com.atlassian.streams	3901	2017-05-27 12:40:31.278	date-az-Latn-AZ
com.atlassian.confluence.image.effects.ImageEffectsPlugin	3902	2017-05-27 12:40:31.278	image-properties-tab-effects
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3903	2017-05-27 12:40:31.278	notificationTypes
com.atlassian.webhooks.atlassian-webhooks-plugin	3904	2017-05-27 12:40:31.278	cross-prod-webhooks-ao-module
confluence.listeners.core	3905	2017-05-27 12:40:31.278	plugincontentremovallistener
com.atlassian.confluence.plugins.confluence-jira-metadata	3906	2017-05-27 12:40:31.278	confluence-jira-metadata-rest-filter
com.atlassian.confluence.ext.newcode-macro-plugin	3907	2017-05-27 12:40:31.278	newcode-admin
confluence.web.resources	3908	2017-05-27 12:40:31.278	space-permissions-table
confluence.macros.advanced	3909	2017-05-27 12:40:31.278	export-styles
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3910	2017-05-27 12:40:31.278	packageAccessor
com.atlassian.confluence.plugins.confluence-fixed-headers	3911	2017-05-27 12:40:31.278	confluence-fixed-headers-editor-content-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3912	2017-05-27 12:40:31.278	is-user-admin-soy-function
com.atlassian.applinks.applinks-plugin	3913	2017-05-27 12:40:31.278	applicationLinkClient
com.atlassian.applinks.applinks-trustedapps-plugin	3914	2017-05-27 12:40:31.278	localeResolver
com.atlassian.plugins.rest.atlassian-rest-module	3915	2017-05-27 12:40:31.278	servletModuleManager
com.atlassian.confluence.plugins.confluence-inline-tasks	3916	2017-05-27 12:40:31.278	mobile
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3917	2017-05-27 12:40:31.278	rest
com.atlassian.streams.confluence	3918	2017-05-27 12:40:31.278	spaceWatchActionHandler
com.atlassian.confluence.plugins.confluence-email-resources	3919	2017-05-27 12:40:31.278	stop-watching-page-email-batch-footer
confluence.user.menu	3920	2017-05-27 12:40:31.278	anonymous
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3921	2017-05-27 12:40:31.278	notificationQueueManager
com.atlassian.applinks.applinks-plugin	3922	2017-05-27 12:40:31.278	page-common
com.atlassian.applinks.applinks-cors-plugin	3923	2017-05-27 12:40:31.278	corsAuthenticationProviderPluginModule
confluence.extra.jira	3924	2017-05-27 12:40:31.278	web-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3925	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.applinks.applinks-plugin	3926	2017-05-27 12:40:31.278	authenticationConfigurationManager
com.atlassian.plugins.atlassian-nps-plugin	3927	2017-05-27 12:40:31.278	nps-acknowledgement-resources
com.atlassian.mywork.mywork-common-plugin	3928	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.streams.confluence	3929	2017-05-27 12:40:31.278	permissionManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3930	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.search.confluence-search	3931	2017-05-27 12:40:31.278	cql-site-search-field
com.atlassian.streams.confluence	3932	2017-05-27 12:40:31.278	date-en-ZW
com.atlassian.querylang.confluence-cql-plugin	3933	2017-05-27 12:40:31.278	text-field
com.atlassian.plugin.jslibs	3934	2017-05-27 12:40:31.278	marionette-2.1.0-factory
com.atlassian.auiplugin	3935	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-tipsy
com.atlassian.confluence.plugins.confluence-edge-index	3936	2017-05-27 12:40:31.278	edge-type
com.atlassian.streams	3937	2017-05-27 12:40:31.278	date-nb-NO
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3938	2017-05-27 12:40:31.278	disallowStartupInCloud
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3939	2017-05-27 12:40:31.278	mailContentProcessor
confluence.web.resources	3940	2017-05-27 12:40:31.278	page-diffs
com.atlassian.confluence.plugins.confluence-business-blueprints	3941	2017-05-27 12:40:31.278	file-list-blueprint
com.atlassian.confluence.plugins.confluence-inline-tasks	3942	2017-05-27 12:40:31.278	inline-tasks-styles
confluence.web.resources	3943	2017-05-27 12:40:31.278	auditlog
com.atlassian.confluence.plugins.confluence-onboarding	3944	2017-05-27 12:40:31.278	notification-template-no-spaces-body
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	3945	2017-05-27 12:40:31.278	userManager
com.atlassian.streams	3946	2017-05-27 12:40:31.278	date-en-JM
com.atlassian.confluence.plugins.confluence-easyuser-admin	3947	2017-05-27 12:40:31.278	confluence-easyuser-admin-actions
com.atlassian.analytics.analytics-client	3948	2017-05-27 12:40:31.278	whitelistSearcher
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3949	2017-05-27 12:40:31.278	contentService
com.atlassian.support.healthcheck.support-healthcheck-plugin	3950	2017-05-27 12:40:31.278	logFileHelper
com.atlassian.streams.confluence	3951	2017-05-27 12:40:31.278	date-en-ZA
confluence.sections.profile	3952	2017-05-27 12:40:31.278	user-administion
com.atlassian.plugins.atlassian-nav-links-plugin	3953	2017-05-27 12:40:31.278	i18n-resolver
confluence.comment.action	3954	2017-05-27 12:40:31.278	edit-comment
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	3955	2017-05-27 12:40:31.278	page-trashed-notification-transformer
com.atlassian.confluence.plugins.confluence-paste	3956	2017-05-27 12:40:31.278	autoconvert-skitch
confluence.macros.dashboard	3957	2017-05-27 12:40:31.278	tabProvider
confluence.lifecycle.core	3958	2017-05-27 12:40:31.278	mananagedjobs
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	3959	2017-05-27 12:40:31.278	pluginLicenseNotificationChecker
org.randombits.confluence.toc	3960	2017-05-27 12:40:31.278	toc-zone-old
com.atlassian.confluence.plugins.confluence-create-content-plugin	3961	2017-05-27 12:40:31.278	list-blueprints-templates-panel
confluence.web.resources	3962	2017-05-27 12:40:31.278	attachments
com.atlassian.confluence.plugins.confluence-email-resources	3963	2017-05-27 12:40:31.278	get-attachment-filetype-i18n-function
com.atlassian.confluence.plugins.confluence-license-rest	3964	2017-05-27 12:40:31.278	license-resource-filter
com.atlassian.confluence.plugins.confluence-daily-summary-email	3965	2017-05-27 12:40:31.278	personalInformationManager
com.atlassian.streams.core	3966	2017-05-27 12:40:31.278	templateRendererFactory
com.atlassian.confluence.plugins.soy	3967	2017-05-27 12:40:31.278	soy-friendly-format-date-time-function
confluence.extra.jira	3968	2017-05-27 12:40:31.278	jira-xhtml
com.atlassian.confluence.plugins.confluence-view-file-macro	3969	2017-05-27 12:40:31.278	view-file-macro-notification-resources
com.atlassian.plugins.atlassian-project-creation-plugin	3970	2017-05-27 12:40:31.278	linking-rest-url
confluence.listeners.core	3971	2017-05-27 12:40:31.278	removePersonalSpaceListener
com.atlassian.confluence.plugins.confluence-daily-summary-email	3972	2017-05-27 12:40:31.278	popular-content-action-resources
com.atlassian.mywork.mywork-confluence-host-plugin	3973	2017-05-27 12:40:31.278	myTaskDeprecatedListener
com.atlassian.analytics.analytics-client	3974	2017-05-27 12:40:31.278	blacklistFilter
com.atlassian.confluence.plugins.confluence-mobile	3975	2017-05-27 12:40:31.278	rest-caching-filter
com.atlassian.plugins.atlassian-nav-links-plugin	3976	2017-05-27 12:40:31.278	rotp-projectshortcuts
confluence.extra.masterdetail	3977	2017-05-27 12:40:31.278	detailsSummaryBuilder
com.atlassian.streams.confluence	3978	2017-05-27 12:40:31.278	date-ko-KR
com.atlassian.confluence.plugins.confluence-onboarding	3979	2017-05-27 12:40:31.278	userChecker
com.atlassian.confluence.extra.officeconnector	3980	2017-05-27 12:40:31.278	pptslideservlet
com.atlassian.analytics.analytics-client	3981	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.confluence.plugins.quickreload	3982	2017-05-27 12:40:31.278	quickreload
com.atlassian.confluence.plugins.confluence-paste	3983	2017-05-27 12:40:31.278	paste-resources
com.atlassian.plugins.atlassian-nav-links-plugin	3984	2017-05-27 12:40:31.278	menu-service
com.atlassian.templaterenderer.api	3985	2017-05-27 12:40:31.278	i18nResolverContextItem
com.atlassian.confluence.plugins.confluence-inline-tasks	3986	2017-05-27 12:40:31.278	inline-tasks-editor
com.atlassian.confluence.plugins.gadgets	3987	2017-05-27 12:40:31.278	gadgetUsageTracker
com.atlassian.auiplugin	3988	2017-05-27 12:40:31.278	aui-progress-tracker
com.atlassian.plugins.atlassian-nav-links-plugin	3989	2017-05-27 12:40:31.278	login-uri-provider
com.atlassian.auiplugin	3990	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-polyfills-placeholder
confluence.extractors.core	3991	2017-05-27 12:40:31.278	textAttachmentContentExtractor
com.atlassian.auiplugin	3992	2017-05-27 12:40:31.278	jquery-effects
confluence.web.resources	3993	2017-05-27 12:40:31.278	left-nav-panel-resources
com.atlassian.streams.confluence	3994	2017-05-27 12:40:31.278	searchManager
com.atlassian.templaterenderer.api	3995	2017-05-27 12:40:31.278	webResourceManagerContextItem
com.atlassian.confluence.plugins.confluence-daily-summary-email	3996	2017-05-27 12:40:31.278	networkService
com.atlassian.auiplugin	3997	2017-05-27 12:40:31.278	aui-css-deprecation-warnings
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	3998	2017-05-27 12:40:31.278	templatePathResolver
com.atlassian.analytics.analytics-client	3999	2017-05-27 12:40:31.278	timeKeeper
com.atlassian.auiplugin	4000	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-dialog
com.atlassian.confluence.extra.widgetconnector	4001	2017-05-27 12:40:31.278	wufoo
com.atlassian.confluence.plugins.confluence-edge-index	4002	2017-05-27 12:40:31.278	dateEntityFactory
com.atlassian.confluence.plugins.confluence-like	4003	2017-05-27 12:40:31.278	like-content-email-batch-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4004	2017-05-27 12:40:31.278	upm-osgi-resources
com.atlassian.streams.confluence	4005	2017-05-27 12:40:31.278	date-en-PH
com.atlassian.confluence.plugins.confluence-daily-summary-email	4006	2017-05-27 12:40:31.278	permissionManager
com.atlassian.confluence.plugins.confluence-page-layout	4007	2017-05-27 12:40:31.278	pagelayout
com.atlassian.auiplugin	4008	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-fix-ie-innerhtml
confluence.search.mappers.lucene	4009	2017-05-27 12:40:31.278	prefix
com.atlassian.auiplugin	4010	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-template
confluence.web.resources	4011	2017-05-27 12:40:31.278	jquery-json
confluence.search.mappers.lucene	4012	2017-05-27 12:40:31.278	matchAllDocsFilter
confluence.web.resources	4013	2017-05-27 12:40:31.278	event
com.atlassian.mywork.mywork-confluence-host-plugin	4014	2017-05-27 12:40:31.278	service-selector
com.atlassian.analytics.analytics-client	4015	2017-05-27 12:40:31.278	eventPreprocessor
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4016	2017-05-27 12:40:31.278	emoticons-resource
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4017	2017-05-27 12:40:31.278	formatSettingsManager
com.atlassian.mywork.mywork-confluence-host-plugin	4018	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.plugins.rest.atlassian-rest-module	4019	2017-05-27 12:40:31.278	xsrfTokenAccessor
com.atlassian.healthcheck.atlassian-healthcheck	4020	2017-05-27 12:40:31.278	hostStateMonitor
com.atlassian.streams.confluence	4021	2017-05-27 12:40:31.278	date-se-FI
com.atlassian.auiplugin	4077	2017-05-27 12:40:31.278	ajs-gadgets
com.atlassian.auiplugin	4022	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-binders-placeholder
com.atlassian.plugins.base-hipchat-integration-plugin	4023	2017-05-27 12:40:31.278	soy-resources
confluence.listeners.core	4024	2017-05-27 12:40:31.278	confluence-easyuser-userSignUpEmail
org.randombits.confluence.toc	4025	2017-05-27 12:40:31.278	toc-zone
confluence.extra.webdav	4026	2017-05-27 12:40:31.278	reverseProxyFilterSupport
com.atlassian.plugins.base-hipchat-integration-plugin-api	4027	2017-05-27 12:40:31.278	hipchatAO
com.atlassian.confluence.plugins.gadgets	4028	2017-05-27 12:40:31.278	gadget-macro-migrator
com.atlassian.confluence.plugins.attachmentExtractors	4029	2017-05-27 12:40:31.278	pdfContentExtractor
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4030	2017-05-27 12:40:31.278	inboundWhitelist
com.atlassian.streams.confluence	4031	2017-05-27 12:40:31.278	date-en-NZ
com.atlassian.confluence.plugins.confluence-space-ia	4032	2017-05-27 12:40:31.278	ao-module
com.atlassian.confluence.plugins.confluence-inline-comments	4033	2017-05-27 12:40:31.278	notification-transformer-resolve
com.atlassian.applinks.applinks-oauth-plugin	4034	2017-05-27 12:40:31.278	TwoLeggedOAuthWithImpersonationAuthenticatorProviderPluginModule
com.atlassian.confluence.extra.widgetconnector	4035	2017-05-27 12:40:31.278	placeholderService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4036	2017-05-27 12:40:31.278	licenseHandler
com.atlassian.streams.confluence	4037	2017-05-27 12:40:31.278	captchaManager
com.atlassian.confluence.plugins.confluence-lookandfeel	4038	2017-05-27 12:40:31.278	sitelogo-admin-task
com.atlassian.confluence.plugins.confluence-mentions-plugin	4039	2017-05-27 12:40:31.278	mentionsRest
com.atlassian.auiplugin	4040	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-skate
com.atlassian.mywork.mywork-common-plugin	4041	2017-05-27 12:40:31.278	mywork-registration-provider
com.atlassian.confluence.extra.flyingpdf	4042	2017-05-27 12:40:31.278	globalconfigpdflayout
com.atlassian.querylang.confluence-cql-plugin	4043	2017-05-27 12:40:31.278	cqlsearchaction
com.atlassian.auiplugin	4044	2017-05-27 12:40:31.278	aui-css
com.atlassian.confluence.keyboardshortcuts	4045	2017-05-27 12:40:31.278	create.blog
com.atlassian.confluence.plugins.confluence-email-resources	4046	2017-05-27 12:40:31.278	stop-watching-space-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4047	2017-05-27 12:40:31.278	emoticonStorageToViewTransformer
confluence.web.resources	4048	2017-05-27 12:40:31.278	icons
com.atlassian.confluence.plugins.expand-macro	4049	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.ext.newcode-macro-plugin	4050	2017-05-27 12:40:31.278	syntaxhighlighter-export
com.atlassian.confluence.plugins.confluence-easyuser-admin	4051	2017-05-27 12:40:31.278	admin-signup-users-panel
com.atlassian.plugin.notifications.notifications-module	4052	2017-05-27 12:40:31.278	notification-macro
com.atlassian.streams	4053	2017-05-27 12:40:31.278	xsrfTokenValidator
confluence.sections.create	4054	2017-05-27 12:40:31.278	add-page-without-parent-template
com.atlassian.auiplugin	4055	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-attributes
com.atlassian.plugins.base-hipchat-integration-plugin	4056	2017-05-27 12:40:31.278	rest-integration-filter
com.atlassian.confluence.plugins.gadgets	4057	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.confluence.plugins.confluence-rest-resources	4058	2017-05-27 12:40:31.278	rest-api-experimental-filter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4059	2017-05-27 12:40:31.278	mpacAnalyticsHttpClientFactory
com.atlassian.streams.confluence	4060	2017-05-27 12:40:31.278	confluence-rest-filter
com.atlassian.confluence.ext.newcode-macro-plugin	4061	2017-05-27 12:40:31.278	syntaxhighlighter-mobile
com.atlassian.mywork.mywork-confluence-provider-plugin	4062	2017-05-27 12:40:31.278	localeManager
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4063	2017-05-27 12:40:31.278	notificationStoreService
confluence.extra.impresence2	4064	2017-05-27 12:40:31.278	icq
confluence.sections.profile	4065	2017-05-27 12:40:31.278	unfollow-user
com.atlassian.confluence.extra.flyingpdf	4066	2017-05-27 12:40:31.278	exportHtmlService
confluence.extra.dynamictasklist2	4067	2017-05-27 12:40:31.278	tasklist
com.atlassian.auiplugin	4068	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-unique-id
com.atlassian.streams.confluence	4069	2017-05-27 12:40:31.278	date-ms-BN
com.atlassian.confluence.plugins.gadgets	4070	2017-05-27 12:40:31.278	externalGadgetStore
com.atlassian.plugins.atlassian-help-tips	4071	2017-05-27 12:40:31.278	helptips
confluence.web.components	4072	2017-05-27 12:40:31.278	show.business.group.in.user.hover
com.atlassian.applinks.applinks-oauth-plugin	4073	2017-05-27 12:40:31.278	serviceProviderStoreService
com.atlassian.applinks.applinks-plugin	4074	2017-05-27 12:40:31.278	applinks-configure-entity-links
com.atlassian.confluence.plugins.confluence-baseurl-plugin	4075	2017-05-27 12:40:31.278	baseurl-filter
com.atlassian.streams.confluence	4076	2017-05-27 12:40:31.278	hibernateSessionFactory
com.atlassian.auiplugin	4078	2017-05-27 12:40:31.278	internal-src-js-aui-css-deprecations
com.atlassian.mywork.mywork-confluence-host-plugin	4079	2017-05-27 12:40:31.278	open.notifications
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4080	2017-05-27 12:40:31.278	localeResolver
confluence.extractors.core	4081	2017-05-27 12:40:31.278	spaceTypeChangeExtractor
com.atlassian.confluence.plugins.confluence-software-blueprints	4082	2017-05-27 12:40:31.278	requirements-item
confluence.extractors.core	4083	2017-05-27 12:40:31.278	untokenizedTitleChangeExtractor
com.atlassian.confluence.editor	4084	2017-05-27 12:40:31.278	emotions-resources
confluence.extractors.core	4085	2017-05-27 12:40:31.278	versionCommentChangeExtractor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4086	2017-05-27 12:40:31.278	licenseTokenValidator
com.atlassian.confluence.plugins.confluence-file-notifications	4087	2017-05-27 12:40:31.278	file-notifications-file-details-file-link
com.atlassian.mywork.mywork-confluence-host-plugin	4088	2017-05-27 12:40:31.278	systemStatusService
com.atlassian.plugins.authentication.atlassian-authentication-plugin	4089	2017-05-27 12:40:31.278	error-handling-filter
com.atlassian.support.stp	4090	2017-05-27 12:40:31.278	pluginSupportInfoXmlKeyResolver
com.atlassian.streams.streams-thirdparty-plugin	4091	2017-05-27 12:40:31.278	tenantAwareDataSourceProvider
com.atlassian.confluence.plugins.confluence-paste	4092	2017-05-27 12:40:31.278	autoconvert-google-redirect
com.atlassian.confluence.plugins.confluence-mobile	4093	2017-05-27 12:40:31.278	user-profile-resources
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4094	2017-05-27 12:40:31.278	whitelist-rest-filter
com.atlassian.streams.confluence	4095	2017-05-27 12:40:31.278	date-af-ZA
com.atlassian.confluence.plugins.confluence-files	4096	2017-05-27 12:40:31.278	confluenceFileRest
com.atlassian.confluence.extra.flyingpdf	4097	2017-05-27 12:40:31.278	intermediateHtmlBuilder
confluence.macros.advanced	4098	2017-05-27 12:40:31.278	blogpost-resources
com.atlassian.confluence.extra.widgetconnector	4099	2017-05-27 12:40:31.278	skitch
com.atlassian.activeobjects.activeobjects-plugin	4100	2017-05-27 12:40:31.278	enable-html-escaping
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4101	2017-05-27 12:40:31.278	rest-filter
com.atlassian.plugins.atlassian-whitelist-core-plugin	4102	2017-05-27 12:40:31.278	whitelistManager
com.atlassian.applinks.applinks-cors-plugin	4103	2017-05-27 12:40:31.278	applinkPluginUtil
crowd.system.passwordencoders	4104	2017-05-27 12:40:31.278	md5
com.atlassian.mywork.mywork-confluence-host-plugin	4105	2017-05-27 12:40:31.278	user-mapping
com.atlassian.gadgets.opensocial	4106	2017-05-27 12:40:31.278	js-servlet
confluence.web.resources	4107	2017-05-27 12:40:31.278	shared-templates
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4108	2017-05-27 12:40:31.278	servicemonitor-template
confluence.sections.space.admin	4109	2017-05-27 12:40:31.278	spacepermissions
com.atlassian.confluence.plugins.editor-loader	4110	2017-05-27 12:40:31.278	breadcrumb-generator
confluence.extractors.core	4111	2017-05-27 12:40:31.278	commentExtractor
com.atlassian.gadgets.publisher	4112	2017-05-27 12:40:31.278	dashboard-item-common
com.atlassian.confluence.keyboardshortcuts	4113	2017-05-27 12:40:31.278	edit.page
com.atlassian.confluence.plugins.confluence-lookandfeel	4114	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.confluence-mobile	4115	2017-05-27 12:40:31.278	pageBuilderService
com.atlassian.auiplugin	4116	2017-05-27 12:40:31.278	aui-experimental-page
com.atlassian.streams.confluence	4117	2017-05-27 12:40:31.278	date-hi-IN
com.atlassian.auiplugin	4118	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-dropdown2
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4119	2017-05-27 12:40:31.278	hipChatServerDiscovery
confluence.macros.advanced	4120	2017-05-27 12:40:31.278	include-servlet
com.atlassian.streams	4121	2017-05-27 12:40:31.278	feedParser
confluence.listeners.core	4122	2017-05-27 12:40:31.278	resetXStreamPluginListener
com.atlassian.confluence.plugins.confluence-content-property-storage	4123	2017-05-27 12:40:31.278	jsonExpressionEvaluator
com.atlassian.auiplugin	4124	2017-05-27 12:40:31.278	aui-experimental-soy-templates-legacy1
com.atlassian.applinks.applinks-plugin	4125	2017-05-27 12:40:31.278	fisheyeCrucibleRepository
com.atlassian.streams.confluence	4126	2017-05-27 12:40:31.278	date-se-NO
com.atlassian.confluence.plugins.confluence-email-resources	4127	2017-05-27 12:40:31.278	content-templates-content-deleted-lozenge-pattern-1.0.0
com.atlassian.confluence.editor	4128	2017-05-27 12:40:31.278	editor-featured-macro-info
com.atlassian.applinks.applinks-plugin	4129	2017-05-27 12:40:31.278	genericEntity
com.atlassian.confluence.plugins.confluence-space-ia	4130	2017-05-27 12:40:31.278	spacebar-profile
confluence.sections.admin.header	4131	2017-05-27 12:40:31.278	conf-admin
com.atlassian.streams	4132	2017-05-27 12:40:31.278	date-tn-ZA
com.atlassian.plugin.notifications.notifications-module	4133	2017-05-27 12:40:31.278	notificationsMacroVariableHelp
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4134	2017-05-27 12:40:31.278	defaultNotificationPreferenceManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4135	2017-05-27 12:40:31.278	mailContentProcessor
confluence.web.panels	4136	2017-05-27 12:40:31.278	confluence-header-user-menu
com.atlassian.confluence.plugins.confluence-sal-plugin	4137	2017-05-27 12:40:31.278	searchQueryParser
com.atlassian.confluence.plugins.share-page	4138	2017-05-27 12:40:31.278	_private_share-page-resources
com.atlassian.analytics.analytics-client	4139	2017-05-27 12:40:31.278	analyticsClientWhitelist
com.atlassian.confluence.extra.officeconnector	4140	2017-05-27 12:40:31.278	viewdoc
com.atlassian.streams.confluence	4141	2017-05-27 12:40:31.278	entryFactory
com.atlassian.support.stp	4142	2017-05-27 12:40:31.278	stp-confluence-link
com.atlassian.confluence.plugins.confluence-content-property-storage	4143	2017-05-27 12:40:31.278	contentPropertyService
com.atlassian.confluence.plugins.share-page	4144	2017-05-27 12:40:31.278	share-page-notification
com.atlassian.confluence.plugins.confluence-templates	4145	2017-05-27 12:40:31.278	space-templates-2
com.atlassian.confluence.plugins.confluence-view-file-macro	4146	2017-05-27 12:40:31.278	capabilityService
com.atlassian.confluence.plugins.confluence-create-content-plugin	4147	2017-05-27 12:40:31.278	requestResolver
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4148	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.confluence.plugins.share-page	4149	2017-05-27 12:40:31.278	share-draft-notification
com.atlassian.confluence.extra.widgetconnector	4150	2017-05-27 12:40:31.278	httpRetrievalEmbedService
confluence.web.resources	4151	2017-05-27 12:40:31.278	defaults
com.atlassian.confluence.plugins.confluence-mobile	4152	2017-05-27 12:40:31.278	lib
com.atlassian.streams.confluence	4153	2017-05-27 12:40:31.278	date-en-GB
com.atlassian.confluence.plugins.view-storage-format	4154	2017-05-27 12:40:31.278	view-storage-resources
confluence.listeners.core	4155	2017-05-27 12:40:31.278	macroMetaDataListener
com.atlassian.confluence.extra.flyingpdf	4156	2017-05-27 12:40:31.278	betterpdf
com.atlassian.confluence.plugins.confluence-inline-tasks	4157	2017-05-27 12:40:31.278	hipchat-resources-2.0.0
com.atlassian.applinks.applinks-plugin	4158	2017-05-27 12:40:31.278	localeResolver
confluence.macros.advanced	4159	2017-05-27 12:40:31.278	favpages
com.atlassian.applinks.applinks-plugin	4160	2017-05-27 12:40:31.278	applinks-css
confluence.macros.dashboard	4161	2017-05-27 12:40:31.278	globalEntitiesContextProvider
com.atlassian.confluence.plugins.confluence-inline-comments	4162	2017-05-27 12:40:31.278	confluence-inline-new-mail-batching
com.atlassian.confluence.plugins.gadgets.spi	4163	2017-05-27 12:40:31.278	externalGadgetStore
com.atlassian.auiplugin	4164	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-jquery-plugins-jquery-select2
com.atlassian.analytics.analytics-client	4165	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.mywork.mywork-common-plugin	4166	2017-05-27 12:40:31.278	my-work-client-rest
com.atlassian.applinks.applinks-trustedapps-plugin	4167	2017-05-27 12:40:31.278	webSudoManager
com.atlassian.confluence.editor	4168	2017-05-27 12:40:31.278	page-editor-css
com.atlassian.confluence.editor	4169	2017-05-27 12:40:31.278	editor-settings-panel
com.atlassian.confluence.plugins.confluence-quicknav	4170	2017-05-27 12:40:31.278	admin-section-provider
confluence.renderer.components	4171	2017-05-27 12:40:31.278	embedded
com.atlassian.confluence.plugins.confluence-page-banner	4172	2017-05-27 12:40:31.278	page-banner-common-resources
confluence.web.resources	4173	2017-05-27 12:40:31.278	date-time-formatting
com.atlassian.auiplugin	4174	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-escape
com.atlassian.confluence.plugins.confluence-email-resources	4175	2017-05-27 12:40:31.278	content-templates-inline-user-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-mentions-plugin	4176	2017-05-27 12:40:31.278	mentionsExtractor
com.atlassian.confluence.extra.widgetconnector	4177	2017-05-27 12:40:31.278	flickr
com.atlassian.confluence.plugins.confluence-email-resources	4178	2017-05-27 12:40:31.278	content-templates-users-involved-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-edge-index	4179	2017-05-27 12:40:31.278	blogpost.create
com.atlassian.applinks.applinks-plugin	4180	2017-05-27 12:40:31.278	confluence
confluence.filters.core	4181	2017-05-27 12:40:31.278	gzipFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4182	2017-05-27 12:40:31.278	pluginUpdateCheckJob
confluence.web.resources	4183	2017-05-27 12:40:31.278	space-admin
com.atlassian.confluence.plugins.confluence-inline-comments	4184	2017-05-27 12:40:31.278	strip-inline-comment-marker
com.atlassian.analytics.analytics-client	4185	2017-05-27 12:40:31.278	confluenceLicenseCreationDateProvider
confluence.web.resources	4186	2017-05-27 12:40:31.278	breadcrumbs-jquery
com.atlassian.applinks.applinks-basicauth-plugin	4187	2017-05-27 12:40:31.278	basicContextFilter
com.atlassian.confluence.plugins.confluence-highlight-actions	4188	2017-05-27 12:40:31.278	tableSelectionModifier
com.atlassian.confluence.extra.officeconnector	4189	2017-05-27 12:40:31.278	editattachmentinworditem
com.atlassian.confluence.plugins.confluence-easyuser-admin	4190	2017-05-27 12:40:31.278	taskManager
com.atlassian.confluence.plugins.confluence-mentions-plugin	4191	2017-05-27 12:40:31.278	mentionsRest-filter
confluence.extra.confluencerpc	4192	2017-05-27 12:40:31.278	pagesSoapService
com.atlassian.querylang.confluence-cql-plugin	4193	2017-05-27 12:40:31.278	favourite-spaces-query-function
com.atlassian.confluence.extra.flyingpdf	4194	2017-05-27 12:40:31.278	globalconfigpdfstyle
com.atlassian.applinks.applinks-oauth-plugin	4195	2017-05-27 12:40:31.278	add-atlassian-service-provider
com.atlassian.mywork.mywork-common-plugin	4196	2017-05-27 12:40:31.278	config-service
com.atlassian.confluence.extra.flyingpdf	4197	2017-05-27 12:40:31.278	pdfexportpageop
confluence.extra.impresence2	4198	2017-05-27 12:40:31.278	reporter-aim
com.atlassian.confluence.plugins.confluence-mobile	4199	2017-05-27 12:40:31.278	mobile-resource-servlet
com.atlassian.confluence.plugins.confluence-file-notifications	4200	2017-05-27 12:40:31.278	file-content-remove-email-notification-template-body
com.atlassian.confluence.plugins.confluence-templates	4201	2017-05-27 12:40:31.278	list-global-templates-panel
com.atlassian.analytics.analytics-client	4202	2017-05-27 12:40:31.278	confluence-event-checklist-menu-item
com.atlassian.confluence.keyboardshortcuts	4203	2017-05-27 12:40:31.278	tinymce.h1
com.atlassian.confluence.plugins.confluence-software-project	4204	2017-05-27 12:40:31.278	sp-space-homepage-template
com.atlassian.healthcheck.atlassian-healthcheck	4205	2017-05-27 12:40:31.278	health-check
com.atlassian.confluence.keyboardshortcuts	4206	2017-05-27 12:40:31.278	tinymce.h2
com.atlassian.confluence.keyboardshortcuts	4207	2017-05-27 12:40:31.278	tinymce.h3
confluence.listeners.core	4208	2017-05-27 12:40:31.278	global-settings-audit-logging-listener
com.atlassian.confluence.keyboardshortcuts	4209	2017-05-27 12:40:31.278	tinymce.h4
com.atlassian.confluence.plugins.confluence-create-content-plugin	4210	2017-05-27 12:40:31.278	templateFinderFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4211	2017-05-27 12:40:31.278	sysPersistedContextItem
com.atlassian.auiplugin	4212	2017-05-27 12:40:31.278	aui-experimental-navigation
com.atlassian.auiplugin	4213	2017-05-27 12:40:31.278	table
com.atlassian.applinks.applinks-cors-plugin	4214	2017-05-27 12:40:31.278	authenticationConfigurationManager
com.atlassian.confluence.plugins.confluence-like	4215	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.confluence-email-resources	4216	2017-05-27 12:40:31.278	avatar-image-function
com.atlassian.confluence.keyboardshortcuts	4217	2017-05-27 12:40:31.278	tinymce.h5
com.atlassian.applinks.applinks-plugin	4218	2017-05-27 12:40:31.278	applinks-util-js
com.atlassian.confluence.keyboardshortcuts	4219	2017-05-27 12:40:31.278	tinymce.h6
com.atlassian.confluence.plugins.expand-macro	4220	2017-05-27 12:40:31.278	expand-macro-desktop-resources
com.atlassian.auiplugin	4221	2017-05-27 12:40:31.278	aui-buttons
com.atlassian.streams	4222	2017-05-27 12:40:31.278	date-ko-KR
com.atlassian.confluence.plugins.confluence-space-ia	4223	2017-05-27 12:40:31.278	spacesidebar
com.atlassian.querylang.confluence-cql-plugin	4224	2017-05-27 12:40:31.278	start-of-month-one-arg-function
com.atlassian.confluence.plugins.confluence-software-blueprints	4225	2017-05-27 12:40:31.278	jirareports-blueprint
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4226	2017-05-27 12:40:31.278	upm-audit-log-resources
com.atlassian.plugin.notifications.notifications-module	4227	2017-05-27 12:40:31.278	notificationServersServlet
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4228	2017-05-27 12:40:31.278	confluence-user-authentication-servlet
confluence.search.mappers.lucene	4229	2017-05-27 12:40:31.278	fullname
com.atlassian.querylang.confluence-cql-plugin	4230	2017-05-27 12:40:31.278	label-field
com.atlassian.streams.confluence	4231	2017-05-27 12:40:31.278	date-zh-HK
com.atlassian.confluence.plugins.confluence-like	4232	2017-05-27 12:40:31.278	like-created-notification-template
com.atlassian.confluence.keyboardshortcuts	4233	2017-05-27 12:40:31.278	tinymce.wikimarkup
org.randombits.confluence.toc	4234	2017-05-27 12:40:31.278	toc-old
com.atlassian.analytics.analytics-client	4235	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.oauth.consumer	4236	2017-05-27 12:40:31.278	consumerService
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4237	2017-05-27 12:40:31.278	pluginLicenseValidator
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4238	2017-05-27 12:40:31.278	upm-update-check-page
com.atlassian.confluence.plugins.expand-macro	4239	2017-05-27 12:40:31.278	expand-macro-mobile-resources
com.atlassian.labs.atlassian-bot-killer	4240	2017-05-27 12:40:31.278	BotKillerFilter
com.atlassian.applinks.applinks-cors-plugin	4241	2017-05-27 12:40:31.278	corsContextFilter
com.atlassian.confluence.rpc.confluence-axis-soap-plugin	4242	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.streams	4243	2017-05-27 12:40:31.278	date-ms-MY
com.atlassian.confluence.plugins.confluence-software-project	4244	2017-05-27 12:40:31.278	sp-space-product-requirements-template
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4245	2017-05-27 12:40:31.278	rest
com.atlassian.plugins.rest.atlassian-rest-module	4246	2017-05-27 12:40:31.278	darkFeatureManager
com.atlassian.confluence.plugins.confluence-highlight-actions	4247	2017-05-27 12:40:31.278	highlighting-service
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4248	2017-05-27 12:40:31.278	darkFeatureManager
com.atlassian.confluence.plugins.confluence-files	4249	2017-05-27 12:40:31.278	filesUnresolvedCommentCount
com.atlassian.streams	4250	2017-05-27 12:40:31.278	date-en-ZW
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4251	2017-05-27 12:40:31.278	licenseEntityFactory
com.atlassian.confluence.extra.officeconnector	4252	2017-05-27 12:40:31.278	velocity.helper
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4253	2017-05-27 12:40:31.278	tomcatHealthCheck
confluence.search.mappers.lucene	4254	2017-05-27 12:40:31.278	authorSearchFilter
confluence.sections.admin	4255	2017-05-27 12:40:31.278	customhtml
com.atlassian.applinks.applinks-plugin	4256	2017-05-27 12:40:31.278	jira-project
com.atlassian.querylang.confluence-cql-plugin	4257	2017-05-27 12:40:31.278	start-of-day-one-arg-function
com.atlassian.applinks.applinks-plugin	4258	2017-05-27 12:40:31.278	applinks-lib
confluence.sections.space.tools	4259	2017-05-27 12:40:31.278	choosetheme
com.atlassian.confluence.plugins.expand-macro	4260	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.confluence.plugins.recently-viewed-plugin	4261	2017-05-27 12:40:31.278	recently-viewed-content-one-arg-function
com.atlassian.confluence.plugins.confluence-create-content-plugin	4262	2017-05-27 12:40:31.278	templateUpdater
com.atlassian.auiplugin	4263	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-select-suggestions-model
com.atlassian.streams	4264	2017-05-27 12:40:31.278	date-en-ZA
com.atlassian.mywork.mywork-confluence-provider-plugin	4265	2017-05-27 12:40:31.278	xhtmlContent
confluence.sections.space.tools	4266	2017-05-27 12:40:31.278	custompagecontent
com.atlassian.crowd.embedded.admin	4267	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-ui-components	4268	2017-05-27 12:40:31.278	include-exclude-picker
com.atlassian.streams.confluence	4269	2017-05-27 12:40:31.278	date-en-JM
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4270	2017-05-27 12:40:31.278	plugin-finder-servlet
com.atlassian.confluence.plugins.system-templates	4271	2017-05-27 12:40:31.278	system-template-resources
com.atlassian.confluence.extra.officeconnector	4272	2017-05-27 12:40:31.278	tokenProvider-filter
com.atlassian.streams.confluence	4273	2017-05-27 12:40:31.278	date-se-SE
com.atlassian.confluence.keyboardshortcuts	4274	2017-05-27 12:40:31.278	favourite.page
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4275	2017-05-27 12:40:31.278	follower-added-notification-transformer
com.atlassian.streams.streams-thirdparty-plugin	4276	2017-05-27 12:40:31.278	representationFactory
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4277	2017-05-27 12:40:31.278	objectMapperFactory
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4278	2017-05-27 12:40:31.278	amd
com.atlassian.applinks.applinks-oauth-plugin	4279	2017-05-27 12:40:31.278	oAuthContextFilter
com.atlassian.confluence.plugins.drag-and-drop	4280	2017-05-27 12:40:31.278	drag-and-drop-for-editor
com.atlassian.confluence.plugins.confluence-sal-plugin	4281	2017-05-27 12:40:31.278	requestFactory
com.atlassian.confluence.plugins.confluence-file-notifications	4282	2017-05-27 12:40:31.278	file-content-update-notification
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4283	2017-05-27 12:40:31.278	whitelistService
com.atlassian.streams.confluence	4284	2017-05-27 12:40:31.278	date-nb-NO
com.atlassian.confluence.plugins.gadgets	4285	2017-05-27 12:40:31.278	gadgetRequestContextFactory
com.atlassian.confluence.plugins.confluence-email-resources	4286	2017-05-27 12:40:31.278	content-templates-content-added-pattern-1.0.0
com.atlassian.auiplugin	4287	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-results-list
com.atlassian.plugins.atlassian-project-creation-plugin	4288	2017-05-27 12:40:31.278	project-linking-rest
confluence.macros.advanced	4289	2017-05-27 12:40:31.278	blogpost
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4290	2017-05-27 12:40:31.278	innoDBLogFileSizeCheck
com.atlassian.streams.confluence	4291	2017-05-27 12:40:31.278	date-zh-CN
com.atlassian.confluence.plugins.confluence-inline-tasks	4292	2017-05-27 12:40:31.278	view-page-tasks-email-action-item
com.atlassian.confluence.plugins.confluence-create-content-plugin	4293	2017-05-27 12:40:31.278	contentBlueprintManager
confluence.extra.attachments	4294	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4295	2017-05-27 12:40:31.278	applicationStatusService
com.atlassian.confluence.plugins.gadgets	4296	2017-05-27 12:40:31.278	macro-browser-for-gadgetsplugin
confluence.sections.admin	4297	2017-05-27 12:40:31.278	configurecaptcha
confluence.extra.information	4298	2017-05-27 12:40:31.278	information-plugin-adg-styles
com.atlassian.streams.confluence	4299	2017-05-27 12:40:31.278	date-en-IE
confluence.web.resources	4300	2017-05-27 12:40:31.278	aui-soy-resources
com.atlassian.streams.actions	4301	2017-05-27 12:40:31.278	inlineActionsJs
com.atlassian.confluence.plugins.confluence-mentions-plugin	4302	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4303	2017-05-27 12:40:31.278	confluence-upm-purchased-addons-menu
com.atlassian.confluence.plugins.confluence-sal-plugin	4304	2017-05-27 12:40:31.278	vcacheRequestContextOperations
com.atlassian.confluence.image.effects.ImageEffectsPlugin	4305	2017-05-27 12:40:31.278	imageEffectsAnalyticsWhitelist
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	4306	2017-05-27 12:40:31.278	ao
com.atlassian.plugins.atlassian-whitelist-core-plugin	4307	2017-05-27 12:40:31.278	inboundWhitelist
com.atlassian.streams.confluence	4308	2017-05-27 12:40:31.278	spaceManager
com.atlassian.confluence.extra.widgetconnector	4309	2017-05-27 12:40:31.278	twitter-autoconvert-webresources
com.atlassian.streams.confluence	4310	2017-05-27 12:40:31.278	date-mk-MK
com.atlassian.confluence.plugins.gadgets.spi	4311	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.confluence.plugins.gadgets	4312	2017-05-27 12:40:31.278	gadgetCounter
com.atlassian.applinks.applinks-oauth-plugin	4313	2017-05-27 12:40:31.278	oAuthOrphanedTrustDetector
com.atlassian.auiplugin	4314	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-widget
confluence.editor.actions	4315	2017-05-27 12:40:31.278	edit-image
com.atlassian.auiplugin	4316	2017-05-27 12:40:31.278	aui-experimental-progress-indicator
com.atlassian.streams	4317	2017-05-27 12:40:31.278	date-sl-SI
confluence.sections.page.temp	4318	2017-05-27 12:40:31.278	view
com.atlassian.auiplugin	4319	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-inline-dialog2
com.atlassian.streams	4320	2017-05-27 12:40:31.278	formatPreferenceProvider
com.atlassian.auiplugin	4321	2017-05-27 12:40:31.278	internal-keyboardshortcuts
com.atlassian.confluence.plugins.confluence-inline-tasks	4322	2017-05-27 12:40:31.278	inline-tasks-pdf-export
com.atlassian.confluence.plugins.confluence-like	4323	2017-05-27 12:40:31.278	confluence-like-created-batching
com.atlassian.confluence.plugins.confluence-email-resources	4324	2017-05-27 12:40:31.278	template-utils-avatar-name-table-column-1.0.0
confluence.sections.space.admin	4325	2017-05-27 12:40:31.278	permissionedpages
com.atlassian.plugin.notifications.notifications-module	4326	2017-05-27 12:40:31.278	editNotificationServerServlet
confluence.macros.advanced	4327	2017-05-27 12:40:31.278	recently-updated
confluence.listeners.core	4328	2017-05-27 12:40:31.278	page-templates-logging-listener
com.atlassian.confluence.editor	4329	2017-05-27 12:40:31.278	placeholder-caching-filter
com.atlassian.mywork.mywork-common-plugin	4330	2017-05-27 12:40:31.278	authenticationConfigurationManager
confluence.sections.space.tools	4331	2017-05-27 12:40:31.278	spacedetails-personal
com.atlassian.confluence.plugins.confluence-create-content-plugin	4332	2017-05-27 12:40:31.278	promotedTemplateService
com.atlassian.confluence.plugins.confluence-email-resources	4333	2017-05-27 12:40:31.278	stop-watching-all-blogs-email-footer-item
com.atlassian.confluence.plugins.confluence-email-resources	4334	2017-05-27 12:40:31.278	content-templates-page-title-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-space-ia	4335	2017-05-27 12:40:31.278	space-tools-browse-pages
com.atlassian.confluence.ext.newcode-macro-plugin	4336	2017-05-27 12:40:31.278	code
confluence.listeners.core	4337	2017-05-27 12:40:31.278	updateLabelsInChangeIndexListener
com.atlassian.streams.confluence	4338	2017-05-27 12:40:31.278	date-lt-LT
com.atlassian.analytics.analytics-client	4339	2017-05-27 12:40:31.278	timeoutChecker
com.atlassian.favicon.confluence-custom-favicon-plugin	4340	2017-05-27 12:40:31.278	favicon-soy
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4341	2017-05-27 12:40:31.278	localeResolver
com.atlassian.plugins.atlassian-nps-plugin	4342	2017-05-27 12:40:31.278	skate-shim
com.atlassian.confluence.editor	4343	2017-05-27 12:40:31.278	editor-restricted
com.atlassian.streams.streams-thirdparty-plugin	4344	2017-05-27 12:40:31.278	tx-processor
com.atlassian.streams.confluence	4345	2017-05-27 12:40:31.278	date-zh-MO
com.atlassian.auiplugin	4346	2017-05-27 12:40:31.278	aui-experimental-module
com.atlassian.mywork.mywork-common-plugin	4347	2017-05-27 12:40:31.278	task-service
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4348	2017-05-27 12:40:31.278	upm-audit-log
confluence.web.resources	4349	2017-05-27 12:40:31.278	aui-select2
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4350	2017-05-27 12:40:31.278	confluenceHipChatIntegrationAnalyticsWhitelist
com.atlassian.confluence.editor	4351	2017-05-27 12:40:31.278	tinymceeditor
com.atlassian.auiplugin	4352	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-checkbox-multiselect
confluence.search.mappers.lucene	4353	2017-05-27 12:40:31.278	none
com.atlassian.confluence.ext.newcode-macro-plugin	4354	2017-05-27 12:40:31.278	code-xhtml
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4355	2017-05-27 12:40:31.278	keyboardshortcut-hash
com.atlassian.confluence.extra.officeconnector	4356	2017-05-27 12:40:31.278	downloadInEditor
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4357	2017-05-27 12:40:31.278	templateRender
confluence.sections.page	4358	2017-05-27 12:40:31.278	view
confluence.sections.page.operations	4359	2017-05-27 12:40:31.278	copy
confluence.macros.dashboard	4360	2017-05-27 12:40:31.278	recently-updated-dashboard
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4361	2017-05-27 12:40:31.278	page-trashed-notification-template-body
com.atlassian.oauth.serviceprovider	4362	2017-05-27 12:40:31.278	unescaper
confluence.extra.attachments	4363	2017-05-27 12:40:31.278	space-attachments-xhtml
com.atlassian.plugin.notifications.notifications-module	4364	2017-05-27 12:40:31.278	notificationsIssueEventListener
com.atlassian.confluence.extra.officeconnector	4365	2017-05-27 12:40:31.278	importworditem
com.atlassian.plugin.notifications.notifications-module	4366	2017-05-27 12:40:31.278	templatePathResolver
com.atlassian.plugin.notifications.notifications-module	4367	2017-05-27 12:40:31.278	rendererComponentAccessor
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4368	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.confluence-create-content-plugin	4369	2017-05-27 12:40:31.278	i18nResolver
confluence.extra.jira	4370	2017-05-27 12:40:31.278	jira-issues-retriever
com.atlassian.querylang.confluence-cql-plugin	4371	2017-05-27 12:40:31.278	type-sort-mapper
confluence.user.menu.concise	4372	2017-05-27 12:40:31.278	user-concise
com.atlassian.mywork.mywork-common-plugin	4373	2017-05-27 12:40:31.278	helpPathResolver
com.atlassian.streams.actions	4374	2017-05-27 12:40:31.278	pluginAccessor
com.atlassian.streams.confluence	4375	2017-05-27 12:40:31.278	date-tr-TR
com.atlassian.confluence.plugins.profile-picture	4376	2017-05-27 12:40:31.278	profile-picture-editor_resources
com.atlassian.mywork.mywork-confluence-host-plugin	4377	2017-05-27 12:40:31.278	my-work-rest
com.atlassian.oauth.serviceprovider	4378	2017-05-27 12:40:31.278	oauthRequestTokenServlet
confluence.sections.admin	4379	2017-05-27 12:40:31.278	language
com.atlassian.confluence.plugins.confluence-mentions-plugin	4380	2017-05-27 12:40:31.278	mention-email-reply-link
confluence.web.resources	4381	2017-05-27 12:40:31.278	space-permissions-form
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4382	2017-05-27 12:40:31.278	is-room-notification-enabled-soy-function
confluence.sections.space.advanced	4383	2017-05-27 12:40:31.278	advanced
com.atlassian.support.healthcheck.support-healthcheck-plugin	4384	2017-05-27 12:40:31.278	shcWhitelist
com.atlassian.streams	4385	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4386	2017-05-27 12:40:31.278	page-update-notification
com.atlassian.streams	4387	2017-05-27 12:40:31.278	date-es-AR
com.atlassian.confluence.plugins.confluence-mobile	4388	2017-05-27 12:40:31.278	legacyV2RendererContextInitialiser
com.atlassian.confluence.plugins.confluence-mobile	4389	2017-05-27 12:40:31.278	creatorsSearchFilter
com.atlassian.confluence.plugins.confluence-request-access-plugin	4390	2017-05-27 12:40:31.278	email-resources
com.atlassian.streams	4391	2017-05-27 12:40:31.278	sessionManager
com.atlassian.streams	4392	2017-05-27 12:40:31.278	date-sq-AL
com.atlassian.plugins.less-transformer-plugin	4393	2017-05-27 12:40:31.278	less-transformer
com.atlassian.confluence.plugins.dialog-wizard	4394	2017-05-27 12:40:31.278	dialogManager
com.atlassian.confluence.plugins.confluence-business-blueprints	4395	2017-05-27 12:40:31.278	meeting-notes-item
com.atlassian.confluence.plugins.confluence-link-browser	4396	2017-05-27 12:40:31.278	link-browser-tab-advanced
com.atlassian.querylang.confluence-cql-plugin	4397	2017-05-27 12:40:31.278	end-of-day-zero-arg-function
confluence.extra.impresence2	4398	2017-05-27 12:40:31.278	sametime-resources
com.atlassian.confluence.plugins.confluence-macro-browser	4399	2017-05-27 12:40:31.278	macro-browser-css
com.atlassian.confluence.plugins.confluence-email-resources	4400	2017-05-27 12:40:31.278	email-from-field-renderer
confluence.extra.impresence2	4401	2017-05-27 12:40:31.278	impresence.config
com.atlassian.confluence.plugins.confluence-email-resources	4402	2017-05-27 12:40:31.278	notification-templates-blog-edit-1.0.0
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4403	2017-05-27 12:40:31.278	audit-log-servlet
com.atlassian.confluence.plugins.confluence-email-resources	4404	2017-05-27 12:40:31.278	misc-icons
com.atlassian.applinks.applinks-plugin	4405	2017-05-27 12:40:31.278	applinksRestV2
com.atlassian.applinks.applinks-plugin	4406	2017-05-27 12:40:31.278	applinksRestV3
com.atlassian.confluence.plugins.confluence-inline-comments	4407	2017-05-27 12:40:31.278	confluence-inline-reply-batching
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4408	2017-05-27 12:40:31.278	copy-resources
com.atlassian.plugins.atlassian-whitelist-core-plugin	4409	2017-05-27 12:40:31.278	bandanaManager
com.atlassian.querylang.confluence-cql-plugin	4410	2017-05-27 12:40:31.278	start-of-week-zero-arg-function
com.atlassian.confluence.plugins.soy	4411	2017-05-27 12:40:31.278	soy-items-for-section-soy-function
com.atlassian.confluence.plugins.confluence-create-content-plugin	4412	2017-05-27 12:40:31.278	ao-module
confluence.sections.news	4413	2017-05-27 12:40:31.278	view
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4414	2017-05-27 12:40:31.278	periodic-collaborative-editing-mode-event
com.atlassian.confluence.extra.officeconnector	4415	2017-05-27 12:40:31.278	excel97ContentExtractor
confluence.sections.help	4416	2017-05-27 12:40:31.278	confluence-help
com.atlassian.applinks.applinks-plugin	4417	2017-05-27 12:40:31.278	authenticatorAccessor
confluence.search.mappers.lucene	4418	2017-05-27 12:40:31.278	inSpaceSearchFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4419	2017-05-27 12:40:31.278	pluginRequestFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4420	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.confluence.plugins.confluence-inline-comments	4421	2017-05-27 12:40:31.278	view-resolved-comments
com.atlassian.confluence.plugins.recently-viewed-plugin	4422	2017-05-27 12:40:31.278	ao-module
com.atlassian.applinks.applinks-trustedapps-plugin	4423	2017-05-27 12:40:31.278	requestFactory
com.atlassian.confluence.plugins.confluence-default-space-content-plugin	4424	2017-05-27 12:40:31.278	spacecontent-global
com.atlassian.streams	4425	2017-05-27 12:40:31.278	date-es-CL
com.atlassian.confluence.plugins.soy	4426	2017-05-27 12:40:31.278	soy-version-number-function
com.atlassian.streams	4427	2017-05-27 12:40:31.278	date-es-CO
com.atlassian.confluence.plugins.confluence-lookandfeel	4428	2017-05-27 12:40:31.278	faviconManager
com.atlassian.mywork.mywork-confluence-provider-plugin	4429	2017-05-27 12:40:31.278	impersonationService
com.atlassian.applinks.applinks-cors-plugin	4430	2017-05-27 12:40:31.278	corsAuthServlet
com.atlassian.streams	4431	2017-05-27 12:40:31.278	date-es-CR
com.atlassian.streams.confluence	4432	2017-05-27 12:40:31.278	date-en-CA
com.atlassian.auiplugin	4433	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-label
com.atlassian.analytics.analytics-client	4434	2017-05-27 12:40:31.278	confluence-analytics-configuration-menu-item
com.atlassian.confluence.plugins.confluence-license-rest	4435	2017-05-27 12:40:31.278	licenseWebFacade
com.atlassian.applinks.applinks-plugin	4436	2017-05-27 12:40:31.278	pluginSettingsFactory
com.atlassian.support.stp	4437	2017-05-27 12:40:31.278	action-factory
com.atlassian.mywork.mywork-confluence-provider-plugin	4438	2017-05-27 12:40:31.278	registrationProvider
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4439	2017-05-27 12:40:31.278	page-trashed-notification-template
confluence.extractors.core	4440	2017-05-27 12:40:31.278	attachmentMimeTypeChangeExtractor
tac.confluence.languages.fr_FR	4441	2017-05-27 12:40:31.278	fr_FR
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4442	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.extra.flyingpdf	4443	2017-05-27 12:40:31.278	pdfExportSettingsManager
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4444	2017-05-27 12:40:31.278	roadmap-analytics-resources
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4445	2017-05-27 12:40:31.278	roadmap-editor-toolbar-view-resources
com.atlassian.auiplugin	4446	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-polyfills-custom-event
com.atlassian.confluence.plugins.confluence-inline-comments	4447	2017-05-27 12:40:31.278	confluence-inline-comments-rest-filter
confluence.extra.layout	4448	2017-05-27 12:40:31.278	resources
com.atlassian.confluence.plugins.confluence-mobile	4449	2017-05-27 12:40:31.278	darkFeaturesManager
org.randombits.confluence.toc	4450	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.confluence.plugins.confluence-create-content-plugin	4451	2017-05-27 12:40:31.278	spaceLevelDisabledBlueprintsUpgradeTask
com.atlassian.confluence.plugins.confluence-quicknav	4452	2017-05-27 12:40:31.278	quicknav-admin-resources
com.atlassian.streams	4453	2017-05-27 12:40:31.278	date-es-BO
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4454	2017-05-27 12:40:31.278	hipchat-space-to-room-global
confluence.web.resources	4455	2017-05-27 12:40:31.278	mutation-observer
com.atlassian.plugins.atlassian-nav-links-plugin	4456	2017-05-27 12:40:31.278	locale-supporting-i18n-resolver
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4457	2017-05-27 12:40:31.278	roadmap-editor-timeline-view-resources
com.atlassian.confluence.extra.flyingpdf	4458	2017-05-27 12:40:31.278	pdfexport
com.atlassian.gadgets.embedded	4459	2017-05-27 12:40:31.278	gadget-container-resources
com.atlassian.plugin.jslibs	4515	2017-05-27 12:40:31.278	marionette-1.4.1-factory
confluence.extractors.core	4460	2017-05-27 12:40:31.278	pluginContentEntityObjectChangeExtractor
com.atlassian.confluence.plugins.confluence-previews	4461	2017-05-27 12:40:31.278	confluencePreviewsWhitelistFileViewer
com.atlassian.confluence.plugins.confluence-sal-plugin	4462	2017-05-27 12:40:31.278	componentLocator
com.atlassian.confluence.plugins.confluence-sal-plugin	4463	2017-05-27 12:40:31.278	confluenceConnectionProvider
com.atlassian.streams.confluence	4464	2017-05-27 12:40:31.278	date-en-BZ
com.atlassian.analytics.analytics-client	4465	2017-05-27 12:40:31.278	analytics-rest-filter
confluence.renderer.components	4466	2017-05-27 12:40:31.278	superscript
com.atlassian.confluence.plugins.recently-viewed-plugin	4467	2017-05-27 12:40:31.278	main-resources
com.atlassian.confluence.plugins.confluence-like	4468	2017-05-27 12:40:31.278	like-email-soy-templates-2
com.atlassian.applinks.applinks-trustedapps-plugin	4469	2017-05-27 12:40:31.278	xsrfTokenAccessor
com.atlassian.crowd.embedded.admin	4470	2017-05-27 12:40:31.278	confluence-ldap-additional-config
com.atlassian.confluence.plugins.recently-viewed-plugin	4471	2017-05-27 12:40:31.278	mobile-resources
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4472	2017-05-27 12:40:31.278	whitelist-soy-servlet
com.atlassian.querylang.confluence-cql-plugin	4473	2017-05-27 12:40:31.278	user-query-field-mapper
confluence.web.resources	4474	2017-05-27 12:40:31.278	contentnamesearch
com.atlassian.plugins.rest.atlassian-rest-module	4475	2017-05-27 12:40:31.278	rest-container-servlet-filter-INCLUDE
com.atlassian.auiplugin	4476	2017-05-27 12:40:31.278	aui-label
com.atlassian.streams	4477	2017-05-27 12:40:31.278	date-es-ES
com.atlassian.templaterenderer.api	4478	2017-05-27 12:40:31.278	webResourceUrlProviderContextItem
com.atlassian.confluence.plugins.confluence-onboarding	4479	2017-05-27 12:40:31.278	onboardingManager
com.atlassian.plugins.rest.atlassian-rest-module	4480	2017-05-27 12:40:31.278	rest-container-servlet-filter-ERROR
com.atlassian.auiplugin	4481	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-set-current
com.atlassian.confluence.plugins.gadgets	4482	2017-05-27 12:40:31.278	gadgetMacroMetadataProvider
confluence.extra.masterdetail	4483	2017-05-27 12:40:31.278	rest-caching-filter
com.atlassian.streams.confluence	4484	2017-05-27 12:40:31.278	date-en-AU
confluence.sections.space.tools	4485	2017-05-27 12:40:31.278	rss
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4486	2017-05-27 12:40:31.278	notification-templates
com.atlassian.confluence.plugins.confluence-daily-summary-email	4487	2017-05-27 12:40:31.278	dataSourceFactory
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4488	2017-05-27 12:40:31.278	emoticonEditorMarshaller
com.atlassian.gadgets.opensocial	4489	2017-05-27 12:40:31.278	oauth-callback-servlet
com.atlassian.confluence.plugins.gadgets	4490	2017-05-27 12:40:31.278	transactionTemplate
confluence.comment.action	4491	2017-05-27 12:40:31.278	comment-permalink
com.atlassian.confluence.plugins.view-source	4492	2017-05-27 12:40:31.278	viewsourceActions
com.atlassian.confluence.plugins.confluence-file-notifications	4493	2017-05-27 12:40:31.278	fileContentEventListener
com.atlassian.auiplugin	4494	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-row
com.atlassian.auiplugin	4495	2017-05-27 12:40:31.278	internal-jquery-ui-datepicker
com.atlassian.plugins.rest.atlassian-rest-module	4496	2017-05-27 12:40:31.278	xsrfRequestValidator
com.atlassian.confluence.plugins.confluence-nav-links	4497	2017-05-27 12:40:31.278	navlinksProjectPermissionManager
com.atlassian.streams	4498	2017-05-27 12:40:31.278	date-es-DO
confluence.extra.attachments	4499	2017-05-27 12:40:31.278	none
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4500	2017-05-27 12:40:31.278	confluenceMailer
com.atlassian.support.healthcheck.support-healthcheck-plugin	4501	2017-05-27 12:40:31.278	systemInformationService
com.atlassian.auiplugin	4502	2017-05-27 12:40:31.278	jquery-progressbar
com.atlassian.streams.confluence	4503	2017-05-27 12:40:31.278	date-da-DK
confluence.extractors.core	4504	2017-05-27 12:40:31.278	versionNumberChangeExtractor
confluence.extra.dynamictasklist2	4505	2017-05-27 12:40:31.278	taskListManager
com.atlassian.confluence.extra.widgetconnector	4506	2017-05-27 12:40:31.278	viddler
com.atlassian.confluence.keyboardshortcuts	4507	2017-05-27 12:40:31.278	tinymce.strikethrough
com.atlassian.streams	4508	2017-05-27 12:40:31.278	date-es-EC
com.atlassian.confluence.plugins.recently-viewed-plugin	4509	2017-05-27 12:40:31.278	recently-viewed-rest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4510	2017-05-27 12:40:31.278	pluginManagerHandler
com.atlassian.confluence.plugins.view-source	4511	2017-05-27 12:40:31.278	confluence-view-source-api-rest
confluence.macros.basic	4512	2017-05-27 12:40:31.278	loremipsum-xhtml
com.atlassian.confluence.keyboardshortcuts	4513	2017-05-27 12:40:31.278	tinymce.table.cut.row
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4514	2017-05-27 12:40:31.278	upm-marketplace-resources
com.atlassian.applinks.applinks-basicauth-plugin	4516	2017-05-27 12:40:31.278	typeAccessor
confluence.filters.core	4517	2017-05-27 12:40:31.278	confluenceActivityFilter
com.atlassian.confluence.plugins.confluence-business-blueprints	4518	2017-05-27 12:40:31.278	sharelinks-index-page
com.atlassian.applinks.applinks-oauth-plugin	4519	2017-05-27 12:40:31.278	oAuthTokenRetriever
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4520	2017-05-27 12:40:31.278	clusterLockService
com.atlassian.confluence.plugins.pagetree	4521	2017-05-27 12:40:31.278	pagetree-xhtml
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4522	2017-05-27 12:40:31.278	confluence-collaborative-editor-plugin-resources
com.atlassian.mywork.mywork-confluence-host-plugin	4523	2017-05-27 12:40:31.278	internalHostApplication
com.atlassian.confluence.plugins.confluence-inline-tasks	4524	2017-05-27 12:40:31.278	tasks-notification-payload-transformer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4525	2017-05-27 12:40:31.278	uriBuilderContextItem
confluence.listeners.core	4526	2017-05-27 12:40:31.278	thumbnailRemovingListener
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4527	2017-05-27 12:40:31.278	web-item-link
com.atlassian.auiplugin	4528	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-utils
com.atlassian.streams	4529	2017-05-27 12:40:31.278	date-ka-GE
confluence.extra.impresence2	4530	2017-05-27 12:40:31.278	skypeme
com.atlassian.confluence.plugins.gadgets	4531	2017-05-27 12:40:31.278	tokenStore
com.atlassian.confluence.plugins.confluence-mobile	4532	2017-05-27 12:40:31.278	removeApostropheEntityTransformer
confluence.search.mappers.lucene	4533	2017-05-27 12:40:31.278	inSpace
com.atlassian.confluence.plugins.confluence-rest-resources	4534	2017-05-27 12:40:31.278	view-page-api-link
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4535	2017-05-27 12:40:31.278	analyticsEventPublisher
com.atlassian.applinks.applinks-plugin	4536	2017-05-27 12:40:31.278	applicationProperties
confluence.extra.masterdetail	4537	2017-05-27 12:40:31.278	transactionTemplate
confluence.sections.space.tools	4538	2017-05-27 12:40:31.278	lookandfeel
com.atlassian.confluence.plugins.confluence-create-content-plugin	4539	2017-05-27 12:40:31.278	userStorageService
com.atlassian.mywork.mywork-confluence-host-plugin	4540	2017-05-27 12:40:31.278	client-registration-event-listener
com.atlassian.applinks.applinks-plugin	4541	2017-05-27 12:40:31.278	confluence-inbound-oauth
com.atlassian.streams	4542	2017-05-27 12:40:31.278	date-is-IS
com.atlassian.auiplugin	4543	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-vendor-jquery-serializetoobject
com.atlassian.confluence.plugins.status-macro	4544	2017-05-27 12:40:31.278	imageGeneratorServlet
confluence.user.menu	4545	2017-05-27 12:40:31.278	logout
com.atlassian.confluence.plugins.confluence-sal-plugin	4546	2017-05-27 12:40:31.278	platformTransactionManager
com.atlassian.streams.confluence	4547	2017-05-27 12:40:31.278	date-quz-BO
confluence.sections.profile	4548	2017-05-27 12:40:31.278	favourite-user-personal-space
com.atlassian.plugins.base-hipchat-integration-plugin	4549	2017-05-27 12:40:31.278	rest-integration
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4550	2017-05-27 12:40:31.278	dacidecision-resources
com.atlassian.confluence.plugins.confluence-monitoring-console	4551	2017-05-27 12:40:31.278	monitoring-console-helper-servlet
com.atlassian.confluence.plugins.confluence-inline-tasks	4552	2017-05-27 12:40:31.278	tasks-report
confluence.web.resources	4553	2017-05-27 12:40:31.278	setup-eval-license
com.atlassian.webhooks.atlassian-webhooks-plugin	4554	2017-05-27 12:40:31.278	webhooks-admin-resources
confluence.macros.basic	4555	2017-05-27 12:40:31.278	anchor-xhtml
com.atlassian.plugins.atlassian-whitelist-ui-plugin	4556	2017-05-27 12:40:31.278	webSudoManager
com.atlassian.confluence.plugins.confluence-fixed-headers	4557	2017-05-27 12:40:31.278	confluence-fixed-headers-view-content-resources
com.atlassian.confluence.plugins.confluence-daily-summary-email	4558	2017-05-27 12:40:31.278	unsubscribeTokenManager
com.atlassian.streams.confluence	4559	2017-05-27 12:40:31.278	date-en-029
com.atlassian.mywork.mywork-confluence-provider-plugin	4560	2017-05-27 12:40:31.278	fieldHelper
com.atlassian.confluence.editor	4561	2017-05-27 12:40:31.278	contentPropertyService
com.atlassian.confluence.plugins.confluence-sal-plugin	4562	2017-05-27 12:40:31.278	xsrfTokenAccessor
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4563	2017-05-27 12:40:31.278	remoteAddonLicenseService
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4564	2017-05-27 12:40:31.278	playbookWhitelist
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4565	2017-05-27 12:40:31.278	hipchat-soy-server-resources
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4566	2017-05-27 12:40:31.278	confluence-copy-page-hierarchy-plugin-loader
com.atlassian.confluence.plugins.quickreload	4567	2017-05-27 12:40:31.278	commentManager
confluence.macros.advanced	4568	2017-05-27 12:40:31.278	navmap-resources
com.atlassian.streams.confluence	4623	2017-05-27 12:40:31.278	date-zh-SG
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4569	2017-05-27 12:40:31.278	experiencecanvas-template
confluence.macros.advanced	4570	2017-05-27 12:40:31.278	common-resources
com.atlassian.confluence.plugins.confluence-cache-management-plugin	4571	2017-05-27 12:40:31.278	server-resources
com.atlassian.plugin.jslibs	4572	2017-05-27 12:40:31.278	underscore-1.4.4
confluence.macros.advanced	4573	2017-05-27 12:40:31.278	related-labels
com.atlassian.confluence.plugins.confluence-view-file-macro	4574	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-mobile	4575	2017-05-27 12:40:31.278	viewLinkMarshallerFactory
com.atlassian.confluence.extra.officeconnector	4576	2017-05-27 12:40:31.278	viewxls-legacy
confluence.editor.actions	4577	2017-05-27 12:40:31.278	editor-macro-browser
com.atlassian.confluence.extra.flyingpdf	4578	2017-05-27 12:40:31.278	configurepdflanguagesupport
com.atlassian.confluence.plugins.confluence-business-blueprints	4579	2017-05-27 12:40:31.278	sharelinksbookmarklet-decorator
com.atlassian.analytics.analytics-client	4580	2017-05-27 12:40:31.278	confluence-event-report-menu-item
com.atlassian.confluence.plugins.confluence-email-resources	4581	2017-05-27 12:40:31.278	chrome-template-footer-pattern-1.0.0
confluence.web.resources	4582	2017-05-27 12:40:31.278	jira-controls
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4583	2017-05-27 12:40:31.278	rest-compatibility
com.atlassian.auiplugin	4584	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-i18n
com.atlassian.mywork.mywork-common-plugin	4585	2017-05-27 12:40:31.278	application-link-service
com.atlassian.confluence.extra.officeconnector	4586	2017-05-27 12:40:31.278	viewfile
confluence.content.action.menu	4587	2017-05-27 12:40:31.278	copy-page
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4588	2017-05-27 12:40:31.278	templateLocator
confluence.macros.dashboard	4589	2017-05-27 12:40:31.278	dashboard-global-entity-resources
com.atlassian.auiplugin	4590	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-cookie
com.atlassian.confluence.plugins.confluence-browser-metrics	4591	2017-05-27 12:40:31.278	util
com.atlassian.confluence.plugins.confluence-email-resources	4592	2017-05-27 12:40:31.278	template-utils-2.0.0
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	4593	2017-05-27 12:40:31.278	rest
com.atlassian.applinks.applinks-plugin	4594	2017-05-27 12:40:31.278	confluence-space
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4595	2017-05-27 12:40:31.278	representationFactory
com.atlassian.oauth.serviceprovider	4596	2017-05-27 12:40:31.278	stringEscapeUtilContextItem
com.atlassian.plugins.atlassian-nav-links-plugin	4597	2017-05-27 12:40:31.278	rotp-menu
com.atlassian.auiplugin	4598	2017-05-27 12:40:31.278	aui-experimental-lozenge
com.atlassian.confluence.plugins.confluence-user-rest	4599	2017-05-27 12:40:31.278	crowd-aggregation-warning
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4600	2017-05-27 12:40:31.278	helpPathResolver
confluence.web.resources	4601	2017-05-27 12:40:31.278	create-space
confluence.sections.attachments	4602	2017-05-27 12:40:31.278	remove
com.atlassian.support.stp	4603	2017-05-27 12:40:31.278	java-support-info
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4604	2017-05-27 12:40:31.278	permissionEnforcerContextItem
com.atlassian.auiplugin	4605	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-throbber
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4606	2017-05-27 12:40:31.278	batching-notification-recipients-provider
com.atlassian.confluence.plugins.confluence-sal-plugin	4607	2017-05-27 12:40:31.278	confluenceHttpContext
com.atlassian.streams.confluence	4608	2017-05-27 12:40:31.278	contentEntityRendererFactory
com.atlassian.confluence.editor	4609	2017-05-27 12:40:31.278	page-editor-quit-dialog
com.atlassian.confluence.plugins.confluence-inline-tasks	4610	2017-05-27 12:40:31.278	my-tasks-blank-exp-resources
com.atlassian.confluence.plugins.confluence-email-resources	4611	2017-05-27 12:40:31.278	template-utils-image-with-text-1.0.0
confluence.extra.jira	4612	2017-05-27 12:40:31.278	common
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4613	2017-05-27 12:40:31.278	confluenceNotificationSettings
com.atlassian.auiplugin	4614	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-to-init
com.atlassian.analytics.analytics-client	4615	2017-05-27 12:40:31.278	confluencePropertyExtractor
com.atlassian.confluence.plugins.confluence-roadmap-plugin	4616	2017-05-27 12:40:31.278	roadmap-macro
com.atlassian.plugin.notifications.notifications-module	4617	2017-05-27 12:40:31.278	taskComponents
com.atlassian.applinks.applinks-trustedapps-plugin	4618	2017-05-27 12:40:31.278	internalHostApplication
confluence.macros.advanced	4619	2017-05-27 12:40:31.278	get-more-helper
confluence.extra.confluencerpc	4620	2017-05-27 12:40:31.278	wikiRpcHandler
confluence.macros.dashboard	4621	2017-05-27 12:40:31.278	confluenceDashboardMacrosRest
com.atlassian.confluence.plugins.confluence-email-resources	4622	2017-05-27 12:40:31.278	user-full-name-function
com.atlassian.plugins.shortcuts.atlassian-shortcuts-plugin	4624	2017-05-27 12:40:31.278	keyboardShortcutsRest-filter
com.atlassian.auiplugin	4625	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-header
com.atlassian.confluence.plugins.confluence-lookandfeel	4626	2017-05-27 12:40:31.278	attachmentManager
com.atlassian.streams.confluence	4627	2017-05-27 12:40:31.278	date-gu-IN
confluence.macros.profile	4628	2017-05-27 12:40:31.278	network-resources
confluence.listeners.core	4629	2017-05-27 12:40:31.278	updateSpacesInChangeIndexListener
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4630	2017-05-27 12:40:31.278	pluginUpdateChecker
com.atlassian.confluence.plugins.confluence-previews	4631	2017-05-27 12:40:31.278	confluence-previews-jquery
com.atlassian.mywork.mywork-confluence-host-plugin	4632	2017-05-27 12:40:31.278	authenticationController
com.atlassian.confluence.keyboardshortcuts	4633	2017-05-27 12:40:31.278	quicksearch
com.atlassian.confluence.plugins.confluence-onboarding	4634	2017-05-27 12:40:31.278	onboardingSpaceCheckTrigger
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4635	2017-05-27 12:40:31.278	blog-create-notification
confluence.extra.jira	4636	2017-05-27 12:40:31.278	pdf-export-resources
com.atlassian.confluence.plugins.confluence-space-blueprints	4637	2017-05-27 12:40:31.278	team-space-blueprint
com.atlassian.auiplugin	4638	2017-05-27 12:40:31.278	aui-avatars
com.atlassian.confluence.extra.widgetconnector	4639	2017-05-27 12:40:31.278	googlespreadsheets
confluence.renderer.components	4640	2017-05-27 12:40:31.278	escape
com.atlassian.confluence.plugins.confluence-create-content-plugin	4641	2017-05-27 12:40:31.278	transactionTemplate
confluence.web.resources	4642	2017-05-27 12:40:31.278	memoir
com.atlassian.confluence.plugins.confluence-jira-metadata	4643	2017-05-27 12:40:31.278	content-metadata-jira
com.atlassian.support.healthcheck.support-healthcheck-plugin	4644	2017-05-27 12:40:31.278	support-health-check
com.atlassian.plugins.atlassian-nav-links-plugin	4645	2017-05-27 12:40:31.278	custom-apps-admin-ui-resources-old
confluence.macros.html	4646	2017-05-27 12:40:31.278	rss-xhtml
confluence.web.resources	4647	2017-05-27 12:40:31.278	setup-select-install-type
com.atlassian.confluence.plugins.soy	4648	2017-05-27 12:40:31.278	soy-base-url-function
confluence.search.mappers.lucene	4649	2017-05-27 12:40:31.278	contentPermissionsSearchFilter
com.atlassian.streams.confluence	4650	2017-05-27 12:40:31.278	date-uz-Cyrl-UZ
confluence.sections.space.tools	4651	2017-05-27 12:40:31.278	addons
com.atlassian.confluence.plugins.confluence-business-blueprints	4652	2017-05-27 12:40:31.278	decisions-blueprint-item
com.atlassian.confluence.plugins.dialog-wizard	4653	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-highlight-actions	4654	2017-05-27 12:40:31.278	markSelectionTransformer
com.atlassian.streams.confluence	4655	2017-05-27 12:40:31.278	date-zh-TW
com.atlassian.streams.confluence	4656	2017-05-27 12:40:31.278	date-quz-EC
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4657	2017-05-27 12:40:31.278	marketplaceClientManager
com.atlassian.auiplugin	4658	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-on-text-resize
confluence.macro.metadata.provider	4659	2017-05-27 12:40:31.278	macroMetadataProviders
com.atlassian.confluence.plugins.recently-viewed-plugin	4660	2017-05-27 12:40:31.278	recently-viewed-content-two-args-function
confluence.macros.advanced	4661	2017-05-27 12:40:31.278	editor_includemacro
com.atlassian.confluence.extra.flyingpdf	4662	2017-05-27 12:40:31.278	betterpdfpage
com.atlassian.gadgets.embedded	4663	2017-05-27 12:40:31.278	gadget-standalone-resources
confluence.web.resources	4664	2017-05-27 12:40:31.278	deferred-loaders
com.atlassian.oauth.serviceprovider	4665	2017-05-27 12:40:31.278	applicationPropertiesContextItem
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4666	2017-05-27 12:40:31.278	diffContextProvider
com.atlassian.auiplugin	4667	2017-05-27 12:40:31.278	aui-experimental-buttons
com.atlassian.streams	4668	2017-05-27 12:40:31.278	date-es-PA
confluence.extra.jira	4669	2017-05-27 12:40:31.278	mobileThreadLocalFilter
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4670	2017-05-27 12:40:31.278	notificationPageDataFactory
com.atlassian.streams	4671	2017-05-27 12:40:31.278	date-es-PE
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4672	2017-05-27 12:40:31.278	notificationFactoryImpl
com.atlassian.streams.confluence	4673	2017-05-27 12:40:31.278	confluence-rest
com.atlassian.plugins.atlassian-whitelist-core-plugin	4674	2017-05-27 12:40:31.278	whitelistBasedCorsDefaults
com.atlassian.support.stp	4675	2017-05-27 12:40:31.278	supportZipService
confluence.user.hover.menu	4676	2017-05-27 12:40:31.278	personal-space
com.atlassian.confluence.plugins.confluence-view-file-macro	4677	2017-05-27 12:40:31.278	attachedImageRenderHelper
com.atlassian.confluence.extra.officeconnector	4678	2017-05-27 12:40:31.278	officeconnector-editor-resources
com.atlassian.confluence.plugins.confluence-space-directory	4679	2017-05-27 12:40:31.278	pagination-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	4680	2017-05-27 12:40:31.278	quote-comment
com.atlassian.webhooks.atlassian-webhooks-plugin	4681	2017-05-27 12:40:31.278	webhooks-resources
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4682	2017-05-27 12:40:31.278	settingsManager
com.atlassian.plugins.atlassian-project-creation-plugin	4683	2017-05-27 12:40:31.278	project-crud-rest
com.atlassian.streams	4684	2017-05-27 12:40:31.278	date-es-PR
com.atlassian.streams.confluence	4685	2017-05-27 12:40:31.278	localeManager
com.atlassian.confluence.plugins.confluence-daily-summary-email	4686	2017-05-27 12:40:31.278	taskManager
com.atlassian.mywork.mywork-confluence-provider-plugin	4687	2017-05-27 12:40:31.278	userAccessor
confluence.extra.confluencerpc	4688	2017-05-27 12:40:31.278	usersSoapService
com.atlassian.confluence.plugins.confluence-document-conversion-library	4689	2017-05-27 12:40:31.278	Confluence Document Conversion Library REST support-filter
com.atlassian.confluence.plugins.search.confluence-search	4690	2017-05-27 12:40:31.278	darkFeatureManager
confluence.macros.advanced	4691	2017-05-27 12:40:31.278	junitreport
com.atlassian.confluence.plugins.gadgets	4692	2017-05-27 12:40:31.278	oauth-access-tokens
com.atlassian.confluence.plugins.confluence-inline-comments	4693	2017-05-27 12:40:31.278	notification-template-resolve-body
com.atlassian.applinks.applinks-oauth-plugin	4694	2017-05-27 12:40:31.278	add-non-applinks-service-provider
confluence.listeners.core	4695	2017-05-27 12:40:31.278	clusterChangeJobStatusListener
com.atlassian.integration.jira.jira-integration-plugin	4696	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.querylang.confluence-cql-plugin	4697	2017-05-27 12:40:31.278	end-of-month-zero-arg-function
com.atlassian.confluence.editor	4698	2017-05-27 12:40:31.278	atlassian-pdl-resources
com.atlassian.auiplugin	4699	2017-05-27 12:40:31.278	internal-skatejs-template-html-0.0.0-dist-template-html
confluence.extractors.core	4700	2017-05-27 12:40:31.278	defaultSearchableTextExtractor
com.atlassian.confluence.themes.default	4701	2017-05-27 12:40:31.278	styles
confluence.sections.profile	4702	2017-05-27 12:40:31.278	my-favourites
com.atlassian.confluence.plugins.confluence-view-file-macro	4703	2017-05-27 12:40:31.278	conversionManager
com.atlassian.confluence.extra.widgetconnector	4704	2017-05-27 12:40:31.278	youtube
com.atlassian.confluence.plugins.confluence-mobile	4705	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.integration.jira.jira-integration-plugin	4706	2017-05-27 12:40:31.278	confluenceJiraSettings
com.atlassian.confluence.plugins.gadgets	4707	2017-05-27 12:40:31.278	cacheManager
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4708	2017-05-27 12:40:31.278	lib
confluence.sections.create	4709	2017-05-27 12:40:31.278	create-attachment
com.atlassian.auiplugin	4710	2017-05-27 12:40:31.278	ajs-raf
com.atlassian.confluence.contributors	4711	2017-05-27 12:40:31.278	authorContributionExtractor
com.atlassian.confluence.plugins.confluence-like	4712	2017-05-27 12:40:31.278	like-created-notification
com.atlassian.confluence.plugins.confluence-browser-metrics	4713	2017-05-27 12:40:31.278	dashboard
com.atlassian.plugins.base-hipchat-integration-plugin	4714	2017-05-27 12:40:31.278	hipchat-glance
com.atlassian.mywork.mywork-confluence-host-plugin	4715	2017-05-27 12:40:31.278	service-selector-wrapper
confluence.search.mappers.lucene	4716	2017-05-27 12:40:31.278	relevance
confluence.listeners.core	4717	2017-05-27 12:40:31.278	luceneSearchMapperRegistryCacheUpdateListener
confluence.web.resources	4718	2017-05-27 12:40:31.278	page-history
com.atlassian.oauth.serviceprovider	4719	2017-05-27 12:40:31.278	clock
com.atlassian.confluence.extra.widgetconnector	4720	2017-05-27 12:40:31.278	blip
com.atlassian.support.healthcheck.support-healthcheck-plugin	4721	2017-05-27 12:40:31.278	salUserManager
com.atlassian.plugins.atlassian-nav-links-plugin	4722	2017-05-27 12:40:31.278	environment-soy-function
com.atlassian.confluence.plugins.confluence-like	4723	2017-05-27 12:40:31.278	like-created-notification-template-hipchat-body
com.atlassian.confluence.plugins.share-page	4724	2017-05-27 12:40:31.278	email-resources-2.0.0
com.atlassian.streams	4725	2017-05-27 12:40:31.278	date-ro-RO
com.atlassian.confluence.plugins.confluence-view-file-macro	4726	2017-05-27 12:40:31.278	view-file-macro-embedded-file-view-resources
com.atlassian.confluence.plugins.confluence-highlight-actions	4727	2017-05-27 12:40:31.278	appendToSelectionTransformer
com.atlassian.streams	4728	2017-05-27 12:40:31.278	date-es-PY
confluence.lifecycle.core	4729	2017-05-27 12:40:31.278	remigration
com.atlassian.plugins.atlassian-whitelist-core-plugin	4730	2017-05-27 12:40:31.278	activeObjects
com.atlassian.confluence.plugins.confluence-email-resources	4731	2017-05-27 12:40:31.278	notification-templates-page-test-1.0.0
com.atlassian.confluence.plugins.confluence-previews	4732	2017-05-27 12:40:31.278	feature-discovery-plugin
com.atlassian.auiplugin	4733	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-clone
com.atlassian.confluence.plugins.confluence-inline-comments	4734	2017-05-27 12:40:31.278	confirm-dialog-view
com.atlassian.analytics.analytics-client	4735	2017-05-27 12:40:31.278	pluginScheduler
com.atlassian.auiplugin	4736	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-form-validation
com.atlassian.plugins.atlassian-plugins-webresource-rest	4737	2017-05-27 12:40:31.278	web-resources
com.atlassian.confluence.keyboardshortcuts	4738	2017-05-27 12:40:31.278	add.comment
com.atlassian.confluence.plugins.confluence-email-resources	4739	2017-05-27 12:40:31.278	notification-templates-2.0.0
confluence.listeners.core	4740	2017-05-27 12:40:31.278	removeContentPropertiesOnRemoveContentListener
com.atlassian.streams.streams-thirdparty-plugin	4741	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.plugins.pagetree	4742	2017-05-27 12:40:31.278	pagetree-mobile-resources
com.atlassian.activeobjects.confluence.spi	4743	2017-05-27 12:40:31.278	tenantContext
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4744	2017-05-27 12:40:31.278	pluginLicenseStore
com.atlassian.confluence.plugins.confluence-schedule-admin	4745	2017-05-27 12:40:31.278	none
com.atlassian.confluence.plugins.confluence-daily-summary-email	4746	2017-05-27 12:40:31.278	SummaryEmailTaskFactory
com.atlassian.confluence.plugins.drag-and-drop	4747	2017-05-27 12:40:31.278	drag-and-drop-resource
confluence.listeners.core	4748	2017-05-27 12:40:31.278	attachmentNotificationsListener
com.atlassian.confluence.plugins.confluence-daily-summary-email	4749	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-document-conversion-library	4750	2017-05-27 12:40:31.278	Confluence Document Conversion Library REST support
com.atlassian.confluence.plugins.confluence-rest-resources	4751	2017-05-27 12:40:31.278	rest-api
com.atlassian.auiplugin	4752	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-select-suggestions-view
com.atlassian.plugins.base-hipchat-integration-plugin	4753	2017-05-27 12:40:31.278	view-oauth-servlet
com.atlassian.confluence.plugins.confluence-space-ia	4754	2017-05-27 12:40:31.278	left-ia-sidebar-panel
com.atlassian.confluence.plugins.confluence-create-content-plugin	4755	2017-05-27 12:40:31.278	spaceBlueprintManagerDelegate
confluence.search.mappers.lucene	4756	2017-05-27 12:40:31.278	fieldValueSearchFilter
com.atlassian.activeobjects.confluence.spi	4757	2017-05-27 12:40:31.278	tenantAwareDataSourceProvider
com.atlassian.mywork.mywork-confluence-provider-plugin	4758	2017-05-27 12:40:31.278	mentionFinder
com.atlassian.integration.jira.jira-integration-plugin	4759	2017-05-27 12:40:31.278	jira-icon-servlet
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4760	2017-05-27 12:40:31.278	txTemplate
com.atlassian.confluence.extra.widgetconnector	4761	2017-05-27 12:40:31.278	getsatisfaction
tac.confluence.languages.zh_CN	4762	2017-05-27 12:40:31.278	zh_CN
com.atlassian.support.healthcheck.support-healthcheck-plugin	4763	2017-05-27 12:40:31.278	support-healthcheck-plugin-resources
com.atlassian.confluence.plugins.confluence-email-resources	4764	2017-05-27 12:40:31.278	content-templates-inline-content-styles-1.0.0
com.atlassian.confluence.plugins.confluence-like	4765	2017-05-27 12:40:31.278	unlike-content-email-batch-item
com.atlassian.confluence.extra.officeconnector	4766	2017-05-27 12:40:31.278	ppt97ContentExtractor
confluence.extractors.core	4767	2017-05-27 12:40:31.278	spaceKeyAndNameChangeExtractor
com.atlassian.confluence.plugins.confluence-sal-plugin	4768	2017-05-27 12:40:31.278	userSettingsService
com.atlassian.confluence.plugins.confluence-email-resources	4769	2017-05-27 12:40:31.278	content-type-icons
com.atlassian.streams.confluence	4770	2017-05-27 12:40:31.278	date-sr-Cyrl-BA
com.atlassian.auiplugin	4771	2017-05-27 12:40:31.278	internal-skatejs-0.13.17-lib-globals
com.atlassian.confluence.plugins.confluence-edge-index	4772	2017-05-27 12:40:31.278	edgeIndexRebuildUpgradeTask
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4773	2017-05-27 12:40:31.278	asyncTaskRepresentationFactory
com.atlassian.confluence.plugins.confluence-daily-summary-email	4774	2017-05-27 12:40:31.278	i18NBeanFactory
confluence.sections.profile	4775	2017-05-27 12:40:31.278	follow
com.atlassian.plugins.atlassian-whitelist-core-plugin	4776	2017-05-27 12:40:31.278	clearHttpCacheAdapter
com.atlassian.querylang.confluence-cql-plugin	4777	2017-05-27 12:40:31.278	recently-modified-pages-blogs-by-user-three-arg-function
confluence.web.resources	4778	2017-05-27 12:40:31.278	page-loading-indicator
com.atlassian.crowd.embedded.admin	4779	2017-05-27 12:40:31.278	crowd-ldap-properties-helper
com.atlassian.auiplugin	4780	2017-05-27 12:40:31.278	internal-form-css
com.atlassian.analytics.analytics-client	4781	2017-05-27 12:40:31.278	licenseHandler
confluence.extra.jira	4782	2017-05-27 12:40:31.278	flexigrid-resources
com.atlassian.confluence.plugins.confluence-mentions-plugin	4783	2017-05-27 12:40:31.278	mention-icon
com.atlassian.plugin.notifications.notifications-module	4784	2017-05-27 12:40:31.278	notificationsRest-filter
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	4785	2017-05-27 12:40:31.278	featureDiscoveryService
com.atlassian.applinks.applinks-oauth-plugin	4786	2017-05-27 12:40:31.278	servletMessageFactory
com.atlassian.confluence.plugins.confluence-email-resources	4787	2017-05-27 12:40:31.278	content-templates-notification-comment-pattern-1.0.0
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4788	2017-05-27 12:40:31.278	locate
com.atlassian.confluence.plugins.confluence-email-resources	4789	2017-05-27 12:40:31.278	chrome-template-2.0.0
com.atlassian.confluence.plugins.confluence-create-content-plugin	4790	2017-05-27 12:40:31.278	rest-experimental
com.atlassian.soy.soy-template-plugin	4791	2017-05-27 12:40:31.278	jiraSoyTransformer
com.atlassian.streams	4792	2017-05-27 12:40:31.278	date-es-SV
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	4793	2017-05-27 12:40:31.278	css
confluence.user.menu.concise	4794	2017-05-27 12:40:31.278	administration
com.atlassian.confluence.plugins.confluence-cache-management-plugin	4795	2017-05-27 12:40:31.278	analytics-whitelist
com.atlassian.streams	4796	2017-05-27 12:40:31.278	date-es-VE
com.atlassian.confluence.plugins.quickreload	4797	2017-05-27 12:40:31.278	quick-reload-bootstrap
com.atlassian.streams.confluence	4798	2017-05-27 12:40:31.278	webResourceManager
com.atlassian.confluence.plugins.confluence-request-access-plugin	4799	2017-05-27 12:40:31.278	request-access-notification-email-template-body
com.atlassian.confluence.plugins.confluence-inline-tasks	4800	2017-05-27 12:40:31.278	task-report-blueprint-item
com.atlassian.oauth.serviceprovider.sal	4801	2017-05-27 12:40:31.278	userManager
com.atlassian.auiplugin	4802	2017-05-27 12:40:31.278	jquery-compatibility
com.atlassian.confluence.plugins.confluence-mentions-plugin	4803	2017-05-27 12:40:31.278	editor-autocomplete-mentions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4804	2017-05-27 12:40:31.278	pluginRestartRequiredService
com.atlassian.plugins.atlassian-nav-links-plugin	4805	2017-05-27 12:40:31.278	locale-resolver
com.atlassian.streams.confluence	4806	2017-05-27 12:40:31.278	date-sr-Cyrl-CS
com.atlassian.confluence.plugins.gadgets	4807	2017-05-27 12:40:31.278	external-gadget
com.atlassian.confluence.extra.officeconnector	4808	2017-05-27 12:40:31.278	tokenProvider
com.atlassian.plugins.confluence-tdm-merger	4809	2017-05-27 12:40:31.278	xmlOutputFactoryProvider
com.atlassian.confluence.plugins.confluence-create-content-plugin	4810	2017-05-27 12:40:31.278	blueprintSorter
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4811	2017-05-27 12:40:31.278	dacidecision-index-template
com.atlassian.confluence.plugins.confluence-browser-metrics	4812	2017-05-27 12:40:31.278	spa-transitions
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4813	2017-05-27 12:40:31.278	userAccessor
com.atlassian.streams.confluence	4814	2017-05-27 12:40:31.278	date-mn-MN
com.atlassian.streams	4815	2017-05-27 12:40:31.278	date-smj-NO
com.atlassian.confluence.plugins.confluence-like	4816	2017-05-27 12:40:31.278	mobile-content-like-resource
com.atlassian.streams	4817	2017-05-27 12:40:31.278	date-es-UY
com.atlassian.integration.jira.jira-integration-plugin	4818	2017-05-27 12:40:31.278	jira-create-issue-form
confluence.macros.basic	4819	2017-05-27 12:40:31.278	nl
com.atlassian.analytics.analytics-client	4820	2017-05-27 12:40:31.278	remoteFilterRead
com.atlassian.confluence.plugins.confluence-onboarding	4821	2017-05-27 12:40:31.278	onboarding-actions
com.atlassian.applinks.applinks-plugin	4822	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.streams	4823	2017-05-27 12:40:31.278	date-es-GT
com.atlassian.support.healthcheck.support-healthcheck-plugin	4824	2017-05-27 12:40:31.278	healthStatusPersistenceService
confluence.listeners.core	4825	2017-05-27 12:40:31.278	titleChangeListener
com.atlassian.crowd.embedded.admin	4826	2017-05-27 12:40:31.278	confluence-user-directories-web-item
com.atlassian.confluence.plugins.search.confluence-search	4827	2017-05-27 12:40:31.278	rest
confluence.content.action.menu	4828	2017-05-27 12:40:31.278	remove-page
confluence.sections.space.admin	4829	2017-05-27 12:40:31.278	colorscheme
com.atlassian.applinks.applinks-basicauth-plugin	4830	2017-05-27 12:40:31.278	servletMessageFactory
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4831	2017-05-27 12:40:31.278	pageManager
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4832	2017-05-27 12:40:31.278	notificationservers
com.atlassian.applinks.applinks-basicauth-plugin	4833	2017-05-27 12:40:31.278	xsrfTokenAccessor
confluence.macro.metadata.provider	4834	2017-05-27 12:40:31.278	userMacroMetadataProvider
confluence.sections.profile	4835	2017-05-27 12:40:31.278	settings
com.atlassian.plugin.notifications.notifications-module	4836	2017-05-27 12:40:31.278	notificationsRest
com.atlassian.confluence.plugins.confluence-space-blueprints	4837	2017-05-27 12:40:31.278	TeamSpaceBlueprintCreateEventListener
com.atlassian.confluence.plugins.confluence-like	4838	2017-05-27 12:40:31.278	cachedContentFinder
confluence.extra.jira	4839	2017-05-27 12:40:31.278	text-placeholders-jira
com.atlassian.confluence.plugins.confluence-space-blueprints	4840	2017-05-27 12:40:31.278	documentation-space-blueprint-item
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4841	2017-05-27 12:40:31.278	pacClient
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4842	2017-05-27 12:40:31.278	confluenceUserLists
com.atlassian.confluence.plugins.confluence-dashboard	4843	2017-05-27 12:40:31.278	recentlyViewedManager
com.atlassian.confluence.extra.flyingpdf	4844	2017-05-27 12:40:31.278	pdfExportSemaphore
com.atlassian.plugins.base-hipchat-integration-plugin-api	4845	2017-05-27 12:40:31.278	backbone-amd
com.atlassian.confluence.editor	4846	2017-05-27 12:40:31.278	rest
com.atlassian.auiplugin	4847	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-inline-dialog
com.atlassian.auiplugin	4848	2017-05-27 12:40:31.278	aui-labels
com.atlassian.confluence.plugins.confluence-license-rest	4849	2017-05-27 12:40:31.278	userCountService
com.atlassian.confluence.plugins.share-page	4850	2017-05-27 12:40:31.278	share-keyboard-shortcut-js-resources
confluence.web.resources	4851	2017-05-27 12:40:31.278	admin-styles
com.atlassian.analytics.analytics-client	4852	2017-05-27 12:40:31.278	confluenceSessionIdProvider
confluence.user.menu	4853	2017-05-27 12:40:31.278	user-content
com.atlassian.confluence.plugins.confluence-onboarding	4854	2017-05-27 12:40:31.278	welcome
confluence.web.resources	4855	2017-05-27 12:40:31.278	amd
com.atlassian.mywork.mywork-confluence-host-plugin	4856	2017-05-27 12:40:31.278	timeout-service
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4857	2017-05-27 12:40:31.278	upm-requests-resources
confluence.sections.space.tools	4858	2017-05-27 12:40:31.278	importpages
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	4859	2017-05-27 12:40:31.278	healthmonitor-blueprint-item
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	4860	2017-05-27 12:40:31.278	confluence-collaborative-editor-plugin-editor-content-resources
confluence.admin.user	4861	2017-05-27 12:40:31.278	browse-users-tab-invite
com.atlassian.applinks.applinks-oauth-plugin	4862	2017-05-27 12:40:31.278	applinksRestV2OAuth-filter
com.atlassian.confluence.plugins.confluence-easyuser-admin	4863	2017-05-27 12:40:31.278	easyuser-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	4864	2017-05-27 12:40:31.278	content-templates-actions-pattern-2.0.0
com.atlassian.confluence.plugins.confluence-page-banner	4865	2017-05-27 12:40:31.278	content-metadata-page-restrictions
com.atlassian.mywork.mywork-confluence-host-plugin	4866	2017-05-27 12:40:31.278	clusterLockService
com.atlassian.confluence.plugins.confluence-email-resources	4867	2017-05-27 12:40:31.278	view-page-email-adg-footer-item
com.atlassian.mywork.mywork-confluence-provider-plugin	4868	2017-05-27 12:40:31.278	likeManager
com.atlassian.confluence.plugins.confluence-business-blueprints	4869	2017-05-27 12:40:31.278	blueprintsTemplateHelper
com.atlassian.streams	4870	2017-05-27 12:40:31.278	activityProviders
confluence.sections.admin	4871	2017-05-27 12:40:31.278	custompagecontent
com.atlassian.applinks.applinks-plugin	4872	2017-05-27 12:40:31.278	list-entity-links
com.atlassian.oauth.serviceprovider	4873	2017-05-27 12:40:31.278	randomizer
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4874	2017-05-27 12:40:31.278	page-edited-hipchat-notification-template
com.atlassian.confluence.plugins.confluence-mentions-plugin	4875	2017-05-27 12:40:31.278	confluenceMentionsFinder
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4876	2017-05-27 12:40:31.278	hipchatSpaceToRoomAO
confluence.extra.jira	4877	2017-05-27 12:40:31.278	jira-issues-view-mode-resources
com.atlassian.confluence.plugins.confluence-jira-content	4878	2017-05-27 12:40:31.278	create-JIRA-issue-summary
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4879	2017-05-27 12:40:31.278	clusterLockServiceFactory
com.atlassian.confluence.plugins.confluence-dashboard	4880	2017-05-27 12:40:31.278	onboarding-dialog
com.atlassian.applinks.applinks-trustedapps-plugin	4881	2017-05-27 12:40:31.278	trustConfigurator
com.atlassian.streams.confluence	4882	2017-05-27 12:40:31.278	date-quz-PE
confluence.extractors.core	4883	2017-05-27 12:40:31.278	attachmentOwnerContentTypeExtractor
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4884	2017-05-27 12:40:31.278	homeDirectoryHealthCheck
confluence.sections.browse	4885	2017-05-27 12:40:31.278	global
com.atlassian.confluence.plugins.confluence-software-blueprints	4886	2017-05-27 12:40:31.278	retrospectives-item
confluence.macros.html	4887	2017-05-27 12:40:31.278	rss
com.atlassian.confluence.plugins.confluence-previews	4888	2017-05-27 12:40:31.278	mediaviewer-chunks
confluence.sections.admin.indexing	4889	2017-05-27 12:40:31.278	mainIndexRecoverer
com.atlassian.confluence.plugins.search.confluence-search	4890	2017-05-27 12:40:31.278	nonViewableContentTypeFilterFactory
confluence.search.mappers.lucene	4891	2017-05-27 12:40:31.278	contributor
com.atlassian.streams	4892	2017-05-27 12:40:31.278	date-es-HN
com.atlassian.plugins.less-transformer-plugin	4893	2017-05-27 12:40:31.278	webstaticUriResolver
com.atlassian.auiplugin	4894	2017-05-27 12:40:31.278	aui-toolbar2
com.atlassian.confluence.plugins.confluence-edge-index	4895	2017-05-27 12:40:31.278	userDtoFactory
com.atlassian.support.stp	4896	2017-05-27 12:40:31.278	confluence-mail-utility
com.atlassian.streams	4897	2017-05-27 12:40:31.278	date-gl-ES
com.atlassian.confluence.plugins.confluence-create-content-plugin	4898	2017-05-27 12:40:31.278	localeManager
com.atlassian.confluence.plugins.search.confluence-search	4899	2017-05-27 12:40:31.278	blank
com.atlassian.streams	4900	2017-05-27 12:40:31.278	date-hy-AM
com.atlassian.confluence.plugins.confluence-email-resources	4901	2017-05-27 12:40:31.278	template-utils-anonymous-user-link-1.0.0
com.atlassian.confluence.extra.widgetconnector	4902	2017-05-27 12:40:31.278	statusImagegenerator
confluence.web.resources	4903	2017-05-27 12:40:31.278	vmI18n
confluence.sections.space.advanced	4904	2017-05-27 12:40:31.278	orphan
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	4905	2017-05-27 12:40:31.278	confluence-blogpost-edited-batching
com.atlassian.plugins.atlassian-nav-links-plugin	4906	2017-05-27 12:40:31.278	customAppService
com.atlassian.auiplugin	4907	2017-05-27 12:40:31.278	internal-css.escape-1.5.0-css-escape
com.atlassian.auiplugin	4908	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-events
confluence.macros.advanced	4909	2017-05-27 12:40:31.278	contentbylabel-excerpt-migrator
com.atlassian.streams.core	4910	2017-05-27 12:40:31.278	userManager
com.atlassian.plugin.notifications.notifications-module	4911	2017-05-27 12:40:31.278	serverFactory
com.atlassian.plugins.atlassian-nav-links-plugin	4912	2017-05-27 12:40:31.278	module-factory
confluence.search.mappers.lucene	4913	2017-05-27 12:40:31.278	boolean
com.atlassian.confluence.plugins.confluence-create-content-plugin	4914	2017-05-27 12:40:31.278	blueprintManager
com.atlassian.confluence.extra.widgetconnector	4915	2017-05-27 12:40:31.278	metacafe
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	4916	2017-05-27 12:40:31.278	mailServerManager
com.atlassian.plugins.atlassian-nav-links-plugin	4917	2017-05-27 12:40:31.278	http-client-factory
confluence.web.resources	4918	2017-05-27 12:40:31.278	ajs
com.atlassian.confluence.plugins.confluence-create-content-plugin	4919	2017-05-27 12:40:31.278	create-blog-post
confluence.listeners.core	4920	2017-05-27 12:40:31.278	velocityPluginListener
confluence.listeners.core	4921	2017-05-27 12:40:31.278	flushUserCheckerOnLicenseUpdate
com.atlassian.streams	4922	2017-05-27 12:40:31.278	date-smj-SE
com.atlassian.confluence.plugins.confluence-inline-comments	4923	2017-05-27 12:40:31.278	display-comment-view
com.atlassian.confluence.extra.flyingpdf	4924	2017-05-27 12:40:31.278	pdfexport-soap
com.atlassian.plugins.atlassian-nav-links-plugin	4925	2017-05-27 12:40:31.278	mutatingEntityLinkService
com.atlassian.plugins.atlassian-whitelist-core-plugin	4926	2017-05-27 12:40:31.278	aoWhitelistRulesDao
confluence.web.resources	4927	2017-05-27 12:40:31.278	jsUri
com.atlassian.confluence.plugins.confluence-inline-tasks	4928	2017-05-27 12:40:31.278	email-resources
com.atlassian.confluence.plugins.confluence-mentions-plugin	4929	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.analytics.analytics-client	4930	2017-05-27 12:40:31.278	serverIdProvider
com.atlassian.confluence.ext.newcode-macro-plugin	4931	2017-05-27 12:40:31.278	macro-icons
com.atlassian.streams.confluence	4932	2017-05-27 12:40:31.278	templateRendererFactory
com.atlassian.auiplugin	4933	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-animation
confluence.sections.page.temp	4934	2017-05-27 12:40:31.278	edit-page
com.atlassian.confluence.plugins.gadgets	4935	2017-05-27 12:40:31.278	outboundWhitelist
confluence.user.menu	4936	2017-05-27 12:40:31.278	settings
com.atlassian.confluence.plugins.search.confluence-search	4937	2017-05-27 12:40:31.278	searchv3Filter
com.atlassian.confluence.plugins.confluence-create-content-plugin	4938	2017-05-27 12:40:31.278	globalBlueprintsUpgradeTask
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	4939	2017-05-27 12:40:31.278	integrations
com.atlassian.support.stp	4940	2017-05-27 12:40:31.278	licenseStatusService
com.atlassian.applinks.applinks-trustedapps-plugin	4941	2017-05-27 12:40:31.278	servletMessageFactory
com.atlassian.auiplugin	4942	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-debounce
tac.confluence.languages.ro_RO	4943	2017-05-27 12:40:31.278	ro_RO
com.atlassian.confluence.plugins.search.confluence-search	4944	2017-05-27 12:40:31.278	filterFactory
confluence.extra.impresence2	4945	2017-05-27 12:40:31.278	aim
confluence.listeners.core	4946	2017-05-27 12:40:31.278	asyncPageNotificationsListener
com.atlassian.confluence.plugins.confluence-mobile	4947	2017-05-27 12:40:31.278	mobileViewRenderer
com.atlassian.querylang.confluence-cql-plugin	4948	2017-05-27 12:40:31.278	end-of-week-one-arg-function
com.atlassian.streams.actions	4949	2017-05-27 12:40:31.278	moduleFactory
com.atlassian.mywork.mywork-confluence-host-plugin	4950	2017-05-27 12:40:31.278	task-cleaner-scheduler
com.atlassian.crowd.embedded.admin	4951	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.plugins.confluence-daily-summary-email	4952	2017-05-27 12:40:31.278	salUserManager
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	4953	2017-05-27 12:40:31.278	confluenceEmoticonService
com.atlassian.confluence.image.effects.ImageEffectsPlugin	4954	2017-05-27 12:40:31.278	config-resource-filter
com.atlassian.streams	4955	2017-05-27 12:40:31.278	date-es-MX
com.atlassian.confluence.ext.newcode-macro-plugin	4956	2017-05-27 12:40:31.278	sh-theme-confluence
com.atlassian.crowd.embedded.admin	4957	2017-05-27 12:40:31.278	dispatcher-servlet
com.atlassian.confluence.plugins.confluence-inline-comments	4958	2017-05-27 12:40:31.278	inlineCommentExtensions
confluence.content.action.menu	4959	2017-05-27 12:40:31.278	view-attachments
com.atlassian.applinks.applinks-plugin	4960	2017-05-27 12:40:31.278	compatibility-css
confluence.sections.profile	4961	2017-05-27 12:40:31.278	view-profile
com.atlassian.analytics.analytics-client	4962	2017-05-27 12:40:31.278	events-logged
com.atlassian.auiplugin	4963	2017-05-27 12:40:31.278	jquery-throbber
com.atlassian.streams	4964	2017-05-27 12:40:31.278	date-es-NI
com.atlassian.confluence.plugins.confluence-knowledge-base	4965	2017-05-27 12:40:31.278	kb-troubleshooting-item
com.atlassian.confluence.plugins.confluence-inline-comments	4966	2017-05-27 12:40:31.278	inline-comment-email-soy-templates-2
com.atlassian.confluence.plugins.confluence-software-blueprints	4967	2017-05-27 12:40:31.278	requirements-resources
confluence.extra.attachments	4968	2017-05-27 12:40:31.278	space-attachments
com.atlassian.confluence.plugins.expand-macro	4969	2017-05-27 12:40:31.278	expand-macro-soy-templates
com.atlassian.confluence.plugins.gadgets	4970	2017-05-27 12:40:31.278	gadget
com.atlassian.analytics.analytics-client	4971	2017-05-27 12:40:31.278	analytics-configuration-servlet
com.atlassian.auiplugin	4972	2017-05-27 12:40:31.278	modernizr-touch
com.atlassian.confluence.plugins.confluence-knowledge-base	4973	2017-05-27 12:40:31.278	confluenceAccessManager
com.atlassian.confluence.editor	4974	2017-05-27 12:40:31.278	table-resizable-plugin
com.atlassian.confluence.ext.newcode-macro-plugin	4975	2017-05-27 12:40:31.278	sh-theme-fadetogrey
com.atlassian.confluence.plugins.confluence-edge-index	4976	2017-05-27 12:40:31.278	edgeTypeRepository
com.atlassian.applinks.applinks-plugin	4977	2017-05-27 12:40:31.278	bamboo
com.atlassian.querylang.confluence-cql-plugin	4978	2017-05-27 12:40:31.278	end-of-year-zero-arg-function
confluence.web.resources	4979	2017-05-27 12:40:31.278	login
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	4980	2017-05-27 12:40:31.278	batching-notification
com.atlassian.confluence.extra.officeconnector	4981	2017-05-27 12:40:31.278	excel2k7ContentExtractor
com.atlassian.auiplugin	4982	2017-05-27 12:40:31.278	internal-inline-dialog-common
confluence.web.resources	4983	2017-05-27 12:40:31.278	dashboard-resources
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	4984	2017-05-27 12:40:31.278	storageEngineCheck
com.atlassian.streams.confluence	4985	2017-05-27 12:40:31.278	date-ns-ZA
com.atlassian.plugins.atlassian-nav-links-plugin	4986	2017-05-27 12:40:31.278	content-links-rest-filter
com.atlassian.confluence.plugins.confluence-email-resources	4987	2017-05-27 12:40:31.278	view-comment-email-batch-item
com.atlassian.support.healthcheck.support-healthcheck-plugin	4988	2017-05-27 12:40:31.278	supportHealthStatusBuilder
confluence.listeners.core	4989	2017-05-27 12:40:31.278	searchResultRendererCache
confluence.sections.admin	4990	2017-05-27 12:40:31.278	users
com.atlassian.applinks.applinks-plugin	4991	2017-05-27 12:40:31.278	internalHostApplication
com.atlassian.streams	4992	2017-05-27 12:40:31.278	date-fr-FR
com.atlassian.plugin.jslibs	4993	2017-05-27 12:40:31.278	d3-3.3.13
com.atlassian.auiplugin	4994	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-internal-amdify
com.atlassian.streams	4995	2017-05-27 12:40:31.278	date-syr-SY
confluence.extra.confluencerpc	4996	2017-05-27 12:40:31.278	confluence-xmlrpc-2
com.atlassian.confluence.plugins.confluence-space-ia	4997	2017-05-27 12:40:31.278	spacebar-blogs
com.atlassian.confluence.plugins.confluence-onboarding	4998	2017-05-27 12:40:31.278	notification-template-less-users-body
com.atlassian.plugins.atlassian-whitelist-core-plugin	4999	2017-05-27 12:40:31.278	defaultPermissionChecker
com.atlassian.confluence.plugins.drag-and-drop	5000	2017-05-27 12:40:31.278	drop-zone-for-image-dialog
confluence.sections.space.pages	5001	2017-05-27 12:40:31.278	list-content-tree
com.atlassian.confluence.plugins.confluence-user-profile	5002	2017-05-27 12:40:31.278	editprofilepicture
com.atlassian.instrumentation.atlassian-instrumentation-expose-jmx	5003	2017-05-27 12:40:31.278	jmxInstrumentNamerImpl
org.randombits.confluence.toc	5004	2017-05-27 12:40:31.278	toc-plugin-styles
com.atlassian.auiplugin	5005	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-is-visible
com.atlassian.analytics.analytics-client	5006	2017-05-27 12:40:31.278	analyticConfig
com.atlassian.confluence.plugins.confluence-mentions-plugin	5007	2017-05-27 12:40:31.278	dateEntityFactory
com.atlassian.gadgets.opensocial	5008	2017-05-27 12:40:31.278	directory-checking-servlet-filter
com.atlassian.confluence.plugins.confluence-email-resources	5009	2017-05-27 12:40:31.278	reply-to-comment-email-footer-item
com.atlassian.plugins.atlassian-plugins-webresource-plugin	5010	2017-05-27 12:40:31.278	context-path
com.atlassian.applinks.applinks-plugin	5011	2017-05-27 12:40:31.278	bitbucketProject
confluence.web.resources	5012	2017-05-27 12:40:31.278	rss-feed-builder
com.atlassian.confluence.plugins.pagetree	5013	2017-05-27 12:40:31.278	pagetreesearch
confluence.sections.space.browse	5014	2017-05-27 12:40:31.278	browse-space
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5015	2017-05-27 12:40:31.278	featureDiscovery
confluence.extra.jira	5016	2017-05-27 12:40:31.278	jiraissues
com.atlassian.crowd.embedded.admin	5017	2017-05-27 12:40:31.278	supported-directory-permission-options
com.atlassian.applinks.applinks-plugin	5018	2017-05-27 12:40:31.278	bitbucket
com.atlassian.confluence.plugins.confluence-page-banner	5019	2017-05-27 12:40:31.278	page-banner-panel
confluence.search.mappers.lucene	5020	2017-05-27 12:40:31.278	attachmentType
com.atlassian.auiplugin	5021	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-flag
com.atlassian.confluence.editor	5022	2017-05-27 12:40:31.278	editor-insert-files
com.atlassian.confluence.plugins.confluence-dashboard	5023	2017-05-27 12:40:31.278	spa-friendly-metadata-provider
com.atlassian.confluence.plugins.confluence-nav-links	5024	2017-05-27 12:40:31.278	admin
confluence.macros.basic	5025	2017-05-27 12:40:31.278	anchor
com.atlassian.oauth.serviceprovider	5026	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5027	2017-05-27 12:40:31.278	confluenceHostLicenseEventReader
com.atlassian.oauth.serviceprovider	5028	2017-05-27 12:40:31.278	templateRenderer
com.atlassian.analytics.analytics-client	5029	2017-05-27 12:40:31.278	lastPrivacyPolicyUpdateDateProvider
com.atlassian.analytics.analytics-client	5030	2017-05-27 12:40:31.278	confluenceSystemShutdownDetector
com.atlassian.confluence.plugins.confluence-easyuser-admin	5031	2017-05-27 12:40:31.278	confluence-easyuser-mailServerDeletedListener
com.atlassian.confluence.plugins.confluence-knowledge-base	5032	2017-05-27 12:40:31.278	kb-serviceDeskExternalCustomerServletFilter-component
com.atlassian.templaterenderer.api	5033	2017-05-27 12:40:31.278	templateContextFactory
com.atlassian.confluence.plugins.dashboard-actions	5034	2017-05-27 12:40:31.278	add-space
confluence.lifecycle.core	5035	2017-05-27 12:40:31.278	removeindexwritelock
com.atlassian.auiplugin	5036	2017-05-27 12:40:31.278	internal-ajs-no-context-path
com.atlassian.confluence.plugins.confluence-collaborative-editor-plugin	5037	2017-05-27 12:40:31.278	collab-xwork
com.atlassian.confluence.plugins.confluence-business-blueprints	5038	2017-05-27 12:40:31.278	sharelinks-service
org.randombits.confluence.toc	5039	2017-05-27 12:40:31.278	toc
com.atlassian.confluence.plugins.recently-viewed-plugin	5040	2017-05-27 12:40:31.278	open.recent
confluence.macros.advanced	5041	2017-05-27 12:40:31.278	content-by-label-resources
com.atlassian.streams.confluence	5042	2017-05-27 12:40:31.278	date-ta-IN
com.atlassian.streams	5043	2017-05-27 12:40:31.278	date-te-IN
com.atlassian.streams.confluence	5044	2017-05-27 12:40:31.278	date-kok-IN
com.atlassian.analytics.analytics-client	5045	2017-05-27 12:40:31.278	confluence-logged-events-servlet
com.atlassian.confluence.plugins.confluence-sal-plugin	5046	2017-05-27 12:40:31.278	xsrfRequestValidator
com.atlassian.plugins.rest.atlassian-rest-module	5047	2017-05-27 12:40:31.278	pluginEventManager
com.atlassian.applinks.applinks-plugin	5048	2017-05-27 12:40:31.278	manifestRetriever
com.atlassian.plugins.atlassian-nav-links-plugin	5049	2017-05-27 12:40:31.278	initialiseCustomOrderFlagUpgradeTask
com.atlassian.applinks.applinks-plugin	5050	2017-05-27 12:40:31.278	propertyService
com.atlassian.confluence.plugins.share-page	5051	2017-05-27 12:40:31.278	share-page-hipchat-notification-template-body
com.atlassian.confluence.plugins.confluence-ui-components	5052	2017-05-27 12:40:31.278	pagination
com.atlassian.confluence.plugins.confluence-create-content-plugin	5053	2017-05-27 12:40:31.278	create-dialog-init-params
confluence.sections.admin	5054	2017-05-27 12:40:31.278	managereferers
com.atlassian.confluence.plugins.confluence-onboarding	5055	2017-05-27 12:40:31.278	notification-template-no-spaces
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	5056	2017-05-27 12:40:31.278	projectposter-blueprint-item
com.atlassian.plugin.notifications.notifications-module	5057	2017-05-27 12:40:31.278	chosen
com.atlassian.streams	5058	2017-05-27 12:40:31.278	applicationProperties
com.atlassian.confluence.plugins.confluence-browser-metrics	5059	2017-05-27 12:40:31.278	defer-js
com.atlassian.confluence.plugins.confluence-paste	5060	2017-05-27 12:40:31.278	autoconvert-youtu.be-rewrite
confluence.renderer.components	5061	2017-05-27 12:40:31.278	force-newline
confluence.search.mappers.lucene	5062	2017-05-27 12:40:31.278	chainedSearchFilter
com.atlassian.confluence.plugins.confluence-email-resources	5063	2017-05-27 12:40:31.278	notification-templates-page-moved-2.0.0
confluence.extra.dynamictasklist2	5064	2017-05-27 12:40:31.278	tasklist-servlet
com.atlassian.mywork.mywork-confluence-host-plugin	5065	2017-05-27 12:40:31.278	mw-header-anchor
com.atlassian.auiplugin	5066	2017-05-27 12:40:31.278	aui-header-unresponsive
com.atlassian.applinks.applinks-basicauth-plugin	5067	2017-05-27 12:40:31.278	webSudoManager
com.atlassian.confluence.plugins.pagetree	5068	2017-05-27 12:40:31.278	pagetreesearchactions
com.atlassian.mywork.mywork-confluence-provider-plugin	5069	2017-05-27 12:40:31.278	taskService
com.atlassian.confluence.plugins.search.confluence-search	5070	2017-05-27 12:40:31.278	es-siteSearch-query-mapper
confluence.sections.space.advanced	5071	2017-05-27 12:40:31.278	undefined
com.atlassian.confluence.plugins.confluence-mobile	5072	2017-05-27 12:40:31.278	mobile-dashboard-redirect-filter
confluence.extra.webdav	5073	2017-05-27 12:40:31.278	webdav-servlet
com.atlassian.confluence.plugins.xmlrpc.bloggingrpc	5074	2017-05-27 12:40:31.278	metaWeblog-xmlrpc
com.atlassian.auiplugin	5075	2017-05-27 12:40:31.278	internal-aui-is-input
com.atlassian.confluence.plugins.confluence-mobile	5076	2017-05-27 12:40:31.278	viewLinkSubMarshallerFactory
com.atlassian.auiplugin	5077	2017-05-27 12:40:31.278	aui-dropdown2
com.atlassian.gadgets.oauth.serviceprovider	5078	2017-05-27 12:40:31.278	helpLinkResolverContextItem
com.atlassian.confluence.plugins.confluence-file-notifications	5079	2017-05-27 12:40:31.278	file-content-email-soy-templates
com.atlassian.applinks.applinks-plugin	5080	2017-05-27 12:40:31.278	confluence-inbound-basic
confluence.sections.admin	5081	2017-05-27 12:40:31.278	quickpipesettings
com.atlassian.mywork.mywork-confluence-host-plugin	5082	2017-05-27 12:40:31.278	notification-dao
confluence.extra.masterdetail	5083	2017-05-27 12:40:31.278	detailssummary-migrator
com.atlassian.mywork.mywork-confluence-host-plugin	5084	2017-05-27 12:40:31.278	notificationRendererService
com.atlassian.confluence.plugins.confluence-daily-summary-email	5085	2017-05-27 12:40:31.278	summaryEmailTrackingServlet
com.atlassian.confluence.plugins.confluence-file-notifications	5086	2017-05-27 12:40:31.278	notificationUserService
com.atlassian.applinks.applinks-plugin	5087	2017-05-27 12:40:31.278	refappCharlie
com.atlassian.confluence.plugins.confluence-darkfeatures-rest	5088	2017-05-27 12:40:31.278	darkFeaturesManager
com.atlassian.analytics.analytics-client	5089	2017-05-27 12:40:31.278	confluenceBaseDataLogger
com.atlassian.support.healthcheck.support-healthcheck-plugin	5090	2017-05-27 12:40:31.278	confluenceLicenseService
com.atlassian.confluence.plugins.quickreload	5091	2017-05-27 12:40:31.278	vcacheFactory
com.atlassian.confluence.plugins.confluence-jira-metadata	5092	2017-05-27 12:40:31.278	jira-metadata-cache-config
com.atlassian.auiplugin	5093	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-events
confluence.web.resources	5094	2017-05-27 12:40:31.278	constants
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5095	2017-05-27 12:40:31.278	settingsService
com.atlassian.confluence.plugins.confluence-create-content-plugin	5096	2017-05-27 12:40:31.278	blueprintDiscoverer
com.atlassian.confluence.plugins.confluence-mentions-plugin	5097	2017-05-27 12:40:31.278	mentions-styling
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5098	2017-05-27 12:40:31.278	pluginLicenseRepository
com.atlassian.streams.core	5099	2017-05-27 12:40:31.278	streamsEntryRendererFactory
confluence.search.mappers.lucene	5100	2017-05-27 12:40:31.278	favouriteSort
com.atlassian.plugins.atlassian-whitelist-ui-plugin	5101	2017-05-27 12:40:31.278	soyTemplateRenderer
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5102	2017-05-27 12:40:31.278	hipChatIntegrationDiscoveryService
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5103	2017-05-27 12:40:31.278	confluenceNotificationPreferenceManager
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5104	2017-05-27 12:40:31.278	ao-module
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5105	2017-05-27 12:40:31.278	blogpost-created-notification-transformer
com.atlassian.confluence.plugins.confluence-space-ia	5106	2017-05-27 12:40:31.278	header-sidebar-styles-panel
com.atlassian.confluence.plugins.confluence-email-tracker	5107	2017-05-27 12:40:31.278	contentEntityManager
confluence.extractors.core	5108	2017-05-27 12:40:31.278	homePageChangeExtractor
com.atlassian.confluence.plugins.confluence-like	5109	2017-05-27 12:40:31.278	liked-page-action-view-blog-post-link
com.atlassian.confluence.extra.widgetconnector	5110	2017-05-27 12:40:31.278	xwork-actions
confluence.macro.metadata.provider	5111	2017-05-27 12:40:31.278	allMacroMetadataCache
com.atlassian.confluence.plugins.confluence-like	5112	2017-05-27 12:40:31.278	rest
com.atlassian.confluence.plugins.confluence-business-blueprints	5113	2017-05-27 12:40:31.278	sharelinks-urlmacro-resources
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	5114	2017-05-27 12:40:31.278	projectposter-blueprint
com.atlassian.auiplugin	5115	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-select2
com.atlassian.streams	5116	2017-05-27 12:40:31.278	date-ca-ES
com.atlassian.confluence.tinymceplugin	5117	2017-05-27 12:40:31.278	editor-resources
com.atlassian.streams	5118	2017-05-27 12:40:31.278	date-xh-ZA
confluence.extra.impresence2	5119	2017-05-27 12:40:31.278	reporter-icq
com.atlassian.confluence.contributors	5120	2017-05-27 12:40:31.278	watchiContributionExtractor
com.atlassian.streams	5121	2017-05-27 12:40:31.278	date-fr-LU
com.atlassian.confluence.plugins.confluence-email-resources	5122	2017-05-27 12:40:31.278	notification-templates-content-created-2.0.0
com.atlassian.confluence.plugins.confluence-inline-tasks	5123	2017-05-27 12:40:31.278	view-all-my-tasks-email-action-item
confluence.sections.space.tools	5124	2017-05-27 12:40:31.278	browse
com.atlassian.auiplugin	5125	2017-05-27 12:40:31.278	aui-table-sortable
com.atlassian.confluence.editor	5126	2017-05-27 12:40:31.278	charmap-resources
com.atlassian.mywork.mywork-confluence-provider-plugin	5127	2017-05-27 12:40:31.278	eventListener
confluence.macros.advanced	5128	2017-05-27 12:40:31.278	contentbylabel
com.atlassian.support.healthcheck.support-healthcheck-plugin	5129	2017-05-27 12:40:31.278	helpPathResolver
confluence.renderer.components	5130	2017-05-27 12:40:31.278	camelcase
confluence.macros.multimedia	5131	2017-05-27 12:40:31.278	audio
com.atlassian.plugin.notifications.notifications-module	5132	2017-05-27 12:40:31.278	notification-server
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5133	2017-05-27 12:40:31.278	blogpost-trashed-notification-template-body
com.atlassian.confluence.extra.widgetconnector	5134	2017-05-27 12:40:31.278	outboundWhitelist
com.atlassian.streams	5135	2017-05-27 12:40:31.278	date-fr-MC
com.atlassian.auiplugin	5136	2017-05-27 12:40:31.278	aui-progress-indicator
com.atlassian.confluence.plugins.confluence-like	5137	2017-05-27 12:40:31.278	liked-page-action-view-page-link
com.atlassian.confluence.plugins.confluence-browser-metrics	5138	2017-05-27 12:40:31.278	legacy-browser-metrics
com.atlassian.confluence.plugins.confluence-software-blueprints	5139	2017-05-27 12:40:31.278	common-resources
confluence.listeners.core	5140	2017-05-27 12:40:31.278	cdn-cache-flush-listener
confluence.sections.profile.view	5141	2017-05-27 12:40:31.278	profile-js
confluence.macros.multimedia	5142	2017-05-27 12:40:31.278	multimedia
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5143	2017-05-27 12:40:31.278	salWebSudoManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5144	2017-05-27 12:40:31.278	forgot-password-notification-template
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5145	2017-05-27 12:40:31.278	pluginRestUninstaller
com.atlassian.confluence.plugins.gadgets	5146	2017-05-27 12:40:31.278	core-services
com.atlassian.confluence.plugins.confluence-mentions-plugin	5147	2017-05-27 12:40:31.278	mention-email-like-link
com.atlassian.plugins.atlassian-nav-links-plugin	5148	2017-05-27 12:40:31.278	custom-apps-admin-ui
com.atlassian.mywork.mywork-confluence-provider-plugin	5149	2017-05-27 12:40:31.278	locale-service
com.atlassian.confluence.plugins.confluence-user-rest	5150	2017-05-27 12:40:31.278	pluginsSettingsFactory
com.atlassian.applinks.applinks-oauth-plugin	5151	2017-05-27 12:40:31.278	applinksRestV2OAuth
com.atlassian.confluence.plugins.editor-loader	5152	2017-05-27 12:40:31.278	editor-loader-actions
com.atlassian.confluence.plugins.share-page	5153	2017-05-27 12:40:31.278	share
confluence.extractors.core	5154	2017-05-27 12:40:31.278	contentPermissionsExtractor
confluence.macros.multimedia	5155	2017-05-27 12:40:31.278	macro-browser-smart-fields
confluence.macros.advanced	5156	2017-05-27 12:40:31.278	excerpt-include
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5157	2017-05-27 12:40:31.278	hipChatContextProvider
com.atlassian.confluence.plugins.confluence-inline-comments	5158	2017-05-27 12:40:31.278	models
com.atlassian.confluence.plugins.confluence-email-resources	5159	2017-05-27 12:40:31.278	content-templates-page-link-pattern-2.0.0
confluence.listeners.core	5160	2017-05-27 12:40:31.278	confluenceCachingBandanaListener
com.atlassian.confluence.plugins.confluence-knowledge-base	5161	2017-05-27 12:40:31.278	space-kb-web-resource
com.atlassian.plugins.issue-status-plugin	5162	2017-05-27 12:40:31.278	issue-status-resources
confluence.renderer.components	5163	2017-05-27 12:40:31.278	link
com.atlassian.confluence.plugins.confluence-nav-links	5164	2017-05-27 12:40:31.278	rotp.project.shortcuts
com.atlassian.confluence.plugins.confluence-email-resources	5165	2017-05-27 12:40:31.278	notification-templates-comment-add-1.0.0
com.atlassian.support.stp	5166	2017-05-27 12:40:31.278	pluginEventManager
com.atlassian.streams.confluence	5167	2017-05-27 12:40:31.278	date-et-EE
confluence.extra.impresence2	5168	2017-05-27 12:40:31.278	skypeme-migrator
com.atlassian.confluence.plugins.confluence-email-resources	5169	2017-05-27 12:40:31.278	stop-watching-space-blogs-email-adg-footer-item
com.atlassian.confluence.plugins.confluence-files	5170	2017-05-27 12:40:31.278	fileVersionsById
com.atlassian.streams.actions	5171	2017-05-27 12:40:31.278	streams-action-handlers
com.atlassian.confluence.plugins.confluence-request-access-plugin	5172	2017-05-27 12:40:31.278	request-access-notification
confluence.macros.basic	5173	2017-05-27 12:40:31.278	panel
org.randombits.confluence.toc	5174	2017-05-27 12:40:31.278	client-side-toc-resources
com.atlassian.auiplugin	5175	2017-05-27 12:40:31.278	aui-experimental-expander
com.atlassian.auiplugin	5176	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-firebug
com.atlassian.confluence.plugins.confluence-ui-components	5177	2017-05-27 12:40:31.278	blank-placeholder-box
confluence.web.resources	5178	2017-05-27 12:40:31.278	console-instrumentation
com.atlassian.oauth.serviceprovider	5179	2017-05-27 12:40:31.278	pluginScheduler
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	5180	2017-05-27 12:40:31.278	ao-module
confluence.getting-started	5181	2017-05-27 12:40:31.278	getting-started-resources
com.atlassian.confluence.extra.flyingpdf	5182	2017-05-27 12:40:31.278	configpdfstyle-2
com.atlassian.plugins.atlassian-nav-links-plugin	5183	2017-05-27 12:40:31.278	capability-service
org.randombits.confluence.toc	5184	2017-05-27 12:40:31.278	toc-zone-regex-migrator
com.atlassian.confluence.plugins.gadgets	5185	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.cluster.monitoring.cluster-monitoring-plugin	5186	2017-05-27 12:40:31.278	system-monitoring
com.atlassian.confluence.plugins.confluence-email-resources	5187	2017-05-27 12:40:31.278	content-templates-2.0.0
com.atlassian.confluence.plugins.confluence-feature-discovery-plugin	5188	2017-05-27 12:40:31.278	confluence-feature-discovery-plugin-resources
com.atlassian.plugins.base-hipchat-integration-plugin	5189	2017-05-27 12:40:31.278	hipchat-dialog
com.atlassian.confluence.plugins.soy	5190	2017-05-27 12:40:31.278	soy-static-resource-url-prefix-function
com.atlassian.plugins.jquery	5191	2017-05-27 12:40:31.278	jquery
com.atlassian.analytics.analytics-client	5192	2017-05-27 12:40:31.278	renderer
com.atlassian.confluence.plugins.confluence-inline-tasks	5193	2017-05-27 12:40:31.278	task-hipchat-notification-template
com.atlassian.integration.jira.jira-integration-plugin	5194	2017-05-27 12:40:31.278	jiraConfig
com.atlassian.confluence.plugins.soy	5195	2017-05-27 12:40:31.278	confluenceSoyTemplateRenderer
com.atlassian.confluence.editor	5196	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.recently-viewed-plugin	5197	2017-05-27 12:40:31.278	threadLocalDelegateExecutorFactory
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5198	2017-05-27 12:40:31.278	atlassianAnalyticsPublisher
com.atlassian.confluence.editor	5199	2017-05-27 12:40:31.278	mailServerExistsCriteria
com.atlassian.confluence.plugins.confluence-templates	5200	2017-05-27 12:40:31.278	confluenceTemplateWhiteList
com.atlassian.plugin.notifications.notifications-module	5201	2017-05-27 12:40:31.278	notification-handler
confluence.macros.advanced	5202	2017-05-27 12:40:31.278	gallery-resources
com.atlassian.auiplugin	5203	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-jquery-jquery-hotkeys
com.atlassian.confluence.plugins.confluence-paste	5204	2017-05-27 12:40:31.278	autoconvert-cloudapp
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5205	2017-05-27 12:40:31.278	mpacAnalyticsPublisher
com.atlassian.confluence.plugins.confluence-hipchat-emoticons-plugin	5206	2017-05-27 12:40:31.278	emoticonStorageToEditorTransformer
com.atlassian.confluence.plugins.share-page	5207	2017-05-27 12:40:31.278	share-draft-notification-transformer
com.atlassian.auiplugin	5208	2017-05-27 12:40:31.278	aui-lozenge
com.atlassian.confluence.plugins.confluence-daily-summary-email	5209	2017-05-27 12:40:31.278	recommendedUpdatesTrackingListener
confluence.extra.layout	5210	2017-05-27 12:40:31.278	xhtml-column
com.atlassian.confluence.plugins.confluence-templates	5211	2017-05-27 12:40:31.278	space-templates
com.atlassian.plugins.base-hipchat-integration-plugin-api	5212	2017-05-27 12:40:31.278	amd
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5213	2017-05-27 12:40:31.278	analyticsWhitelist
com.atlassian.auiplugin	5214	2017-05-27 12:40:31.278	aui-sidebar
com.atlassian.confluence.plugins.confluence-file-notifications	5215	2017-05-27 12:40:31.278	file-content-remove-email-notification-template
com.atlassian.auiplugin	5216	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-button
com.atlassian.querylang.confluence-cql-plugin	5217	2017-05-27 12:40:31.278	start-of-month-zero-arg-function
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5218	2017-05-27 12:40:31.278	synchronizationManager
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5219	2017-05-27 12:40:31.278	forgot-password-recipients-provider
com.atlassian.confluence.plugins.pagetree	5220	2017-05-27 12:40:31.278	pagetree
com.atlassian.confluence.plugins.confluence-rest-resources	5221	2017-05-27 12:40:31.278	content-properties-metadata-provider
com.atlassian.analytics.analytics-client	5222	2017-05-27 12:40:31.278	confluenceOnDemandDetector
com.atlassian.confluence.plugins.pagetree	5223	2017-05-27 12:40:31.278	naturalchildrenaction
com.atlassian.confluence.plugins.sticky-table-headers	5224	2017-05-27 12:40:31.278	stickytableheaders-resources
confluence.sections.create	5225	2017-05-27 12:40:31.278	create-space
com.atlassian.confluence.plugins.confluence-email-resources	5226	2017-05-27 12:40:31.278	template-utils-attached-image-1.0.0
confluence.extra.webdav	5227	2017-05-27 12:40:31.278	reverseProxyCopyAndMoveDestinationFix
com.atlassian.confluence.plugins.confluence-page-hierarchy-plugin	5228	2017-05-27 12:40:31.278	copy-soy
com.atlassian.auiplugin	5229	2017-05-27 12:40:31.278	aui-header-async
com.atlassian.auiplugin	5230	2017-05-27 12:40:31.278	aui-experimental-iconfont
com.atlassian.confluence.plugins.confluence-software-project	5231	2017-05-27 12:40:31.278	sp-space-decisions-template
com.atlassian.analytics.analytics-client	5232	2017-05-27 12:40:31.278	enable-analytics
com.atlassian.auiplugin	5233	2017-05-27 12:40:31.278	internal-aui-animation
com.atlassian.plugins.atlassian-whitelist-core-plugin	5234	2017-05-27 12:40:31.278	applicationLinksMigration
com.atlassian.plugins.authentication.atlassian-authentication-plugin	5235	2017-05-27 12:40:31.278	logout
com.atlassian.confluence.plugins.confluence-macro-browser	5236	2017-05-27 12:40:31.278	macro-browser-resources
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5237	2017-05-27 12:40:31.278	userManager
confluence.sections.space.advanced	5238	2017-05-27 12:40:31.278	startwatchingall
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5239	2017-05-27 12:40:31.278	pluginRequestStore
confluence.renderer.components	5240	2017-05-27 12:40:31.278	dash
com.atlassian.applinks.applinks-trustedapps-plugin	5241	2017-05-27 12:40:31.278	pluginAccessor
confluence.extra.impresence2	5242	2017-05-27 12:40:31.278	presenceManager
com.atlassian.mywork.mywork-confluence-host-plugin	5243	2017-05-27 12:40:31.278	clientRegistrationService
com.atlassian.confluence.plugins.dialog-wizard	5244	2017-05-27 12:40:31.278	rest
com.atlassian.oauth.serviceprovider	5245	2017-05-27 12:40:31.278	unescaperContextItem
com.atlassian.confluence.editor	5246	2017-05-27 12:40:31.278	editor-labels
com.atlassian.integration.jira.jira-integration-plugin	5247	2017-05-27 12:40:31.278	jira-issues-dialog-trigger
com.atlassian.confluence.plugins.confluence-nav-links	5248	2017-05-27 12:40:31.278	settingsManager
com.atlassian.oauth.serviceprovider	5249	2017-05-27 12:40:31.278	accessTokensServlet
com.atlassian.confluence.plugins.confluence-business-blueprints	5250	2017-05-27 12:40:31.278	file-list-resources
com.atlassian.confluence.plugins.confluence-email-tracker	5251	2017-05-27 12:40:31.278	eventPublisher
com.atlassian.auiplugin	5252	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-layer-manager
com.atlassian.confluence.plugins.confluence-sortable-tables	5253	2017-05-27 12:40:31.278	sortable-table-hooks
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5254	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.plugins.confluence-notifications-batch-plugin	5255	2017-05-27 12:40:31.278	batchingJobConfig
com.atlassian.streams	5256	2017-05-27 12:40:31.278	date-fr-BE
com.atlassian.confluence.plugins.confluence-daily-summary-email	5257	2017-05-27 12:40:31.278	popular-content-template
com.atlassian.streams	5258	2017-05-27 12:40:31.278	date-fr-CA
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5259	2017-05-27 12:40:31.278	page-moved-notification
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5260	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.confluence.plugins.confluence-inline-tasks	5261	2017-05-27 12:40:31.278	date-helper-js-resources
confluence.web.resources	5262	2017-05-27 12:40:31.278	bigpipe
com.atlassian.confluence.plugins.confluence-email-resources	5263	2017-05-27 12:40:31.278	manage-notifications-email-adg-footer-item
com.atlassian.streams.confluence	5264	2017-05-27 12:40:31.278	date-pa-IN
confluence.admin.user	5265	2017-05-27 12:40:31.278	browsegroups
com.atlassian.auiplugin	5266	2017-05-27 12:40:31.278	internal-src-js-aui-fancy-file-input
com.atlassian.confluence.plugins.confluence-inline-tasks	5267	2017-05-27 12:40:31.278	editor-autocomplete-date-css
com.atlassian.applinks.applinks-oauth-plugin	5268	2017-05-27 12:40:31.278	oauth-2lo-config
com.atlassian.auiplugin	5269	2017-05-27 12:40:31.278	jquery-ui-position
com.atlassian.confluence.plugins.confluence-file-notifications	5270	2017-05-27 12:40:31.278	file-notifications-file-details-file-comments
com.atlassian.confluence.plugins.confluence-inline-tasks	5271	2017-05-27 12:40:31.278	view-blog-tasks-email-action-item
com.atlassian.streams	5272	2017-05-27 12:40:31.278	date-sr-Latn-BA
com.atlassian.confluence.plugins.confluence-space-directory	5273	2017-05-27 12:40:31.278	dateFormatterFactory
confluence.user.menu	5274	2017-05-27 12:40:31.278	follow
com.atlassian.confluence.plugins.confluence-link-browser	5275	2017-05-27 12:40:31.278	link-browser-tab-search
com.atlassian.gadgets.directory	5276	2017-05-27 12:40:31.278	gadget-directory-admin-client
com.atlassian.confluence.plugins.confluence-user-rest	5277	2017-05-27 12:40:31.278	confluenceUserManagementRest-filter
confluence.extra.userlister	5278	2017-05-27 12:40:31.278	confluence.extra.userlister.xwork
com.atlassian.confluence.extra.flyingpdf	5279	2017-05-27 12:40:31.278	configpdfstyle
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5280	2017-05-27 12:40:31.278	rest-filter
com.atlassian.confluence.plugins.confluence-software-project	5281	2017-05-27 12:40:31.278	SoftwareProjectSpaceEventListener
com.atlassian.confluence.plugins.confluence-content-notifications-plugin	5282	2017-05-27 12:40:31.278	renderer
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5283	2017-05-27 12:40:31.278	velocityEscapeTool
com.atlassian.plugin.notifications.notifications-module	5284	2017-05-27 12:40:31.278	backbone
confluence.web.components	5285	2017-05-27 12:40:31.278	property-panel
com.atlassian.streams.streams-thirdparty-plugin	5286	2017-05-27 12:40:31.278	webResourceManager
confluence.extractors.core	5287	2017-05-27 12:40:31.278	contentEntityMetadataChangeExtractor
com.atlassian.confluence.plugins.confluence-inline-comments	5288	2017-05-27 12:40:31.278	likes
com.atlassian.confluence.plugins.confluence-healthcheck-plugin	5289	2017-05-27 12:40:31.278	tomcatHelper
com.atlassian.integration.jira.jira-integration-plugin	5290	2017-05-27 12:40:31.278	jira-resource-filter
com.atlassian.confluence.plugins.confluence-page-banner	5291	2017-05-27 12:40:31.278	content-metadata-page-restrictions-none
confluence.extra.jira	5292	2017-05-27 12:40:31.278	created-content-jira-remote-link-callback
com.atlassian.applinks.applinks-trustedapps-plugin	5293	2017-05-27 12:40:31.278	typeAccessor
com.atlassian.confluence.plugins.confluence-email-resources	5294	2017-05-27 12:40:31.278	reply-to-comment-email-adg-footer-item
com.atlassian.support.stp	5295	2017-05-27 12:40:31.278	webResourceManager
confluence.sections.admin.upgrade	5296	2017-05-27 12:40:31.278	resources
com.atlassian.mywork.mywork-common-plugin	5297	2017-05-27 12:40:31.278	loginUriProvider
com.atlassian.auiplugin	5298	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-result-set
com.atlassian.streams.confluence	5299	2017-05-27 12:40:31.278	xhtmlRenderer
com.atlassian.applinks.applinks-basicauth-plugin	5300	2017-05-27 12:40:31.278	requestFactory
com.atlassian.confluence.plugins.confluence-mobile	5301	2017-05-27 12:40:31.278	mobile-super-batch-exclusion-filter
confluence.filters.core	5302	2017-05-27 12:40:31.278	httpRequestStatsFilter
com.atlassian.confluence.plugins.confluence-inline-tasks	5303	2017-05-27 12:40:31.278	tasks-recipients-provider
com.atlassian.plugin.notifications.notifications-module	5304	2017-05-27 12:40:31.278	userRole
com.atlassian.streams.confluence	5305	2017-05-27 12:40:31.278	date-smn-FI
com.atlassian.analytics.analytics-client	5306	2017-05-27 12:40:31.278	analyticsEmailHasher
com.atlassian.confluence.plugins.confluence-dashboard	5307	2017-05-27 12:40:31.278	pluginHibernateSessionFactory
com.atlassian.confluence.plugins.expand-macro	5308	2017-05-27 12:40:31.278	expand-macro-css-only
com.atlassian.confluence.plugins.atlassian-playbook-blueprints	5309	2017-05-27 12:40:31.278	projectposter-template
com.atlassian.plugins.atlassian-nav-links-plugin	5310	2017-05-27 12:40:31.278	projectManager
com.atlassian.streams	5311	2017-05-27 12:40:31.278	appLinkServiceExtensions
com.atlassian.streams	5312	2017-05-27 12:40:31.278	date-th-TH
com.atlassian.confluence.editor	5313	2017-05-27 12:40:31.278	macroParameterTypeParser
com.atlassian.confluence.plugins.share-page	5314	2017-05-27 12:40:31.278	plus-icon-css
com.atlassian.streams	5315	2017-05-27 12:40:31.278	date-sr-Latn-CS
com.atlassian.auiplugin	5316	2017-05-27 12:40:31.278	internal-@atlassian-aui-src-js-aui-restful-table-class-names
com.atlassian.confluence.plugins.confluence-jira-metadata	5317	2017-05-27 12:40:31.278	confluence-jira-metadata-rest
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5318	2017-05-27 12:40:31.278	userManagerContextItem
com.atlassian.confluence.plugins.confluence-notifications-spi-plugin	5319	2017-05-27 12:40:31.278	transactionTemplate
com.atlassian.upm.atlassian-universal-plugin-manager-plugin	5320	2017-05-27 12:40:31.278	confluence-upm-osgi-menu
confluence.listeners.core	5321	2017-05-27 12:40:31.278	pluginCounterInvalidator
com.atlassian.confluence.tinymceplugin	5322	2017-05-27 12:40:31.278	editor-autocomplete-resources
com.atlassian.oauth.consumer.sal	5323	2017-05-27 12:40:31.278	tokenStore
com.atlassian.plugin.notifications.notifications-module	5324	2017-05-27 12:40:31.278	userServerManager
com.atlassian.streams	5325	2017-05-27 12:40:31.278	date-lv-LV
com.atlassian.confluence.plugins.confluence-inline-comments	5326	2017-05-27 12:40:31.278	display-reply-view
com.atlassian.streams	5327	2017-05-27 12:40:31.278	date-fr-CH
confluence.web.resources	5328	2017-05-27 12:40:31.278	aui-experimental
com.atlassian.confluence.extra.widgetconnector	5329	2017-05-27 12:40:31.278	web-widget-xhtml
com.atlassian.confluence.plugins.confluence-email-resources	5330	2017-05-27 12:40:31.278	content-templates-contextual-excerpt-pattern-1.0.0
com.atlassian.applinks.applinks-plugin	5331	2017-05-27 12:40:31.278	velocityContextFactory
com.atlassian.auiplugin	5332	2017-05-27 12:40:31.278	aui-select
com.atlassian.applinks.applinks-trustedapps-plugin	5333	2017-05-27 12:40:31.278	webResourceUrlProvider
com.atlassian.confluence.plugins.confluence-hipchat-integration-plugin	5334	2017-05-27 12:40:31.278	bandanaToAoMigrationController
com.atlassian.support.stp	5335	2017-05-27 12:40:31.278	supportZipFileServerServlet
com.atlassian.querylang.confluence-cql-plugin	5336	2017-05-27 12:40:31.278	now-zero-arg-function
com.atlassian.confluence.plugins.confluence-dashboard	5337	2017-05-27 12:40:31.278	confluenceDashboardWhiteList
com.atlassian.applinks.applinks-oauth-plugin	5338	2017-05-27 12:40:31.278	applinks-oauth-ui
com.atlassian.plugins.atlassian-nps-plugin	5339	2017-05-27 12:40:31.278	nps-amd-shims
com.atlassian.plugin.jslibs	5340	2017-05-27 12:40:31.278	uri-1.14.1
com.atlassian.integration.jira.jira-integration-plugin	5341	2017-05-27 12:40:31.278	i18nResolver
com.atlassian.confluence.keyboardshortcuts	5342	2017-05-27 12:40:31.278	tinymce.p
\.


--
-- Name: AO_6384AB_FEATURE_METADATA_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('"AO_6384AB_FEATURE_METADATA_AO_ID_seq"', 5342, true);


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
1	_GLOBAL	confluence.server.id	<string>BQ2P-1BX5-WFI3-STQD</string>
2	_GLOBAL	confluence.server.installation.date	<date>2017-05-27 12:40:31.278 GMT</date>
4	_GLOBAL	synchrony_collaborative_editor_UUID	<string>70e7d953-fef8-4e95-9036-f5d7149f42e4</string>
5	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.plugin-installed-date-in-millis	<string>1495888833079</string>
6	_GLOBAL	synchrony_collaborative_editor_app_passphrase	<string>E9AcTO3+Cd6g86JkfcvbgArBwP9vaBBuAIkwXFcSzB8=</string>
7	_GLOBAL	synchrony_collaborative_editor_app_id	<string>Synchrony-1f5d3533-a848-3940-9a0d-96dfb8b590b2</string>
8	_GLOBAL	synchrony_collaborative_editor_app_secret	<string>TzDxRXsqfs7QY/EDMynGkbmPyl+a6exV/dws7nXX8XI=</string>
9	_GLOBAL	AO_9412A1_#	<string>8</string>
10	_GLOBAL	AO_26DB7F_#	<string>1</string>
11	_GLOBAL	plugin.manager.state.Map	<map/>
12	_GLOBAL	atlassian.confluence.plugin.resource.counter	<int>2</int>
3	_GLOBAL	atlassian.confluence.settings	<settings>\n  <doNotSave>false</doNotSave>\n  <allowCamelCase>false</allowCamelCase>\n  <allowTrackbacks>false</allowTrackbacks>\n  <allowThreadedComments>true</allowThreadedComments>\n  <externalUserManagement>false</externalUserManagement>\n  <denyPublicSignup>true</denyPublicSignup>\n  <emailAdminMessageOff>false</emailAdminMessageOff>\n  <almostSupportPeriodEndMessageOff>false</almostSupportPeriodEndMessageOff>\n  <senMissingInLicenseMessageOff>true</senMissingInLicenseMessageOff>\n  <baseUrlAdminMessageOff>false</baseUrlAdminMessageOff>\n  <allowRemoteApi>false</allowRemoteApi>\n  <allowRemoteApiAnonymous>false</allowRemoteApiAnonymous>\n  <antiXssMode>true</antiXssMode>\n  <gzippingResponse>true</gzippingResponse>\n  <disableLogo>false</disableLogo>\n  <sharedMode>false</sharedMode>\n  <enableDidYouMean>false</enableDidYouMean>\n  <enableQuickNav>true</enableQuickNav>\n  <enableSpaceStyles>false</enableSpaceStyles>\n  <enableOpenSearch>true</enableOpenSearch>\n  <showSystemInfoIn500Page>false</showSystemInfoIn500Page>\n  <showApplicationTitle>false</showApplicationTitle>\n  <referrerSettings>\n    <collectReferrerData>true</collectReferrerData>\n    <excludedReferrers/>\n    <hideExternalReferrers>false</hideExternalReferrers>\n  </referrerSettings>\n  <captchaSettings>\n    <enableCaptcha>false</enableCaptcha>\n    <enableDebug>false</enableDebug>\n    <captchaGroups class="list"/>\n    <exclude>registered</exclude>\n  </captchaSettings>\n  <customHtmlSettings>\n    <beforeHeadEnd></beforeHeadEnd>\n    <afterBodyStart></afterBodyStart>\n    <beforeBodyEnd></beforeBodyEnd>\n  </customHtmlSettings>\n  <colourSchemesSettings>\n    <colourSchemeType>custom</colourSchemeType>\n  </colourSchemesSettings>\n  <loginManagerSettings>\n    <enableElevatedSecurityCheck>true</enableElevatedSecurityCheck>\n    <loginAttemptsThreshold>3</loginAttemptsThreshold>\n  </loginManagerSettings>\n  <confluenceHttpParameters>\n    <connectionTimeout>10000</connectionTimeout>\n    <socketTimeout>10000</socketTimeout>\n    <enabled>true</enabled>\n  </confluenceHttpParameters>\n  <attachmentMaxSize>104857600</attachmentMaxSize>\n  <auditLogRetentionNumber>3</auditLogRetentionNumber>\n  <auditLogRetentionUnit>Years</auditLogRetentionUnit>\n  <draftSaveInterval>30000</draftSaveInterval>\n  <maxAttachmentsInUI>5</maxAttachmentsInUI>\n  <siteTitle>Confluence</siteTitle>\n  <documentationUrlPattern>http://docs.atlassian.com/confluence/docs-{0}/{1}</documentationUrlPattern>\n  <showContactAdministratorsForm>true</showContactAdministratorsForm>\n  <emailAddressVisibility>email.address.public</emailAddressVisibility>\n  <defaultEncoding>UTF-8</defaultEncoding>\n  <maxThumbHeight>300</maxThumbHeight>\n  <maxThumbWidth>300</maxThumbWidth>\n  <backupAttachmentsDaily>true</backupAttachmentsDaily>\n  <backupDaily>true</backupDaily>\n  <backupPath>/confluence-shared-home/backups</backupPath>\n  <nofollowExternalLinks>true</nofollowExternalLinks>\n  <indexingLanguage>english</indexingLanguage>\n  <globalDefaultLocale>en_GB</globalDefaultLocale>\n  <dailyBackupFilePrefix>backup-</dailyBackupFilePrefix>\n  <dailyBackupDateFormatPattern>yyyy_MM_dd</dailyBackupDateFormatPattern>\n  <supportRequestEmail>confluence-autosupportrequests@atlassian.com</supportRequestEmail>\n  <defaultSpaceHomepageTitle>Home</defaultSpaceHomepageTitle>\n  <baseUrl>http://confluence-cluster-612-lb:50612</baseUrl>\n  <attachmentDataStore>file.system.based.attachments.storage</attachmentDataStore>\n  <displayLinkIcons>false</displayLinkIcons>\n  <addWildcardsToUserAndGroupSearches>true</addWildcardsToUserAndGroupSearches>\n  <xsrfAddComments>true</xsrfAddComments>\n  <webSudoTimeout>10</webSudoTimeout>\n  <webSudoEnabled>true</webSudoEnabled>\n  <defaultUsersGroup>confluence-users</defaultUsersGroup>\n  <attachmentSecurityLevel>smart</attachmentSecurityLevel>\n  <enableJavascriptTop>true</enableJavascriptTop>\n  <supportPeriodEndMessageOff>false</supportPeriodEndMessageOff>\n  <enableWysiwyg>true</enableWysiwyg>\n  <useWysiwygByDefault>true</useWysiwygByDefault>\n  <numberOfBreadcrumbAncestors>1</numberOfBreadcrumbAncestors>\n  <viewSpaceGoesToSpaceSummary>false</viewSpaceGoesToSpaceSummary>\n  <maxSimultaneousQuickNavRequests>40</maxSimultaneousQuickNavRequests>\n  <maxRssItems>200</maxRssItems>\n  <rssTimeout>60</rssTimeout>\n  <pageTimeout>120</pageTimeout>\n</settings>
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
42	_GLOBAL	com.atlassian.analytics.client.configuration..analytics_enabled	<string>true</string>
44	_GLOBAL	com.atlassian.analytics.client.configuration..policy_acknowledged	<string>true</string>
43	_GLOBAL	com.atlassian.analytics.client.configuration.uuid	<string>ae8f0ff7-5ca3-4691-9cf6-2fb5cf4c5344</string>
45	_GLOBAL	com.atlassian.analytics.client.configuration.serverid	<string>BQ2P-1BX5-WFI3-STQD</string>
27	_GLOBAL	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	<list>\n  <string>{&quot;userKey&quot;:&quot;Confluence&quot;,&quot;date&quot;:1495888873552,&quot;i18nKey&quot;:&quot;upm.auditLog.upm.startup&quot;,&quot;entryType&quot;:&quot;UPM_STARTUP&quot;,&quot;params&quot;:[]}</string>\n</list>
51	_GLOBAL	com.atlassian.upm:notifications:notification-edition.mismatch	<list/>
53	_GLOBAL	com.atlassian.upm:notifications:notification-plugin.request	<list/>
58	_GLOBAL	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	<list/>
59	_GLOBAL	com.atlassian.upm:notifications:notification-maintenance.expired	<list/>
61	_GLOBAL	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	<list/>
83	_GLOBAL	com.atlassian.upm:notifications:notification-update	<list/>
46	com.atlassian.confluence.content.render.xhtml.migration.macro.MacroMigrationService	migration.required	<boolean>false</boolean>
47	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#LocalTaskQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
48	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#AuditLogCleaner	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
49	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#CleanTempDirectoryJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
50	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#EhCacheCompactionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
52	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#TaskQueueFlushJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
54	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClusterCacheCompactionJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
56	_GLOBAL	com.atlassian.upm:notifications:notification-evaluation.expired	<list/>
55	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#LaasPerformanceLoggingJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
57	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClusterSafetyJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
60	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#ClearExpiredRememberMeTokensJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
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
78	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.onboardingNumberOfUsersCheckJob	<string>JOB_FIRST_EXECUTE</string>
79	com.atlassian.confluence.efi.store.GlobalStorageServiceImpl	efi.store.onboarding.onboardingSpaceCheckJob	<string>JOB_FIRST_EXECUTE</string>
77	com.atlassian.confluence.schedule.ScheduledJobConfiguration	DEFAULT#periodicEventPublisherJob	<com.atlassian.confluence.schedule.ScheduledJobConfiguration>\n  <enabled>\n    <value>1</value>\n  </enabled>\n  <cronSchedule/>\n  <repeatInterval/>\n</com.atlassian.confluence.schedule.ScheduledJobConfiguration>
80	_GLOBAL	plugin.settings.com.atlassian.confluence.bigpipe.BigPipeSettingsManager	<com.atlassian.confluence.internal.bigpipe.BigPipeSettingsManager-BigPipeSettings>\n  <pluginSettings>\n    <entry>\n      <string>com.atlassian.confluence.plugins.confluence-content-report-plugin:content-report-table</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>com.gliffy.integration.confluence:gliffy</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>com.atlassian.confluence.plugins.confluence-inline-tasks:tasks-report-macro</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:blog-posts</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:children</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.jira:jira</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.jira:jirachart</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:include</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:excerpt-include</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.chart:chart</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>org.randombits.confluence.toc:toc</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.masterdetail:detailssummary</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>com.atlassian.confluence.contributors:contributors</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>com.atlassian.confluence.contributors:contributors-summary</string>\n      <boolean>false</boolean>\n    </entry>\n    <entry>\n      <string>confluence.macros.advanced:recently-updated</string>\n      <boolean>true</boolean>\n    </entry>\n    <entry>\n      <string>confluence.extra.jira:jiraissues</string>\n      <boolean>false</boolean>\n    </entry>\n  </pluginSettings>\n</com.atlassian.confluence.internal.bigpipe.BigPipeSettingsManager-BigPipeSettings>
81	_GLOBAL	c.a.c.plugins:confluence-user-rest:firstCheckDateMs	<string>1495888881638</string>
82	_GLOBAL	c.a.c.plugins:confluence-user-rest:hadHadASingleDirectory	<string>true</string>
84	_GLOBAL	com.atlassian.analytics.client.configuration..logged_base_analytics_data	<string>true</string>
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
491521	2029825
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
425985	7111	2017-05-27 12:40:58.509	lock_for_upgrade_to_7111	\N	\N
\.


--
-- Data for Name: content; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY content (contentid, hibernateversion, contenttype, title, lowertitle, version, creator, creationdate, lastmodifier, lastmoddate, versioncomment, prevver, content_status, pageid, spaceid, child_position, parentid, messageid, pluginkey, pluginver, parentccid, draftpageid, draftspacekey, drafttype, draftpageversion, parentcommentid, username) FROM stdin;
360449	1	USERINFO	\N	\N	1	\N	2017-05-27 12:40:58.094	\N	2017-05-27 12:40:58.094		\N	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2c9280835c49ebf3015c49ec8b2c0000
360450	1	GLOBALDESCRIPTION	\N	\N	1	\N	2017-05-27 12:40:58.456	\N	2017-05-27 12:40:58.456		\N	current	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
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
163841	CREATE_ROLE
163841	CREATE_GROUP
163841	UPDATE_GROUP
163841	UPDATE_ROLE
163841	DELETE_GROUP
163841	DELETE_USER
163841	UPDATE_ROLE_ATTRIBUTE
163841	CREATE_USER
163841	UPDATE_USER
163841	UPDATE_GROUP_ATTRIBUTE
163841	DELETE_ROLE
163841	UPDATE_USER_ATTRIBUTE
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
98305	crowd-embedded	crowd-embedded	2017-05-27 12:40:57.483	2017-05-27 12:40:57.562	T	\N	GENERIC_APPLICATION	X
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
131073	Confluence Internal Directory	confluence internal directory	2017-05-27 12:40:57.533	2017-05-27 12:40:57.533	T	Confluence default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL
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
131073	CREATE_ROLE
131073	CREATE_GROUP
131073	UPDATE_GROUP
131073	UPDATE_ROLE
131073	DELETE_USER
131073	DELETE_GROUP
131073	UPDATE_ROLE_ATTRIBUTE
131073	CREATE_USER
131073	UPDATE_USER
131073	UPDATE_GROUP_ATTRIBUTE
131073	DELETE_ROLE
131073	UPDATE_USER_ATTRIBUTE
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, group_type, directory_id) FROM stdin;
196609	confluence-administrators	confluence-administrators	T	F	2017-05-27 12:40:57.647	2017-05-27 12:40:57.647	\N	GROUP	131073
196610	confluence-users	confluence-users	T	F	2017-05-27 12:40:57.712	2017-05-27 12:40:57.712	\N	GROUP	131073
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
262145	admin	admin	T	2017-05-27 12:40:57.884	2017-05-27 12:40:57.884			admin	admin	admin	admin	admin@foo.de	admin@foo.de	0706c089-2a75-4127-b6fb-1da4f6a8d219	131073	{PKCS5S2}iD/HxMUYQek2jn/XqROpSdBONfMuwZ7xQkQ8yM+bPmYIwzYn1kmZP7PINaUOLarG
\.


--
-- Data for Name: cwd_user_attribute; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY cwd_user_attribute (id, user_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
294913	262145	131073	requiresPasswordChange	false	false
294914	262145	131073	invalidPasswordAttempts	0	0
294915	262145	131073	passwordLastChanged	1495888857903	1495888857903
294916	262145	131073	lastAuthenticated	1495888858194	1495888858194
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
1	main_index	2017-05-27 12:40:57.741	REINDEX_USERS_IN_GROUP	confluence-administrators
2	main_index	2017-05-27 12:40:57.748	REINDEX_USERS_IN_GROUP	confluence-users
3	main_index	2017-05-27 12:40:58.111	UPDATE_DOCUMENT	com.atlassian.confluence.user.PersonalInformation-360449
4	main_index	2017-05-27 12:40:58.169	UPDATE_DOCUMENT	com.atlassian.confluence.user.PersonalInformation-360449
\.


--
-- Data for Name: keystore; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY keystore (keyid, alias, type, algorithm, keyspec) FROM stdin;
32769	confluence:3410511	public	RSA	MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqWQ0PNl5HgcGPPyCWO1L9p1rV+k8/y88bvFBWLjoTyf3d+wshq6pH6kyN0zfKn69Y0RqHbRCERqFoirbUwElgfGbVplGI1jGSMWpTsw5ihZA0A1BsupYhxlQI21RWuqMKudR22HMeX3eYIYmcE/yCto0xGdairJMwjwue9d34YwyGvu6wM5TWCUcFAgUbQxPsx5b1QzKattA1bP7kEcpEIjjvOh+r+SfysKun1VOu/FddL2BLJm5QHuczurnbt7vtqQTnE86UTUxhVktgw/dJbysVrAgy7d52n4dEpuKY2Ef2D/ZfiMpUItcMgr52fXlrYslC46nJE2ti+RWMgdUEQIDAQAB
32770	confluence:3410511	private	RSA	MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCpZDQ82XkeBwY8/IJY7Uv2nWtX6Tz/Lzxu8UFYuOhPJ/d37CyGrqkfqTI3TN8qfr1jRGodtEIRGoWiKttTASWB8ZtWmUYjWMZIxalOzDmKFkDQDUGy6liHGVAjbVFa6owq51HbYcx5fd5ghiZwT/IK2jTEZ1qKskzCPC5713fhjDIa+7rAzlNYJRwUCBRtDE+zHlvVDMpq20DVs/uQRykQiOO86H6v5J/Kwq6fVU678V10vYEsmblAe5zO6udu3u+2pBOcTzpRNTGFWS2DD90lvKxWsCDLt3nafh0Sm4pjYR/YP9l+IylQi1wyCvnZ9eWtiyULjqckTa2L5FYyB1QRAgMBAAECggEAMYawNUhafrqMCuHDVK/Q4YKmQ3ZY1L2hXEiilAfAOICVfNUrMZe4sB6epYeOylRzGCaFJjkxheGsx7zjEnJH3qXfBqNa2/PVSaqtNXJFsoeOHKZ7mo2lI571jN4mBsCECflHOC7wg2cXUT5316ewO5cQDYqwcNPv2GyTJLdbgDCtDHgsCowzbztX+IMQeGBFlL4oX8K+2Wb3gjx0vPmyEucELzGPZgxpMU4zhf8DS9BHZcbEVVy/ARl5lsSsobJggjIuq05gJUOQsdlfYU4PAwSQAsUbegqfC3ffj0wRRhIlMW5lcB71+95zXTig9c/bm+RlBiGOFOgJ+Yq88Zq5lwKBgQDYKoUz2W9oVSNT334zv0PsFFTydjVSC9rF9CK04XN0IETQMHAqFHp83jTOd35lnMEv0ctVQDW3ZLJhiq7PXR0SGzFq5Ro7Rknu1JU4/TP5hRPWviKcU66IvoZSt8PNMzBoxtPleOoxvNJ8xgjzDpSKAa8eB6FltnQnZFuUOZK2jwKBgQDImx9Mb9x6CGMq/6OCYJCQfykAcO+17r09XJnww89YE+O1aRUd8wodLteE1ie8R+iqVtMRV3pHxi0khjymWYca5wlzKx5sy1C3xDJkwJIhYIXzYLuNmu/bZ4+DqgbHcLbOoKrw9fCdK9485oATrludQm9Ipz1oI/yVJLZejaObXwKBgQCiNTYDNFRvPAPoejrfZdT4IEGmN6HHUXH3PT2V8d+K8nPwrYhda0SG0s9ZZz2HzlsBITKtZCNq3LsmisSmgj7ASXuJtSU7+YCdIRRg0U/hG0VJzR93oyvDHQT6qT7aimD3Hsv+0/8ZF5HzYz9v9C7uaFkZ9avdAU6kCKDX12QKbQKBgHTZVovRhJ1YkVsUeQuSb+KbDykAn8BbhcNeUxTZGcd2HmcnBHPjg3qoNEVd8NtND4tY86zgRYvVNapWvrEu6PGUrf51mU1JyISiNbBWM0hZzuyK5fR/0UL9uay5tyUo1HLbR3b/6t3CFbtnkCbmotqhPe0V7UDh5ViCf+/nlOsFAoGAbtCuZh/7SyOg4aO0x1RmDnKpylDR1ZiX3gq5KM11SiwRZriW/WYWZc51QxPED54thG43+WEylhMsoX0z+fu5wUIGtBmarQF1nUY1NNuaZoYjEsOrN/cAcK7vRoveJA82mR+ehaAq1x9/68nJWcMJVjPWy2I4DH3e83K6ocXBLeU=
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
USERPROPS-2c9280835c49ebf3015c49ec8b2c0000	0	efi.store.onboarding.onboarding-state:introWorkflow	5	f	0	__complete__		0	0	\N
USERPROPS-2c9280835c49ebf3015c49ec8b2c0000	0	confluence.macros.dashboard.selected.tab	5	f	0	all		0	0	\N
USERPROPS-2c9280835c49ebf3015c49ec8b2c0000	0	confluence.user.runtime.recent-changes.size	2	f	0	\N		0	40	\N
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
393217	admin	1495888858220	dd3bb9952a88abc706c43a3473078a739f80491e
\.


--
-- Data for Name: scheduler_clustered_jobs; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY scheduler_clustered_jobs (id, job_id, next_run_time, version, job_runner_key, raw_parameters, sched_type, cron_expression, cron_time_zone, interval_first_run_time, interval_millis) FROM stdin;
65537	analytics-collection	2017-05-27 23:00:00	1	com.atlassian.plugins.authentication.impl.analytics.StatisticsCollectionService	\N	C	0 0 23 * * ?	\N	\N	0
65538	assertionId-cleanup	2017-05-27 13:40:36.529	1	com.atlassian.plugins.authentication.impl.web.saml.AssertionValidationService	\N	I	\N	\N	2017-05-27 13:40:36.529	3600000
65539	CompatibilityPluginScheduler.JobId.Service Provider Session Remover	2017-05-27 20:41:13.625	1	CompatibilityPluginScheduler.JobRunnerKey.Service Provider Session Remover	\N	I	\N	\N	2017-05-27 20:41:13.625	28800000
65543	PluginUpdateCheckJob-job	2017-05-28 01:29:36.056	1	PluginUpdateCheckJob-runner	\N	I	\N	\N	2017-05-28 01:29:36.056	86400000
65544	InstanceTopologyJob-job	2017-05-27 14:55:07.631	1	InstanceTopologyJob-runner	\N	I	\N	\N	2017-05-27 14:55:07.631	86400000
65541	LocalPluginLicenseNotificationJob-job	2017-05-28 12:41:14.997	2	LocalPluginLicenseNotificationJob-runner	\N	I	\N	\N	2017-05-27 12:41:13.69	86400000
65542	PluginRequestCheckJob-job	2017-05-27 13:41:15.216	2	PluginRequestCheckJob-runner	\N	I	\N	\N	2017-05-27 12:41:13.702	3600000
65545	AuditLogCleaner	2017-05-28 00:00:45	1	AuditLogCleaner	\N	C	45 0 0 * * ?	GMT	\N	0
65546	ClearExpiredRememberMeTokensJob	2017-06-20 00:00:00	1	ClearExpiredRememberMeTokensJob	\N	C	0 0 0 20 * ?	GMT	\N	0
65547	JournalCleaner	2017-05-28 02:00:00	1	JournalCleaner	\N	C	0 0 2 * * ?	GMT	\N	0
65548	clearOldMailErrorsJob	2017-05-28 03:00:00	1	clearOldMailErrorsJob	\N	C	0 0 3 * * ?	GMT	\N	0
65549	BackupJob	2017-05-28 02:00:00	1	BackupJob	\N	C	0 0 2 * * ?	GMT	\N	0
65550	DailyReportJob	2017-05-28 00:00:00	1	DailyReportJob	\N	C	0 0 0 * * ?	GMT	\N	0
65551	ESIndexJournalVerifierJob	2017-05-27 12:43:15.584	2	ESIndexJournalVerifierJob	\N	I	\N	\N	\N	120000
65554	batchingJobConfig	2017-05-27 12:50:00	1	com.atlassian.confluence.plugins.confluence-notifications-batch-plugin:batchingJob	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c02000078700000000174004b636f6d2e61746c61737369616e2e636f6e666c75656e63652e7363686564756c652e54656e616e7441776172654a6f6252657363686564756c65723a69732d747a2d73656e7369746976657571007e000400000001737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787001	C	0 0/10 * 1/1 * ? *	GMT	\N	0
65556	periodicEventPublisherJob	2017-05-28 02:15:00	1	com.atlassian.confluence.plugins.analytics-jobs-plugin:periodicEventPublisherJob	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c02000078700000000174004b636f6d2e61746c61737369616e2e636f6e666c75656e63652e7363686564756c652e54656e616e7441776172654a6f6252657363686564756c65723a69732d747a2d73656e7369746976657571007e000400000001737200116a6176612e6c616e672e426f6f6c65616ecd207280d59cfaee0200015a000576616c7565787001	C	0 15 2 1/1 * ? *	GMT	\N	0
65555	synchronyStatusCheck	2017-05-27 12:42:16.237	3	com.atlassian.confluence.plugins.synchrony-interop:synchronyStatusCheckJob	\N	I	\N	\N	\N	30000
\.


--
-- Data for Name: scheduler_run_details; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY scheduler_run_details (id, job_id, start_time, duration, outcome, message) FROM stdin;
458753	BundledUpdateCheckJob-job	2017-05-27 12:41:14.989	234	S
458754	LocalTaskQueueFlushJob	2017-05-27 12:41:15.263	16	S	Executed tasks for queue com.atlassian.core.task.DefaultTaskQueue@6c6159c
458755	EhCacheCompactionJob	2017-05-27 12:41:15.289	18	S
458756	TaskQueueFlushJob	2017-05-27 12:41:15.316	38	S	Executed tasks for queue com.atlassian.confluence.cluster.ClusteredTaskQueue@2160fa4e
458757	PluginRequestCheckJob-job	2017-05-27 12:41:15.216	143	S
458758	LaasPerformanceLoggingJob	2017-05-27 12:41:15.39	4	A	LaaS performance logging is turned off
458759	LocalPluginLicenseNotificationJob-job	2017-05-27 12:41:14.997	487	S
458760	MailQueueFlushJob	2017-05-27 12:41:15.479	15	S	Executed tasks for queue com.atlassian.core.task.ErrorQueuedTaskQueue@3c0a298b
458761	ClusterSafetyJob	2017-05-27 12:41:15.42	87	S
458762	DeferredFileDeletionJob	2017-05-27 12:41:15.513	5	S
458763	ESIndexJournalVerifierJob	2017-05-27 12:41:15.584	28	A	Dark feature es.indexing disabled
458764	flushEdgeIndexQueue	2017-05-27 12:41:15.655	21	S
458765	ReferralQueueFlushJob	2017-05-27 12:41:16.16	3	S	Executed tasks for queue com.atlassian.confluence.links.ReferralTaskQueue@29744bd9
458766	flushEdgeIndexQueue	2017-05-27 12:41:16.213	4	S
458767	synchronyStatusCheck	2017-05-27 12:41:16.236	19	S
458768	LuceneIndexFlusher	2017-05-27 12:41:14.988	2154	S	Flush done
458769	conversionLoader	2017-05-27 12:41:16.269	1682	S
458770	DefaultPluginScheduler:com.atlassian.analytics.client.upload.RemoteFilterRead:job	2017-05-27 12:41:23.668	3624	S
458771	conversionQueueMonitor	2017-05-27 12:41:30	5	S
458772	conversionQueueMonitor	2017-05-27 12:41:45	7	S
458773	ClusterSafetyJob	2017-05-27 12:41:45.423	16	S
458774	flushEdgeIndexQueue	2017-05-27 12:41:46.214	7	S
458775	synchronyStatusCheck	2017-05-27 12:41:46.237	17	S
\.


--
-- Name: seq_journal_entry_id; Type: SEQUENCE SET; Schema: public; Owner: confluence
--

SELECT pg_catalog.setval('seq_journal_entry_id', 4, true);


--
-- Data for Name: spacepermissions; Type: TABLE DATA; Schema: public; Owner: confluence
--

COPY spacepermissions (permid, spaceid, permtype, permgroupname, permusername, permalluserssubject, creator, creationdate, lastmodifier, lastmoddate) FROM stdin;
229377	\N	USECONFLUENCE	confluence-administrators	\N	\N	\N	2017-05-27 12:40:57.718	\N	2017-05-27 12:40:57.718
229378	\N	PERSONALSPACE	confluence-users	\N	\N	\N	2017-05-27 12:40:57.747	\N	2017-05-27 12:40:57.747
229379	\N	ADMINISTRATECONFLUENCE	confluence-administrators	\N	\N	\N	2017-05-27 12:40:57.747	\N	2017-05-27 12:40:57.747
229380	\N	USECONFLUENCE	confluence-users	\N	\N	\N	2017-05-27 12:40:57.748	\N	2017-05-27 12:40:57.748
229381	\N	SYSTEMADMINISTRATOR	confluence-administrators	\N	\N	\N	2017-05-27 12:40:57.749	\N	2017-05-27 12:40:57.749
229382	\N	PERSONALSPACE	confluence-administrators	\N	\N	\N	2017-05-27 12:40:57.749	\N	2017-05-27 12:40:57.749
229383	\N	CREATESPACE	confluence-users	\N	\N	\N	2017-05-27 12:40:57.75	\N	2017-05-27 12:40:57.75
229384	\N	CREATESPACE	confluence-administrators	\N	\N	\N	2017-05-27 12:40:57.751	\N	2017-05-27 12:40:57.751
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
2c9280835c49ebf3015c49ec8b2c0000	admin	admin
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
