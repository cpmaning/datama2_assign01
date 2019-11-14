--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

-- Started on 2019-11-14 08:39:55

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
-- TOC entry 205 (class 1259 OID 16413)
-- Name: bill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bill (
    id integer NOT NULL,
    hot_name character varying(45) NOT NULL,
    cus_fullname character varying(45) NOT NULL,
    bill_dmg integer,
    hotel_id integer NOT NULL
);


ALTER TABLE public.bill OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16411)
-- Name: bill_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bill_id_seq OWNER TO postgres;

--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 204
-- Name: bill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bill_id_seq OWNED BY public.bill.id;


--
-- TOC entry 207 (class 1259 OID 16425)
-- Name: check_in_slip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.check_in_slip (
    id integer NOT NULL,
    slip_cin date NOT NULL,
    slip_cout date NOT NULL,
    employee_id integer NOT NULL
);


ALTER TABLE public.check_in_slip OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16423)
-- Name: check_in_slip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.check_in_slip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.check_in_slip_id_seq OWNER TO postgres;

--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 206
-- Name: check_in_slip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.check_in_slip_id_seq OWNED BY public.check_in_slip.id;


--
-- TOC entry 209 (class 1259 OID 16431)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    cus_fname character varying(45) DEFAULT NULL::character varying,
    cus_lname character varying(45) DEFAULT NULL::character varying,
    cus_initial character varying(45) DEFAULT NULL::character varying,
    cus_fullname character varying(45) NOT NULL,
    cus_add character varying(45) NOT NULL,
    cus_cont integer NOT NULL,
    cus_email character varying(45) DEFAULT NULL::character varying,
    cus_crdt integer NOT NULL,
    employee_id integer NOT NULL,
    check_in_slip_id integer NOT NULL
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16429)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_id_seq OWNER TO postgres;

--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 208
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- TOC entry 211 (class 1259 OID 16441)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    emp_fname character varying(45) DEFAULT NULL::character varying,
    emp_lname character varying(45) DEFAULT NULL::character varying,
    emp_initial character varying(45) DEFAULT NULL::character varying,
    emp_fullname character varying(45) NOT NULL,
    emp_add character varying(45) NOT NULL,
    emp_cont integer NOT NULL,
    emp_email character varying(45) NOT NULL,
    emp_type character varying(45) NOT NULL
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16439)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_id_seq OWNER TO postgres;

--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 210
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- TOC entry 203 (class 1259 OID 16404)
-- Name: hotel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hotel (
    id integer NOT NULL,
    hot_name character varying(45) DEFAULT NULL::character varying,
    hot_type character varying(45) DEFAULT NULL::character varying,
    hot_add character varying(255) DEFAULT NULL::character varying,
    hot_cont integer
);


ALTER TABLE public.hotel OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16402)
-- Name: hotel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hotel_id_seq OWNER TO postgres;

--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 202
-- Name: hotel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hotel_id_seq OWNED BY public.hotel.id;


--
-- TOC entry 213 (class 1259 OID 16450)
-- Name: key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.key (
    id integer NOT NULL,
    key_holder character varying(45) NOT NULL
);


ALTER TABLE public.key OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16448)
-- Name: key_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.key_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.key_id_seq OWNER TO postgres;

--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 212
-- Name: key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.key_id_seq OWNED BY public.key.id;


--
-- TOC entry 215 (class 1259 OID 16456)
-- Name: room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.room (
    id integer NOT NULL,
    room_type character varying(45) NOT NULL,
    room_cpcty integer NOT NULL,
    room_cont integer NOT NULL,
    room_price integer NOT NULL,
    hotel_id integer NOT NULL,
    key_id integer NOT NULL
);


ALTER TABLE public.room OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16454)
-- Name: room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.room_id_seq OWNER TO postgres;

--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 214
-- Name: room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.room_id_seq OWNED BY public.room.id;


--
-- TOC entry 2727 (class 2604 OID 16416)
-- Name: bill id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bill ALTER COLUMN id SET DEFAULT nextval('public.bill_id_seq'::regclass);


--
-- TOC entry 2728 (class 2604 OID 16428)
-- Name: check_in_slip id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.check_in_slip ALTER COLUMN id SET DEFAULT nextval('public.check_in_slip_id_seq'::regclass);


