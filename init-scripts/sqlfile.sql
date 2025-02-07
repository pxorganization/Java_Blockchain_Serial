--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: blocks; Type: TABLE; Schema: public; Owner: user4topic3
--

CREATE TABLE public.blocks (
    hash character varying(255) NOT NULL,
    previous_hash character varying(255),
    product_code character varying(255),
    title character varying(255),
    "timestamp" bigint,
    price double precision,
    description text,
    category character varying(255)
);


ALTER TABLE public.blocks OWNER TO user4topic3;

--
-- Data for Name: blocks; Type: TABLE DATA; Schema: public; Owner: user4topic3
--

COPY public.blocks (hash, previous_hash, product_code, title, "timestamp", price, description, category) FROM stdin;
000063456da3191a840389bf60a02684de4db7f3d0eed86f661d315417629a4f	0	E29301	Towel	1738958601155	6.3	New	Bath
00001cb3e8428af1bb114eec52785147aeee4c6bf691614d58db3e5472ab340c	000063456da3191a840389bf60a02684de4db7f3d0eed86f661d315417629a4f	P12345	Smartphone	1738958738120	299.99	Latest smartphone with great features.	Electronics
0000e6a20afa7244c89b17fa61b4675711cbc846f473666564937b9db5124f0e	00001cb3e8428af1bb114eec52785147aeee4c6bf691614d58db3e5472ab340c	P12346	Laptop	1738958889586	799.99	Powerful laptop for work and gaming.	Computers
000086c2f4a29d543da339e4a3cccff37b6c1402db014abea2cd110333950f32	0000e6a20afa7244c89b17fa61b4675711cbc846f473666564937b9db5124f0e	P12347	Wireless Headphones	1738958918583	99.99	Comfortable and high-quality wireless headphones.	Accessories
\.


--
-- Name: blocks blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: user4topic3
--

ALTER TABLE ONLY public.blocks
    ADD CONSTRAINT blocks_pkey PRIMARY KEY (hash);


--
-- PostgreSQL database dump complete
--

