--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    number_of_steps integer NOT NULL
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
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (300, 0, 600);
INSERT INTO public.games VALUES (301, 194, 140);
INSERT INTO public.games VALUES (302, 0, 870);
INSERT INTO public.games VALUES (303, 195, 568);
INSERT INTO public.games VALUES (304, 194, 370);
INSERT INTO public.games VALUES (305, 194, 536);
INSERT INTO public.games VALUES (306, 194, 194);
INSERT INTO public.games VALUES (307, 0, 892);
INSERT INTO public.games VALUES (308, 196, 823);
INSERT INTO public.games VALUES (309, 0, 100);
INSERT INTO public.games VALUES (310, 197, 832);
INSERT INTO public.games VALUES (311, 196, 79);
INSERT INTO public.games VALUES (312, 196, 1002);
INSERT INTO public.games VALUES (313, 196, 974);
INSERT INTO public.games VALUES (314, 0, 11);
INSERT INTO public.games VALUES (315, 0, 141);
INSERT INTO public.games VALUES (316, 199, 422);
INSERT INTO public.games VALUES (317, 0, 410);
INSERT INTO public.games VALUES (318, 200, 586);
INSERT INTO public.games VALUES (319, 199, 961);
INSERT INTO public.games VALUES (320, 199, 449);
INSERT INTO public.games VALUES (321, 199, 93);
INSERT INTO public.games VALUES (322, 0, 167);
INSERT INTO public.games VALUES (323, 201, 713);
INSERT INTO public.games VALUES (324, 0, 623);
INSERT INTO public.games VALUES (325, 202, 3);
INSERT INTO public.games VALUES (326, 201, 152);
INSERT INTO public.games VALUES (327, 201, 434);
INSERT INTO public.games VALUES (328, 201, 297);
INSERT INTO public.games VALUES (329, 203, 286);
INSERT INTO public.games VALUES (330, 203, 661);
INSERT INTO public.games VALUES (331, 204, 277);
INSERT INTO public.games VALUES (332, 204, 302);
INSERT INTO public.games VALUES (333, 203, 649);
INSERT INTO public.games VALUES (334, 203, 810);
INSERT INTO public.games VALUES (335, 203, 17);
INSERT INTO public.games VALUES (336, 205, 876);
INSERT INTO public.games VALUES (337, 205, 495);
INSERT INTO public.games VALUES (338, 206, 159);
INSERT INTO public.games VALUES (339, 206, 534);
INSERT INTO public.games VALUES (340, 205, 236);
INSERT INTO public.games VALUES (341, 205, 917);
INSERT INTO public.games VALUES (342, 205, 741);
INSERT INTO public.games VALUES (343, 207, 428);
INSERT INTO public.games VALUES (344, 207, 646);
INSERT INTO public.games VALUES (345, 208, 520);
INSERT INTO public.games VALUES (346, 208, 650);
INSERT INTO public.games VALUES (347, 207, 571);
INSERT INTO public.games VALUES (348, 207, 507);
INSERT INTO public.games VALUES (349, 207, 331);
INSERT INTO public.games VALUES (350, 209, 617);
INSERT INTO public.games VALUES (351, 209, 33);
INSERT INTO public.games VALUES (352, 210, 288);
INSERT INTO public.games VALUES (353, 210, 335);
INSERT INTO public.games VALUES (354, 209, 321);
INSERT INTO public.games VALUES (355, 209, 369);
INSERT INTO public.games VALUES (356, 209, 121);
INSERT INTO public.games VALUES (357, 211, 797);
INSERT INTO public.games VALUES (358, 211, 669);
INSERT INTO public.games VALUES (359, 212, 379);
INSERT INTO public.games VALUES (360, 212, 216);
INSERT INTO public.games VALUES (361, 211, 145);
INSERT INTO public.games VALUES (362, 211, 531);
INSERT INTO public.games VALUES (363, 211, 790);
INSERT INTO public.games VALUES (364, 213, 20);
INSERT INTO public.games VALUES (365, 213, 837);
INSERT INTO public.games VALUES (366, 214, 239);
INSERT INTO public.games VALUES (367, 214, 113);
INSERT INTO public.games VALUES (368, 213, 273);
INSERT INTO public.games VALUES (369, 213, 920);
INSERT INTO public.games VALUES (370, 213, 416);
INSERT INTO public.games VALUES (371, 215, 89);
INSERT INTO public.games VALUES (372, 215, 178);
INSERT INTO public.games VALUES (373, 216, 573);
INSERT INTO public.games VALUES (374, 216, 321);
INSERT INTO public.games VALUES (375, 215, 683);
INSERT INTO public.games VALUES (376, 215, 45);
INSERT INTO public.games VALUES (377, 215, 417);
INSERT INTO public.games VALUES (378, 217, 155);
INSERT INTO public.games VALUES (379, 217, 408);
INSERT INTO public.games VALUES (380, 218, 132);
INSERT INTO public.games VALUES (381, 218, 436);
INSERT INTO public.games VALUES (382, 217, 811);
INSERT INTO public.games VALUES (383, 217, 866);
INSERT INTO public.games VALUES (384, 217, 848);
INSERT INTO public.games VALUES (385, 223, 353);
INSERT INTO public.games VALUES (386, 223, 153);
INSERT INTO public.games VALUES (387, 224, 377);
INSERT INTO public.games VALUES (388, 224, 410);
INSERT INTO public.games VALUES (389, 223, 931);
INSERT INTO public.games VALUES (390, 223, 203);
INSERT INTO public.games VALUES (391, 223, 434);
INSERT INTO public.games VALUES (392, 225, 356);
INSERT INTO public.games VALUES (393, 225, 336);
INSERT INTO public.games VALUES (394, 226, 89);
INSERT INTO public.games VALUES (395, 226, 66);
INSERT INTO public.games VALUES (396, 225, 538);
INSERT INTO public.games VALUES (397, 225, 743);
INSERT INTO public.games VALUES (398, 225, 750);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (194, 'user_1693067388902');
INSERT INTO public.users VALUES (195, 'user_1693067388901');
INSERT INTO public.users VALUES (196, 'user_1693070842390');
INSERT INTO public.users VALUES (197, 'user_1693070842389');
INSERT INTO public.users VALUES (198, 'serhii');
INSERT INTO public.users VALUES (199, 'user_1693071468803');
INSERT INTO public.users VALUES (200, 'user_1693071468802');
INSERT INTO public.users VALUES (201, 'user_1693071661370');
INSERT INTO public.users VALUES (202, 'user_1693071661369');
INSERT INTO public.users VALUES (203, 'user_1693071677108');
INSERT INTO public.users VALUES (204, 'user_1693071677107');
INSERT INTO public.users VALUES (205, 'user_1693071693244');
INSERT INTO public.users VALUES (206, 'user_1693071693243');
INSERT INTO public.users VALUES (207, 'user_1693071709400');
INSERT INTO public.users VALUES (208, 'user_1693071709399');
INSERT INTO public.users VALUES (209, 'user_1693071713375');
INSERT INTO public.users VALUES (210, 'user_1693071713374');
INSERT INTO public.users VALUES (211, 'user_1693071725057');
INSERT INTO public.users VALUES (212, 'user_1693071725056');
INSERT INTO public.users VALUES (213, 'user_1693071777205');
INSERT INTO public.users VALUES (214, 'user_1693071777204');
INSERT INTO public.users VALUES (215, 'user_1693071787022');
INSERT INTO public.users VALUES (216, 'user_1693071787021');
INSERT INTO public.users VALUES (217, 'user_1693071813286');
INSERT INTO public.users VALUES (218, 'user_1693071813285');
INSERT INTO public.users VALUES (219, 'user_1693072047333');
INSERT INTO public.users VALUES (220, 'user_1693072047332');
INSERT INTO public.users VALUES (221, 'user_1693072061054');
INSERT INTO public.users VALUES (222, 'user_1693072061053');
INSERT INTO public.users VALUES (223, 'user_1693072126458');
INSERT INTO public.users VALUES (224, 'user_1693072126457');
INSERT INTO public.users VALUES (225, 'user_1693072157669');
INSERT INTO public.users VALUES (226, 'user_1693072157668');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 398, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 226, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

