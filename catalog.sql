--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: auto_id_articles; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auto_id_articles
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auto_id_articles OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE articles (
    id integer DEFAULT nextval('auto_id_articles'::regclass) NOT NULL,
    name character varying,
    description text,
    price numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE articles OWNER TO postgres;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY articles (id, name, description, price, created_at, updated_at) FROM stdin;
50	Book	An amusing trip	155.0	2015-10-13 23:14:21.171494	2015-10-13 23:33:38.627697
40	iPod	Player	1550.0	2015-10-13 21:35:54.433648	2015-10-13 23:35:06.729736
41	iPhone 6	Good phone	3705.0	2015-10-13 21:36:41.536342	2015-10-13 23:36:07.665221
51	Note	Paper note	34.0	2015-10-13 23:16:30.438887	2015-10-13 23:38:30.423386
38	Table	Black and white	456.0	2015-10-13 21:06:27.302574	2015-10-13 23:39:19.318183
45	Milk	bottle	19.0	2015-10-13 22:47:04.930906	2015-10-13 23:41:20.703126
44	Pen	Blue color	6.0	2015-10-13 22:46:54.50131	2015-10-13 23:44:13.143989
48	Pen	Red color	8.0	2015-10-13 22:47:28.800271	2015-10-13 23:44:35.130246
49	TV	TV(127d)	9999.0	2015-10-13 22:47:36.073687	2015-10-13 23:45:14.508499
47	Block	Stone	2.0	2015-10-13 22:47:20.571801	2015-10-13 23:46:52.895126
37	PC	Big capacity	6722.5	2015-10-13 21:06:17.673023	2015-10-13 23:52:35.690733
46	WWW	WWW	0.8	2015-10-13 22:47:12.878361	2015-10-13 23:53:09.422662
52	book	get	155.0	2015-10-14 00:17:20.961685	2015-10-14 00:17:20.961685
\.


--
-- Name: auto_id_articles; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auto_id_articles', 52, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20151010145808
\.


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