--
-- TOC entry 2729 (class 2604 OID 16434)
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- TOC entry 2734 (class 2604 OID 16444)
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- TOC entry 2723 (class 2604 OID 16407)
-- Name: hotel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel ALTER COLUMN id SET DEFAULT nextval('public.hotel_id_seq'::regclass);


--
-- TOC entry 2738 (class 2604 OID 16453)
-- Name: key id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key ALTER COLUMN id SET DEFAULT nextval('public.key_id_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 16459)
-- Name: room id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room ALTER COLUMN id SET DEFAULT nextval('public.room_id_seq'::regclass);


--
-- TOC entry 2877 (class 0 OID 16413)
-- Dependencies: 205
-- Data for Name: bill; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bill (id, hot_name, cus_fullname, bill_dmg, hotel_id) VALUES (1, 'Shangrila Makati', 'Ralph Dedumo', 0, 1);


--
-- TOC entry 2879 (class 0 OID 16425)
-- Dependencies: 207
-- Data for Name: check_in_slip; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.check_in_slip (id, slip_cin, slip_cout, employee_id) VALUES (1, '2019-11-11', '2019-11-11', 1);


--
-- TOC entry 2881 (class 0 OID 16431)
-- Dependencies: 209
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer (id, cus_fname, cus_lname, cus_initial, cus_fullname, cus_add, cus_cont, cus_email, cus_crdt, employee_id, check_in_slip_id) VALUES (1, 'Ralph', 'Dedumo', 'A', 'Ralph Dedumo', 'Laguna', 1909090909, 'radedumo@gmail.com', 909090909, 1, 1);


--
-- TOC entry 2883 (class 0 OID 16441)
-- Dependencies: 211
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee (id, emp_fname, emp_lname, emp_initial, emp_fullname, emp_add, emp_cont, emp_email, emp_type) VALUES (1, 'Darline', 'Mendoza', 'D', 'Darline D Mendoza', 'Laguna', 909090901, 'darline@yahoo.com', 'Hotel Clerk');


--
-- TOC entry 2875 (class 0 OID 16404)
-- Dependencies: 203
-- Data for Name: hotel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hotel (id, hot_name, hot_type, hot_add, hot_cont) VALUES (1, 'Shangrila Makati', 'Luxury and High-End Hotels', 'Makati City', 81694088);


--
-- TOC entry 2885 (class 0 OID 16450)
-- Dependencies: 213
-- Data for Name: key; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.key (id, key_holder) VALUES (1, 'Darlyn D Mendoza');


--
-- TOC entry 2887 (class 0 OID 16456)
-- Dependencies: 215
-- Data for Name: room; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.room (id, room_type, room_cpcty, room_cont, room_price, hotel_id, key_id) VALUES (1, 'Single', 1, 89802141, 8000, 1, 1);
INSERT INTO public.room (id, room_type, room_cpcty, room_cont, room_price, hotel_id, key_id) VALUES (2, 'Double', 2, 89802351, 8000, 2, 2);
INSERT INTO public.room (id, room_type, room_cpcty, room_cont, room_price, hotel_id, key_id) VALUES (3, 'King', 2, 49802351, 10000, 3, 3);


--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 204
-- Name: bill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bill_id_seq', 1, true);


--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 206
-- Name: check_in_slip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.check_in_slip_id_seq', 1, true);


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 208
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_id_seq', 1, true);


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 210
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 1, true);


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 202
-- Name: hotel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hotel_id_seq', 1, true);


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 212
-- Name: key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.key_id_seq', 1, true);


--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 214
-- Name: room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.room_id_seq', 3, true);


--
-- TOC entry 2743 (class 2606 OID 16462)
-- Name: check_in_slip check_in_slip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.check_in_slip
    ADD CONSTRAINT check_in_slip_pkey PRIMARY KEY (id);


--
-- TOC entry 2741 (class 2606 OID 16471)
-- Name: hotel hotel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (id);


--
-- TOC entry 2745 (class 2606 OID 16469)
-- Name: key key_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key
    ADD CONSTRAINT key_pkey PRIMARY KEY (id);


--
-- TOC entry 2747 (class 2606 OID 16467)
-- Name: room room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);


-- Completed on 2019-11-14 08:39:55

--
-- PostgreSQL database dump complete
--

