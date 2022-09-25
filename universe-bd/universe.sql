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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    local_group boolean,
    type character varying(10) NOT NULL
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
    name character varying(50) NOT NULL,
    periapsis_km integer NOT NULL,
    rotational_period_in_days numeric(3,3),
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
    name character varying(50) NOT NULL,
    discovered character varying(50) NOT NULL,
    live_on_planet boolean,
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
    name character varying(50) NOT NULL,
    light_years_from_earth integer NOT NULL,
    discovered character varying(50) NOT NULL,
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
-- Name: сonstellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public."сonstellation" (
    "сonstellation_id" integer NOT NULL,
    name character varying(50) NOT NULL,
    bright_stars_st integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public."сonstellation" OWNER TO freecodecamp;

--
-- Name: сonstellation_сonstellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public."сonstellation_сonstellation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."сonstellation_сonstellation_id_seq" OWNER TO freecodecamp;

--
-- Name: сonstellation_сonstellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public."сonstellation_сonstellation_id_seq" OWNED BY public."сonstellation"."сonstellation_id";


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
-- Name: сonstellation сonstellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public."сonstellation" ALTER COLUMN "сonstellation_id" SET DEFAULT nextval('public."сonstellation_сonstellation_id_seq"'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that includes our Solar System', true, 'SBbc');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy is the nearest large galaxy to the Milky Way.', true, 'SA(s)b');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'The Triangulum Galaxy is a spiral galaxy in the constellation Triangulum.', true, 'SA(s)cd');
INSERT INTO public.galaxy VALUES (4, 'Tucana Dwarf', 'The Tucana Dwarf Galaxy is a dwarf galaxy in the constellation Tucana.', true, 'dE5');
INSERT INTO public.galaxy VALUES (5, 'Wolf–Lundmark–Melotte', 'The Wolf–Lundmark–Melotte is a barred irregular galaxy located on the outer edges of the Local Group.', true, 'IB(s)m');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'The Large Magellanic Cloud is a satellite galaxy of the Milky Way.', true, 'SB(s)m');
INSERT INTO public.galaxy VALUES (7, 'Dwingeloo 1', 'Dwingeloo 1 is a barred spiral galaxy in the constellation Cassiopeia.', false, 'SB(s)cd');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 362600, 0.500, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 664862, 0.500, 2);
INSERT INTO public.moon VALUES (3, 'Ganymede', 1069200, 0.100, 2);
INSERT INTO public.moon VALUES (4, 'Callisto', 1869000, 0.100, 2);
INSERT INTO public.moon VALUES (5, 'Phobos', 9234, 0.320, 5);
INSERT INTO public.moon VALUES (6, 'Deimos', 23455, 0.200, 5);
INSERT INTO public.moon VALUES (7, 'Titan', 1186680, 0.900, 6);
INSERT INTO public.moon VALUES (8, 'Enceladus', 237948, 0.370, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 527108, 0.520, 6);
INSERT INTO public.moon VALUES (10, 'Miranda', 129700, 0.410, 7);
INSERT INTO public.moon VALUES (11, 'Ariel', 191020, 0.500, 7);
INSERT INTO public.moon VALUES (12, 'Umbriel', 266000, 0.100, 7);
INSERT INTO public.moon VALUES (13, 'Titania', 435910, 0.710, 7);
INSERT INTO public.moon VALUES (14, 'Oberon', 583520, 0.460, 7);
INSERT INTO public.moon VALUES (15, 'Triton', 354759, 0.870, 8);
INSERT INTO public.moon VALUES (16, 'Nereid', 1353600, 0.460, 8);
INSERT INTO public.moon VALUES (17, 'Proteus', 117584, 0.100, 8);
INSERT INTO public.moon VALUES (18, 'Naiad', 48224, 0.400, 8);
INSERT INTO public.moon VALUES (19, 'Galatea', 79, NULL, 8);
INSERT INTO public.moon VALUES (20, 'Io', 420000, 0.700, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', '240 BC', true, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', '1610', false, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', '265 BC', false, 1);
INSERT INTO public.planet VALUES (4, 'Venus', '1610', false, 1);
INSERT INTO public.planet VALUES (5, 'Mars', '1610', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', '1610', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', '1781', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', '1846', false, 1);
INSERT INTO public.planet VALUES (9, 'Saffar', '1996', false, 2);
INSERT INTO public.planet VALUES (10, 'Samh', '1999', false, 2);
INSERT INTO public.planet VALUES (11, 'Majriti', '1999', false, 2);
INSERT INTO public.planet VALUES (12, 'Gliese 581d', '2007', false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, '450 BC', 1);
INSERT INTO public.star VALUES (2, 'Upsilon Andromedae', 44, '1996', 2);
INSERT INTO public.star VALUES (3, 'Gliese 581', 20, '2010', 1);
INSERT INTO public.star VALUES (4, 'VY Canis Majoris', 4892, '1801', 1);
INSERT INTO public.star VALUES (5, 'Mu Cephei', 2838, '1848', 1);
INSERT INTO public.star VALUES (6, 'WHO G64', 163100, '1970', 6);


--
-- Data for Name: сonstellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public."сonstellation" VALUES (1, 'Aries', 3, 1);
INSERT INTO public."сonstellation" VALUES (2, 'Capricornus', 1, 1);
INSERT INTO public."сonstellation" VALUES (3, 'Sagittarius', 7, 1);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: сonstellation_сonstellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public."сonstellation_сonstellation_id_seq"', 3, true);


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
-- Name: galaxy galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_key UNIQUE (type);


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
-- Name: сonstellation сonstellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public."сonstellation"
    ADD CONSTRAINT "сonstellation_name_key" UNIQUE (name);


--
-- Name: сonstellation сonstellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public."сonstellation"
    ADD CONSTRAINT "сonstellation_pkey" PRIMARY KEY ("сonstellation_id");


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
-- Name: сonstellation сonstellation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public."сonstellation"
    ADD CONSTRAINT "сonstellation_galaxy_id_fkey" FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
