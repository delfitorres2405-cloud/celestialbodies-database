--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    length_km integer,
    star_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_galaxy_earth_ly integer,
    galaxy_age_myr integer,
    galaxy_description text
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
    name character varying(40) NOT NULL,
    distance_moon_earth_ly integer,
    moon_age_myr integer,
    moon_radio_km numeric(6,2),
    has_atmosphere boolean,
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
    name character varying(40) NOT NULL,
    distance_planet_earth_ly integer,
    planet_age_myr integer,
    helium_presence boolean,
    star_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    distance_star_earth_ly integer,
    star_age_myr integer,
    galaxy_id integer NOT NULL
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Vesta', 525, 7);
INSERT INTO public.asteroid VALUES (2, 'Pallas', 512, 7);
INSERT INTO public.asteroid VALUES (3, 'Eros', 34, 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 26000, 13600, 'Galaxia espiral barrada donde se encuentra el sistema solar y a su vez la Tierra');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 10000, 'Galaxia espiral gigante y la más cercana a la Vía Láctea; se acercan y podrían fusionarse en miles de millones de años');
INSERT INTO public.galaxy VALUES (3, 'Gran Nube de Magallanes', 163000, 13000, 'Galaxia irregular que orbita la Vía Láctea; contiene regiones intensas de formación estelar');
INSERT INTO public.galaxy VALUES (4, 'Pequeña Nube de Magallanes', 200000, 13000, 'Galaxia enana irregular, también satélite de la Vía Láctea, rica en estrellas jóvenes y gas');
INSERT INTO public.galaxy VALUES (5, 'Galaxia del Triángulo', 2730000, 12000, 'Galaxia espiral mediana del Grupo Local, con alta actividad de formación de estrellas');
INSERT INTO public.galaxy VALUES (6, 'Galaxia del Sombrero', 29000000, 13000, 'Galaxia espiral vista de perfil, famosa por su brillante núcleo y su gran banda de polvo que le da forma de sombrero');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0, 4510, 1737.00, false, 13);
INSERT INTO public.moon VALUES (3, 'Fobos', 0, 4500, 11.00, false, 14);
INSERT INTO public.moon VALUES (4, 'Deimos', 0, 4500, 6.00, false, 14);
INSERT INTO public.moon VALUES (5, 'Ío', NULL, NULL, 1821.00, true, 15);
INSERT INTO public.moon VALUES (6, 'Europa', NULL, NULL, 1561.00, true, 15);
INSERT INTO public.moon VALUES (7, 'Ganimedes', NULL, NULL, 2634.00, true, 15);
INSERT INTO public.moon VALUES (8, 'Calisto', NULL, NULL, 2410.00, true, 15);
INSERT INTO public.moon VALUES (9, 'Titan', NULL, NULL, 2575.00, true, 16);
INSERT INTO public.moon VALUES (10, 'Encélado', NULL, NULL, 252.00, true, 16);
INSERT INTO public.moon VALUES (11, 'Rea', NULL, NULL, 764.00, false, 16);
INSERT INTO public.moon VALUES (12, 'Jápeto', NULL, NULL, 734.00, false, 16);
INSERT INTO public.moon VALUES (13, 'Dione', NULL, NULL, 561.00, true, 16);
INSERT INTO public.moon VALUES (14, 'Titania', NULL, NULL, 789.00, false, 17);
INSERT INTO public.moon VALUES (15, 'Ariel', NULL, NULL, 578.00, false, 17);
INSERT INTO public.moon VALUES (16, 'Tritón', NULL, NULL, 1353.00, true, 18);
INSERT INTO public.moon VALUES (17, 'Proteo', NULL, NULL, 210.00, false, 18);
INSERT INTO public.moon VALUES (18, 'Nereida', NULL, NULL, 170.00, false, 18);
INSERT INTO public.moon VALUES (19, 'Umbriel', NULL, NULL, 585.00, false, 17);
INSERT INTO public.moon VALUES (20, 'Miranda', 0, 4500, 236.00, false, 17);
INSERT INTO public.moon VALUES (21, 'Hiperión', 0, 4500, 135.00, false, 16);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Proxima Centauri b', 4, 4850, false, 1);
INSERT INTO public.planet VALUES (2, 'Proxima Centauri c', 4, 4850, true, 1);
INSERT INTO public.planet VALUES (3, 'Proxima Centauri d', 4, 4850, false, 1);
INSERT INTO public.planet VALUES (4, 'Sirio Ab', 9, 242, true, 2);
INSERT INTO public.planet VALUES (5, 'Sirio Ac', 9, 242, true, 2);
INSERT INTO public.planet VALUES (6, 'Sirio Ad', 9, 242, false, 2);
INSERT INTO public.planet VALUES (7, 'Sirio Ae', 9, 242, true, 2);
INSERT INTO public.planet VALUES (8, 'Sirio Af', 9, 242, false, 2);
INSERT INTO public.planet VALUES (9, 'Sirio Ag', 9, 242, true, 2);
INSERT INTO public.planet VALUES (10, 'Sirio Ah', 9, 242, false, 2);
INSERT INTO public.planet VALUES (11, 'Sirio Ai', 9, 242, true, 2);
INSERT INTO public.planet VALUES (12, 'Sirio Aj', 9, 242, true, 2);
INSERT INTO public.planet VALUES (13, 'Tierra', 0, 4543, true, 7);
INSERT INTO public.planet VALUES (14, 'Marte', 0, 4500, true, 7);
INSERT INTO public.planet VALUES (15, 'Jupiter', 0, 4500, true, 7);
INSERT INTO public.planet VALUES (16, 'Saturno', 0, 4500, true, 7);
INSERT INTO public.planet VALUES (17, 'Urano', 0, 4500, true, 7);
INSERT INTO public.planet VALUES (18, 'Neptuno', 0, 4500, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 4, 4850, 1);
INSERT INTO public.star VALUES (2, 'Sirio', 9, 242, 1);
INSERT INTO public.star VALUES (3, 'R136a1', 163000, 2, 3);
INSERT INTO public.star VALUES (4, 'Sk 183', 200000, 2, 4);
INSERT INTO public.star VALUES (5, 'V532 Tri', 2730000, 3, 5);
INSERT INTO public.star VALUES (6, 'NGC 4603-V1', 29000000, 30, 6);
INSERT INTO public.star VALUES (7, 'Sol', 0, 4600, 1);


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroids_asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

