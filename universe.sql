--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    distance_from_earth integer,
    age_in_million_years integer,
    temperature numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    type character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    distance_from_earth integer,
    age_in_million_years integer,
    temperature numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    type character varying(20),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    distance_from_earth integer,
    age_in_million_years integer,
    temperature numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    type character varying(20),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    distance_from_earth integer,
    age_in_million_years integer,
    temperature numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    type character varying(20),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: star_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_types (
    star_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.star_types OWNER TO freecodecamp;

--
-- Name: star_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_types_id_seq OWNER TO freecodecamp;

--
-- Name: star_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_types_id_seq OWNED BY public.star_types.star_types_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star_types star_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types ALTER COLUMN star_types_id SET DEFAULT nextval('public.star_types_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 25, 1, 8000, 6500, 'nuestra galaxia', true, false, 'espiral');
INSERT INTO public.galaxy VALUES (2, 'andromeda', 45, 25, 9000, 5500, 'nuestra galaxia vecina', false, false, 'espiral');
INSERT INTO public.galaxy VALUES (3, 'galaxia1', 100, 200, 10000, 4500, 'otra galaxia', false, true, 'esferica');
INSERT INTO public.galaxy VALUES (4, 'galaxia2', 100, 200, 10000, 4500, 'otra galaxia', false, true, 'esferica');
INSERT INTO public.galaxy VALUES (5, 'galaxia3', 100, 200, 10000, 4500, 'otra galaxia', false, true, 'esferica');
INSERT INTO public.galaxy VALUES (6, 'galaxia4', 100, 200, 10000, 4500, 'otra galaxia', false, false, 'disco');


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'enana', 'galaxia enana');
INSERT INTO public.galaxy_types VALUES (2, 'media', 'galaxia mediana');
INSERT INTO public.galaxy_types VALUES (3, 'grande', 'galaxia grande');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 1, 4500, 1, 1, 'nuestra luna', false, true, 'luna rocosa', 1);
INSERT INTO public.moon VALUES (2, 'luna1', 10, 4500, 1, 1, 'luna de saturno', false, true, 'luna rocosa', 1);
INSERT INTO public.moon VALUES (3, 'luna2', 10, 4500, 1, 1, 'luna de saturno', false, true, 'luna rocosa', 1);
INSERT INTO public.moon VALUES (5, 'luna3', 10, 4500, 1, 1, 'luna de saturno', false, true, 'luna rocosa', 1);
INSERT INTO public.moon VALUES (6, 'luna4', 10, 4500, 1, 1, 'luna de saturno', false, true, 'luna rocosa', 1);
INSERT INTO public.moon VALUES (7, 'luna5', 10, 4500, 1, 1, 'luna de saturno', false, true, 'luna rocosa', 1);
INSERT INTO public.moon VALUES (8, 'luna6', 10, 4500, 1, 1, 'luna de saturno', false, true, 'luna rocosa', 1);
INSERT INTO public.moon VALUES (9, 'luna7', 10, 4500, 1, 1, 'luna de saturno', false, true, 'luna rocosa', 1);
INSERT INTO public.moon VALUES (10, 'luna8', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 7);
INSERT INTO public.moon VALUES (11, 'luna9', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 7);
INSERT INTO public.moon VALUES (12, 'luna10', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 7);
INSERT INTO public.moon VALUES (13, 'luna11', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 7);
INSERT INTO public.moon VALUES (14, 'luna12', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 7);
INSERT INTO public.moon VALUES (15, 'luna13', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 7);
INSERT INTO public.moon VALUES (16, 'luna14', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 7);
INSERT INTO public.moon VALUES (17, 'luna15', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 14);
INSERT INTO public.moon VALUES (18, 'luna16', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 14);
INSERT INTO public.moon VALUES (19, 'luna17', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 14);
INSERT INTO public.moon VALUES (20, 'luna18', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 14);
INSERT INTO public.moon VALUES (21, 'luna19', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 14);
INSERT INTO public.moon VALUES (22, 'luna20', 10, 4500, 1, 1, 'luna otra', false, true, 'luna rocosa', 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', 1, 1, 4500, 30, 'nuestro planeta', true, true, 'planeta rocoso', 1);
INSERT INTO public.planet VALUES (2, 'marte', 1, 2, 6500, 10, 'nuestro planeta vecino', false, true, 'planeta rocoso', 1);
INSERT INTO public.planet VALUES (3, 'mercurio', 1, 3, 3500, 1000, 'planeta sistema solar', false, true, 'planeta rocoso', 1);
INSERT INTO public.planet VALUES (4, 'venus', 1, 3, 4500, 500, 'planeta sistema solar', false, true, 'planeta rocoso', 1);
INSERT INTO public.planet VALUES (5, 'urano', 5, 6, 6500, 1, 'planeta sistema solar', false, true, 'planeta gaseoso', 1);
INSERT INTO public.planet VALUES (6, 'neptuno', 10, 12, 6500, 1, 'planeta sistema solar', false, true, 'planeta gaseoso', 1);
INSERT INTO public.planet VALUES (7, 'saturno', 100, 32, 6500, 1, 'planeta sistema solar', false, true, 'planeta gaseoso', 1);
INSERT INTO public.planet VALUES (8, 'jupiter', 200, 52, 6500, 1, 'planeta sistema solar', false, true, 'planeta gaseoso', 1);
INSERT INTO public.planet VALUES (9, 'pluton', 1, 152, 6500, 1, 'planeta sistema solar', false, true, 'planeta rocoso', 1);
INSERT INTO public.planet VALUES (10, 'exoplaneta2', 1, 1152, 6500, 1, 'planeta otro sistema', false, true, 'planeta rocoso', 2);
INSERT INTO public.planet VALUES (11, 'exoplaneta3', 1, 1152, 6500, 1, 'planeta otro sistema', false, true, 'planeta rocoso', 3);
INSERT INTO public.planet VALUES (12, 'exoplaneta4', 1, 1152, 6500, 1, 'planeta otro sistema', false, true, 'planeta rocoso', 4);
INSERT INTO public.planet VALUES (13, 'exoplaneta5', 1, 1152, 6500, 1, 'planeta otro sistema', false, true, 'planeta rocoso', 5);
INSERT INTO public.planet VALUES (14, 'exoplaneta6', 1, 1152, 6500, 1, 'planeta otro sistema', false, true, 'planeta rocoso', 6);
INSERT INTO public.planet VALUES (15, 'exoplaneta7', 1, 1152, 6500, 1, 'planeta otro sistema', false, true, 'planeta rocoso', 6);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'enano', 'planeta enano');
INSERT INTO public.planet_types VALUES (2, 'medio', 'planeta mediano');
INSERT INTO public.planet_types VALUES (3, 'grande', 'planeta grande');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'betlejuice', 50, 5, 9000, 7500, 'nuestra pesadilla', false, true, 'supernova', 1);
INSERT INTO public.star VALUES (3, 'proxima c', 10, 2, 8000, 6500, 'nuestra vecina', false, true, 'enana blanca', 1);
INSERT INTO public.star VALUES (4, 'estrela1', 25, 3, 8000, 6500, 'otra estrella', false, true, 'gigante roja', 2);
INSERT INTO public.star VALUES (5, 'estrela2', 200, 4, 8000, 6500, 'otra estrella', false, true, 'gigante roja', 3);
INSERT INTO public.star VALUES (6, 'estrela3', 200, 5, 8000, 6500, 'otra estrella', false, true, 'gigante roja', 5);
INSERT INTO public.star VALUES (1, 'sol', 1, 1, 5000, 5500, 'nuestra estrella', true, true, 'enana amarilla', 1);


--
-- Data for Name: star_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_types VALUES (1, 'enana', 'estrella enana');
INSERT INTO public.star_types VALUES (2, 'media', 'estrella mediana');
INSERT INTO public.star_types VALUES (3, 'grande', 'estrella grande');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 15, true);


--
-- Name: planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: star_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_types_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_types star_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_name_key UNIQUE (name);


--
-- Name: star_types star_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_pkey PRIMARY KEY (star_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

