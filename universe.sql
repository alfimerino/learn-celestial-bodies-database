--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: commet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.commet (
    commet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_pherical boolean,
    has_life boolean,
    planet_count numeric,
    moon_count integer,
    commet_count integer,
    knickname text
);


ALTER TABLE public.commet OWNER TO freecodecamp;

--
-- Name: commet_commet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.commet_commet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commet_commet_id_seq OWNER TO freecodecamp;

--
-- Name: commet_commet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.commet_commet_id_seq OWNED BY public.commet.commet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_pherical boolean,
    has_life boolean,
    star_count numeric,
    planet_count integer,
    commet_count integer,
    knickname text
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
    name character varying(30) NOT NULL,
    is_pherical boolean,
    has_life boolean,
    population_count numeric,
    crater_count integer,
    commet_count integer,
    knickname text,
    planet_id integer
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
    name character varying(30) NOT NULL,
    is_pherical boolean,
    has_life boolean,
    population_count numeric,
    moon_count integer,
    commet_count integer,
    knickname text,
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
    name character varying(30) NOT NULL,
    is_pherical boolean,
    has_life boolean,
    planet_count numeric,
    moon_count integer,
    commet_count integer,
    knickname text,
    galaxy_id integer
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
-- Name: commet commet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet ALTER COLUMN commet_id SET DEFAULT nextval('public.commet_commet_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: commet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.commet VALUES (1, 'THING', true, true, 33, 234, 33, 'OCHO');
INSERT INTO public.commet VALUES (2, 'G', true, true, 33, 234, 33, 'O');
INSERT INTO public.commet VALUES (3, 'ADFADSF', true, true, 33, 234, 33, 'ASDLK');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', true, false, 100000, 1000, 5000, 'The Milky Way Neighbor');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', true, true, 200000, 2000, 8000, 'Our Home Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', true, false, 50000, 500, 3000, 'The Third Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', false, false, 75000, 700, 4000, 'A Vortex of Stars');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', true, true, 150000, 1500, 7000, 'The Hat Galaxy');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', true, true, 120000, 1200, 6000, 'The Starry Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', true, false, 0, 300, 10, 'The Moon', 1);
INSERT INTO public.moon VALUES (22, 'Phobos', false, false, 0, 200, 5, 'The Martian Moon', 2);
INSERT INTO public.moon VALUES (23, 'Deimos', false, false, 0, 150, 3, 'The Smaller Martian Moon', 2);
INSERT INTO public.moon VALUES (24, 'Europa', true, true, 0, 50, 20, 'The Ice Moon', 3);
INSERT INTO public.moon VALUES (25, 'Io', true, false, 0, 400, 80, 'The Volcanic Moon', 4);
INSERT INTO public.moon VALUES (26, 'Ganymede', true, false, 0, 150, 25, 'The Largest Moon', 4);
INSERT INTO public.moon VALUES (27, 'Callisto', true, false, 0, 100, 15, 'The Cratered Moon', 4);
INSERT INTO public.moon VALUES (28, 'Titan', true, true, 0, 500, 100, 'The Giant Moon', 5);
INSERT INTO public.moon VALUES (29, 'Rhea', true, false, 0, 150, 30, 'The Icy Moon', 5);
INSERT INTO public.moon VALUES (30, 'Triton', true, false, 0, 100, 25, 'The Retrograde Moon', 6);
INSERT INTO public.moon VALUES (31, 'Miranda', true, false, 0, 80, 10, 'The Tidal Moon', 6);
INSERT INTO public.moon VALUES (32, 'Ariel', true, false, 0, 200, 15, 'The Water-rich Moon', 6);
INSERT INTO public.moon VALUES (33, 'Umbriel', true, false, 0, 120, 12, 'The Dark Moon', 6);
INSERT INTO public.moon VALUES (34, 'Titania', true, false, 0, 180, 20, 'The Largest Moon of Uranus', 6);
INSERT INTO public.moon VALUES (35, 'Enceladus', true, true, 0, 60, 5, 'The Water-spewing Moon', 5);
INSERT INTO public.moon VALUES (36, 'Mimas', true, false, 0, 50, 7, 'The Death Star Moon', 5);
INSERT INTO public.moon VALUES (37, 'Phoebe', true, false, 0, 40, 10, 'The Irregular Moon', 5);
INSERT INTO public.moon VALUES (38, 'Charon', true, false, 0, 50, 5, 'The Moon of Pluto', 4);
INSERT INTO public.moon VALUES (39, 'Haumea', true, false, 0, 120, 8, 'The Elliptical Moon', 4);
INSERT INTO public.moon VALUES (40, 'Makemake', true, false, 0, 150, 6, 'The Distant Moon', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 8000000000, 1, 100, 'Home of Humanity', 1);
INSERT INTO public.planet VALUES (2, 'Mars', true, false, 0, 2, 50, 'The Red Planet', 2);
INSERT INTO public.planet VALUES (3, 'Venus', true, false, 0, 0, 10, 'The Hottest Planet', 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', true, false, 0, 79, 200, 'The Gas Giant', 4);
INSERT INTO public.planet VALUES (5, 'Saturn', true, false, 0, 82, 150, 'The Ringed Planet', 5);
INSERT INTO public.planet VALUES (6, 'Neptune', true, false, 0, 14, 30, 'The Cold Blue Planet', 6);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', true, true, 0, 2, 15, 'The Earth-like Planet', 1);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', true, true, 0, 3, 25, 'The Habitable Zone Planet', 2);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', true, false, 0, 1, 5, 'The Hot Jupiter', 3);
INSERT INTO public.planet VALUES (12, 'WASP-12b', true, false, 0, 0, 12, 'The Dying Planet', 4);
INSERT INTO public.planet VALUES (13, '55 Cancri e', true, false, 0, 0, 8, 'The Diamond Planet', 5);
INSERT INTO public.planet VALUES (14, 'Proxima b', true, true, 0, 1, 10, 'The Closest Exoplanet', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri', true, true, 5, 12, 50, 'Our Nearest Star', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', false, false, 3, 8, 20, 'The Red Giant', 2);
INSERT INTO public.star VALUES (3, 'Sirius', true, true, 10, 15, 100, 'The Dog Star', 3);
INSERT INTO public.star VALUES (4, 'Vega', true, false, 8, 10, 30, 'The Harbinger', 4);
INSERT INTO public.star VALUES (5, 'Rigel', false, true, 6, 14, 60, 'The Blue Supergiant', 5);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', true, false, 2, 5, 10, 'The Closest Neighbor', 1);


--
-- Name: commet_commet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.commet_commet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: commet commet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_name_key UNIQUE (name);


--
-- Name: commet commet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_pkey PRIMARY KEY (commet_id);


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

