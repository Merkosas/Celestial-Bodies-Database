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

INSERT INTO public.moon VALUES (1, 1, 'Luna', 3474, 0, 0.073, 'rocky', true, true);
INSERT INTO public.moon VALUES (2, 2, 'Europa', 3121.6, 1560, 0.013, 'icy', false, true);
INSERT INTO public.moon VALUES (3, 3, 'Titan', 5150.0, 1378, 0.135, 'gaseous', true, false);
INSERT INTO public.moon VALUES (4, 4, 'Ganymede', 5262.4, 2631, 0.025, 'rocky', true, true);
INSERT INTO public.moon VALUES (5, 5, 'Callisto', 4820.6, 1880, 0.021, 'rocky', false, true);
INSERT INTO public.moon VALUES (6, 6, 'Io', 3642.6, 1821, 0.017, 'volcanic', true, false);
INSERT INTO public.moon VALUES (7, 1, 'Phobos', 22.4, 0, 0.0007, 'rocky', true, true);
INSERT INTO public.moon VALUES (8, 2, 'Deimos', 12.4, 0, 0.0003, 'rocky', false, true);
INSERT INTO public.moon VALUES (9, 3, 'Enceladus', 504.2, 0, 0.001, 'icy', true, false);
INSERT INTO public.moon VALUES (10, 4, 'Rhea', 1527.6, 0, 0.020, 'icy', true, true);
INSERT INTO public.moon VALUES (11, 5, 'Iapetus', 1469.0, 0, 0.011, 'rocky', false, true);
INSERT INTO public.moon VALUES (12, 6, 'Miranda', 471.6, 0, 0.0003, 'rocky', true, false);
INSERT INTO public.moon VALUES (13, 1, 'Triton', 2706.8, 0, 0.008, 'gaseous', true, true);
INSERT INTO public.moon VALUES (14, 2, 'Charon', 1212.0, 0, 0.003, 'rocky', false, true);
INSERT INTO public.moon VALUES (15, 3, 'Titania', 1577.8, 0, 0.007, 'icy', true, false);
INSERT INTO public.moon VALUES (16, 4, 'Oberon', 1522.8, 0, 0.007, 'rocky', true, true);
INSERT INTO public.moon VALUES (17, 5, 'Ariel', 1158.8, 0, 0.006, 'icy', false, true);
INSERT INTO public.moon VALUES (18, 6, 'Umbriel', 1169.4, 0, 0.006, 'icy', true, false);
INSERT INTO public.moon VALUES (19, 1, 'Ceres', 940, 0, 0.0009, 'rocky', true, true);
INSERT INTO public.moon VALUES (20, 2, 'Vesta', 525, 0, 0.0004, 'rocky', false, true);

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 4878, 0, 0.055, 'rocky', true, true);
INSERT INTO public.planet VALUES (2, 2, 'Venus', 12104, 0, 0.815, 'rocky', false, true);
INSERT INTO public.planet VALUES (3, 3, 'Earth', 12756, 0, 1.0, 'rocky', true, false);
INSERT INTO public.planet VALUES (4, 4, 'Mars', 6792, 0, 0.107, 'rocky', true, true);
INSERT INTO public.planet VALUES (5, 5, 'Jupiter', 142984, 0, 317.8, 'gaseous', false, true);
INSERT INTO public.planet VALUES (6, 6, 'Saturn', 120536, 0, 95.2, 'gaseous', true, false);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 50724, 0, 14.5, 'gaseous', true, true);
INSERT INTO public.planet VALUES (8, 2, 'Neptune', 49244, 0, 17.1, 'gaseous', false, true);
INSERT INTO public.planet VALUES (9, 3, 'Pluto', 2376, 0, 0.002, 'icy', true, false);
INSERT INTO public.planet VALUES (10, 4, 'Eris', 2326, 0, 0.002, 'icy', true, true);
INSERT INTO public.planet VALUES (11, 5, 'Haumea', 1960, 0, 0.0003, 'icy', false, true);
INSERT INTO public.planet VALUES (12, 6, 'Makemake', 1420, 0, 0.0002, 'icy', true, false);

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

