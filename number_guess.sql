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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 10);
INSERT INTO public.games VALUES (2, 2, 213);
INSERT INTO public.games VALUES (3, 2, 663);
INSERT INTO public.games VALUES (4, 3, 408);
INSERT INTO public.games VALUES (5, 3, 763);
INSERT INTO public.games VALUES (6, 2, 437);
INSERT INTO public.games VALUES (7, 2, 279);
INSERT INTO public.games VALUES (8, 2, 410);
INSERT INTO public.games VALUES (9, 4, 11);
INSERT INTO public.games VALUES (10, 5, 881);
INSERT INTO public.games VALUES (11, 5, 325);
INSERT INTO public.games VALUES (12, 6, 586);
INSERT INTO public.games VALUES (13, 6, 509);
INSERT INTO public.games VALUES (14, 5, 418);
INSERT INTO public.games VALUES (15, 5, 779);
INSERT INTO public.games VALUES (16, 5, 745);
INSERT INTO public.games VALUES (17, 7, 106);
INSERT INTO public.games VALUES (18, 7, 204);
INSERT INTO public.games VALUES (19, 8, 264);
INSERT INTO public.games VALUES (20, 8, 105);
INSERT INTO public.games VALUES (21, 7, 95);
INSERT INTO public.games VALUES (22, 7, 793);
INSERT INTO public.games VALUES (23, 7, 998);
INSERT INTO public.games VALUES (24, 9, 799);
INSERT INTO public.games VALUES (25, 9, 792);
INSERT INTO public.games VALUES (26, 10, 775);
INSERT INTO public.games VALUES (27, 10, 597);
INSERT INTO public.games VALUES (28, 9, 185);
INSERT INTO public.games VALUES (29, 9, 490);
INSERT INTO public.games VALUES (30, 9, 544);
INSERT INTO public.games VALUES (31, 11, 139);
INSERT INTO public.games VALUES (32, 11, 486);
INSERT INTO public.games VALUES (33, 12, 103);
INSERT INTO public.games VALUES (34, 12, 199);
INSERT INTO public.games VALUES (35, 11, 870);
INSERT INTO public.games VALUES (36, 11, 926);
INSERT INTO public.games VALUES (37, 11, 187);
INSERT INTO public.games VALUES (38, 13, 85);
INSERT INTO public.games VALUES (39, 13, 677);
INSERT INTO public.games VALUES (40, 14, 7);
INSERT INTO public.games VALUES (41, 14, 515);
INSERT INTO public.games VALUES (42, 13, 417);
INSERT INTO public.games VALUES (43, 13, 766);
INSERT INTO public.games VALUES (44, 13, 539);
INSERT INTO public.games VALUES (45, 16, 267);
INSERT INTO public.games VALUES (46, 16, 562);
INSERT INTO public.games VALUES (47, 17, 845);
INSERT INTO public.games VALUES (48, 17, 653);
INSERT INTO public.games VALUES (49, 16, 329);
INSERT INTO public.games VALUES (50, 16, 790);
INSERT INTO public.games VALUES (51, 16, 52);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'muskan');
INSERT INTO public.users VALUES (2, 'user_1721200494871');
INSERT INTO public.users VALUES (3, 'user_1721200494870');
INSERT INTO public.users VALUES (4, 'eman');
INSERT INTO public.users VALUES (5, 'user_1721200782057');
INSERT INTO public.users VALUES (6, 'user_1721200782056');
INSERT INTO public.users VALUES (7, 'user_1721201846152');
INSERT INTO public.users VALUES (8, 'user_1721201846151');
INSERT INTO public.users VALUES (9, 'user_1721201905339');
INSERT INTO public.users VALUES (10, 'user_1721201905338');
INSERT INTO public.users VALUES (11, 'user_1721202023076');
INSERT INTO public.users VALUES (12, 'user_1721202023075');
INSERT INTO public.users VALUES (13, 'user_1721202110686');
INSERT INTO public.users VALUES (14, 'user_1721202110685');
INSERT INTO public.users VALUES (15, 'taha');
INSERT INTO public.users VALUES (16, 'user_1721202169712');
INSERT INTO public.users VALUES (17, 'user_1721202169711');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

