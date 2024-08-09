--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age numeric,
    has_life boolean,
    area bigint,
    volume bigint,
    material text,
    has_water boolean
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    object_id integer,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_space_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_space_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_space_station_id_seq OWNED BY public.space_station.space_station_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
-- Name: space_station space_station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN space_station_id SET DEFAULT nextval('public.space_station_space_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our galaxy', 13600, true, 500, 750, 'solid', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest galaxy', 10000, false, 500, 750, 'solid', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small galaxy', 9000, false, 500, 750, 'solid', true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'A famous spiral galaxy', 8000, false, 500, 750, 'solid', true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'A galaxy with a large central bulge', 11000, false, 500, 750, 'solid', true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Large galaxy with extensive arms', 7000, false, 500, 750, 'solid', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'moon1', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (2, 2, 'moon2', 600, 850, 1600.50, 'gaseous', false, true);
INSERT INTO public.moon VALUES (3, 3, 'moon3', 700, 950, 1700.25, 'liquid', true, false);
INSERT INTO public.moon VALUES (4, 4, 'moon4', 800, 1050, 1800.00, 'solid', true, true);
INSERT INTO public.moon VALUES (5, 5, 'moon5', 900, 1150, 1900.75, 'solid', false, true);
INSERT INTO public.moon VALUES (6, 6, 'moon6', 1000, 1250, 2000.50, 'gaseous', true, false);
INSERT INTO public.moon VALUES (7, 1, 'moon7', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (8, 2, 'moon8', 600, 850, 1600.50, 'gaseous', false, true);
INSERT INTO public.moon VALUES (9, 3, 'moon9', 700, 950, 1700.25, 'liquid', true, false);
INSERT INTO public.moon VALUES (10, 4, 'moon10', 800, 1050, 1800.00, 'solid', true, true);
INSERT INTO public.moon VALUES (11, 5, 'moon11', 900, 1150, 1900.75, 'solid', false, true);
INSERT INTO public.moon VALUES (12, 6, 'moon12', 1000, 1250, 2000.50, 'gaseous', true, false);
INSERT INTO public.moon VALUES (13, 1, 'moon13', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (14, 2, 'moon14', 600, 850, 1600.50, 'gaseous', false, true);
INSERT INTO public.moon VALUES (15, 3, 'moon15', 700, 950, 1700.25, 'liquid', true, false);
INSERT INTO public.moon VALUES (16, 4, 'moon16', 800, 1050, 1800.00, 'solid', true, true);
INSERT INTO public.moon VALUES (17, 5, 'moon17', 900, 1150, 1900.75, 'solid', false, true);
INSERT INTO public.moon VALUES (18, 6, 'moon18', 1000, 1250, 2000.50, 'gaseous', true, false);
INSERT INTO public.moon VALUES (19, 1, 'moon19', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.moon VALUES (20, 2, 'moon20', 600, 850, 1600.50, 'gaseous', false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'planet1', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (2, 2, 'planet2', 600, 850, 1600.50, 'gaseous', false, true);
INSERT INTO public.planet VALUES (3, 3, 'planet3', 700, 950, 1700.25, 'liquid', true, false);
INSERT INTO public.planet VALUES (4, 4, 'planet4', 800, 1050, 1800.00, 'solid', true, true);
INSERT INTO public.planet VALUES (5, 5, 'planet5', 900, 1150, 1900.75, 'solid', false, true);
INSERT INTO public.planet VALUES (6, 6, 'planet6', 1000, 1250, 2000.50, 'gaseous', true, false);
INSERT INTO public.planet VALUES (7, 1, 'planet7', 500, 750, 1500.75, 'solid', true, true);
INSERT INTO public.planet VALUES (8, 2, 'planet8', 600, 850, 1600.50, 'gaseous', false, true);
INSERT INTO public.planet VALUES (9, 3, 'planet9', 700, 950, 1700.25, 'liquid', true, false);
INSERT INTO public.planet VALUES (10, 4, 'planet10', 800, 1050, 1800.00, 'solid', true, true);
INSERT INTO public.planet VALUES (11, 5, 'planet11', 900, 1150, 1900.75, 'solid', false, true);
INSERT INTO public.planet VALUES (12, 6, 'planet12', 1000, 1250, 2000.50, 'gaseous', true, false);


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 1, 'ISS', 'A habitable space station in low Earth orbit.');
INSERT INTO public.space_station VALUES (2, NULL, 'Tiangong', 'A Chinese space station.');
INSERT INTO public.space_station VALUES (3, NULL, 'Lunar Gateway', 'A planned space station in lunar orbit.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 500, 750, 4600, 'plasma', true, true);
INSERT INTO public.star VALUES (2, 2, 'Proxima Centauri', 500, 750, 4500, 'plasma', true, true);
INSERT INTO public.star VALUES (3, 3, 'Alpha Centauri', 500, 750, 4600, 'plasma', true, true);
INSERT INTO public.star VALUES (4, 4, 'Betelgeuse', 500, 750, 8500, 'plasma', true, true);
INSERT INTO public.star VALUES (5, 5, 'Sirius', 500, 750, 3000, 'plasma', true, true);
INSERT INTO public.star VALUES (6, 6, 'Vega', 500, 750, 4550, 'plasma', true, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_space_station_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: space_station space_station_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_name_key UNIQUE (name);


--
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (space_station_id);


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

