--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Debian 17.5-1.pgdg120+1)
-- Dumped by pg_dump version 17.5 (Debian 17.5-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: campeon; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE IF NOT EXISTS public.campeon (
    nombre character varying(20) NOT NULL,
    clase character varying(20) NOT NULL,
    descripcion character varying(500),
    recurso character varying(15),
    imagen character varying(255)
);


--
-- Name: campeon_habilidad; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE IF NOT EXISTS public.campeon_habilidad (
    campeon_nombre character varying(20) NOT NULL,
    habilidad_id integer NOT NULL
);


--
-- Name: clases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE IF NOT EXISTS public.clases (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);


--
-- Name: clases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clases_id_seq OWNED BY public.clases.id;


--
-- Name: habilidades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE IF NOT EXISTS public.habilidades (
    id integer NOT NULL,
    coste integer,
    tipo character varying(20),
    descripcion character varying(500),
    imagen character varying(255)
);


--
-- Name: habilidades_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.habilidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: habilidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.habilidades_id_seq OWNED BY public.habilidades.id;


--
-- Name: clases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clases ALTER COLUMN id SET DEFAULT nextval('public.clases_id_seq'::regclass);


--
-- Name: habilidades id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.habilidades ALTER COLUMN id SET DEFAULT nextval('public.habilidades_id_seq'::regclass);


--
-- Data for Name: campeon; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.campeon (nombre, clase, descripcion, recurso, imagen) FROM stdin;
LeBlanc	mago	LeBlanc se desliza entre las sombras, dejando ilusiones tras de sí y confundiendo a sus enemigos.	mana	images/iconos/leblanc.webp
Jayce	luchador	Jayce, el Defensor del Mañana, es un inventor y guerrero que porta un martillo hextech capaz de transformarse en cañón.	mana	images/iconos/jayce.webp
Sejuani	tanque	Sejuani, líder de la Garra Invernal, es una temible guerrera de Freljord que carga a la batalla montada en su jabalí.	mana	images/iconos/sejuani.jpeg
Aphelios	tirador	Aphelios emerge de la sombra de la luz de la luna con las armas desenvainadas...	mana	images/iconos/aphelios.webp
Thresh	soporte	Thresh es un espíritu torturado que encadena las almas de sus enemigos, arrastrándolos a la oscuridad.	mana	images/iconos/thresh.webp
\.


--
-- Data for Name: campeon_habilidad; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.campeon_habilidad (campeon_nombre, habilidad_id) FROM stdin;
LeBlanc	1
LeBlanc	2
LeBlanc	3
LeBlanc	4
LeBlanc	5
Jayce	6
Jayce	7
Jayce	8
Jayce	9
Jayce	10
Sejuani	11
Sejuani	12
Sejuani	13
Sejuani	14
Sejuani	15
Aphelios	16
Aphelios	17
Aphelios	18
Aphelios	19
Aphelios	20
Thresh	21
Thresh	22
Thresh	23
Thresh	24
Thresh	25
\.


--
-- Data for Name: clases; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.clases (id, nombre) FROM stdin;
1	luchador
2	soporte
3	tanque
4	tirador
5	mago
6	asesino
\.


--
-- Data for Name: habilidades; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.habilidades (id, coste, tipo, descripcion, imagen) FROM stdin;
1	\N	Pasiva	Periódicamente, cuando LeBlanc sufre daños hasta el 40 % de su salud máxima, crea un clon de ella misma, después de lo cual ambos se vuelven instantáneamente invisibles durante 1 segundo.	images/habilidades/leblanc_p.webp
2	70	\N	Proyecta un sello que inflige daño mágico y marca al objetivo durante 3.5 seg.	images/habilidades/leblanc_q.webp
3	90	\N	LeBlanc se desplaza hacia una ubicación, infligiendo daño mágico a los enemigos cercanos.	images/habilidades/leblanc_w.webp
4	50	\N	Lanza una cadena que inflige daño mágico y otorga visión del enemigo alcanzado.	images/habilidades/leblanc_e.webp
5	0	Ultimate	Copia y lanza su hechizo más reciente.	images/habilidades/leblanc_r.webp
6	\N	Pasiva	Jayce comienza la partida con un punto en su definitiva, donde puede cambiar la forma de su arma: Martillo o Cañón.	images/habilidades/jayce_p.webp
7	40	\N	Salta hacia un enemigo, causando daño físico a los enemigos cercanos y ralentizándolos durante 2 segundos.	images/habilidades/jayce_q.webp
8	50	\N	Incrementa la velocidad de ataque durante unos segundos.	images/habilidades/jayce_w.webp
9	55	\N	Empuja a un enemigo, infligiéndole daño.	images/habilidades/jayce_e.webp
10	100	Ultimate	Transforma su martillo en cañón o viceversa, cambiando su conjunto de habilidades.	images/habilidades/jayce_r.webp
11	\N	Pasiva	Sejuani obtiene resistencia adicional y aplica efectos de congelación con sus ataques.	images/habilidades/sejuani_p.webp
12	65	\N	Sejuani carga hacia adelante, infligiendo daño a los enemigos y empujándolos.	images/habilidades/sejuani_q.webp
13	30	\N	Lanza un ataque de barrido con su arma, infligiendo daño en área.	images/habilidades/sejuani_w.webp
14	30	\N	Congela y aturde al enemigo.	images/habilidades/sejuani_e.webp
15	100	Ultimate	Lanza una bola de hielo que aturde y daña a los enemigos.	images/habilidades/sejuani_r.webp
16	\N	Pasiva	Aphelios cuenta con cinco armas donde solo puede utilizar dos a la vez. Cada arma tiene su propio ataque básico, además de que cada arma cuenta con 50 balas de munición.	images/habilidades/aphelios_p.webp
17	60	\N	Dispara proyectiles adicionales de sus armas.	images/habilidades/aphelios_q.webp
18	0	\N	Cambia de arma.	images/habilidades/aphelios_w.webp
19	0	\N	Cambia de posición para mejorar sus ataques.	images/habilidades/aphelios_e.webp
20	100	Ultimate	Realiza un ataque en área con su arma principal.	images/habilidades/aphelios_r.webp
21	\N	Pasiva	Recoge almas de enemigos caídos para aumentar su armadura y poder de habilidad.	images/habilidades/tresh_p.webp
22	70	\N	Lanza una cadena que aturde y atrae a los enemigos.	images/habilidades/tresh_q.webp
23	50	\N	Crea un escudo para un aliado y lo acerca a Thresh.	images/habilidades/tresh_w.webp
24	50	\N	Barre con su cadena para dañar y desplazar a los enemigos.	images/habilidades/tresh_e.webp
25	100	Ultimate	Crea una barrera que ralentiza y daña a los enemigos que la atraviesan.	images/habilidades/tresh_r.webp
\.


--
-- Name: clases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clases_id_seq', 1, false);


--
-- Name: habilidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.habilidades_id_seq', 1, false);


--
-- Name: campeon campeon_descripcion_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.campeon
    ADD CONSTRAINT campeon_descripcion_key UNIQUE (descripcion);


--
-- Name: campeon_habilidad campeon_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.campeon_habilidad
    ADD CONSTRAINT campeon_habilidad_pkey PRIMARY KEY (campeon_nombre, habilidad_id);


--
-- Name: campeon campeon_imagen_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.campeon
    ADD CONSTRAINT campeon_imagen_key UNIQUE (imagen);


--
-- Name: campeon campeon_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.campeon
    ADD CONSTRAINT campeon_pkey PRIMARY KEY (nombre);


--
-- Name: clases clases_nombre_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clases
    ADD CONSTRAINT clases_nombre_key UNIQUE (nombre);


--
-- Name: clases clases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clases
    ADD CONSTRAINT clases_pkey PRIMARY KEY (id);


--
-- Name: habilidades habilidades_descripcion_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.habilidades
    ADD CONSTRAINT habilidades_descripcion_key UNIQUE (descripcion);


--
-- Name: habilidades habilidades_imagen_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.habilidades
    ADD CONSTRAINT habilidades_imagen_key UNIQUE (imagen);


--
-- Name: habilidades habilidades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.habilidades
    ADD CONSTRAINT habilidades_pkey PRIMARY KEY (id);


--
-- Name: campeon_habilidad campeon_habilidad_campeon_nombre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.campeon_habilidad
    ADD CONSTRAINT campeon_habilidad_campeon_nombre_fkey FOREIGN KEY (campeon_nombre) REFERENCES public.campeon(nombre) ON DELETE CASCADE;


--
-- Name: campeon_habilidad campeon_habilidad_habilidad_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.campeon_habilidad
    ADD CONSTRAINT campeon_habilidad_habilidad_id_fkey FOREIGN KEY (habilidad_id) REFERENCES public.habilidades(id) ON DELETE CASCADE;


--
-- Name: campeon fk_clase; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.campeon
    ADD CONSTRAINT fk_clase FOREIGN KEY (clase) REFERENCES public.clases(nombre);


--
-- PostgreSQL database dump complete
--

