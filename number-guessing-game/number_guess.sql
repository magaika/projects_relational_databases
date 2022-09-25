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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    game_guesses integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(50) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 91, 1);
INSERT INTO public.games VALUES (2, 707, 1);
INSERT INTO public.games VALUES (3, 467, 2);
INSERT INTO public.games VALUES (4, 445, 2);
INSERT INTO public.games VALUES (5, 687, 1);
INSERT INTO public.games VALUES (6, 682, 1);
INSERT INTO public.games VALUES (7, 545, 1);
INSERT INTO public.games VALUES (8, 257, 4);
INSERT INTO public.games VALUES (9, 553, 4);
INSERT INTO public.games VALUES (10, 628, 5);
INSERT INTO public.games VALUES (11, 116, 5);
INSERT INTO public.games VALUES (12, 477, 4);
INSERT INTO public.games VALUES (13, 423, 4);
INSERT INTO public.games VALUES (14, 739, 4);
INSERT INTO public.games VALUES (15, 52, 6);
INSERT INTO public.games VALUES (16, 28, 6);
INSERT INTO public.games VALUES (17, 274, 7);
INSERT INTO public.games VALUES (18, 999, 7);
INSERT INTO public.games VALUES (19, 928, 6);
INSERT INTO public.games VALUES (20, 806, 6);
INSERT INTO public.games VALUES (21, 895, 6);
INSERT INTO public.games VALUES (22, 556, 8);
INSERT INTO public.games VALUES (23, 796, 8);
INSERT INTO public.games VALUES (24, 102, 9);
INSERT INTO public.games VALUES (25, 189, 9);
INSERT INTO public.games VALUES (26, 722, 8);
INSERT INTO public.games VALUES (27, 112, 8);
INSERT INTO public.games VALUES (28, 513, 8);
INSERT INTO public.games VALUES (29, 599, 10);
INSERT INTO public.games VALUES (30, 224, 10);
INSERT INTO public.games VALUES (31, 476, 11);
INSERT INTO public.games VALUES (32, 21, 11);
INSERT INTO public.games VALUES (33, 610, 10);
INSERT INTO public.games VALUES (34, 939, 10);
INSERT INTO public.games VALUES (35, 402, 10);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1663998607817');
INSERT INTO public.users VALUES (2, 'user_1663998607816');
INSERT INTO public.users VALUES (3, 'dan');
INSERT INTO public.users VALUES (4, 'user_1663998752636');
INSERT INTO public.users VALUES (5, 'user_1663998752635');
INSERT INTO public.users VALUES (6, 'user_1663998808725');
INSERT INTO public.users VALUES (7, 'user_1663998808724');
INSERT INTO public.users VALUES (8, 'user_1663998951643');
INSERT INTO public.users VALUES (9, 'user_1663998951642');
INSERT INTO public.users VALUES (10, 'user_1663999078357');
INSERT INTO public.users VALUES (11, 'user_1663999078356');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

