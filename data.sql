--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _libro_hoja1; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._libro_hoja1 (
    "organización" character varying(26) DEFAULT NULL::character varying,
    logo character varying(104) DEFAULT NULL::character varying,
    programa character varying(21) DEFAULT NULL::character varying,
    "descripción" character varying(69) DEFAULT NULL::character varying,
    donar character varying(214) DEFAULT NULL::character varying
);


ALTER TABLE public._libro_hoja1 OWNER TO rebasedata;

--
-- Data for Name: _libro_hoja1; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._libro_hoja1 ("organización", logo, programa, "descripción", donar) FROM stdin;
Team Seas	https://assets01.teamassets.net/assets/images/teamseas-tm-logo.png	#TeamSeas	Limpieza del Océano. 1 Dólar donado = 1 libra de basura que se limpia	https://teamseas.org/
Earth League International	https://earthleagueinternational.org/wp-content/uploads/2020/04/earth-league-international.png	Operación Fake Gold	Detener la cadena de suministro ilegal de Totoaba de México a China	https://earthleagueinternational.org/donate/
The Ocean Clean Up	https://es.wikipedia.org/wiki/Fundaci%C3%B3n_The_Ocean_Cleanup#/media/Archivo:The_Ocean_Cleanup_logo.svg	The Ocean Clean Up	Limpieza del Océano. 	https://theoceancleanup.com/donate/
Oceana	https://mx.oceana.org/wp-content/uploads/sites/17/logo_es-e1631518823246.png	Proyecto Alacranes	Protegiendo los hábitats de México	https://oceana.ca/en/donate-oceana-canada/
Ocean Conservancy	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGnAwqdTi7xZ8TmrekN-0JPxrXqmhgm1RIXQQ874fiI8BtE3Jf	Sustainable Fisheries	Soluciones científicas para un océano sano	https://donate.oceanconservancy.org/page/92465/donate/1?promo_name=Donate_Button&promo_position=TopRight&promo_creative=Evergreen&_ga=2.66541166.1794487691.1652587714-1062681711.1652587714&ea.tracking.id=22OPEPEAXX
\.


--
-- PostgreSQL database dump complete
--

