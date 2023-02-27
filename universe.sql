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
    description text,
    name character varying(55) NOT NULL,
    column23 integer,
    rotation_speed integer DEFAULT 10000 NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    name_code character varying(255),
    has_water boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    has_life boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    distance_from_sun_in_million_km numeric NOT NULL,
    unique_colomn_star integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solarsystem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solarsystem (
    solarsystem_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    name character varying(255) NOT NULL,
    unique_solar_system integer
);


ALTER TABLE public.solarsystem OWNER TO freecodecamp;

--
-- Name: solarsystem_solarsystem_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solarsystem_solarsystem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solarsystem_solarsystem_id_seq OWNER TO freecodecamp;

--
-- Name: solarsystem_solarsystem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solarsystem_solarsystem_id_seq OWNED BY public.solarsystem.solarsystem_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(55) NOT NULL,
    color character varying(255) NOT NULL,
    distance_from_earth_in_light_years integer NOT NULL,
    unique_column integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solarsystem solarsystem_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem ALTER COLUMN solarsystem_id SET DEFAULT nextval('public.solarsystem_solarsystem_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, 'Andromeda', NULL, 10000);
INSERT INTO public.galaxy VALUES (2, NULL, 'Antennae Galaxy', NULL, 10000);
INSERT INTO public.galaxy VALUES (3, NULL, 'Backward Galaxy', NULL, 10000);
INSERT INTO public.galaxy VALUES (4, NULL, 'Balck Eye Galaxy', NULL, 10000);
INSERT INTO public.galaxy VALUES (5, NULL, 'Cigar Galaxy', NULL, 10000);
INSERT INTO public.galaxy VALUES (6, NULL, 'Comet Galaxy', NULL, 10000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon2', true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon3', true, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon4', true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'moon5', true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 'moon6', true, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 'moon7', true, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 'moon8', true, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 'moon9', true, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 'moon10', true, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 'moon11', true, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 'moon12', true, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 'moon13', true, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 'moon14', true, 12);
INSERT INTO public.moon VALUES (14, 'moon14', 'moon15', true, 12);
INSERT INTO public.moon VALUES (15, 'moon15', 'moon16', true, 12);
INSERT INTO public.moon VALUES (16, 'moon16', 'moon17', true, 12);
INSERT INTO public.moon VALUES (17, 'moon17', 'moon18', true, 12);
INSERT INTO public.moon VALUES (18, 'moon18', 'moon19', true, 12);
INSERT INTO public.moon VALUES (19, 'moon19', 'moon20', true, 12);
INSERT INTO public.moon VALUES (20, 'moon20', 'moon21', true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 148.01, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', false, 1, 243.98, NULL);
INSERT INTO public.planet VALUES (3, 'Mercury', false, 2, 68.639, NULL);
INSERT INTO public.planet VALUES (4, 'Venus', false, 2, 108.16, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 3, 740.73, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 3, 1416, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 4, 29404, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 4, 44734, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 5, 5909, NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 5, 413, NULL);
INSERT INTO public.planet VALUES (11, 'Eris', false, 6, 10125, NULL);
INSERT INTO public.planet VALUES (12, 'Haumea', false, 6, 6432, NULL);


--
-- Data for Name: solarsystem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solarsystem VALUES (1, 14253, 34675, 'solarsystem1', NULL);
INSERT INTO public.solarsystem VALUES (2, 142333, 2334675, 'solarsystem2', NULL);
INSERT INTO public.solarsystem VALUES (3, 142323, 2337675, 'solarsystem3', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'UY Scuti', 'red', 5219, NULL);
INSERT INTO public.star VALUES (2, 1, 'RMC 136a1', 'blue', 163000, NULL);
INSERT INTO public.star VALUES (3, 1, 'EBLM J0555-57Ab', 'yellow to white', 670, NULL);
INSERT INTO public.star VALUES (4, 1, 'WR 102', 'reddish yellow', 8480, NULL);
INSERT INTO public.star VALUES (5, 1, 'S5-HVS1', 'blue', 29000, NULL);
INSERT INTO public.star VALUES (6, 1, 'Sirius', 'blue-white', 9, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: solarsystem_solarsystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solarsystem_solarsystem_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_column23_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_column23_key UNIQUE (column23);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_colomn_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_colomn_star_key UNIQUE (unique_colomn_star);


--
-- Name: solarsystem solarsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_pkey PRIMARY KEY (solarsystem_id);


--
-- Name: solarsystem solarsystem_unique_solar_system_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solarsystem
    ADD CONSTRAINT solarsystem_unique_solar_system_key UNIQUE (unique_solar_system);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_column_key UNIQUE (unique_column);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

