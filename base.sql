--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

-- Started on 2019-09-11 17:09:12 -05

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

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 17039)
-- Name: Categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categoria" (
    id integer NOT NULL,
    nombre character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Categoria" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17037)
-- Name: Categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categoria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Categoria_id_seq" OWNER TO postgres;

--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 202
-- Name: Categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categoria_id_seq" OWNED BY public."Categoria".id;


--
-- TOC entry 210 (class 1259 OID 25197)
-- Name: Fruta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Fruta" (
    id integer NOT NULL,
    nombre character varying(255),
    url character varying(255),
    categoriaid integer,
    valor integer,
    preguntaid integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Fruta" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 25195)
-- Name: Fruta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Fruta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Fruta_id_seq" OWNER TO postgres;

--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 209
-- Name: Fruta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Fruta_id_seq" OWNED BY public."Fruta".id;


--
-- TOC entry 201 (class 1259 OID 17023)
-- Name: Nivel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Nivel" (
    id integer NOT NULL,
    descripcion character varying(255),
    valor integer,
    categoriaid integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Nivel" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17021)
-- Name: Nivel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Nivel_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Nivel_id_seq" OWNER TO postgres;

--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 200
-- Name: Nivel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Nivel_id_seq" OWNED BY public."Nivel".id;


--
-- TOC entry 207 (class 1259 OID 17080)
-- Name: OpcionRespuesta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OpcionRespuesta" (
    id integer NOT NULL,
    descripcion character varying(255),
    "idPregunta" integer,
    "respuestaValida" boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."OpcionRespuesta" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17078)
-- Name: OpcionRespuesta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OpcionRespuesta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."OpcionRespuesta_id_seq" OWNER TO postgres;

--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 206
-- Name: OpcionRespuesta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OpcionRespuesta_id_seq" OWNED BY public."OpcionRespuesta".id;


--
-- TOC entry 197 (class 1259 OID 17007)
-- Name: Pregunta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pregunta" (
    id integer NOT NULL,
    idnivel integer,
    descripcion character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Pregunta" OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 17005)
-- Name: Pregunta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pregunta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pregunta_id_seq" OWNER TO postgres;

--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 196
-- Name: Pregunta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pregunta_id_seq" OWNED BY public."Pregunta".id;


--
-- TOC entry 199 (class 1259 OID 17015)
-- Name: Puntaje; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Puntaje" (
    id integer NOT NULL,
    "idFruta" integer,
    "idPregunta" integer,
    "valorPuntaje" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Puntaje" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17013)
-- Name: Puntaje_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Puntaje_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Puntaje_id_seq" OWNER TO postgres;

--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 198
-- Name: Puntaje_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Puntaje_id_seq" OWNED BY public."Puntaje".id;


--
-- TOC entry 208 (class 1259 OID 25190)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17064)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    puntaje integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17062)
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User_id_seq" OWNER TO postgres;

--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 204
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- TOC entry 2871 (class 2604 OID 17042)
-- Name: Categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categoria" ALTER COLUMN id SET DEFAULT nextval('public."Categoria_id_seq"'::regclass);


--
-- TOC entry 2874 (class 2604 OID 25200)
-- Name: Fruta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fruta" ALTER COLUMN id SET DEFAULT nextval('public."Fruta_id_seq"'::regclass);


--
-- TOC entry 2870 (class 2604 OID 17026)
-- Name: Nivel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nivel" ALTER COLUMN id SET DEFAULT nextval('public."Nivel_id_seq"'::regclass);


--
-- TOC entry 2873 (class 2604 OID 17083)
-- Name: OpcionRespuesta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OpcionRespuesta" ALTER COLUMN id SET DEFAULT nextval('public."OpcionRespuesta_id_seq"'::regclass);


--
-- TOC entry 2868 (class 2604 OID 17010)
-- Name: Pregunta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pregunta" ALTER COLUMN id SET DEFAULT nextval('public."Pregunta_id_seq"'::regclass);


--
-- TOC entry 2869 (class 2604 OID 17018)
-- Name: Puntaje id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Puntaje" ALTER COLUMN id SET DEFAULT nextval('public."Puntaje_id_seq"'::regclass);


--
-- TOC entry 2872 (class 2604 OID 17067)
-- Name: User id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- TOC entry 3019 (class 0 OID 17039)
-- Dependencies: 203
-- Data for Name: Categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Categoria" (id, nombre, "createdAt", "updatedAt") FROM stdin;
2	Costa	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
3	Sierra	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
\.


