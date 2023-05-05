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
    name character varying(60),
    ga_has_life integer NOT NULL,
    distance_from_earth_ly numeric(2,1),
    description text,
    is_spherical boolean,
    star_id integer
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
-- Name: junktable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.junktable (
    junktable_id integer NOT NULL,
    name character varying(60) NOT NULL,
    year integer
);


ALTER TABLE public.junktable OWNER TO freecodecamp;

--
-- Name: junktable_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.junktable_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.junktable_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: junktable_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.junktable_galaxy_id_seq OWNED BY public.junktable.junktable_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    mn_has_life integer,
    planet_id integer,
    mn_distance_from_earth integer
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
    name character varying(60) NOT NULL,
    pt_has_life integer,
    is_spherical boolean,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    st_has_life integer,
    galaxy_id integer NOT NULL,
    year integer
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
-- Name: junktable junktable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junktable ALTER COLUMN junktable_id SET DEFAULT nextval('public.junktable_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'yinhexi', 34342, 2.1, NULL, true, 1);
INSERT INTO public.galaxy VALUES (2, 'tianmaxi', 48493, 4.2, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'g3', 8503, 7.2, NULL, false, 3);
INSERT INTO public.galaxy VALUES (4, 'g4', 8055, 5.1, NULL, true, 4);
INSERT INTO public.galaxy VALUES (5, 'g5', 8640, 2.5, NULL, false, 5);
INSERT INTO public.galaxy VALUES (6, 'g6', 5834, 5.8, NULL, true, 6);


--
-- Data for Name: junktable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.junktable VALUES (1, 'j1', NULL);
INSERT INTO public.junktable VALUES (2, 'j2', NULL);
INSERT INTO public.junktable VALUES (3, 'j3', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'yuel', 5522, 1, NULL);
INSERT INTO public.moon VALUES (2, 'm2', 4452, 2, NULL);
INSERT INTO public.moon VALUES (3, 'm3', 5625, 3, NULL);
INSERT INTO public.moon VALUES (4, 'm4', 4571, 22, NULL);
INSERT INTO public.moon VALUES (5, 'm5', 7897, 23, NULL);
INSERT INTO public.moon VALUES (6, 'm6', 2047, 24, NULL);
INSERT INTO public.moon VALUES (7, 'm7', 8741, 25, NULL);
INSERT INTO public.moon VALUES (8, 'm8', 2457, 26, NULL);
INSERT INTO public.moon VALUES (9, 'm9', 4421, 27, NULL);
INSERT INTO public.moon VALUES (10, 'm10', 4732, 28, NULL);
INSERT INTO public.moon VALUES (11, 'm11', 4371, 22, NULL);
INSERT INTO public.moon VALUES (12, 'm12', 1897, 2, NULL);
INSERT INTO public.moon VALUES (13, 'm13', 2847, 24, NULL);
INSERT INTO public.moon VALUES (14, 'm14', 6841, 3, NULL);
INSERT INTO public.moon VALUES (15, 'm15', 9057, 26, NULL);
INSERT INTO public.moon VALUES (16, 'm16', 441, 27, NULL);
INSERT INTO public.moon VALUES (17, 'm17', 4763, 28, NULL);
INSERT INTO public.moon VALUES (18, 'm18', 9942, 2, NULL);
INSERT INTO public.moon VALUES (19, 'm19', 5884, 3, NULL);
INSERT INTO public.moon VALUES (20, 'm20', 8741, 27, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'diqiu', 4893, true, 1);
INSERT INTO public.planet VALUES (2, 'd2', 9595, true, 3);
INSERT INTO public.planet VALUES (3, 'p3', 56345, false, 4);
INSERT INTO public.planet VALUES (22, 'p4', 5532, false, 3);
INSERT INTO public.planet VALUES (23, 'p5', 4564, true, 5);
INSERT INTO public.planet VALUES (24, 'p6', 7845, true, 6);
INSERT INTO public.planet VALUES (25, 'p7', 4567, true, 7);
INSERT INTO public.planet VALUES (26, 'p8', 4512, false, 4);
INSERT INTO public.planet VALUES (27, 'p9', 4234, true, 7);
INSERT INTO public.planet VALUES (28, 'p10', 2375, false, 3);
INSERT INTO public.planet VALUES (29, 'p11', 4524, true, 4);
INSERT INTO public.planet VALUES (30, 'p12', 7941, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'x1', 4432, 1, NULL);
INSERT INTO public.star VALUES (3, 'x2', 5342, 1, NULL);
INSERT INTO public.star VALUES (4, 's3', 5424, 3, NULL);
INSERT INTO public.star VALUES (5, 's4', 5823, 2, NULL);
INSERT INTO public.star VALUES (6, 's5', 4572, 4, NULL);
INSERT INTO public.star VALUES (7, 's6', 7821, 5, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: junktable_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.junktable_galaxy_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 30, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: junktable junktable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junktable
    ADD CONSTRAINT junktable_pkey PRIMARY KEY (junktable_id);


--
-- Name: junktable junktable_year_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junktable
    ADD CONSTRAINT junktable_year_key UNIQUE (year);


--
-- Name: moon moon_mn_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_mn_distance_from_earth_key UNIQUE (mn_distance_from_earth);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_year_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_year_key UNIQUE (year);


--
-- Name: galaxy uniq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniq_name UNIQUE (name);


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

