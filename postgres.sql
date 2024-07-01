--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.12 (Ubuntu 14.12-0ubuntu0.22.04.1)

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
-- Name: activity_enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.activity_enum AS ENUM (
    'Regular',
    'Activity',
    'Betting'
);


ALTER TYPE public.activity_enum OWNER TO postgres;

--
-- Name: activity_typ; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.activity_typ AS ENUM (
    'Image',
    'Video'
);


ALTER TYPE public.activity_typ OWNER TO postgres;

--
-- Name: betting_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.betting_type AS ENUM (
    'All',
    'Friends',
    'Custom',
    'all'
);


ALTER TYPE public.betting_type OWNER TO postgres;

--
-- Name: boolean; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."boolean" AS ENUM (
    'Male',
    'Female',
    'other'
);


ALTER TYPE public."boolean" OWNER TO postgres;

--
-- Name: comment_react_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.comment_react_type AS ENUM (
    'like',
    'sad',
    'happy',
    'angry',
    'love'
);


ALTER TYPE public.comment_react_type OWNER TO postgres;

--
-- Name: comment_typ; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.comment_typ AS ENUM (
    'Male',
    'Female'
);


ALTER TYPE public.comment_typ OWNER TO postgres;

--
-- Name: devices_statu; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.devices_statu AS ENUM (
    'ACTIVE',
    'INACTIVE',
    'BLOCKED'
);


ALTER TYPE public.devices_statu OWNER TO postgres;

--
-- Name: devices_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.devices_status AS ENUM (
    'ACTIVE',
    'INACTIVE',
    'BLOCKED'
);


ALTER TYPE public.devices_status OWNER TO postgres;

--
-- Name: devices_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.devices_type AS ENUM (
    'Mobile',
    'Desktop'
);


ALTER TYPE public.devices_type OWNER TO postgres;

--
-- Name: event_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.event_type AS ENUM (
    'new_friend_request',
    'new_folower',
    'general',
    'new_betting_post'
);


ALTER TYPE public.event_type OWNER TO postgres;

--
-- Name: gender; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.gender AS ENUM (
    'Male',
    'Female',
    'Other',
    'Others'
);


ALTER TYPE public.gender OWNER TO postgres;

--
-- Name: gender_typ; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.gender_typ AS ENUM (
    'Male',
    'Female',
    'other'
);


ALTER TYPE public.gender_typ OWNER TO postgres;

--
-- Name: gender_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.gender_type AS ENUM (
    'Male',
    'Female',
    'Others'
);


ALTER TYPE public.gender_type OWNER TO postgres;

--
-- Name: genders; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.genders AS ENUM (
    'MALE',
    'FEMALE',
    'OTHERS'
);


ALTER TYPE public.genders OWNER TO postgres;

--
-- Name: group_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.group_type AS ENUM (
    'admin',
    'user'
);


ALTER TYPE public.group_type OWNER TO postgres;

--
-- Name: group_visibility; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.group_visibility AS ENUM (
    'all',
    'friends',
    'custom',
    'group_members'
);


ALTER TYPE public.group_visibility OWNER TO postgres;

--
-- Name: media_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.media_type AS ENUM (
    'png',
    'jpg',
    'jpeg',
    'gif',
    'mp4'
);


ALTER TYPE public.media_type OWNER TO postgres;

--
-- Name: membership_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.membership_type AS ENUM (
    'cms',
    'normal',
    'general',
    'admin'
);


ALTER TYPE public.membership_type OWNER TO postgres;

--
-- Name: notification_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.notification_type AS ENUM (
    'friend',
    'group',
    'general',
    'post',
    'profile'
);


ALTER TYPE public.notification_type OWNER TO postgres;

--
-- Name: post_react_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.post_react_type AS ENUM (
    'like',
    'sad',
    'happy',
    'angry',
    'love'
);


ALTER TYPE public.post_react_type OWNER TO postgres;

--
-- Name: post_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.post_type AS ENUM (
    'regular',
    'sports_activity',
    'betting',
    'repost',
    'activity',
    'result',
    'watch_activity',
    'betting_result',
    'record_activity'
);


ALTER TYPE public.post_type OWNER TO postgres;

--
-- Name: status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.status AS ENUM (
    'Single',
    'married',
    'Widowed',
    'Divorced'
);


ALTER TYPE public.status OWNER TO postgres;

--
-- Name: status_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.status_type AS ENUM (
    'active',
    'inactive',
    'invited',
    'accept',
    'accepted'
);


ALTER TYPE public.status_type OWNER TO postgres;

--
-- Name: upload_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.upload_type AS ENUM (
    'gallery',
    'profile_image'
);


ALTER TYPE public.upload_type OWNER TO postgres;

--
-- Name: user_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.user_type AS ENUM (
    'Individual',
    'Influencer',
    'Expert'
);


ALTER TYPE public.user_type OWNER TO postgres;

--
-- Name: users_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.users_type AS ENUM (
    'Individual',
    'Influencer',
    'Expert'
);


ALTER TYPE public.users_type OWNER TO postgres;

--
-- Name: visibility; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.visibility AS ENUM (
    'All',
    'Friends',
    'Custom',
    'Group'
);


ALTER TYPE public.visibility OWNER TO postgres;

--
-- Name: visibility_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.visibility_status AS ENUM (
    'all',
    'friends',
    'private',
    'custome',
    'group'
);


ALTER TYPE public.visibility_status OWNER TO postgres;

--
-- Name: visibility_type; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.visibility_type AS ENUM (
    'all',
    'friends',
    'custom',
    'group',
    'private',
    'followers',
    'admin'
);


ALTER TYPE public.visibility_type OWNER TO postgres;

--
-- Name: visibility_types; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.visibility_types AS ENUM (
    'All',
    'Friends',
    'Custom',
    'Group'
);


ALTER TYPE public.visibility_types OWNER TO postgres;

--
-- Name: visibilitys; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.visibilitys AS ENUM (
    'All',
    'Friends',
    'Custom',
    'Group',
    'group'
);


ALTER TYPE public.visibilitys OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actions (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255),
    description character varying(255),
    dependency json,
    "group" character varying(255),
    sorting_position integer
);


ALTER TABLE public.actions OWNER TO postgres;

--
-- Name: activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.activity (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    summaryid character varying(255),
    activityname character varying(255),
    activitytype character varying(255),
    activityid character varying(255),
    summary json,
    location_data json,
    laps json,
    source character varying,
    description text,
    user_id uuid
);


ALTER TABLE public.activity OWNER TO postgres;

--
-- Name: admin_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_post (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    is_priority boolean,
    reviewer_status boolean,
    reviewer_approved_at timestamp with time zone,
    post_id uuid NOT NULL,
    reviewer_id uuid,
    publisher_status boolean,
    publisher_approved_at timestamp with time zone,
    publisher_id uuid,
    expiry_date date,
    s_id real,
    promotion character varying(50)
);


ALTER TABLE public.admin_post OWNER TO postgres;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: betting_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.betting_post (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    primary_team character varying(255) NOT NULL,
    secondary_team character varying(255) NOT NULL,
    betting_for character varying(255),
    oods character varying(255),
    results character varying(255),
    user_id uuid,
    post_id uuid,
    expire_on timestamp without time zone,
    betting_status character varying(255),
    result_status character varying(255),
    favour_of character varying(255),
    description character varying(255)
);


ALTER TABLE public.betting_post OWNER TO postgres;

--
-- Name: comment_react; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment_react (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    comment_id uuid NOT NULL,
    type public.comment_react_type,
    is_liked boolean
);


ALTER TABLE public.comment_react OWNER TO postgres;

--
-- Name: comment_tagging; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment_tagging (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    post_id uuid NOT NULL,
    user_id uuid NOT NULL
);


ALTER TABLE public.comment_tagging OWNER TO postgres;

--
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    contact_id uuid NOT NULL,
    friend_status character varying(255),
    is_following boolean,
    following_on timestamp with time zone,
    unfollowed_on timestamp with time zone,
    friend_since timestamp with time zone,
    type public.user_type,
    user_id uuid NOT NULL,
    following_status character varying(255),
    block_on timestamp with time zone,
    unblock_on timestamp with time zone
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- Name: contact_me; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_me (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    name character varying(255),
    email character varying(255),
    mobile character varying(255),
    description text,
    from_user_id uuid NOT NULL,
    to_user_id uuid NOT NULL,
    is_submited boolean
);


ALTER TABLE public.contact_me OWNER TO postgres;

--
-- Name: customer_testimonials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_testimonials (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    description text,
    name character varying(255),
    user_id uuid,
    media json
);


ALTER TABLE public.customer_testimonials OWNER TO postgres;

--
-- Name: device; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.device (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    users_id uuid,
    fingerprint character varying(225),
    device_name character varying(100),
    device_type public.devices_type,
    os character varying(20),
    os_version character varying(20),
    browser character varying(250),
    browser_version character varying(20),
    app_type character varying(20),
    app_version character varying(20),
    device_ip character varying(100),
    session_code character varying(50),
    status public.devices_status
);


ALTER TABLE public.device OWNER TO postgres;

--
-- Name: expert; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.expert (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    adrenln_fitness character varying(255) NOT NULL,
    sport_level character varying(255) NOT NULL,
    user_id uuid,
    level character varying(255)
);


ALTER TABLE public.expert OWNER TO postgres;

--
-- Name: experties_background; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.experties_background (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    description text,
    is_offer_programme boolean,
    is_remote_consulting boolean,
    user_id uuid NOT NULL,
    city character varying(255),
    experties_in json
);


ALTER TABLE public.experties_background OWNER TO postgres;

--
-- Name: featured_media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.featured_media (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    title character varying(255),
    media json,
    user_id uuid NOT NULL,
    description text
);


ALTER TABLE public.featured_media OWNER TO postgres;

--
-- Name: fitness_level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fitness_level (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    value character varying(255),
    course_id uuid,
    user_id uuid NOT NULL,
    visibility public.visibility_type,
    seconds character varying(255)
);


ALTER TABLE public.fitness_level OWNER TO postgres;

--
-- Name: garminusers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.garminusers (
    id uuid NOT NULL,
    request_token character varying(255),
    request_token_secret character varying(255),
    access_token character varying(255),
    access_token_secret character varying(255),
    verifier character varying(255),
    user_id character varying(255),
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    garmin_id uuid,
    deregister_at date
);


ALTER TABLE public.garminusers OWNER TO postgres;

--
-- Name: gfitactivity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gfitactivity (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    name character varying(255),
    description character varying(255),
    user_id uuid,
    starttimemillis character varying,
    endtimemillis character varying,
    modifiedtimemillis character varying,
    activity_id character varying(255)
);


ALTER TABLE public.gfitactivity OWNER TO postgres;

--
-- Name: gfitusers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gfitusers (
    id uuid NOT NULL,
    access_token character varying(255),
    auth_code character varying(255),
    user_id uuid,
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    refresh_token character varying(255),
    activity_last_synced timestamp without time zone,
    refresh_token_exp date,
    deregister_at date
);


ALTER TABLE public.gfitusers OWNER TO postgres;

--
-- Name: group_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_members (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    type public.group_type,
    user_id uuid NOT NULL,
    group_id uuid NOT NULL,
    status public.status_type
);


ALTER TABLE public.group_members OWNER TO postgres;

--
-- Name: hall_of_fame; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hall_of_fame (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    user_id uuid NOT NULL,
    visibility public.visibility_type,
    image json,
    level character varying(255)
);


ALTER TABLE public.hall_of_fame OWNER TO postgres;

--
-- Name: health_parameter_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.health_parameter_values (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone DEFAULT now(),
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    healthreport_id uuid,
    healthparameters_id uuid,
    value character varying(255)
);


ALTER TABLE public.health_parameter_values OWNER TO postgres;

--
-- Name: health_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.health_profile (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone DEFAULT now(),
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    user_id uuid,
    name character varying(255),
    gender public.gender,
    date_of_birth date,
    health_parameters json
);


ALTER TABLE public.health_profile OWNER TO postgres;

--
-- Name: health_report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.health_report (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone DEFAULT now(),
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    healthprofile_id uuid,
    report json,
    report_date timestamp with time zone
);


ALTER TABLE public.health_report OWNER TO postgres;

--
-- Name: level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.level (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    level character varying(255)
);


ALTER TABLE public.level OWNER TO postgres;

--
-- Name: master_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.master_activity (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    name character varying(255),
    fields json,
    bucket_key character varying(255),
    logo character varying(255)
);


ALTER TABLE public.master_activity OWNER TO postgres;

--
-- Name: master_betting_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.master_betting_items (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    name character varying(255),
    image json
);


ALTER TABLE public.master_betting_items OWNER TO postgres;

--
-- Name: master_bucket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.master_bucket (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255),
    category_type character varying(255)
);


ALTER TABLE public.master_bucket OWNER TO postgres;

--
-- Name: master_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.master_course (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    name character varying(255),
    field character varying(255),
    level json,
    media json
);


ALTER TABLE public.master_course OWNER TO postgres;

--
-- Name: master_health_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.master_health_parameters (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid,
    name character varying(255),
    user_id uuid,
    unit character varying(255),
    healthprofile_id uuid,
    sorting_position integer,
    good_range_start character varying(100),
    good_range_end character varying(100),
    average_range_start character varying(100),
    average_range_end character varying(100)
);


ALTER TABLE public.master_health_parameters OWNER TO postgres;

--
-- Name: master_programs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.master_programs (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid,
    name character varying(255)
);


ALTER TABLE public.master_programs OWNER TO postgres;

--
-- Name: master_sport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.master_sport (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    name character varying(50),
    logo character varying(255),
    fields json
);


ALTER TABLE public.master_sport OWNER TO postgres;

--
-- Name: media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.media (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    file_size integer,
    source_type public.upload_type,
    user_id uuid,
    source_id uuid,
    path text,
    type character varying(255),
    thumbnail_url text
);


ALTER TABLE public.media OWNER TO postgres;

--
-- Name: membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.membership (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    user_id uuid,
    password character varying(255),
    encrption_type character varying(255),
    password_update_on timestamp with time zone,
    last_login_attempts timestamp with time zone,
    login_attempts integer,
    membership_type public.membership_type,
    membership_status character varying(50),
    phone_verified boolean,
    email_verified boolean,
    password_salt character varying(255),
    role character varying(255),
    last_feed_viewed timestamp with time zone,
    post_visibility public.visibility_type,
    fcm_token text
);


ALTER TABLE public.membership OWNER TO postgres;

--
-- Name: notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone DEFAULT now(),
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    user_id uuid,
    meta_data json,
    type public.notification_type,
    read_status boolean,
    title character varying(255),
    description character varying(255),
    c_user uuid,
    notification_status character varying(20),
    expiry_date timestamp without time zone
);


ALTER TABLE public.notification OWNER TO postgres;

--
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    type public.post_type,
    title character varying(255),
    description text,
    user_id uuid NOT NULL,
    visibility public.visibility_type,
    meta_data json,
    location json,
    group_id uuid,
    is_tag boolean,
    promotion boolean,
    expire_on timestamp without time zone,
    share_link character varying(225),
    status public.status_type DEFAULT 'active'::public.status_type
);


ALTER TABLE public.post OWNER TO postgres;

--
-- Name: post_bucket_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_bucket_mapping (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    post_id uuid NOT NULL,
    key character varying(255),
    type character varying(255),
    category_value character varying(255)
);


ALTER TABLE public.post_bucket_mapping OWNER TO postgres;

--
-- Name: post_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_comment (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    comment text,
    user_id uuid NOT NULL,
    post_id uuid NOT NULL,
    parent_id uuid
);


ALTER TABLE public.post_comment OWNER TO postgres;

--
-- Name: post_custom_visibility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_custom_visibility (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    tag boolean,
    post_id uuid NOT NULL,
    user_id uuid NOT NULL
);


ALTER TABLE public.post_custom_visibility OWNER TO postgres;

--
-- Name: post_react; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_react (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    post_id uuid NOT NULL,
    type public.post_react_type,
    is_liked boolean
);


ALTER TABLE public.post_react OWNER TO postgres;

--
-- Name: profile_section_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile_section_mapping (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    section character varying(255)
);


ALTER TABLE public.profile_section_mapping OWNER TO postgres;

--
-- Name: profile_visibility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile_visibility (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    section character varying(255),
    visibility character varying(255),
    user_id uuid NOT NULL
);


ALTER TABLE public.profile_visibility OWNER TO postgres;

--
-- Name: programme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.programme (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    description text,
    title character varying(255),
    media json,
    user_id uuid NOT NULL,
    master_programs_id uuid,
    city character varying(255),
    category character varying(255),
    is_featured integer
);


ALTER TABLE public.programme OWNER TO postgres;

--
-- Name: reported_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reported_post (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    post_id uuid NOT NULL,
    user_id uuid NOT NULL
);


ALTER TABLE public.reported_post OWNER TO postgres;

--
-- Name: role_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_actions (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    role_key character varying(255),
    action_key character varying(255),
    status character varying(255)
);


ALTER TABLE public.role_actions OWNER TO postgres;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255),
    membership_type public.membership_type
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: selected_programs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.selected_programs (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    programme_id uuid NOT NULL,
    connect boolean
);


ALTER TABLE public.selected_programs OWNER TO postgres;

--
-- Name: sport_bucket_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sport_bucket_mapping (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    sport character varying(255),
    bucket character varying(255)
);


ALTER TABLE public.sport_bucket_mapping OWNER TO postgres;

--
-- Name: sport_level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sport_level (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    sorting_position character varying(255),
    user_id uuid NOT NULL,
    more_info json,
    sport_id uuid,
    is_primary boolean,
    sport_level_visibility public.visibility_type,
    secondary_visibility public.visibility_type,
    primary_deleted_at timestamp with time zone,
    secondary_deleted_at timestamp with time zone,
    playing_level character varying(255)
);


ALTER TABLE public.sport_level OWNER TO postgres;

--
-- Name: terms_conditions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.terms_conditions (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    section character varying(255),
    terms_condition text
);


ALTER TABLE public.terms_conditions OWNER TO postgres;

--
-- Name: user_activity_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_activity_mapping (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    activity_table_id uuid
);


ALTER TABLE public.user_activity_mapping OWNER TO postgres;

--
-- Name: user_bettings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_bettings (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    result_status character varying(255),
    user_id uuid,
    post_id uuid,
    betting_status character varying(255)
);


ALTER TABLE public.user_bettings OWNER TO postgres;

--
-- Name: user_bucket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_bucket (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    bucket_key character varying(255),
    is_primary boolean,
    user_id uuid NOT NULL
);


ALTER TABLE public.user_bucket OWNER TO postgres;

--
-- Name: user_device; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_device (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone DEFAULT now(),
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    user_id uuid,
    device_id uuid,
    session_code character varying(255),
    status public.devices_status
);


ALTER TABLE public.user_device OWNER TO postgres;

--
-- Name: user_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_group (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    group_name character varying(255),
    description text,
    sport_type character varying(255),
    city character varying(255),
    user_id uuid,
    sport_master_id uuid,
    visibility public.group_visibility,
    image json,
    topic character varying(255)
);


ALTER TABLE public.user_group OWNER TO postgres;

--
-- Name: user_post_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_post_status (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    is_priority boolean,
    is_approved boolean,
    approved_at timestamp with time zone,
    post_id uuid NOT NULL,
    approved_by uuid
);


ALTER TABLE public.user_post_status OWNER TO postgres;

--
-- Name: user_topics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_topics (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    user_id uuid,
    topic character varying(255)
);


ALTER TABLE public.user_topics OWNER TO postgres;

--
-- Name: userprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userprofile (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    users_id uuid,
    education_quelification character varying(255),
    college_name character varying(255),
    work_place character varying(255),
    marital_status public.status
);


ALTER TABLE public.userprofile OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    first_name character varying(50),
    middle_name character varying,
    last_name character varying(50),
    nickname character varying(50),
    password character varying(255),
    gender public.gender_type,
    email character varying(255) NOT NULL,
    phone character varying(10),
    phone_code integer,
    date_of_birth timestamp without time zone,
    city character varying(50),
    about_me character varying(255),
    title character varying(255),
    business_account boolean,
    education_qualification character varying(255),
    college_name character varying(255),
    work_place character varying(255),
    marital_status character varying(255),
    can_follows boolean,
    profile_image json,
    new_email character varying,
    new_phone character varying,
    user_deleted_at timestamp with time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: verification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.verification (
    created_at timestamp with time zone DEFAULT now(),
    update_at timestamp with time zone,
    deleted_at timestamp with time zone,
    id uuid NOT NULL,
    payload character varying(255),
    code integer,
    attempts integer,
    type character varying(255)
);


ALTER TABLE public.verification OWNER TO postgres;

--
-- Data for Name: actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actions (created_at, update_at, deleted_at, id, name, key, description, dependency, "group", sorting_position) FROM stdin;
2022-04-21 05:51:16.222731+00	\N	\N	6e56611f-5df4-4b48-8040-926ddbce4436	Send Friend Request	send_friend_request		[]	friend	3
2022-04-21 05:51:43.101365+00	\N	\N	96754153-94c0-4003-91e4-2c936c6d76d3	Friend Request Sent List	get_friend_request_sent		[]	friend	3
2022-04-21 05:55:24.255573+00	\N	\N	ee27d5a9-23b5-4300-8427-15664a39cd93	Friend Request List	get_friend_request_list		[]	friend	3
2022-04-21 05:55:35.651388+00	\N	\N	f102c699-f56a-487f-a302-c476b74263f7	Friend List	get_friend_list		[]	friend	3
2022-04-21 05:55:52.640629+00	\N	\N	5a3c45d7-8a8e-490c-8c5f-ec61b1c1650a	Accept Friend Request	accept_friend_request		[]	friend	3
2022-04-21 05:44:26.247112+00	\N	\N	2ac653fe-60be-4987-aadf-15ac41fbba42	Accept Group Join Request	accept_group_join_request		[]	group	5
2022-04-21 05:58:04.854177+00	\N	\N	f10470b5-2486-4ea0-b086-f67ffe665ed3	Reject Friend Request	reject_friend_request		[]	friend	3
2022-04-21 05:58:37.827313+00	\N	\N	f707446c-cf59-4cfb-804d-19559545251b	Search People	search_people		[]	friend	3
2022-04-21 05:59:03.901847+00	\N	\N	af8d3e97-ad38-493d-8a38-ce1d782bc921	Unfollow	unfollow		[]	friend	3
2022-04-21 05:59:24.824365+00	\N	\N	656962ff-a42f-467e-9069-5966a06ae40e	Following List	following_list		[]	friend	3
2022-04-11 09:05:53.961279+00	\N	\N	0893ff4e-26fd-45af-9c59-20c15fe9f6ec	User Basic Profile	complete_signup		\N	account	1
2022-04-11 08:57:03.428051+00	\N	\N	1c5a5949-ac45-41fe-8007-b1a81a6b1f05	Signup Verification	verify_user_signup		\N	account	1
2022-04-11 08:53:36.135573+00	\N	\N	1f9c90cc-5342-48eb-b934-0d1a4558c799	Device Register	device_register		\N	account	1
2022-04-11 09:00:07.220311+00	\N	\N	43ddb2e3-564b-4cfc-9188-23027410714e	Reset Password Verification	verify_user_reset_password		\N	account	1
2022-04-11 08:58:54.634314+00	\N	\N	6dbf4713-1d99-49a2-9dbf-e8653c8cda6e	Login Verification	verify_user_login		\N	account	1
2022-04-11 09:37:50.256976+00	\N	\N	7c1ada0a-2803-4e27-ae5c-32adf711c0ec	Update User Role	update_user_role		\N	account	1
2022-04-21 05:59:38.170279+00	\N	\N	e2b31e5d-d669-4988-b148-c574097f0dbd	Followers List	followers_list		[]	friend	3
2022-04-11 09:33:36.736861+00	\N	\N	8f067984-1070-41d5-a9f6-33aa47e4ed29	Edit User Basic Detail	edit_user_basic_detail		\N	account	1
2022-04-11 09:24:54.956435+00	\N	\N	d9ff9f32-6a8c-4f02-81d9-3f68d8d161c5	Update User Educational Info	update_educational_info		\N	account	1
2022-04-11 09:02:36.462928+00	\N	\N	df6a65f9-9b27-40d7-9575-9878a32ad195	Signup OTP Verification	signup_otp_verification		\N	account	1
2022-04-11 09:07:48.789271+00	\N	\N	8157b779-0359-439c-a68b-83e7c203aaf0	Update Basic Profile	update_basic_profile		\N	account	1
2022-04-12 19:07:50.485199+00	\N	\N	2fa7c07f-09eb-4735-a70f-3c3415f0da3f	Reset Password	reset_password		[]	account	1
2022-04-12 18:56:33.0797+00	\N	\N	31742818-d830-4c50-8799-0c51fddf0a9c	Get User Basic Details	get_user_basic_detail		[]	account	1
2022-04-12 19:08:51.269481+00	\N	\N	fe8a528e-4730-4271-8a7b-4878dd2feb10	Logout	logout		[]	account	1
2022-04-12 19:44:54.897092+00	\N	\N	e762112d-55a2-4722-b624-f18a253f0616	Create Post	create_post		[]	post	2
2022-04-12 20:19:05.438523+00	\N	\N	4a65421e-df8d-43ea-9b1c-e965cce62d5d	Delete Post	delete_post		[]	post	2
2022-04-14 05:58:20.291616+00	\N	\N	20d83d59-42cc-40f1-b4bb-953084c6320d	Post React	post_react		[]	post	2
2022-04-14 06:36:32.678526+00	\N	\N	d33658bb-832c-407b-96f2-b8b0b9393af9	Post React Count	react_count		[]	post	2
2022-04-14 09:39:04.718386+00	\N	\N	6742aa71-7c81-4522-85d9-983bc3ace8ec	Update Post Visibility	update_visibility		[]	post	2
2022-04-14 11:48:42.644721+00	\N	\N	889e06a6-4d13-435a-a9c3-aba6ccf3715f	Friends Suggestion	friend_suggestion		[]	friend	3
2022-04-18 05:41:53.021651+00	\N	\N	d1880251-6dfa-40e4-bef3-55a24f1720c3	Add Health Profile	add_health_profile		[]	health_parameters	4
2022-04-18 05:42:39.883251+00	\N	\N	48111af5-29fb-4862-8771-6b2d9e5956f6	Update Health Profile	update_health_profile		[]	health_parameters	4
2022-04-18 05:42:50.842324+00	\N	\N	3c7ea8c9-1ff0-46ff-9681-ce82053d7654	Get Health Profile	get_health_profile		[]	health_parameters	4
2022-04-18 05:44:01.797874+00	\N	\N	e1ba9df2-2f32-43ab-bec4-32339cc1f86d	Add Health Report	add_health_report		[]	health_parameters	4
2022-04-18 05:44:20.691037+00	\N	\N	bbf63311-7479-44c3-9c24-4d2bed5ab0a2	Get Health Report	get_health_report		[]	health_parameters	4
2022-04-18 05:45:35.958419+00	\N	\N	a151bb87-8486-4847-8d94-80665d520de8	Add Custom Parameter	add_custom_parameter		[]	health_parameters	4
2022-04-18 05:47:54.857087+00	\N	\N	f2ebc4b4-7720-4c91-bf6f-7512db290092	Get Master Health Parameters	get_master_health_parameters		[]	health_parameters	4
2022-04-19 07:34:24.465772+00	\N	\N	ad94e835-0f09-4396-9155-3470212a7d76	Generate_multiple_health_report	generate_multiple_health_report		[]	health_parameters	4
2022-04-19 08:48:06.981373+00	\N	\N	f5ce40fe-a1df-448e-8ef0-0f9ede928a28	User Basic Profile	complete_signup		[]	account	1
2022-04-20 06:01:23.264442+00	\N	\N	62dd3d06-9717-4dea-885c-1d324c455d3d	Update Health Details	update_health_details		[]	health_parameters	4
2022-04-20 11:22:20.167923+00	\N	\N	09b09e6b-a762-446e-975e-1a5ce4b89fd2	Group Suggestion	group_suggestion		[]	group	5
2022-04-21 05:43:07.470049+00	\N	\N	d9ed88a0-73ea-499c-b374-c1d1559c1489	Create Group	create_group		[]	group	5
2022-04-21 05:43:31.428617+00	\N	\N	07c55c33-5e68-438d-bf02-dd701501f0c8	Join Group	join_group		[]	group	5
2022-04-21 05:44:01.400231+00	\N	\N	9a79d1b8-1421-4cbd-a29b-15c34fb79808	Join Group Request List	get_group_join_request_list		[]	group	5
2022-04-21 05:45:00.456743+00	\N	\N	8461f9e6-56d4-49a0-81a4-63fad81c74b3	Exit Group	exit_group		[]	group	5
2022-04-21 05:45:16.592956+00	\N	\N	8343cfe2-78e2-4060-b57c-8f777a8ef35f	Update Group	update_group		[]	group	5
2022-04-21 05:45:31.438078+00	\N	\N	eca19b94-7d32-447a-ae6a-20dfe18d1b8d	Delete Group	delete_group		[]	group	5
2022-04-21 05:45:52.394895+00	\N	\N	55a5beaa-f945-4be1-bad5-0e3d9fb21c9c	Group List	get_group_list		[]	group	5
2022-04-21 05:47:22.593785+00	\N	\N	b1f34e2b-a095-48d6-8295-2dd5ee5f55c5	Get Single Group 	get_group_byid		[]	group	5
2022-04-21 05:48:25.095507+00	\N	\N	ad8e5425-78c2-41be-92b1-dc089ad98c32	Joined Group List	get_group_joined		[]	group	5
2022-04-21 05:48:46.604686+00	\N	\N	4d1eac63-059b-47a6-adcc-dd84bb10c454	Search Group	search_group		[]	group	5
2022-04-21 05:49:05.593434+00	\N	\N	260c1f6a-4855-4189-95a0-ba0cd4a338ea	Search Group Members	search_group_member		[]	group	5
2022-04-21 06:08:55.855368+00	\N	\N	0b9a001b-40ea-41d8-be8f-03bba6caaccc	Add Comment	add_comment		[]	comment	6
2022-04-21 06:10:39.244447+00	\N	\N	30310718-ce61-473e-8e5f-5a286c423a36	Get Comment List	get_comment_list		[]	comment	6
2022-04-21 06:11:39.160878+00	\N	\N	8eb4be8e-ba03-4ba9-93b7-cde4372a4530	Update Comment	update_comment		[]	comment	6
2022-04-21 06:11:49.864721+00	\N	\N	75c6d7b2-1f72-4df5-88f8-71fa9aaa9216	Delete Comment	delete_comment		[]	comment	6
2022-04-21 11:58:16.016107+00	\N	\N	a878d9b5-c5b7-4621-a3f6-0fac0fcaeb48	Unfriend	unfriend		[]	friend	3
2022-04-22 06:22:45.347599+00	\N	\N	fab36582-b4f1-4664-bc55-86c3f1d02e7c	Group Suggestion	group_suggestion		[]	group	5
2022-04-22 06:28:28.587113+00	\N	\N	1ee17089-c846-4bdb-b150-75f628222157	Group Suggestion	group_suggestion		[]	group	5
2022-04-26 12:35:08.371342+00	\N	\N	28367475-7f35-4dad-960d-1caeeff6a900	Unfriend	unfriend		[]	friend	3
2022-04-27 06:38:58.821645+00	\N	\N	61897793-4c8c-4b06-9a20-a5866d6b277b	Upload Media	upload_media		[]	media	7
2022-04-27 06:40:02.804873+00	\N	\N	04707457-d169-4ffd-9d41-d1665fc91d7f	Delete Media	delete_media		[]	media	7
2022-04-27 06:40:20.100337+00	\N	\N	342cbda6-c063-42f5-8d7f-fe21121e93e6	Update Media	update_media		[]	media	7
2022-04-28 08:45:47.372193+00	\N	\N	5a714a19-73ca-4e18-9421-c755ec8d6936	Hall_of_Fame	add_hall_of_fame		[]	expert	2
2022-04-28 08:46:08.60176+00	\N	\N	bc38dd82-c173-475b-9575-581b9288ad6b	Get_Hall_of_Fame	get_hall_fame		[]	expert	2
2022-04-28 08:46:25.491615+00	\N	\N	2b30267a-99c0-4ff6-a2e4-13bacad073c4	Delete_Hall_of_Fame	delete_hall_fame		[]	expert	2
2022-04-28 08:46:47.302805+00	\N	\N	b17939df-6173-4de6-9b33-5aadff79eb3d	Update_Hall_of_Fame	update_hall_fame		[]	expert	2
2022-04-28 08:47:53.992864+00	\N	\N	ad4f1135-d0ca-4a4c-b4aa-22f38c4d9379	Add_sports	update_hall_fame		[]	expert	2
2022-05-06 07:27:18.012406+00	\N	\N	2d7c304f-356c-4532-a16b-fc81f6711854	Group Suggestion	group_suggestion		[]	group	5
2022-05-06 09:27:03.190757+00	\N	\N	2ff72196-3611-4086-a39e-2c670f9a13f4	Group Suggestion	group_suggestion		[]	group	5
2022-08-10 06:19:40.693495+00	\N	\N	ec3bbe78-b39b-4089-adea-3e7db00efe7b	Get Promotion Posts	get_promotion_posts		[]	post	1
2022-08-10 06:21:01.972412+00	\N	\N	50c0985e-fd24-4bfa-aabc-faeabadb5cd7	Get Promotion Posts	get_promotion_posts	\N	\N	\N	\N
2022-08-10 06:29:31.663294+00	\N	\N	50c0985e-fd24-4bfa-aabc-faeabadb5cd1	get_post_list	get_post_list	\N	\N	post	\N
2022-08-10 06:29:44.926084+00	\N	\N	6a2f0fff-ac5c-49d8-a043-88b0da724240	Get Promotion Posts	get_promotion_posts		[]	post	1
2022-08-10 06:30:15.50769+00	\N	\N	b8749cff-ff2f-46c7-98d8-32aed764a170	Get Promotion Posts	get_promotion_posts		[]	post	10
2022-08-10 06:30:23.62329+00	\N	\N	9eaafc70-0be8-4427-b528-696943577965	Get Promotion Posts	get_promotion_posts		[]	post	72
2022-08-10 06:34:09.104642+00	\N	\N	4dee3659-843e-423c-a0a3-7586985432ca	Reject Friend Request	reject_friend_request		[]	friends	11
2022-08-10 06:34:28.578115+00	\N	\N	488d2fc0-58d8-4598-833c-cb21373c0249	block_list	block_list		[]	friends	12
2022-08-10 08:11:57.065731+00	\N	\N	dcd5bed5-251f-42e4-b266-4b55ee8e5da9	delete_testimonials	delete_testimonials		[]	profile	11
2022-08-10 08:49:27.427657+00	\N	\N	a7655ce6-192e-41c0-a0a9-8861be79ee92	update_comment	update_comment		[]	comment	12
2022-08-10 08:49:50.238163+00	\N	\N	97b2324b-b109-4f0a-b662-d6ae1fa2f220	update_featured_media	update_featured_media		[]	media	13
2022-08-10 08:50:12.126576+00	\N	\N	752aac99-9511-414b-82dc-594b39920de3	get_notification	get_notification		[]	notification	14
2022-08-10 08:50:48.421918+00	\N	\N	87c11625-3bfb-4164-b92a-fa5e4ec1dabe	update_featured_media	update_featured_media		[]	media	14
2022-08-10 08:51:17.157296+00	\N	\N	70becf5c-9121-4ddd-8c55-6f4d7f394e7f	search_expert_details	search_expert_details		[]	profile	15
2022-08-10 08:51:31.836988+00	\N	\N	2d1ecf18-9044-452e-b91e-ec9e3f21be30	get_my_group_list	get_my_group_list		[]	group	15
2022-08-10 08:52:05.034178+00	\N	\N	0172b9cd-b0dc-445b-b679-3f88c89d59d4	group_detail	group_detail		[]	group	16
2022-08-10 08:52:23.882122+00	\N	\N	ed130c9c-5e00-4954-8512-3d8723824c34	create_group	create_group		[]	group	17
2022-08-10 08:52:43.772744+00	\N	\N	1fedc630-2983-4353-b8e4-2593562939b3	get_my_post_list	get_my_post_list		[]	post	18
2022-08-10 08:53:01.350574+00	\N	\N	1a4cce27-e883-480b-b319-6d4de62098a1	programme_verification	programme_verification		[]	profile	19
2022-08-10 08:53:20.403219+00	\N	\N	97662d6f-c0cc-4a67-96eb-ce2147de7575	approved_post_list	approved_post_list		[]	post	20
2022-08-10 08:53:33.219481+00	\N	\N	eb96dc9e-0688-41a4-8759-fd36ba99e460	delete_post	delete_post		[]	post	21
2022-08-10 08:53:59.301236+00	\N	\N	31ffb6c1-3716-4c6a-9515-18748fd8edb2	update_health_details	update_health_details		[]	health_paramteres	22
2022-08-10 08:54:14.980486+00	\N	\N	aa3fe81f-3899-4af5-b8e2-3960d72e9fb0	delete_multiple_media_file	delete_multiple_media_file		[]	media	23
2022-08-10 08:54:39.278267+00	\N	\N	cc08bc62-3b80-4ee8-97a8-a1768286b8a5	friends_group_list	friends_group_list		[]	friend	24
2022-08-10 08:54:57.65365+00	\N	\N	b823296f-c8bb-45ea-8a75-b964fc8b32b6	get_users_friend_list	get_users_friend_list		[]	friend	25
2022-08-10 08:55:15.848964+00	\N	\N	3dd4f17e-a3f4-4429-9d8d-7928840d645e	followers_list	followers_list		[]	friend	26
2022-08-10 08:55:45.856473+00	\N	\N	d768d434-3fca-42fd-a977-76b6f2f1b1b2	get_master_health_parameters	get_master_health_parameters		[]	health_parameter	27
2022-08-10 08:56:03.23201+00	\N	\N	250e137b-2140-4676-9841-d721e022be76	update_basic_profile	update_basic_profile		[]	user	28
2022-08-10 08:56:32.910774+00	\N	\N	1855fc47-5167-4206-b7b5-8fc0956a6ff9	post_react	post_react		[]	post	29
2022-08-10 08:56:52.392048+00	\N	\N	8a96fd95-11fc-4a08-95bf-ff701472f056	get_group_detail	get_group_detail		[]	group	30
2022-08-10 08:57:05.883004+00	\N	\N	cd0b2b0c-eda8-44f1-9c79-5e145a615080	group_create	group_create		[]	group	31
2022-08-10 08:57:23.551768+00	\N	\N	aced4726-be5a-4f29-b1c2-0442c5d640f0	tagged_posts	tagged_posts		[]	post	32
2022-08-10 08:57:41.00017+00	\N	\N	ec2e84c6-37f2-484b-929e-08fe1160cb77	get_friend_request_list	get_friend_request_list		[]	friend	33
2022-08-10 08:58:06.108892+00	\N	\N	a7c2a1bb-86cd-4341-b68d-21d057186bb7	delete_featured_media	delete_featured_media		[]	media	34
2022-08-10 08:58:20.754566+00	\N	\N	ac2458a5-86d2-4299-ae60-36067c23d48e	upload_media	upload_media		[]	media	35
2022-08-10 08:58:49.899924+00	\N	\N	81336733-ad81-4b37-bafa-63f61ace712a	send_friend_request	send_friend_request		[]	friend	35
2022-08-10 08:59:08.527669+00	\N	\N	318eba6c-9943-4a07-af31-d2ab6767d905	delete_experties	delete_experties		[]	profile	36
2022-08-10 08:59:30.532165+00	\N	\N	3402b608-0381-498b-ae52-ea0f25976f11	add_health_report	add_health_report		[]	health_parameter	37
2022-08-10 08:59:50.252157+00	\N	\N	962d1c07-01f1-416f-9de7-b6b1d1f370ce	discard_final_post	discard_final_post		[]	post	38
2022-08-10 09:00:03.871471+00	\N	\N	e9e4d65d-a575-4cc7-93fa-1bfba15d0a79	approved_post_list	approved_post_list		[]	post	39
2022-08-10 09:00:25.685234+00	\N	\N	11f7866c-5cca-4390-a061-92908a4fe7cf	search_master_expertise_list	search_master_expertise_list		[]	profile	40
2022-08-10 09:03:20.916124+00	\N	\N	beb3d129-6bf6-4da8-a738-badec76f9be8	promotions	promotions		[]	post	41
2022-08-10 09:03:38.176308+00	\N	\N	748409fb-1ff4-4a97-b928-4e2c6dea7538	update_terms_conditions	update_terms_conditions		[]	cms	42
2022-08-10 09:04:05.286245+00	\N	\N	e4c21353-6bfd-4798-b68f-c7dcac613537	get_friend_request_sent	get_friend_request_sent		[]	friend	43
2022-08-10 09:04:26.726323+00	\N	\N	072bd0ab-c607-4752-a734-29a81b0b64f9	group_requests_accept	group_requests_accept		[]	group	44
2022-08-10 09:04:57.866142+00	\N	\N	7478b570-0042-4861-919e-38b12e4a4b15	get_master_programs	get_master_programs		[]	profile	45
2022-08-10 09:05:17.36618+00	\N	\N	41b64314-1fdd-46e7-9161-3b4595c9cfed	update_media	update_media		[]	media	46
2022-08-10 09:05:45.6864+00	\N	\N	91fc59f3-ee35-4e0b-93b1-d092f023af93	fitness_level	fitness_level		[]	profile	47
2022-08-10 09:07:18.035932+00	\N	\N	935bef81-6d3d-4b2d-b9fe-a5157c8467ec	email_verification	email_verification		[]	user	48
2022-08-10 09:07:35.186054+00	\N	\N	cf87ccb8-f3b3-44ff-834b-3dd792080650	updated_fcm_token	updated_fcm_token		[]	user	49
2022-08-10 09:08:20.015653+00	\N	\N	1a12194f-9c81-4e52-a157-c5ac78e8de7b	friend_suggestion	friend_suggestion		[]	friend	50
2022-08-10 09:08:41.240533+00	\N	\N	a25eebf7-dbfe-4cd6-b53a-afbef6b8117d	group_suggestion	group_suggestion		[]	group	51
2022-08-10 09:09:33.845203+00	\N	\N	acbb0909-2a47-42c9-9ccd-709ee306ad09	disable_user	disable_user		[]	cms	52
2022-08-10 09:09:49.555202+00	\N	\N	1b113140-68f7-4ca8-ac12-11814417dc24	active_user_list	active_user_list		[]	cms	53
2022-08-10 09:10:03.954967+00	\N	\N	d1239ec9-5c76-4bb2-b5bd-36a81a2e92c4	inactive_user_list	inactive_user_list		[]	cms	54
2022-08-10 09:10:18.585023+00	\N	\N	dff6f765-701e-42ad-bb40-40b79523605b	create_post	create_post		[]	cms	55
2022-08-10 09:10:34.965026+00	\N	\N	278de07d-6a2f-422c-8873-e6a3476d5835	post_detail	post_detail		[]	cms	56
2022-08-10 09:10:52.884984+00	\N	\N	440422f9-1b75-4c0e-947f-e3318bec0c2c	post_list	post_list		[]	cms	57
2022-08-10 09:11:06.525051+00	\N	\N	cdcfafc9-34d4-4747-bee9-2573cc3643ea	approve_post	approve_post		[]	cms	58
2022-08-10 09:11:20.71498+00	\N	\N	8b47330a-ee9d-4894-bfdc-8808675eff63	publisher_approve_post	publisher_approve_post		[]	cms	59
2022-08-10 09:11:35.686952+00	\N	\N	e337dddf-180d-4544-97ce-8d314f3dcc50	approved_post_list	approved_post_list		[]	cms	60
2022-08-10 09:12:06.684851+00	\N	\N	0141c283-7db8-46e5-b002-9a389d6e4608	bucket_post_list	bucket_post_list		[]	cms	61
2022-08-10 09:12:26.624744+00	\N	\N	8bf1550c-c211-4675-a7c9-e4facb256600	search_post_by_date	search_post_by_date		[]	cms	62
2022-08-10 09:14:01.314293+00	\N	\N	4998525c-d703-4ebf-afb2-d5c854ebbe4d	promotion_post	promotion_post		[]	cms	63
2022-08-10 09:15:26.504595+00	\N	\N	14f7f3d3-508a-484c-bb17-88c1b7030721	final_posts	final_posts		[]	cms	64
2022-08-10 09:15:57.333964+00	\N	\N	5cdbb773-384d-4edf-bcd2-c28ab57caeb8	discard_final_post	discard_final_post		[]	cms	65
2022-08-10 09:16:21.553684+00	\N	\N	6cdca6fb-dbbf-46a3-a77f-9eeaf4842b1d	update_post	update_post		[]	cms	66
2022-08-10 09:16:30.314131+00	\N	\N	6cbdbaac-c017-4e92-b8ee-522d61735564	update_post	update_post		[]	cms	66
2022-08-10 09:17:52.723811+00	\N	\N	04c587a2-4fd4-483b-aa8b-84b092ba9096	unpublish_post	unpublish_post		[]	cms	67
2022-08-10 09:18:26.263828+00	\N	\N	3ad544c4-1bc6-4ceb-9a1c-84f84938cb84	inactive_status	inactive_status		[]	cms	68
2022-08-10 09:45:36.066937+00	\N	\N	ce16976f-d2cf-46a8-bd09-ba34e250ec1e	get_comment_list	get_comment_list		[]	comment	69
2022-08-10 09:45:53.969105+00	\N	\N	b69a6eae-84c3-400e-97cd-c440f719b423	add_comment_react	add_comment_react		[]	comment	70
2022-08-10 09:46:08.372792+00	\N	\N	2981e9db-1ac8-47af-b4d4-32c0bafc6e69	update_comment	update_comment		[]	comment	71
2022-08-10 09:46:30.091376+00	\N	\N	acc066f2-dfd3-4813-9f25-a6f29d69f350	delete_comment	delete_comment		[]	comment	72
2022-08-10 09:47:07.746768+00	\N	\N	9f07badf-43e2-4620-96c5-3b4394dda17c	send_friend_request	send_friend_request		[]	friend	73
2022-08-10 09:47:22.058157+00	\N	\N	1939cdfc-2be2-4303-9edd-7530616f30e5	unsend_friend_request	unsend_friend_request		[]	friend	74
2022-08-10 09:47:35.88994+00	\N	\N	d5a197fc-6f0d-47cd-861d-76d5f4a436ff	get_friend_request_list	get_friend_request_list		[]	friend	75
2022-08-10 09:47:53.624853+00	\N	\N	aeaae30e-afc0-42e6-9ca2-34fe96e1fbac	get_friend_list	get_friend_list		[]	friend	76
2022-08-10 09:49:13.182283+00	\N	\N	1bb4fa3e-3cb3-4ba4-9d32-203aff10840a	reject_friend_request	reject_friend_request		[]	friend	77
2022-08-10 09:49:31.731474+00	\N	\N	b0e39451-f475-4001-9d06-ecba0b2c3484	search_people	search_people		[]	friend	78
2022-08-10 09:49:45.350986+00	\N	\N	ca0d0adc-5e5b-44a9-a25c-921e8505a9c5	unfriend	unfriend		[]	friend	79
2022-08-10 09:50:03.502713+00	\N	\N	d4f39309-dd7d-48bc-91d7-12e0d060d813	unfollow	unfollow		[]	friend	80
2022-08-10 09:50:31.603935+00	\N	\N	d6b0fb29-3b05-45d8-9ad6-1e3c4ff5b2b4	follow	follow		[]	friend	81
2022-08-10 09:51:02.428501+00	\N	\N	a6b7502c-afb3-4a8c-8e89-fa63df0df9a2	blocked	blocked		[]	friend	82
2022-08-10 09:51:22.769615+00	\N	\N	9f6865be-047c-46c1-bf8e-7b65894bf323	unblocked	unblocked		[]	friend	83
2022-08-10 09:52:03.416619+00	\N	\N	240a2b6f-fa8c-4e72-a7db-fb3d6cc7422e	block_list	block_list		[]	friend	84
2022-08-10 09:52:19.518822+00	\N	\N	49c1ab65-72d0-40c7-93b5-7b600683e2b1	following_list	following_list		[]	friend	85
2022-08-10 09:52:36.344903+00	\N	\N	8dff6fe9-3ff7-49cc-aadb-9db1ca2e110c	followers_list	followers_list		[]	friend	86
2022-08-10 09:53:44.479544+00	\N	\N	a867dcaf-a91d-4813-a8c6-2f9da0cd925e	group_create	group_create		[]	group	87
2022-08-10 09:55:27.290479+00	\N	\N	3334e219-ee7a-4f41-a472-3042de9043f6	group_join	group_join		[]	group	88
2022-08-10 09:56:32.202431+00	\N	\N	e29dc8b0-0ec8-4f05-8c5b-68b75587187c	get_requests_list	get_requests_list		[]	group	89
2022-08-10 09:56:55.231198+00	\N	\N	30a267bc-70f1-4197-a8f6-000c257f055a	group_requests_accept	group_requests_accept		[]	group	90
2022-08-10 09:57:11.499299+00	\N	\N	7c512fcb-c933-4942-a0df-63a6b04eecdf	group_exit	group_exit		[]	group	91
2022-08-10 09:58:33.731382+00	\N	\N	bcc8a7a2-2b9c-4ecc-8961-78854728bdf3	group_member_remove	group_member_remove		[]	group	92
2022-08-10 09:59:07.188037+00	\N	\N	78789102-c349-467a-a79d-a9d69bb87224	search_group_member	search_group_member		[]	group	93
2022-08-10 09:59:33.773396+00	\N	\N	42aee664-3690-4b74-ae5c-afc05e83eee6	change_admin_as_member	change_admin_as_member		[]	group	94
2022-08-10 10:00:01.139613+00	\N	\N	09633810-484a-4e69-99c7-69eb9d55ad87	group_requests_reject	group_requests_reject		[]	group	95
2022-08-10 10:00:22.559491+00	\N	\N	36ae6f34-6bec-4087-bb6c-d245be831a72	accept_group_invitation	accept_group_invitation		[]	group	96
2022-08-10 10:00:38.090875+00	\N	\N	d0f7952e-3872-4d9e-8d0d-4dfaf5fda019	get_my_group_list	get_my_group_list		[]	group	97
2022-08-19 12:45:17.944627+00	\N	\N	0141c283-7db8-46e5-b002-9a389d6e4607	group_requests_reject\n\n	group_requests_reject\n\n	\N	[]	group	87
2022-08-19 12:46:30.221778+00	\N	\N	0172b9cd-b0dc-445b-b679-3f88c89d59d9	accept_group_invitation	accept_group_invitation	\N	[]	group	88
\.


--
-- Data for Name: activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.activity (created_at, update_at, deleted_at, id, summaryid, activityname, activitytype, activityid, summary, location_data, laps, source, description, user_id) FROM stdin;
\.


--
-- Data for Name: admin_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_post (created_at, update_at, deleted_at, id, is_priority, reviewer_status, reviewer_approved_at, post_id, reviewer_id, publisher_status, publisher_approved_at, publisher_id, expiry_date, s_id, promotion) FROM stdin;
2024-03-07 06:23:09.834085+00	2024-03-07 10:10:38.412683+00	\N	34e88c06-cdda-48bb-a32c-6ede961476f1	t	t	2024-03-07 06:23:11.862653+00	75ee1096-8cee-429c-adba-d6f19d67c01e	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-03-07 10:10:40.675305+00	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	\N	2	\N
2024-03-07 06:26:15.005911+00	2024-03-07 10:22:33.683425+00	\N	22fe3327-d0e4-43cf-aa2c-2653c5c2ddef	f	t	2024-03-07 06:26:17.041318+00	5325e458-481e-4656-8da4-c508b5941644	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-03-07 10:12:01.978611+00	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	\N	1.5	promotion_post
2024-03-11 11:57:40.832355+00	2024-03-11 12:06:19.377584+00	\N	442d6b61-3636-467d-a576-e704fb0eba94	f	t	2024-03-11 11:57:42.904748+00	50576606-7ed1-4084-93cd-277b3e0fed97	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-03-11 12:06:21.646245+00	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	\N	3	\N
2024-03-11 12:01:06.659617+00	2024-03-11 12:07:24.358229+00	\N	6304e145-d0f9-4d83-b5f1-45a09ff6a993	t	t	2024-03-11 12:01:08.729769+00	4844cb1e-5666-4906-91d5-69291e3479e1	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-03-11 12:07:23.731191+00	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	\N	4	\N
2024-05-09 06:10:31.76006+00	2024-05-09 06:31:19.93881+00	\N	7ff9dbb8-61ed-44b0-abfa-b77306e821dc	f	t	2024-05-09 06:10:31.781394+00	8cb225c6-4462-452f-9196-a148e21a75ff	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-05-09 06:21:16.433046+00	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	2024-05-11	0.7	\N
2024-03-11 11:59:45.844168+00	2024-05-09 06:39:13.580819+00	2024-05-09 06:39:13.59044+00	e086e099-0abf-4f36-afd8-ef7f38fddf9e	f	t	2024-03-11 11:59:47.921604+00	28338db4-032f-4789-ad82-40df1257d065	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-03-11 12:08:04.389914+00	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	2024-03-17	1.1	\N
2024-05-09 06:11:14.491145+00	2024-05-09 06:41:47.447143+00	\N	e69b6d32-55f4-49d4-a9fa-0b9158762c5a	f	t	2024-05-09 06:11:14.514078+00	d25abaf4-6687-414e-9fa4-f8a1c3a3b792	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-05-09 06:40:59.469546+00	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	2024-05-14	1.2	promotion_post
2024-05-10 11:50:40.455219+00	2024-05-10 11:50:40.494315+00	\N	66745d4f-36e3-4bf6-9771-50590e8555ec	f	f	2024-05-10 11:50:40.470703+00	d00086d7-e812-44cc-bb65-1300c52b7f01	264af9bd-7704-46eb-8970-e80ebb0ba43a	\N	\N	\N	\N	\N	\N
2024-03-07 06:21:26.030177+00	2024-05-10 11:58:43.686052+00	2024-05-10 11:58:43.690552+00	a3b63a49-8437-487a-a7b8-0af9417f051e	f	t	2024-03-07 06:21:28.057309+00	df93fa14-c384-4daa-ab13-f607b802be02	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-03-07 10:10:06.580402+00	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	2024-03-10	1	\N
2024-05-10 11:50:26.14294+00	2024-05-16 10:55:01.507691+00	\N	aa47a5d8-0f54-4eb6-b9dc-5331926b536a	f	t	2024-05-10 11:50:26.154345+00	31071ac2-4e51-4b97-bb45-bd7aa56eb677	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-05-10 11:53:37.336095+00	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	2024-05-13	1.4	\N
2024-05-10 11:51:24.696095+00	2024-05-16 11:51:45.735988+00	\N	6097824a-b43e-4b2b-95a6-587d03d1403c	t	t	2024-05-10 11:51:24.710472+00	8dd47792-2c21-4d27-b635-2dfa312d7596	264af9bd-7704-46eb-8970-e80ebb0ba43a	f	\N	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	\N	\N
2024-05-16 11:53:50.553592+00	2024-06-14 11:29:12.285689+00	\N	75780d88-9cbe-45e3-883a-497f07e5beb9	f	t	2024-05-16 11:53:50.57309+00	3392c4e0-b595-4746-9520-cbc931ed36f6	264af9bd-7704-46eb-8970-e80ebb0ba43a	t	2024-06-14 11:29:12.304854+00	9febfa40-04ea-4915-b2f9-c0cf97b047a6	2024-05-08	5	\N
2024-06-14 11:31:24.586933+00	2024-06-14 11:31:24.638593+00	\N	890dd79f-aabd-4e3a-b320-b4c020f2b20e	f	t	2024-06-14 11:31:24.606921+00	5b7bc5e9-f30b-40bf-b50d-b2f1e42bb0a5	264af9bd-7704-46eb-8970-e80ebb0ba43a	\N	\N	\N	\N	\N	\N
2024-06-14 11:32:14.441265+00	2024-06-14 11:32:14.521802+00	\N	78dcf872-dfab-410f-873e-9de750079a32	f	t	2024-06-14 11:32:14.472185+00	8f5ef5c9-7f65-4d9f-815d-56d102464cd2	264af9bd-7704-46eb-8970-e80ebb0ba43a	\N	\N	\N	2024-06-16	\N	promotion_post
2024-06-14 11:33:50.640158+00	2024-06-14 11:33:50.701997+00	\N	3b0ddda8-3c93-4339-b588-7bc5ec8798e1	f	f	2024-06-14 11:33:50.658824+00	10b7125e-2ac8-4e94-b7b0-17d190336224	264af9bd-7704-46eb-8970-e80ebb0ba43a	\N	\N	\N	\N	\N	promotion_post
\.


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
9c722ff060a2
\.


--
-- Data for Name: betting_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.betting_post (created_at, update_at, deleted_at, id, primary_team, secondary_team, betting_for, oods, results, user_id, post_id, expire_on, betting_status, result_status, favour_of, description) FROM stdin;
2024-03-06 08:58:23.037696+00	\N	\N	e4764388-2613-4292-bbbe-80c4b913671e	india	qatar	\N	\N	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	fb3e314e-540f-4fd9-8ffa-68dccb36ba7e	\N	\N	\N	\N	\N
2024-05-16 10:49:52.380892+00	\N	\N	0d6f98df-6754-438f-b7fe-049ba00f91d5	RCB	CSK	\N	\N	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	1a3a842d-da04-4165-b692-5182269f3761	2024-05-18 07:30:00	\N	\N	\N	\N
2024-05-16 12:10:57.248802+00	\N	\N	20cc06c5-4803-4cfe-a8c2-b56bf015181a	rcb	csk	\N	\N	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	e6278930-898c-4ba8-a343-a9a41374337a	2024-05-18 17:38:00	\N	\N	\N	\N
2024-06-05 12:38:02.246104+00	\N	\N	03c01130-6528-47d8-8eea-0a4a2e3ce513	mi	kkr	\N	\N	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	473be009-bc91-4f11-979d-06896b1182b3	2024-06-07 18:05:00	\N	\N	\N	\N
2024-06-08 07:32:25.738197+00	2024-06-08 07:37:32.649289+00	\N	53143776-5322-483f-91ae-f3cd1d1763a0	blue	yellow	\N	\N	blue	f039da77-98d1-4ef2-bb2a-72faaec7c494	1e6f2bbc-0041-4a73-b49f-345378421f77	2024-06-08 13:06:00	\N	\N	\N	\N
2024-06-11 13:00:06.605136+00	\N	\N	07f83364-4f20-446d-bbd4-0a66d34d1c15	USA	IND	\N	\N	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	0b16c806-8055-4bd7-a0d6-e4000f99e1b0	2024-06-12 23:00:00	\N	\N	\N	\N
2024-06-14 08:43:43.719602+00	\N	\N	78cb6d41-429b-4d32-b453-89a8cbd45cac	A	B	\N	\N	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	9e0a5ae0-d413-40cb-92a8-231f7cb4a7d0	2024-06-22 14:13:00	\N	\N	\N	\N
\.


--
-- Data for Name: comment_react; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment_react (created_at, update_at, deleted_at, id, user_id, comment_id, type, is_liked) FROM stdin;
\.


--
-- Data for Name: comment_tagging; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment_tagging (created_at, update_at, deleted_at, id, post_id, user_id) FROM stdin;
\.


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact (created_at, update_at, deleted_at, id, contact_id, friend_status, is_following, following_on, unfollowed_on, friend_since, type, user_id, following_status, block_on, unblock_on) FROM stdin;
2024-02-25 19:06:08.342034+00	\N	\N	363c9848-7a7b-49ce-98ed-ce706e79b446	2d564ccf-06b6-4aa0-bafb-d5ba54e04265	\N	t	\N	\N	\N	\N	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	following	\N	\N
2024-02-29 09:53:54.983214+00	2024-02-29 09:55:10.149665+00	\N	1f9e9c1b-12bc-487a-8813-2efe7cf13f05	5854dc2c-7b3e-46b2-aa84-a51e448750be	friends	t	\N	\N	2024-02-29 15:25:10.197972+00	\N	7c28a321-9ae7-4923-94a8-070feb58955d	following	\N	\N
2024-02-29 09:55:11.302152+00	2024-02-29 09:55:13.595433+00	\N	e290b02b-6efb-425e-8150-78617e3ed0e0	7c28a321-9ae7-4923-94a8-070feb58955d	friends	t	2024-02-29 15:25:13.644631+00	\N	2024-02-29 15:25:11.311751+00	Influencer	5854dc2c-7b3e-46b2-aa84-a51e448750be	following	\N	\N
2024-03-06 09:59:31.63358+00	\N	\N	811e67a6-80a9-4681-911d-adb080815dc5	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	\N	t	\N	\N	\N	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	following	\N	\N
2024-04-25 19:20:09.679029+00	\N	\N	2e883723-0717-4769-8620-561e6be27518	7a142b2e-2e56-45c4-82ed-c1e8cd30b4c3	pending	f	\N	\N	\N	Individual	7c28a321-9ae7-4923-94a8-070feb58955d	\N	\N	\N
2024-04-26 04:39:38.122051+00	\N	\N	1975d8d7-0b96-416d-9c1b-669be0cc5cc6	7a142b2e-2e56-45c4-82ed-c1e8cd30b4c3	pending	f	\N	\N	\N	Individual	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N	\N
2024-05-16 10:14:34.106683+00	\N	\N	292c8984-8002-42de-9230-4b479aa6471b	1a6b27ea-7a18-4a8e-8056-db92f7f9fa56	pending	f	\N	\N	\N	Individual	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N	\N
2024-05-16 11:37:42.731133+00	2024-05-16 11:41:07.977187+00	\N	cc8e4587-874e-44c9-9cd2-e8e4bb28c450	f039da77-98d1-4ef2-bb2a-72faaec7c494	friends	f	\N	\N	2024-05-16 11:41:08.001087+00	Individual	cb086201-ede7-42fb-856e-d250a66d40b6	\N	\N	\N
2024-05-16 11:41:08.893612+00	\N	\N	726f0621-ad4f-4917-95fa-e3e9b725dd59	cb086201-ede7-42fb-856e-d250a66d40b6	friends	f	\N	\N	2024-05-16 11:41:08.897679+00	Influencer	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N	\N
2024-05-16 12:55:29.427964+00	\N	\N	00504066-fd75-485a-af0b-9c6312be506a	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	pending	f	\N	\N	\N	Individual	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N	\N
2024-05-16 12:58:07.840749+00	\N	\N	8c71c0ca-7f48-4cfc-820c-cf50be4f33dc	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	pending	f	\N	\N	\N	Individual	cb086201-ede7-42fb-856e-d250a66d40b6	\N	\N	\N
2024-04-29 10:46:53.178895+00	2024-06-05 10:15:58.516832+00	\N	a233c34f-1a3f-48b0-8c03-382495cb6a75	05f59f52-18be-45d4-bf8b-39640b7b2fab	blocked	f	\N	2024-06-05 10:15:58.554219+00	2024-04-29 16:57:01.644632+00	Individual	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	unfollowed	2024-06-05 10:15:58.554239+00	\N
2024-04-29 16:57:02.602951+00	2024-06-05 10:15:58.566998+00	\N	3a633474-e97c-408f-b5ae-37b9807f238f	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	unfriend	f	\N	2024-06-05 10:15:58.570688+00	2024-04-29 16:57:02.61268+00	Influencer	05f59f52-18be-45d4-bf8b-39640b7b2fab	unfollowed	\N	\N
2024-06-05 11:24:19.880203+00	\N	\N	206b38f9-58c5-46de-b15d-d85b9cde316f	05f59f52-18be-45d4-bf8b-39640b7b2fab	pending	f	\N	\N	\N	Individual	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	\N	\N
2024-03-06 08:42:42.197371+00	2024-06-05 12:17:36.032479+00	\N	5758463a-869e-4673-9e4b-0ae1e0845f33	b9117901-96ad-4b87-b47a-2f9aa6575fb6	blocked	f	\N	2024-06-05 12:17:36.049533+00	2024-03-06 08:42:42.786227+00	Individual	f039da77-98d1-4ef2-bb2a-72faaec7c494	unfollowed	2024-06-05 12:17:36.049544+00	\N
2024-03-06 08:40:52.326916+00	2024-06-05 12:17:36.065689+00	\N	2591ff91-3a84-4dc2-8d68-f80a16384c7b	f039da77-98d1-4ef2-bb2a-72faaec7c494	unfriend	f	\N	2024-06-05 12:17:36.064202+00	2024-03-06 08:42:39.103255+00	Individual	b9117901-96ad-4b87-b47a-2f9aa6575fb6	unfollowed	\N	\N
2024-06-05 12:20:53.132822+00	2024-06-05 12:31:11.759271+00	\N	72911d02-6fa4-405b-ab88-40df1567a856	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	friends	t	\N	\N	2024-06-05 12:31:11.780563+00	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	following	\N	\N
2024-06-05 12:31:12.756445+00	\N	\N	359bfe49-12a1-417c-a5c2-508ded6abdb1	f039da77-98d1-4ef2-bb2a-72faaec7c494	friends	f	\N	\N	2024-06-05 12:31:12.757927+00	Individual	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N	\N
2024-06-03 13:54:57.780359+00	2024-06-05 12:31:15.533934+00	\N	d0c5b3fd-a600-41a1-bce3-88ef57279d7c	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	friends	t	\N	\N	2024-06-05 12:31:15.563259+00	\N	93f47453-622d-4f4c-9208-093193669900	following	\N	\N
2024-06-05 12:31:16.479654+00	\N	\N	329ca081-1c0c-44a6-86fe-728de16fabfb	93f47453-622d-4f4c-9208-093193669900	friends	f	\N	\N	2024-06-05 12:31:16.482831+00	Individual	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N	\N
2024-06-06 10:34:59.303125+00	\N	\N	e06faf8f-4380-4e55-8e4f-1cc3c72de154	cb086201-ede7-42fb-856e-d250a66d40b6	pending	f	\N	\N	\N	Individual	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N	\N
2024-04-26 04:39:38.627353+00	2024-06-14 10:45:33.685091+00	\N	ca93267a-04a3-4d2c-8e10-e1bf01c66d45	5854dc2c-7b3e-46b2-aa84-a51e448750be	pending	f	\N	2024-06-14 10:45:33.712121+00	\N	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	unfollowed	\N	\N
2024-06-05 12:31:18.827776+00	2024-06-14 12:47:34.562492+00	\N	8921814c-d911-47fe-8bce-c61133d0b6bf	accd4c2d-17f1-4d48-839a-dd9367a798f6	pending	t	\N	\N	\N	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	following	\N	\N
2024-05-16 10:14:39.543823+00	2024-06-18 06:47:35.773603+00	\N	70fb553b-80df-4d08-86c1-b3fd3defcae3	7c28a321-9ae7-4923-94a8-070feb58955d	friends	f	2024-06-06 13:50:51.054151+00	2024-06-14 10:46:35.986864+00	2024-06-18 06:47:35.786862+00	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	unfollowed	\N	\N
2024-06-03 07:08:24.386772+00	2024-06-18 06:47:36.687119+00	\N	e8a5ffe1-5c20-461e-af68-4bb5dcace9f3	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	friends	f	\N	2024-06-05 10:16:09.590646+00	2024-06-18 06:47:36.685522+00	Influencer	7c28a321-9ae7-4923-94a8-070feb58955d	unfollowed	\N	\N
\.


--
-- Data for Name: contact_me; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_me (created_at, update_at, deleted_at, id, name, email, mobile, description, from_user_id, to_user_id, is_submited) FROM stdin;
2024-06-14 10:38:46.931385+00	\N	\N	ae0a4420-78e4-45f6-ad9d-7cfe9c4c673a	Shamanth	shamanthshammu88@gmail.com	8095235440	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	f
\.


--
-- Data for Name: customer_testimonials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_testimonials (created_at, update_at, deleted_at, id, description, name, user_id, media) FROM stdin;
\.


--
-- Data for Name: device; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.device (created_at, update_at, deleted_at, id, users_id, fingerprint, device_name, device_type, os, os_version, browser, browser_version, app_type, app_version, device_ip, session_code, status) FROM stdin;
2024-02-06 08:00:53.92165+00	2024-02-07 10:20:55.222207+00	\N	0de26c05-b810-4093-b5df-5503f3b7bbe2	\N	41b9216e9b8e5416256975d70467a5f0	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0	\N	\N	\N		36108996	ACTIVE
2024-03-05 10:34:39.144602+00	2024-03-05 10:36:12.973618+00	\N	18475864-a367-4cfd-9feb-685c45ffeada	\N	7e3c1cd3574112e278b4c2109dff4296	\N	Desktop	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36	\N	\N	\N		96221655	ACTIVE
2024-03-11 11:39:20.898581+00	2024-03-11 11:46:16.077671+00	\N	d52bd6a8-3380-4398-a0b4-95bc6a8daa8c	\N	09ee181061126959	Redmi A1	Mobile	android	\N			android	1.0	0.0.0.0	13633658	ACTIVE
2024-03-11 11:52:33.870298+00	2024-03-11 11:52:59.138801+00	\N	e672c843-476e-4715-9890-334899d0d89b	\N	c06780a34678f1373486d94136a0d602	\N	Desktop	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36	\N	\N	\N		99979188	ACTIVE
2024-03-04 10:27:22.697292+00	2024-03-04 10:49:12.503683+00	\N	6b986cf9-df69-4aca-b11d-845c94b5c273	\N	0d23bc21a03f9ffb47963b41bf8377b4	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0	\N	\N	\N		56207848	ACTIVE
2024-03-04 11:42:23.261356+00	\N	\N	96e164c5-406c-418d-abfd-746f982229a3	\N	5b56570b53321a9c	sdk_gphone64_x86_64	Mobile	android	\N			android	1.0	10.0.2.16	\N	ACTIVE
2024-03-04 10:58:58.897755+00	2024-03-04 16:03:30.029027+00	\N	66594f3e-07d4-4fc8-ab5b-397ae322df9f	\N	743abbf8649c3769c6cd72523ed4fa09	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36	\N	\N	\N		87544518	ACTIVE
2024-03-05 10:02:22.065073+00	\N	\N	41815855-6522-45ed-8450-8e609bafbecc	\N	835e05cb2430e20ac12f3c67590d200e	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-03-05 10:03:40.00373+00	2024-03-05 10:04:10.742533+00	\N	ed66d541-3164-46ee-af0d-c8bcf7f6c887	\N	4c92583895bc8e5bf9e658e4c952f9f6	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36	\N	\N	\N		07696876	ACTIVE
2024-03-05 10:34:36.408862+00	\N	\N	d548035d-a73f-432b-a5ef-2cef98fce5d6	\N	a41a69fcdaa5f67d83ce7feb709cacc9	\N	Desktop	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-03-05 06:05:03.962768+00	2024-03-11 12:23:46.556404+00	\N	85a21825-b4f6-4ed3-b19e-96872da93d5e	\N	c42249f4a2c2f9a6	nagaraj's M12	Mobile	android	\N			android	1.0	0.0.0.0	15267343	ACTIVE
2024-02-02 18:52:55.226499+00	2024-04-24 17:45:50.632294+00	\N	a767785f-1936-4bb8-b0cb-9d5fb016128c	\N	^&*09^&WWDD	Samsung	Mobile	Android	11			Android	1.0	192.168.0.1	67572709	ACTIVE
2024-04-26 05:25:07.347814+00	2024-04-29 11:20:38.057708+00	\N	b7637a21-a0de-42d4-bfb5-607be86f9100	\N	a6e9c331c817a947	unknown	Mobile	android	\N			android	1.0	10.0.2.16	36727291	ACTIVE
2024-04-24 18:04:33.881057+00	2024-04-24 18:06:33.771989+00	\N	75f7333d-b925-4ccd-846f-a0af2eb58dc1	\N	c8a20293977e7180	Android SDK built for x86	Mobile	android	\N			android	1.0	10.0.2.16	61539104	ACTIVE
2024-04-25 18:38:07.674801+00	2024-04-25 19:08:02.983794+00	\N	876a7147-670d-4618-a24e-495a76a3a9eb	\N	6b5a1d9c47e76375	unknown	Mobile	android	\N			android	1.0	10.0.2.16	95123083	ACTIVE
2024-05-06 11:14:07.918278+00	\N	\N	b830f3d6-0029-44d3-a1ca-fbdf89b719f8	\N	189e8ccab123cdb6963bcd57df817de8	\N	Desktop	\N	\N	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-03-05 10:09:58.609124+00	2024-05-06 11:17:05.120261+00	\N	fd832df7-c2ae-4a92-84f5-a4249b578427	\N	a1ff264e4fe0dd9cec7a17e67a741909	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0	\N	\N	\N		72139858	ACTIVE
2024-05-02 07:15:40.017642+00	2024-05-06 11:41:09.089947+00	\N	367ab04b-4a36-45a0-903e-b9365bc092f1	\N	b1734d066209c6a0	Adrenaln's F62	Mobile	android	\N			android	1.0	192.168.1.82	80883813	ACTIVE
2024-03-07 06:14:41.223868+00	2024-05-13 08:40:01.039234+00	\N	d3301f1f-0c07-4c21-a2cb-6dae6c040f81	\N	59bf8034158dae8893ca07efdf76616e	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36	\N	\N	\N		13211743	ACTIVE
2024-05-14 07:16:10.727194+00	2024-05-16 13:10:10.456134+00	\N	12ae852f-282c-40d0-9655-9e5066388c52	\N	25915da5b0c39b43	Redmi 9	Mobile	android	\N			android	1.0	10.57.215.209	98362544	ACTIVE
2024-05-02 10:03:49.522516+00	2024-05-02 10:06:27.292146+00	\N	fed02036-ab0b-4f34-95ed-d3120327ea54	\N	6220ea4c82b94c7a	unknown	Mobile	android	\N			android	1.0	10.0.2.16	93249352	ACTIVE
2024-04-25 07:07:56.704109+00	2024-05-07 08:28:52.785063+00	\N	d409c5f2-f34c-4567-8bdb-b0d67244a51d	\N	88e4c2222dbb52bc	SAMPREETH's A50	Mobile	android	\N			android	1.0	192.168.1.10	24613749	ACTIVE
2024-03-06 07:09:28.884236+00	2024-06-08 07:34:16.051522+00	\N	7cab7e65-b443-44f1-ba4d-ca22c53d132c	\N	d6b785bfbadad0ad	Redmi 9	Mobile	android	\N			android	1.0	0.0.0.0	34645126	ACTIVE
2024-04-29 10:37:51.651744+00	2024-05-04 13:19:36.628207+00	\N	1ba008ca-34a8-4c78-b6aa-790a54fb0f6c	\N	b9b8d445f6b60f2e	unknown	Mobile	android	\N			android	1.0	192.168.29.216	05214564	ACTIVE
2024-04-25 05:13:02.937215+00	2024-04-27 05:08:43.481416+00	\N	62bba3fe-bf8c-45b0-a739-72b3ccd69586	\N	af2862d8d7594271	2787/233	Mobile	android	\N			android	1.0	192.168.0.100	16866868	ACTIVE
2024-05-07 12:20:09.608745+00	\N	\N	f32d9573-5004-407e-9e97-3a0bee95057f	\N	f9c590f817e25655f0c7647ef5b63cf8	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0	\N	\N	\N		\N	ACTIVE
2024-05-16 15:54:26.109784+00	\N	\N	cbad13b5-24cd-4507-a24f-712332ccceff	\N	bf076c07145b4e2b15d1902e72797da1	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-05-04 16:36:29.102273+00	\N	\N	f2ba6faa-aa73-40bd-abfe-6c4c5653ac4b	\N	09d5c16357f97171bd501766bee46744	\N	Desktop	\N	\N	Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Mobile/15E148 Safari/604.1	\N	\N	\N		\N	ACTIVE
2024-05-10 05:58:11.113025+00	\N	\N	d45d3e79-7d3b-462c-84c4-719916b120ce	\N	28378e56fb8bfbaf49e71733ac2f183d	\N	Desktop	\N	\N	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-05-06 11:11:37.406971+00	2024-06-05 10:37:56.452901+00	\N	9451b0cc-d0f3-4588-8002-b4807b8b2e52	\N	143d731d764ffcb48d5359fc65dbbde4	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36	\N	\N	\N		72778673	ACTIVE
2024-05-10 09:55:04.415913+00	\N	\N	46314126-445f-4675-84a6-3003fa5c980b	\N	3b06d35542f8945f	OnePlus8Pro	Mobile	android	\N			android	1.0	0.0.0.0	\N	ACTIVE
2024-05-09 18:46:28.226065+00	2024-05-14 12:56:09.604191+00	\N	5a26a74c-171d-4652-84b2-174406a27ac2	\N	e31c031a21582fb2	OPPO Reno2 F	Mobile	android	\N			android	1.0	192.168.0.174	87456107	ACTIVE
2024-05-13 06:25:30.936778+00	\N	\N	b96263c0-721c-443f-bfb7-db38b1479e19	\N	5b8f3c091d8fdb1f0a82d174e929da7b	\N	Desktop	\N	\N	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-05-23 17:02:20.250774+00	\N	\N	df5768e7-058a-488a-bb24-427b580c8d12	\N	44a5a1aea5537220c77be6fb21003892	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-05-10 10:01:54.551708+00	2024-05-16 12:01:42.579413+00	\N	606e09a4-5f35-410d-92f8-3c636861c740	\N	ab23f9a61a03213f	vivo T1	Mobile	android	\N			android	1.0	192.168.1.23	14579481	ACTIVE
2024-04-25 06:52:19.935125+00	2024-06-14 07:40:14.375641+00	\N	3ba87308-b5f5-48cf-b15b-60abec3b0dd3	\N	210b7ca260870687	vivo T1	Mobile	android	\N			android	1.0	192.168.1.23	76319829	ACTIVE
2024-05-08 08:47:56.517983+00	2024-05-15 12:18:35.440925+00	\N	2160c654-575a-4f69-bb27-dc6b38bbb308	\N	d9062ac6e2fb630d	OPPO Reno2 F	Mobile	android	\N			android	1.0	192.168.0.174	58498028	ACTIVE
2024-06-05 11:04:03.94391+00	2024-06-11 12:38:12.257006+00	\N	f6eb5310-ca75-4184-b2ae-1211f5f3b8b7	\N	48b8d8bd78734f99	unknown	Mobile	android	\N			android	1.0	0.0.0.0	09648610	ACTIVE
2024-06-05 11:06:45.839196+00	2024-06-05 11:09:16.060196+00	\N	4777b9fd-6813-4e3a-9f75-266ce94461cb	\N	0909536054dfc973	unknown	Mobile	android	\N			android	1.0	0.0.0.0	52234078	ACTIVE
2024-06-05 11:11:02.083579+00	2024-06-05 11:12:51.70827+00	\N	da7ac043-4fec-4963-a4e3-6143d21bc829	\N	78e3580a60a515fe	unknown	Mobile	android	\N			android	1.0	0.0.0.0	40352636	ACTIVE
2024-02-22 07:54:35.865905+00	2024-06-18 06:46:57.386633+00	\N	33e76c99-c611-434a-ba70-aa2756bf89ae	\N	310a753f066128e6	Subramanya's A14	Mobile	android	\N			android	1.0	0.0.0.0	63369425	ACTIVE
2024-06-11 13:19:55.149058+00	\N	\N	8996a25c-d27a-4c90-a6b3-d5bc03c728fc	\N	a4f4c907c52e91bac7838ad0e204569a	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-06-11 13:18:20.422765+00	2024-06-11 13:20:47.448017+00	\N	2e5ea31e-bd18-4328-af1d-c8c27afffbe9	\N	ea00e10f7b35dcd99d4447996c9ee93b	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36	\N	\N	\N		64356527	ACTIVE
2024-06-14 11:19:51.016062+00	\N	\N	ab4b4535-6138-4390-ac94-efa8d463eca6	\N	a930c28ba5301d324cd0a95626169bc1	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-06-15 15:05:07.313628+00	2024-06-15 15:05:30.698644+00	\N	7399e3dd-9dec-4d1f-9e54-a7571a809cdf	\N	a21bf5c2e8d704cab30d226ed652a1a6	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36	\N	\N	\N		78264731	ACTIVE
2024-06-18 08:19:09.089667+00	\N	\N	4ff3ecf8-cac4-47d5-b318-07131b6f3b38	\N	efb35a15c7a461accf69e676335a61eb	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-06-14 11:19:34.130598+00	2024-06-18 08:41:20.075323+00	\N	fd39497f-6d69-415e-be4f-989969a79a90	\N	cc2835ec085ac201cf74f72f473903bb	\N	Desktop	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36	\N	\N	\N		03511118	ACTIVE
2024-06-19 11:07:38.48147+00	\N	\N	6b27e28e-33a4-46dd-9bb6-eea19eb20044	\N	b18809090e3ab5b24f59260467d7dae6	\N	Desktop	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36	\N	\N	\N		\N	ACTIVE
2024-06-20 02:55:19.202751+00	2024-06-20 03:02:30.236613+00	\N	2a033173-7137-4571-a96f-4c23523a5790	\N	1791513787c4b6c3	Galaxy A7 (2018)	Mobile	android	\N			android	1.0	192.168.0.101	54296944	ACTIVE
2024-06-20 08:32:43.333014+00	2024-06-20 08:33:33.960531+00	\N	05a82e84-8d5f-4e7e-b32a-b621e63728ec	\N	3e42c41c3d142993	unknown	Mobile	android	\N			android	1.0	192.168.0.2	46382987	ACTIVE
2024-06-21 10:26:09.818861+00	2024-06-21 12:51:41.307494+00	\N	b48bbf9d-e119-4a57-a8d8-46f11f06a13c	\N	26574694a9702e57	unknown	Mobile	android	\N			android	1.0	192.168.0.104	48460328	ACTIVE
2024-06-24 10:18:45.467678+00	\N	\N	cc7ecf95-fb47-4c3a-8a23-5a12b1d06270	\N	495eb1629a187d9f	unknown	Mobile	android	\N			android	1.0	10.0.2.16	\N	ACTIVE
2024-06-19 10:41:22.250668+00	2024-06-25 12:28:34.709042+00	\N	879e4e5b-ab6f-42b8-9ae3-4ae4aeb24069	\N	cb38b8aeae1b5070	unknown	Mobile	android	\N			android	1.0	192.168.1.33	40691910	ACTIVE
\.


--
-- Data for Name: expert; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.expert (created_at, update_at, deleted_at, id, adrenln_fitness, sport_level, user_id, level) FROM stdin;
\.


--
-- Data for Name: experties_background; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.experties_background (created_at, update_at, deleted_at, id, description, is_offer_programme, is_remote_consulting, user_id, city, experties_in) FROM stdin;
2024-05-16 12:52:47.897241+00	\N	\N	259b6bb2-ab25-4ef4-bb89-1931021c31f0	Diet practioner	t	t	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	Mumbai,  India	["cf3b3946-5cbd-4188-be67-f67b99703082"]
\.


--
-- Data for Name: featured_media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.featured_media (created_at, update_at, deleted_at, id, title, media, user_id, description) FROM stdin;
2024-05-16 10:08:04.171599+00	\N	\N	729db54c-0928-44fc-99e0-bd6a6ba5b21c	Sunset Walk	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG_20240513_180748-01.jpeg", "media_id": "a0f2fa46-9e60-45e6-9bb6-bcd0c30f418b"}]	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N
2024-06-13 10:23:13.560935+00	\N	\N	4b40ad03-25fd-4f79-b7a9-9e9de8947a10	Afternoon	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG_20240610_154101-01.jpeg", "media_id": "10f612cc-6c6a-49f2-80a4-258759cee2f5"}]	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N
2024-06-14 12:46:56.740853+00	\N	\N	ce06bbbb-9d86-4b1d-957a-26d0bc3965b4	Helo	[]	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N
\.


--
-- Data for Name: fitness_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fitness_level (created_at, update_at, deleted_at, id, value, course_id, user_id, visibility, seconds) FROM stdin;
2024-02-29 09:43:34.260308+00	\N	\N	8930e873-4bbf-4e71-8398-4c3dfc65a545	05:30:03	093c9d4f-0de4-47c5-ab29-f9ddc773b8a2	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	19803
2024-03-06 08:40:12.813858+00	\N	\N	c7a97ac0-7a51-4332-8dd7-ee45b05d5922	04:00:00	1672d31c-c236-4bf3-be4c-21649a6a0059	b9117901-96ad-4b87-b47a-2f9aa6575fb6	\N	14400
2024-05-16 12:27:17.058527+00	\N	\N	284240e7-6c77-4f39-a132-e7cf3227b867	03:00:00	093c9d4f-0de4-47c5-ab29-f9ddc773b8a2	cb086201-ede7-42fb-856e-d250a66d40b6	\N	10800
2024-06-03 13:52:11.588277+00	\N	\N	67578ee0-ff9f-4b09-91bc-9d737c7ed495	00:04:00	1672d31c-c236-4bf3-be4c-21649a6a0059	93f47453-622d-4f4c-9208-093193669900	\N	240
2024-06-05 11:41:33.294962+00	\N	\N	e19a6f30-5356-413e-bee5-e1f028d22053	04:05:05	7b643ea9-6c19-4b72-be84-2e5d214a41e6	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	14705
2024-03-06 08:20:58.737945+00	2024-06-05 12:11:19.848199+00	\N	b4adb47a-7b66-40d9-8d36-b841c066a159	00:03:00	093c9d4f-0de4-47c5-ab29-f9ddc773b8a2	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	180
2024-06-05 12:13:13.584758+00	\N	\N	63540103-b70b-42e2-8e67-b809b0dc81c0	00:18:00	1672d31c-c236-4bf3-be4c-21649a6a0059	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	1080
2024-06-06 10:26:06.332045+00	\N	\N	32852f08-83e9-481e-93a4-88d1f7297106	03:00:00	093c9d4f-0de4-47c5-ab29-f9ddc773b8a2	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	10800
\.


--
-- Data for Name: garminusers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.garminusers (id, request_token, request_token_secret, access_token, access_token_secret, verifier, user_id, created_at, update_at, deleted_at, garmin_id, deregister_at) FROM stdin;
\.


--
-- Data for Name: gfitactivity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gfitactivity (created_at, update_at, deleted_at, id, name, description, user_id, starttimemillis, endtimemillis, modifiedtimemillis, activity_id) FROM stdin;
\.


--
-- Data for Name: gfitusers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gfitusers (id, access_token, auth_code, user_id, created_at, update_at, deleted_at, refresh_token, activity_last_synced, refresh_token_exp, deregister_at) FROM stdin;
\.


--
-- Data for Name: group_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_members (created_at, update_at, deleted_at, id, type, user_id, group_id, status) FROM stdin;
2024-02-29 09:56:38.109359+00	\N	\N	c381d996-91da-4ecd-bb6f-7740aa9f847b	admin	5854dc2c-7b3e-46b2-aa84-a51e448750be	24fa16b4-f0cf-4eeb-a10f-868e32061ec7	active
2024-02-29 09:56:38.1217+00	2024-02-29 10:02:04.492352+00	\N	aaea8874-1f73-4ce1-941a-749e0f453756	admin	7c28a321-9ae7-4923-94a8-070feb58955d	24fa16b4-f0cf-4eeb-a10f-868e32061ec7	active
2024-03-06 08:49:18.56818+00	\N	\N	7c62cd30-bd20-4f43-a42f-054c3787c53e	user	f039da77-98d1-4ef2-bb2a-72faaec7c494	24fa16b4-f0cf-4eeb-a10f-868e32061ec7	active
2024-05-16 12:30:48.362415+00	\N	\N	25c449e0-efd6-45f0-96bd-3ae6aaeae616	admin	cb086201-ede7-42fb-856e-d250a66d40b6	e4c2c0b3-5678-49a3-a03e-417a75d6b77f	active
2024-05-16 12:30:48.371772+00	2024-05-16 12:31:34.95437+00	\N	6abb4a6e-28dd-40fa-834b-9e952a509dcf	user	f039da77-98d1-4ef2-bb2a-72faaec7c494	e4c2c0b3-5678-49a3-a03e-417a75d6b77f	active
2024-05-16 13:03:37.998687+00	\N	\N	1aa1367b-ec18-4b5f-85d7-2b1a83e3b5a7	user	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	e4c2c0b3-5678-49a3-a03e-417a75d6b77f	active
2024-06-05 09:27:19.544439+00	\N	\N	91dda228-99b6-4fca-986f-cd0934021b00	admin	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	fdda6a93-4672-4acd-8bd7-6ccb4ab0b60a	active
2024-06-05 09:27:19.565365+00	\N	\N	8f024013-45a9-4d84-a0f4-7a36727ea0a0	user	05f59f52-18be-45d4-bf8b-39640b7b2fab	fdda6a93-4672-4acd-8bd7-6ccb4ab0b60a	invited
2024-06-05 10:01:30.158229+00	\N	\N	f621e378-75aa-4de8-a113-8a64afcf57d8	user	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	e4c2c0b3-5678-49a3-a03e-417a75d6b77f	active
2024-06-05 10:01:35.553004+00	\N	\N	246bf014-3640-40f6-a95a-0dff4688daae	user	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	24fa16b4-f0cf-4eeb-a10f-868e32061ec7	active
2024-06-05 11:28:22.358436+00	\N	\N	014b1577-746e-493c-a379-457f937c4522	user	accd4c2d-17f1-4d48-839a-dd9367a798f6	e4c2c0b3-5678-49a3-a03e-417a75d6b77f	active
2024-06-19 10:49:39.247384+00	\N	\N	da009ff6-641e-4399-86b4-6eb7f6bd9bc8	user	4e82af3f-b695-49e9-8c83-b234ce459de5	24fa16b4-f0cf-4eeb-a10f-868e32061ec7	active
\.


--
-- Data for Name: hall_of_fame; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hall_of_fame (created_at, update_at, deleted_at, id, title, description, user_id, visibility, image, level) FROM stdin;
2024-02-14 19:13:35.971001+00	\N	\N	4c1a2f32-5be0-4d81-8a77-a65bf57c87b1	Badminton	description	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	\N	[{"type": "image", "media_id": "155d9615-3e65-43fc-bbe3-454c6f7011ce.jpeg", "path": "media/f689a37c-328b-46a5-802f-1abc9c170494/17c9edf5-1fc7-4eef-9a8f-c96c68a0061"}]	International
2024-02-29 09:37:31.530437+00	\N	\N	824f3eb2-a682-4e38-a626-ff3b1d382271	Testing hall of fame	Testing.....	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_c1b592eb-61f1-48d2-ad50-f19cc0891853.jpg", "media_id": "76bfaca6-725d-459b-bb85-109f3d5d8258"}]	international
2024-03-06 08:36:57.545824+00	\N	\N	eb9baa0f-2a96-4015-8a31-3b94c512c20f	Amsterdam marathon	Gorgeous run thru the canals, squares made extra special with my best timing	b9117901-96ad-4b87-b47a-2f9aa6575fb6	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_416605ea-fc31-4fd8-ad4a-bb2f1fabda2a.jpg", "media_id": "daa58d96-603d-4787-81fe-b54b1f574548"}]	international
2024-05-16 07:59:40.075775+00	\N	\N	69d71b81-58e7-4791-b913-0c9eac1d9743	SUPER SWIMMING	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	null	state
2024-05-16 12:20:58.248412+00	2024-05-16 12:21:24.680375+00	\N	b88336d5-39aa-4f2f-8d30-0c0b83ad4b86	Wayand trek	We came across a snake	cb086201-ede7-42fb-856e-d250a66d40b6	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240427-WA0006.jpg", "media_id": "6d956ba1-10f8-4da6-b96b-57bdeb4bbad9"}]	state
2024-06-03 13:32:11.558885+00	2024-06-03 13:33:51.808388+00	\N	16b7ba1a-f9ba-4f49-9471-3d40e53c1d5b	Jungle marathon	Lovely forrest run	93f47453-622d-4f4c-9208-093193669900	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240427-WA0006.jpg", "media_id": "fc1416a2-9cc7-4acd-a256-656ea9edc8f6"}]	state
2024-06-03 13:35:01.306183+00	\N	\N	108d5254-d8cc-4b95-8c36-a3c1dccaea6b	Kailash Mountain	Spritual abide of Shiva . Fjggjdnft cncfjfsjr cncfjdjrr cnffjdjdr cnfjfdjr cnfjfd cnvfjds cnvjffjd cncbffhd	93f47453-622d-4f4c-9208-093193669900	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240502-WA0001.jpg", "media_id": "86fb10ec-b7a0-4654-9d09-91b1e707ee9c"}]	international
2024-06-04 11:29:13.121703+00	\N	\N	04d21dad-1e62-48ea-88b8-a9c312d8d2b2	Trolltunga Norway	Memorable short trip to enchanting natural beauties around the world	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0003.jpg", "media_id": "97323e6c-dd9d-4a67-a8e3-cb2a9908aa11"}]	international
2024-06-04 11:27:49.134405+00	2024-06-04 11:30:52.605901+00	\N	3e79a7fe-2c3b-422a-8e1e-fcfdf65656e6	Kang yatse	High altitude trek touching 19k feet	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0005.jpg", "media_id": "921b4be2-224a-450c-a89e-14dc6ed1fd87"}]	national
2024-03-06 07:45:06.635624+00	2024-06-04 11:31:35.999082+00	\N	6a751ab7-4af9-4cc5-8cd9-5a40062c21ee	Tour de malnad	5 days of bliss cycling in coorg	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0007.jpg", "media_id": "9df1876d-0297-47cf-8579-4cdbb86cd36a"}]	state
2024-05-09 07:30:40.538533+00	2024-06-04 11:32:12.265095+00	\N	c27705ed-12dc-42ba-8185-b193ef0f3b1e	Everest Base Camp	Very Memorable trip to the roof of the world.	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0004.jpg", "media_id": "f9ad84cd-8396-4ea1-8c75-d72f5042b438"}]	international
2024-06-05 09:23:07.937538+00	\N	\N	694b1dc7-c611-4e74-b7e1-2dfe2d8d7e53	Running	Pro Runner	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_a1f23c4a-d53c-43c5-bef2-95a7a5070a0f.jpg", "media_id": "e1e08796-f97c-4ba9-af27-1c1bfcd385cc"}]	state
2024-06-04 11:26:29.19916+00	2024-06-05 12:55:47.16897+00	\N	aa801fce-693d-49e6-9916-18da0bc8069f	Mumbai half marathon	My 6th Mumbai half marathon.rkfjgtj gmrkesjf vnfgntjr vgntdjt vngfjsrj vngfjdtj dskrfjh vngjddjr cfndjdtj cngfjdtj	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0006.jpg", "media_id": "0f9d1be1-d94d-47b8-8fdc-2e3c1c8bc287"}]	national
\.


--
-- Data for Name: health_parameter_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.health_parameter_values (created_at, update_at, deleted_at, id, healthreport_id, healthparameters_id, value) FROM stdin;
2024-02-29 09:50:41.222423+00	\N	\N	711e9aac-d84f-4272-9f25-22e0265a3350	a1b32b79-8448-479a-bd11-28af011e3b18	d04faa2a-6c23-4ce0-b130-b8d2b8c33942	60
2024-02-29 09:50:41.22948+00	\N	\N	eaa26ff1-493a-4a51-80ea-0ef98692d7b2	a1b32b79-8448-479a-bd11-28af011e3b18	2f7efe4a-ad85-4c0c-bc55-96d634efd792	5.11
2024-02-29 09:50:41.236346+00	\N	\N	0c6443a9-29ef-45c9-af6d-5519b40b85b5	a1b32b79-8448-479a-bd11-28af011e3b18	ceb884fd-5be7-4588-99e0-70179df3c86a	60
2024-03-04 05:31:47.384436+00	\N	\N	68e2a043-4cb8-42e3-b16d-0ccbe2672bf0	62659695-14f4-45f5-aec1-cd2f63a0f8a6	ceb884fd-5be7-4588-99e0-70179df3c86a	60
2024-03-06 10:06:42.834672+00	\N	\N	f1c0bb49-5223-498e-ab01-ef9341222642	86964d43-d1c7-4243-a110-4f04e6705412	d04faa2a-6c23-4ce0-b130-b8d2b8c33942	25
2024-03-06 10:12:02.492668+00	\N	\N	7d535018-06fb-46ab-82a6-bdbcc20fdd88	97ab23bc-ff1c-4006-8e81-f5c16887ed00	d04faa2a-6c23-4ce0-b130-b8d2b8c33942	77
2024-03-06 10:12:03.587386+00	\N	\N	07597653-d00d-49a7-b888-e5768ddb22ef	97ab23bc-ff1c-4006-8e81-f5c16887ed00	06198009-5222-4cfe-8f06-47001cc597cc	170
2024-03-06 10:12:04.690555+00	\N	\N	d3c5974f-c1dc-4a48-bcd2-af0d1d64f3b8	97ab23bc-ff1c-4006-8e81-f5c16887ed00	6394beac-8d99-465b-9d0d-8985f83a5f73	170
2024-03-06 10:12:05.797304+00	\N	\N	957fba30-a7f1-4a1d-96b5-269b1378b0fd	97ab23bc-ff1c-4006-8e81-f5c16887ed00	481aab59-cdaf-442b-afbb-a0d19bf98674	10
2024-03-06 10:12:07.98192+00	\N	\N	b7dd0564-00a3-4ad2-9b47-80a937635089	97ab23bc-ff1c-4006-8e81-f5c16887ed00	936cf04d-dd4b-4384-b2c8-b7ba376da000	70
2024-03-06 10:13:44.799085+00	\N	\N	3d4f14e6-ad6d-4d6c-86f3-e9b8b80e9453	ec981ef9-c878-4dc5-bdd9-c314f51dfa0d	d04faa2a-6c23-4ce0-b130-b8d2b8c33942	75
2024-03-06 10:13:46.705315+00	\N	\N	b27950a6-3cfb-4a74-9059-9cd15d337072	ec981ef9-c878-4dc5-bdd9-c314f51dfa0d	06198009-5222-4cfe-8f06-47001cc597cc	180
2024-03-06 10:13:48.611212+00	\N	\N	8b0a8787-8c10-4a2a-b9a6-c5f7d022da88	ec981ef9-c878-4dc5-bdd9-c314f51dfa0d	6394beac-8d99-465b-9d0d-8985f83a5f73	150
2024-03-06 10:13:50.521792+00	\N	\N	bf1c8611-dc3e-42eb-98e3-52b24e07670e	ec981ef9-c878-4dc5-bdd9-c314f51dfa0d	481aab59-cdaf-442b-afbb-a0d19bf98674	5
2024-05-16 13:13:32.891539+00	\N	\N	c227c0a8-0975-4eb8-bea6-023e9ed8b52c	2dc22973-4218-4adf-91df-3d5d3e3347a4	d04faa2a-6c23-4ce0-b130-b8d2b8c33942	75
2024-05-16 13:13:32.900226+00	\N	\N	a688b57d-7864-44bc-afcc-f7c2ab0c3853	2dc22973-4218-4adf-91df-3d5d3e3347a4	06198009-5222-4cfe-8f06-47001cc597cc	180
2024-05-16 13:13:32.90719+00	\N	\N	e23030b9-9f76-4423-be55-efc4e8de0f49	2dc22973-4218-4adf-91df-3d5d3e3347a4	6394beac-8d99-465b-9d0d-8985f83a5f73	150
2024-05-16 13:13:32.914997+00	\N	\N	bdfcdaa7-0f88-44d3-96db-7bcdd2e0ef93	2dc22973-4218-4adf-91df-3d5d3e3347a4	936cf04d-dd4b-4384-b2c8-b7ba376da000	80
2024-05-16 13:16:04.331378+00	\N	\N	9d7e2009-ab0b-4fa4-a324-e921fdf0dbf1	4d85ea3f-4c2e-4fdb-9ae1-f34deb00ef52	d04faa2a-6c23-4ce0-b130-b8d2b8c33942	60
2024-06-05 09:47:45.874853+00	\N	\N	8a1ca503-258f-497f-b1cc-c52fdce66f88	fa056042-4b3d-4b49-89ee-c535ddc98e17	184e4887-f258-423d-9be8-ec1580ec8ea0	25
2024-06-05 09:47:45.892819+00	\N	\N	58ad9372-6aeb-466f-aa0e-1b80ce5f502d	fa056042-4b3d-4b49-89ee-c535ddc98e17	3dae45d5-4bf6-43a9-ba65-0b4cfa699311	22
2024-06-05 09:47:45.90777+00	\N	\N	995a7aac-d644-4942-91f2-f23a11a53518	fa056042-4b3d-4b49-89ee-c535ddc98e17	b36faa88-4425-4e3c-a571-d13e7afc6656	48
2024-06-05 09:47:45.919873+00	\N	\N	e7744e3e-d17e-493b-be8c-b60d59964ed1	fa056042-4b3d-4b49-89ee-c535ddc98e17	d04faa2a-6c23-4ce0-b130-b8d2b8c33942	65
2024-06-05 09:47:45.93307+00	\N	\N	ae991db0-2fed-4075-b5d2-fa4ff9b2f19a	fa056042-4b3d-4b49-89ee-c535ddc98e17	2f7efe4a-ad85-4c0c-bc55-96d634efd792	158
2024-06-05 09:47:45.94278+00	\N	\N	b6dbed43-c489-4036-917d-ea5e4bfcc10b	fa056042-4b3d-4b49-89ee-c535ddc98e17	4fed36e8-3551-4de1-9c42-34d9f2685a6f	5
2024-06-05 09:47:45.953197+00	\N	\N	53cc900f-d2de-44b4-95c2-201f9d870b0c	fa056042-4b3d-4b49-89ee-c535ddc98e17	b0972c24-f3e5-41c5-996a-8ca176ab4a74	2
2024-06-05 09:47:45.962488+00	\N	\N	b0f85fe4-2bae-4efa-a5cf-378e87407a63	fa056042-4b3d-4b49-89ee-c535ddc98e17	0b7542d0-c626-420d-b85e-ed5761dbfc3a	5
2024-06-05 09:47:45.973004+00	\N	\N	08488e67-8c5d-44ad-8edf-9f7d1caabe48	fa056042-4b3d-4b49-89ee-c535ddc98e17	481aab59-cdaf-442b-afbb-a0d19bf98674	500
2024-06-05 09:47:45.981236+00	\N	\N	e18c5671-0a07-489e-859e-b372ccc0acc2	fa056042-4b3d-4b49-89ee-c535ddc98e17	51783333-8acd-4d28-8e00-23a7fa3c86fc	3
2024-06-05 09:47:45.993396+00	\N	\N	b1292794-31aa-4396-a34e-3a0afffcd58d	fa056042-4b3d-4b49-89ee-c535ddc98e17	ceb884fd-5be7-4588-99e0-70179df3c86a	258
2024-06-05 09:47:46.002962+00	\N	\N	60ea61c9-5fe1-4208-94cb-727092fbe539	fa056042-4b3d-4b49-89ee-c535ddc98e17	696d546a-e728-4d45-be1b-9e26b1c2f54e	33
\.


--
-- Data for Name: health_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.health_profile (created_at, update_at, deleted_at, id, user_id, name, gender, date_of_birth, health_parameters) FROM stdin;
2024-02-14 19:19:13.850553+00	\N	\N	583605ca-8a79-426f-a076-334865ff77c2	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	prabu	Male	1998-10-06	[{"sorting_position": "0", "parameter_id": "d04faa2a-6c23-4ce0-b130-b8d2b8c33942"}, {"sorting_position": "0", "parameter_id": "481aab59-cdaf-442b-afbb-a0d19bf98674"}]
2024-02-29 09:50:41.015442+00	\N	\N	86f8476d-127b-4bd5-8df5-eda798ad529c	5854dc2c-7b3e-46b2-aa84-a51e448750be	Subramanya 	Male	2002-02-04	[{"parameter_id": "d04faa2a-6c23-4ce0-b130-b8d2b8c33942", "sorting_position": "0"}, {"parameter_id": "2f7efe4a-ad85-4c0c-bc55-96d634efd792", "sorting_position": "0"}, {"parameter_id": "ceb884fd-5be7-4588-99e0-70179df3c86a", "sorting_position": "0"}]
2024-03-04 05:31:47.251856+00	\N	\N	8f629777-156d-443a-a411-844c3d6c4cab	5854dc2c-7b3e-46b2-aa84-a51e448750be	Tushar 	Male	2002-05-14	[{"parameter_id": "ceb884fd-5be7-4588-99e0-70179df3c86a", "sorting_position": "0"}]
2024-03-06 10:06:38.700939+00	\N	\N	191d0883-6ed4-44ef-87c9-4c0a0e97219b	f039da77-98d1-4ef2-bb2a-72faaec7c494	Ishaan	Male	2019-03-06	[{"parameter_id": "d04faa2a-6c23-4ce0-b130-b8d2b8c33942", "sorting_position": "0"}]
2024-03-06 10:05:20.939141+00	2024-05-16 13:13:32.6685+00	\N	e42453e8-5a7e-4b3a-abe1-44d407fc3763	f039da77-98d1-4ef2-bb2a-72faaec7c494	Ojas	Male	1973-12-07	[{"parameter_id": "d04faa2a-6c23-4ce0-b130-b8d2b8c33942", "sorting_position": "0"}, {"parameter_id": "06198009-5222-4cfe-8f06-47001cc597cc", "sorting_position": "0"}, {"parameter_id": "6394beac-8d99-465b-9d0d-8985f83a5f73", "sorting_position": "0"}, {"parameter_id": "481aab59-cdaf-442b-afbb-a0d19bf98674", "sorting_position": "0"}, {"parameter_id": "936cf04d-dd4b-4384-b2c8-b7ba376da000", "sorting_position": "0"}]
2024-05-16 13:16:04.085533+00	\N	\N	c093f813-d009-4c3d-a7e2-25e1f6d2209a	f039da77-98d1-4ef2-bb2a-72faaec7c494	Payal	Male	1978-07-13	[{"parameter_id": "d04faa2a-6c23-4ce0-b130-b8d2b8c33942", "sorting_position": "0"}]
2024-06-05 09:47:45.600854+00	\N	\N	95494b51-593a-48c7-8e84-12d2577f3701	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	Shamanth 	Male	1997-11-08	[{"parameter_id": "184e4887-f258-423d-9be8-ec1580ec8ea0", "sorting_position": "0"}, {"parameter_id": "3dae45d5-4bf6-43a9-ba65-0b4cfa699311", "sorting_position": "0"}, {"parameter_id": "b36faa88-4425-4e3c-a571-d13e7afc6656", "sorting_position": "0"}, {"parameter_id": "d04faa2a-6c23-4ce0-b130-b8d2b8c33942", "sorting_position": "0"}, {"parameter_id": "2f7efe4a-ad85-4c0c-bc55-96d634efd792", "sorting_position": "0"}, {"parameter_id": "4fed36e8-3551-4de1-9c42-34d9f2685a6f", "sorting_position": "0"}, {"parameter_id": "b0972c24-f3e5-41c5-996a-8ca176ab4a74", "sorting_position": "0"}, {"parameter_id": "0b7542d0-c626-420d-b85e-ed5761dbfc3a", "sorting_position": "0"}, {"parameter_id": "481aab59-cdaf-442b-afbb-a0d19bf98674", "sorting_position": "0"}, {"parameter_id": "51783333-8acd-4d28-8e00-23a7fa3c86fc", "sorting_position": "0"}, {"parameter_id": "ceb884fd-5be7-4588-99e0-70179df3c86a", "sorting_position": "0"}, {"parameter_id": "696d546a-e728-4d45-be1b-9e26b1c2f54e", "sorting_position": "0"}]
\.


--
-- Data for Name: health_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.health_report (created_at, update_at, deleted_at, id, healthprofile_id, report, report_date) FROM stdin;
2024-02-29 09:50:41.207923+00	\N	\N	a1b32b79-8448-479a-bd11-28af011e3b18	86f8476d-127b-4bd5-8df5-eda798ad529c	[]	2024-02-29 00:00:00+00
2024-03-04 05:31:47.368543+00	\N	\N	62659695-14f4-45f5-aec1-cd2f63a0f8a6	8f629777-156d-443a-a411-844c3d6c4cab	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_558fdb20-c0ac-41ad-916b-7eae6193c1cf.jpg", "media_id": "9c07e423-23b1-46e5-9c51-b11852f7ed15"}]	2024-03-04 00:00:00+00
2024-03-06 10:06:41.069439+00	\N	\N	86964d43-d1c7-4243-a110-4f04e6705412	191d0883-6ed4-44ef-87c9-4c0a0e97219b	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_ac7262b8-253a-4e6f-8ec3-b20b2a28ba0b.jpg", "media_id": "c48b325a-790d-4a08-bd4e-6f2c91f71169"}]	2024-03-06 00:00:00+00
2024-03-06 10:09:06.369865+00	2024-03-06 10:12:00.520563+00	\N	97ab23bc-ff1c-4006-8e81-f5c16887ed00	e42453e8-5a7e-4b3a-abe1-44d407fc3763	[]	2024-02-01 00:00:00+00
2024-03-06 10:05:23.354549+00	2024-03-06 10:13:41.446744+00	\N	ec981ef9-c878-4dc5-bdd9-c314f51dfa0d	e42453e8-5a7e-4b3a-abe1-44d407fc3763	[]	2024-03-03 00:00:00+00
2024-05-16 13:13:32.874035+00	\N	\N	2dc22973-4218-4adf-91df-3d5d3e3347a4	e42453e8-5a7e-4b3a-abe1-44d407fc3763	[]	2024-05-16 00:00:00+00
2024-05-16 13:16:04.314384+00	\N	\N	4d85ea3f-4c2e-4fdb-9ae1-f34deb00ef52	c093f813-d009-4c3d-a7e2-25e1f6d2209a	[]	2024-05-16 00:00:00+00
2024-06-05 09:47:45.846906+00	\N	\N	fa056042-4b3d-4b49-89ee-c535ddc98e17	95494b51-593a-48c7-8e84-12d2577f3701	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_48c3e2a7-64f8-42ba-88fc-46806656a77c.jpg", "media_id": "c99e96c8-3609-420d-9b6a-00ca332efe64"}]	2024-06-05 00:00:00+00
\.


--
-- Data for Name: level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.level (created_at, update_at, deleted_at, id, level) FROM stdin;
2022-06-02 10:04:18.672564+00	\N	\N	4fe006c2-8208-4e58-816b-0140fc5b770b	International
2022-06-02 10:04:18.672564+00	\N	\N	10e1154f-084d-4662-8a3a-d8876b36a535	National
2022-06-02 10:04:18.672564+00	\N	\N	651eb1c8-abb5-4b90-9744-f59ab993b6a5	State
2022-06-02 10:05:03.22208+00	\N	\N	07c22f1e-699f-48ac-8470-c19fdd5ccbf9	District
\.


--
-- Data for Name: master_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.master_activity (created_at, update_at, deleted_at, id, name, fields, bucket_key, logo) FROM stdin;
2022-10-11 08:01:32.628226+00	2022-10-11 08:01:32.628226+00	\N	308204b8-57ca-4ec6-bf06-2b9945dc42ce	Walk	[{"type":"float","label":"Distance","key":"distance","units":["kms","miles"]}\n,{"type":"int","label":"Total Steps","key":"total_steps"}\n,{"type":"int","label":"Total Time","key":"total_time","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]}\n,{"type":"float","label":"Walking Time","key":"walking_time","units":["kms:hr","miles:hr"]}\n,{"type":"int","label":"Avg Moving Speed","key":"avg_moving_speed","units":["kms:hr","miles:hr"]}\n,{"type":"int","label":"Moving pace","key":"moving_pace","units":["mins:km","mins:miles"]},\n{"type":"dropdown","label":"Difficulty","key":"difficulty","values": [{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"},{"label": "Easy", "value": "easy"}]}\n,{"type":"float","label":"Calories Burnt","key":"calories_burnt","units":["kcal"]}\n,{"type":"int","label":"Elevation","key":"elevation","units":["mtrs","feet"]},\n{"type":"int","label":"Avg Heart Rate","key":"avg_heart_rate","units":["bpm"]}]\n	\N	https://adrenaln-files.s3.amazonaws.com/Group-1 (1).png
2022-10-11 08:01:32.628226+00	2022-10-11 08:01:32.628226+00	\N	3bf0eff5-f969-43c9-aa03-ed70fad21a55	Gyming	[{"type":"text","label":"Main Exercises","key":"main_exercises"}\n,{"type":"float","label":"Duration","key":"Duration","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]}\n,{"type":"dropdown","label":"Difficulty","key":"difficulty","values":[{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]},\n{"type":"int","label":"Calories Burnt","key":"calories_burnt","units":["kcal"]},\n{"type":"int","label":"Avg Heart Rate","key":"avg_heart_rate","units":["bpm"]}]\n	\N	https://adrenaln-files.s3.amazonaws.com/group_160.png
2022-10-11 08:01:32.628226+00	2022-10-11 08:01:32.628226+00	\N	a3850827-5a09-4886-bc6f-828ce460d0e1	Trekking	[{"type":"text","label":"Location","key":"location"},{"type":"int","label":"Number Of Days","key":"number_of_days"},{"type":"float","label":"Total Distance","key":"total_distance","units":["kms","miles"]},{"type":"int","label":"Max Evalution","key":"max_evalution","units":["mtrs","feet"]},\n{"type":"dropdown","label":"Difficulty","key":"difficulty","values": [{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]}]	\N	https://adrenaln-files.s3.amazonaws.com/group_76.png
2022-10-11 08:01:32.628226+00	2022-10-11 08:01:32.628226+00	\N	ca262da2-80a0-4c15-ae7a-1de6d73c6e88	Yoga	[{"type":"text","label":"Main Asanas","key":"main_asanas"},{"type":"int","label":"Duration","key":"duration","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]},{"type":"float","label":"Meditation Period","key":"meditation_period","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]},\n{"type":"dropdown","label":"Difficulty","key":"difficulty","values":[{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]}]	\N	https://adrenaln-files.s3.amazonaws.com/Group (1).png
2022-10-11 08:39:00.053088+00	\N	\N	91d7f109-8dd5-490e-b787-ffa60bdd9cac	Football	[{"type":"float","label":"Duration","key":"duration","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]},{"type":"float","label":"Distance Run","key":"distance_run","units":["kms","miles"]},{"type":"text","label":"Position Played","key":"position_played"},{"type":"int","label":"Goals Scored","key":"goals_scored"},{"type":"dropdown","label":"Difficulty","key":"difficulty","values": [{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]},{"type":"float","label":"Calories Burnt","key":"calories_burnt","units":["kcal"]},{"type":"int","label":"Score","key":"score"},{"type": "dropdown", "label": "Result","key":"result", "values": [{"label": "Won", "value": "Won"}, {"label": "Lost", "value": "Lost"}]}]\n	\N	https://adrenaln-files.s3.amazonaws.com/group_189.png
2022-10-11 08:01:32.628226+00	2022-10-11 08:01:32.628226+00	\N	a792db29-6b36-4ded-bebd-adf6acebd2df	Run	[{"type":"float","label":"Distance","key":"distance","units":["kms","miles"]}\n,{"type":"int","label":"Total Time","key":"total_time","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]}\n,{"type":"int","label":"Moving Time","key":"moving_time","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]}\n,{"type":"int","label":"Moving pace","key":"moving_pace","units":["min:kms","mins:miles"]}\n,{"type":"int","label":"Avg Moving Speed","key":"avg_moving_speed","units":["kms:hr","miles:hr"]}\n,{"type":"int","label":"Calories Burnt","key":"calorie_burned","units":["kcal"]},\n{"type":"int","label":"Elevation","key":"elevation","units":["mtrs","feet"]},\n{"type":"int","label":"Avg Heart Rate","key":"avg_heart_rate","units":["bpm"]},\n{"type":"dropdown","label":"Difficulty","key":"difficulty","values": [{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]}]\n	\N	https://adrenaln-files.s3.amazonaws.com/icon_running.png
2022-10-11 08:01:32.628226+00	2022-10-11 08:01:32.628226+00	\N	d97d14df-9a7d-4617-b8e5-75aa3ffb62ee	Golf	[{"type":"text","label":"Location","key":"location"},\n{"type":"int","label":"Duration","key":"duration","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]},\n{"type":"int","label":"Holes played","key":"holes_played"},{"type":"int","label":"Score","key":"score"},{"type":"int","label":"Number Of Par Holes","key":"number_of_par_holes"}\n,{"type":"text","label":"No Of Birdies","key":"no_of_birdies"},\n{"type":"dropdown","label":"Difficulty","key":"difficulty","values": [{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]}]	\N	https://adrenaln-files.s3.amazonaws.com/group_130.png
2022-10-11 08:01:32.628226+00	2022-10-11 08:01:32.628226+00	\N	9826bc04-36f2-44e1-ba31-73e1b835b29b	Racket Sport	\n[{"type":"int","label":"Duration","key":"duration","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]},{"type":"int","label":"Score","key":"score"},\n{"type": "dropdown", "label": "Result","key":"result", "values": [{"label": "Won", "value": "Won"}, {"label": "Lost", "value": "Lost"}]},\n{"type":"float","label":"Distance Run","key":"distance_run","units":["kms","miles"]},\n{"type":"dropdown","label":"Difficulty","key":"difficulty","values":[{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]},{"type":"int","label":"Calories Burnt","key":"calorie_burned","units":["kcal"]}]	\N	https://adrenaln-files.s3.amazonaws.com/group_116.png
2022-10-11 08:39:00.053088+00	\N	\N	a6987b1c-2be0-47a8-bb26-a84961a07656	Cycling	[\n                {\n                    "key": "distance",\n                    "label": "Distance",\n                    "type": "float",\n                    "units": [\n                        "kms",\n                        "miles"\n                    ]\n                },\n                {\n                    "format": [\n                        "hr:min:sec"\n                    ],\n                    "key": "total_time",\n                    "label": "Total Time",\n                    "type": "int",\n                    "units": [\n                        "hrs:mins",\n                        "mins:secs"\n                    ]\n                },\n                {\n                    "format": [\n                        "hr:min:sec"\n                    ],\n                    "key": "moving_time",\n                    "label": "Moving Time",\n                    "type": "int",\n                    "units": [\n                        "hrs:mins",\n                        "mins:secs"\n                    ]\n                },\n                {\n                    "key": "moving_pace",\n                    "label": "Moving pace",\n                    "type": "int",\n                    "units": [\n                        "mins:kms",\n                        "mins:miles"\n                    ]\n                },\n                {\n                    "key": "avg_moving_speed",\n                    "label": "Avg Moving Speed",\n                    "type": "int",\n                    "units": [\n                        "kms:hr",\n                        "miles:hr"\n                    ]\n                },\n                {\n                    "key": "calories_burnt",\n                    "label": "Calories Burnt",\n                    "type": "int",\n                    "units": [\n                        "kcal"\n                    ]\n                },\n                {\n                    "key": "elevation",\n                    "label": "Elevation",\n                    "type": "int",\n                    "units": [\n                        "mtrs",\n                        "feet"\n                    ]\n                },\n                {\n                    "key": "avg_heart_rate",\n                    "label": "Avg Heart Rate",\n                    "type": "int",\n                    "units": [\n                        "bpm"\n                    ]\n                },\n                {\n                    "key": "difficulty",\n                    "label": "Difficulty",\n                    "type": "dropdown",\n                    "values": [{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]}\n            ]	\N	https://adrenaln-files.s3.amazonaws.com/icon_cycling.png
2022-10-11 08:01:32.628226+00	2022-10-11 08:01:32.628226+00	\N	f9329a67-61ea-4979-b333-0ad28abafa04	Swimming	[{"type": "dropdown", "label": "Strokes","key":"strokes", "values": [{"label": "Freestyle", "value": "freestyle"}, {"label": "Breaststroke", "value": "breaststroke"}]}\n,{"type":"float","label":"Distance","key":"distance","format":["hr:min:sec"],"units":["kms","miles"]}\n,{"type":"int","label":"Total Time","key":"total_time","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]},{"type":"","label":"Swimming Time","key":"swimming_time","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]},{"type":"int","label":"Avg Swin Speed","key":"avg_swim_speed","units":["kms","miles"]},{"type":"int","label":"Avg Heart Rate","key":"avg_heart_rate","units":["bpm"]},{"type":"dropdown","label":"Difficulty","key":"difficulty","values": [{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]},{"type":"int","label":"Calories Burnt","key":"calories_burnt","units":["kcal"]}]\n	\N	https://adrenaln-files.s3.amazonaws.com/group_121.png
2022-10-11 08:01:32.628226+00	2022-10-11 08:01:32.628226+00	\N	f25e969e-826b-4921-8d24-388f35ab774e	Cricket	[{"type": "text", "label": "Match/Team Name","key":"match/team_name"}\n,{"type":"int","label":"Number Of Overs","key":"number_of_overs"}, \n{"type":"int","label":"My Team Score","key":"my_team_score"},\n{"type": "dropdown", "label": "Result","key":"result", "values": [{"label": "Won", "value": "Won"}, {"label": "Lost", "value": "Lost"}]}\n,{"type":"float","label":"Duration","key":"duration","format":["hr:min:sec"],"units":["hrs:mins","mins:secs"]}\n,{"type": "text", "label": "My Batting Score","key":"my_batting_score"},\n{"type": "text", "label": "My Bowling Stats","key":"my_bowling_stats"},\n{"type":"dropdown","label":"Difficulty","key":"difficulty","values": [{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]},\n{"type":"float","label":"Calories Burnt","key":"calories_burned","units":["kcal"]}]	\N	https://adrenaln-files.s3.amazonaws.com/icon_cricket.png
2022-10-13 09:04:51.345825+00	\N	\N	18fa936e-97e6-49c6-9f29-d52ccccc18ec	Other Sports	[{\n                    "key": "distance",\n                    "label": "Distance",\n                    "type": "float",\n                    "units": [\n                        "kms",\n                        "miles"\n                    ]\n                },\n                {\n                    "format": [\n                        "hr:min:sec"\n                    ],\n                    "key": "total_time",\n                    "label": "Total Time",\n                    "type": "int",\n                    "units": [\n                        "hrs:mins",\n                        "mins:secs"\n                    ]\n                },\n                {\n                    "format": [\n                        "hr:min:sec"\n                    ],\n                    "key": "moving_time",\n                    "label": "Moving Time",\n                    "type": "int",\n                    "units": [\n                        "hrs:mins",\n                        "mins:secs"\n                    ]\n                },\n                {"type": "dropdown", "label": "Result","key":"result", "values": [{"label": "Won", "value": "Won"}, {"label": "Lost", "value": "Lost"}]},\n                {\n                    "key": "avg_moving_speed",\n                    "label": "Avg Moving Speed",\n                    "type": "int",\n                    "units": [\n                        "kms:hr",\n                        "miles:hr"\n                    ]\n                },\n                {\n                    "key": "calories_burnt",\n                    "label": "Calories Burnt",\n                    "type": "int",\n                    "units": [\n                        "kcal"\n                    ]\n                },\n                {\n                    "key": "elevation",\n                    "label": "Elevation",\n                    "type": "int",\n                    "units": [\n                        "mtrs",\n                        "feet"\n                    ]\n                },\n                {\n                    "key": "avg_heart_rate",\n                    "label": "Avg Heart Rate",\n                    "type": "int",\n                    "units": [\n                        "bpm"\n                    ]\n                },\n                {\n                    "key": "difficulty",\n                    "label": "Difficulty",\n                    "type": "dropdown",\n                    "values": [{"label": "Easy", "value": "easy"},{"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"},{"label": "Killer", "value": "killer"}]}\n            ]	\N	https://adrenaln-files.s3.amazonaws.com/logo ad.png
\.


--
-- Data for Name: master_betting_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.master_betting_items (created_at, update_at, deleted_at, id, name, image) FROM stdin;
2022-06-21 09:30:34.61147+00	\N	\N	4f8a74c6-5142-4f1b-9ca5-aa3e6fd690c6	Beer	{"media_id": "2fa1720c-ea16-48a7-bac6-542a0d9222d0", "media_type": "image", "path": "https://adrenaln-files.s3.amazonaws.com/Beer.png"}
2022-06-21 09:33:40.671485+00	\N	\N	cc92b610-4e1c-4312-969d-521fc8318838	Pizza	{"media_id": "946fcd17-850d-4c25-a91e-45c65848e5c8", "media_type": "image", "path": "https://adrenaln-files.s3.amazonaws.com/Pizza.png"}
2022-06-21 09:34:14.631518+00	\N	\N	f60c8eaf-2322-4e63-80d5-d4d840be776e	Donets	{"media_id": "a7f71dfe-4051-4317-a55d-3ccda306ff08", "media_type": "image", "path": "https://adrenaln-files.s3.amazonaws.com/Donets.png"}
2022-06-21 09:34:41.041578+00	\N	\N	b4a2f262-47dd-4423-a857-df77595a8816	Cinema	{"media_id": "06c60b41-aa17-4a39-91f3-d793fde2deea", "media_type": "image", "path": "https://adrenaln-files.s3.amazonaws.com/Cinema.png"}
2022-06-21 09:35:40.941516+00	\N	\N	4dd6a7bf-6620-4f6b-a170-fd8f3f5f09f3	Biryani	{"media_id": "de54c8f7-51b5-4f9b-85ad-9a534472ff07", "media_type": "image", "path": "https://adrenaln-files.s3.amazonaws.com/Biryani.png"}
\.


--
-- Data for Name: master_bucket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.master_bucket (created_at, update_at, deleted_at, id, name, key, category_type) FROM stdin;
2022-06-06 10:23:55.041843+00	\N	\N	193d12d4-110a-481f-941d-a6dbfb5f5d95	Bussiness & Influencer 	bussiness_influencer	bucket
2022-04-27 12:27:40.846064+00	\N	\N	19822f47-1b02-43e7-af8d-ff5c156b4a7e	India General	india_general	bucket
2022-06-06 10:12:28.971017+00	\N	\N	5b2991d7-4705-4086-88c9-a9bb9854736e	International Sport	international_sport	bucket
2022-06-06 10:11:23.612076+00	\N	\N	7e04afa2-0912-4471-b697-89d7d4fa8e6a	International Adrenln	international_adrenln	bucket
2022-06-06 10:13:20.947191+00	\N	\N	9b3fb684-354a-4d88-a55a-9a4f3f45a0db	International General	international_general	bucket
2022-04-27 12:28:47.961301+00	\N	\N	b40205f1-ef74-4e60-b46c-92268eff6213	India Sport	india_sport	bucket
2022-04-27 12:28:05.647035+00	\N	\N	dd8830af-389e-4990-be17-10e8984b50cd	India Adrenln	india_adrenln	bucket
2022-07-08 12:36:18.730664+00	\N	\N	f98de24e-71e0-4791-b5cb-431804f05c79	Email	email	email
2022-07-08 12:36:18.730664+00	\N	\N	4b5bb5eb-2e5e-4463-b9b0-4d6ef2326311	State	state	state
2022-07-08 12:36:18.730664+00	\N	\N	77737d1d-f0da-447e-a47b-845c3cdc578a	Broadcast	broadcast	broadcast
\.


--
-- Data for Name: master_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.master_course (created_at, update_at, deleted_at, id, name, field, level, media) FROM stdin;
2022-03-25 11:24:30.162809+00	\N	\N	093c9d4f-0de4-47c5-ab29-f9ddc773b8a2	Red Course	Time	[{"level": "supreme", "lt":300, "gt": 0}, {"level": "strong", "lt": 360, "gt": 299}, {"level": "fit", "lt":43200, "gt": 361}]	 { "media_id": "b6754c57-f510-4420-b632-ecd3a607ec88",\n            "media_type": "video",\n            "path": "https://adrenaln-files.s3.amazonaws.com/ForBiggerBlazes.mp4"\n        }
2022-06-06 12:07:44.502576+00	\N	\N	1672d31c-c236-4bf3-be4c-21649a6a0059	Green Course	Time	[{"level": "supreme", "lt":300, "gt": 0}, {"level": "strong", "lt": 360, "gt": 299}, {"level": "fit", "lt":43200, "gt": 361}]	{   "media_id": "a56e174a-6ea6-4404-b0be-4c07de0c9f90",\n            "media_type": "video",\n            "path": "https://adrenaln-files.s3.amazonaws.com/ForBiggerJoyrides.mp4"\n        }
2022-03-25 11:30:05.099781+00	\N	\N	7b643ea9-6c19-4b72-be84-2e5d214a41e6	Blue Course	Time	[{"level": "supreme", "lt":300, "gt": 0}, {"level": "strong", "lt": 360, "gt": 299}, {"level": "fit", "lt": 43200, "gt": 361}]	{  "media_id": "2e7e43c2-81da-43f0-8538-8f81d941bbae",\n            "media_type": "video",\n            "path": "https://adrenaln-files.s3.amazonaws.com/ForBiggerMeltdowns.mp4"\n        }
\.


--
-- Data for Name: master_health_parameters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.master_health_parameters (created_at, update_at, deleted_at, id, name, user_id, unit, healthprofile_id, sorting_position, good_range_start, good_range_end, average_range_start, average_range_end) FROM stdin;
2022-04-07 11:18:08.649586+00	\N	\N	d04faa2a-6c23-4ce0-b130-b8d2b8c33942	Weight	\N	(kgs)	\N	1	\N	\N	\N	\N
2022-04-07 11:08:48.000554+00	\N	\N	2f7efe4a-ad85-4c0c-bc55-96d634efd792	Height	\N	(ft.inchs)	\N	2	\N	\N	\N	\N
2022-04-07 11:20:14.867499+00	\N	\N	4fed36e8-3551-4de1-9c42-34d9f2685a6f	Total Fat	\N	(%)	\N	3	10	24	25	30
2022-04-07 11:21:16.851835+00	\N	\N	b0972c24-f3e5-41c5-996a-8ca176ab4a74	BMI	\N	(kg/m2)	\N	4	19	25	26	35
2022-04-07 11:22:36.716352+00	\N	\N	936cf04d-dd4b-4384-b2c8-b7ba376da000	Resting Heart Rate	\N	(bpm)	\N	5	60	100	0	0
2022-04-07 11:23:53.991737+00	\N	\N	06198009-5222-4cfe-8f06-47001cc597cc	Cholesterol	\N	(mg/dl)	\N	6	1	200	201	239
2022-11-30 06:36:39.740116+00	\N	\N	8d23eee4-9c32-4672-bcfb-97eabb3aa1f4	HDL	\N	(mg/dl)	\N	7	40	200	0	0
2022-11-30 07:16:09.391734+00	\N	\N	0b7542d0-c626-420d-b85e-ed5761dbfc3a	LDL	\N	(mg/dl)	\N	8	1	100	101	130
2022-04-07 11:24:49.937854+00	\N	\N	6394beac-8d99-465b-9d0d-8985f83a5f73	Triglycerides	\N	(mg/dl)	\N	9	1	150	151	200
2022-04-07 11:25:20.567872+00	\N	\N	481aab59-cdaf-442b-afbb-a0d19bf98674	Glucose	\N	(mg/dl)	\N	10	1	100	101	125
2022-12-01 06:20:19.306667+00	\N	\N	46ad2552-1e9e-4c2c-9639-98e963e84cbc	Haemoglobin	\N	(g/dl)	\N	11	13	17	0	0
2022-12-01 06:21:27.300929+00	\N	\N	51783333-8acd-4d28-8e00-23a7fa3c86fc	Creatinine	\N	(mg/dl)	\N	12	13	30	31	60
2022-12-01 06:22:25.652852+00	\N	\N	696d546a-e728-4d45-be1b-9e26b1c2f54e	Total Bilirubin	\N	(mg/dl)	\N	14	1	20	0	0
2022-12-01 06:21:59.621798+00	\N	\N	ceb884fd-5be7-4588-99e0-70179df3c86a	Total Protein	\N	(g/dl)	\N	13	6	8	0	0
2024-02-14 19:19:41.393439+00	\N	\N	184e4887-f258-423d-9be8-ec1580ec8ea0	RRRR	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	\N	\N	\N	\N	\N	\N	\N
2024-02-25 17:37:56.059977+00	\N	\N	3dae45d5-4bf6-43a9-ba65-0b4cfa699311	RRR	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	\N	\N	\N	\N	\N	\N	\N
2024-02-25 17:42:43.676097+00	\N	\N	b36faa88-4425-4e3c-a571-d13e7afc6656	123RRR	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: master_programs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.master_programs (created_at, update_at, deleted_at, id, name) FROM stdin;
2022-05-17 08:48:27.335341+00	\N	\N	adaca7cf-e6e5-4ff4-b594-8be321ec820a	Physiotherapy
2022-05-17 08:48:33.855209+00	\N	\N	49e177e8-ee0f-4f96-a587-e466a7c7f687	Medical Doctor
2022-05-17 08:48:38.435348+00	\N	\N	66f7bdcf-53c0-42f7-8295-12a52c57c3c5	Sports Massage
2022-05-17 08:49:31.355515+00	\N	\N	c4e32ca3-acbb-4240-861b-c774a12d6764	Yoga & Meditation
2022-06-14 07:08:51.897158+00	\N	\N	51ffc56b-ccdb-46c6-8183-35bc77f2cd38	Running
2022-06-14 07:09:52.773237+00	\N	\N	809ab87f-e2c2-4b10-8696-ef985f8cfc2e	Triathlon & Iron Man
2022-06-14 07:10:23.318266+00	\N	\N	f9b055fc-0863-4a82-9a17-3edfa92e134e	Cycling
2022-06-14 07:11:01.477372+00	\N	\N	9a6b47ef-c98a-4842-8deb-6209510bf925	Martial Arts
2022-06-14 07:11:40.187445+00	\N	\N	51726321-e05c-4483-91b1-4e6abf4cf13c	Strength Training (weights & freestyle)
2022-06-14 07:12:13.707569+00	\N	\N	235485e3-5b0c-4691-aa0e-40ea9003c900	Racket Sports
2022-06-14 07:12:45.157526+00	\N	\N	7d535bf9-4dda-441b-95d4-48f0f215d604	Swimming
2022-06-14 07:13:12.687654+00	\N	\N	5da6057f-42cd-4f54-8d88-371506331429	Cricket
2022-06-14 07:13:36.368744+00	\N	\N	656d80d0-876a-400f-b70a-8032d2f834e3	Football
2022-06-14 07:14:04.967779+00	\N	\N	196e6e6d-6089-458b-abc6-85ba0a0832ed	Trekking & Adventure Sports
2022-06-14 07:14:31.06773+00	\N	\N	b1e51692-eede-483e-92f7-cae9de40a291	Gymnastics & Aerobics
2022-06-14 07:15:03.367798+00	\N	\N	a7e2b02e-e2f2-4388-8e4a-befb07ad4dcb	Dance
2022-05-17 08:48:16.215087+00	\N	\N	cf3b3946-5cbd-4188-be67-f67b99703082	Diet/Weight management
\.


--
-- Data for Name: master_sport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.master_sport (created_at, update_at, deleted_at, id, name, logo, fields) FROM stdin;
2022-06-24 11:18:07.617249+00	\N	\N	0da5b280-e4e1-4ab2-9444-36d3445d9189	Golf	https://adrenaln-files.s3.amazonaws.com/fill_29.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"My handicap","key":"handicap"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	13f83a5f-3836-4692-88f9-c98916a295da	Rugby	https://adrenaln-files.s3.amazonaws.com/group_158.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	9709922d-3bc5-43de-9c5b-cd4711d058eb	Running -Iron Man 	https://adrenaln-files.s3.amazonaws.com/Ironman ICON.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},{"type":"text","label":"Swimming (Distance, Time)","key":"swimming (Distance, Time)"},\n{"type":"text","label":"Running (Distance, Time)","key":"running (distance,time)"},\n{"type":"text","label":"Cycling (Distance, Time)","key":"cycling (Distance, Time)"},\n  {"type":"text","label":"Best iron man timing(Half, Full)","key":"iron_man_timing(half, full)"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	2022-06-24 11:25:22.496647+00	0873d609-0fb4-4cf9-bc83-adbbb086310c	Mountaineering	https://adrenaln-files.s3.amazonaws.com/group_165.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	ed74afb1-8408-4e2b-916a-b18705df8951	Gyming	https://adrenaln-files.s3.amazonaws.com/group_160.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"My favorite routine","key":"favorite_routine"}]\n
2022-06-24 10:04:38.306039+00	\N	\N	383590e2-ddef-4fde-b98b-01de74565e36	Archery	https://adrenaln-files.s3.amazonaws.com/group_115.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	a305cb26-80fd-4c77-bef6-26ccefe3172f	Rock climbing	https://adrenaln-files.s3.amazonaws.com/-rock-climbing-.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]}]
2022-06-24 11:18:07.617249+00	\N	\N	c0dbb44d-05d4-42bb-ae3b-8d3070ca7fbf	Dancing - General	https://adrenaln-files.s3.amazonaws.com/-dancing-.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},{"type":"text","label":"My specialisation","key":"specialisation"},\n{"type":"text","label":"Events i have taken part in","key":"events"}]
2022-06-24 11:25:22.496647+00	\N	\N	795ec07a-bc29-49ad-9a65-bfd5e821aa68	Running - Track & Field Events	https://adrenaln-files.s3.amazonaws.com/group_122.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"My discipline","key":"my discipline"},{"type":"text","label":"Best result ","key":"best result"}\n,{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	fa8aac81-c513-4abf-9fb8-67298cd87ef9	Dancing - Indian Classical	https://adrenaln-files.s3.amazonaws.com/Bharatanatyam.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},{"type":"text","label":"My specialisation","key":"specialisation"},\n{"type":"text","label":"Concerts i have taken part in","key":"concerts"}]
2022-06-24 11:25:22.496647+00	\N	\N	ae306c50-b332-492e-95a4-23823ba0ed27	Running - Full Marathoner	https://adrenaln-files.s3.amazonaws.com/icon_running.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]}\n\n,{"type":"text","label":"Best full marathon timing","key":"full_marathon_timing"}\n,{"type":"text","label":"Best half marathon timing","key":"half_marathon_timing"},{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:10:32.317283+00	\N	\N	4a958437-1d77-4702-8ef1-341df8a235f0	Baseball	https://adrenaln-files.s3.amazonaws.com/group_173.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:10:32.317283+00	2022-06-24 11:10:32.317283+00	2022-06-24 11:10:32.317283+00	b9299855-c159-4fb0-a569-3c56867ccd2b	Bowling (9 pins)	https://adrenaln-files.s3.amazonaws.com/bowling.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions Taken Part In","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	17d5bcf4-1687-4b09-817a-a9d97654af3f	Yoga	https://adrenaln-files.s3.amazonaws.com/Group (1).png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Branch of yoga","key":"branch"}\n,{"type":"text","label":"Courses done","key":"courses"}\n,{"type":"text","label":"Teaching profile","key":"teaching_profile"}]
2022-06-24 11:25:22.496647+00	\N	\N	23565edb-ec80-462f-a356-6c38f5c9709f	Weight lifting	https://adrenaln-files.s3.amazonaws.com/group_160.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"My disciplines","key":"disciplines"},\n{"type":"text","label":"Best result","key":"best_result"},\n{"type":"text","label":"Event name","key":" event_name"},\n{"type":"text","label":"Weight","key":"weight"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:10:32.317283+00	\N	\N	bea60ffa-09b1-43ff-8ba4-7d6b1f1c8bf1	Boxing	https://adrenaln-files.s3.amazonaws.com/group_180.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	2b897cad-64a8-4a34-92cf-3cafdf1fdd71	Rowing, Rafting 	https://adrenaln-files.s3.amazonaws.com/group_182.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]}]
2022-06-24 11:10:32.317283+00	\N	\N	ebb85ec0-7148-4ec8-ab68-5a11f0c3b6e6	Cycling	https://adrenaln-files.s3.amazonaws.com/icon_cycling.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Cycling tours","key":"cycling_tours"}\n,{"type":"text","label":"BRM statistics","key":"brm_Statistics"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-10 06:03:27.106546+00	\N	\N	3f714bfd-8070-479a-be3a-edfe775c922f	Badminton	https://adrenaln-files.s3.amazonaws.com/group_176.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	fcc03986-8885-45a6-ac12-79477a8473ac	Poker	https://adrenaln-files.s3.amazonaws.com/poker.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-11-17 06:02:22.281728+00	\N	\N	bf2af396-465b-49c6-ac8c-93163d8ac7d9	Others	https://adrenaln-files.s3.amazonaws.com/logo ad (2).png	[{"type":"text","label":"Name of sport","key":"name_of_sport"},\n{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},{"type":"text","label":"Best result","key":"best_result"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	98c8c01b-5306-412d-9358-851301fc6df3	Motor Sports	https://adrenaln-files.s3.amazonaws.com/group_188.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Type of racing","key":"racing_type"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]\n
2022-06-24 11:25:22.496647+00	\N	\N	0bdce9fd-848d-499b-8fd5-637971d5ac76	Sailing	https://adrenaln-files.s3.amazonaws.com/group_125.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:10:32.317283+00	\N	\N	0350f560-6c64-45aa-90cc-7d3e360e11f7	Cycling - BMX	https://adrenaln-files.s3.amazonaws.com/group_152.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]}]\n  
2022-03-28 05:14:39.737101+00	\N	\N	1cb7a501-86fb-440d-943c-4ec6bf30342d	Cricket	https://adrenaln-files.s3.amazonaws.com/cricket.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"My specialisation","key":"specialisation"},\n{"type":"text","label":"I play for","key":"play_for"},\n{"type":"text","label":"My best statistics are","key":"statistics"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]\n
2022-06-24 11:25:22.496647+00	\N	\N	087bfd5a-aab1-4cb9-b53d-6d7dd25d0610	Wrestling	https://adrenaln-files.s3.amazonaws.com/group_149.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	82219344-6951-4fe6-a5a7-a550f3e589da	Tennis	https://adrenaln-files.s3.amazonaws.com/group_116.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	2022-06-24 11:18:07.617249+00	1cc13b48-7370-4d7d-8b9c-116028f6eb00	Martial Arts - Karate\n	https://adrenaln-files.s3.amazonaws.com/fill_25.png	 [{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},{"type":"text","label":"Type of martial arts","key":"type_of_martial_arts"},\n  {"type":"text","label":"My dan (Belt)","key":"my_dan (Belt)"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]\n 
2022-06-24 11:10:32.317283+00	\N	\N	ac1324fd-f486-4926-bf70-0027a8015d6e	Football (american)	https://adrenaln-files.s3.amazonaws.com/group_158.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	049493dc-1e3d-4f11-94b1-60b65aa3d14b	Skateboarding, Roller blading	https://adrenaln-files.s3.amazonaws.com/group_167.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:10:32.317283+00	\N	\N	04f0e960-b7e5-4101-b1a3-9bde1b047a7a	Chess	https://adrenaln-files.s3.amazonaws.com/Chess.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:10:32.317283+00	\N	\N	0b00a0f7-426a-4ea3-a044-aa847377b537	Basketball	https://adrenaln-files.s3.amazonaws.com/group_75.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	415ab928-7dff-41f8-a2d4-78e96a29f8f4	Horse Polo	https://adrenaln-files.s3.amazonaws.com/group_186.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	378c4114-10e7-4c74-bd49-d40b83368dfb	Skiing	https://adrenaln-files.s3.amazonaws.com/fill_85.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	2022-06-24 11:18:07.617249+00	2022-06-24 11:18:07.617249+00	356adf53-0f0c-46c9-9990-bf69bdef041d	Dancing - Kathak	https://adrenaln-files.s3.amazonaws.com/Kathak (1).svg	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Concerts i have taken part in","key":"concerts"}]
2022-06-24 11:18:07.617249+00	\N	\N	37be2fe0-4e63-4c6d-b62d-e3945054e02a	Gyming - Cross Fit	https://adrenaln-files.s3.amazonaws.com/group_88.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"My favorite routine","key":"favorite_routine"}]\n
2022-03-28 05:17:00.871825+00	\N	\N	2cb7a501-86fb-440d-493c-4ec6bf39342d	Football (soccer)	https://adrenaln-files.s3.amazonaws.com/group_189.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"The position i generally play in is","key":"position"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]\n
2022-06-24 11:25:22.496647+00	\N	\N	2e37d2fe-4cae-411c-94f5-895afe1f02a8	Shooting	https://adrenaln-files.s3.amazonaws.com/fill_65.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"My events are","key":"events"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]\n
2022-06-24 11:25:22.496647+00	\N	\N	b09eebff-df78-42d5-852e-1cd2bc73c27a	Volleyball	https://adrenaln-files.s3.amazonaws.com/group_171.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:10:32.317283+00	\N	\N	4d44d97b-0acb-425f-a47c-9815afe3c8c0	Fencing	https://adrenaln-files.s3.amazonaws.com/fill_45.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	ee638888-8d88-4a98-963b-1198e8ad4a2d	Water polo	https://adrenaln-files.s3.amazonaws.com/group_124.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in ","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	9396eca3-ef26-4b17-81f4-ea37e1d0bb69	Swimming	https://adrenaln-files.s3.amazonaws.com/group_121.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"My strokes","key":"strokes"},\n\n{"type":"text","label":"Distance","key":"distance"},{"type":"text","label":"Time","key":"time"},{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	7d762a36-e20c-4b32-ab77-db9dcf6b02d9	Running	https://adrenaln-files.s3.amazonaws.com/fill_55.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"10 km timing","key":"10cm_timing"},{"type":"text","label":"Best full marathon timing","key":"full_marathon_timing"}\n,{"type":"text","label":"Best half marathon timing","key":"half_marathon_timing"}\n,{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	55fccf5a-106c-428d-a47a-93b7f0e7fd8f	Squash	https://adrenaln-files.s3.amazonaws.com/group_116.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	e929daea-4cb1-4aa2-ba23-70b9997af7a5	Hockey	https://adrenaln-files.s3.amazonaws.com/group_130.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	2022-06-24 11:18:07.617249+00	5d00e9f8-6c7c-451d-8bfe-763a3216b922	Martial Arts - Mixed Martial Arts	https://adrenaln-files.s3.amazonaws.com/group_148.png	 [{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},{"type":"text","label":"Type of Martial Arts","key":"type_of_martial_arts"},\n  {"type":"text","label":"My Dan","key":"my_dan"},\n  {"type":"text","label":"Belt","key":"belt"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:10:32.317283+00	\N	\N	d029f213-ea9b-4bbe-9cb7-2802f5ef0d70	Carrom	https://adrenaln-files.s3.amazonaws.com/carrom.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	2022-06-24 11:18:07.617249+00	418f9ae3-23ec-4eb2-a1b2-4a41bde4b589	Martial Arts - Judo	https://adrenaln-files.s3.amazonaws.com/group_170.png	 [{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n  {"type":"text","label":"My dan(Belt)","key":"my_dan(Belt)"},{"type":"text","label":"type of martial Arts","key":"type_of_martial_arts"}]
2022-06-24 11:18:07.617249+00	\N	\N	ee8932f7-6181-4d46-b45f-1fd9d5859dd7	Handball	https://adrenaln-files.s3.amazonaws.com/group_185.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]}]
2022-06-24 11:25:22.496647+00	\N	\N	60e608ee-940f-4789-9d56-afa06d48bab0	Running -Triathlete	https://adrenaln-files.s3.amazonaws.com/Triathlete.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]}\n,{"type":"text","label":"Swimming (Distance, Time)","key":"swimming (Distance, Time)"},\n{"type":"text","label":"Running (Distance, Time)","key":"running (Distance, Time)"},\n{"type":"text","label":"Cycling (Distance, Time)","key":"cycling (Distance, Time)"},{"type":"text","label":"Best triathlete timing","key":" triathlete_timing"},{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	42eef085-0868-4918-9f08-fa36c9c2f014	Trekking, Mountaineering	https://adrenaln-files.s3.amazonaws.com/group_76.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Treks undertaken","key":"treks_undertaken"}]
2022-06-24 11:18:07.617249+00	\N	\N	483b5074-7b54-4cc7-9883-dc88c481756f	Kabaddi	https://adrenaln-files.s3.amazonaws.com/kabaddi.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	49d153c4-bff5-4781-a878-5b9c6f6a85e3	Surfing	https://adrenaln-files.s3.amazonaws.com/group_79.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:25:22.496647+00	\N	\N	4accff6d-0efa-4b69-b42d-af49a799c782	Table tennis	https://adrenaln-files.s3.amazonaws.com/group_161.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	2022-06-24 11:18:07.617249+00	21c13b65-42a4-4145-9141-1de89314738f	Dancing - Bharatanatyam	https://adrenaln-files.s3.amazonaws.com/Bharatanatyam.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Concerts I have taken part in","key":"concerts"}]
2022-06-24 11:25:22.496647+00	\N	2022-06-24 11:25:22.496647+00	edaf7f79-260b-4ad5-8316-0ed2fa48da36	Track & Field Events	https://adrenaln-files.s3.amazonaws.com/Track & Field.png	 [{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},{"type":"text","label":"My Disciplines:","key":"disciplines:"},{"type":"text","label":"Best Result","key":"result"},{"type":"text","label":"Event","key":"event"},{"type":"text","label":"Competitions Taken Part In","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	2022-06-24 11:18:07.617249+00	4e2b2544-5063-4aa7-b31a-67ca18d0c476	Motor cycle racing, driving	https://adrenaln-files.s3.amazonaws.com/group_188.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Type Of Racing","key":"racing_type"},\n{"type":"text","label":"Competitions Taken Part In","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	38d69983-3c03-44e6-8120-2da373da731a	Gymnastics	https://adrenaln-files.s3.amazonaws.com/group_174.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Disciplines i participate in ","key":"disciplines"}]
2022-06-24 11:10:32.317283+00	\N	\N	f5d6fd6a-2b41-43f9-8c34-57a9aa52fffb	Equestrian 	https://adrenaln-files.s3.amazonaws.com/group_159.png	[{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
2022-06-24 11:18:07.617249+00	\N	\N	a9b3d182-142e-4486-913d-3e380eb20dbe	Martial Arts 	https://adrenaln-files.s3.amazonaws.com/Karate.png	 [{"type":"text","label":"My playing level","key":"playing_level","options":[\n    {"name": "Recreational", "id":"recreational"},\n    {"name": "Performance", "id":"performance"},\n    {"name": "Competition", "id":"competition"},\n    {"name": "National", "id":"national"},\n    {"name": "World Champion", "id":"worldchampion"}\n  ]},{"type":"text","label":"Type of martial arts","key":"type_of_martial_arts"},\n  {"type":"text","label":"My dan (belt)","key":"my_dan (belt)"},\n{"type":"text","label":"Competitions taken part in","key":"competitions"}]
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.media (created_at, update_at, deleted_at, id, file_size, source_type, user_id, source_id, path, type, thumbnail_url) FROM stdin;
2024-02-27 11:17:14.064356+00	\N	\N	ec697a29-1ae3-4942-bec3-ffd6c6000044	257577	gallery	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	\N	https://adrenalnbucket.s3.amazonaws.com/zeus.jpeg	image	\N
2024-02-27 12:05:03.751883+00	\N	\N	a7815a06-a6c8-48ca-80fd-0a0c062113c4	4161	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_5d1f1006-b4e0-456b-b48a-6ed10286b242.jpg	image	\N
2024-02-27 12:14:06.527002+00	\N	\N	72b365f3-729c-4936-81c6-656ab3b3fa29	4161	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_95a53dac-73c9-465b-a607-ecd320ffadc5.jpg	image	\N
2024-02-27 12:18:41.81715+00	\N	\N	c75f294d-5bc3-4c2d-86b0-d7ee67afe6be	4161	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_4208513f-64c8-45b0-aba5-34b732ed8ec5.jpg	image	\N
2024-02-27 12:19:52.228056+00	\N	\N	b6039148-ccfc-4db7-a809-58aa05f5015b	4161	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_7285cdc8-5327-4679-bf2f-c79f6747d2d9.jpg	image	\N
2024-02-27 12:45:30.707+00	\N	\N	a02f1481-c543-460a-a376-5cd4adb3964d	16262	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_050aad1b-ceaf-4073-acfb-81fa15de9922.jpg	image	\N
2024-02-27 13:00:11.496963+00	\N	\N	a2341d09-2a71-4a70-97c9-465a7cb060ef	61534	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_6c64feb0-09d3-4e09-99e4-4efa748ae15e.jpg	image	\N
2024-02-29 09:37:25.242253+00	\N	\N	76bfaca6-725d-459b-bb85-109f3d5d8258	138642	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_c1b592eb-61f1-48d2-ad50-f19cc0891853.jpg	image	\N
2024-02-29 09:48:34.238513+00	\N	\N	223bb570-3bd8-4bd4-b23c-0e95a2ac1fb4	84691	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/b5e25f01-bdac-4a7b-ad9a-1c24d9a46c60.jpg	image	\N
2024-02-29 09:56:27.531162+00	\N	\N	8f807901-3f26-484c-9448-ffa6bc995178	85152	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/afaa8cc8-8aa8-4f83-9af0-e0b6a3e0b799.jpg	image	\N
2024-02-29 09:57:25.753129+00	\N	\N	eca28b36-6141-4ce9-8b64-95913d0b71ca	62198	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_6e183751-f202-45f6-8649-e175da35bfc9.png	image	\N
2024-02-29 10:00:39.097263+00	\N	\N	eb6aa096-c804-4873-a073-4760252cba6a	5209	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/ReactNative-snapshot-image6739297672786670147.jpg	image	\N
2024-02-29 10:02:58.829581+00	\N	\N	5977f346-b4ae-49d5-9b5f-5838d625f90c	84691	gallery	7c28a321-9ae7-4923-94a8-070feb58955d	\N	https://adrenalnbucket.s3.amazonaws.com/7c28a321-9ae7-4923-94a8-070feb58955d/fe5d62cc-cf18-4c85-ab3c-27ec92d2cf4f.jpg	image	\N
2024-02-29 10:04:14.269028+00	\N	\N	4a321c8b-7c90-465c-9020-32bf7bb3288b	114229	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/5854dc2c-7b3e-46b2-aa84-a51e448750be/f83cdd77-6380-4cac-9767-56efbf3498e3.jpg	image	\N
2024-02-29 10:07:08.300145+00	\N	\N	473ae129-908f-40c3-b91b-83400d33da69	180560	gallery	7c28a321-9ae7-4923-94a8-070feb58955d	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_52b0965d-3e16-46fb-b491-c3cb2819fed4.jpg	image	\N
2024-03-04 05:31:39.306918+00	\N	\N	9c07e423-23b1-46e5-9c51-b11852f7ed15	59367	gallery	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_558fdb20-c0ac-41ad-916b-7eae6193c1cf.jpg	image	\N
2024-03-06 07:45:00.463836+00	\N	\N	6667801d-5309-42b5-9c46-0a769a0d7e9b	280717	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_66ca4964-2a90-488a-828e-361e0c430809.jpg	image	\N
2024-03-06 08:36:52.094767+00	\N	\N	daa58d96-603d-4787-81fe-b54b1f574548	137810	gallery	b9117901-96ad-4b87-b47a-2f9aa6575fb6	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_416605ea-fc31-4fd8-ad4a-bb2f1fabda2a.jpg	image	\N
2024-03-06 08:50:18.718108+00	\N	\N	f49fdbe1-69f0-4455-a7d1-b7617cdd4e54	250048	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_4100b5a9-a7fd-4243-a62b-694d90e71b25.jpg	image	\N
2024-03-06 08:54:20.406291+00	\N	\N	7ee271a7-da34-473a-9521-368604c476db	110990	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/video:255	video	\N
2024-03-06 09:51:20.530658+00	\N	\N	c43f2491-462c-47ad-9b56-546289f4ee6d	86395	gallery	b9117901-96ad-4b87-b47a-2f9aa6575fb6	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_d7767d16-af6f-4bc7-aa9d-d100813aec13.jpg	image	\N
2024-03-06 09:56:54.212153+00	\N	\N	51d4661c-2b1d-4ff2-876d-5b23660d5b8d	2744	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/ReactNative-snapshot-image3402889622072459326.jpg	image	\N
2024-03-06 10:06:33.573563+00	\N	\N	c48b325a-790d-4a08-bd4e-6f2c91f71169	140505	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_ac7262b8-253a-4e6f-8ec3-b20b2a28ba0b.jpg	image	\N
2024-03-07 10:41:28.566634+00	\N	\N	8f40b8c0-96de-441f-bf9b-efd9a2140cd8	51415	gallery	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	https://adrenalnbucket.s3.amazonaws.com/ishaan picture.jpeg	image	\N
2024-04-25 19:25:33.757545+00	\N	\N	c02d7b53-abba-4390-a2b0-06786fbb9598	153029	gallery	7c28a321-9ae7-4923-94a8-070feb58955d	\N	https://adrenalnbucket.s3.amazonaws.com/1000097771.jpg	image	\N
2024-04-26 04:36:43.827163+00	\N	\N	02541706-f960-4e05-97bd-2654a22496f7	2892294	gallery	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240407-WA0156-01.jpeg	image	\N
2024-04-26 04:36:44.803047+00	\N	\N	a5451563-cc58-4849-8472-337723c6e9a0	2892294	gallery	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240407-WA0156-01.jpeg	image	\N
2024-04-26 04:36:45.418064+00	\N	\N	be256f8b-a07f-4db9-aeb1-bf8ff3321d5e	2892294	gallery	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240407-WA0156-01.jpeg	image	\N
2024-04-26 04:36:45.751862+00	\N	\N	0c02dad4-49a8-46c7-ba7e-da404925d650	2892294	gallery	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240407-WA0156-01.jpeg	image	\N
2024-05-03 06:15:50.591879+00	\N	\N	62ea343a-1fee-420b-9ba2-3d3373cef22f	294779	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/edbbcad5df4dca81cc3770dfd9cc084b.jpg	image	\N
2024-05-09 06:04:43.033719+00	\N	\N	c875e591-ca96-4a4e-8cef-dc8c35f03e21	40076	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240502-WA0001.jpg	image	\N
2024-05-09 07:30:34.117766+00	\N	\N	cc6cf775-db17-4fa1-bffd-bc14024b052e	642537	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240501-WA0005.jpg	image	\N
2024-05-09 07:36:13.624728+00	\N	\N	80f9d73b-e67e-4215-bb7c-e67b34c44b0a	152417	gallery	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	https://adrenalnbucket.s3.amazonaws.com/ojas snapshot.jfif	image	\N
2024-05-09 10:43:58.058202+00	\N	\N	a3eede79-360c-4367-bcee-ebcb5e81870d	166290	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240502-WA0002.jpg	image	\N
2024-05-10 11:44:35.318568+00	\N	\N	2936692c-570d-4e7f-9fc5-cad82855c09e	78009	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/Screenshot_2024-05-08-13-31-32-258_com.adrenaln.development.jpg	image	\N
2024-05-10 11:45:18.726696+00	\N	\N	0aa1d6d1-34ac-4b5a-b9d3-ed3908998d9b	86569	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240502-WA0000.jpg	image	\N
2024-05-16 11:05:35.356043+00	\N	\N	514927e1-b7da-4d56-af22-56d90b25cee9	7754	gallery	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	https://adrenalnbucket.s3.amazonaws.com/gowebknot_logo.jfif	image	\N
2024-05-16 11:35:20.369311+00	\N	\N	30ee18f0-04e6-40e9-9470-42073f9085fe	83575	gallery	cb086201-ede7-42fb-856e-d250a66d40b6	\N	https://adrenalnbucket.s3.amazonaws.com/cb086201-ede7-42fb-856e-d250a66d40b6/fed816f8-9d38-4c9c-9505-2d79ee201ab4.jpg	image	\N
2024-05-16 11:47:47.562093+00	\N	\N	39f23c5e-af86-4350-bb66-c695d007ca3d	7754	gallery	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	https://adrenalnbucket.s3.amazonaws.com/gowebknot_logo.jfif	image	\N
2024-05-16 12:20:55.598548+00	\N	\N	6d956ba1-10f8-4da6-b96b-57bdeb4bbad9	28938	gallery	cb086201-ede7-42fb-856e-d250a66d40b6	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240427-WA0006.jpg	image	\N
2024-05-16 12:51:39.767833+00	\N	\N	091c1c62-020e-435b-8216-a18179a193fd	22033150	gallery	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	\N	https://adrenalnbucket.s3.amazonaws.com/VID-20240502-WA0003.mp4	video	\N
2024-06-03 13:23:21.449158+00	\N	\N	5c8140dc-e307-44c6-a5d8-e6a71d3a513b	1632266	gallery	93f47453-622d-4f4c-9208-093193669900	\N	https://adrenalnbucket.s3.amazonaws.com/ca64e2b1-1024-4d1b-b9de-a5bef98ae2e8.jpg	image	\N
2024-06-03 13:24:16.313351+00	\N	\N	451b5f51-e74b-4793-a406-a455351c48f0	1632266	gallery	93f47453-622d-4f4c-9208-093193669900	\N	https://adrenalnbucket.s3.amazonaws.com/ca64e2b1-1024-4d1b-b9de-a5bef98ae2e8.jpg	image	\N
2024-06-03 13:31:55.295393+00	\N	\N	5d61742b-311b-45dd-ac3e-47cce651a7df	22033150	gallery	93f47453-622d-4f4c-9208-093193669900	\N	https://adrenalnbucket.s3.amazonaws.com/VID-20240502-WA0003.mp4	video	\N
2024-06-03 13:33:49.476293+00	\N	\N	fc1416a2-9cc7-4acd-a256-656ea9edc8f6	28938	gallery	93f47453-622d-4f4c-9208-093193669900	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240427-WA0006.jpg	image	\N
2024-06-04 11:27:45.756508+00	\N	\N	db309cf1-b841-4fdf-9e0e-a73a5e102e3c	190650	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0005.jpg	image	\N
2024-06-04 11:29:10.432743+00	\N	\N	97323e6c-dd9d-4a67-a8e3-cb2a9908aa11	77754	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0003.jpg	image	\N
2024-06-04 11:30:19.823479+00	\N	\N	f0427166-1d2e-42fd-89f8-60e357677b3b	75953	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0004.jpg	image	\N
2024-06-04 11:30:49.278452+00	\N	\N	921b4be2-224a-450c-a89e-14dc6ed1fd87	190650	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0005.jpg	image	\N
2024-06-04 11:38:34.780062+00	\N	\N	6e3df00e-0bf5-40ac-982b-eab05904be5c	104710	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/f039da77-98d1-4ef2-bb2a-72faaec7c494/7d9cddc3-c832-4fe7-b57c-4d3ec1746310.jpg	image	\N
2024-06-05 09:59:22.714294+00	\N	\N	bf6304a6-5471-4fc1-b7d7-cf527acaf410	5028967	gallery	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	https://adrenalnbucket.s3.amazonaws.com/IMG_20240507_180537-01.jpeg	image	\N
2024-06-05 11:33:09.856306+00	\N	\N	d33776bb-8140-4ab0-9cf2-6903be07f464	388271	gallery	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	https://adrenalnbucket.s3.amazonaws.com/1000005868.jpg	image	\N
2024-06-05 12:44:23.399334+00	\N	\N	3723ca26-669a-47bd-8162-9d4f142f71f2	6269975	gallery	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	https://adrenalnbucket.s3.amazonaws.com/IMG_20240426_174219-01.jpeg	image	\N
2024-06-06 13:49:21.384118+00	\N	\N	369f002d-1237-4259-a51f-0eba4b34a133	4197055	gallery	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	https://adrenalnbucket.s3.amazonaws.com/IMG_20240414_102423-01.jpeg	image	\N
2024-06-03 13:34:59.015433+00	\N	\N	86fb10ec-b7a0-4654-9d09-91b1e707ee9c	40076	gallery	93f47453-622d-4f4c-9208-093193669900	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240502-WA0001.jpg	image	\N
2024-06-04 11:20:00.052025+00	\N	\N	25fd764d-6d45-4486-8e32-c54c26547b83	75953	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0004.jpg	image	\N
2024-06-04 11:25:09.79126+00	\N	\N	78b70fea-23e2-4279-9200-34d3a86c8c1b	112637	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0007.jpg	image	\N
2024-06-04 11:26:26.29986+00	\N	\N	0f9d1be1-d94d-47b8-8fdc-2e3c1c8bc287	114269	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0006.jpg	image	\N
2024-06-04 11:31:33.126174+00	\N	\N	9df1876d-0297-47cf-8579-4cdbb86cd36a	112637	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0007.jpg	image	\N
2024-06-04 11:32:09.544861+00	\N	\N	f9ad84cd-8396-4ea1-8c75-d72f5042b438	75953	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0004.jpg	image	\N
2024-06-05 12:30:45.232383+00	\N	\N	0e8e82d7-f052-4a7f-b02e-4f93d906d82b	112637	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0007.jpg	image	\N
2024-06-05 12:33:17.909656+00	\N	\N	e0e417f6-479d-4d4b-ae2e-33d639fae55e	308011	gallery	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	https://adrenalnbucket.s3.amazonaws.com/Screenshot_2024-05-14-18-28-54-595_com.adrenaln.development.jpg	image	\N
2024-06-13 10:23:04.676405+00	\N	\N	10f612cc-6c6a-49f2-80a4-258759cee2f5	10246513	gallery	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	https://adrenalnbucket.s3.amazonaws.com/IMG_20240610_154101-01.jpeg	image	\N
2024-06-14 08:16:20.284159+00	\N	\N	df3d6bba-a011-415b-b6cc-a5b1675af6c6	10246513	gallery	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	https://adrenalnbucket.s3.amazonaws.com/IMG_20240610_154101-01.jpeg	image	\N
\.


--
-- Data for Name: membership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.membership (created_at, update_at, deleted_at, id, user_id, password, encrption_type, password_update_on, last_login_attempts, login_attempts, membership_type, membership_status, phone_verified, email_verified, password_salt, role, last_feed_viewed, post_visibility, fcm_token) FROM stdin;
2024-02-06 07:39:41.751245+00	2024-02-06 07:58:10.087642+00	\N	1eb2e080-5e39-4ebe-8613-4e0b933ec3e0	b1201fa1-c4e8-4784-bb43-0cc33ed7cc83	$2b$12$80Xa4sfMy7TtQV42W2QBz.N0sY995xA3j6OtqzmxJ2r5dkP.WqtCW	bcrypt	\N	\N	\N	admin	active	t	t	\N	user	2024-01-27 13:09:41.734774+00	all	\N
2024-02-06 08:28:55.971667+00	\N	\N	637ae7ef-eed1-4ae5-83ac-5188baf01b24	2d564ccf-06b6-4aa0-bafb-d5ba54e04265	$2b$12$RVG9ROdJNoF/UWnBqsBU1uaXqUe4ATb4xi1TLOaZs0O5a59vMFSSG	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	user_admin	\N	\N	\N
2024-02-06 08:30:20.330518+00	\N	\N	05665f35-9000-42ed-9373-35fd6a24b775	bef17bfb-502e-4128-a704-961f20cf9e08	$2b$12$E6aaBgffQIAoFaSUtsmD3uP6AXlrZBxAt4Rtf2DUtugMqYXy6DFVa	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	super_admin	\N	\N	\N
2024-02-07 06:37:27.238255+00	\N	\N	1832d58d-58eb-4bd2-bb2c-5382892073b4	52f05d90-e8fe-42f1-941e-fb9df0db82b5	$2b$12$ynjWdmYDkYgN9WoWrVXhcOQk4uxTUQghIFFEKlHOPK83vEMaKb2yO	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	super_admin	\N	\N	\N
2024-02-07 06:52:56.39205+00	\N	\N	c897154c-fd77-4614-a809-157251c0c78d	a69c8750-ce98-4301-b867-bb90f067fb4f	$2b$12$LOGZhQ90OYAEZ.GrSUdLj.4c/4VZmF047ZMnLl2fl0PQ4gvnBKd8G	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	group_admin	\N	\N	\N
2024-02-14 16:28:08.969856+00	2024-02-14 18:24:58.617411+00	\N	54bf55cb-5782-4da5-8409-bec6a4b89617	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	$2b$12$RzOjac67yWlURniEEKg.e.XP9Udy0tKiAiLpMwRTtOfmYsJPnb23y	bcrypt	\N	2024-02-14 23:54:58.613918+00	\N	admin	active	t	t	\N	super_admin	2024-02-04 21:58:08.957932+00	all	\N
2024-03-04 10:30:34.5253+00	\N	\N	10659fc1-bdc4-497d-9c6a-e0850163aa6a	561becf6-5df8-453c-9d6d-a9eee9ddd044	$2b$12$fCLmUe0//Gw5tdHwCfDrK.avgAtBoQ5jRmxa0tI0DfHi0OeyPL/C6	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	post_reviewer	\N	\N	\N
2024-03-04 10:37:45.235526+00	\N	\N	4ce81632-63a3-4a97-bb15-8d97c90dbafe	264af9bd-7704-46eb-8970-e80ebb0ba43a	$2b$12$DKD71M0FaDosaLOGiIA4gO28PjuWI9jzmDA5PWrkkTC7towvMr4.u	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	post_reviewer	\N	\N	\N
2024-03-04 10:39:18.189462+00	\N	\N	225dd534-5fd8-4105-84ef-be80fd6b4cbb	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	$2b$12$XgwDQ95kGd7YvZ/Uepfga.2H2zB3ELHS102Z/xzO0zfUmhZPEnf..	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	post_publisher	\N	\N	\N
2024-03-05 10:44:17.402742+00	\N	\N	3286480c-2de3-405a-8129-c352433c315a	92be044f-e924-47b8-a76d-918953067625	$2b$12$j5hzsgJ0BNWlrjHCd9WuYe5H6aqIXmMEGyR5bFkYe8DgbbqyBO1Mi	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	super_admin	\N	\N	\N
2024-03-05 10:45:06.065053+00	\N	\N	b5e30eca-d952-4f2e-a0e7-adf2ee183489	9febfa40-04ea-4915-b2f9-c0cf97b047a6	$2b$12$5ZjcyiHK7bnmKcCUlteOh.kH..M2EOVhSZ/Fyv8FJXCAlbe67i4ee	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	super_admin	\N	\N	\N
2024-03-06 08:31:26.397444+00	2024-05-13 08:49:50.811977+00	\N	785e6709-29ac-4c06-ac44-6a13967a6f0d	b9117901-96ad-4b87-b47a-2f9aa6575fb6	$2b$12$OGPFvSro4UgcSFYZW0Q5ue2xzp5Kpt/johUOAL/E9yci9TdQ4z/0q	bcrypt	\N	2024-05-13 08:49:50.813607+00	\N	general	active	t	t	\N	user	2024-02-25 08:31:25.791366+00	all	\N
2024-02-22 09:04:29.409829+00	2024-05-04 12:53:53.456999+00	\N	b4cc1d60-6440-480f-b5a7-e37a25011703	5854dc2c-7b3e-46b2-aa84-a51e448750be	$2b$12$zN3Oh1P4o4YKVC4vVkK7P.W7fbYnVoBPBKNGWD.R2WFCRxTQ6Qxm2	bcrypt	\N	2024-03-12 11:45:35.648846+00	\N	general	active	t	t	\N	user	2024-03-04 11:03:55.04844+00	all	cLmXBxvdTla-CPoqdWn-Dk:APA91bFPtnqDTHS_DOpWS_6UBowJejB8sBz58bWbvLkSGx3PUhx8C8ALH48Xk23birdLmvkQQXd6C6x7ajEy2Q_u4OlrEtD3FrpfXF_S75xGF0b_j01Afdn3BrT7gS1JkYYu6AaPDP2e
2024-04-29 10:43:07.196432+00	2024-05-04 13:19:36.611992+00	\N	d6e1449e-cc6a-44fb-a3ce-705640e188f2	05f59f52-18be-45d4-bf8b-39640b7b2fab	$2b$12$5.WIwhCv4aopUjKDJztLceqYI9ShSixwxuFD/C9giu./ZVqEZktJu	bcrypt	\N	2024-04-30 07:01:15.772673+00	\N	general	active	t	t	\N	user	2024-04-29 10:44:19.275925+00	all	fUMLk0EKRXae_8gtCUAy6O:APA91bEkxyWWJS9YfnudoIZS-OzZKNv4LwHWT2F2buNd9covyt-GtYGAFg3BHp17Q-E_Yc0mZMKLlg-ukcrVt0CwFP-N9o9cafbRCbkw4_fFs12C57Ze4GDz7Z3gJ06jSDy6aOIkE5GY
2024-04-27 05:08:20.584055+00	2024-04-27 05:09:26.821797+00	\N	8c86e035-a514-40c3-ac76-dfb7e226709e	1a6b27ea-7a18-4a8e-8056-db92f7f9fa56	$2b$12$/1gwRSiWUgWdx0zOZqFu9.X/Zj/PljpzlVQzkKKkCkF0nvaprWQIW	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-04-27 05:09:26.916901+00	all	cE6xL1zjQcqeSuMAfk3oXB:APA91bH3bHOsuoRV5d4LoT0pu56qoYDbQrXqnDdm3Qggd_WAP43Krb74l7Tu9JNu50y4FctHPWDjkmrYjLoSPXMyCgtNLTrliApDGw4Axq5j-4jRv6PpYDuX6zfn5BeXdXQapN9r_8BR
2024-02-29 09:52:17.373546+00	2024-06-18 06:46:56.902659+00	\N	b39314e8-10ee-4258-a152-e62b8a2137f3	7c28a321-9ae7-4923-94a8-070feb58955d	$2b$12$dckH1azJF4ywMslc6BLv7.hDK8n38gv..VDp3X7dnqG/AsEoodPzu	bcrypt	\N	2024-04-25 19:24:20.758185+00	\N	general	active	t	t	\N	user	2024-02-29 15:35:54.594592+00	all	el040KrQTD2W3mWcFlk8XR:APA91bEYyjD6CH00Hffe9hCqiiiQdljncF1HdXm28jVwEQQEwPdgPtx6kD3jRjLbCyzrr9KsVoT6u3hQklqtdLDXBK_A7w7sLePLP_NIX6BPRnpfAJn8uxpKCog_O-plWtBM1yuo98bl
2024-05-16 10:31:33.893009+00	\N	\N	a1a109d0-e47d-42bc-a2f4-99fa4c385970	f22d3c6d-738c-4bf1-a160-bb2eae667020	$2b$12$WRUAphyU2g5M/BxKyFU2k.tv.j.xETFTKYKuLvvTE4p8KOet/rT12	bcrypt	\N	\N	\N	admin	active	\N	\N	\N	post_reviewer	\N	\N	\N
2024-06-03 13:18:07.682533+00	2024-06-04 11:16:35.906251+00	\N	679d1ecc-6886-435b-8894-8ee6902088a4	93f47453-622d-4f4c-9208-093193669900	$2b$12$qbjAmCDQ3dD.5TTco5zRseNdnEBBP/SrJeZBwfZbHkdsh/6F6Ftc6	bcrypt	\N	2024-06-04 11:16:35.904401+00	\N	general	active	t	t	\N	user	2024-06-04 11:16:28.334894+00	all	\N
2024-04-24 18:06:14.316342+00	2024-04-26 05:51:36.964454+00	\N	5574c5df-7471-4d19-98ae-b2bdc95547e8	7a142b2e-2e56-45c4-82ed-c1e8cd30b4c3	$2b$12$j.2B45P5s2TC9KTykyJ.iuZpc.9T5EDNEwN5Xrt5m.F7Xp8RwFZlu	bcrypt	\N	2024-04-26 05:48:16.770219+00	\N	general	active	t	t	\N	user	2024-04-24 18:07:54.608379+00	all	c-SwcrYOQ8mXwcHGnT55_l:APA91bGnXuwYkfUJFuka_twZeBTi777Zmw9V9w_qlzqmRhLN7H-ybyln2fVdwaHeE-zd-kCsRsU6No1R7Ps_1FPL4m55FIPO8CXBSQ2CNfgyxvBv_m_mVnzJrAMCar3CCMdrhoju_V5u
2024-03-06 07:28:38.050131+00	2024-06-08 07:34:16.024594+00	\N	047ed158-2571-4beb-925d-ae1f430bfb53	f039da77-98d1-4ef2-bb2a-72faaec7c494	$2b$12$3uomEs8mC6uz5BJl6gmMlOt4F5j/oYZmh0OuPLIe4Cbr9vzBtEX2q	bcrypt	\N	2024-06-08 07:32:47.272611+00	\N	general	active	t	t	\N	user	2024-06-05 12:30:50.57115+00	all	dGVQh4bQTMiGLHffTyhria:APA91bHhOp8co_cVL5bpKfBKmU4nCtT1XrmXwtI7XsfnRBtjZZxia46h5pBb4Jv6bek9E34O6he8uCViPz9uRjrMkKy_bBx9hJy9Mdggy1N6H5ZypyCXk8vWTJBgEahnRWuaiOLYjGwm
2024-05-06 11:48:58.643698+00	2024-05-07 08:28:52.767067+00	\N	47f34a43-4171-400b-a377-9b4ee082f20d	37082d82-a174-4122-82f3-c6c022d8c0b5	$2b$12$CrJNnL3Q4BmDR6.wUXyIuugN72PQXV5k7bzPth32/8xnJ89jLfXJq	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-05-06 11:53:15.617704+00	all	cxtvflslRFCPoKq0VjXV0Q:APA91bFXGnn2m3ZHSMhaOicVL62LU5_IUi7QR02qll2oDhsWvkSYEZ3ZhXOnQvvHDRjWZJ45eYst0YqKVeB3_NjICOCGacD0XiJgbVac9qRRVOOtOssiBLvewr2QvvgFqYySf8eYhVRv
2024-05-08 08:53:59.300833+00	2024-05-15 12:18:35.158753+00	\N	2fdf7122-5184-4fde-bc0f-92017ee5800b	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	$2b$12$wkPP3S.AQsNAnc1eLkKBM.gtfIgBZm8jz/aPX2uHzj9r/G6jc8djq	bcrypt	\N	2024-05-09 18:54:14.119123+00	\N	general	active	t	t	\N	user	2024-05-08 08:55:06.864049+00	all	eXyq9i2zQFCincAvoeP7x8:APA91bF0uTCEh0rQQYq25RBTNk7KPIWz3dYkOS2l7R-J6cxSqevBwqGvD2ZqydjvWUUkJYxnMzGlDj8vhb3dHIUxzbU5TMuvlmqrtm-wQCv5HDIEkjrLOLCWOx1JaAtx7YvkosCo1iFY
2024-05-16 12:49:17.068807+00	2024-05-16 13:09:44.953752+00	\N	98f0071d-61ca-4824-a236-db6d002751a4	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	$2b$12$aeRctDgj2jfktZAATZ2yneeSwqLK5hQyMculXNUzQm6Jec.L5a50a	bcrypt	\N	2024-05-16 13:09:44.953844+00	\N	general	active	t	t	\N	business	2024-05-16 12:56:24.042679+00	all	\N
2024-05-16 11:32:18.532316+00	2024-06-08 07:33:56.632251+00	\N	701c6a77-b062-4ea7-a27f-767cd0ddff4f	cb086201-ede7-42fb-856e-d250a66d40b6	$2b$12$LbMXhu2t3z8LUzkJZfB/.erLLkpxCFbwpQCnbjwvilyDfA23XUhgG	bcrypt	\N	2024-06-08 07:33:56.626567+00	\N	general	active	t	t	\N	user	2024-05-16 12:32:52.629898+00	all	\N
2024-06-05 11:08:50.689274+00	2024-06-05 11:12:33.177542+00	\N	114d5a8d-60d2-4666-9d67-1121bdaae375	314d22eb-7614-4783-9b76-248ac08cf1bf	$2b$12$oPW/M.byv.Q/mCDwUMIIdu9uWlsxY4yD3h5/nn0G/ssem4Dn3ZUSW	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-06-05 11:12:33.25132+00	all	cbGQwH3CRFOPDV8iVY9WkV:APA91bE_QmUR03cNz20FDhdDQBd4fZPoq_k2pmYj4dYelpJpjJCBXcJMWdZXs-S2T0E5YpkJ_N9rPLU_TkuauCFc4BBifgf-tFETo0Y5VwFv6rx4M1cyzdu4ipwDju-0IWqJ7zQewWZ5
2024-06-05 11:12:01.297886+00	2024-06-05 11:36:13.396624+00	\N	258a9620-4e18-4b8a-b6e6-a528912b4e85	accd4c2d-17f1-4d48-839a-dd9367a798f6	$2b$12$hfsB76pLmapjwLXW3DcaMeKUTa8AYRG0FzRXyl7T1Ur3IIq2UarX6	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-06-05 11:36:13.482332+00	all	du1MzSdVTVyXsDI4_mnsm8:APA91bEvuwt3uBpNvs_ryV_ZfXfyfjwSBQO8jTUwYK6DFq_0tPx6vYr934EYb_4OqSOJkOp-IjbUYvFstLeQj021pJV8rdFTR-ufDvUAm6WGfx5g_sk6kB4FNZ7lLMwHqS25nPrdlh0R
2024-06-05 11:07:57.868415+00	2024-06-05 11:12:09.342181+00	\N	70a76a17-7612-435d-bdf9-801f9998e70a	a03f5eb5-5ba0-4026-a7db-fe0288129745	$2b$12$DjjwV8Lvs7OM4Fc8OISqneFTYnGoun.72sRFKfKzYItIxs2oKtBa.	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-06-05 11:12:09.434865+00	all	e6-in9EET_O_namlOSv62v:APA91bHGLmQhGoWwzQJOz4BiuizKCFt0xhfQ6I3exFfCH_wq6-P6YbnhrGw3n87m5t8V8Ozn-WfuDYu3liD6oPi948wMHe-tLh4rCccEL_7ZlXGuTCTV6fI-iFfxyYpQ72XBbFCmfst_
2024-05-09 07:55:05.96519+00	2024-06-05 12:00:13.557203+00	\N	f54a0755-e7b2-4eb0-9ea9-9d286486720e	f039da77-98d1-4ef2-bb2a-72faaec7c494	$2b$12$0aDDFsyVuDlzDwh6JZeKy.ewcxXVQ7dGMBPSoG4HdKlqOjOQehpOO	bcrypt	\N	2024-06-05 11:52:55.151338+00	\N	admin	active	\N	\N	\N	user	\N	\N	\N
2024-04-26 04:35:22.545884+00	2024-06-14 14:07:57.272314+00	\N	33a63f38-8a1f-40a8-9ca6-e8be901a96f3	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	$2b$12$ZejH1XrWgGceOl5Ukp.qNOKn9lV1t2J3rzIl.Vf/QZmB6la4LwCTe	bcrypt	\N	2024-06-14 07:34:57.16641+00	\N	general	active	t	t	\N	business	2024-06-14 14:07:57.441102+00	all	czRtvoYtQ0KfKCD31y0Qai:APA91bH70hAT-H-N4nXFJCaGknP8tbgsIsZ1Dh9lykJkgBKMM-nPTbMJ0vzT8G9PzsqYsqXveJPchKPF8wAxXh9qfwRQBXdKJ4Ln2cohm-hzBntcElyi6SMsyZVoI9JDPkMO4-wXRmqy
2024-06-11 12:37:51.683878+00	2024-06-11 12:38:38.501973+00	\N	ea791152-4ed8-4eb8-bf67-d35eba94cd5a	1a833bfa-6de1-44a3-96e4-8ba4a59255ab	$2b$12$oZn6gIjK8wG3K41nA8w.X.M58Prwa8AfumCdkn/4dkx/.DUZ4WlIa	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-06-01 12:37:51.688478+00	all	cQuu5r5vQ-eFXM7pKFFXeX:APA91bEYMUer_hjqDmEjVxTWOAR6XHARMINKkFBi0j8rs-UQPtHbpuYO2K5FAjkDg-TnhdFoHa9qBhDS7lb9ykBasdMJcCpyzTJopxsKtni6-QEpgb81Iz3Z0T1jZ5D2dBOlfGioUgOg
2024-06-19 10:44:39.725806+00	2024-06-25 12:28:34.676547+00	\N	30ce089d-f653-47ad-b91c-389e892ece63	4e82af3f-b695-49e9-8c83-b234ce459de5	$2b$12$pXFoi.wprPNrxymmr/x1YOFFxZEgQcBx/R0V8/yTHW6H3cpGHP4.m	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-06-19 10:47:50.487757+00	all	
2024-06-20 03:01:54.245682+00	2024-06-20 03:07:10.32436+00	\N	d9f693b4-be01-44bb-b41c-584f6011868b	c6f51f15-2069-43a7-a445-11681da25fab	$2b$12$UlSTV/uaepktzDx4WF5pb.vBbkstXwenEILIHgsTW3.6bmBiJUyVG	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-06-20 03:07:10.423141+00	all	cijikwubSqa3eHEJh10FGg:APA91bHh8XjTAy8YLPaGPrjANGTqlu9mDlwgttLTrVUI6DbcqsOMpTlATuUNe1rNxrXwYJBkV8ZxaQkt9WtNkOxzguHqy9O6UqDaEmeOIVx_jez1dQ_4mNJkuYT_8YaE-J0TPhVTFV2-
2024-06-20 08:33:15.058753+00	2024-06-20 18:26:09.211364+00	\N	1bcd0262-5253-4e97-ae98-4090f38b87f0	82beae83-ee98-4f38-b3de-d27ee137ef27	$2b$12$B/E/unt4OdycJguA5P.X9.qOvT5SOWKo438//MNe8UfD2SeLM/4Jm	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-06-20 18:26:09.364976+00	all	dx-uR77bSKmSwoNJsU_DNJ:APA91bHl7M2WdA9iff_kSCD6NZ9yLxXsFveOB-TGJc7VDfw6JchEXZ5QI_Ua1v9r_axPI9zEFXxDH6byN2LCm-6KecvTWzsJ7V3zY4B19poA01Ny26cxFhQwKNmHwG80WJsMBop9NH1n
2024-06-21 12:49:51.621916+00	2024-06-21 12:52:17.253844+00	\N	54e5fbdd-ea2a-4b3c-a2ef-6206ba33dad9	b7201ebc-91ab-4fa3-b153-1a4d0a76bc4c	$2b$12$jB39d/JsG4VrNtbpMSzOv.ejyeVj8TGLQnJks5B2NqATfdGFAhPxO	bcrypt	\N	\N	\N	general	active	t	t	\N	user	2024-06-21 12:52:17.325655+00	all	cPMG4jD8RUijFlm1NWWi6X:APA91bHEVDwz4aoXl4gmwk9vXeIdBFZECidcsU8KoSwirfJotofzmoj8kFL9lQvx6g8PO2olhYTKKvBZG4mf5WQbIuJiATRpq0yypNfbR0NS6W_WKPaxhDs92Z9gHIcYlbHG4Pi8ofYE
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification (created_at, update_at, deleted_at, id, user_id, meta_data, type, read_status, title, description, c_user, notification_status, expiry_date) FROM stdin;
2024-02-25 19:06:08.397565+00	\N	\N	1d875516-58ca-4921-98c4-270d754a8822	2d564ccf-06b6-4aa0-bafb-d5ba54e04265	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	f	Following	Kl Rahul started Following you	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	\N	\N
2024-02-29 09:53:55.070562+00	2024-02-29 09:55:05.631256+00	\N	0495694f-eaff-4e1d-bc78-6030bd644ced	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	t	Following	Tushar started Following you	7c28a321-9ae7-4923-94a8-070feb58955d	\N	\N
2024-02-29 09:55:10.230039+00	2024-02-29 10:02:00.098988+00	\N	76c571c6-079e-438e-ac68-4c605d009d94	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Subramanya M Rao accepted your friend request	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	\N
2024-03-06 08:40:54.972017+00	2024-03-06 08:42:05.051305+00	\N	5713056f-6c46-4c73-8ae6-339570295964	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Payal has sent you a friend request	b9117901-96ad-4b87-b47a-2f9aa6575fb6	\N	\N
2024-03-06 08:42:39.708688+00	2024-03-06 09:01:57.26655+00	\N	bdfb6a55-3e25-4fe9-bac6-77e50c3d597f	b9117901-96ad-4b87-b47a-2f9aa6575fb6	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Ojas accepted your friend request	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-03-06 08:58:26.473478+00	2024-03-06 09:50:03.891489+00	\N	788ede38-fda1-435c-8b4f-1a1c39e5cb76	b9117901-96ad-4b87-b47a-2f9aa6575fb6	{"screen_type": "BETTING_DETAIL", "id": "fb3e314e-540f-4fd9-8ffa-68dccb36ba7e"}	post	t	Betting Invite	Betting invite from Ojas	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-03-06 09:59:33.860588+00	\N	\N	3c8327ac-867b-47f0-aba1-746e17f3179c	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	f	Following	Ojas started Following you	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-04-25 19:20:09.7255+00	2024-04-26 05:25:38.650134+00	\N	2aaca690-5772-46fe-a9a7-78b3a6835725	7a142b2e-2e56-45c4-82ed-c1e8cd30b4c3	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Tushar has sent you a friend request	7c28a321-9ae7-4923-94a8-070feb58955d	\N	\N
2024-04-26 04:39:38.152161+00	2024-04-26 05:25:38.683172+00	\N	39b1e5f5-daaa-497c-a64b-8259846c09be	7a142b2e-2e56-45c4-82ed-c1e8cd30b4c3	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Shamanth has sent you a friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-04-29 10:46:53.201234+00	2024-04-29 11:22:41.684555+00	\N	906cfbd7-5e79-4237-8c96-e9312c0ff6f3	05f59f52-18be-45d4-bf8b-39640b7b2fab	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Shamanth has sent you a friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-04-29 16:57:01.643819+00	2024-05-02 04:36:32.020875+00	\N	7dfbe70a-ca69-498d-8ac1-dd87b7b8a7b5	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Vijay Anand accepted your friend request	05f59f52-18be-45d4-bf8b-39640b7b2fab	\N	\N
2024-05-16 10:34:57.227226+00	\N	\N	016227a5-765b-4519-b0a0-74ea6f349e35	05f59f52-18be-45d4-bf8b-39640b7b2fab	{"screen_type": "", "id": "e678aed6-3006-4b3d-9e29-0c0bc55fcf85"}	post	f	Unpublished Your Post	Adrenaln unpublished your post	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	\N
2024-05-16 10:49:52.401745+00	\N	\N	04833cc7-93cc-4331-97ee-71545c564417	05f59f52-18be-45d4-bf8b-39640b7b2fab	{"screen_type": "BETTING_DETAIL", "id": "1a3a842d-da04-4165-b692-5182269f3761"}	post	f	Betting Invite	Betting invite from Shamanth	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-03-11 11:42:49.788421+00	2024-06-08 07:41:07.633419+00	\N	7d3fbe54-3588-4665-8733-c46e3f4041f5	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "", "id": "5325e458-481e-4656-8da4-c508b5941644"}	post	t	Published Your Post	Adrenaln published your post	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	\N
2024-05-09 07:00:45.34854+00	2024-06-08 07:41:07.648782+00	\N	dd3a13af-46bb-46b8-89b1-5835ebce1aca	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "", "id": "5325e458-481e-4656-8da4-c508b5941644"}	post	t	Unpublished Your Post	Adrenaln unpublished your post	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	\N
2024-05-16 12:16:19.805749+00	2024-06-08 07:41:07.668052+00	\N	b7f4df3b-9cdb-4a55-b8a9-95f2712012f5	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "BETTING_DETAIL", "id": "e6278930-898c-4ba8-a343-a9a41374337a", "responder_id": null}	post	t	Betting Request	Yohaan accepted your betting invite	cb086201-ede7-42fb-856e-d250a66d40b6	\N	\N
2024-05-16 11:41:08.007719+00	2024-05-16 11:44:35.395951+00	\N	2d194ffa-7276-4504-9cb7-2e4744d05328	cb086201-ede7-42fb-856e-d250a66d40b6	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Ojas accepted your friend request	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-02-29 09:53:59.901324+00	2024-05-04 07:08:15.879459+00	\N	920ad2a0-9f49-4e26-a149-213ce9bbc2a9	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Tushar has sent you a friend request	7c28a321-9ae7-4923-94a8-070feb58955d	\N	\N
2024-02-29 10:02:04.578906+00	2024-05-04 07:08:15.88468+00	\N	d7ace908-725f-43e3-bac6-ec3363e927e0	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "GROUP_DETAIL", "id": "24fa16b4-f0cf-4eeb-a10f-868e32061ec7"}	group	t	Group Invite Accepted	Tushar accepted your group invite	7c28a321-9ae7-4923-94a8-070feb58955d	\N	\N
2024-02-29 10:02:19.685144+00	2024-05-04 07:08:15.889982+00	\N	ad534a27-ad04-49d3-8505-2633d70e130e	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "REGULAR_POST", "id": "bcce3e11-e1da-446a-a266-c139363e4a89"}	post	t	Like	Tushar liked your post	7c28a321-9ae7-4923-94a8-070feb58955d	\N	\N
2024-02-29 10:02:36.418305+00	2024-05-04 07:08:15.894847+00	\N	a9b59c4c-9ccb-4249-9167-60a4b241e8f4	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "REGULAR_POST", "id": "bcce3e11-e1da-446a-a266-c139363e4a89"}	post	t	Comment	Tushar commented on your post	7c28a321-9ae7-4923-94a8-070feb58955d	\N	\N
2024-03-06 08:49:20.730255+00	2024-05-04 07:08:15.899555+00	\N	b6315207-49bc-49f5-bfe6-2c20cda287f3	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "GROUP_DETAIL", "id": "24fa16b4-f0cf-4eeb-a10f-868e32061ec7"}	group	t	Group Join 	Ojas has joined RNSIT 11	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-04-26 04:39:38.648408+00	2024-05-04 07:08:15.904619+00	\N	f90159e6-1d60-42d0-a699-1e894ec9d294	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	t	Following	Shamanth started Following you	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-04-26 04:39:42.755596+00	2024-05-04 07:08:15.909941+00	\N	2c050f53-c965-4a35-aba9-3fedc6dcd022	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Shamanth has sent you a friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-05-08 08:57:20.444155+00	\N	\N	09de9f21-ee0d-4594-b62c-ed439e921cc7	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "REGULAR_POST", "id": "4844cb1e-5666-4906-91d5-69291e3479e1"}	post	f	Like	Varan liked your post	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	\N	\N
2024-05-16 11:37:42.756001+00	2024-06-08 07:41:07.613493+00	\N	e5503b36-cd2f-4e59-8e66-c8094de51d49	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Yohaan has sent you a friend request	cb086201-ede7-42fb-856e-d250a66d40b6	\N	\N
2024-05-16 10:12:41.423115+00	\N	\N	33befce5-23cc-4e6d-8baf-a294c8c95306	05f59f52-18be-45d4-bf8b-39640b7b2fab	{"screen_type": "WATCH_ACTIVITY_POST", "id": "e678aed6-3006-4b3d-9e29-0c0bc55fcf85"}	post	f	Comment	Shamanth commented on your post	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-05-16 10:14:34.140069+00	\N	\N	697bd87b-4f34-4ada-b52f-43a1b4ae81d4	1a6b27ea-7a18-4a8e-8056-db92f7f9fa56	{"screen_type": "ALL_FRIENDS", "id": null}	friend	f	Friend Request	Shamanth has sent you a friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-05-16 12:10:57.286939+00	2024-06-08 07:33:34.844729+00	\N	f82c7078-e1ad-4757-99b1-94c72abbd7ff	cb086201-ede7-42fb-856e-d250a66d40b6	{"screen_type": "BETTING_DETAIL", "id": "e6278930-898c-4ba8-a343-a9a41374337a"}	post	t	Betting Invite	Betting invite from Ojas	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-05-16 12:10:57.272166+00	\N	\N	a534ca32-3883-4c4c-8e0b-a0c29c61d1d9	b9117901-96ad-4b87-b47a-2f9aa6575fb6	{"screen_type": "BETTING_DETAIL", "id": "e6278930-898c-4ba8-a343-a9a41374337a"}	post	f	Betting Invite	Betting invite from Ojas	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-05-16 13:03:38.017952+00	2024-06-08 07:33:34.85842+00	\N	abdae81a-8cba-4357-aa03-f190d9aaeb1c	cb086201-ede7-42fb-856e-d250a66d40b6	{"screen_type": "GROUP_DETAIL", "id": "e4c2c0b3-5678-49a3-a03e-417a75d6b77f"}	group	t	Group Join 	Kalpana has joined Dd 77 group	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	\N	\N
2024-02-29 09:55:13.67784+00	2024-06-18 06:49:41.927634+00	\N	fc0301b6-445e-446c-a35e-40b4006e0660	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	t	Following	Subramanya M Rao started Following you	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	\N
2024-05-16 10:14:39.588248+00	2024-06-18 06:49:41.949278+00	\N	c37add54-6877-4d46-aa3a-bff02eec111b	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	t	Following	Shamanth started Following you	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-05-16 10:14:42.839905+00	2024-06-18 06:49:41.964886+00	\N	3938fa47-c106-4b71-93bd-e054ef01b031	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Shamanth has sent you a friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-03-06 08:49:23.89531+00	2024-06-18 06:49:41.913536+00	\N	4ff842d4-3a5d-48a0-9d7a-7d3d62152a30	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "GROUP_DETAIL", "id": "24fa16b4-f0cf-4eeb-a10f-868e32061ec7"}	group	t	Group Join 	Ojas has joined RNSIT 11	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-05-16 10:41:13.680457+00	2024-06-14 14:08:08.695731+00	\N	d88dc091-1b3a-4978-bbf5-adf3bdc28843	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"screen_type": "", "id": "0e875e3f-efea-49f4-aad0-9890aad923e5"}	post	t	Unpublished Your Post	Adrenaln unpublished your post	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	\N
2024-05-16 12:58:07.864591+00	2024-05-16 12:59:03.05803+00	\N	1b3e7e70-bfc6-4d0b-a924-0bd7215bbd4b	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Yohaan has sent you a friend request	cb086201-ede7-42fb-856e-d250a66d40b6	\N	\N
2024-05-16 12:31:34.981497+00	2024-06-08 07:33:34.873009+00	\N	367feeaa-c1f6-40f8-8912-f325603adc9a	cb086201-ede7-42fb-856e-d250a66d40b6	{"screen_type": "GROUP_DETAIL", "id": "e4c2c0b3-5678-49a3-a03e-417a75d6b77f"}	group	t	Group Invite Accepted	Ojas accepted your group invite	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-03-11 11:42:04.08785+00	2024-06-08 07:41:07.680634+00	\N	7cc74ffa-a357-4843-b6a1-4573121b04bc	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "", "id": "40d3d421-7326-4042-87a7-e25db9bc0021"}	post	t	Unpublished Your Post	Adrenaln unpublished your post	9febfa40-04ea-4915-b2f9-c0cf97b047a6	\N	\N
2024-05-16 12:30:48.377753+00	2024-06-08 07:41:07.698232+00	\N	1a833017-c64f-4e5c-8556-1f1111b06831	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "GROUP_DETAIL", "id": "e4c2c0b3-5678-49a3-a03e-417a75d6b77f"}	group	t	Group Invite	Yohaan has sent you a group invite	cb086201-ede7-42fb-856e-d250a66d40b6	\N	\N
2024-05-16 12:55:29.452433+00	2024-05-16 12:59:03.086794+00	\N	925ed845-6a46-4d90-b38c-bd2b8ab2e7d1	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Ojas has sent you a friend request	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-06-03 13:54:57.819703+00	2024-06-14 14:08:08.726385+00	\N	ff576975-9f35-41cb-a6b8-2d7c4e669f52	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	t	Following	Redmi started Following you	93f47453-622d-4f4c-9208-093193669900	\N	\N
2024-06-05 12:38:02.27504+00	2024-06-14 14:08:08.743069+00	\N	e6a1b542-96f4-4611-9c24-98848edb2054	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"screen_type": "BETTING_DETAIL", "id": "473be009-bc91-4f11-979d-06896b1182b3"}	post	t	Betting Invite	Betting invite from Ojas	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-06-06 13:50:53.823712+00	2024-06-18 06:49:42.025034+00	\N	6a81a093-3a7b-4438-9138-16e0ae52c3e5	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Shamanth has sent you a friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-05 09:27:19.578105+00	\N	\N	f012d241-833e-438d-890b-85551f9ab814	05f59f52-18be-45d4-bf8b-39640b7b2fab	{"screen_type": "GROUP_DETAIL", "id": "fdda6a93-4672-4acd-8bd7-6ccb4ab0b60a"}	group	f	Group Invite	Shamanth has sent you a group invite	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-05 10:01:35.579699+00	\N	\N	d44aad5a-0010-4619-95a1-c9d091b229c7	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "GROUP_DETAIL", "id": "24fa16b4-f0cf-4eeb-a10f-868e32061ec7"}	group	f	Group Join 	Shamanth has joined RNSIT 11	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-05 11:24:19.930729+00	\N	\N	d293692f-ae4c-4ed7-933f-d329bbf3725a	05f59f52-18be-45d4-bf8b-39640b7b2fab	{"screen_type": "ALL_FRIENDS", "id": null}	friend	f	Friend Request	Sanket has sent you a friend request	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	\N
2024-06-05 11:24:33.98413+00	\N	\N	7544c07b-0108-4a0f-95a2-4c43f2472a3f	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "REGULAR_POST", "id": "4844cb1e-5666-4906-91d5-69291e3479e1"}	post	f	Like	Sanket liked your post	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	\N
2024-06-05 12:38:20.141216+00	2024-06-08 07:41:07.727139+00	\N	9611580a-6b85-42ae-91d6-d861da22a648	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "BETTING_DETAIL", "id": "473be009-bc91-4f11-979d-06896b1182b3", "responder_id": null}	post	t	Betting Request	Shamanth accepted your betting invite	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-08 07:33:44.014775+00	2024-06-08 07:41:07.741372+00	\N	226442ce-00e4-432d-ad99-d4c8196caaa5	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "BETTING_DETAIL", "id": "1e6f2bbc-0041-4a73-b49f-345378421f77", "responder_id": null}	post	t	Betting Request	Yohaan accepted your betting invite	cb086201-ede7-42fb-856e-d250a66d40b6	\N	\N
2024-06-08 07:32:25.769049+00	2024-06-08 07:33:34.890214+00	\N	faa82715-de24-4c8a-a93f-c7b6caa4286d	cb086201-ede7-42fb-856e-d250a66d40b6	{"screen_type": "BETTING_DETAIL", "id": "1e6f2bbc-0041-4a73-b49f-345378421f77"}	post	t	Betting Invite	Betting invite from Ojas	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-06-05 10:01:30.189648+00	2024-06-08 07:33:34.90047+00	\N	3145009e-6652-4755-9343-684d3d0d79a2	cb086201-ede7-42fb-856e-d250a66d40b6	{"screen_type": "GROUP_DETAIL", "id": "e4c2c0b3-5678-49a3-a03e-417a75d6b77f"}	group	t	Group Join 	Shamanth has joined Dd 77 group	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-05 11:28:22.389723+00	2024-06-08 07:33:34.913849+00	\N	5572670f-4493-4217-96fb-9ebe8e01d056	cb086201-ede7-42fb-856e-d250a66d40b6	{"screen_type": "GROUP_DETAIL", "id": "e4c2c0b3-5678-49a3-a03e-417a75d6b77f"}	group	t	Group Join 	Sanket has joined Dd 77 group	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	\N
2024-06-06 10:34:59.334041+00	2024-06-08 07:33:34.924043+00	\N	bfb55c8e-e15d-48ae-b13f-8ee34b3ec472	cb086201-ede7-42fb-856e-d250a66d40b6	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Shamanth has sent you a friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-05 10:01:36.476851+00	2024-06-18 06:49:42.051629+00	\N	75cb1fa0-687c-4bfd-a924-27da16cb5c69	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "GROUP_DETAIL", "id": "24fa16b4-f0cf-4eeb-a10f-868e32061ec7"}	group	t	Group Join 	Shamanth has joined RNSIT 11	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-19 10:49:39.275547+00	\N	\N	391d58a7-c603-488e-a95f-8bbaa71457c7	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "GROUP_DETAIL", "id": "24fa16b4-f0cf-4eeb-a10f-868e32061ec7"}	group	f	Group Join 	Mukul has joined RNSIT 11	4e82af3f-b695-49e9-8c83-b234ce459de5	\N	\N
2024-06-19 10:49:40.157688+00	\N	\N	2e5a3980-e869-4ab0-969f-672d5a0d26c9	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "GROUP_DETAIL", "id": "24fa16b4-f0cf-4eeb-a10f-868e32061ec7"}	group	f	Group Join 	Mukul has joined RNSIT 11	4e82af3f-b695-49e9-8c83-b234ce459de5	\N	\N
2024-06-05 12:31:15.575846+00	\N	\N	1faff792-bb50-4fa1-88fb-e461842c8650	93f47453-622d-4f4c-9208-093193669900	{"screen_type": "ALL_FRIENDS", "id": null}	friend	f	Friend Request	Shamanth accepted your friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-05 12:31:18.869685+00	\N	\N	4d093ec7-dd3e-4a6e-977c-c446fb9531c5	accd4c2d-17f1-4d48-839a-dd9367a798f6	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	f	Following	Shamanth started Following you	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-20 18:27:33.25705+00	\N	\N	fa9a1cdf-3564-49b7-9970-a1276f17448c	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "REGULAR_POST", "id": "4844cb1e-5666-4906-91d5-69291e3479e1"}	post	f	Like	Ritik Rajoria liked your post	82beae83-ee98-4f38-b3de-d27ee137ef27	\N	\N
2024-06-14 08:43:43.739385+00	\N	\N	8ec1716d-677f-47e8-af79-4073bda73b3e	93f47453-622d-4f4c-9208-093193669900	{"screen_type": "BETTING_DETAIL", "id": "9e0a5ae0-d413-40cb-92a8-231f7cb4a7d0"}	post	f	Betting Invite	Betting invite from Shamanth	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-14 12:47:34.604379+00	\N	\N	6b397fb0-bc5d-46a7-93b2-257b709b0d35	accd4c2d-17f1-4d48-839a-dd9367a798f6	{"screen_type": "ALL_FRIENDS", "id": null}	friend	f	Friend Request	Shamanth has sent you a friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-03 07:08:23.31621+00	2024-06-14 14:08:08.707414+00	\N	abe39868-d7d4-4219-8a7b-612d841b833f	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Tushar accepted your friend request	7c28a321-9ae7-4923-94a8-070feb58955d	\N	\N
2024-06-11 13:00:06.634193+00	\N	\N	6a4293bc-b7aa-4d6c-be67-a90cafeb93ef	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "BETTING_DETAIL", "id": "0b16c806-8055-4bd7-a0d6-e4000f99e1b0"}	post	f	Betting Invite	Betting invite from Shamanth	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-03 13:55:07.3611+00	2024-06-14 14:08:08.872633+00	\N	44d52ef2-4c33-478a-b26f-7e6108aa1b1d	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Redmi has sent you a friend request	93f47453-622d-4f4c-9208-093193669900	\N	\N
2024-06-05 12:20:53.167986+00	2024-06-14 14:08:08.89509+00	\N	647ab8a6-4c22-46b2-b8f1-12304a4c5c5e	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	t	Following	Ojas started Following you	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-06-05 12:21:13.746119+00	2024-06-14 14:08:08.9081+00	\N	1ac70bbf-f670-4d43-9889-49669e65eb8f	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Ojas has sent you a friend request	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	\N
2024-06-18 06:47:35.813728+00	\N	\N	80fcad68-aa8d-454c-a55d-22413e88833e	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"screen_type": "ALL_FRIENDS", "id": null}	friend	f	Friend Request	Tushar accepted your friend request	7c28a321-9ae7-4923-94a8-070feb58955d	\N	\N
2024-06-05 12:31:11.793007+00	2024-06-08 07:41:07.711424+00	\N	bcc72523-4a31-4175-b2c4-f8296949e23a	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"screen_type": "ALL_FRIENDS", "id": null}	friend	t	Friend Request	Shamanth accepted your friend request	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-02-29 09:56:38.128454+00	2024-06-18 06:49:41.989524+00	\N	db46bc5a-0450-4f83-9302-c1780f1aa411	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "GROUP_DETAIL", "id": "24fa16b4-f0cf-4eeb-a10f-868e32061ec7"}	group	t	Group Invite	Subramanya M Rao has sent you a group invite	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	\N
2024-06-06 13:50:51.066541+00	2024-06-18 06:49:42.002668+00	\N	5c98bf3e-e0f0-4111-8fe9-f470006f67f2	7c28a321-9ae7-4923-94a8-070feb58955d	{"screen_type": "ALL_FOLLOWING", "id": null}	friend	t	Following	Shamanth started Following you	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	\N
2024-06-20 18:27:36.398359+00	\N	\N	314d0b60-fe08-4178-95ba-e6790793f0cd	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"screen_type": "REGULAR_POST", "id": "4844cb1e-5666-4906-91d5-69291e3479e1"}	post	f	Like	Ritik Rajoria liked your post	82beae83-ee98-4f38-b3de-d27ee137ef27	\N	\N
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (created_at, update_at, deleted_at, id, type, title, description, user_id, visibility, meta_data, location, group_id, is_tag, promotion, expire_on, share_link, status) FROM stdin;
2024-02-07 06:51:57.174652+00	\N	\N	36454c44-67e5-4e4f-b366-b0e06a46ccb8	regular	\N	terst	52f05d90-e8fe-42f1-941e-fb9df0db82b5	admin	\N	{"city": [], "state": null}	\N	\N	f	\N	\N	active
2024-02-07 10:22:47.377492+00	\N	\N	600d8b8f-0b51-4048-b70b-37e1e7c47392	regular	\N	test 2	52f05d90-e8fe-42f1-941e-fb9df0db82b5	admin	\N	{"city": [], "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:26:05.972807+00	\N	\N	457764df-513e-41a8-992e-b308a3879640	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:26:27.229833+00	\N	\N	2d3e1cc1-f1ab-41ba-8401-9d2e2e6d9055	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:26:49.889731+00	\N	\N	e490fbf3-e5b1-4d28-852d-4f8094aa713e	activity	TESTING ACTIVITY more_info 1	First group activity created by me	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": "Patna", "state": "Bihar"}	\N	\N	f	\N	\N	active
2024-02-14 18:27:14.967031+00	\N	\N	87d9e54b-8e69-42ed-9df6-78c482d25510	activity	TESTING ACTIVITY more_info 1	First group activity created by me	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": "Patna", "state": "Bihar"}	\N	\N	f	\N	\N	active
2024-02-14 18:28:17.321247+00	\N	\N	6e50d924-a693-4839-8b9c-4328781647ec	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:28:51.998482+00	\N	\N	6bc892e5-19c2-43a7-a19a-b0817ba96869	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:30:36.009646+00	\N	\N	58be26dd-1727-45c7-b0be-a4960def0344	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:30:47.284287+00	\N	\N	53bd84a1-9ed2-4c1c-9af2-cd79ffc4c599	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:31:53.159544+00	\N	\N	1da9d647-3e81-4bb7-879d-3a12b74f18ee	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:32:29.672259+00	\N	\N	cdf5ffdf-f60c-4679-bc84-a22bf0f86133	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:33:17.445369+00	\N	\N	03ee1a09-a50a-4765-84bd-07f2bd127c44	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:37:13.557136+00	\N	\N	15908566-0fba-4967-9423-6c22c1ec8fb4	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:49:30.420749+00	\N	\N	04c3cc2f-cb0f-47b8-b483-206062ab2a88	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:50:04.10422+00	\N	\N	dd3dd7ad-e46d-46c2-96dc-eca406f39223	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:52:21.597259+00	\N	\N	2c4c2ee5-97d7-4ae7-917c-e2bcbbb46990	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:52:41.862595+00	\N	\N	884761aa-9730-4972-9882-3946cf4bdc7b	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:53:01.534423+00	\N	\N	10681bcb-121c-4c97-b440-f3b7b2c151fc	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 18:59:06.214689+00	\N	\N	ff6cb3a2-de91-4daf-abda-90d0cde608a4	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 19:01:10.322394+00	\N	\N	fc0a06cb-f244-4e22-9301-199faf5051ea	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-14 19:03:13.614922+00	\N	\N	cfc2b93e-0abb-4229-a77a-2657b1387912	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	\N	{"city": null, "state": null}	\N	\N	f	\N	\N	active
2024-02-22 09:29:34.668104+00	\N	\N	354bba02-9389-4d98-adaa-76288aef7e18	regular	\N	Testing post createion	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	\N	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	\N	f	\N	\N	active
2024-02-22 09:30:27.53554+00	\N	\N	41eb2c2b-07b4-49ea-afff-6f3679ff191a	regular	\N	Testing post createion	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	\N	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	\N	f	\N	\N	active
2024-02-27 12:05:06.695624+00	\N	\N	113478bf-12c8-48f3-94a1-cd1a6b48cf0f	regular	\N	Testing....	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	\N	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	\N	f	\N	\N	active
2024-02-27 12:14:09.209776+00	\N	\N	9483e723-bb9d-48c2-9466-050446a3eee2	regular	\N	Testing....	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	\N	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	\N	f	\N	\N	active
2024-02-27 12:19:54.917336+00	2024-02-27 12:19:55.1155+00	\N	28338db4-032f-4789-ad82-40df1257d065	regular	\N	Testing now	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_7285cdc8-5327-4679-bf2f-c79f6747d2d9.jpg", "media_id": "b6039148-ccfc-4db7-a809-58aa05f5015b"}]}	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	f	f	\N	\N	active
2024-02-27 12:51:03.066643+00	2024-02-27 12:51:03.557783+00	\N	ea05926d-fc71-4fcc-910b-9a8b8008aca9	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	{"media": [{"sorting_position": 0, "media_type": "image", "path": "https://adrenaln-files.s3.amazonaws.com/rn_image_picker_lib_temp_099f5b91-24e0-416c-a7e2-39beafe3d307.jpg", "media_id": "67bb329f-1bdb-4d06-a1b4-f8fda9063bb1"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-02-27 12:45:34.035694+00	2024-02-27 12:45:34.239388+00	\N	4844cb1e-5666-4906-91d5-69291e3479e1	regular	\N	Testing...	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_050aad1b-ceaf-4073-acfb-81fa15de9922.jpg", "media_id": "a02f1481-c543-460a-a376-5cd4adb3964d"}]}	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	f	f	\N	\N	active
2024-02-27 12:47:27.693359+00	2024-02-27 12:47:27.892436+00	\N	dd27a388-cc7c-413c-876f-3302fa2e59db	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	{"media": [{"sorting_position": 0, "media_type": "image", "path": "https://adrenaln-files.s3.amazonaws.com/rn_image_picker_lib_temp_099f5b91-24e0-416c-a7e2-39beafe3d307.jpg", "media_id": "67bb329f-1bdb-4d06-a1b4-f8fda9063bb1"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-02-27 12:58:25.032488+00	2024-02-27 12:58:25.068489+00	\N	b99bd57e-d2e0-41b1-96bc-cc87dd80f384	regular	\N	Testing posting	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	\N	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-02-27 12:49:59.793337+00	2024-02-27 12:50:00.40616+00	\N	697aa9b9-fc1f-446d-8901-1abf081b1f6d	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	{"media": [{"sorting_position": 0, "media_type": "image", "path": "https://adrenaln-files.s3.amazonaws.com/rn_image_picker_lib_temp_099f5b91-24e0-416c-a7e2-39beafe3d307.jpg", "media_id": "67bb329f-1bdb-4d06-a1b4-f8fda9063bb1"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-02-27 12:59:02.039616+00	2024-02-27 12:59:02.055977+00	\N	a6a2bbdb-2876-4006-9de8-15f19b8b6e4b	regular	\N	Testing again...	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	\N	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-02-29 09:57:29.778363+00	2024-02-29 09:57:29.986415+00	\N	bcce3e11-e1da-446a-a266-c139363e4a89	regular	\N	Welcome to RNSIT 11	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_6e183751-f202-45f6-8649-e175da35bfc9.png", "media_id": "eca28b36-6141-4ce9-8b64-95913d0b71ca"}]}	{"city": "Bengaluru Urban District", "state": "Karnataka"}	24fa16b4-f0cf-4eeb-a10f-868e32061ec7	f	f	\N	\N	active
2024-02-27 13:00:15.605586+00	2024-03-04 05:32:33.238672+00	2024-03-04 11:02:33.278132+00	7200e544-f3c9-4b15-8d8f-5c767d5e2b95	regular	\N	Testing with image	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_6c64feb0-09d3-4e09-99e4-4efa748ae15e.jpg", "media_id": "a2341d09-2a71-4a70-97c9-465a7cb060ef"}]}	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	f	f	\N	\N	active
2024-02-27 12:18:44.636571+00	2024-03-12 09:28:45.349009+00	2024-03-12 09:28:46.685829+00	ca42ef50-5d10-45e3-b14e-00c27f63edf6	regular	\N	Testing....	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_4208513f-64c8-45b0-aba5-34b732ed8ec5.jpg", "media_id": "c75f294d-5bc3-4c2d-86b0-d7ee67afe6be"}]}	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	f	f	\N	\N	active
2024-04-29 11:15:40.233894+00	2024-04-29 11:15:40.292547+00	\N	244702d4-c0e2-4f00-8518-96f21b974a2d	watch_activity	From Android Health Connect	Lunch walk	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "6cb3a066-2a01-3635-82b8-a56489132965", "activityName": "Walking", "startTime": "24-04-29 12:35:20 PM", "endTime": "24-04-29 12:36:27 PM", "duration": 66887}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-04-29 11:17:00.161994+00	2024-04-29 11:17:00.201172+00	\N	2a8f7924-d32a-4edb-af07-8c12bc0c4c5d	watch_activity	From Android Health Connect	None	05f59f52-18be-45d4-bf8b-39640b7b2fab	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "0f5286e6-799f-34c9-b52d-a058e03899f5", "activityName": "Others", "startTime": "24-04-29 4:20:51 PM", "endTime": "24-04-29 4:21:59 PM", "duration": 68000}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-02-29 10:00:41.694878+00	2024-02-29 10:00:41.926401+00	\N	a08fcb18-edfe-4491-87f0-96cac037ec0f	record_activity	Testing this out	Test💀	5854dc2c-7b3e-46b2-aa84-a51e448750be	friends	{"activity": {"activity_id": "18fa936e-97e6-49c6-9f29-d52ccccc18ec", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Other Sports", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 17", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Killer", "unit": ""}], "felt": null}, "media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/ReactNative-snapshot-image6739297672786670147.jpg", "media_id": "eb6aa096-c804-4873-a073-4760252cba6a"}]}	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	f	f	\N	\N	active
2024-02-29 10:07:14.89009+00	2024-02-29 10:07:15.184409+00	\N	75ee1096-8cee-429c-adba-d6f19d67c01e	regular	\N	Testing...	7c28a321-9ae7-4923-94a8-070feb58955d	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_52b0965d-3e16-46fb-b491-c3cb2819fed4.jpg", "media_id": "473ae129-908f-40c3-b91b-83400d33da69"}]}	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	f	f	\N	\N	active
2024-03-06 08:54:25.889848+00	2024-03-11 11:42:02.121171+00	\N	40d3d421-7326-4042-87a7-e25db9bc0021	activity	\N	Cycle ride after months	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"activity": {"activity_id": "a6987b1c-2be0-47a8-bb26-a84961a07656", "more_info": null, "parameters": [{"key": "distance", "label": "Distance", "type": "float", "units": ["kms", "miles"], "value": "50", "unit": "kms"}, {"format": ["hr:min:sec"], "key": "total_time", "label": "Total Time", "type": "int", "units": ["hrs:mins", "mins:secs"], "value": "3", "unit": "hrs:mins"}, {"format": ["hr:min:sec"], "key": "moving_time", "label": "Moving Time", "type": "int", "units": ["hrs:mins", "mins:secs"]}, {"key": "moving_pace", "label": "Moving pace", "type": "int", "units": ["mins:kms", "mins:miles"]}, {"key": "avg_moving_speed", "label": "Avg Moving Speed", "type": "int", "units": ["kms:hr", "miles:hr"]}, {"key": "calories_burnt", "label": "Calories Burnt", "type": "int", "units": ["kcal"], "value": "700", "unit": "kcal"}, {"key": "elevation", "label": "Elevation", "type": "int", "units": ["mtrs", "feet"], "value": "200", "unit": "mtrs"}, {"key": "avg_heart_rate", "label": "Avg Heart Rate", "type": "int", "units": ["bpm"], "value": "130", "unit": "bpm"}, {"key": "difficulty", "label": "Difficulty", "type": "dropdown", "values": [{"label": "Easy", "value": "easy"}, {"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"}, {"label": "Killer", "value": "killer"}], "value": "moderate"}]}, "media": [{"sorting_position": 0, "type": "video", "path": "https://adrenalnbucket.s3.amazonaws.com/video:255", "media_id": "7ee271a7-da34-473a-9521-368604c476db"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	inactive
2024-03-06 08:58:18.909285+00	2024-03-06 08:58:30.601365+00	\N	fb3e314e-540f-4fd9-8ffa-68dccb36ba7e	betting	\N	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	custom	{"betting": {"primary_team": "india", "secondary_team": "qatar", "item_description": "Score 2-1", "prediction_description": "India", "result": null, "members": ["b9117901-96ad-4b87-b47a-2f9aa6575fb6"]}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-03-06 09:51:25.246934+00	2024-03-06 09:51:27.965309+00	\N	df93fa14-c384-4daa-ab13-f607b802be02	regular	\N	Trial from payal	b9117901-96ad-4b87-b47a-2f9aa6575fb6	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_d7767d16-af6f-4bc7-aa9d-d100813aec13.jpg", "media_id": "c43f2491-462c-47ad-9b56-546289f4ee6d"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-03-06 09:56:58.33384+00	2024-03-06 09:57:01.033646+00	\N	91531512-27a7-4094-83bb-43f47cf16ec9	record_activity	Trial of recording	Trial	f039da77-98d1-4ef2-bb2a-72faaec7c494	friends	{"activity": {"activity_id": "91d7f109-8dd5-490e-b787-ffa60bdd9cac", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Football", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.08", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "02 : 07", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "2.38", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Relaxed", "unit": ""}, {"key": "max_elevation", "label": "Max Elevation", "type": "float", "units": ["m"], "value": "835.30", "unit": "m"}, {"key": "min_elevation", "label": "Min Elevation", "type": "float", "units": ["m"], "value": "835.30", "unit": "m"}], "felt": null}, "media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/ReactNative-snapshot-image3402889622072459326.jpg", "media_id": "51d4661c-2b1d-4ff2-876d-5b23660d5b8d"}]}	{"city": "Bengaluru Urban District", "state": "Karnataka"}	\N	f	f	\N	\N	active
2024-03-07 10:41:33.218984+00	\N	\N	311a3937-eaf9-46bb-9741-bfd44f55e006	regular	\N	Trial of admin shot out post	9febfa40-04ea-4915-b2f9-c0cf97b047a6	admin	\N	{"city": [], "state": null}	\N	\N	f	\N	\N	active
2024-03-11 11:54:00.369676+00	2024-03-11 11:54:03.565694+00	\N	50576606-7ed1-4084-93cd-277b3e0fed97	regular	\N	testing group 3	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	all	{"media": [{"sorting_position": 0, "media_type": "image", "path": "https://adrenaln-files.s3.amazonaws.com/rn_image_picker_lib_temp_099f5b91-24e0-416c-a7e2-39beafe3d307.jpg", "media_id": "67bb329f-1bdb-4d06-a1b4-f8fda9063bb1"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-04-25 19:25:39.699885+00	2024-04-25 19:25:39.771511+00	\N	8dd47792-2c21-4d27-b635-2dfa312d7596	regular	\N	Testing...	7c28a321-9ae7-4923-94a8-070feb58955d	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/1000097771.jpg", "media_id": "c02d7b53-abba-4390-a2b0-06786fbb9598"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-04-29 07:03:41.660069+00	2024-04-29 07:03:41.72472+00	\N	0b357f90-291b-4ced-ba84-dfdeb4b935f7	watch_activity	Steps	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "55922cac-be8f-42c4-95b3-0de728682968", "activityName": "Steps", "startTime": "", "endTime": "", "duration": "", "additionalProps": [{"count": 32}, {"endTime": "2024-04-28T03:40:57.345Z"}, {"startTime": "2024-04-28T03:39:53.344Z"}]}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-04-26 04:46:42.272815+00	2024-04-26 04:46:42.333066+00	\N	dd6cdddc-39dc-4b64-86a8-cce82ac6905a	watch_activity	Steps	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "65af976b-0267-4e2b-9eaa-70adc38702d3", "activityName": "Steps", "startTime": "", "endTime": "", "duration": "", "additionalProps": [{"count": 13}, {"endTime": "2024-04-25T03:00:07.464Z"}, {"startTime": "2024-04-25T02:59:31.038Z"}]}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-04-29 07:07:16.703679+00	2024-04-29 07:07:16.771455+00	\N	9ec36e44-cbb4-49c2-bc9d-b8ad2b4a10f9	watch_activity	From Android Health Connect	Lunch walk	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "6cb3a066-2a01-3635-82b8-a56489132965", "activityName": "Walking", "startTime": "24-04-29 12:35:20 PM", "endTime": "24-04-29 12:36:27 PM", "duration": 66887}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-03-06 08:50:24.675135+00	2024-05-10 11:28:26.24298+00	\N	5325e458-481e-4656-8da4-c508b5941644	regular	\N	Looking fwd for a cheat day today. Bring it on 😁😁	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"media": [{"media_id": "f49fdbe1-69f0-4455-a7d1-b7617cdd4e54", "path": "https://adrenalnbucket.s3.amazonaws.com/rn_image_picker_lib_temp_4100b5a9-a7fd-4243-a62b-694d90e71b25.jpg", "sorting_position": 0, "type": "image"}]}	{"city": null, "state": null}	\N	f	t	\N	\N	active
2024-04-29 11:18:46.564509+00	2024-04-29 11:18:46.621345+00	\N	69cc2166-9714-420d-ba57-850b3cca694b	watch_activity	From Android Health Connect	Afternoon handball	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "f17556d7-c96b-3d93-9dcd-b7c38f073260", "activityName": "Others", "startTime": "24-04-29 4:47:14 PM", "endTime": "24-04-29 4:47:58 PM", "duration": 43541}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-04 10:39:44.791208+00	2024-05-04 10:39:44.84952+00	\N	78a7c7d2-b605-4b69-86e6-241a63bffaa6	record_activity	Test	Testing...	5854dc2c-7b3e-46b2-aa84-a51e448750be	friends	{"activity": {"activity_id": "18fa936e-97e6-49c6-9f29-d52ccccc18ec", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Other Sports", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 08", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Difficult", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
2024-05-06 11:53:40.974344+00	2024-05-06 11:53:41.018871+00	\N	d50c10bf-9636-48ab-9ec2-bcf0492126cb	watch_activity	From Android Health Connect	Afternoon walk	37082d82-a174-4122-82f3-c6c022d8c0b5	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "71df464c-afcb-34db-904b-1d7c62290ae3", "activityName": "Walking", "distance": "NaN", "avgSpeed": "NaN", "duration": "1:22"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-04-30 06:31:58.366169+00	2024-05-16 10:34:57.209537+00	\N	e678aed6-3006-4b3d-9e29-0c0bc55fcf85	watch_activity	From Android Health Connect	\N	05f59f52-18be-45d4-bf8b-39640b7b2fab	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "decdf540-f7ac-3e87-905b-b6d0d888c754", "activityName": "Strength Training", "startTime": "24-04-30 11:57:47 AM", "endTime": "24-04-30 12:00:10 PM", "duration": 143000}}	{"city": null, "state": null}	\N	f	f	\N	\N	inactive
2024-04-30 04:34:56.110992+00	2024-04-30 04:34:56.168225+00	\N	37b36251-8efd-4bd0-b6c8-d2b066a1316c	watch_activity	From Android Health Connect	Morning bike ride	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "26dfd4e4-bdc1-3b6f-aea0-6239f901dc0f", "activityName": "Biking", "startTime": "24-04-30 10:02:34 AM", "endTime": "24-04-30 10:03:26 AM", "duration": 51627}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-04-30 06:16:01.546185+00	2024-04-30 06:16:01.602455+00	\N	1a82a54c-2f56-43ad-bb52-ba90173f68ae	watch_activity	From Android Health Connect	\N	05f59f52-18be-45d4-bf8b-39640b7b2fab	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "0f5286e6-799f-34c9-b52d-a058e03899f5", "activityName": "Strength Training", "startTime": "24-04-29 4:20:51 PM", "endTime": "24-04-29 4:21:59 PM", "duration": 68000}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-04-30 06:26:51.859873+00	2024-04-30 06:26:51.928741+00	\N	69492572-d806-4f4f-aeba-8a3c2a2c6ef0	watch_activity	From Android Health Connect	\N	05f59f52-18be-45d4-bf8b-39640b7b2fab	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "56ad2a06-9641-35dd-b1b4-e3099178f38d", "activityName": "Other Workout", "startTime": "24-04-30 11:50:26 AM", "endTime": "24-04-30 11:52:28 AM", "duration": 122000}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-02 07:26:46.764701+00	2024-05-02 07:26:46.820705+00	\N	080d2392-7905-4e2f-9288-22fe21cbb8b6	record_activity	Trial	For syncing to app	f039da77-98d1-4ef2-bb2a-72faaec7c494	friends	{"activity": {"activity_id": "308204b8-57ca-4ec6-bf06-2b9945dc42ce", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Walk", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 31", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Relaxed", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
2024-05-07 08:41:38.968945+00	2024-05-07 08:41:39.045414+00	\N	713025c6-3544-4a80-8f7d-6deac30fe212	watch_activity	From Android Health Connect	Afternoon run	37082d82-a174-4122-82f3-c6c022d8c0b5	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "98003c69-4bb5-3cd0-b569-578d7a963809", "activityName": "Running", "startTime": "24-05-07 14:09:59", "endTime": "24-05-07 14:11:02", "duration": 62892}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-03 06:15:53.752276+00	2024-05-03 06:15:53.811474+00	\N	d25abaf4-6687-414e-9fa4-f8a1c3a3b792	regular	\N	Trial post 3/5 to checl cms	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/edbbcad5df4dca81cc3770dfd9cc084b.jpg", "media_id": "62ea343a-1fee-420b-9ba2-3d3373cef22f"}]}	{"city": null, "state": null}	\N	f	t	\N	\N	active
2024-05-04 12:19:24.899542+00	2024-05-04 12:54:37.608013+00	2024-05-04 12:54:37.591205+00	29cda9fc-b598-4983-8aaa-ed9eafd76b98	watch_activity	From Android Health Connect	test walk	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "3fd9bcdc-aa32-3756-a84e-724104c0e80d", "activityName": "Walking", "distance": "8.00", "avgSpeed": "16.00", "steps": 7000, "duration": "30:00"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-06 08:56:55.285758+00	2024-05-06 08:56:55.345683+00	\N	4387cfc4-3338-4225-98e1-28c8e8f995ea	watch_activity		\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"activity": {"source": "com.sec.android.app.shealth", "activity_id": "a5c0f63c-8f42-4281-8305-eb2ddb9840b5", "activityName": "Walking", "distance": 0, "avgSpeed": 0, "steps": 0, "duration": ""}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-06 09:20:38.433918+00	2024-05-06 09:20:38.489601+00	\N	d81b195c-50bf-495b-96fc-4890a9f9a09a	watch_activity	From Android Health Connect	Afternoon walk	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "4b2fb301-c3a5-3b16-bd2a-a5ef13dbf046", "activityName": "Walking", "distance": "NaN", "avgSpeed": "NaN", "duration": "2:02"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-06 12:37:13.334127+00	2024-05-06 12:37:13.401146+00	\N	2a1fc693-e843-4a6b-90f2-fcb3f7afc4f5	watch_activity	From Android Health Connect	Evening walk	37082d82-a174-4122-82f3-c6c022d8c0b5	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "fcfa1443-73ac-3d0e-a9b8-8453888d71fc", "activityName": "Walking", "distance": "0.14", "avgSpeed": "2.75", "steps": 194, "duration": "3:03"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-04 12:15:39.006797+00	2024-05-06 14:04:02.197336+00	2024-05-06 14:04:02.208926+00	daa417bf-21f6-4f1d-8819-8b0498ed26f9	watch_activity	From Android Health Connect	test walk	5854dc2c-7b3e-46b2-aa84-a51e448750be	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "3fd9bcdc-aa32-3756-a84e-724104c0e80d", "activityName": "Walking", "distance": "8.00", "avgSpeed": "16.00", "steps": 7000, "duration": "30:00"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-06 12:45:47.902809+00	2024-05-06 12:45:47.952346+00	\N	b032302b-4333-4f48-a4ec-f54ea86d561b	watch_activity	From Android Health Connect	Evening walk	37082d82-a174-4122-82f3-c6c022d8c0b5	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "fcfa1443-73ac-3d0e-a9b8-8453888d71fc", "activityName": "Walking", "distance": "0.14", "avgSpeed": "2.75", "steps": 193, "duration": "3:03"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-07 09:05:00.372824+00	2024-05-07 09:05:00.4377+00	\N	a5672a72-641e-4a78-8bed-4d48a9fb351d	watch_activity	From Android Health Connect	Afternoon boxing	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "a9cc4dd2-d673-3a5e-b74b-339b569c1d2f", "activityName": "Boxing", "distance": "NaN", "avgSpeed": "NaN", "duration": "1:01"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-08 13:04:51.603543+00	2024-05-08 13:04:51.658125+00	\N	8367c295-960a-4968-b97e-24b4417a0184	watch_activity	From Android Health Connect	Evening walk	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "f22314d9-22e6-37ef-bed3-cd68767294ab", "activityName": "Walking", "distance": "0.02", "avgSpeed": "0.93", "duration": "1:17"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 12:09:03.861707+00	2024-05-13 13:08:58.881483+00	2024-05-13 13:08:58.894469+00	b92c03bd-7f38-42d5-b3bf-75461edfdd59	watch_activity	From Home Workout	BEFORE WORKOUT WARMUP	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "homeworkout.homeworkouts.noequipment", "activity_id": "6044d2d4-0895-406d-8325-149e5c9b8c6f", "activityName": "Other Workout", "distance": "NaN", "startTime": "", "endTime": "", "avgSpeed": "NaN", "duration": "2min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-08 13:04:55.312962+00	2024-05-08 13:04:55.353662+00	\N	be4f454e-f4b6-4072-bb9f-046d15dc327a	watch_activity	From Android Health Connect	Evening walk	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "f9858733-df4b-34bf-9274-7a99695b6233", "activityName": "Walking", "distance": "0.04", "avgSpeed": "1.49", "steps": 68, "duration": "1:36"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-10 11:45:21.581066+00	2024-05-10 11:45:21.632641+00	\N	62d839dd-836c-43c4-9c96-8005a0753d02	regular	\N	Trial of boosted post	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240502-WA0000.jpg", "media_id": "0aa1d6d1-34ac-4b5a-b9d3-ed3908998d9b"}]}	{"city": null, "state": null}	\N	f	t	\N	\N	active
2024-05-08 13:30:30.950042+00	2024-05-08 13:30:31.016555+00	\N	0273721d-2f8e-4567-a2f2-a6c82a109049	watch_activity		\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.fitbit.FitbitMobile", "activity_id": "638c6483-0996-3210-9cd7-8b24889d4747", "activityName": "Walking", "distance": 0, "avgSpeed": 0, "steps": 0, "duration": ""}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-09 06:04:46.763869+00	2024-05-09 06:04:46.83357+00	\N	8cb225c6-4462-452f-9196-a148e21a75ff	regular	\N	Trial cms	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240502-WA0001.jpg", "media_id": "c875e591-ca96-4a4e-8cef-dc8c35f03e21"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-09 07:36:16.495193+00	\N	\N	85f16f3f-aecb-45b7-b654-a2de64550a96	regular	\N	Admin blast post 	9febfa40-04ea-4915-b2f9-c0cf97b047a6	admin	\N	{"city": [], "state": null}	\N	\N	f	\N	\N	active
2024-05-13 08:41:09.764902+00	2024-05-13 08:41:09.780166+00	\N	0a0ff680-96fa-4662-980f-9c0e6634f130	regular	\N	Trial after bing blocked	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	\N	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-09 10:44:01.736425+00	2024-05-09 10:44:01.806057+00	\N	ab46808e-e166-4b12-b116-f821304b6cfd	regular	\N	To check on reported post	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240502-WA0002.jpg", "media_id": "a3eede79-360c-4367-bcee-ebcb5e81870d"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-09 10:48:30.909513+00	2024-05-09 10:48:30.924464+00	\N	d00086d7-e812-44cc-bb65-1300c52b7f01	regular	\N	Testing if post comes to friends	b9117901-96ad-4b87-b47a-2f9aa6575fb6	all	\N	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-09 17:37:43.720135+00	2024-05-09 17:37:43.777118+00	\N	b3b210f4-e8ab-4546-9cb4-e05bf4baac89	watch_activity	From Google	Late night walk	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "e251af73-d68f-32e2-a339-10ac6bc3df69", "activityName": "Walking", "distance": "0.04", "startTime": "", "endTime": "", "avgSpeed": "2.29", "steps": 92, "duration": "1min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 08:47:24.876542+00	2024-05-13 08:47:24.891314+00	\N	627d8d92-5214-438c-b668-5a06421a2930	regular	\N	Trial	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	\N	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-09 17:38:25.709777+00	2024-05-09 17:38:25.759032+00	\N	65003001-7554-4291-9496-6b40493b6eac	watch_activity	From Fitbit	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.fitbit.FitbitMobile", "activity_id": "92d5ac35-060c-339d-8292-54505dfc13f4", "activityName": "Running", "distance": "0.10", "startTime": "", "endTime": "", "avgSpeed": "2.88", "steps": 84, "duration": "2min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-10 10:36:13.652993+00	2024-05-10 10:36:13.719965+00	\N	8562bca7-b31d-48ce-baa3-a660e86f751f	watch_activity	From Google	Running May 10, 2024 3:44:21 PM	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.google.android.apps.fitness", "activity_id": "3385f06a-88e4-3332-bec5-6eb87af5fa54", "activityName": "Running", "distance": "0.00", "startTime": "", "endTime": "", "avgSpeed": "0.00", "duration": "1min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-10 11:44:38.156013+00	2024-05-10 11:44:38.209056+00	\N	31071ac2-4e51-4b97-bb45-bd7aa56eb677	regular	\N	Trial of public post	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/Screenshot_2024-05-08-13-31-32-258_com.adrenaln.development.jpg", "media_id": "2936692c-570d-4e7f-9fc5-cad82855c09e"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 09:54:04.820515+00	2024-05-13 09:54:04.879824+00	\N	225b962b-bfc1-40d2-92c2-231da54745da	watch_activity		CHEST BEGINNER	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "homeworkout.homeworkouts.noequipment", "activity_id": "c5052cf8-f5ff-4b09-8573-7be42cdf428b", "activityName": "Other Workout", "distance": 0, "startTime": "", "endTime": "", "avgSpeed": 0, "steps": 0, "duration": ""}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 11:40:26.647917+00	2024-05-13 11:40:26.711527+00	\N	bc29fdcc-0f70-4fd8-af94-70b6c66d7fcc	record_activity	Walk	Wow	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	friends	{"activity": {"activity_id": "308204b8-57ca-4ec6-bf06-2b9945dc42ce", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Walk", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 45", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Killer", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
2024-05-13 12:35:15.830654+00	2024-05-13 12:35:15.880941+00	\N	a67745df-ea73-4e08-aa15-580370d5a6e6	watch_activity		\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.alltrails.alltrails", "activity_id": "605b1f8a-cbf9-4155-8f21-71db5899069d", "activityName": "Walking", "distance": 0, "startTime": "", "endTime": "", "avgSpeed": 0, "steps": 0, "duration": ""}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 13:49:24.306758+00	2024-05-13 13:49:24.358668+00	\N	77129cb3-a7f7-4b33-b155-429f7fb16a14	watch_activity	From AllTrails	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.alltrails.alltrails", "activity_id": "56252897-f06e-4b4d-a5ac-c8d584f0bc3e", "activityName": "Biking", "distance": 0, "startTime": "", "endTime": "", "avgSpeed": 0, "duration": "50.036sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-16 12:10:57.183947+00	2024-05-16 12:10:57.303926+00	\N	e6278930-898c-4ba8-a343-a9a41374337a	betting	\N	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	custom	{"betting": {"primary_team": "rcb", "secondary_team": "csk", "item_description": "Pizza bet", "prediction_description": "Rcb", "result": null, "members": ["b9117901-96ad-4b87-b47a-2f9aa6575fb6", "cb086201-ede7-42fb-856e-d250a66d40b6"]}}	{"city": null, "state": null}	\N	f	f	2024-05-18 17:38:00	\N	active
2024-05-14 12:49:39.599628+00	2024-05-14 12:49:39.865997+00	\N	a98388fd-9505-4602-a9b9-01b577a51f46	watch_activity	From Outdooractive	Outdooractive	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.outdooractive.Outdooractive", "activity_id": "9cc46908-d665-383b-992a-a1eb40e863bc", "activityName": "Hiking", "distance": "0.12", "startTime": "", "endTime": "", "avgSpeed": "9.39", "duration": "46sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 13:59:53.237282+00	2024-05-13 14:00:18.100141+00	2024-05-13 14:00:18.117951+00	41d7719e-09ec-49bc-841e-675cda93171f	watch_activity	From AllTrails	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.alltrails.alltrails", "activity_id": "fbd6db5f-87e3-47ef-9599-861e7ab1e193", "activityName": "Biking", "distance": "0.11", "startTime": "", "endTime": "", "avgSpeed": "6.88", "duration": "57.521sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 13:59:10.966599+00	2024-05-13 14:00:24.291006+00	2024-05-13 14:00:24.311253+00	12d9aeef-c541-411c-8ad3-08e821ce4998	watch_activity	From AllTrails	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.alltrails.alltrails", "activity_id": "fbd6db5f-87e3-47ef-9599-861e7ab1e193", "activityName": "Biking", "distance": "0.11", "startTime": "", "endTime": "", "avgSpeed": "6.88", "duration": "57.521sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 14:00:43.231614+00	2024-05-13 14:00:43.270592+00	\N	ead16088-f8ab-46cf-8917-941071a85218	watch_activity	From AllTrails	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.alltrails.alltrails", "activity_id": "fbd6db5f-87e3-47ef-9599-861e7ab1e193", "activityName": "Biking", "distance": "0.11", "startTime": "", "endTime": "", "avgSpeed": "6.88", "duration": "57.521sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 12:57:35.10232+00	2024-05-14 12:57:35.14154+00	\N	0fb0dffa-cfe7-447e-9dca-3fb68c491531	watch_activity	From AllTrails	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.alltrails.alltrails", "activity_id": "259d6c07-e609-4d5f-b3ae-d794a174ab80", "activityName": "Walking", "distance": "0.02", "startTime": "", "endTime": "", "avgSpeed": "1.25", "duration": "57.523sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 14:00:55.824437+00	2024-05-13 14:00:55.868976+00	\N	a1b2c884-7520-4b8a-a7be-2fbcf91499d3	watch_activity	From AllTrails	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.alltrails.alltrails", "activity_id": "fbd6db5f-87e3-47ef-9599-861e7ab1e193", "activityName": "Biking", "distance": "0.11", "startTime": "", "endTime": "", "avgSpeed": "6.88", "duration": "57.521sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 14:01:13.184379+00	2024-05-13 14:01:13.234887+00	\N	9552e757-79ad-4595-9bd3-b2d84cd5f85d	watch_activity	From Outdooractive	Outdooractive	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.outdooractive.Outdooractive", "activity_id": "9cc46908-d665-383b-992a-a1eb40e863bc", "activityName": "Hiking", "distance": "0.12", "startTime": "", "endTime": "", "avgSpeed": "9.39", "duration": "46sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 12:49:53.266328+00	2024-05-14 12:49:53.310323+00	\N	ed8ec1bb-b1fd-4413-a9ae-4994346806d5	watch_activity	From Outdooractive	Outdooractive	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.outdooractive.Outdooractive", "activity_id": "39f1f983-7c3c-3efb-a4a1-539905f909c3", "activityName": "Hiking", "distance": "0.10", "startTime": "", "endTime": "", "avgSpeed": "5.45", "duration": "1min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-16 10:34:30.303137+00	\N	\N	f6a6519e-1331-4bc9-92ba-03b33e249f2d	regular	\N	\N	9febfa40-04ea-4915-b2f9-c0cf97b047a6	admin	\N	{"city": [], "state": null}	\N	\N	f	\N	\N	active
2024-05-14 08:14:26.632352+00	2024-05-14 08:14:26.685165+00	\N	7269fee6-c83f-4eea-9647-55910c8dad93	watch_activity	From Samsung Health	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"activity": {"source": "com.sec.android.app.shealth", "activity_id": "3b35117c-a3ed-46eb-ba63-b9171ab2ed07", "activityName": "Walking", "distance": "0.05", "startTime": "", "endTime": "", "avgSpeed": "3.99", "steps": 68, "duration": "45.059sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 10:55:17.389039+00	2024-05-14 10:55:17.404968+00	\N	0e1e4360-64a7-46df-8b6d-d3836f0fe5c7	regular	\N	Check 123	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	\N	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 14:01:51.621928+00	2024-05-14 14:17:01.571889+00	2024-05-14 14:17:01.590204+00	f66ef17f-0247-4ac4-8d5f-b68edd0733ff	watch_activity		Treadmill evening 	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.wahoofitness.fitness", "activity_id": "b4c250f0-015b-33d7-b228-1064dc4fa209", "activityName": "Running Treadmill", "distance": 0, "startTime": "", "endTime": "", "avgSpeed": 0, "duration": "53sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 12:08:39.748243+00	2024-05-14 12:08:39.800898+00	\N	cce02f0a-d4aa-406c-a1bb-e2b7c7a3b0a8	watch_activity	From Samsung Health	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"activity": {"source": "com.sec.android.app.shealth", "activity_id": "db2ceb84-e2e2-4682-91f1-a987c4c8206d", "activityName": "Swimming Pool", "distance": 0, "startTime": "", "endTime": "", "avgSpeed": 0, "steps": 2847, "duration": "2min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 12:50:07.185985+00	2024-05-14 12:50:07.233625+00	\N	582d5b65-09f3-49c5-8d41-fc5c17742b3b	watch_activity	From AllTrails	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.alltrails.alltrails", "activity_id": "fbd6db5f-87e3-47ef-9599-861e7ab1e193", "activityName": "Biking", "distance": "0.11", "startTime": "", "endTime": "", "avgSpeed": "6.88", "duration": "57.521sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 12:36:21.972961+00	2024-05-14 12:36:22.032131+00	\N	5311fda6-d9f6-45c1-a14e-1e0ba2bfff41	watch_activity	From Fitbit	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.fitbit.FitbitMobile", "activity_id": "12131be5-800f-355c-a30a-5e227d134f4c", "activityName": "Running", "distance": "0.01", "startTime": "", "endTime": "", "avgSpeed": "0.56", "steps": 8, "duration": "1min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 12:57:17.261426+00	2024-05-14 12:57:17.311066+00	\N	b27954bc-d713-4cf1-a25c-5203ff066983	watch_activity	From Fitbit	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.fitbit.FitbitMobile", "activity_id": "12131be5-800f-355c-a30a-5e227d134f4c", "activityName": "Running", "distance": "0.01", "startTime": "", "endTime": "", "avgSpeed": "0.56", "steps": 8, "duration": "1min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 12:49:05.091761+00	2024-05-14 12:49:05.145411+00	\N	335aa494-7f24-47fe-8464-0ad081dfb5c2	watch_activity	From Fitbit	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.fitbit.FitbitMobile", "activity_id": "12131be5-800f-355c-a30a-5e227d134f4c", "activityName": "Running", "distance": "0.01", "startTime": "", "endTime": "", "avgSpeed": "0.56", "steps": 8, "duration": "1min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 12:57:24.43341+00	2024-05-14 12:57:24.479426+00	\N	0385a5b8-33bf-4c9a-8d02-8d981b7d8f3b	watch_activity	From Fitbit	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.fitbit.FitbitMobile", "activity_id": "12131be5-800f-355c-a30a-5e227d134f4c", "activityName": "Running", "distance": "0.01", "startTime": "", "endTime": "", "avgSpeed": "0.56", "steps": 8, "duration": "1min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-14 12:57:29.138639+00	2024-05-14 12:57:29.186464+00	\N	e01ce25c-f412-42fd-bc86-e2bf38af906b	watch_activity	From AllTrails	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	all	{"activity": {"source": "com.alltrails.alltrails", "activity_id": "fbd6db5f-87e3-47ef-9599-861e7ab1e193", "activityName": "Biking", "distance": "0.11", "startTime": "", "endTime": "", "avgSpeed": "6.88", "duration": "57.521sec"}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-13 13:49:54.61181+00	2024-05-16 10:41:13.659805+00	\N	0e875e3f-efea-49f4-aad0-9890aad923e5	watch_activity	From Fitbit	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"source": "com.fitbit.FitbitMobile", "activity_id": "6da9dc2e-c410-3cf0-9a01-de0b3055f506", "activityName": "Running", "distance": "0.02", "startTime": "", "endTime": "", "avgSpeed": "0.32", "steps": 14, "duration": "3min"}}	{"city": null, "state": null}	\N	f	f	\N	\N	inactive
2024-05-16 10:49:52.316728+00	2024-05-16 10:49:52.423007+00	\N	1a3a842d-da04-4165-b692-5182269f3761	betting	\N	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	custom	{"betting": {"primary_team": "RCB", "secondary_team": "CSK", "item_description": "RCB", "prediction_description": "RCB", "result": null, "members": ["05f59f52-18be-45d4-bf8b-39640b7b2fab"]}}	{"city": null, "state": null}	\N	f	f	2024-05-18 07:30:00	\N	active
2024-05-16 11:05:37.64981+00	\N	\N	e341953d-6f35-4e93-9a43-8d9c11a97f25	regular	\N	\N	9febfa40-04ea-4915-b2f9-c0cf97b047a6	admin	\N	{"city": [], "state": null}	\N	\N	f	\N	\N	active
2024-05-16 11:42:16.658619+00	2024-05-16 11:42:16.677106+00	\N	60d06f9f-09a0-4bb6-ba11-617ffe4471be	regular	\N	Trial post for yonu	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	\N	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-16 12:33:44.979604+00	2024-05-16 12:33:44.998817+00	\N	ad0c1f16-a121-417d-baa9-14dc6f59e130	regular	\N	Welcome to ds77 group	cb086201-ede7-42fb-856e-d250a66d40b6	all	\N	{"city": null, "state": null}	e4c2c0b3-5678-49a3-a03e-417a75d6b77f	f	f	\N	\N	active
2024-05-16 11:45:18.239971+00	2024-05-16 11:45:18.255408+00	\N	3392c4e0-b595-4746-9520-cbc931ed36f6	regular	\N	Testing for ojas	cb086201-ede7-42fb-856e-d250a66d40b6	all	\N	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-16 11:48:31.185645+00	2024-05-16 11:48:31.247274+00	\N	59fd8010-0f3b-4009-bf75-5ed2ac5589ac	activity	\N	Activity list	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	{"activity": {"activity_id": "a6987b1c-2be0-47a8-bb26-a84961a07656", "more_info": "Great ride", "parameters": [{"key": "distance", "label": "Distance", "type": "float", "units": ["kms", "miles"], "value": "50", "unit": "kms"}, {"format": ["hr:min:sec"], "key": "total_time", "label": "Total Time", "type": "int", "units": ["hrs:mins", "mins:secs"], "value": "5", "unit": "hrs:mins"}, {"format": ["hr:min:sec"], "key": "moving_time", "label": "Moving Time", "type": "int", "units": ["hrs:mins", "mins:secs"], "value": "4:30", "unit": "hrs:mins"}, {"key": "moving_pace", "label": "Moving pace", "type": "int", "units": ["mins:kms", "mins:miles"], "value": "25", "unit": "mins:kms"}, {"key": "avg_moving_speed", "label": "Avg Moving Speed", "type": "int", "units": ["kms:hr", "miles:hr"], "value": "30", "unit": "kms:hr"}, {"key": "calories_burnt", "label": "Calories Burnt", "type": "int", "units": ["kcal"], "value": "1000", "unit": "kcal"}, {"key": "elevation", "label": "Elevation", "type": "int", "units": ["mtrs", "feet"], "value": "900", "unit": "mtrs"}, {"key": "avg_heart_rate", "label": "Avg Heart Rate", "type": "int", "units": ["bpm"], "value": "130", "unit": "bpm"}, {"key": "difficulty", "label": "Difficulty", "type": "dropdown", "values": [{"label": "Easy", "value": "easy"}, {"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"}, {"label": "Killer", "value": "killer"}], "value": "tough"}]}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-05-16 12:02:19.61195+00	2024-05-16 12:02:19.677021+00	\N	18fd04ed-c814-4e07-80ea-17baebae68bb	activity	\N	Great run	cb086201-ede7-42fb-856e-d250a66d40b6	all	{"activity": {"activity_id": "a792db29-6b36-4ded-bebd-adf6acebd2df", "more_info": "Great weather", "parameters": [{"key": "distance", "label": "Distance", "type": "float", "units": ["kms", "miles"], "value": "10", "unit": "kms"}, {"format": ["hr:min:sec"], "key": "total_time", "label": "Total Time", "type": "int", "units": ["hrs:mins", "mins:secs"], "value": "1", "unit": "hrs:mins"}, {"format": ["hr:min:sec"], "key": "moving_time", "label": "Moving Time", "type": "int", "units": ["hrs:mins", "mins:secs"], "value": "55", "unit": "hrs:mins"}, {"key": "moving_pace", "label": "Moving pace", "type": "int", "units": ["min:kms", "mins:miles"], "value": "6:2", "unit": "min:kms"}, {"key": "avg_moving_speed", "label": "Avg Moving Speed", "type": "int", "units": ["kms:hr", "miles:hr"], "value": "9.5", "unit": "kms:hr"}, {"key": "calorie_burned", "label": "Calories Burnt", "type": "int", "units": ["kcal"], "value": "700", "unit": "kcal"}, {"key": "elevation", "label": "Elevation", "type": "int", "units": ["mtrs", "feet"], "value": "700", "unit": "mtrs"}, {"key": "avg_heart_rate", "label": "Avg Heart Rate", "type": "int", "units": ["bpm"], "value": "160", "unit": "bpm"}, {"key": "difficulty", "label": "Difficulty", "type": "dropdown", "values": [{"label": "Easy", "value": "easy"}, {"label": "Moderate", "value": "moderate"}, {"label": "Tough", "value": "tough"}, {"label": "Killer", "value": "killer"}], "value": "moderate"}]}}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-06-05 09:17:07.70052+00	2024-06-05 09:17:07.805097+00	\N	094c71c7-9cde-463c-b9ef-9834188e6245	record_activity	Afternoon Run	Good AfternoonRun	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"activity_id": "308204b8-57ca-4ec6-bf06-2b9945dc42ce", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Walk", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 12", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Relaxed", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
2024-06-05 11:33:14.109654+00	2024-06-05 11:33:38.682215+00	\N	6329e534-485a-4ccc-a7e1-7749f55f9cd9	regular	\N	Hiking	accd4c2d-17f1-4d48-839a-dd9367a798f6	all	{"media": [{"media_id": "d33776bb-8140-4ab0-9cf2-6903be07f464", "path": "https://adrenalnbucket.s3.amazonaws.com/1000005868.jpg", "sorting_position": 0, "type": "image"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-06-05 09:42:05.042815+00	2024-06-05 09:42:05.130806+00	\N	7ce0426e-930c-4ad2-a6d9-9581b9ddc6fc	record_activity	Trial of recording	Pleasant walk	f039da77-98d1-4ef2-bb2a-72faaec7c494	friends	{"activity": {"activity_id": "308204b8-57ca-4ec6-bf06-2b9945dc42ce", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Walk", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 39", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Relaxed", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
2024-06-05 09:59:27.804682+00	2024-06-05 09:59:27.904067+00	\N	55fbf08a-ebb4-4898-b322-9cf4b631fa91	regular	\N	Hello All	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG_20240507_180537-01.jpeg", "media_id": "bf6304a6-5471-4fc1-b7d7-cf527acaf410"}]}	{"city": "Bengaluru Urban", "state": "Karnataka"}	fdda6a93-4672-4acd-8bd7-6ccb4ab0b60a	f	f	\N	\N	active
2024-06-05 12:30:48.205797+00	2024-06-05 12:30:48.290037+00	\N	16fb6c24-2538-4d97-89e7-eb25104c01fe	regular	\N	Sdu	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG-20240604-WA0007.jpg", "media_id": "0e8e82d7-f052-4a7f-b02e-4f93d906d82b"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-06-05 11:42:10.417968+00	2024-06-05 11:42:10.505372+00	\N	1a3d20ac-e78c-465b-94f8-ac32f815aff4	record_activity	Ggg	Yhb	f039da77-98d1-4ef2-bb2a-72faaec7c494	friends	{"activity": {"activity_id": "a6987b1c-2be0-47a8-bb26-a84961a07656", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Cycling", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "03 : 04", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Killer", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
2024-06-05 12:32:36.273251+00	2024-06-05 12:32:36.313729+00	\N	9a9d7388-4e47-41da-b683-8e3ed861d347	regular	\N	Check submit to promote	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	\N	{"city": null, "state": null}	\N	f	t	\N	\N	active
2024-06-05 12:33:21.386432+00	2024-06-05 12:33:21.457168+00	\N	5b7bc5e9-f30b-40bf-b50d-b2f1e42bb0a5	regular	\N	Trial for shamanth	f039da77-98d1-4ef2-bb2a-72faaec7c494	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/Screenshot_2024-05-14-18-28-54-595_com.adrenaln.development.jpg", "media_id": "e0e417f6-479d-4d4b-ae2e-33d639fae55e"}]}	{"city": null, "state": null}	\N	f	f	\N	\N	active
2024-06-05 12:38:02.159326+00	2024-06-05 12:38:02.310222+00	\N	473be009-bc91-4f11-979d-06896b1182b3	betting	\N	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	custom	{"betting": {"primary_team": "mi", "secondary_team": "kkr", "item_description": null, "prediction_description": "Mi", "result": null, "members": ["9ffd4af9-7e36-4da3-9fd5-510db67e7ab0"]}}	{"city": null, "state": null}	\N	f	f	2024-06-07 18:05:00	\N	active
2024-06-08 07:32:25.643395+00	2024-06-08 07:32:25.802455+00	\N	1e6f2bbc-0041-4a73-b49f-345378421f77	betting	\N	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	custom	{"betting": {"primary_team": "blue", "secondary_team": "yellow", "item_description": null, "prediction_description": "Blue ", "result": null, "members": ["cb086201-ede7-42fb-856e-d250a66d40b6"]}}	{"city": null, "state": null}	\N	f	f	2024-06-08 13:06:00	\N	active
2024-06-08 07:37:32.679484+00	\N	\N	8995f323-a946-4587-af49-54a77025d51b	betting_result	\N	I won the Prediction	f039da77-98d1-4ef2-bb2a-72faaec7c494	friends	{"betting": {"primary_team": "blue", "secondary_team": "yellow", "item_description": null, "prediction_description": "Blue ", "result": null, "members": ["cb086201-ede7-42fb-856e-d250a66d40b6"]}}	{"city": null, "state": null}	\N	\N	f	2024-06-08 13:06:00	\N	active
2024-06-11 12:53:21.173702+00	2024-06-11 12:53:21.252234+00	\N	0aae6d88-a065-42f6-b491-74dbfcd939db	record_activity	Evening Run	Great run	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"activity_id": "308204b8-57ca-4ec6-bf06-2b9945dc42ce", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Walk", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 05", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Satisfied", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
2024-06-14 08:43:43.639614+00	2024-06-14 08:43:43.772984+00	\N	9e0a5ae0-d413-40cb-92a8-231f7cb4a7d0	betting	\N	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	custom	{"betting": {"primary_team": "A", "secondary_team": "B", "item_description": "AAA", "prediction_description": "A", "result": null, "members": ["93f47453-622d-4f4c-9208-093193669900"]}}	{"city": null, "state": null}	\N	f	f	2024-06-22 14:13:00	\N	active
2024-06-11 12:58:39.624976+00	2024-06-11 12:58:39.669698+00	\N	10b7125e-2ac8-4e94-b7b0-17d190336224	regular	\N	Jfjzjdj	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	\N	{"city": null, "state": null}	\N	f	t	\N	\N	active
2024-06-11 13:00:06.508777+00	2024-06-11 13:00:06.68105+00	\N	0b16c806-8055-4bd7-a0d6-e4000f99e1b0	betting	\N	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	custom	{"betting": {"primary_team": "USA", "secondary_team": "IND", "item_description": "INDIA INDIA", "prediction_description": "IND", "result": null, "members": ["f039da77-98d1-4ef2-bb2a-72faaec7c494"]}}	{"city": null, "state": null}	\N	f	f	2024-06-12 23:00:00	\N	active
2024-06-13 08:49:46.525481+00	2024-06-13 08:49:46.610708+00	\N	ffd5dd2f-3522-4001-ae58-a36651ce92c6	record_activity	Cycling Afternoon	Description	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"activity_id": "a6987b1c-2be0-47a8-bb26-a84961a07656", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Cycling", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 11", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Relaxed", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
2024-06-14 08:16:26.064795+00	2024-06-14 08:16:26.158396+00	\N	9fdb338a-7210-4d4d-8131-9681bae6b08d	regular	\N	Good Afternoon	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"media": [{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG_20240610_154101-01.jpeg", "media_id": "df3d6bba-a011-415b-b6cc-a5b1675af6c6"}]}	{"city": "Bengaluru Urban", "state": "Karnataka"}	fdda6a93-4672-4acd-8bd7-6ccb4ab0b60a	f	f	\N	\N	active
2024-06-14 10:58:32.355866+00	2024-06-14 10:58:32.447096+00	\N	5aeb3634-0295-47b9-b224-f4e67632269e	record_activity	Great Runn	Runnn	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	{"activity": {"activity_id": "a792db29-6b36-4ded-bebd-adf6acebd2df", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Run", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 06", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Killer", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
2024-06-14 11:28:13.336387+00	2024-06-14 11:28:13.368499+00	\N	8f5ef5c9-7f65-4d9f-815d-56d102464cd2	regular	\N	Hello	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	\N	{"city": null, "state": null}	\N	f	t	\N	\N	active
2024-06-14 11:42:42.989075+00	\N	\N	afd8e667-f12b-4f4a-b7a4-10d0ae84199f	regular	\N	test hello 	9febfa40-04ea-4915-b2f9-c0cf97b047a6	admin	\N	{"city": [], "state": null}	\N	\N	f	\N	\N	active
2024-06-14 12:45:57.112459+00	2024-06-14 12:45:57.146123+00	\N	a54d4095-16d3-41f2-83c0-9750c686d692	regular	\N	Test promote	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	all	\N	{"city": null, "state": null}	\N	f	t	\N	\N	active
2024-06-20 03:06:28.274319+00	2024-06-20 03:06:28.354301+00	\N	396246b0-573d-463e-9cc8-64a741c6f1d4	record_activity	Thunder	Usain Bolt who	c6f51f15-2069-43a7-a445-11681da25fab	all	{"activity": {"activity_id": "a792db29-6b36-4ded-bebd-adf6acebd2df", "parameters": [{"key": "activity_name", "label": "Activity Name", "type": "text", "units": [""], "value": "Run", "unit": ""}, {"key": "distance", "label": "Distance", "type": "float", "units": ["kms"], "value": "0.00", "unit": "kms"}, {"key": "duration", "label": "Duration", "type": "float", "units": [""], "value": "00 : 19", "unit": ""}, {"key": "avg_speed", "label": "Avg Speed", "type": "float", "units": ["kms/hr"], "value": "0.00", "unit": "kms/hr"}, {"key": "felt", "label": "Felt", "type": "text", "units": [""], "value": "Satisfied", "unit": ""}], "felt": null}}	{"city": "", "state": ""}	\N	f	f	\N	\N	active
\.


--
-- Data for Name: post_bucket_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_bucket_mapping (created_at, update_at, deleted_at, id, post_id, key, type, category_value) FROM stdin;
2024-03-07 06:21:31.77609+00	\N	\N	cbcd6d14-4e4a-485a-9c68-6bd580e57fbd	df93fa14-c384-4daa-ab13-f607b802be02	india_general	bucket	\N
2024-03-07 06:23:14.616295+00	\N	\N	57612661-f1e2-4281-823c-cab170d3efa1	75ee1096-8cee-429c-adba-d6f19d67c01e	india_sport	bucket	\N
2024-03-07 06:26:20.752624+00	\N	\N	7bbac6bf-2ff3-46dd-9d2f-9efb98029968	5325e458-481e-4656-8da4-c508b5941644	india_adrenln	bucket	\N
2024-03-11 11:57:45.705948+00	\N	\N	c4968035-ea21-4e55-9817-e515d3bb71df	50576606-7ed1-4084-93cd-277b3e0fed97	india_general	bucket	\N
2024-03-11 11:59:50.732973+00	\N	\N	f2f2cb62-cd8e-4a4c-9389-a60c00001751	28338db4-032f-4789-ad82-40df1257d065	india_sport	bucket	\N
2024-03-11 12:01:12.480258+00	\N	\N	3f424c4a-83a5-4a28-8bca-6cea53e5ce6f	4844cb1e-5666-4906-91d5-69291e3479e1	india_adrenln	bucket	\N
2024-05-09 06:11:14.536149+00	\N	\N	de854419-04d0-4577-b271-1b845e053aab	d25abaf4-6687-414e-9fa4-f8a1c3a3b792	india_sport	bucket	\N
2024-05-09 06:21:16.442679+00	\N	\N	eef38d3d-a683-4bea-9562-02b97a6e6051	8cb225c6-4462-452f-9196-a148e21a75ff	india_adrenln	bucket	\N
2024-05-10 11:50:26.1872+00	\N	\N	b8a99f83-4822-4f0a-9033-a89b05e4ef2f	31071ac2-4e51-4b97-bb45-bd7aa56eb677	india_general	bucket	\N
2024-05-16 11:53:50.600702+00	\N	\N	7d4ecd64-e983-49fc-9ea7-ef6aeb728b92	3392c4e0-b595-4746-9520-cbc931ed36f6	india_general	bucket	\N
2024-05-16 11:53:50.604794+00	\N	\N	e5d1908e-cf12-4f4d-b89a-2b889f4f38fd	3392c4e0-b595-4746-9520-cbc931ed36f6	international_sport	bucket	\N
2024-05-16 11:53:50.608808+00	\N	\N	6ac23cfe-14d6-4f85-8e99-a8cf716e17bd	3392c4e0-b595-4746-9520-cbc931ed36f6	bussiness_influencer	bucket	\N
2024-06-14 11:31:24.648994+00	\N	\N	0d2edfba-36ba-46bf-9ecc-ec3dd08dd16a	5b7bc5e9-f30b-40bf-b50d-b2f1e42bb0a5	india_general	bucket	\N
2024-06-14 11:32:14.530971+00	\N	\N	f20fa955-3090-44a8-ac38-dd8b054ba3b0	8f5ef5c9-7f65-4d9f-815d-56d102464cd2	bussiness_influencer	bucket	\N
\.


--
-- Data for Name: post_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_comment (created_at, update_at, deleted_at, id, comment, user_id, post_id, parent_id) FROM stdin;
2024-02-29 10:02:36.37826+00	\N	\N	2bc3c524-690e-4628-aefa-3b7be398694b	Noice 😂😂	7c28a321-9ae7-4923-94a8-070feb58955d	bcce3e11-e1da-446a-a266-c139363e4a89	\N
2024-04-25 19:34:42.587915+00	\N	\N	f8b18da0-8584-41ef-9729-b60c1c841c3e	Comment from build APK!	7c28a321-9ae7-4923-94a8-070feb58955d	8dd47792-2c21-4d27-b635-2dfa312d7596	\N
2024-05-14 14:10:32.020338+00	\N	\N	ad6e773a-5ad6-4429-b71d-b411e2efb368	Hello !	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	f66ef17f-0247-4ac4-8d5f-b68edd0733ff	\N
2024-05-16 10:12:41.402912+00	2024-05-16 10:12:48.364429+00	2024-05-16 10:12:48.375495+00	22d27f58-32c2-4c4f-9a67-78e529822a61	Amazing 	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	e678aed6-3006-4b3d-9e29-0c0bc55fcf85	\N
2024-05-16 11:42:52.434654+00	\N	\N	60d86943-62e2-46ab-916c-6b46391a08f7	Hope u can see this yonu	f039da77-98d1-4ef2-bb2a-72faaec7c494	60d06f9f-09a0-4bb6-ba11-617ffe4471be	\N
2024-06-05 10:19:00.778856+00	\N	\N	05d68b81-ef96-4edf-8c13-edaae354bc5b	Super	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	55fbf08a-ebb4-4898-b322-9cf4b631fa91	\N
2024-06-05 11:36:38.577999+00	\N	\N	f15f158a-9102-48a5-b72b-789b0f1f8e52	This was a great place.	accd4c2d-17f1-4d48-839a-dd9367a798f6	6329e534-485a-4ccc-a7e1-7749f55f9cd9	\N
2024-06-18 06:47:13.348473+00	\N	\N	d1e6dec9-3f5a-4e8c-b645-88b36a5256fc	Testing 	7c28a321-9ae7-4923-94a8-070feb58955d	8dd47792-2c21-4d27-b635-2dfa312d7596	\N
\.


--
-- Data for Name: post_custom_visibility; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_custom_visibility (created_at, update_at, deleted_at, id, tag, post_id, user_id) FROM stdin;
2024-03-06 08:58:29.116005+00	\N	\N	49e45acb-d211-40eb-9dfa-1caad4c7c085	f	fb3e314e-540f-4fd9-8ffa-68dccb36ba7e	b9117901-96ad-4b87-b47a-2f9aa6575fb6
2024-05-16 10:49:52.416048+00	\N	\N	1048cd3a-64d8-44f8-ad70-714bcb4d5f82	f	1a3a842d-da04-4165-b692-5182269f3761	05f59f52-18be-45d4-bf8b-39640b7b2fab
2024-05-16 12:10:57.292279+00	\N	\N	c68a7ec6-3e4a-4863-b25c-931c2e2b346b	f	e6278930-898c-4ba8-a343-a9a41374337a	b9117901-96ad-4b87-b47a-2f9aa6575fb6
2024-05-16 12:10:57.298074+00	\N	\N	53ef00bd-1a73-4f23-b19b-331b5d0bee18	f	e6278930-898c-4ba8-a343-a9a41374337a	cb086201-ede7-42fb-856e-d250a66d40b6
2024-06-05 12:38:02.295214+00	\N	\N	38e22dba-3541-4c12-ad4c-df82dcb2be68	f	473be009-bc91-4f11-979d-06896b1182b3	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0
2024-06-08 07:32:25.791437+00	\N	\N	dacdc4c3-28de-40f0-af2e-933d0da8d7d5	f	1e6f2bbc-0041-4a73-b49f-345378421f77	cb086201-ede7-42fb-856e-d250a66d40b6
2024-06-11 13:00:06.659228+00	\N	\N	bbbf0597-b74a-47e1-8ed5-30385e7a1a33	f	0b16c806-8055-4bd7-a0d6-e4000f99e1b0	f039da77-98d1-4ef2-bb2a-72faaec7c494
2024-06-14 08:43:43.763135+00	\N	\N	50810778-cd70-4477-9e1d-eb857391d04e	f	9e0a5ae0-d413-40cb-92a8-231f7cb4a7d0	93f47453-622d-4f4c-9208-093193669900
\.


--
-- Data for Name: post_react; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_react (created_at, update_at, deleted_at, id, user_id, post_id, type, is_liked) FROM stdin;
2024-02-29 09:57:40.705779+00	\N	\N	b1f8d6fd-d6a4-4d21-87a2-73d7c6901e4b	5854dc2c-7b3e-46b2-aa84-a51e448750be	bcce3e11-e1da-446a-a266-c139363e4a89	like	t
2024-02-29 10:02:19.607072+00	\N	\N	d178ba55-ea9d-49a4-805c-a68690631a1a	7c28a321-9ae7-4923-94a8-070feb58955d	bcce3e11-e1da-446a-a266-c139363e4a89	like	t
2024-05-08 08:57:20.412088+00	2024-05-08 08:57:22.380231+00	\N	4f65713e-4d99-44ac-9e0f-6cad08b187e4	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	4844cb1e-5666-4906-91d5-69291e3479e1	like	f
2024-05-09 17:38:49.174983+00	2024-05-09 17:38:55.128177+00	\N	dafd1e44-2c58-4b67-86f2-500f75979922	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	65003001-7554-4291-9496-6b40493b6eac	like	f
2024-05-14 14:09:44.527414+00	\N	\N	5bcae15f-a12b-4476-9a10-6e8251331b43	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	f66ef17f-0247-4ac4-8d5f-b68edd0733ff	like	t
2024-05-16 11:43:29.019049+00	\N	\N	d1722a5f-c52b-407a-9034-78d4fe09a8bf	f039da77-98d1-4ef2-bb2a-72faaec7c494	60d06f9f-09a0-4bb6-ba11-617ffe4471be	like	t
2024-06-05 10:18:55.024964+00	\N	\N	07b45882-7ffe-42d7-bf2f-fe0a8c49e17f	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	55fbf08a-ebb4-4898-b322-9cf4b631fa91	like	t
2024-06-05 11:24:33.938714+00	\N	\N	6bbb3a3c-ed72-4560-b860-f90a25504ebd	accd4c2d-17f1-4d48-839a-dd9367a798f6	4844cb1e-5666-4906-91d5-69291e3479e1	like	t
2024-06-05 11:34:02.719834+00	\N	\N	a05ff599-0091-4aa6-9a98-e9c1c346de8c	accd4c2d-17f1-4d48-839a-dd9367a798f6	6329e534-485a-4ccc-a7e1-7749f55f9cd9	like	t
2024-06-14 08:42:22.741232+00	\N	\N	b199effd-79c8-41a9-a40b-11dc4441042f	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	9fdb338a-7210-4d4d-8131-9681bae6b08d	like	t
2024-06-20 03:07:52.628487+00	2024-06-20 03:08:00.003136+00	\N	6c998645-49aa-4462-a80a-03e51a3eb661	c6f51f15-2069-43a7-a445-11681da25fab	396246b0-573d-463e-9cc8-64a741c6f1d4	like	t
2024-06-20 18:27:33.228341+00	2024-06-20 18:27:36.369874+00	\N	99cc2ffb-5a32-4555-b5c1-8893e93aec2c	82beae83-ee98-4f38-b3de-d27ee137ef27	4844cb1e-5666-4906-91d5-69291e3479e1	like	t
\.


--
-- Data for Name: profile_section_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile_section_mapping (created_at, update_at, deleted_at, id, section) FROM stdin;
2022-06-22 05:35:15.223149+00	\N	\N	38793591-9424-4d9e-a3c6-3756ef3b1a89	hall_of_fame
2022-06-22 05:36:57.464201+00	\N	\N	94bbaaa5-0494-4480-9113-00fb21392683	sport_level
2022-06-22 05:36:57.464201+00	\N	\N	59490896-ea1b-498c-b35e-ac61646cf71b	fitness_level
2022-06-22 05:36:57.464201+00	\N	\N	ca76ede2-4897-4d52-9428-018f0d3e9e4b	primary_sport
2022-06-22 05:36:57.464201+00	\N	\N	6d756bd6-5c63-42fa-8788-37f6e330244b	secondary_sport
\.


--
-- Data for Name: profile_visibility; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile_visibility (created_at, update_at, deleted_at, id, section, visibility, user_id) FROM stdin;
\.


--
-- Data for Name: programme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.programme (created_at, update_at, deleted_at, id, description, title, media, user_id, master_programs_id, city, category, is_featured) FROM stdin;
2024-02-25 18:46:48.105166+00	2024-05-16 10:33:37.305448+00	\N	a03fe8d4-211a-42bc-a570-338ad9b019fb	This is a weight gain program	Weight Gain Training Programme	[{"media_id": "38de7f0e-516e-47e1-a3d0-a2a4c03e182c", "media_type": "video", "path": "https://adrenaln-files.s3.amazonaws.com/file_example_MP4_480_1_5MG.mp4"}]	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	adaca7cf-e6e5-4ff4-b594-8be321ec820a	Mumbai	Physiotherapy	0
2024-05-16 11:15:14.389017+00	\N	\N	af0f1bed-1ce7-4c67-8699-e30f9aa3f4ae	\N	Running Training	[]	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	51ffc56b-ccdb-46c6-8183-35bc77f2cd38	Delhi,  India	Running	0
2024-05-16 12:51:09.66686+00	2024-05-16 12:51:57.340293+00	\N	d334f59b-2096-4fdc-a7f4-510dee17232d	Healthy diet	Wt loss	[{"sorting_position": 0, "type": "video", "path": "https://adrenalnbucket.s3.amazonaws.com/VID-20240502-WA0003.mp4", "media_id": "091c1c62-020e-435b-8216-a18179a193fd"}]	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	cf3b3946-5cbd-4188-be67-f67b99703082	Mumbai,  India	Diet/Weight management	0
2024-06-11 12:48:34.644219+00	\N	\N	51f106a3-325a-4c6b-b0a8-a0c2b40e0648	\N	Cricket tournament	[]	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	5da6057f-42cd-4f54-8d88-371506331429	Bangalore,  India	Cricket	0
2024-06-05 12:44:27.774312+00	2024-06-14 11:29:51.778629+00	\N	9e6a30b1-8d52-4fdd-a8f4-f5a39f1a1de3	\N	Test FP	[{"sorting_position": 0, "type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/IMG_20240426_174219-01.jpeg", "media_id": "3723ca26-669a-47bd-8162-9d4f142f71f2"}]	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	5da6057f-42cd-4f54-8d88-371506331429	Bangalore,  India	Cricket	1
\.


--
-- Data for Name: reported_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reported_post (created_at, update_at, deleted_at, id, post_id, user_id) FROM stdin;
2024-05-16 07:59:55.570641+00	\N	\N	3aacfffc-2638-40de-9606-f63ec7a0bf0c	e678aed6-3006-4b3d-9e29-0c0bc55fcf85	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0
2024-06-14 12:26:14.776561+00	\N	\N	291436d6-72e7-4239-9eb4-06a34eb5392d	4844cb1e-5666-4906-91d5-69291e3479e1	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0
\.


--
-- Data for Name: role_actions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_actions (created_at, update_at, deleted_at, id, role_key, action_key, status) FROM stdin;
2022-09-12 16:33:13.547901+00	\N	\N	5cd1b792-4ecc-49da-9504-89ff14bbe696	user	number_of_req_list	active
2022-09-12 16:33:13.547901+00	\N	\N	0afd0a74-32f7-4c2c-91a9-0f542a085997	business	number_of_req_list	active
2022-09-12 18:22:14.025341+00	\N	\N	02ee7258-df39-45bb-a4e2-b88386956cdf	business	group_detail	active
2022-09-12 18:22:27.972209+00	\N	\N	10688766-51c5-49ab-b7a1-077e018e3f49	business	group_list	active
2022-09-12 18:22:42.07006+00	\N	\N	2909aa43-1bb8-4381-bc21-15e928713750	business	search_group_member	active
2022-09-12 18:22:47.334779+00	\N	\N	b663a952-5488-4e94-a7b9-2e93a9aa7e63	business	search_group	active
2022-09-12 18:22:54.226105+00	\N	\N	0395d2e7-414c-4076-8b0e-92457f19aeb4	business	search_group_member	active
2022-09-12 18:23:00.404268+00	\N	\N	3e67e80a-a2d9-44e5-910a-0b36fa77d634	business	search_group	active
2022-09-12 18:23:10.044661+00	\N	\N	5391f658-ef5b-4bfd-b1b2-1316328f0f50	business	group_admin_add	active
2022-09-12 18:23:16.321591+00	\N	\N	c9b01471-6031-4c05-999f-e1ee8e2e1d1f	business	group_admin_add	active
2022-09-12 18:23:22.826073+00	\N	\N	b495dcba-1e76-4e36-967b-688a012867ff	business	group_id	active
2022-09-12 18:23:29.001656+00	\N	\N	766e03e2-0a10-43ae-b373-544b228aed93	business	change_admin_as_member	active
2022-09-12 18:23:35.761107+00	\N	\N	ec2ad6fc-0556-4313-96dc-fae89b8eb97a	business	group_requests_reject	active
2022-09-12 18:23:47.083736+00	\N	\N	dfecec05-42a5-4f21-83a1-80c342b6453c	business	accept_group_invitation	active
2022-09-12 18:23:50.095429+00	\N	\N	abf3ed45-4539-4403-bfba-b6797cde965a	business	get_my_group_list	active
2022-09-12 18:23:54.729321+00	\N	\N	64e1bc2a-ddf8-4f62-ae35-4b7ace5f52d2	user	get_my_group_list	active
2022-09-12 18:24:00.623448+00	\N	\N	f0dabc0e-1b69-4c1b-b325-a7393634bc1b	user	accept_group_invitation	active
2022-09-12 18:24:17.344581+00	\N	\N	ccecdefc-e636-4f7e-86cf-96832de084b2	user	group_requests_reject	active
2022-09-12 18:24:23.225704+00	\N	\N	f159c84b-2bac-49ea-acba-5e639a34937f	user	change_admin_as_member	active
2022-09-12 18:24:29.371821+00	\N	\N	6769ddae-f173-4435-881c-55f65b62cd41	user	group_admin_add	active
2022-09-12 18:24:37.311537+00	\N	\N	9c9d4563-42b0-4ccd-a79e-c30c69f2ce39	user	group_admin_add	active
2022-09-12 18:24:54.957386+00	\N	\N	5c3eb22d-a76e-4496-ba5b-238dac49de81	user	search_group	active
2022-09-12 18:25:01.943018+00	\N	\N	349d52e4-b00a-4301-8ce8-01214a81382d	user	search_group_member	active
2022-09-12 18:25:07.263555+00	\N	\N	573184e2-06fd-4494-83a2-1e323d7877f7	user	search_group	active
2022-09-12 18:25:15.258128+00	\N	\N	5b604404-700d-46f1-ac5d-acf9b561d085	user	search_group_member	active
2022-09-12 18:25:23.563177+00	\N	\N	5ef8c169-3c97-460e-86e8-086771d23a48	user	group_list	active
2022-09-12 18:25:29.765311+00	\N	\N	d10b8590-5dfc-478a-b22d-76faad9f5542	user	group_detail	active
2022-09-12 18:25:36.370132+00	\N	\N	e5715d1b-6d70-4f7b-94a4-2d3664dd802d	user	group_delete	active
2022-09-12 18:25:42.889521+00	\N	\N	43a2a3c9-6049-4598-8bfa-3fc2acc24f1d	user	group_member_remove	active
2022-09-12 18:26:00.824791+00	\N	\N	6ba432df-f8be-4b0b-bddf-e57ca0f3f236	user	group_admin_add	active
2022-09-12 18:26:08.188602+00	\N	\N	3402f5db-ce46-41e9-902b-dc1da0d6bfe2	user	group_update	active
2022-09-12 18:26:13.926668+00	\N	\N	fd1d83cd-f515-452f-8e99-997daa99c3b9	user	group_exit	active
2022-09-12 18:26:20.884056+00	\N	\N	0e9a0b13-f493-4199-9fbb-bfcfd39292ff	user	group_requests_accept	active
2022-09-12 18:26:26.105268+00	\N	\N	307a88dc-51dc-4822-8494-15dc8aa4c831	user	get_requests_list	active
2022-09-12 18:26:32.66978+00	\N	\N	6f8ab170-e430-4b16-955b-ae97c88e2a71	user	group_join	active
2022-09-12 18:26:39.876108+00	\N	\N	a051987a-f2e6-4bbf-b744-b58bcd423e2e	user	group_create	active
2022-09-13 05:30:05.720349+00	\N	\N	bf7c9fb3-bedb-4e71-8d49-eb9732410340	user	get_users_friend_list	active
2022-09-13 05:30:13.395364+00	\N	\N	0683a2f1-1eec-44b3-b8a7-210cfc9251e2	business	get_users_friend_list	active
2022-09-13 10:56:56.642878+00	\N	\N	fe70f5fe-c4a8-4c12-9fd3-72cafedaf8aa	user	all_frd_rqs	active
2022-09-13 10:56:56.642878+00	\N	\N	1ed4c727-2d3f-4ab3-9bad-fd669910fb91	business	all_frd_rqs	active
2022-09-14 15:16:25.822218+00	\N	\N	0e1e2657-72df-4c24-8e2f-034024f4e288	user	user_delete_account	active
2022-09-14 15:16:25.822218+00	\N	\N	9e69e444-4bcd-4128-812e-3ca3262eb220	business	user_delete_account	active
2022-09-16 04:50:44.953544+00	\N	\N	53f90651-989d-4454-92bc-7bea29f033b6	post_publisher	upload_media	active
2022-09-16 04:50:44.953544+00	\N	\N	923f3464-119a-4c6d-a3e3-19f4b34bfede	post_publisher	create_post	active
2022-09-21 07:32:23.41753+00	\N	\N	a08bde60-d3d7-4f82-8ddb-1dd0af60268b	user	post_liked_users_list	active
2022-09-21 07:32:31.395068+00	\N	\N	edd114ba-740c-434e-a97f-f1de7c576547	business	post_liked_users_list	active
2022-10-06 12:02:33.710181+00	\N	\N	c69c3054-9e1e-47a4-b49f-e651f163d555	post_publisher	search_approved_promotion_posts	active
2022-11-25 05:40:03.026481+00	\N	\N	005d4175-efe3-4ebd-bf62-9e68b0deba70	super_admin	profile_mis_count	active
2022-09-12 16:38:51.374438+00	\N	\N	b93d8a14-242e-4719-8ea1-dc92ba577318	post_reviewer	approved_post_list	active
2022-09-12 16:38:51.374438+00	\N	\N	02dc2e2a-8bd5-4271-ae14-296b1faf5955	post_reviewer	post_list	active
2022-09-12 16:38:51.374438+00	\N	\N	6f87259d-a34c-49ef-93f9-ba3a7e308250	post_reviewer	post_detail	active
2022-09-12 16:38:51.374438+00	\N	\N	da665f89-b892-4d0f-8248-437422ed7f07	post_reviewer	approve_post	active
2022-09-12 16:38:51.374438+00	\N	\N	abfce728-9d97-4d96-adfb-f697fdebff01	post_reviewer	search_post_by_date	active
2022-09-12 16:38:51.374438+00	\N	\N	dc6caf71-3efe-41a8-b4ca-ab06337565da	post_reviewer	promotion_post_list	active
2022-09-12 16:38:51.374438+00	\N	\N	e6bc5781-e315-44e0-8c24-291dc17a9853	post_reviewer	bucket_post_list	active
2022-09-12 16:38:51.374438+00	\N	\N	6edfe895-7403-4173-8e22-52222bbf27ae	post_reviewer	get_my_post_list	active
2022-09-12 16:43:39.045671+00	\N	\N	2f3f945a-0a48-48f5-8508-22a6c96c94b0	post_publisher	approve_post	active
2022-09-12 16:43:39.045671+00	\N	\N	0e6a0458-6d71-4e1b-89ec-8f3142e2a971	post_publisher	search_post_by_date	active
2022-09-12 16:43:39.045671+00	\N	\N	0ef9a7a6-62be-4079-b4dd-f625725f13a8	post_publisher	approved_post_list	active
2022-09-12 16:43:39.045671+00	\N	\N	2113d777-176d-4ec8-8b77-074ef9e21330	post_publisher	bucket_post_list	active
2022-09-12 16:43:39.045671+00	\N	\N	0b783052-838a-4403-a596-735d8749e764	post_publisher	reset_password	active
2022-09-12 16:43:39.045671+00	\N	\N	0a81aaf5-abe8-431b-82ff-409ec6dd6b65	post_publisher	final_posts	active
2022-09-12 16:43:39.045671+00	\N	\N	8a007764-fb6e-486b-9939-6034148496b9	post_publisher	promotion_post_list	active
2022-09-12 16:43:39.045671+00	\N	\N	b24d7e89-0ad4-4822-b3ff-5945d1e2f762	post_publisher	discard_final_post	active
2022-09-12 16:43:39.045671+00	\N	\N	e0866bc0-c738-403b-a586-aa0ba75e9177	post_publisher	post_list	active
2022-09-12 16:43:39.045671+00	\N	\N	a2636662-b286-4c6c-9baa-70e423f13d13	post_publisher	post_detail	active
2022-09-13 04:49:01.698579+00	\N	\N	7b583f19-e731-4b9e-8c42-5fe4f43bec35	post_publisher	get_hall_fame	active
2022-09-13 04:49:27.618701+00	\N	\N	2ac70dc5-ac55-46f6-8522-78dac89a876f	post_reviewer	get_hall_fame	active
2022-09-13 04:50:02.718563+00	\N	\N	9983bb5a-9478-4b04-910a-9e67a5206cb9	post_reviewer	list_program_details	active
2022-09-13 04:50:31.458375+00	\N	\N	ecf48973-30e4-4eff-9cc7-e8c47f92a9f1	post_publisher	list_program_details	active
2022-09-13 04:50:55.158448+00	\N	\N	a0f79257-f886-4dff-acf4-6bf39c688405	post_publisher	featured_program_list	active
2022-09-13 04:51:04.418409+00	\N	\N	ca3a4648-c68b-463e-a82e-6bae6a7f5849	post_reviewer	featured_program_list	active
2022-09-13 04:51:33.478855+00	\N	\N	e5623e57-790a-4710-8c6a-d5eeaa64f901	post_reviewer	get_featured_media	active
2022-09-13 04:51:41.978638+00	\N	\N	52534655-49e8-4ba1-9fa4-b7ac131af523	post_publisher	get_featured_media	active
2022-09-13 04:51:53.808357+00	\N	\N	0a3ee22c-0f6b-4469-87a7-aae4bd0a7f69	post_publisher	get_testimonials	active
2022-09-13 04:52:01.498477+00	\N	\N	f93c21b1-b1ba-481b-b2e0-507997a0cfe9	post_reviewer	get_testimonials	active
2022-09-13 04:53:04.29852+00	\N	\N	b6b6380a-ca3b-4899-a860-ccc398d1d30a	post_reviewer	primary_sports	active
2022-09-13 04:53:33.138228+00	\N	\N	a7676c0e-c90f-4f7b-b87b-9d9916c56afd	post_publisher	primary_sports	active
2022-09-13 04:53:45.178337+00	\N	\N	c27296b7-8bc2-4902-bd6f-ff183647a137	post_publisher	secondry_sports	active
2022-09-13 04:54:11.098265+00	\N	\N	b84f92c4-20cd-4c42-85b7-d497c63ea93b	post_reviewer	secondry_sports	active
2022-09-13 04:54:33.118304+00	\N	\N	63c7886a-870f-4ab3-83b7-93468429837e	post_reviewer	get_sport_level	active
2022-09-13 04:54:49.218512+00	\N	\N	056cd040-f709-4dbf-a65e-4b41df0fb7ad	post_publisher	get_sport_level	active
2022-09-13 05:45:41.605857+00	\N	\N	0401ac1c-7249-4456-8946-a92928955332	super_admin	approved_post_list	active
2022-09-13 05:46:49.650854+00	\N	\N	25415374-c62a-47f3-aa69-405182c4652f	super_admin	post_detail	active
2022-09-13 05:46:57.270959+00	\N	\N	824869de-f195-43cd-9cbd-1bc49b1bc37a	super_admin	approve_post	active
2022-09-13 05:47:04.825761+00	\N	\N	9ab0922b-c72b-4433-ac2e-d632fa60e109	super_admin	search_post_by_date	active
2022-09-13 05:47:11.540713+00	\N	\N	162a621c-c127-4e8f-84d2-50b0afb50fce	super_admin	promotion_post_list	active
2022-09-13 05:47:18.500908+00	\N	\N	61a94912-b8e2-4b60-8cb5-5a3620ee8d83	super_admin	bucket_post_list	active
2022-09-13 05:47:27.4609+00	\N	\N	94dcfea1-d260-410f-9034-872df85b8a31	super_admin	get_my_post_list	active
2022-09-14 04:36:02.981972+00	\N	\N	6a598f10-898a-4156-945b-768ea69a3207	user	add_expertise	active
2022-09-14 04:36:02.981972+00	\N	\N	41e2cbb4-9378-4fdf-aa8a-f3025f0fb0dc	business	add_expertise	active
2022-09-14 20:36:13.281982+00	\N	\N	af3a79dc-937e-4b4a-a6be-dbdcbb13f7ef	super_admin	admin_delete_account	active
2022-09-16 06:36:25.197123+00	\N	\N	d49edb44-39a1-4461-bbfb-0f856b8780c4	super_admin	get_group_joining_list	active
2022-09-22 07:30:08.63635+00	\N	\N	73c20d59-d994-4b6b-a1e6-45e8787ebebf	business	get_master_sport_list	active
2022-09-22 07:30:16.636925+00	\N	\N	97854178-e638-48b7-8192-743cd4ac0b3c	user	get_master_sport_list	active
2022-10-07 11:05:44.788613+00	\N	\N	d0518dd2-e4ea-4787-8f3f-e20efde9f096	user	mark_all_read	active
2022-10-07 11:05:44.788613+00	\N	\N	9e266b4e-df69-4c5d-9aa6-042b90a44191	business	mark_all_read	active
2022-12-02 01:00:06.998151+00	\N	\N	32e30741-f504-4de3-ad13-5fad09ad77da	mis_admin	number_of_req_list	active
2022-12-02 01:00:06.998151+00	\N	\N	3f6a2191-595b-4f3c-bba5-01d33960b6a7	mis_admin	user_profile_summary	active
2022-12-02 01:00:06.998151+00	\N	\N	dcec331e-8ec1-48f6-8147-afaa1da9ac78	super_admin	user_profile_summary	active
2022-09-12 16:50:47.87917+00	\N	\N	21bbf04f-335f-47e5-b8a2-a00c8b117121	user	update_user_details	active
2022-09-12 16:50:47.87917+00	\N	\N	d4fff30c-a55b-4633-ba11-d445a10293a2	business	update_user_details	active
2022-09-12 16:52:15.397959+00	\N	\N	abd9fdbf-8731-413b-9bd4-9fb374a51707	business	complete_signup	active
2022-09-12 16:52:15.397959+00	\N	\N	2f9c3a69-d285-4d57-abad-05c0c7c34e48	user	complete_signup	active
2022-09-12 16:55:17.509986+00	\N	\N	4fa4e317-8bd1-488f-8e51-f62b07ed0d07	user	update_basic_profile	active
2022-09-12 16:55:17.509986+00	\N	\N	4d14b935-d8bd-4eab-a5bd-1ec9c1ee1e7f	business	update_basic_profile	active
2022-09-12 16:55:17.509986+00	\N	\N	e6b1be73-7edd-4793-9965-db49f9f11f42	user	update_educational_info	active
2022-09-12 16:55:17.509986+00	\N	\N	e1a6b7c4-c271-43d6-9cfd-00b6d15aa5a7	business	update_educational_info	active
2022-09-12 16:55:17.509986+00	\N	\N	300a2175-a332-4541-a20f-a43a359b011b	user	edit_user_basic_detail	active
2022-09-12 16:55:17.509986+00	\N	\N	55f23c87-62d3-48be-9755-341f58005eca	business	edit_user_basic_detail	active
2022-09-12 17:01:09.187354+00	\N	\N	48775620-ef4d-4480-8912-6fc710638ded	user	get_user_basic_detail	active
2022-09-12 17:01:09.187354+00	\N	\N	c338f54a-2ad0-436b-9994-8be1e14a5e26	business	get_user_basic_detail	active
2022-09-12 17:01:09.187354+00	\N	\N	32c9b745-8b27-4170-b3de-a4f2579ae612	user	reset_password	active
2022-09-12 17:01:09.187354+00	\N	\N	b8fd009b-7793-4696-bdbd-8a397073816d	business	reset_password	active
2022-09-12 17:01:09.187354+00	\N	\N	89e31210-0fba-4efe-8427-275ac8266fe6	user	log_out	active
2022-09-12 17:01:09.187354+00	\N	\N	1225c7b6-b9ee-4fa7-a26c-0b656d753404	business	log_out	active
2022-09-12 17:01:09.187354+00	\N	\N	f04b69c2-8e08-45fe-a562-7103a650f61d	user	update_user_role	active
2022-09-12 17:01:09.187354+00	\N	\N	938f261a-1152-498f-bfff-7d9602c1e380	business	update_user_role	active
2022-09-12 17:01:09.187354+00	\N	\N	938f261a-1152-498f-bfff-7d9602c1e381	user	updated_fcm_token	active
2022-09-12 17:01:09.187354+00	\N	\N	b569e2c2-feb9-4d22-94ae-786499ced61e	business	updated_fcm_token	active
2022-09-12 17:03:22.45944+00	\N	\N	06093665-5fa0-480e-b36c-c6ac0f4dc583	business	email_verification	active
2022-09-12 17:03:22.45944+00	\N	\N	53ff9970-3efb-4875-90f0-1512f980f7a1	user	email_verification	active
2022-09-12 17:03:22.45944+00	\N	\N	1d8b8892-1c08-488c-94aa-b69070f57fee	user	delete_post	active
2022-09-12 17:03:22.45944+00	\N	\N	765241c2-f6ff-4292-bb4c-7e6e948e1db8	business	delete_post	active
2022-09-12 17:07:04.238479+00	\N	\N	1eed17fb-aa53-44b6-b020-442743bbc275	user	post_saved_posts	active
2022-09-12 17:07:04.238479+00	\N	\N	74790d3d-3cae-4294-98fb-73421650903e	business	post_saved_posts	active
2022-09-12 17:07:04.238479+00	\N	\N	6dbabac4-1af6-42b8-8b01-e8d15e614930	user	result_update	active
2022-09-12 17:07:04.238479+00	\N	\N	099c131f-8787-402f-b1ae-2b11cfba2765	business	result_update	active
2022-09-12 17:07:04.238479+00	\N	\N	29b23c4c-9052-4707-a674-d0d79262b7c9	user	check_post_expiry	active
2022-09-12 17:07:04.238479+00	\N	\N	f5d0d07e-56c6-47b4-9b01-56375e870df3	business	check_post_expiry	active
2022-09-12 17:07:04.238479+00	\N	\N	fa704283-a6fd-4984-b841-5b87be0596d9	user	post_react	active
2022-09-12 17:07:04.238479+00	\N	\N	76241c72-0776-46a0-a084-7cdb68c78551	business	post_react	active
2022-09-13 05:47:59.590904+00	\N	\N	66efff63-b34f-45aa-be8e-b89ce906d903	super_admin	reset_password	active
2022-09-13 05:48:13.36083+00	\N	\N	63c4b759-5887-4872-81ae-e9cf7a7f89fe	super_admin	final_posts	active
2022-09-13 05:48:29.370934+00	\N	\N	b4ced361-ff44-432a-b692-cb321f83f398	super_admin	discard_final_post	active
2022-09-15 07:02:44.390166+00	\N	\N	83d5771c-cc54-4d61-8572-b6e4feea77f0	post_publisher	search_approved_posts	active
2022-09-16 07:11:38.306518+00	\N	\N	476c1215-11ba-465a-aecf-580e56eb2efa	post_reviewer	search_approved_posts	active
2022-09-16 07:22:29.345253+00	\N	\N	8b02462b-ac1a-4181-9642-535b1e7740cd	post_publisher	search_reviewer_feed	active
2022-09-26 18:18:03.222655+00	\N	\N	a7ee20d6-395c-42f4-9e90-3069f34fc134	super_admin	users_count	active
2022-10-12 12:35:49.972535+00	\N	\N	38c6f9a1-5850-450b-a147-d425d5150ba1	business	post_report	active
2022-10-12 12:35:49.972535+00	\N	\N	4cf69c7a-ffcc-48dd-8918-147b5b5bdf33	user	post_report	active
2022-12-08 09:45:06.268891+00	\N	\N	6a695b45-32cc-4e01-abef-776d989eafac	user	create_post	active
2022-12-08 09:45:06.268891+00	\N	\N	93ee978f-6ffd-40e0-aa91-6c3af257d694	business	create_post	active
2022-09-12 17:01:41.458743+00	\N	\N	655cc951-82c5-4b51-98f7-a7e7860a18e5	business	add_comment	active
2022-09-12 17:01:41.458743+00	\N	\N	3863003d-7d48-41c9-9b7c-d68b43decc66	user	add_comment	active
2022-09-12 17:04:25.606162+00	\N	\N	8dd1ab22-832f-4bc6-a006-ac3eaff5c5e5	user	get_comment_list	active
2022-09-12 17:04:25.606162+00	\N	\N	25b47266-ff37-417b-8abb-eda2e353edc6	business	get_comment_list	active
2022-09-13 05:01:42.253223+00	\N	\N	03984446-521a-42de-bd9d-0ca650e8bc6e	admin	featured_program_list	active
2022-09-13 05:02:10.07825+00	\N	\N	23be688b-a697-4c64-b0e5-7863964eddc3	admin	list_program_details	active
2022-09-13 05:03:12.818162+00	\N	\N	f29b0d19-920c-4c53-ae2c-e8f7cb6a5717	admin	get_hall_fame	active
2022-09-13 05:55:05.650653+00	\N	\N	42eeaaaa-f817-45ab-8394-7a80f550f11c	super_admin	add_role	active
2022-09-13 05:55:17.390726+00	\N	\N	fb3a0a1d-3854-4d1b-8626-919bf1b0ef29	super_admin	update_role	active
2022-09-13 05:58:38.752139+00	\N	\N	0239cc2e-03c6-4e04-bb9a-fda36320017e	profile_admin	get_sport_level	active
2022-09-13 05:58:46.380712+00	\N	\N	196c6b31-1add-45de-8387-171a5d118175	profile_admin	get_hall_fame	active
2022-09-13 05:58:54.840598+00	\N	\N	f250d9eb-c708-4dd5-90d3-27a8d90318fd	profile_admin	get_fitness_level	active
2022-09-13 05:59:02.500543+00	\N	\N	0ed8b270-1a59-45b8-8609-85a6e9caad36	profile_admin	get_media_file	active
2022-09-13 05:59:14.980639+00	\N	\N	9809a5b1-3f47-4cb9-abe1-5e1ef10c5d08	profile_admin	inactive_status	active
2022-09-13 05:59:27.650649+00	\N	\N	496c6649-1c23-4f51-8d1b-29f94d1efd80	profile_admin	list_program_details	active
2022-09-13 05:59:43.190637+00	\N	\N	cbdbe9b6-fd44-431c-bebb-922a69577e98	profile_admin	get_testimonials	active
2022-09-13 05:59:56.210615+00	\N	\N	3ede1f5a-e5dd-4802-8e94-b64e785c0cc8	profile_admin	get_programme	active
2022-09-13 06:00:11.770794+00	\N	\N	ce899906-555c-4ece-9313-c897959b3f10	profile_admin	get_expertise_details	active
2022-09-13 06:00:23.130767+00	\N	\N	ccc630d1-6418-43a4-8f52-954829dfe728	profile_admin	get_expert_list	active
2022-09-13 06:00:44.80052+00	\N	\N	e87466a2-68b3-4207-bfc9-f31a7d3c1dc1	profile_admin	get_featured_media	active
2022-09-13 06:01:02.580723+00	\N	\N	c5340630-df46-41fd-98c6-981a7ff912f3	profile_admin	feature_programme	active
2022-09-13 06:03:16.685568+00	\N	\N	24d29824-e075-4479-a8a9-6610a846c971	profile_admin	inactive_status	active
2022-09-13 06:03:24.070693+00	\N	\N	0816c59f-d095-495a-b0e9-20323b8569c8	profile_admin	reset_password	active
2022-09-13 06:03:42.390682+00	\N	\N	5b451f8b-6d42-4315-88bc-531218bff74c	profile_admin	unpublish_post	active
2022-09-13 06:04:39.370621+00	\N	\N	aff756fe-c63f-4c4e-9a31-2582f803e199	profile_admin	post_list	active
2022-09-13 06:04:51.360515+00	\N	\N	593e3d66-60b5-4fb7-b957-e0b83929e021	profile_admin	post_detail	active
2022-09-13 06:05:53.100448+00	\N	\N	1cc75c33-bd8d-4198-bd17-cf25127fa75e	profile_admin	get_my_post_list	active
2022-09-15 07:50:05.000109+00	\N	\N	4ed61853-cb4b-47d9-a587-af04e585f114	post_publisher	search_final_post	active
2022-09-16 08:55:00.607483+00	\N	\N	d6dbc96b-529e-4cdb-89b7-112a23b17bd5	profile_admin	all_frd_rqs	active
2022-09-27 06:52:00.833451+00	\N	\N	005d4175-efe3-4ebd-bf62-9e68b0deba98	admin	mis_bucket_count	active
2022-10-17 13:24:51.812383+00	\N	\N	9c7b6121-0d1f-4ce8-9555-80e3d794e659	super_admin	update_cms_user_detaials	active
2022-09-13 06:03:46.10049+00	\N	\N	a23086d5-e77c-4f0e-b851-6a9da14dc1f7	super_admin	unpublish_post	active
2022-12-09 14:34:53.433497+00	\N	\N	154ae357-dd7e-4656-be8e-2b72432f0f1a	post_publisher	get_reported_post_list	active
2022-09-12 17:15:22.206031+00	\N	\N	18945cb6-07fd-48c0-b829-011fc156f502	user	get_save_later	active
2022-09-12 17:15:22.206031+00	\N	\N	0abd8e72-5047-4b99-9fb5-39b326c6dab8	business	get_save_later	active
2022-09-12 17:15:22.206031+00	\N	\N	9e520558-0a74-4aeb-b4ca-9d1191d23503	user	update_visibility	active
2022-09-12 17:15:22.206031+00	\N	\N	ae6a18a0-59b7-4a9a-bd32-c331c9362771	business	update_visibility	active
2022-09-12 17:15:22.206031+00	\N	\N	dad2b545-05ea-4189-afff-ee73b5b0a73d	user	betting_details	active
2022-09-12 17:15:22.206031+00	\N	\N	9375e23a-4439-4dc9-ab9b-a65748332f02	business	betting_details	active
2022-09-12 17:15:22.206031+00	\N	\N	967b1457-c7ee-4c01-bc50-a570c816851f	user	betting_confirmation	active
2022-09-12 17:15:22.206031+00	\N	\N	b200adce-e040-4e88-9a15-bbef6168af32	business	number_of_post	active
2022-09-12 17:21:58.909943+00	\N	\N	ab2fe0e5-5c7d-4fc3-9c44-94d5477c4b82	user	unsend_friend_request	active
2022-09-12 17:21:58.909943+00	\N	\N	51b406e1-541a-49b3-a106-41b8ddc10360	business	unsend_friend_request	active
2022-09-12 17:21:58.909943+00	\N	\N	623752b1-4fc0-4b95-88e4-70ff47f09fb4	user	send_friend_request	active
2022-09-12 17:21:58.909943+00	\N	\N	3b39af52-00ec-4a74-889c-3dd731e4a515	business	send_friend_request	active
2022-09-12 17:32:21.450478+00	\N	\N	1df56664-633b-43e2-a4a4-5a9783e18f11	user	unfriend	active
2022-09-12 17:32:21.450478+00	\N	\N	9a1383c3-440f-41ac-be33-b4d5713095c2	business	unfriend	active
2022-09-12 17:32:21.450478+00	\N	\N	005d4175-efe3-4ebd-bf62-9e68b0deba91	user	search_people	active
2022-09-12 17:32:21.450478+00	\N	\N	005d4175-efe3-4ebd-bf62-9e68b0deba9f	business	search_people	active
2022-09-12 17:32:21.450478+00	\N	\N	2a4a9ec7-383b-4e67-96b9-36457cf2bc3e	user	reject_friend_request	active
2022-09-12 17:32:21.450478+00	\N	\N	e2c59bc0-99e1-450c-9756-a9d9bdea7e49	business	reject_friend_request	active
2022-09-12 17:32:21.450478+00	\N	\N	e2c59bc0-99e1-450c-9756-a9d7bdea7e40	user	accept_friend_request	active
2022-09-12 17:32:21.450478+00	\N	\N	e2c59bc0-99e1-450c-9756-a9d7bdea7e49	business	accept_friend_request	active
2022-09-12 17:32:21.450478+00	\N	\N	d2a87b66-ac75-4fd4-ad1b-f46ada319ce2	user	get_friend_list	active
2022-09-12 17:32:21.450478+00	\N	\N	41402ecb-18e6-4e9a-b5fc-46bd5ab81736	business	get_friend_request_sent	active
2022-09-12 17:39:30.391029+00	\N	\N	3d3b60e3-e379-4c2a-9b08-3beb7a27cc4b	user	unfollow	active
2022-09-12 17:39:30.391029+00	\N	\N	43bebf9e-de81-4919-b692-11197b9ddf9c	business	unfollow	active
2022-09-12 17:39:30.391029+00	\N	\N	d345600c-15ee-48a7-a1ab-d6e521d22d51	user	follow	active
2022-09-12 17:39:30.391029+00	\N	\N	20cd5673-e398-440e-938b-2644f0c5ffc8	business	follow	active
2022-09-12 17:39:30.391029+00	\N	\N	67092439-11f5-4d8d-9018-9c018612656a	user	blocked	active
2022-09-12 17:39:30.391029+00	\N	\N	39eed982-8d28-40d5-863a-43c9daa10d3e	business	blocked	active
2022-09-12 17:39:30.391029+00	\N	\N	22d8a98a-4948-4959-8e15-2c86e022caca	user	following_list	active
2022-09-12 17:39:30.391029+00	\N	\N	1270de59-a7bf-473a-b0e1-6ead56c82002	business	following_list	active
2022-09-12 17:39:30.391029+00	\N	\N	9987d73d-50e1-4b93-a367-de17d6239575	user	block_list	active
2022-09-12 17:39:30.391029+00	\N	\N	6797032b-f137-4f0c-b6c3-d69f106dd1c3	business	number_of_req_list	active
2022-09-13 05:09:51.881352+00	\N	\N	f9d1280b-1ac7-4ba1-b791-7425e8d0f623	admin	primary_sports	active
2022-09-13 05:10:15.621188+00	\N	\N	9ab929c4-ba17-4545-87da-9b9482c994a5	admin	get_sport_level	active
2022-09-13 06:22:33.693817+00	\N	\N	5d852290-cf21-4b0a-abb8-a8dfd49af317	user	send_notification	active
2022-09-13 06:23:07.713836+00	\N	\N	70506457-7ad4-44a2-88d6-7e5687021d42	business	send_notification	active
2022-09-13 06:23:27.003886+00	\N	\N	e578d028-9e31-4975-a6f3-abcf735b2299	business	get_notification	active
2022-09-13 06:23:38.053871+00	\N	\N	22760ae1-12d7-4232-90ef-d57753f12a92	business	update_notification	active
2022-09-13 06:23:46.834019+00	\N	\N	dcefe8f1-407c-4308-9480-45c0427d09f5	business	unseen_notification	active
2022-09-13 06:24:14.703899+00	\N	\N	8fb6e9e8-592c-4dd6-9d29-a6abf14aafcd	user	unseen_notification	active
2022-09-13 06:24:22.373908+00	\N	\N	54cebebb-77f2-457a-89da-41d49cdd2ca9	user	update_notification	active
2022-09-13 06:24:30.894018+00	\N	\N	67ca76e2-626d-466f-94d0-77f9fc700f87	user	get_notification	active
2022-09-13 06:24:37.713918+00	\N	\N	9d2d72ee-5e34-4b04-a3b2-47021380fd91	user	send_notification	active
2022-09-13 06:24:52.904023+00	\N	\N	7e7c71f3-f736-45da-a6d4-8a117986998b	user	get_geo_location	active
2022-09-13 06:25:00.004007+00	\N	\N	d3796bdd-85de-4fc9-bb40-84aa0c5e9c6d	business	get_geo_location	active
2022-09-15 09:34:00.337404+00	\N	\N	a05c2a30-1851-4cb6-80b3-b51a47c3de51	post_publisher	search_discarded_post	active
2022-09-16 10:25:48.415886+00	\N	\N	124e0b8e-932d-4bd5-9cfd-129da9d3cda2	post_reviewer	search_promotion_post	active
2022-09-27 17:43:57.617269+00	\N	\N	da60fed2-cf88-49a7-a7a1-62e9d6feae08	post_publisher	search_discarded_promotion_posts	active
2022-11-03 09:37:56.336017+00	\N	\N	005d4175-efe3-4ebd-bf62-9e68b0deba95	admin	contacted_details_count	active
2022-12-19 12:33:38.469126+00	\N	\N	08f0b964-f2f2-4158-839c-65b60b8e5464	super_admin	get_fitness_level	active
2022-09-12 17:20:09.973505+00	\N	\N	989f07b4-3279-4883-83d9-3ecc96dd0614	user	update_comment	active
2022-09-12 17:20:09.973505+00	\N	\N	026513de-b587-44e9-9463-192147d760fb	business	update_comment	active
2022-09-12 17:21:14.062105+00	\N	\N	8905e570-6de4-41f3-bc9d-24b38f282400	business	delete_comment	active
2022-09-12 17:21:14.062105+00	\N	\N	33b943f2-8844-4c76-9206-85e321a42d50	user	delete_comment	active
2022-09-13 05:10:00.661096+00	\N	\N	e27ca1ed-fdb3-4876-931a-2ad469eb53c3	admin	secondry_sports	active
2022-09-13 05:10:23.921269+00	\N	\N	7dc3e1d0-b612-46c3-83b9-db10a95d3e80	admin	get_fitness_level	active
2022-09-13 06:36:02.237948+00	\N	\N	01605833-5c4f-4cf8-9246-d067637545d4	user	get_my_post_list	active
2022-09-13 06:36:02.237948+00	\N	\N	cd804993-79e2-4655-accc-bb46cadfa3ef	business	get_my_post_list	active
2022-09-15 09:53:40.696493+00	\N	\N	746fc652-8670-414d-a965-2c84e63c4ebc	post_reviewer	search_reviewer_feed	active
2022-09-16 11:20:47.784411+00	\N	\N	ca5229b6-2b21-41c7-8d8a-8b1d175e8b72	post_reviewer	search_approved_promotion_posts	active
2022-09-16 11:44:51.71371+00	\N	\N	30ee78fa-1391-4f63-80c3-bde4500c71f3	post_reviewer	search_discarded_promotion_posts	active
2022-09-29 05:03:23.402259+00	\N	\N	3a59f499-81d5-46b7-b055-14f4fb91b146	content_creator	mis_bucket_count	active
2022-11-08 06:20:05.496236+00	\N	\N	b6193da3-e92c-4041-ba43-293d92526d7a	super_admin	disable_user	active
2022-09-12 17:46:47.363206+00	\N	\N	55e27460-7ced-4494-88e7-02cf39f46cb7	user	add_hall_of_fame	active
2022-09-12 17:47:24.453489+00	\N	\N	838157e8-2df6-4f9e-a78d-f4fa650f5173	business	add_hall_of_fame	active
2022-09-12 17:47:48.719799+00	\N	\N	6158768e-0203-43ec-8b45-948555d506c4	user	get_hall_fame	active
2022-09-12 17:47:58.43271+00	\N	\N	ea728c1c-a51c-4e45-8957-ff7951e366c8	user	update_hall_fame	active
2022-09-12 17:48:05.685668+00	\N	\N	c6d4d116-82b1-4add-86cf-763dc1c71c4b	user	delete_hall_fame	active
2022-09-12 17:48:11.041718+00	\N	\N	47302a0a-db0d-4f65-a26d-9cafe6b781ca	user	add_programme	active
2022-09-12 17:48:26.415035+00	\N	\N	3a7ffd3a-1753-4bb3-b556-f01196de5bd9	user	list_program_details	active
2022-09-12 17:56:38.608101+00	\N	\N	afaca761-d499-4d79-ac30-ad9e07058eb0	user	featured_program_list	active
2022-09-12 17:56:45.606565+00	\N	\N	373f9c46-b701-4473-9c66-f6db4adf5c7b	user	update_programme	active
2022-09-12 17:56:52.126171+00	\N	\N	bb03edeb-82a8-409d-abf0-240a732d109f	user	search_programme	active
2022-09-12 17:56:59.236143+00	\N	\N	cf68e4f2-a8ef-4a34-b84a-faa52536acfa	user	delete_programme	active
2022-09-12 17:57:05.402816+00	\N	\N	487493c3-c36c-4728-ba50-6fe22b18c20e	user	program_suggesion	active
2022-09-12 17:57:11.894898+00	\N	\N	df0c9306-8f81-4500-9027-0bfc42d69180	user	search_expert_details	active
2022-09-12 17:57:27.122588+00	\N	\N	c3837d39-a8e4-4730-9f6f-2438bc3990c9	user	add_featured_media	active
2022-09-12 17:57:38.271329+00	\N	\N	aff694db-1663-4abd-8071-d25c9767e075	user	get_featured_media	active
2022-09-12 17:57:48.483348+00	\N	\N	e6128e4a-ac1b-468b-b7e0-290afca865c6	user	delete_featured_media	active
2022-09-12 17:57:59.026259+00	\N	\N	444a163c-7bb2-4abf-957e-714a4bbae3e6	user	add_testimonials	active
2022-09-12 17:58:05.351489+00	\N	\N	d1018e00-a6b9-497c-a3fd-3d866065fa7b	user	get_testimonials	active
2022-09-13 05:19:38.59603+00	\N	\N	62c1a3cc-c3ed-4e21-9e21-e6d37b7c7a37	user	get_friend_request_list	active
2022-09-13 05:19:38.59603+00	\N	\N	3ae32319-9dd1-433d-9341-217e2fbac3be	business	get_friend_request_list	active
2022-09-13 07:05:07.460881+00	\N	\N	f790a1a9-3d0b-4bae-94cf-e1bb88e4e9f0	business	get_friend_request_list	active
2022-09-13 07:05:17.326897+00	\N	\N	ad0937fc-f51f-4267-8309-668652743662	user	get_friend_request_list	active
2022-09-13 07:06:02.401438+00	\N	\N	1cae2199-ef0a-4f7a-9555-81eb1799e1f7	user	friend_suggestion	active
2022-09-13 07:06:10.90174+00	\N	\N	10c49c3e-7053-4998-9535-bd155bb6c552	business	friend_suggestion	active
2022-09-13 07:10:19.791871+00	\N	\N	64fa60c7-100f-4856-96dd-2ea7d6e9ad56	post_reviewer	update_post	active
2022-09-13 07:10:30.145294+00	\N	\N	85b783b2-1ca2-4cf5-bb1a-a83f634417ab	post_publisher	update_post	active
2022-09-15 11:24:06.225219+00	\N	\N	7df09bb9-cce3-49b4-9899-8561bc01b10c	super_admin	add_terms_conditions	active
2022-09-15 11:25:08.936638+00	\N	\N	3a6ed7b2-9524-43e8-b2ef-9037be92a195	super_admin	remove_terms_conditions	active
2022-09-16 18:28:50.776492+00	\N	\N	00756fec-e598-4107-b415-cdbc953d9ec3	user	join_group_count	active
2022-09-16 18:28:50.776492+00	\N	\N	e057c951-b755-4003-bc18-0fdaa2d81a3f	business	join_group_count	active
2022-09-16 18:54:12.560596+00	\N	\N	e057c951-b755-4003-bc18-0fdaa2d81a3a	business	number_of_bettingReq	active
2022-09-16 18:55:33.245391+00	\N	\N	ed8df49b-5ce3-473a-8f36-697221949a97	user	number_of_bettingReq	active
2022-10-03 07:10:09.624523+00	\N	\N	3078f47b-b26a-480e-b58c-9be48c7dc79a	user	delete_account	active
2022-10-03 07:10:09.624523+00	\N	\N	156b74f1-154f-4263-805a-592ac07a7087	business	delete_account	active
2022-11-08 07:35:58.77156+00	\N	\N	1c50d311-6709-4f46-8f3f-e01ce886ede1	super_admin	enable_user	active
2022-09-12 17:58:11.782263+00	\N	\N	31574806-56cc-44eb-ad31-a5af277d8cf1	user	update_testimonials	active
2022-09-12 17:58:17.871288+00	\N	\N	9511b397-2ef2-43bf-b378-b048bffd9987	user	delete_testimonials	active
2022-09-12 17:58:29.065355+00	\N	\N	54e4cc9e-361e-4153-b787-0edfacb1cda1	user	add_sports	active
2022-09-12 17:58:35.030397+00	\N	\N	2b482891-df66-41c8-804e-4406255a11cc	user	primary_sports	active
2022-09-12 17:58:44.692722+00	\N	\N	fd9e0da6-b365-4088-9dc1-569357d092fb	user	secondry_sports	active
2022-09-12 17:58:51.634297+00	\N	\N	0a7a346a-3a79-48c7-9719-e196768735bd	user	delete_sport_level	active
2022-09-12 17:58:58.1517+00	\N	\N	d5bdf032-58cd-49c2-ba5a-1d450e51eb1e	user	delete_sport_level	active
2022-09-12 17:59:04.036698+00	\N	\N	d4e8d506-d46a-4721-a202-f8c4ade09a71	user	add_sport_level	active
2022-09-12 17:59:09.780493+00	\N	\N	bf5d710b-d61c-44c0-a67e-058ffcb624d4	user	update_sport_level	active
2022-09-12 17:59:15.543952+00	\N	\N	35756a74-b082-4abf-b267-0f01c9c00a05	user	get_sport_level	active
2022-09-12 17:59:23.238017+00	\N	\N	d6275f8b-000c-4e3b-a782-86b2c89d241e	user	add_fitness_level	active
2022-09-12 17:59:30.665339+00	\N	\N	4dad65cd-a01a-4dcc-97a7-c984797a92ac	user	get_fitness_level	active
2022-09-12 17:59:36.550265+00	\N	\N	49cb6aa7-cc8e-46d6-8c4d-7359781261c2	user	update_fitness_level	active
2022-09-12 17:59:42.861903+00	\N	\N	da7e9d20-1a7f-4396-bfff-9dceb46a3439	user	delete_fitness_level	active
2022-09-12 17:59:51.980685+00	\N	\N	4bd071f7-2646-4552-8e13-77e3b80dbd81	user	master_course	active
2022-09-12 17:59:58.86274+00	\N	\N	86097893-c271-464d-b321-47e110e5f464	user	add_contact_me	active
2022-09-12 18:00:05.220209+00	\N	\N	7caf0524-debb-4fee-990e-3da38e83e0e9	user	add_expertise	active
2022-09-12 18:00:10.413184+00	\N	\N	f63a13f4-d7dc-43ea-9ca1-109219f7b56f	user	update_expertise	active
2022-09-12 18:00:17.256259+00	\N	\N	52eef639-21b1-41dd-a25e-b923951b3ee9	user	delete_experties	active
2022-09-12 18:00:23.672024+00	\N	\N	c1b0ebc2-bd66-4b3c-b30f-166a3c8e0293	user	get_expertise_details	active
2022-09-12 18:00:37.779111+00	\N	\N	fc90f368-45af-426e-8e52-644f99ffe674	user	get_expert_list	active
2022-09-12 18:00:43.365531+00	\N	\N	d39e86cd-ee53-4d6e-be91-3818fa3d8f40	user	select_programs	active
2022-09-12 18:00:49.874187+00	\N	\N	0b063156-a2b8-4c2e-918a-e163a47b7103	user	add_expert_details	active
2022-09-12 18:00:56.729773+00	\N	\N	58ba7eb7-8ebe-49a1-b2a6-00ebb8ad9369	user	master_program	active
2022-09-12 18:01:04.977763+00	\N	\N	0b65256d-1fad-4eb8-a433-df22baa5048f	user	get_master_programs	active
2022-09-12 18:01:12.210198+00	\N	\N	a2f6eaff-a2a0-456f-84a3-fde197f1b553	user	search_sports	active
2022-09-12 18:01:19.217878+00	\N	\N	80d1f5fc-0468-43dd-bc69-722a020944d1	user	set_visibility	active
2022-09-12 18:01:25.390083+00	\N	\N	ebc6ebfb-6fd1-4b81-aadc-98afb06d603c	user	profile_visibility	active
2022-09-12 18:01:32.107655+00	\N	\N	c54f6355-4b9e-4d81-9d99-25420823f745	user	terms_conditions	active
2022-09-12 18:01:38.673629+00	\N	\N	f71e1fae-c95f-4c7a-bbf0-5650db9836aa	user	feature_program	active
2022-09-12 18:01:53.228861+00	\N	\N	4fba003d-b80b-4506-9602-632848ba61dd	business	feature_program	active
2022-09-12 18:01:56.927559+00	\N	\N	a5c9358c-3a06-4354-968f-0b242d3a80d7	business	feature_program	active
2022-09-12 18:01:57.313487+00	\N	\N	7274eeef-9d65-4acd-a3f3-d29fbb3f6480	business	feature_program	active
2022-09-12 18:02:21.164029+00	\N	\N	3f4df2d2-ae18-42e0-b85f-c9f2e2e41482	business	terms_conditions	active
2022-09-12 18:02:29.160154+00	\N	\N	895c335b-5d9b-4bb3-8591-b7fbfc763ab5	business	profile_visibility	active
2022-09-12 18:02:37.051834+00	\N	\N	c4d970eb-6d28-43c2-9d5b-9ec6acc6e5d0	business	set_visibility	active
2022-09-12 18:02:52.177357+00	\N	\N	bd23847b-785e-4a77-9f21-b7be65f682c8	business	search_sports	active
2022-09-12 18:02:58.097483+00	\N	\N	1f13435c-7ce2-463c-917c-04ca6371c445	business	get_master_programs	active
2022-09-12 18:03:05.117849+00	\N	\N	e05122a6-1abb-4f56-9553-423e338e2598	business	master_program	active
2022-09-12 18:03:13.849289+00	\N	\N	8beedf1d-914d-404a-aeba-a3ce21fa8607	business	add_expert_details	active
2022-09-12 18:03:21.36172+00	\N	\N	d76213e1-cca8-415e-8704-38f4e4f31a9a	business	select_programs	active
2022-09-12 18:03:30.306114+00	\N	\N	346e7ca9-ea49-464b-9442-42597b7502ab	business	get_expert_list	active
2022-09-12 18:03:40.064124+00	\N	\N	ac09e2de-31f5-4bfa-9809-6eaccdb44e6b	business	get_expertise_details	active
2022-09-12 18:03:50.806883+00	\N	\N	a68cd3b3-2c12-4c6b-8899-260708667d25	business	delete_experties	active
2022-09-12 18:04:08.84245+00	\N	\N	1bbe85f9-d67c-4975-9d91-d8fce7231bf1	business	add_expertise	active
2022-09-12 18:04:23.397688+00	\N	\N	d72b8ea7-6ac3-48b8-9c12-c3dcb747e976	business	add_contact_me	active
2022-09-12 18:04:30.652748+00	\N	\N	a781073b-9bba-4c11-a70e-6fd2378f42ae	business	master_course	active
2022-09-12 18:04:36.3114+00	\N	\N	0f966ccd-cd10-42d1-b1ed-17a54e3ca3d1	business	delete_fitness_level	active
2022-09-12 18:04:44.167868+00	\N	\N	79f3c3e8-6516-43fe-8bda-1794d5a21e9d	business	update_fitness_level	active
2022-09-12 18:04:51.634055+00	\N	\N	66af5412-508e-406e-962c-65abd8b4a122	business	get_fitness_level	active
2022-09-12 18:04:58.625784+00	\N	\N	29b140f5-cb52-4b1e-84a4-9127409880e1	business	add_fitness_level	active
2022-09-12 18:05:07.383398+00	\N	\N	0e700ad0-a11d-4f5d-964d-aab8115f1fee	business	get_sport_level	active
2022-09-12 18:05:15.624925+00	\N	\N	a645c010-f42f-4f16-b706-a4f004b4f13d	business	update_sport_level	active
2022-09-12 18:05:23.023104+00	\N	\N	c94583af-4f68-48e5-8b97-a3b346c83f58	business	add_sport_level	active
2022-09-12 18:05:30.39497+00	\N	\N	00bcdc55-25a9-4c36-a782-b7611e5d7bfd	business	delete_sport_level	active
2022-09-12 18:05:36.947783+00	\N	\N	8373c97f-037c-4243-a256-ec60043d5b04	business	delete_sport_level	active
2022-09-12 18:05:44.378909+00	\N	\N	e2e122e4-5dc7-491e-87bd-22974266852e	business	secondry_sports	active
2022-09-12 18:05:56.670912+00	\N	\N	aab862ca-3f44-42cd-9a5d-5b56d3decabd	business	primary_sports	active
2022-09-12 18:06:04.576751+00	\N	\N	e362eb42-1f45-4a3a-8332-ffb42a768668	business	add_sports	active
2022-09-12 18:06:11.701766+00	\N	\N	e5ce1f48-2b0c-4798-94f1-f4f82da09290	business	delete_testimonials	active
2022-09-12 18:06:20.699854+00	\N	\N	7e885a77-16ce-49aa-8a97-7077a3c7ae49	business	update_testimonials	active
2022-09-12 18:06:27.534906+00	\N	\N	9c27aec6-910b-4075-be50-9510f4024413	business	get_testimonials	active
2022-09-12 18:06:36.398236+00	\N	\N	18827970-531e-4393-9021-3e12fcb60c80	business	add_testimonials	active
2022-09-12 18:06:42.900389+00	\N	\N	876fdfed-884b-49e7-9bce-66fa6b4fe6bf	business	delete_featured_media	active
2022-09-12 18:06:49.340704+00	\N	\N	27a8bb0b-e125-427e-b6a8-62e09552a4c9	business	update_featured_media	active
2022-09-12 18:06:59.57507+00	\N	\N	22b2ba69-41b1-44a4-bd44-31b661d330cf	business	get_featured_media	active
2022-09-12 18:07:05.472443+00	\N	\N	820d8b8c-bdc9-4312-afce-c18dcc69d7f1	business	add_featured_media	active
2022-09-13 05:20:42.499663+00	\N	\N	d2a87b66-ac75-4fd4-ad1b-f46ada319ce3	business	get_friend_list	active
2022-09-13 07:35:48.704549+00	\N	\N	32e709ba-f51f-4e28-86be-818c97e26e8c	content_creator	upload_media	active
2022-09-15 12:27:22.198749+00	\N	\N	42ade3d8-36d9-478f-91af-084042a0d6f0	supe_admin	section_list	active
2022-09-20 12:14:13.023951+00	\N	\N	12ef25ff-4b52-4f02-8137-c721a7cc073b	business	health_records_count	active
2022-09-20 12:15:22.030642+00	\N	\N	746110d0-e506-4f16-848a-08d4ab7a1b23	user	health_records_count	active
2022-10-04 06:18:54.788153+00	\N	\N	9d0cd4ef-8762-4c4a-b4dd-658834c0e44b	business	update_expertise	active
2022-11-08 12:39:29.774831+00	\N	\N	836796e5-f6bc-4d96-8325-2ee4b16e2c7e	super_admin	search_admin_post_lists	active
2022-11-08 12:40:33.140494+00	\N	\N	26e44593-b79c-4579-9581-b071f5e04cb9	content_creator	search_admin_post_lists	active
2022-09-12 18:07:15.280594+00	\N	\N	ce151d08-8a87-4606-a853-122ab00d8beb	business	search_expert_details	active
2022-09-12 18:07:39.781153+00	\N	\N	b955fed1-0441-43bf-b316-7ebaa145676b	business	program_suggesion	active
2022-09-12 18:07:49.513269+00	\N	\N	d043591a-9ee2-40fc-9340-5682ebc50e35	business	delete_programme	active
2022-09-12 18:07:54.993475+00	\N	\N	faff3d51-6e31-41b8-a04d-f14c87ec1c7a	business	search_programme	active
2022-09-12 18:08:01.622977+00	\N	\N	809df200-ceb8-4762-90ff-56194a117ac6	business	update_programme	active
2022-09-12 18:08:07.682062+00	\N	\N	ceb4cdaf-aad5-456c-8f64-d9d0a5ae2de7	business	featured_program_list	active
2022-09-12 18:08:14.129156+00	\N	\N	88f579f4-3b20-44cd-86d6-60f657d35afc	business	list_program_details	active
2022-09-12 18:08:26.87497+00	\N	\N	5af287b1-56e7-488a-836c-02573dff0243	business	get_programme	active
2022-09-12 18:08:33.800375+00	\N	\N	bf69b34d-7d27-4c53-90b1-267436be5b81	business	add_programme	active
2022-09-12 18:08:40.284752+00	\N	\N	ea2cabeb-64da-467f-b60a-95dda8af6236	business	delete_hall_fame	active
2022-09-12 18:08:42.396353+00	\N	\N	95bd5170-4476-4884-b80b-d517bc347978	business	delete_hall_fame	active
2022-09-12 18:08:48.588115+00	\N	\N	d4083a67-90c2-4f8a-8bba-b7fe15cb64e6	business	update_hall_fame	active
2022-09-12 18:08:51.473121+00	\N	\N	0dd47ce4-310a-48e5-bc0a-aedb0d8792a9	business	update_hall_fame	active
2022-09-12 18:08:59.787889+00	\N	\N	3f81a91e-5e2b-4a9b-9086-4ba3fdc7e2d1	business	get_hall_fame	active
2022-09-12 18:09:07.26327+00	\N	\N	e207107f-b640-4b09-b7b2-2726f91563e7	business	add_hall_of_fame	active
2022-09-12 18:11:48.341523+00	\N	\N	89629b42-3800-4808-8e30-754abf04ba15	business	add_health_profile	active
2022-09-12 18:11:59.875735+00	\N	\N	e8a600be-c078-461c-b1f9-54b8af7a3165	business	update_health_details	active
2022-09-12 18:12:07.493567+00	\N	\N	c5150494-b702-4e6f-9240-f5de06961e21	business	get_health_profile_detail	active
2022-09-12 18:12:14.784255+00	\N	\N	6aba9ed2-b87c-43e0-933f-757c2f712cc7	business	get_health_profile	active
2022-09-12 18:12:23.067492+00	\N	\N	4ec1db37-7cf2-4c18-94c6-818fbbdf2ae7	business	get_master_health_parameters	active
2022-09-12 18:12:29.580277+00	\N	\N	29b60802-a487-4422-97ab-4ff22ed9cf2c	business	add_health_report	active
2022-09-12 18:12:36.228297+00	\N	\N	a40dceb1-9595-4da5-8808-bdbe0ee4c92a	business	add_custom_parameter	active
2022-09-12 18:12:43.366333+00	\N	\N	bd67847a-8684-445a-8c38-876533c070a0	business	add_master_parameter	active
2022-09-12 18:12:54.104286+00	\N	\N	e5f6aa9c-a030-45f7-9d25-d33410a4965b	business	health_report	active
2022-09-12 18:13:00.300768+00	\N	\N	db5119eb-9624-4dd0-a7a1-97e617e8287e	business	health_report_parameter	active
2022-09-12 18:13:06.497179+00	\N	\N	295425ee-6dee-4537-9757-e2b609d36b96	business	health_report_parameter	active
2022-09-12 18:13:13.815656+00	\N	\N	383de40e-fc34-42c5-b93e-630f72f8b117	business	healthparamters_reported_dates	active
2022-09-12 18:13:19.204769+00	\N	\N	98ea38d2-605b-4851-8e57-192df626fe89	business	update_health_report	active
2022-09-12 18:13:32.199215+00	\N	\N	1cfbac3c-f3b7-4387-b8b1-03f1aee192ef	user	update_health_report	active
2022-09-12 18:13:38.186323+00	\N	\N	91d23cf2-87fb-404c-b809-231f86f29d0b	user	healthparamters_reported_dates	active
2022-09-12 18:13:44.900391+00	\N	\N	f659db47-5492-4769-b9a4-1a7f473d914c	user	health_report_parameter	active
2022-09-12 18:13:50.656491+00	\N	\N	46b75848-1f00-4b0a-b730-75706245202b	user	health_report_parameter	active
2022-09-12 18:13:57.108678+00	\N	\N	8e5611ba-3df0-4c49-85e5-6ba21fd18c26	user	health_report	active
2022-09-12 18:14:02.73367+00	\N	\N	820f7faf-a07e-4e50-adf2-e830df1d2385	user	add_master_parameter	active
2022-09-12 18:14:08.18853+00	\N	\N	44d542d6-d7ef-4383-95a5-893c57a2d70f	user	add_custom_parameter	active
2022-09-12 18:14:15.578645+00	\N	\N	18bdf467-098c-4ec2-86a4-edeb242d0e24	user	add_health_report	active
2022-09-12 18:14:21.47506+00	\N	\N	2c95f725-9cf1-4358-9329-126cd5cb3611	user	get_master_health_parameters	active
2022-09-12 18:14:28.110912+00	\N	\N	205635d8-ffe8-4240-a688-1a34462f9096	user	get_health_profile	active
2022-09-12 18:14:35.032326+00	\N	\N	787472ff-a297-4e78-ab85-d4243785d7f7	user	get_health_profile_detail	active
2022-09-12 18:14:42.117013+00	\N	\N	b8977527-db41-4d18-8c7e-3aa61fb0c499	user	update_health_details	active
2022-09-12 18:14:51.645184+00	\N	\N	7f5fbd02-a343-4daa-893a-022790c1340f	user	add_health_profile	active
2022-09-12 18:15:34.453652+00	\N	\N	7052eecc-efe1-436e-8888-b6453dba53a7	user	friend_suggestion	active
2022-09-12 18:15:46.222807+00	\N	\N	825ce010-089f-4681-8551-79e0fe45d58f	user	group_suggestion	active
2022-09-12 18:16:02.026196+00	\N	\N	cfb0aa9a-2de9-467b-bd07-443245114ed0	business	business	active
2022-09-12 18:16:15.395496+00	\N	\N	fdc092fd-d740-4e6a-b922-c8ee9f49ca6c	business	friend_suggestion	active
2022-09-12 18:16:22.164586+00	\N	\N	22c707b0-fe75-434e-93db-153acaec74eb	business	group_suggestion	active
2022-09-12 18:16:38.093559+00	\N	\N	1b33b8ab-350a-441c-ac42-1516c1dbe5d1	business	upload_media	active
2022-09-12 18:16:46.671898+00	\N	\N	361c4449-71fe-459a-8a30-0afd5fccc977	business	get_media_file	active
2022-09-12 18:16:53.752184+00	\N	\N	9ac342eb-8ce9-4609-86c0-8dd5dc62eb0b	business	delete_media_file	active
2022-09-12 18:17:01.851964+00	\N	\N	d0ab4356-f884-4501-b40a-b6a6d933e8a0	business	upload_media	active
2022-09-12 18:17:13.78112+00	\N	\N	5b7767f8-7ed8-4980-9923-f2f2d4481b1a	business	delete_multiple_media_file	active
2022-09-12 18:17:18.079898+00	\N	\N	9be2cf2f-9f9f-478f-9cfe-65e6a7fd3fe0	user	delete_multiple_media_file	active
2022-09-12 18:17:32.547685+00	\N	\N	7c1a7acd-409c-4075-a365-217333fe7ba5	user	upload_media	active
2022-09-12 18:17:41.557163+00	\N	\N	0ab561a3-fa96-4f6e-9db0-904b7aa24776	user	delete_media_file	active
2022-09-12 18:17:50.33152+00	\N	\N	593de34a-bc43-42a2-9bbd-37a87043a927	user	get_media_file	active
2022-09-12 18:17:58.624367+00	\N	\N	345b5bbc-0c28-43b3-a6cd-faf92d6a5b42	user	upload_media	active
2022-09-12 18:18:15.722702+00	\N	\N	a11a4700-8203-41eb-b863-c984bd762c12	user	send_notification	active
2022-09-12 18:18:24.704009+00	\N	\N	8067fff5-8607-47e9-822c-78b4e17963a2	user	get_notification	active
2022-09-12 18:18:32.597849+00	\N	\N	5123b86f-15da-4da7-8c41-22f232211b85	user	update_notification	active
2022-09-12 18:18:39.377122+00	\N	\N	320221de-3c27-4264-af72-26a7abff4e72	user	unseen_notification	active
2022-09-12 18:18:52.528771+00	\N	\N	c85a8fc5-5884-4a7f-9116-8138f8189df1	business	unseen_notification	active
2022-09-12 18:18:58.688927+00	\N	\N	437955c3-a3bb-4d0e-b2d7-9bfd58c08f86	business	update_notification	active
2022-09-12 18:19:05.043461+00	\N	\N	8c6cd6ed-2421-47e5-8982-fa058fd19d49	business	get_notification	active
2022-09-12 18:19:11.517239+00	\N	\N	e575c0f0-ae27-4ec0-9d9c-93e620d3a7d8	business	send_notification	active
2022-09-12 18:20:57.906962+00	\N	\N	2da5208d-704f-468c-9905-29fa348ef384	business	group_create	active
2022-09-12 18:21:20.368187+00	\N	\N	8b5f770c-7bad-42e7-866f-02d3b5494c38	business	group_join	active
2022-09-12 18:21:27.513835+00	\N	\N	9865e63f-a3c6-4e0c-a72b-d2c5d961e8bb	business	get_requests_list	active
2022-09-12 18:21:34.349274+00	\N	\N	27c7810a-c3d5-43c4-9420-a86e97366411	business	group_requests_accept	active
2022-09-12 18:21:40.45598+00	\N	\N	b60e0779-fde8-4c88-8340-063c393b9dc9	business	group_exit	active
2022-09-12 18:21:46.957798+00	\N	\N	e53ece55-2162-4632-bb3e-1afa75ece75f	business	group_update	active
2022-09-12 18:21:54.099839+00	\N	\N	04cb4b74-cd8e-4e4a-ba61-9e13077a34ef	business	group_admin_add	active
2022-09-12 18:21:59.332252+00	\N	\N	2f966998-a14c-4bb4-8e80-f861cb623639	business	group_member_remove	active
2022-09-12 18:22:06.616809+00	\N	\N	889ff22b-1cf8-4901-a34d-cf8ccd34a5e5	business	group_delete	active
2022-09-13 05:24:28.095622+00	\N	\N	860fde00-f070-44cb-9ec3-218fa5308580	business	unblocked	active
2022-09-13 05:24:28.095622+00	\N	\N	f0c27140-7a03-48d7-9e58-71789ab139e5	user	unblocked	active
2022-09-13 05:28:07.055223+00	\N	\N	4cdf59cf-2ae1-4228-b5eb-9ac045211b1e	business	block_list	active
2022-09-13 05:29:28.05537+00	\N	\N	69972d54-fec2-4f4e-872c-3b47a86bc17e	business	followers_list	active
2022-09-13 05:29:28.05537+00	\N	\N	8475d580-962e-43db-b9f6-ddf6efb4d4bc	user	followers_list	active
2022-09-12 18:08:24.191423+00	\N	\N	a169a654-1ed3-4601-8227-406e819f3a18	user	get_programme	active
2022-09-13 07:36:13.782199+00	\N	\N	d0004fce-88a3-470c-b3c6-f3f3baefbfe6	content_creator	create_post	active
2022-09-15 12:37:51.370903+00	\N	\N	ab23db22-6823-44c6-894e-511e37c4cf7d	user	post_details	active
2022-09-15 12:37:51.370903+00	\N	\N	b1e46c3e-3580-4a59-8d2a-6b00c9bda03a	business	post_details	active
2022-09-21 07:08:35.819253+00	\N	\N	6c91c69c-6a09-41ad-b53e-04e65466fd16	profile_admin	primary_sports	active
2022-09-21 07:09:08.360659+00	\N	\N	4b4e89de-5d5d-4a9c-b605-f7405f16dcc4	profile_admin	secondry_sports	active
2022-09-21 07:09:25.457345+00	\N	\N	7e909532-17a7-4281-80fc-120d4f8d168b	profile_admin	get_sport_level	active
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (created_at, update_at, deleted_at, id, name, key, membership_type) FROM stdin;
2022-04-08 12:40:44.576282+00	\N	\N	87e05f9f-e5a6-42b6-973f-ec64db8b922f	Business	business	general
2022-04-08 12:41:20.227609+00	\N	\N	b2c40b26-b117-4fe7-a0de-33eaeba76c66	User	user	general
2022-04-22 08:41:25.590848+00	\N	\N	fdeab1a8-58eb-4c67-b659-a4cc40cb82b1	Group Admin	group_admin	admin
2022-08-10 05:28:31.49707+00	\N	\N	3641eaca-daaa-44f7-a82a-3c5fdf77f76a	Post Publisher	post_publisher	admin
2022-08-10 05:28:31.49707+00	\N	\N	85dc6e5f-b589-426c-8561-3ad3e8c3e1f6	Post Reviewer	post_reviewer	admin
2022-08-10 05:38:02.39006+00	\N	\N	d4cc9b42-06ad-4b44-8867-ebbf3bedbf17	Group Admin	group_admin	admin
2022-04-28 05:27:56.635116+00	\N	\N	1b87e3f0-35ef-44a1-bfc3-9af464f98b94	Admin	admin	general
2022-08-10 05:38:02.39006+00	\N	\N	ebb06f5f-5a71-4c3d-b88e-1717f921de5f	User Admin	user_admin	admin
2022-08-10 05:38:02.39006+00	\N	\N	10a37060-fcdf-41f5-a539-321aa1cbafe1	Super Admin	super_admin	admin
2022-08-10 05:38:02.39006+00	\N	\N	33f3a8f8-d736-4898-91fe-00e2ddc1d2b1	Expert Admin	expert_admin	admin
2022-08-10 05:24:27.37602+00	\N	\N	74be5a02-a8bb-40c9-b33b-4427ca6ddd9f	Profile Admin	profile_admin	admin
2022-05-10 09:49:29.231817+00	\N	\N	6096c0ab-2226-4f9a-ab5b-e5b76a0c2282	User Admin	user_admin	admin
2022-08-09 10:13:55.627569+00	\N	\N	ecc5cabb-563d-4fdd-8269-8bdde6d6baa4	Content Creator	content_creator	admin
2022-12-02 00:55:22.137924+00	\N	\N	a14aad73-7ffe-49c7-9cea-77a7087270f5	Mis Admin	mis_admin	admin
\.


--
-- Data for Name: selected_programs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.selected_programs (created_at, update_at, deleted_at, id, user_id, programme_id, connect) FROM stdin;
\.


--
-- Data for Name: sport_bucket_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sport_bucket_mapping (created_at, update_at, deleted_at, id, sport, bucket) FROM stdin;
2022-05-20 05:21:51.123813+00	\N	\N	2d570b61-6a1d-4cda-b409-6607db702e88	cricket	cricket
2022-05-20 05:21:51.123813+00	\N	\N	04b0c7ce-26e4-4eca-8e02-a7a45f446c6a	running	running
2022-05-20 05:21:51.123813+00	\N	\N	90e905b7-9b24-4067-b0d0-d038694d007a	marathoner	running
2022-05-20 05:21:51.123813+00	\N	\N	90658579-2037-4280-83bb-88e827af8f8b	triathlon	running
2022-05-20 05:21:51.123813+00	\N	\N	668ee096-227c-4cc9-bdb0-fee4379ff536	iron_man	running
2022-05-20 05:21:51.123813+00	\N	\N	674ccca4-aec4-4aef-a762-721211dbae92	track_and_field	running
2022-05-20 05:21:51.123813+00	\N	\N	55e905b7-9b24-4067-b0d0-d038694d007a	cycling	cycling
2022-05-20 05:21:51.123813+00	\N	\N	23155630-c67c-43c1-9605-d1f68655aef6	football	football
2022-05-20 05:21:51.123813+00	\N	\N	4ee70b61-777e-4cda-b409-6607db702e88	gyming	fitness
2022-05-20 05:21:51.123813+00	\N	\N	782dbeab-6071-42fd-ab6c-04ae4f68e1dc	cross_fit	fitness
2022-05-20 05:21:51.123813+00	\N	\N	6b7c3a4b-54ba-4bd3-9e70-34c2b3ea4c3e	weight_lifting	fitness
2022-05-20 05:21:51.123813+00	\N	\N	87651b76-b2bc-4f26-ae2d-40359261715f	tennis	tennis
2022-05-20 05:21:51.123813+00	\N	\N	9ac9b1cf-d578-4d27-93a9-417c7cde3b48	badminton	badminton
2022-05-20 05:27:31.672397+00	\N	\N	b54006cb-c120-4f73-81b8-e4fe5d0d9a81	boxing	martial_arts
2022-05-20 05:27:31.672397+00	\N	\N	f26be8a0-9b60-44f5-97b8-43017e4f42b4	karate 	martial_arts
2022-05-20 05:27:31.672397+00	\N	\N	b52407e1-e94e-4dbf-bfc5-4ed2f767420b	judo	martial_arts
2022-05-20 05:27:31.672397+00	\N	\N	cbb4ecfb-8375-4c02-ac31-61dba63aaff9	mixed_martial_arts	martial_arts
2022-05-20 05:27:31.672397+00	\N	\N	54e883eb-c133-4546-af56-2115ce92ff6d	other_martial_arts	martial_arts
2022-05-20 05:31:24.664167+00	\N	\N	267cc1f0-6184-42f2-a57c-a05152843d37	trekking	trekking
2022-05-20 05:31:24.664167+00	\N	\N	2b59989f-ea9c-488e-9173-26aa979fced6	mountaineering	trekking
2022-05-20 05:31:24.664167+00	\N	\N	3399f5e8-59da-462d-856b-d580dc8ca563	rock_climbing	trekking
2022-05-20 05:31:24.664167+00	\N	\N	67224191-658f-4197-8639-6b9932fc3f57	golf	golf
2022-05-20 05:31:24.664167+00	\N	\N	09c0b6b0-d5e1-4ac3-8db3-462ff2961467	yoga	yoga
2022-05-24 09:38:14.66907+00	\N	\N	46529f1f-8add-4da6-9d87-f5b9ec03f07f	\N	influencer
2022-05-24 09:38:48.342876+00	\N	\N	75eb5983-6eee-47c7-9bf4-4ad82cf9640a	\N	business
2022-05-24 09:40:06.795415+00	\N	\N	c103e0e3-67a0-4a85-845e-4f3d87b9fbf1	\N	international
2022-05-24 09:40:39.770556+00	\N	\N	ed9e11b8-30e6-4929-a80f-020cbc192b3c	\N	national
2022-05-24 09:39:22.49961+00	\N	\N	81d5720f-6c33-45fa-826b-05f38fbb4b65	\N	individual
\.


--
-- Data for Name: sport_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sport_level (created_at, update_at, deleted_at, id, sorting_position, user_id, more_info, sport_id, is_primary, sport_level_visibility, secondary_visibility, primary_deleted_at, secondary_deleted_at, playing_level) FROM stdin;
2024-02-29 09:37:59.007539+00	\N	\N	e4f81c4b-f479-43af-9d95-1b61f492a3dd	\N	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	3f714bfd-8070-479a-be3a-edfe775c922f	f	\N	\N	\N	\N	\N
2024-02-29 09:37:46.679661+00	2024-02-29 09:42:43.166592+00	\N	16a71051-5075-4214-b0b8-7993d0988beb	\N	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"sport_id": "1cb7a501-86fb-440d-943c-4ec6bf30342d", "more_info": "Right hand batsman, Opener, plays for RCB in IPL, Plays for Sydney Sixers in BBL, Barbados royals in CPL", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "national"}, {"key": "specialisation", "label": "My specialisation", "type": "text", "value": "Batting"}, {"key": "play_for", "label": "I play for", "type": "text", "value": "India"}, {"key": "statistics", "label": "My best statistics are", "type": "text", "value": "200*(70) vs England, 2023"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text", "value": "ICC WC 2023, ICC T20 WC 2022, ICC WTC 2021"}]}	1cb7a501-86fb-440d-943c-4ec6bf30342d	t	\N	\N	\N	\N	national
2024-03-04 05:28:07.230872+00	\N	\N	d164672d-10b7-499f-8090-d8a092e27f77	\N	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	087bfd5a-aab1-4cb9-b53d-6d7dd25d0610	f	\N	\N	\N	\N	\N
2024-03-04 05:27:46.134246+00	2024-03-04 05:29:11.536682+00	\N	4e0c5b79-69e9-4110-bc5e-95ee493cf7e2	\N	5854dc2c-7b3e-46b2-aa84-a51e448750be	{"sport_id": "bea60ffa-09b1-43ff-8ba4-7d6b1f1c8bf1", "more_info": "Testing......", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "performance"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text", "value": "RNSIT boxing league"}]}	bea60ffa-09b1-43ff-8ba4-7d6b1f1c8bf1	t	\N	\N	\N	\N	performance
2024-03-04 08:49:31.596026+00	\N	\N	3c64cdb4-8e21-4a29-ba98-8dad409507e1	\N	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	b09eebff-df78-42d5-852e-1cd2bc73c27a	t	\N	\N	\N	\N	\N
2024-03-06 08:11:47.597804+00	2024-03-06 08:19:12.187005+00	\N	eb0a9a37-dd54-4cef-9a89-ad9ca5f5037d	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"sport_id": "7d762a36-e20c-4b32-ab77-db9dcf6b02d9", "more_info": "Weekly do 7-10km ", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "recreational"}, {"key": "10cm_timing", "label": "10 km timing", "type": "text", "value": "1 hr"}, {"key": "full_marathon_timing", "label": "Best full marathon timing", "type": "text"}, {"key": "half_marathon_timing", "label": "Best half marathon timing", "type": "text", "value": "2 hr 20mins"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text", "value": "Tata half marathon"}]}	7d762a36-e20c-4b32-ab77-db9dcf6b02d9	t	\N	\N	\N	\N	recreational
2024-03-06 08:37:24.457482+00	\N	\N	cff42450-7412-4e48-ab7e-e6fa8eab5f77	\N	b9117901-96ad-4b87-b47a-2f9aa6575fb6	\N	42eef085-0868-4918-9f08-fa36c9c2f014	t	\N	\N	\N	\N	\N
2024-03-06 08:37:40.863417+00	\N	\N	d338882e-79b4-4875-9769-b0aac8d9d51f	\N	b9117901-96ad-4b87-b47a-2f9aa6575fb6	\N	82219344-6951-4fe6-a5a7-a550f3e589da	f	\N	\N	\N	\N	\N
2024-03-06 08:37:22.540745+00	2024-03-06 08:39:45.30579+00	\N	59eb412d-5397-4ec2-8ffa-572fc67948cc	\N	b9117901-96ad-4b87-b47a-2f9aa6575fb6	{"sport_id": "7d762a36-e20c-4b32-ab77-db9dcf6b02d9", "more_info": "Love running \\ud83d\\udc95", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "performance"}, {"key": "10cm_timing", "label": "10 km timing", "type": "text", "value": "1 hr"}, {"key": "full_marathon_timing", "label": "Best full marathon timing", "type": "text"}, {"key": "half_marathon_timing", "label": "Best half marathon timing", "type": "text", "value": "2hrs 5 mins"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text", "value": "Tata marathon, Amsterdam marathon"}]}	7d762a36-e20c-4b32-ab77-db9dcf6b02d9	t	\N	\N	\N	\N	performance
2024-05-16 08:05:29.695721+00	\N	\N	1399a6b8-7eb2-4eb9-bb62-39a8712db5a8	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	0b00a0f7-426a-4ea3-a044-aa847377b537	t	\N	\N	\N	\N	\N
2024-05-16 08:05:29.712384+00	\N	\N	ba9a79e3-784e-49b2-8935-e07e73e9c21c	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	0350f560-6c64-45aa-90cc-7d3e360e11f7	t	\N	\N	\N	\N	\N
2024-05-16 08:05:29.737156+00	\N	\N	a4f7ba3b-35dc-4f22-bb42-eb28e1380a5b	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	9396eca3-ef26-4b17-81f4-ea37e1d0bb69	t	\N	\N	\N	\N	\N
2024-05-16 08:05:41.081453+00	\N	\N	0c9f20ce-278b-401e-9d74-5d294f407f17	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	b09eebff-df78-42d5-852e-1cd2bc73c27a	f	\N	\N	\N	\N	\N
2024-05-16 08:05:41.099704+00	\N	\N	c55aa041-5b28-47a4-95e0-7439fd5553fc	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	49d153c4-bff5-4781-a878-5b9c6f6a85e3	f	\N	\N	\N	\N	\N
2024-05-16 12:23:51.518001+00	\N	\N	e4b4160b-7800-4715-90ec-a130098ca775	\N	cb086201-ede7-42fb-856e-d250a66d40b6	\N	0da5b280-e4e1-4ab2-9444-36d3445d9189	f	\N	\N	\N	\N	\N
2024-05-16 12:23:51.535934+00	\N	\N	3dcd107d-1dac-43ab-94d9-9e72abf3d34c	\N	cb086201-ede7-42fb-856e-d250a66d40b6	\N	ed74afb1-8408-4e2b-916a-b18705df8951	f	\N	\N	\N	\N	\N
2024-05-16 12:23:33.834523+00	2024-05-16 12:24:55.040101+00	\N	8ee7b2fb-0d9b-4cbf-97fe-4fa4f192e9bf	\N	cb086201-ede7-42fb-856e-d250a66d40b6	{"sport_id": "ebb85ec0-7148-4ec8-ab68-5a11f0c3b6e6", "more_info": "300km cycle tour", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "performance"}, {"key": "cycling_tours", "label": "Cycling tours", "type": "text", "value": "Malnad"}, {"key": "brm_Statistics", "label": "BRM statistics", "type": "text"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text"}]}	ebb85ec0-7148-4ec8-ab68-5a11f0c3b6e6	t	\N	\N	\N	\N	performance
2024-05-09 07:39:25.72162+00	2024-06-04 11:33:56.904852+00	\N	5a74d7ef-baa3-4b91-84b8-74c0a66eb4a9	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	ed74afb1-8408-4e2b-916a-b18705df8951	f	\N	\N	\N	2024-06-04 11:33:56.935139+00	\N
2024-03-06 08:11:50.710974+00	2024-06-04 13:53:32.783399+00	\N	c4447ff8-ffa4-46a7-a1cf-b789c53fd220	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	ed74afb1-8408-4e2b-916a-b18705df8951	t	\N	\N	2024-06-04 13:53:32.806185+00	\N	\N
2024-03-06 08:12:13.621095+00	2024-06-04 13:57:31.177979+00	\N	7debd36a-8ba3-46e7-8750-415ee2941b83	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"sport_id": "42eef085-0868-4918-9f08-fa36c9c2f014", "more_info": "Been trekking every year for the last couple of years", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "performance"}, {"key": "treks_undertaken", "label": "Treks undertaken", "type": "text", "value": "Everest base camp, kanamo peak, hampta, markha valley, kangyatse"}]}	42eef085-0868-4918-9f08-fa36c9c2f014	t	\N	\N	\N	\N	performance
2024-03-06 08:12:43.077829+00	2024-06-04 11:34:58.232455+00	\N	13fbf47b-2280-4c97-9dac-ffee5170f7bd	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	9396eca3-ef26-4b17-81f4-ea37e1d0bb69	f	\N	\N	\N	\N	\N
2024-05-16 08:05:29.720587+00	2024-06-06 10:25:39.224594+00	\N	660caefc-744c-41e0-b5cd-988751988bcc	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"sport_id": "1cb7a501-86fb-440d-943c-4ec6bf30342d", "more_info": "Open for Auction ", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "recreational"}, {"key": "specialisation", "label": "My specialisation", "type": "text", "value": "Off Spin"}, {"key": "play_for", "label": "I play for", "type": "text", "value": "RCB"}, {"key": "statistics", "label": "My best statistics are", "type": "text", "value": "4 wickets with 20 runs in 24 balls"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text", "value": "IPL"}]}	1cb7a501-86fb-440d-943c-4ec6bf30342d	t	\N	\N	\N	\N	recreational
2024-05-16 12:23:33.812142+00	2024-05-16 12:26:30.46974+00	\N	bdc831d3-96a8-4545-b27d-e79f0f42dacd	\N	cb086201-ede7-42fb-856e-d250a66d40b6	{"sport_id": "1cb7a501-86fb-440d-943c-4ec6bf30342d", "more_info": null, "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "competition"}, {"key": "specialisation", "label": "My specialisation", "type": "text", "value": "Batting"}, {"key": "play_for", "label": "I play for", "type": "text", "value": "College"}, {"key": "statistics", "label": "My best statistics are", "type": "text"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text"}]}	1cb7a501-86fb-440d-943c-4ec6bf30342d	t	\N	\N	\N	\N	competition
2024-06-03 13:44:29.563858+00	\N	\N	05310988-8cb6-47f2-afa5-08eadf0a6a27	\N	93f47453-622d-4f4c-9208-093193669900	\N	1cb7a501-86fb-440d-943c-4ec6bf30342d	t	\N	\N	\N	\N	\N
2024-06-03 13:44:29.602896+00	2024-06-03 13:45:24.450386+00	\N	f6dfb556-1197-446c-9fcb-cbd60777a007	\N	93f47453-622d-4f4c-9208-093193669900	\N	7d762a36-e20c-4b32-ab77-db9dcf6b02d9	t	\N	\N	2024-06-03 13:45:24.468623+00	\N	\N
2024-06-03 13:45:24.229302+00	2024-06-03 13:47:25.379521+00	\N	280f1065-0a67-4e7d-8dbe-66b902cabfa4	\N	93f47453-622d-4f4c-9208-093193669900	{"sport_id": "04f0e960-b7e5-4101-b1a3-9bde1b047a7a", "more_info": "Ansjfgnvc vgkffkfjd vgngfjfjr vgfnfsr vngfjdjdr cnffnddf", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "performance"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text", "value": "Inter school, inter club level, djggkvc, djfgjv, fjfgjg, fjgjfddd"}]}	04f0e960-b7e5-4101-b1a3-9bde1b047a7a	t	\N	\N	\N	\N	performance
2024-06-03 13:44:29.589347+00	2024-06-03 13:48:23.89551+00	\N	2f927ea5-6d2b-43b4-91c3-be0059d8141b	\N	93f47453-622d-4f4c-9208-093193669900	{"sport_id": "2cb7a501-86fb-440d-493c-4ec6bf39342d", "more_info": "Reached semifinals of inter college", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "competition"}, {"key": "position", "label": "The position i generally play in is", "type": "text", "value": "Mid field"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text", "value": "Inter collegiate football championship"}]}	2cb7a501-86fb-440d-493c-4ec6bf39342d	t	\N	\N	\N	\N	competition
2024-06-04 11:34:58.20524+00	\N	\N	306c3384-8d0c-4a06-b8a7-e04d496e4af6	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	ebb85ec0-7148-4ec8-ab68-5a11f0c3b6e6	f	\N	\N	\N	\N	\N
2024-06-04 13:54:00.270712+00	\N	\N	9dec1aa1-0269-4eb5-ad1a-24166a24fdda	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	04f0e960-b7e5-4101-b1a3-9bde1b047a7a	t	\N	\N	\N	\N	\N
2024-06-04 13:54:00.296494+00	\N	\N	bf5cd2bd-a592-4997-b390-d45c114ab60d	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	0da5b280-e4e1-4ab2-9444-36d3445d9189	t	\N	\N	\N	\N	\N
2024-03-06 08:11:49.51324+00	2024-06-04 13:54:00.636855+00	2024-06-04 13:54:00.666442+00	8a35ad75-48d7-448b-a9fb-b03b9b1ed03d	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	{"sport_id": "82219344-6951-4fe6-a5a7-a550f3e589da", "more_info": "Great game, recreational player now", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "performance"}, {"key": "competitions", "label": "Competitions taken part in", "type": "text", "value": "Played in state league under 18"}]}	82219344-6951-4fe6-a5a7-a550f3e589da	t	\N	\N	2024-06-04 13:54:00.666409+00	\N	performance
2024-06-04 14:29:29.13941+00	\N	\N	a2f3b2e4-8b5c-4a4b-ad23-dbf8bcf446c2	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	bea60ffa-09b1-43ff-8ba4-7d6b1f1c8bf1	t	\N	\N	\N	\N	\N
2024-06-05 11:38:51.822512+00	\N	\N	1b4e6ad8-195b-446f-aed0-fb82f66bdd20	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	3f714bfd-8070-479a-be3a-edfe775c922f	t	\N	\N	\N	\N	\N
2024-06-05 11:38:51.857749+00	\N	\N	677404ea-363e-4eed-bd1d-7a6692885069	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	383590e2-ddef-4fde-b98b-01de74565e36	t	\N	\N	\N	\N	\N
2024-06-05 11:38:51.871379+00	\N	\N	1c7c6141-1898-42fe-8987-4bbf9495b9a4	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	a9b3d182-142e-4486-913d-3e380eb20dbe	t	\N	\N	\N	\N	\N
2024-06-05 11:38:51.890684+00	\N	\N	807e627e-a1b8-45e2-b932-d444bbb12fce	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	ae306c50-b332-492e-95a4-23823ba0ed27	t	\N	\N	\N	\N	\N
2024-06-05 11:38:51.901541+00	\N	\N	856a0ad9-b41b-4ec3-a358-88662e4fc606	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	9709922d-3bc5-43de-9c5b-cd4711d058eb	t	\N	\N	\N	\N	\N
2024-06-05 11:38:51.913391+00	\N	\N	a0075d0a-d5a2-480f-928d-2451e1e6a7d1	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	795ec07a-bc29-49ad-9a65-bfd5e821aa68	t	\N	\N	\N	\N	\N
2024-06-05 11:38:51.926551+00	\N	\N	b19928ed-b7bf-4f49-9995-3aa48043656d	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	378c4114-10e7-4c74-bd49-d40b83368dfb	t	\N	\N	\N	\N	\N
2024-06-05 11:38:51.937821+00	\N	\N	f92e69f3-1392-4d4a-8f7c-d450336ee756	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	b09eebff-df78-42d5-852e-1cd2bc73c27a	t	\N	\N	\N	\N	\N
2024-06-05 11:39:05.153346+00	\N	\N	875b1a0a-945c-4406-9079-64a6ff7a0960	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	4a958437-1d77-4702-8ef1-341df8a235f0	f	\N	\N	\N	\N	\N
2024-06-05 11:39:05.179682+00	\N	\N	7b45f41a-e833-443d-8a25-efdbe2d58cdd	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	0b00a0f7-426a-4ea3-a044-aa847377b537	f	\N	\N	\N	\N	\N
2024-06-05 11:39:05.191464+00	\N	\N	af62a5bf-8f2f-4739-af2b-bc3ed8433160	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	\N	04f0e960-b7e5-4101-b1a3-9bde1b047a7a	f	\N	\N	\N	\N	\N
2024-06-05 11:38:51.949794+00	2024-06-05 11:39:59.709536+00	\N	81ef3944-5ca2-468e-a7d1-670f995d94ce	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	{"sport_id": "17d5bcf4-1687-4b09-817a-a9d97654af3f", "more_info": "N/A", "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "recreational"}, {"key": "branch", "label": "Branch of yoga", "type": "text", "value": "Yoga branch"}, {"key": "courses", "label": "Courses done", "type": "text", "value": "None"}, {"key": "teaching_profile", "label": "Teaching profile", "type": "text", "value": "Xyz profile"}]}	17d5bcf4-1687-4b09-817a-a9d97654af3f	t	\N	\N	\N	\N	recreational
2024-06-05 12:02:53.5637+00	\N	\N	01455c56-406b-483e-9d14-585254cd4092	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	3f714bfd-8070-479a-be3a-edfe775c922f	t	\N	\N	\N	\N	\N
2024-06-05 12:02:53.592965+00	\N	\N	5e9b067f-4902-4627-96c6-3286dd27c619	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	\N	a305cb26-80fd-4c77-bef6-26ccefe3172f	t	\N	\N	\N	\N	\N
2024-05-16 08:05:29.728845+00	2024-06-14 08:03:30.985812+00	\N	d056bf5f-bd1b-487e-a9f3-18b0baa7aa80	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	{"sport_id": "ed74afb1-8408-4e2b-916a-b18705df8951", "more_info": null, "parameters": [{"key": "playing_level", "label": "My playing level", "options": [{"id": "recreational", "name": "Recreational"}, {"id": "performance", "name": "Performance"}, {"id": "competition", "name": "Competition"}, {"id": "national", "name": "National"}, {"id": "worldchampion", "name": "World Champion"}], "type": "text", "value": "worldchampion"}, {"key": "favorite_routine", "label": "My favorite routine", "type": "text"}]}	ed74afb1-8408-4e2b-916a-b18705df8951	t	\N	\N	\N	\N	worldchampion
\.


--
-- Data for Name: terms_conditions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.terms_conditions (created_at, update_at, deleted_at, id, section, terms_condition) FROM stdin;
2022-07-25 05:30:36.870985+00	2022-10-18 05:03:45.864506+00	\N	eed64b00-7285-44d0-a5d6-c4562a04db36	primary_sport	terms and conditions for primaryyyyyyyy test 
2022-07-25 07:04:28.541868+00	2022-10-18 05:05:40.380382+00	\N	caf3c862-d87b-4138-b7c8-fe1ad44081c0	my_groups	terms and conditions for grpppp test
2022-07-25 06:39:29.529633+00	2022-10-18 05:06:02.774682+00	\N	e9358037-f684-4817-bc0f-c56884546cab	featured_media	terms and conditions for featuredMedia test 1
2022-07-25 05:30:36.870985+00	2022-10-18 06:22:54.772219+00	\N	e5ab1b1e-aeef-490b-b5c4-dcb59dce1a24	sport_level	terms and conditions oct 18
2022-07-25 07:05:42.701844+00	2022-10-19 07:50:50.953208+00	\N	1c7c64e6-f80a-47b9-82d6-1c9eb2208efc	my_expertise_background	terms and conditions for experts testing check oct 19 expertise
2022-07-25 07:16:38.059881+00	2022-10-19 07:59:32.441342+00	\N	213827f9-2818-427d-9777-daa06c03a216	customer_testimonials	terms and conditions for customer_testimonials testing check oct 19
2022-07-25 05:30:36.870985+00	2022-10-19 07:59:47.172217+00	\N	465c7cfd-0b40-4a91-ac62-4c2792d52c52	friends	terms and conditions frndzzzz oct19 afternoon
2022-09-02 06:30:03.096157+00	2022-09-26 07:04:54.012331+00	\N	f6592971-59cb-4501-a4d9-e7dc8fa7a093	featured_media_programs	How is this description ? test
2022-07-25 07:03:22.016365+00	2022-09-26 07:38:11.222681+00	\N	52b58475-1456-4b79-ad7c-71cb41339fbc	secondary_sports	terms and conditions for secondary sports
2022-07-22 11:29:33.253579+00	2022-09-26 09:38:46.327788+00	\N	27a82379-f570-432b-967a-98c57782bc42	hall_of_fame	terms and conditions for secondary sports bbbbbbbb
2022-09-02 05:58:50.362508+00	2024-02-07 10:23:57.29772+00	\N	b4056c27-4b4e-4e18-a5d7-3e37759c6f3e	adrenaln_fitness_level	terms and conditions for adrenaln_fitness_level testing 26 oct 19test
\.


--
-- Data for Name: user_activity_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_activity_mapping (created_at, update_at, deleted_at, id, user_id, activity_table_id) FROM stdin;
\.


--
-- Data for Name: user_bettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_bettings (created_at, update_at, deleted_at, id, result_status, user_id, post_id, betting_status) FROM stdin;
2024-03-06 08:58:24.978385+00	\N	\N	d67f865d-2e57-41d3-9b7f-e8327ee421b6		b9117901-96ad-4b87-b47a-2f9aa6575fb6	fb3e314e-540f-4fd9-8ffa-68dccb36ba7e	invited
2024-05-16 10:49:52.394507+00	\N	\N	262374ee-1514-4fc8-9158-a545a9e27a5e		05f59f52-18be-45d4-bf8b-39640b7b2fab	1a3a842d-da04-4165-b692-5182269f3761	invited
2024-05-16 12:10:57.257291+00	\N	\N	ebff6eec-486c-4e06-b43a-085be31623e9		b9117901-96ad-4b87-b47a-2f9aa6575fb6	e6278930-898c-4ba8-a343-a9a41374337a	invited
2024-05-16 12:10:57.263545+00	2024-05-16 12:16:19.79371+00	\N	890e76a0-1385-42b0-8c7d-15ebb446d7b1		cb086201-ede7-42fb-856e-d250a66d40b6	e6278930-898c-4ba8-a343-a9a41374337a	confirmed
2024-06-05 12:38:02.262515+00	2024-06-05 12:38:20.121741+00	\N	e0294916-29c0-4504-a39b-baee8cd685f4		9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	473be009-bc91-4f11-979d-06896b1182b3	confirmed
2024-06-08 07:32:25.75797+00	2024-06-08 07:33:43.998532+00	\N	1ec9ad1c-9bf5-4f65-b914-84bfb252dfe3		cb086201-ede7-42fb-856e-d250a66d40b6	1e6f2bbc-0041-4a73-b49f-345378421f77	confirmed
2024-06-11 13:00:06.623066+00	\N	\N	e929af52-bf92-42e2-9db3-7c32b7efb537		f039da77-98d1-4ef2-bb2a-72faaec7c494	0b16c806-8055-4bd7-a0d6-e4000f99e1b0	invited
2024-06-14 08:43:43.730136+00	\N	\N	cf661666-72ac-44a7-8cda-3ee18b1cce61		93f47453-622d-4f4c-9208-093193669900	9e0a5ae0-d413-40cb-92a8-231f7cb4a7d0	invited
\.


--
-- Data for Name: user_bucket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_bucket (created_at, update_at, deleted_at, id, bucket_key, is_primary, user_id) FROM stdin;
\.


--
-- Data for Name: user_device; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_device (created_at, update_at, deleted_at, id, user_id, device_id, session_code, status) FROM stdin;
2024-02-06 07:39:41.769297+00	2024-02-06 07:58:10.361102+00	\N	15059228-48ff-4665-883e-07dbae460615	b1201fa1-c4e8-4784-bb43-0cc33ed7cc83	a767785f-1936-4bb8-b0cb-9d5fb016128c	58457434	ACTIVE
2024-02-06 08:17:44.217736+00	2024-02-07 06:49:03.854879+00	\N	e108b3ae-d308-44d0-893e-be881316ec9b	b1201fa1-c4e8-4784-bb43-0cc33ed7cc83	0de26c05-b810-4093-b5df-5503f3b7bbe2	97420410	ACTIVE
2024-02-07 06:38:20.239017+00	2024-02-07 10:20:55.227699+00	\N	501bc109-7f48-4c2a-84e3-8c976ca838a6	52f05d90-e8fe-42f1-941e-fb9df0db82b5	0de26c05-b810-4093-b5df-5503f3b7bbe2	36108996	ACTIVE
2024-03-04 10:27:56.93432+00	2024-03-04 10:29:19.690583+00	\N	9b175dd7-acd5-4435-bfb1-5fd4cae36805	b1201fa1-c4e8-4784-bb43-0cc33ed7cc83	6b986cf9-df69-4aca-b11d-845c94b5c273	03543444	ACTIVE
2024-03-04 10:30:52.414845+00	\N	\N	41ae7200-617d-463a-8011-92c3f4ac25e9	561becf6-5df8-453c-9d6d-a9eee9ddd044	6b986cf9-df69-4aca-b11d-845c94b5c273	26509174	ACTIVE
2024-03-04 10:41:48.954518+00	\N	\N	c9821e35-3919-43e6-85e7-99defaf345c9	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	6b986cf9-df69-4aca-b11d-845c94b5c273	81066210	ACTIVE
2024-03-11 11:46:10.710824+00	2024-03-11 11:46:17.036942+00	\N	89f05ae9-7564-4bf3-8b23-a64564af3bbe	7c28a321-9ae7-4923-94a8-070feb58955d	d52bd6a8-3380-4398-a0b4-95bc6a8daa8c	13633658	ACTIVE
2024-03-04 10:29:04.800241+00	2024-03-04 10:49:13.458024+00	\N	27dcf174-2c4d-4fac-90be-9fcf97896a0e	52f05d90-e8fe-42f1-941e-fb9df0db82b5	6b986cf9-df69-4aca-b11d-845c94b5c273	56207848	ACTIVE
2024-03-04 10:59:28.238129+00	2024-03-04 16:03:31.155647+00	\N	4f73a766-c349-4ede-b9fa-6ecdca19628c	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	66594f3e-07d4-4fc8-ab5b-397ae322df9f	87544518	ACTIVE
2024-03-11 11:52:57.180076+00	\N	\N	53ccfd20-6ae5-423a-823f-52bc5f9bcf5d	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	e672c843-476e-4715-9890-334899d0d89b	99979188	ACTIVE
2024-03-05 10:04:08.801681+00	\N	\N	4d164813-22bb-40f1-8ab2-d296d798c9a6	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	ed66d541-3164-46ee-af0d-c8bcf7f6c887	07696876	ACTIVE
2024-03-05 10:35:04.522776+00	\N	\N	0c916cdc-e676-4e38-a11a-bc05e23a4454	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	18475864-a367-4cfd-9feb-685c45ffeada	97952029	ACTIVE
2024-03-05 10:36:11.035596+00	\N	\N	aecbfa9f-3c52-4fbd-b82d-877124eee97a	264af9bd-7704-46eb-8970-e80ebb0ba43a	18475864-a367-4cfd-9feb-685c45ffeada	96221655	ACTIVE
2024-03-05 10:43:07.801292+00	\N	\N	c895ae22-d94a-4a75-b262-a6c505be2913	52f05d90-e8fe-42f1-941e-fb9df0db82b5	fd832df7-c2ae-4a92-84f5-a4249b578427	82763846	ACTIVE
2024-03-05 06:05:34.7231+00	2024-03-11 12:23:44.105992+00	\N	a23f1606-4643-4cd3-9cf1-f90a3d2fa1c7	5854dc2c-7b3e-46b2-aa84-a51e448750be	85a21825-b4f6-4ed3-b19e-96872da93d5e	15267343	ACTIVE
2024-03-11 12:37:17.842133+00	\N	\N	f630899f-e84d-472b-8532-2d1d44a05968	264af9bd-7704-46eb-8970-e80ebb0ba43a	fd832df7-c2ae-4a92-84f5-a4249b578427	31083080	ACTIVE
2024-02-22 09:04:29.451717+00	2024-05-04 12:53:53.479529+00	\N	d38f4c28-c550-4258-876b-74f956d110ba	5854dc2c-7b3e-46b2-aa84-a51e448750be	33e76c99-c611-434a-ba70-aa2756bf89ae	46465432	ACTIVE
2024-02-14 16:28:09.004689+00	2024-04-24 17:45:50.638436+00	\N	030045eb-0edf-41f0-b69a-12af12c08290	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	a767785f-1936-4bb8-b0cb-9d5fb016128c	67572709	ACTIVE
2024-06-05 11:07:57.896055+00	2024-06-05 11:09:16.070571+00	\N	38501f1d-8549-4b33-991e-f2aa22f96a8f	a03f5eb5-5ba0-4026-a7db-fe0288129745	4777b9fd-6813-4e3a-9f75-266ce94461cb	52234078	ACTIVE
2024-04-24 18:06:14.332563+00	2024-04-24 18:06:33.776963+00	\N	ccbcd44f-d6ce-428a-bf47-7095febf17fe	7a142b2e-2e56-45c4-82ed-c1e8cd30b4c3	75f7333d-b925-4ccd-846f-a0af2eb58dc1	61539104	ACTIVE
2024-04-25 19:08:02.967869+00	\N	\N	f23917f5-3428-4505-935a-25cd70483793	7a142b2e-2e56-45c4-82ed-c1e8cd30b4c3	876a7147-670d-4618-a24e-495a76a3a9eb	95123083	ACTIVE
2024-04-29 10:43:07.209364+00	2024-05-04 13:19:36.632988+00	\N	96dd8ca9-02f1-4bac-acf1-baa3c3985f66	05f59f52-18be-45d4-bf8b-39640b7b2fab	1ba008ca-34a8-4c78-b6aa-790a54fb0f6c	05214564	ACTIVE
2024-03-05 10:46:50.29129+00	2024-05-04 15:01:14.657384+00	\N	5a57b709-e47d-4dca-93af-dfdecdb77d45	9febfa40-04ea-4915-b2f9-c0cf97b047a6	fd832df7-c2ae-4a92-84f5-a4249b578427	42290439	ACTIVE
2024-06-05 11:08:50.715731+00	2024-06-05 11:10:30.970443+00	\N	e8ebcafa-df52-468e-95c3-b94b5e56e115	314d22eb-7614-4783-9b76-248ac08cf1bf	f6eb5310-ca75-4184-b2ae-1211f5f3b8b7	76266855	ACTIVE
2024-04-26 05:25:33.26386+00	2024-04-26 05:48:16.747544+00	\N	a593e501-5cda-4910-9b60-936b54d71fb8	7a142b2e-2e56-45c4-82ed-c1e8cd30b4c3	b7637a21-a0de-42d4-bfb5-607be86f9100	65939714	ACTIVE
2024-06-11 12:37:51.709768+00	2024-06-11 12:38:12.266585+00	\N	5744dc16-9c0f-48fc-8221-2907171763bc	1a833bfa-6de1-44a3-96e4-8ba4a59255ab	f6eb5310-ca75-4184-b2ae-1211f5f3b8b7	09648610	ACTIVE
2024-06-03 13:18:07.710656+00	2024-06-04 11:16:35.820474+00	\N	f9e6607f-d1f9-432e-94ba-46e056b3c84d	93f47453-622d-4f4c-9208-093193669900	7cab7e65-b443-44f1-ba4d-ca22c53d132c	98136825	ACTIVE
2024-03-11 12:15:41.926515+00	2024-05-06 11:17:05.125851+00	\N	fba8870f-f463-47b1-ae6a-3ef9a0b1f968	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	fd832df7-c2ae-4a92-84f5-a4249b578427	72139858	ACTIVE
2024-06-05 11:12:01.326294+00	2024-06-05 11:12:51.716416+00	\N	a1b51ffc-39b1-4bee-a9ac-6380c5f3bbec	accd4c2d-17f1-4d48-839a-dd9367a798f6	da7ac043-4fec-4963-a4e3-6143d21bc829	40352636	ACTIVE
2024-05-02 07:16:28.745425+00	2024-05-06 11:41:09.095765+00	\N	6de08bc6-7035-4cdd-9a42-f2f69559b243	f039da77-98d1-4ef2-bb2a-72faaec7c494	367ab04b-4a36-45a0-903e-b9365bc092f1	80883813	ACTIVE
2024-04-27 05:08:20.601017+00	2024-04-27 05:08:43.486473+00	\N	0ec0fab4-8cda-443a-863d-e483e7382a74	1a6b27ea-7a18-4a8e-8056-db92f7f9fa56	62bba3fe-bf8c-45b0-a739-72b3ccd69586	16866868	ACTIVE
2024-06-11 13:20:47.071032+00	\N	\N	347f4038-428b-4b42-945a-50909596d681	9febfa40-04ea-4915-b2f9-c0cf97b047a6	2e5ea31e-bd18-4328-af1d-c8c27afffbe9	64356527	ACTIVE
2024-05-16 11:32:18.546276+00	2024-05-16 12:58:38.197201+00	\N	d16a8ac0-b940-45f1-b9c3-57e551289636	cb086201-ede7-42fb-856e-d250a66d40b6	12ae852f-282c-40d0-9655-9e5066388c52	83630574	ACTIVE
2024-05-09 07:55:36.828516+00	\N	\N	47e0995e-1632-4b0b-a676-b62ad19f43b2	f039da77-98d1-4ef2-bb2a-72faaec7c494	d3301f1f-0c07-4c21-a2cb-6dae6c040f81	73851297	ACTIVE
2024-04-26 05:49:15.115464+00	2024-04-29 11:20:05.725642+00	\N	0864419d-c890-46f7-9d8f-642520e6f9a7	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	b7637a21-a0de-42d4-bfb5-607be86f9100	44002137	ACTIVE
2024-04-29 11:20:38.035203+00	\N	\N	a1681cac-f4ca-4fd6-bfe2-3792253d3f32	05f59f52-18be-45d4-bf8b-39640b7b2fab	b7637a21-a0de-42d4-bfb5-607be86f9100	36727291	ACTIVE
2024-06-14 11:20:00.239388+00	2024-06-18 08:41:20.085476+00	\N	5d92c165-55d5-435d-90ec-6ebaa2c66805	9febfa40-04ea-4915-b2f9-c0cf97b047a6	fd39497f-6d69-415e-be4f-989969a79a90	03511118	ACTIVE
2024-06-14 11:36:23.963105+00	2024-06-14 11:43:53.96862+00	\N	fcfd9d0c-8c99-45a3-b019-9810d5a3d29b	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	fd39497f-6d69-415e-be4f-989969a79a90	39329852	ACTIVE
2024-05-06 11:48:58.657625+00	2024-05-07 08:28:52.790943+00	\N	a7f3056b-ca07-4b78-91cf-364c0b9239d0	37082d82-a174-4122-82f3-c6c022d8c0b5	d409c5f2-f34c-4567-8bdb-b0d67244a51d	24613749	ACTIVE
2024-05-16 12:49:17.084709+00	2024-05-16 13:09:44.921544+00	\N	ff347f29-5fbd-4837-ae48-c66b829d9a03	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	12ae852f-282c-40d0-9655-9e5066388c52	83512888	ACTIVE
2024-04-30 07:01:45.243652+00	\N	\N	1ecbe91b-1212-4934-932a-68f9947a71f3	f039da77-98d1-4ef2-bb2a-72faaec7c494	1ba008ca-34a8-4c78-b6aa-790a54fb0f6c	05599754	ACTIVE
2024-05-02 10:06:27.264994+00	\N	\N	43b2751b-ef0d-4533-af9d-a8e2e2632ce7	5854dc2c-7b3e-46b2-aa84-a51e448750be	fed02036-ab0b-4f34-95ed-d3120327ea54	93249352	ACTIVE
2024-05-14 07:17:06.773927+00	2024-05-16 13:10:10.462661+00	\N	209d34a6-a44d-4ad1-891b-d8be34dd8d47	f039da77-98d1-4ef2-bb2a-72faaec7c494	12ae852f-282c-40d0-9655-9e5066388c52	98362544	ACTIVE
2024-03-07 06:15:14.32025+00	2024-05-10 11:47:50.77605+00	\N	2e622b43-984c-44e1-b6ca-1c1403ff25e9	264af9bd-7704-46eb-8970-e80ebb0ba43a	d3301f1f-0c07-4c21-a2cb-6dae6c040f81	00151565	ACTIVE
2024-05-09 18:46:44.755045+00	2024-05-14 12:56:09.609345+00	\N	5597952c-d839-40bf-aa2e-e1e27677390b	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	5a26a74c-171d-4652-84b2-174406a27ac2	87456107	ACTIVE
2024-03-07 10:07:11.334685+00	2024-05-10 11:52:41.266821+00	\N	dd0450b0-e9c8-4e5d-9f2d-79e01215ee68	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	d3301f1f-0c07-4c21-a2cb-6dae6c040f81	69992534	ACTIVE
2024-06-20 03:01:54.269983+00	2024-06-20 03:02:30.243118+00	\N	409273c9-2185-4424-80fa-fab684c9f3a5	c6f51f15-2069-43a7-a445-11681da25fab	2a033173-7137-4571-a96f-4c23523a5790	54296944	ACTIVE
2024-03-06 08:31:28.546156+00	2024-05-13 08:49:50.783498+00	\N	409b8ff5-4713-4b92-a0d2-902ccf10a43c	b9117901-96ad-4b87-b47a-2f9aa6575fb6	7cab7e65-b443-44f1-ba4d-ca22c53d132c	41015887	ACTIVE
2024-03-07 10:34:52.004752+00	2024-05-13 08:40:01.045398+00	\N	09771908-ff11-46f0-8ad2-1c0238daea0a	9febfa40-04ea-4915-b2f9-c0cf97b047a6	d3301f1f-0c07-4c21-a2cb-6dae6c040f81	13211743	ACTIVE
2024-04-26 04:35:22.558903+00	2024-06-14 07:40:14.38626+00	\N	e1558894-90b7-4455-868a-124027193cdf	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	3ba87308-b5f5-48cf-b15b-60abec3b0dd3	76319829	ACTIVE
2024-05-08 08:53:59.316413+00	2024-05-15 12:18:35.447017+00	\N	31cddaad-d125-426c-9cb7-86266a9dbba0	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	2160c654-575a-4f69-bb27-dc6b38bbb308	58498028	ACTIVE
2024-05-16 10:56:01.388125+00	2024-05-16 11:53:24.818309+00	\N	c5bb4a23-250f-4efd-b362-bfefb1f53a80	264af9bd-7704-46eb-8970-e80ebb0ba43a	9451b0cc-d0f3-4588-8002-b4807b8b2e52	63635510	ACTIVE
2024-06-14 11:30:44.124848+00	2024-06-14 12:44:34.281207+00	\N	c849238f-99bb-4bf8-8607-ceb5fb0b304c	264af9bd-7704-46eb-8970-e80ebb0ba43a	fd39497f-6d69-415e-be4f-989969a79a90	70036835	ACTIVE
2024-05-10 07:44:10.483974+00	2024-05-16 10:53:05.181991+00	\N	a96328c5-2647-4889-9432-8baefe6cecaf	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	9451b0cc-d0f3-4588-8002-b4807b8b2e52	10296063	ACTIVE
2024-06-08 07:33:28.844043+00	2024-06-08 07:33:56.591763+00	\N	a38ab8bd-1396-40dc-9fdf-6990daa2371c	cb086201-ede7-42fb-856e-d250a66d40b6	7cab7e65-b443-44f1-ba4d-ca22c53d132c	61465506	ACTIVE
2024-05-10 07:45:18.064439+00	2024-06-05 10:37:56.459919+00	\N	786661d0-12ba-4c49-9c9d-cf6dd39e39e8	9febfa40-04ea-4915-b2f9-c0cf97b047a6	9451b0cc-d0f3-4588-8002-b4807b8b2e52	72778673	ACTIVE
2024-05-10 10:02:19.509366+00	2024-05-16 12:01:42.584761+00	\N	39d302cf-f67f-4633-949b-7871f821eac2	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	606e09a4-5f35-410d-92f8-3c636861c740	14579481	ACTIVE
2024-03-06 07:28:40.200812+00	2024-06-08 07:34:16.061285+00	\N	65e9bb4d-4f60-48e3-b575-6bf89887723f	f039da77-98d1-4ef2-bb2a-72faaec7c494	7cab7e65-b443-44f1-ba4d-ca22c53d132c	34645126	ACTIVE
2024-06-15 15:05:30.346129+00	\N	\N	59916d4c-452a-4140-8ca3-54ea190330ce	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	7399e3dd-9dec-4d1f-9e54-a7571a809cdf	78264731	ACTIVE
2024-06-20 08:33:15.078884+00	2024-06-20 08:33:33.970772+00	\N	d0b93272-6a9e-4085-a758-c0919961afc3	82beae83-ee98-4f38-b3de-d27ee137ef27	05a82e84-8d5f-4e7e-b32a-b621e63728ec	46382987	ACTIVE
2024-06-21 12:49:51.647701+00	2024-06-21 12:51:41.317385+00	\N	b32955c3-62c2-40e0-8ce9-e7d70c207979	b7201ebc-91ab-4fa3-b153-1a4d0a76bc4c	b48bbf9d-e119-4a57-a8d8-46f11f06a13c	48460328	ACTIVE
2024-02-29 09:52:17.410612+00	2024-06-18 06:46:57.395326+00	\N	82b38634-9ba3-471d-b857-15502c5ec2d4	7c28a321-9ae7-4923-94a8-070feb58955d	33e76c99-c611-434a-ba70-aa2756bf89ae	63369425	ACTIVE
2024-06-19 10:44:39.754909+00	2024-06-25 12:28:34.719191+00	\N	14894f94-5424-41c3-9104-61a6378fc064	4e82af3f-b695-49e9-8c83-b234ce459de5	879e4e5b-ab6f-42b8-9ae3-4ae4aeb24069	40691910	ACTIVE
\.


--
-- Data for Name: user_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_group (created_at, update_at, deleted_at, id, group_name, description, sport_type, city, user_id, sport_master_id, visibility, image, topic) FROM stdin;
2024-02-29 09:56:38.082727+00	2024-02-29 09:56:39.401687+00	\N	24fa16b4-f0cf-4eeb-a10f-868e32061ec7	RNSIT 11		Cricket	Bangalore,  India	5854dc2c-7b3e-46b2-aa84-a51e448750be	\N	all	{"type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/afaa8cc8-8aa8-4f83-9af0-e0b6a3e0b799.jpg", "media_id": "8f807901-3f26-484c-9448-ffa6bc995178"}	\N
2024-05-16 12:30:48.345235+00	\N	\N	e4c2c0b3-5678-49a3-a03e-417a75d6b77f	Dd 77 group	Yemalur running group	Running	Bangalore,  India	cb086201-ede7-42fb-856e-d250a66d40b6	\N	all	\N	\N
2024-06-05 09:27:19.514111+00	2024-06-05 09:28:21.626639+00	\N	fdda6a93-4672-4acd-8bd7-6ccb4ab0b60a	WK Running 		Running	Bangalore,  India	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	\N	all	\N	\N
\.


--
-- Data for Name: user_post_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_post_status (created_at, update_at, deleted_at, id, is_priority, is_approved, approved_at, post_id, approved_by) FROM stdin;
\.


--
-- Data for Name: user_topics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_topics (created_at, update_at, deleted_at, id, user_id, topic) FROM stdin;
\.


--
-- Data for Name: userprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userprofile (created_at, update_at, deleted_at, id, users_id, education_quelification, college_name, work_place, marital_status) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (created_at, update_at, deleted_at, id, first_name, middle_name, last_name, nickname, password, gender, email, phone, phone_code, date_of_birth, city, about_me, title, business_account, education_qualification, college_name, work_place, marital_status, can_follows, profile_image, new_email, new_phone, user_deleted_at) FROM stdin;
2024-02-06 07:39:41.736392+00	2024-02-06 07:58:03.555959+00	\N	b1201fa1-c4e8-4784-bb43-0cc33ed7cc83	Sreya	\N	\N	Sreya	$2b$12$80Xa4sfMy7TtQV42W2QBz.N0sY995xA3j6OtqzmxJ2r5dkP.WqtCW	\N	sreya@divum.in	7502083396	91	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-02-06 08:30:20.321831+00	\N	\N	bef17bfb-502e-4128-a704-961f20cf9e08	Harshit 2	\N	\N	Harshit 2	$2b$12$E6aaBgffQIAoFaSUtsmD3uP6AXlrZBxAt4Rtf2DUtugMqYXy6DFVa	\N	harshit.d+2@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-02-07 06:37:27.213669+00	\N	\N	52f05d90-e8fe-42f1-941e-fb9df0db82b5	Harshit	\N	\N	Harshit	$2b$12$ynjWdmYDkYgN9WoWrVXhcOQk4uxTUQghIFFEKlHOPK83vEMaKb2yO	\N	harshit.d+3@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-02-07 06:52:56.372433+00	\N	\N	a69c8750-ce98-4301-b867-bb90f067fb4f	Test	\N	\N	Test	$2b$12$LOGZhQ90OYAEZ.GrSUdLj.4c/4VZmF047ZMnLl2fl0PQ4gvnBKd8G	\N	harshit.d+4@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-02-14 16:28:08.931941+00	2024-02-14 18:24:37.517637+00	\N	83d7b8ae-4e9a-4202-98e2-ee9e4bb1e838	Kl Rahul	\N	\N	Rahul	$2b$12$RzOjac67yWlURniEEKg.e.XP9Udy0tKiAiLpMwRTtOfmYsJPnb23y	Male	newuser@example.com	1231231233	91	1984-10-07 00:00:00	Mumbai	\N	\N	t	ABC	Cricket Academy	ICC	Unmarried	t	{"type": "jpeg", "media_id": "351e3039-d316-474c-b7fb-c9fb5c218a1d", "path": "media/2549fa0d-2c2e-46e6-88e3-f0866a9ee08c/a2516e05-ecb2-446f-ae84-78be2e22c775.jpeg"}	\N	\N	\N
2024-02-06 08:28:55.949767+00	\N	\N	2d564ccf-06b6-4aa0-bafb-d5ba54e04265	harshit	\N	\N	harshit	$2b$12$RVG9ROdJNoF/UWnBqsBU1uaXqUe4ATb4xi1TLOaZs0O5a59vMFSSG	\N	harshit.d@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	t	\N	\N	\N	\N
2024-02-29 09:52:17.311405+00	2024-02-29 10:03:04.208545+00	\N	7c28a321-9ae7-4923-94a8-070feb58955d	Tushar	\N	\N	Dmrt	$2b$12$dckH1azJF4ywMslc6BLv7.hDK8n38gv..VDp3X7dnqG/AsEoodPzu	Male	imsmr17@gmail.com	8310251514	91	2002-03-09 00:00:00	Bangalore,  India	\N	\N	f	\N	\N	\N	\N	t	{"media_id": "5977f346-b4ae-49d5-9b5f-5838d625f90c", "media_type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/7c28a321-9ae7-4923-94a8-070feb58955d/fe5d62cc-cf18-4c85-ab3c-27ec92d2cf4f.jpg"}	\N	\N	\N
2024-02-22 09:04:29.364754+00	2024-03-04 08:48:25.618056+00	\N	5854dc2c-7b3e-46b2-aa84-a51e448750be	Subramanya M Rao	\N	\N	Smr17	$2b$12$zN3Oh1P4o4YKVC4vVkK7P.W7fbYnVoBPBKNGWD.R2WFCRxTQ6Qxm2	Male	subramanya11rao@gmail.com	8310251513	91	2002-02-04 00:00:00	Bangalore,  India	\N	\N	f	Bachelor	RNSIT 	webknot 	Single	t	{"media_id": "4a321c8b-7c90-465c-9020-32bf7bb3288b", "media_type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/5854dc2c-7b3e-46b2-aa84-a51e448750be/f83cdd77-6380-4cac-9767-56efbf3498e3.jpg"}	\N	\N	\N
2024-03-04 10:30:33.565403+00	\N	\N	561becf6-5df8-453c-9d6d-a9eee9ddd044	Harshit	\N	\N	Harshit	$2b$12$fCLmUe0//Gw5tdHwCfDrK.avgAtBoQ5jRmxa0tI0DfHi0OeyPL/C6	\N	harshit.d+5@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-03-04 10:37:44.123304+00	\N	\N	264af9bd-7704-46eb-8970-e80ebb0ba43a	Harshit reviewer	\N	\N	Harshit reviewer	$2b$12$DKD71M0FaDosaLOGiIA4gO28PjuWI9jzmDA5PWrkkTC7towvMr4.u	\N	harshit.d+r@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-03-04 10:39:16.991424+00	\N	\N	2ace9d26-fef1-4f5f-bb2e-dfa0d3fd17ae	Harshit publisher	\N	\N	Harshit publisher	$2b$12$XgwDQ95kGd7YvZ/Uepfga.2H2zB3ELHS102Z/xzO0zfUmhZPEnf..	\N	harshit.d+p@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-03-05 10:44:16.448967+00	\N	\N	92be044f-e924-47b8-a76d-918953067625	Harshit Admin	\N	\N	Harshit Admin	$2b$12$j5hzsgJ0BNWlrjHCd9WuYe5H6aqIXmMEGyR5bFkYe8DgbbqyBO1Mi	\N	harshit+a@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-03-05 10:45:05.112122+00	\N	\N	9febfa40-04ea-4915-b2f9-c0cf97b047a6	Harshit Admin	\N	\N	Harshit Admin	$2b$12$5ZjcyiHK7bnmKcCUlteOh.kH..M2EOVhSZ/Fyv8FJXCAlbe67i4ee	\N	harshit.d+a@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-03-06 08:31:24.961017+00	2024-03-06 08:32:59.777783+00	\N	b9117901-96ad-4b87-b47a-2f9aa6575fb6	Payal	\N	\N	Pal	$2b$12$OGPFvSro4UgcSFYZW0Q5ue2xzp5Kpt/johUOAL/E9yci9TdQ4z/0q	\N	palvora@gmail.com	9820520583	91	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-06-03 13:18:07.659183+00	2024-06-03 13:28:58.447674+00	\N	93f47453-622d-4f4c-9208-093193669900	Redmi	\N	\N	Red	$2b$12$qbjAmCDQ3dD.5TTco5zRseNdnEBBP/SrJeZBwfZbHkdsh/6F6Ftc6	Male	redmi@gmail.com	8971544295	91	2006-09-28 00:00:00	Bangalore,  India	\N	\N	f	\N	\N	\N	\N	f	{"media_id": "451b5f51-e74b-4793-a406-a455351c48f0", "media_type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/ca64e2b1-1024-4d1b-b9de-a5bef98ae2e8.jpg"}	\N	\N	\N
2024-04-24 18:06:14.298647+00	2024-04-24 18:07:10.573731+00	\N	7a142b2e-2e56-45c4-82ed-c1e8cd30b4c3	Abey	\N	\N	Abey	$2b$12$j.2B45P5s2TC9KTykyJ.iuZpc.9T5EDNEwN5Xrt5m.F7Xp8RwFZlu	Male	abeytms@gmail.com	8281787934	91	2013-04-24 00:00:00	Bangalore,  India	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-05-16 10:31:33.886104+00	\N	\N	f22d3c6d-738c-4bf1-a160-bb2eae667020	Shamanth	\N	\N	Shamanth	$2b$12$WRUAphyU2g5M/BxKyFU2k.tv.j.xETFTKYKuLvvTE4p8KOet/rT12	\N	shamanth.m@webknot.in	\N	\N	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-05-16 11:32:18.520979+00	2024-05-16 12:22:23.752237+00	\N	cb086201-ede7-42fb-856e-d250a66d40b6	Yohaan	\N	\N	Yonu	$2b$12$LbMXhu2t3z8LUzkJZfB/.erLLkpxCFbwpQCnbjwvilyDfA23XUhgG	\N	yohaan274@gmail.com	8217477623	91	2012-09-28 00:00:00	Bangalore,  India	\N	\N	f	Schooling	\N	\N	Single	f	{"media_id": "30ee18f0-04e6-40e9-9470-42073f9085fe", "media_type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/cb086201-ede7-42fb-856e-d250a66d40b6/fed816f8-9d38-4c9c-9505-2d79ee201ab4.jpg"}	\N	\N	\N
2024-04-27 05:08:20.57038+00	2024-04-27 05:09:22.53224+00	\N	1a6b27ea-7a18-4a8e-8056-db92f7f9fa56	Harsha	\N	\N	Har	$2b$12$/1gwRSiWUgWdx0zOZqFu9.X/Zj/PljpzlVQzkKKkCkF0nvaprWQIW	Male	hpharsha10@gmail.com	9986746047	91	1995-04-27 00:00:00	Bangalore,  India	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-04-29 10:43:07.184725+00	2024-04-29 10:43:30.038575+00	\N	05f59f52-18be-45d4-bf8b-39640b7b2fab	Vijay Anand	\N	\N	Vijay	$2b$12$5.WIwhCv4aopUjKDJztLceqYI9ShSixwxuFD/C9giu./ZVqEZktJu	\N	thisisvijayanand@gmail.com	9164563625	91	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-05-06 11:48:58.631444+00	2024-05-06 11:49:34.479777+00	\N	37082d82-a174-4122-82f3-c6c022d8c0b5	Sampreeth 	\N	\N	S	$2b$12$CrJNnL3Q4BmDR6.wUXyIuugN72PQXV5k7bzPth32/8xnJ89jLfXJq	\N	sampreeths2605@gmail.com	7795041317	91	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-05-08 08:53:59.28346+00	2024-05-08 08:54:39.576074+00	\N	1c0049f7-20be-4e4d-b2e6-92e55ca5b7b3	Varan	\N	\N	Varan	$2b$12$wkPP3S.AQsNAnc1eLkKBM.gtfIgBZm8jz/aPX2uHzj9r/G6jc8djq	\N	varan.bhalla@gmail.com	9146322795	91	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-05-16 12:49:17.050438+00	2024-05-16 12:50:20.279301+00	\N	bd8dd6ac-8b8e-40d4-af5d-6ed133dbbaf3	Kalpana	\N	\N	Kp	$2b$12$aeRctDgj2jfktZAATZ2yneeSwqLK5hQyMculXNUzQm6Jec.L5a50a	Female	kalpana@gmail.com	9322231090	91	1948-01-25 00:00:00	Mumbai,  India	\N	\N	t	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-06-05 11:12:01.272959+00	2024-06-05 11:36:01.446755+00	\N	accd4c2d-17f1-4d48-839a-dd9367a798f6	Sanket	\N	\N	Sanket 	$2b$12$hfsB76pLmapjwLXW3DcaMeKUTa8AYRG0FzRXyl7T1Ur3IIq2UarX6	\N	sanket@webknot.in	7020089230	91	\N	Pune,  India	\N	\N	f	\N	\N	\N	\N	t	\N	\N	\N	\N
2024-06-11 12:37:51.666049+00	2024-06-11 12:38:11.884444+00	\N	1a833bfa-6de1-44a3-96e4-8ba4a59255ab	Testing2	\N	\N	Test2	$2b$12$oZn6gIjK8wG3K41nA8w.X.M58Prwa8AfumCdkn/4dkx/.DUZ4WlIa	\N	tanotep906@lapeds.com	9999999999	91	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-06-05 11:07:57.839958+00	2024-06-05 11:11:34.321802+00	\N	a03f5eb5-5ba0-4026-a7db-fe0288129745	Tanishq	\N	\N	Pegasus	$2b$12$DjjwV8Lvs7OM4Fc8OISqneFTYnGoun.72sRFKfKzYItIxs2oKtBa.	Male	tanishq@webknot.in	9984429317	91	2002-09-25 00:00:00	Lucknow,  India	\N	\N	f	\N	\N	\N	\N	t	\N	\N	\N	\N
2024-06-05 11:08:50.659273+00	2024-06-05 11:12:17.641569+00	\N	314d22eb-7614-4783-9b76-248ac08cf1bf	Bacas	\N	\N	55260	$2b$12$oPW/M.byv.Q/mCDwUMIIdu9uWlsxY4yD3h5/nn0G/ssem4Dn3ZUSW	Male	bacas55260@hutov.com	9898989898	91	2000-11-03 00:00:00	Delhi,  India	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-03-06 07:28:36.612207+00	2024-06-05 12:00:13.520158+00	\N	f039da77-98d1-4ef2-bb2a-72faaec7c494	Ojas	\N	\N	Oj	$2b$12$3uomEs8mC6uz5BJl6gmMlOt4F5j/oYZmh0OuPLIe4Cbr9vzBtEX2q	\N	oparikh@hotmail.com	9820048283	91	\N	Lucknow,  India	\N	\N	f	\N	\N	\N	\N	f	{"media_id": "6e3df00e-0bf5-40ac-982b-eab05904be5c", "media_type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/f039da77-98d1-4ef2-bb2a-72faaec7c494/7d9cddc3-c832-4fe7-b57c-4d3ec1746310.jpg"}	\N	\N	\N
2024-04-26 04:35:22.532442+00	2024-06-14 12:46:42.282482+00	\N	9ffd4af9-7e36-4da3-9fd5-510db67e7ab0	Shamanth	\N	\N	Shammu	$2b$12$ZejH1XrWgGceOl5Ukp.qNOKn9lV1t2J3rzIl.Vf/QZmB6la4LwCTe	Male	shamanthshammu88@gmail.com	8095235440	91	1997-11-08 00:00:00	Bangalore,  India	\N	\N	t	Bachelor	Reva University 	\N	Single	f	{"media_id": "c13c396d-1fa5-4847-b53e-f2fa6370f275", "media_type": "image", "path": "https://adrenalnbucket.s3.amazonaws.com/9ffd4af9-7e36-4da3-9fd5-510db67e7ab0/e062e293-8f2c-4862-bcf7-488ffac153b9.jpg"}	\N	\N	\N
2024-06-19 10:44:39.708093+00	2024-06-19 10:45:08.265852+00	\N	4e82af3f-b695-49e9-8c83-b234ce459de5	Mukul	\N	\N	Mukul	$2b$12$pXFoi.wprPNrxymmr/x1YOFFxZEgQcBx/R0V8/yTHW6H3cpGHP4.m	\N	mukul@gmail.com	9425675844	91	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-06-20 03:01:54.229933+00	2024-06-20 03:03:28.329872+00	\N	c6f51f15-2069-43a7-a445-11681da25fab	Krishnan	\N	\N	K	$2b$12$UlSTV/uaepktzDx4WF5pb.vBbkstXwenEILIHgsTW3.6bmBiJUyVG	Male	krishnan.nr@webknot.in	8762985179	91	2024-01-01 00:00:00	Chennai,  India	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-06-20 08:33:15.04181+00	2024-06-20 08:34:12.531141+00	\N	82beae83-ee98-4f38-b3de-d27ee137ef27	Ritik Rajoria	\N	\N	Ritik	$2b$12$B/E/unt4OdycJguA5P.X9.qOvT5SOWKo438//MNe8UfD2SeLM/4Jm	Male	ritik.r@webknot.in	7891169900	91	2000-06-13 00:00:00	Jaipur,  India	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
2024-06-21 12:49:51.598493+00	2024-06-21 12:51:40.9381+00	\N	b7201ebc-91ab-4fa3-b153-1a4d0a76bc4c	Nikhil	\N	\N	Nik	$2b$12$jB39d/JsG4VrNtbpMSzOv.ejyeVj8TGLQnJks5B2NqATfdGFAhPxO	\N	nikhilbhalla196@gmail.com	9654041479	91	\N	\N	\N	\N	f	\N	\N	\N	\N	f	\N	\N	\N	\N
\.


--
-- Data for Name: verification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verification (created_at, update_at, deleted_at, id, payload, code, attempts, type) FROM stdin;
2024-02-06 07:34:57.902363+00	\N	\N	8f9af72b-18d5-47ce-99e8-af612a13becd	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "sreya@divum.in", "phone": "7502083396", "phone_code": "+91"}	9270	0	signup
2024-02-14 16:27:14.873789+00	\N	\N	68eb1a89-93e9-432d-8d24-d6646ad797d1	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	4966	0	signup
2024-02-14 16:29:30.527755+00	\N	\N	43d0bd9f-6662-4b54-9a14-238c31955132	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	79	0	login
2024-02-14 16:33:39.739794+00	\N	\N	6fbc0788-13fd-4aaf-ab3a-1aeddc67fb94	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	4076	0	login
2024-02-14 17:29:05.072797+00	\N	\N	a1eb609f-245f-45f5-b002-75276faea283	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	3818	0	login
2024-02-20 08:18:41.870624+00	\N	\N	17ebc8a9-2cd4-47c7-8c93-4d60c9e71d85	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	4454	0	login
2024-02-22 09:03:06.922249+00	\N	\N	ab4458da-47dc-4b98-beec-ab5fe152a652	{"device_verification_id": "33e76c99-c611-434a-ba70-aa2756bf89ae", "email": "subramanya11rao@gmail.com", "phone": "8310251513", "phone_code": "+91"}	8296	0	signup
2024-02-25 17:04:40.374982+00	\N	\N	fdf3b6df-8a50-4c5c-8f04-0cefc559f477	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	7810	0	login
2024-02-27 12:04:18.305965+00	\N	\N	a6b71151-dee1-417a-92dd-5c8165675fe4	{"device_verification_id": "33e76c99-c611-434a-ba70-aa2756bf89ae", "phone": "8310251513", "phone_code": "+91"}	5225	0	login
2024-02-29 09:52:13.491767+00	\N	\N	55dc4ae3-59b2-46db-be15-27e8d390688a	{"device_verification_id": "33e76c99-c611-434a-ba70-aa2756bf89ae", "email": "imsmr17@gmail.com", "phone": "8310251514", "phone_code": "+91"}	6900	0	signup
2024-02-29 09:54:51.344284+00	\N	\N	616ea339-cec3-422e-b803-639b3eaa3a6d	{"device_verification_id": "33e76c99-c611-434a-ba70-aa2756bf89ae", "phone": "8310251513", "phone_code": "+91"}	9884	0	login
2024-02-29 10:15:50.642431+00	\N	\N	3d3e9991-cdbb-4def-93ee-6dc13ae8d9f7	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	3396	0	login
2024-03-04 07:30:15.443889+00	\N	\N	4e2faa35-1aa3-4857-831f-fa89d29be881	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	9630	0	login
2024-03-04 07:30:55.553071+00	\N	\N	afec01ca-90ec-4c93-b87f-1a89399e0027	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	4326	0	login
2024-03-04 07:31:48.980432+00	\N	\N	6476a0b2-ba5a-4e31-a4b7-049053682ebc	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	614	0	login
2024-03-04 08:49:18.514299+00	\N	\N	0ad55b06-e2cc-4fd1-8ae7-567cb028de23	{"device_verification_id": "a767785f-1936-4bb8-b0cb-9d5fb016128c", "email": "newuser@example.com", "phone": "1231231233", "phone_code": "+91"}	3406	0	login
2024-03-06 07:28:27.881579+00	\N	\N	035337f1-147c-43a7-beda-79142eeb3d83	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "oparikh@hotmail.com", "phone": "9820048283", "phone_code": "+91"}	234	0	signup
2024-03-06 08:31:17.639602+00	\N	\N	ed481d59-e179-4a8f-94a9-efa70bea925d	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "palvora@gmail.com", "phone": "9820520583", "phone_code": "+91"}	3150	0	signup
2024-03-06 08:41:41.901897+00	\N	\N	dff87d72-cc05-422b-b287-9e90d920b685	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "oparikh@hotmail.com"}	5061	0	login
2024-03-06 09:01:35.499524+00	\N	\N	888cffc0-a25a-41c9-bd6c-695f8753110c	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "palvora@gmail.com"}	6578	0	login
2024-03-06 09:49:33.826588+00	\N	\N	f6d91155-b766-4231-8495-b5a03e07a140	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "palvora@gmail.com"}	6650	0	login
2024-03-06 09:52:23.885254+00	\N	\N	22709b0f-1dcf-4fbf-95e5-5809edbd6fc6	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "oparikh@hotmail.com"}	7480	0	login
2024-03-06 10:17:10.762209+00	\N	\N	3f2e81c7-2eb5-424f-90d7-04ca4bb487a6	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "palvora@gmail.com"}	2124	0	login
2024-03-07 10:18:28.60635+00	\N	\N	e91d5795-6c74-4ed5-ab61-79f605985745	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "oparikh@hotmail.com"}	9260	0	login
2024-03-07 10:20:09.693614+00	\N	\N	5399d092-551c-4efe-a341-1b3ee42991b4	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "palvora@gmail.com"}	1661	0	login
2024-03-07 10:44:42.382603+00	\N	\N	8a8e5b1c-58f4-4e66-ab5e-50253a55415a	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "oparikh@hotmail.com"}	8867	0	login
2024-04-24 18:05:39.92441+00	\N	\N	10bbd88b-1d7d-4375-9012-35fb7e3d51a8	{"device_verification_id": "75f7333d-b925-4ccd-846f-a0af2eb58dc1", "email": "abeytms@gmail.com", "phone": "8281787934", "phone_code": "+91"}	5167	0	signup
2024-04-25 19:07:57.463417+00	\N	\N	59953dab-b912-4ed5-be08-a04a0f5a75b3	{"device_verification_id": "876a7147-670d-4618-a24e-495a76a3a9eb", "phone": "8281787934", "phone_code": "+91"}	9815	0	login
2024-04-25 19:19:54.288406+00	\N	\N	4efdc730-7265-4867-9abb-95b05e9b1569	{"device_verification_id": "33e76c99-c611-434a-ba70-aa2756bf89ae", "email": "imsmr17@gmail.com"}	7740	0	login
2024-04-26 04:32:07.459511+00	\N	\N	fcd63856-a595-4cd8-b6ab-74975f2dfbe0	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "email": "shamanthshammu88@gmail.com", "phone": "8095235440", "phone_code": "+91"}	3160	0	signup
2024-04-26 04:33:10.448264+00	\N	\N	f30562b0-e35d-4311-913e-24cdeb57cd2d	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "email": "shamanthshammu88@gmail.com", "phone": "8095235440", "phone_code": "+91"}	4703	0	signup
2024-04-26 05:25:29.350816+00	\N	\N	fbe5641f-ad3b-480d-bdfa-7e6d029a44b4	{"device_verification_id": "b7637a21-a0de-42d4-bfb5-607be86f9100", "phone": "8281787934", "phone_code": "+91"}	7955	0	login
2024-04-26 05:49:11.251421+00	\N	\N	660c4e64-f631-445f-87fb-2ba31e3a2d8e	{"device_verification_id": "b7637a21-a0de-42d4-bfb5-607be86f9100", "phone": "8095235440", "phone_code": "+91"}	7087	0	login
2024-04-26 06:18:43.838869+00	\N	\N	9a0970f4-4b5e-4b35-bf2f-9d6038911195	{"device_verification_id": "b7637a21-a0de-42d4-bfb5-607be86f9100", "phone": "8095235440", "phone_code": "+91"}	8343	0	login
2024-04-26 06:53:52.029494+00	\N	\N	c80df4ac-0a05-4251-95ab-986d57f42ef1	{"device_verification_id": "b7637a21-a0de-42d4-bfb5-607be86f9100", "phone": "8095235440", "phone_code": "+91"}	8184	0	login
2024-04-27 05:08:16.096778+00	\N	\N	6543f166-14ac-4618-8899-9c31a2b6fb63	{"device_verification_id": "62bba3fe-bf8c-45b0-a739-72b3ccd69586", "email": "hpharsha10@gmail.com", "phone": "9986746047", "phone_code": "+91"}	3680	0	signup
2024-04-29 07:01:30.63356+00	\N	\N	b76e5204-46c9-493f-821c-6fac296f9575	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "phone": "8095235440", "phone_code": "+91"}	2120	0	login
2024-04-29 07:01:30.992933+00	\N	\N	93577aaa-f3b6-4675-8f10-961d68fb31a8	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "phone": "8095235440", "phone_code": "+91"}	5251	0	login
2024-04-29 10:43:00.531997+00	\N	\N	5e6fb2c0-8d28-4e78-a001-d415b6263435	{"device_verification_id": "1ba008ca-34a8-4c78-b6aa-790a54fb0f6c", "email": "thisisvijayanand@gmail.com", "phone": "9164563625", "phone_code": "+91"}	7336	0	signup
2024-04-29 11:20:30.438143+00	\N	\N	3c265e03-226a-4cdc-8769-dcf32810b621	{"device_verification_id": "b7637a21-a0de-42d4-bfb5-607be86f9100", "phone": "9164563625", "phone_code": "+91"}	1562	0	login
2024-04-30 04:29:13.992156+00	\N	\N	ba55557f-a028-459e-8428-344d34d0e80e	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "email": "shamanthshammu88@gmail.com"}	1389	0	login
2024-04-30 06:06:10.413069+00	\N	\N	21d6a25d-72c4-40cf-930e-a45e00541748	{"device_verification_id": "1ba008ca-34a8-4c78-b6aa-790a54fb0f6c", "email": "thisisvijayanand@gmail.com"}	7604	0	login
2024-05-02 10:06:19.032973+00	\N	\N	d724e4aa-cb1e-461c-a49f-96d73e8e2d03	{"device_verification_id": "fed02036-ab0b-4f34-95ed-d3120327ea54", "phone": "8310251513", "phone_code": "+91"}	7544	0	login
2024-05-04 13:19:31.207102+00	\N	\N	aa6e20b7-ebf0-40ac-92b7-d1abc38feb49	{"device_verification_id": "1ba008ca-34a8-4c78-b6aa-790a54fb0f6c", "phone": "9164563625", "phone_code": "+91"}	6335	0	login
2024-04-30 07:01:40.350543+00	\N	\N	ac24d4fd-29e0-4e78-b8d9-53c032e54511	{"device_verification_id": "1ba008ca-34a8-4c78-b6aa-790a54fb0f6c", "phone": "9820048283", "phone_code": "+91"}	5520	0	login
2024-05-04 03:09:26.129242+00	\N	\N	b2dab3e5-8f6c-4817-bf3b-e41e64d7ebeb	{"device_verification_id": "33e76c99-c611-434a-ba70-aa2756bf89ae", "phone": "8310251513", "phone_code": "+91"}	8027	0	login
2024-05-06 08:47:19.180405+00	\N	\N	d19d2c3c-3c6b-46dc-9375-78bb13782852	{"device_verification_id": "367ab04b-4a36-45a0-903e-b9365bc092f1", "phone": "9820048283", "phone_code": "+91"}	3655	0	login
2024-05-02 07:16:24.741852+00	\N	\N	be4ad626-39b7-4f16-b206-26ff9e0cc018	{"device_verification_id": "367ab04b-4a36-45a0-903e-b9365bc092f1", "phone": "9820048283", "phone_code": "+91"}	9660	0	login
2024-05-06 11:41:05.808305+00	\N	\N	873135ae-ed63-4a1a-9c84-9f28590c1930	{"device_verification_id": "367ab04b-4a36-45a0-903e-b9365bc092f1", "phone": "9820048283", "phone_code": "+91"}	8721	0	login
2024-05-04 12:53:46.823157+00	\N	\N	23c328b9-5db3-469b-9a06-8f34f1cbc706	{"device_verification_id": "33e76c99-c611-434a-ba70-aa2756bf89ae", "phone": "8310251513", "phone_code": "+91"}	2639	0	login
2024-05-06 09:16:13.742554+00	\N	\N	b98ae156-8b03-4214-b705-fb4aead7e6fc	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "phone": "8095235440", "phone_code": "+91"}	2279	0	login
2024-05-06 09:31:03.306194+00	\N	\N	afb0df1f-7ceb-4b44-b493-302f89473bee	{"device_verification_id": "367ab04b-4a36-45a0-903e-b9365bc092f1", "phone": "9820048283", "phone_code": "+91"}	4884	0	login
2024-05-06 11:48:54.135645+00	\N	\N	0085d516-610a-4e24-b59a-7d8606a438a3	{"device_verification_id": "d409c5f2-f34c-4567-8bdb-b0d67244a51d", "email": "sampreeths2605@gmail.com", "phone": "7795041317", "phone_code": "+91"}	4864	0	signup
2024-05-06 12:52:38.227382+00	\N	\N	579dd1e0-1f54-4eb0-8d9e-d6d435bb66c9	{"device_verification_id": "d409c5f2-f34c-4567-8bdb-b0d67244a51d", "phone": "7795041317", "phone_code": "+91"}	6224	0	login
2024-05-07 08:28:46.546233+00	\N	\N	a041933d-a131-4b61-be42-6bf3d6e12597	{"device_verification_id": "d409c5f2-f34c-4567-8bdb-b0d67244a51d", "phone": "7795041317", "phone_code": "+91"}	8160	0	login
2024-05-08 06:21:12.874688+00	\N	\N	8680751c-7326-4b66-8e85-f25470ec79a1	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	2832	0	login
2024-05-08 08:53:02.505635+00	\N	\N	41722d9e-d320-4b7e-b429-f9cc72d09287	{"device_verification_id": "2160c654-575a-4f69-bb27-dc6b38bbb308", "email": "varan.bhalla@gmail.com", "phone": "9146322795", "phone_code": "+91"}	5714	0	signup
2024-05-09 07:18:44.157444+00	\N	\N	055cca28-b478-4f9b-acfc-27fa6073c98d	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	7803	0	login
2024-05-09 07:44:55.570476+00	\N	\N	806421a4-838e-4bb5-8e71-d3d6afd9ac3c	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	5411	0	login
2024-05-09 10:46:50.747679+00	\N	\N	b1394125-6e8a-4eca-a810-be581b68f6ae	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820520583", "phone_code": "+91"}	902	0	login
2024-05-09 10:49:05.434199+00	\N	\N	9cf88a01-5a74-42c8-b27b-28251732404f	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	8329	0	login
2024-05-09 10:58:19.256289+00	\N	\N	937a2bda-47e5-4e1f-9d07-e85ccd7a15b5	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820520583", "phone_code": "+91"}	8080	0	login
2024-05-09 18:46:36.059926+00	\N	\N	cdc999f2-3dd6-4bd0-b778-fbc8b69c9d43	{"device_verification_id": "5a26a74c-171d-4652-84b2-174406a27ac2", "email": "varan.bhalla@gmail.com"}	3175	0	login
2024-05-10 10:02:15.863984+00	\N	\N	a2bcbef8-0a3e-43c9-8a72-f92e8e2a0611	{"device_verification_id": "606e09a4-5f35-410d-92f8-3c636861c740", "phone": "8095235440", "phone_code": "+91"}	5764	0	login
2024-05-10 11:27:53.703516+00	\N	\N	0cfc5939-dfb3-40ff-a567-2acef84e3940	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	7488	0	login
2024-05-10 11:29:12.422046+00	\N	\N	66f9ee68-725f-4ab3-80e6-78b9d3868c15	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	459	0	login
2024-05-13 08:41:54.221711+00	\N	\N	4e6d9994-4f54-42a8-847e-3a4e1cf8828a	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "oparikh@hotmail.com"}	904	0	login
2024-05-13 08:43:08.7666+00	\N	\N	7d5db175-beae-4d1b-aa2f-702caba03c6b	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "palvora@gmail.com"}	7054	0	login
2024-05-13 08:43:51.730762+00	\N	\N	8dd8d524-ebe1-4349-97ea-4446d72ea41c	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "oparikh@hotmail.com"}	773	0	login
2024-05-13 08:44:35.487826+00	\N	\N	1f8ede80-fe61-444b-8159-41e7f42a77fd	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "oparikh@hotmail.com"}	6173	0	login
2024-05-13 08:45:09.760085+00	\N	\N	8cf7d4d5-abd3-457e-857a-fe0631ac2682	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "palvora@gmail.com"}	8505	0	login
2024-05-13 08:46:19.74323+00	\N	\N	0e921766-6958-4b29-99d3-e824421dc558	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "oparikh@hotmail.com"}	3498	0	login
2024-05-13 08:47:55.203144+00	\N	\N	f37bdd03-2e0d-4ba5-8534-05a0e455787f	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	2697	0	login
2024-05-13 08:48:19.793768+00	\N	\N	6a5ca536-baf8-4a81-a87b-6c7c9ae74587	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "palvora@gmail.com"}	8165	0	login
2024-05-13 08:50:14.889154+00	\N	\N	6a81e855-81e8-4bd5-8cb8-37a787e4fa82	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	9434	0	login
2024-05-13 09:52:53.159376+00	\N	\N	3c4c34f5-0ae6-473c-8307-fd28a3036fa7	{"device_verification_id": "2160c654-575a-4f69-bb27-dc6b38bbb308", "email": "varan.bhalla@gmail.com"}	6149	0	login
2024-05-13 13:41:08.845074+00	\N	\N	8b373efc-b80d-46bc-a65f-a778413fbc65	{"device_verification_id": "606e09a4-5f35-410d-92f8-3c636861c740", "phone": "8095235440", "phone_code": "+91"}	9515	0	login
2024-05-14 07:17:02.785373+00	\N	\N	fe03c2db-df9d-4c6a-ac55-d2cc5da18b3e	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "email": "oparikh@hotmail.com"}	9574	0	login
2024-05-14 10:52:54.659494+00	\N	\N	cc940a64-b76a-49b3-946f-e36bbe27390b	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9820048283", "phone_code": "+91"}	7929	0	login
2024-05-14 13:27:59.053526+00	\N	\N	f1b369c6-01bb-4f95-970e-da90047e80f4	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9820048283", "phone_code": "+91"}	6205	0	login
2024-05-16 11:32:11.265239+00	\N	\N	5564e788-d6b1-4076-8a2a-e935f5142c79	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "email": "yohaan274@gmail.com", "phone": "8217477623", "phone_code": "+91"}	8607	0	signup
2024-05-16 11:40:03.782001+00	\N	\N	f4c61ea5-85ad-4d54-b1e3-3f6716bd7990	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9820048283", "phone_code": "+91"}	3901	0	login
2024-05-16 11:44:10.352876+00	\N	\N	9472003e-ac04-4b47-ad96-571df568885a	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "8217477623", "phone_code": "+91"}	9820	0	login
2024-05-16 11:45:43.437836+00	\N	\N	dee8130d-8e20-4123-bd44-40484e194157	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9820048283", "phone_code": "+91"}	1694	0	login
2024-05-16 12:00:47.386826+00	\N	\N	81fe4432-5b46-4cbf-b847-99d5aee5a105	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "8217477623", "phone_code": "+91"}	6380	0	login
2024-05-16 12:01:39.260068+00	\N	\N	8659bc95-c457-4a42-8f5a-68adbb276d59	{"device_verification_id": "606e09a4-5f35-410d-92f8-3c636861c740", "phone": "8095235440", "phone_code": "+91"}	268	0	login
2024-05-16 12:06:34.657774+00	\N	\N	0fcc2cba-c9d3-44a8-9301-cdc02d780de7	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9820048283", "phone_code": "+91"}	2559	0	login
2024-05-16 12:15:52.598977+00	\N	\N	8382abc0-8941-4ac7-a1fd-e7dd60a56bd3	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "8217477623", "phone_code": "+91"}	2898	0	login
2024-05-16 12:31:18.055057+00	\N	\N	29aecd48-b8d2-40dd-9a07-8cf9487835ee	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9820048283", "phone_code": "+91"}	152	0	login
2024-05-16 12:32:47.33857+00	\N	\N	a010a9e7-e3c8-4f31-bedd-1d975834d371	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "8217477623", "phone_code": "+91"}	2501	0	login
2024-05-16 12:34:14.997386+00	\N	\N	c628e6ab-95a2-4562-a157-f09d2dac7e1b	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9820048283", "phone_code": "+91"}	5019	0	login
2024-05-16 12:49:12.96997+00	\N	\N	65bb1dde-9c8e-4f78-9198-b95206a6504e	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "email": "kalpana@gmail.com", "phone": "9322231090", "phone_code": "+91"}	849	0	signup
2024-05-16 12:53:12.207713+00	\N	\N	8bff4406-c788-4fee-8fb1-13572fa7e584	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9820048283", "phone_code": "+91"}	2147	0	login
2024-05-16 12:56:19.010738+00	\N	\N	78d9d81a-d035-4213-a9dc-02e8d1428483	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9322231090", "phone_code": "+91"}	8639	0	login
2024-05-16 12:58:55.336196+00	\N	\N	3c5af7c8-612f-4469-b4f4-98b0504f55d0	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9322231090", "phone_code": "+91"}	8438	0	login
2024-05-16 12:57:22.588201+00	\N	\N	ca404bdd-1e32-41c7-9539-8da6a0fd423c	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "8217477623", "phone_code": "+91"}	9259	0	login
2024-05-16 13:10:06.610032+00	\N	\N	9bfa57c4-379c-40d2-b547-dc3f8da4564b	{"device_verification_id": "12ae852f-282c-40d0-9655-9e5066388c52", "phone": "9820048283", "phone_code": "+91"}	2116	0	login
2024-06-03 12:56:12.647111+00	\N	\N	3832225c-73d1-412a-83ed-3869f63f10ce	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	1582	0	login
2024-06-03 13:12:46.299467+00	\N	\N	7c7b7b9d-b402-4887-a7d4-bf62cfb8faa0	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	9934	0	login
2024-06-03 13:17:54.355022+00	\N	\N	9096b545-9676-4add-ac17-089c1fdb9ae6	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "email": "redmi@gmail.com", "phone": "8971544295", "phone_code": "+91"}	922	0	signup
2024-06-04 11:16:50.118636+00	\N	\N	87041894-4953-4cb7-be3e-07c5f5847089	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	8164	0	login
2024-06-04 13:51:21.803622+00	\N	\N	e32635e1-0c84-46e7-9b04-f3116f20e216	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	3883	0	login
2024-06-05 09:14:49.309441+00	\N	\N	aa91a4eb-881c-4a06-aebd-213d8cf9e9ba	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "phone": "8095235440", "phone_code": "+91"}	4497	0	login
2024-06-05 09:52:48.053482+00	\N	\N	55eda67c-3470-4ffe-93f8-8603a509dc13	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "phone": "8095235440", "phone_code": "+91"}	2990	0	login
2024-06-05 11:07:52.288235+00	\N	\N	024d086e-d008-47bc-8642-16c304b9fe01	{"device_verification_id": "4777b9fd-6813-4e3a-9f75-266ce94461cb", "email": "tanishq@webknot.in", "phone": "9984429317", "phone_code": "+91"}	1884	0	signup
2024-06-05 11:08:46.279535+00	\N	\N	64b404b7-f06d-470c-8c0d-9c39811c3070	{"device_verification_id": "f6eb5310-ca75-4184-b2ae-1211f5f3b8b7", "email": "bacas55260@hutov.com", "phone": "9898989898", "phone_code": "+91"}	6460	0	signup
2024-06-05 11:11:50.911644+00	\N	\N	f3273445-2ef7-4675-a567-15c17ad8d6d4	{"device_verification_id": "da7ac043-4fec-4963-a4e3-6143d21bc829", "email": "sanket@webknot.in", "phone": "7020089230", "phone_code": "+91"}	665	0	signup
2024-06-05 11:54:57.392658+00	\N	\N	820b85e1-057d-4b13-bd2a-cd6660a74ff4	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	4073	0	login
2024-06-05 11:55:18.786522+00	\N	\N	07f8adaa-a1f6-4b69-816a-9f4fe36eb2ea	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	5146	0	login
2024-06-05 12:32:20.601505+00	\N	\N	89963528-f34c-43db-bc4f-daa89376043f	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	9330	0	login
2024-06-08 07:33:24.583668+00	\N	\N	871a5d49-67f5-441d-9778-fcb89daa9891	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "8217477623", "phone_code": "+91"}	1761	0	login
2024-06-08 07:34:09.002666+00	\N	\N	ab9648fc-a84b-4dd5-8f31-790c6ed1780e	{"device_verification_id": "7cab7e65-b443-44f1-ba4d-ca22c53d132c", "phone": "9820048283", "phone_code": "+91"}	8773	0	login
2024-06-11 12:37:48.342787+00	\N	\N	babd2964-33ea-40f1-8a23-3063be986e24	{"device_verification_id": "f6eb5310-ca75-4184-b2ae-1211f5f3b8b7", "email": "tanotep906@lapeds.com", "phone": "9999999999", "phone_code": "+91"}	8224	0	signup
2024-06-14 07:25:55.719351+00	\N	\N	e53eb98d-9098-4a7f-9af1-15e60af636dc	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "phone": "8095235440", "phone_code": "+91"}	9768	0	login
2024-06-14 07:40:11.016481+00	\N	\N	56bc5570-3523-47e0-b13d-be364ee1c268	{"device_verification_id": "3ba87308-b5f5-48cf-b15b-60abec3b0dd3", "phone": "8095235440", "phone_code": "+91"}	1554	0	login
2024-06-19 10:44:34.162714+00	\N	\N	6860efc0-2498-441a-9ef2-6baaf999b934	{"device_verification_id": "879e4e5b-ab6f-42b8-9ae3-4ae4aeb24069", "email": "mukul@gmail.com", "phone": "9425675844", "phone_code": "+91"}	7723	0	signup
2024-06-20 02:58:09.268381+00	\N	\N	97412c62-6614-4ef8-b03c-ed46fd3fc29d	{"device_verification_id": "2a033173-7137-4571-a96f-4c23523a5790", "email": "krishnan.nr@webknot.in", "phone": "8762985179", "phone_code": "+91"}	989	0	signup
2024-06-20 08:33:09.685509+00	\N	\N	d8b78d33-794f-445f-bf27-241b1cf123da	{"device_verification_id": "05a82e84-8d5f-4e7e-b32a-b621e63728ec", "email": "ritik.r@webknot.in", "phone": "7891169900", "phone_code": "+91"}	1683	0	signup
2024-06-21 12:01:28.962542+00	\N	\N	42fa4b3c-6c2d-477f-9fdc-e913cb27fb84	{"device_verification_id": "879e4e5b-ab6f-42b8-9ae3-4ae4aeb24069", "phone": "9425675844", "phone_code": "+91"}	7267	0	login
2024-06-21 12:49:45.727362+00	\N	\N	3c9a499b-58c3-4682-8239-d55308302d73	{"device_verification_id": "b48bbf9d-e119-4a57-a8d8-46f11f06a13c", "email": "nikhilbhalla196@gmail.com", "phone": "9654041479", "phone_code": "+91"}	1938	0	signup
2024-06-25 12:28:30.993249+00	\N	\N	9fbcccd7-a18d-4759-b120-5f567c7bf326	{"device_verification_id": "879e4e5b-ab6f-42b8-9ae3-4ae4aeb24069", "phone": "9425675844", "phone_code": "+91"}	5959	0	login
\.


--
-- Name: actions actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY (id);


--
-- Name: admin_post admin_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_post
    ADD CONSTRAINT admin_post_pkey PRIMARY KEY (id);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: betting_post betting_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.betting_post
    ADD CONSTRAINT betting_post_pkey PRIMARY KEY (id);


--
-- Name: post_comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: comment_react comment_react_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_react
    ADD CONSTRAINT comment_react_pkey PRIMARY KEY (id);


--
-- Name: contact_me contact_me_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_me
    ADD CONSTRAINT contact_me_pkey PRIMARY KEY (id);


--
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- Name: customer_testimonials customer_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_testimonials
    ADD CONSTRAINT customer_testimonials_pkey PRIMARY KEY (id);


--
-- Name: device device_fingerprint_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_fingerprint_key UNIQUE (fingerprint);


--
-- Name: device device_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_pkey PRIMARY KEY (id);


--
-- Name: experties_background experties_background_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experties_background
    ADD CONSTRAINT experties_background_pkey PRIMARY KEY (id);


--
-- Name: featured_media featured_media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.featured_media
    ADD CONSTRAINT featured_media_pkey PRIMARY KEY (id);


--
-- Name: activity garmin_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.activity
    ADD CONSTRAINT garmin_activity_pkey PRIMARY KEY (id);


--
-- Name: garminusers garminusers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.garminusers
    ADD CONSTRAINT garminusers_pkey PRIMARY KEY (id);


--
-- Name: gfitactivity gfitactivity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gfitactivity
    ADD CONSTRAINT gfitactivity_pkey PRIMARY KEY (id);


--
-- Name: gfitusers gfitusers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gfitusers
    ADD CONSTRAINT gfitusers_pkey PRIMARY KEY (id);


--
-- Name: group_members group_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_members
    ADD CONSTRAINT group_members_pkey PRIMARY KEY (id);


--
-- Name: master_bucket key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.master_bucket
    ADD CONSTRAINT key UNIQUE (key);


--
-- Name: level level_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level
    ADD CONSTRAINT level_pkey PRIMARY KEY (id);


--
-- Name: master_activity master_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.master_activity
    ADD CONSTRAINT master_activity_pkey PRIMARY KEY (id);


--
-- Name: master_bucket master_bucket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.master_bucket
    ADD CONSTRAINT master_bucket_pkey PRIMARY KEY (id);


--
-- Name: master_course master_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.master_course
    ADD CONSTRAINT master_course_pkey PRIMARY KEY (id);


--
-- Name: membership membership_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membership
    ADD CONSTRAINT membership_pkey PRIMARY KEY (id);


--
-- Name: notification notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (id);


--
-- Name: post_bucket_mapping post_bucket_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_bucket_mapping
    ADD CONSTRAINT post_bucket_mapping_pkey PRIMARY KEY (id);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- Name: post_react post_react_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_react
    ADD CONSTRAINT post_react_pkey PRIMARY KEY (id);


--
-- Name: profile_section_mapping profile_section_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile_section_mapping
    ADD CONSTRAINT profile_section_mapping_pkey PRIMARY KEY (id);


--
-- Name: profile_visibility profile_visibility_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile_visibility
    ADD CONSTRAINT profile_visibility_pkey PRIMARY KEY (id);


--
-- Name: programme programme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programme
    ADD CONSTRAINT programme_pkey PRIMARY KEY (id);


--
-- Name: role_actions role_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_actions
    ADD CONSTRAINT role_actions_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: sport_bucket_mapping sport_bucket_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sport_bucket_mapping
    ADD CONSTRAINT sport_bucket_mapping_pkey PRIMARY KEY (id);


--
-- Name: master_sport sport_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.master_sport
    ADD CONSTRAINT sport_master_pkey PRIMARY KEY (id);


--
-- Name: terms_conditions terms_conditions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.terms_conditions
    ADD CONSTRAINT terms_conditions_pkey PRIMARY KEY (id);


--
-- Name: user_activity_mapping user_activity_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_activity_mapping
    ADD CONSTRAINT user_activity_mapping_pkey PRIMARY KEY (id);


--
-- Name: user_bettings user_bettings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bettings
    ADD CONSTRAINT user_bettings_pkey PRIMARY KEY (id);


--
-- Name: user_bucket user_bucket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bucket
    ADD CONSTRAINT user_bucket_pkey PRIMARY KEY (id);


--
-- Name: user_device user_device_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_device
    ADD CONSTRAINT user_device_pkey PRIMARY KEY (id);


--
-- Name: user_group user_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT user_group_pkey PRIMARY KEY (id);


--
-- Name: user_post_status user_post_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_post_status
    ADD CONSTRAINT user_post_status_pkey PRIMARY KEY (id);


--
-- Name: user_topics user_topics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_topics
    ADD CONSTRAINT user_topics_pkey PRIMARY KEY (id);


--
-- Name: userprofile userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile
    ADD CONSTRAINT userprofile_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: verification verification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verification
    ADD CONSTRAINT verification_pkey PRIMARY KEY (id);


--
-- Name: admin_post admin_post_approved_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_post
    ADD CONSTRAINT admin_post_approved_by_fkey FOREIGN KEY (reviewer_id) REFERENCES public.users(id);


--
-- Name: admin_post admin_post_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_post
    ADD CONSTRAINT admin_post_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(id);


--
-- Name: betting_post betting_post_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.betting_post
    ADD CONSTRAINT betting_post_users_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: post_comment comment_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_comment
    ADD CONSTRAINT comment_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(id);


--
-- Name: comment_react comment_react_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_react
    ADD CONSTRAINT comment_react_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.post_comment(id);


--
-- Name: comment_react comment_react_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_react
    ADD CONSTRAINT comment_react_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: comment_tagging comment_tagging_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_tagging
    ADD CONSTRAINT comment_tagging_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(id);


--
-- Name: comment_tagging comment_tagging_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment_tagging
    ADD CONSTRAINT comment_tagging_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: post_comment comment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_comment
    ADD CONSTRAINT comment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: contact_me contact_me_from_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_me
    ADD CONSTRAINT contact_me_from_user_id_fkey FOREIGN KEY (from_user_id) REFERENCES public.users(id);


--
-- Name: contact_me contact_me_to_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_me
    ADD CONSTRAINT contact_me_to_user_id_fkey FOREIGN KEY (to_user_id) REFERENCES public.users(id);


--
-- Name: contact contact_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: user_device device_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_device
    ADD CONSTRAINT device_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: device device_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- Name: experties_background experties_background_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experties_background
    ADD CONSTRAINT experties_background_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: featured_media featured_media_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.featured_media
    ADD CONSTRAINT featured_media_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: membership membership_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membership
    ADD CONSTRAINT membership_users_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: post_bucket_mapping post_bucket_mapping_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_bucket_mapping
    ADD CONSTRAINT post_bucket_mapping_key_fkey FOREIGN KEY (key) REFERENCES public.master_bucket(key);


--
-- Name: post_bucket_mapping post_bucket_mapping_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_bucket_mapping
    ADD CONSTRAINT post_bucket_mapping_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(id);


--
-- Name: post_custom_visibility post_custom_visibility_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_custom_visibility
    ADD CONSTRAINT post_custom_visibility_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(id);


--
-- Name: post_custom_visibility post_custom_visibility_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_custom_visibility
    ADD CONSTRAINT post_custom_visibility_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: post post_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.user_group(id) NOT VALID;


--
-- Name: post_react post_react_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_react
    ADD CONSTRAINT post_react_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(id);


--
-- Name: post_react post_react_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_react
    ADD CONSTRAINT post_react_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: post post_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: programme programme_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.programme
    ADD CONSTRAINT programme_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: reported_post reported_post_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reported_post
    ADD CONSTRAINT reported_post_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(id);


--
-- Name: reported_post reported_post_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reported_post
    ADD CONSTRAINT reported_post_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: selected_programs selected_programs_programme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.selected_programs
    ADD CONSTRAINT selected_programs_programme_id_fkey FOREIGN KEY (programme_id) REFERENCES public.programme(id);


--
-- Name: selected_programs selected_programs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.selected_programs
    ADD CONSTRAINT selected_programs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: user_bettings user_bettings_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bettings
    ADD CONSTRAINT user_bettings_users_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: user_topics user_bettings_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_topics
    ADD CONSTRAINT user_bettings_users_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: user_bucket user_bucket_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_bucket
    ADD CONSTRAINT user_bucket_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: user_post_status user_post_status_approved_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_post_status
    ADD CONSTRAINT user_post_status_approved_by_fkey FOREIGN KEY (approved_by) REFERENCES public.users(id);


--
-- Name: user_post_status user_post_status_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_post_status
    ADD CONSTRAINT user_post_status_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(id);


--
-- Name: userprofile userprofile_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile
    ADD CONSTRAINT userprofile_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