--
-- TOC entry 3026 (class 0 OID 25197)
-- Dependencies: 210
-- Data for Name: Fruta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Fruta" (id, nombre, url, categoriaid, valor, preguntaid, "createdAt", "updatedAt") FROM stdin;
1	Durazno	http://res.cloudinary.com/proyectoscriptespol/image/upload/v1568190077/durazno-id1.png	3	4	2	2019-09-11 03:21:16.284-05	2019-09-11 03:21:17.508-05
2	Mandarina	http://res.cloudinary.com/proyectoscriptespol/image/upload/v1568190111/mandarina-id2.png	2	5	3	2019-09-11 03:21:51.315-05	2019-09-11 03:21:52.102-05
3	Cereza	http://res.cloudinary.com/proyectoscriptespol/image/upload/v1568190132/cereza-id3.png	2	6	1	2019-09-11 03:22:12.024-05	2019-09-11 03:22:12.652-05
4	Uva	http://res.cloudinary.com/proyectoscriptespol/image/upload/v1568235090/uva-id4.png	3	5	2	2019-09-11 15:51:29.366-05	2019-09-11 15:52:20.642-05
\.


--
-- TOC entry 3017 (class 0 OID 17023)
-- Dependencies: 201
-- Data for Name: Nivel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Nivel" (id, descripcion, valor, categoriaid, "createdAt", "updatedAt") FROM stdin;
1	Nivel 1	5	2	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
2	Nivel 2	10	3	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
\.


--
-- TOC entry 3023 (class 0 OID 17080)
-- Dependencies: 207
-- Data for Name: OpcionRespuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OpcionRespuesta" (id, descripcion, "idPregunta", "respuestaValida", "createdAt", "updatedAt") FROM stdin;
1	Redonda	1	t	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
2	Cuadrada	1	f	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
3	Roja	3	t	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
4	Verde	3	f	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
5	Roja	2	t	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
6	Café	2	f	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
7	Verde	2	f	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
\.


--
-- TOC entry 3013 (class 0 OID 17007)
-- Dependencies: 197
-- Data for Name: Pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pregunta" (id, idnivel, descripcion, "createdAt", "updatedAt") FROM stdin;
1	1	¿Qué forma tiene la fruta?	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
2	2	¿De qué color es la fruta? (Sierra)	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
3	1	¿De qué color es la fruta? (Costa)	2019-09-08 03:16:21.087-05	2019-09-08 03:16:21.087-05
\.


--
-- TOC entry 3015 (class 0 OID 17015)
-- Dependencies: 199
-- Data for Name: Puntaje; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Puntaje" (id, "idFruta", "idPregunta", "valorPuntaje", "createdAt", "updatedAt") FROM stdin;
\.


--
-- TOC entry 3024 (class 0 OID 25190)
-- Dependencies: 208
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20190127015845-create-user.js
20190831051635-create-pregunta.js
20190831051855-create-puntaje.js
20190831052214-create-nivel.js
20190831052746-create-opcion-respuesta.js
20190831052929-create-categoria.js
20190831053156-create-fruta.js
\.


--
-- TOC entry 3021 (class 0 OID 17064)
-- Dependencies: 205
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, nombre, username, password, puntaje, "createdAt", "updatedAt") FROM stdin;
2	marco	marco	$2a$08$iacvTI43L2c40ZtGz2vAoOU8Av/tGI8ax3PHoZnXEfkCM0IRdSybq	\N	2019-09-08 10:12:36.057-05	2019-09-08 10:12:36.51-05
3	admin	admin	$2a$08$VPed4lp.rGo7TvCzYbk/E.XcY3uw6wv1At.3dChR7MBpiefIMcVgO	\N	2019-09-09 14:45:26.391-05	2019-09-09 14:45:26.771-05
\.


--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 202
-- Name: Categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categoria_id_seq"', 3, true);


--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 209
-- Name: Fruta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Fruta_id_seq"', 4, true);


--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 200
-- Name: Nivel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Nivel_id_seq"', 2, true);


--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 206
-- Name: OpcionRespuesta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OpcionRespuesta_id_seq"', 7, true);


--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 196
-- Name: Pregunta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pregunta_id_seq"', 3, true);


--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 198
-- Name: Puntaje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Puntaje_id_seq"', 1, false);


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 204
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_id_seq"', 3, true);


--
-- TOC entry 2882 (class 2606 OID 17044)
-- Name: Categoria Categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categoria"
    ADD CONSTRAINT "Categoria_pkey" PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 25205)
-- Name: Fruta Fruta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fruta"
    ADD CONSTRAINT "Fruta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 17028)
-- Name: Nivel Nivel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Nivel"
    ADD CONSTRAINT "Nivel_pkey" PRIMARY KEY (id);


--
-- TOC entry 2886 (class 2606 OID 17085)
-- Name: OpcionRespuesta OpcionRespuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OpcionRespuesta"
    ADD CONSTRAINT "OpcionRespuesta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 17012)
-- Name: Pregunta Pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pregunta"
    ADD CONSTRAINT "Pregunta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2878 (class 2606 OID 17020)
-- Name: Puntaje Puntaje_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Puntaje"
    ADD CONSTRAINT "Puntaje_pkey" PRIMARY KEY (id);


--
-- TOC entry 2888 (class 2606 OID 25194)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 2884 (class 2606 OID 17072)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


-- Completed on 2019-09-11 17:09:13 -05

--
-- PostgreSQL database dump complete
--

