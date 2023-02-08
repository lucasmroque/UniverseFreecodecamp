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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(40) NOT NULL,
    comments text
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_1 integer,
    distance_2 integer,
    comments text,
    fcol integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    comments text,
    distance_1 numeric,
    distance_2 numeric,
    fcol integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    wateryn boolean,
    atmyn boolean,
    comments text,
    fcol integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_1 integer,
    distance_2 integer,
    comment text,
    starcode numeric,
    fcol integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'sea', NULL);
INSERT INTO public.earth VALUES (2, 'land', NULL);
INSERT INTO public.earth VALUES (3, 'desert', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'earth', 1000, 2000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'mars', 3000, 4000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'jupiter', 5000, 6000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'neptuno', 7000, 8000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'saturn', 9000, 10000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'venus', 11000, 12000, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'thing', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'thing', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'earth', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'mars', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'jupiter', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'earth4', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'mars4', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'jupiter4', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'earth5', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'mars5', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'jupiter5', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'earth6', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'mars6', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'earth1', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'mars1', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'jupiter1', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'earth2', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'mars2', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'jupiter2', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'earth3', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'mars3', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'jupiter3', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'mars', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'jupiter', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'earth1', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'mars1', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'jupiter1', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'earth2', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'mars2', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'jupiter2', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'earth3', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'mars3', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'jupiter3', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'earth4', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'mars4', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'jupiter4', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'earth5', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'mars5', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'jupiter5', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'earth6', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'mars6', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (15, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (16, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (17, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (18, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 'thing', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (1, 'thing', NULL, NULL, NULL, NULL, NULL);


--
-- Name: earth earth_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_celestial_id_key UNIQUE (earth_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_celestial_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_fcol_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_fcol_key UNIQUE (fcol);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_celestial_id_key UNIQUE (moon_id);


--
-- Name: moon moon_fcol_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fcol_key UNIQUE (fcol);


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
-- Name: planet planet_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_celestial_id_key UNIQUE (planet_id);


--
-- Name: planet planet_fcol_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fcol_key UNIQUE (fcol);


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
-- Name: star star_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_celestial_id_key UNIQUE (star_id);


--
-- Name: star star_fcol_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fcol_key UNIQUE (fcol);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_fcol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_fcol_fkey FOREIGN KEY (fcol) REFERENCES public.star(fcol);


--
-- Name: moon moon_fcol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fcol_fkey FOREIGN KEY (fcol) REFERENCES public.planet(fcol);


--
-- Name: moon moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet planet_fcol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fcol_fkey FOREIGN KEY (fcol) REFERENCES public.star(fcol);


--
-- Name: star star_fcol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fcol_fkey FOREIGN KEY (fcol) REFERENCES public.galaxy(fcol);


--
-- PostgreSQL database dump complete
--

