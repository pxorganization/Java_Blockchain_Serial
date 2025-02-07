toc.dat                                                                                             0000600 0004000 0002000 00000004625 14746726524 0014467 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       0                 }            topic3db    17.2 (Debian 17.2-1.pgdg120+1)    17.1 	    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         %           1262    16384    topic3db    DATABASE     s   CREATE DATABASE topic3db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE topic3db;
                     user4topic3    false         �            1259    32782    block_aa_seq    SEQUENCE     t   CREATE SEQUENCE public.block_aa_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.block_aa_seq;
       public               user4topic3    false         �            1259    32783    blocks    TABLE     m  CREATE TABLE public.blocks (
    hash character varying(100) NOT NULL,
    previous_hash character varying(100),
    aa integer DEFAULT nextval('public.block_aa_seq'::regclass),
    product_code character varying(50),
    title character varying(255),
    "timestamp" bigint,
    price double precision,
    description text,
    category character varying(100)
);
    DROP TABLE public.blocks;
       public         heap r       user4topic3    false    217                   0    32783    blocks 
   TABLE DATA           y   COPY public.blocks (hash, previous_hash, aa, product_code, title, "timestamp", price, description, category) FROM stdin;
    public               user4topic3    false    218       3359.dat &           0    0    block_aa_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.block_aa_seq', 8, true);
          public               user4topic3    false    217         �           2606    32792    blocks blocks_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.blocks
    ADD CONSTRAINT blocks_pkey PRIMARY KEY (hash);
 <   ALTER TABLE ONLY public.blocks DROP CONSTRAINT blocks_pkey;
       public                 user4topic3    false    218                                                                                                                   3359.dat                                                                                            0000600 0004000 0002000 00000002622 14746726524 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0000031512db36b9f1937efe593998ae467069c28200eebd130bd7043f7c5b7e	0	1	A23234	Milk	1738253313335	2.62	Coconut_milk	Refrigerator
0000e52db02755a4ffbd004288aaffff02718191a53ecfd6b2d625fa458ec906	0000031512db36b9f1937efe593998ae467069c28200eebd130bd7043f7c5b7e	2	A23235	Milk	1738253343784	2.62	Coconut_milk	Refrigerator
0000f06dd1d4a880ff4957e6512e1678f24b7b02b8f6de088ad016e27e0f683a	0000e52db02755a4ffbd004288aaffff02718191a53ecfd6b2d625fa458ec906	3	A23236	Milk	1738253350617	2.62	Coconut_milk	Refrigerator
000074f119a01e0e54dc4ba1ef97c42b9b9584f729bf730ca70e220861bfaebe	0000f06dd1d4a880ff4957e6512e1678f24b7b02b8f6de088ad016e27e0f683a	4	B24001	Juice	1738253389282	3.88	Orange_juice	Refrigerator
00007c55a9e4112092fbab215dc7bddee90a70f35cd4939b98857c2a0b90250b	000074f119a01e0e54dc4ba1ef97c42b9b9584f729bf730ca70e220861bfaebe	5	B24002	Juice	1738253397111	3.88	Orange_juice	Refrigerator
0000763ee724fd7de0756b4304e08d4cdae165448a236c72466a47a7563e2740	00007c55a9e4112092fbab215dc7bddee90a70f35cd4939b98857c2a0b90250b	6	B24003	Juice	1738253402407	3.88	Orange_juice	Refrigerator
00002ed3390c67d2c49465a7051fd6671aa689383ccecadf78df3b11817b8586	0000763ee724fd7de0756b4304e08d4cdae165448a236c72466a47a7563e2740	7	C25111	Chips	1738253511335	8	Huge_Box	Food
0000b06a7df6e0f0100802d806dfd8cfaace22bcc94e7d2e14e72721bd9e1895	00002ed3390c67d2c49465a7051fd6671aa689383ccecadf78df3b11817b8586	8	E29301	Towel	1738253557767	6.3	New	Bath
\.


                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000005416 14746726524 0015413 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.1

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

DROP DATABASE topic3db;
--
-- Name: topic3db; Type: DATABASE; Schema: -; Owner: user4topic3
--

CREATE DATABASE topic3db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE topic3db OWNER TO user4topic3;

\connect topic3db

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

--
-- Name: block_aa_seq; Type: SEQUENCE; Schema: public; Owner: user4topic3
--

CREATE SEQUENCE public.block_aa_seq
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.block_aa_seq OWNER TO user4topic3;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: blocks; Type: TABLE; Schema: public; Owner: user4topic3
--

CREATE TABLE public.blocks (
    hash character varying(100) NOT NULL,
    previous_hash character varying(100),
    aa integer DEFAULT nextval('public.block_aa_seq'::regclass),
    product_code character varying(50),
    title character varying(255),
    "timestamp" bigint,
    price double precision,
    description text,
    category character varying(100)
);


ALTER TABLE public.blocks OWNER TO user4topic3;

--
-- Data for Name: blocks; Type: TABLE DATA; Schema: public; Owner: user4topic3
--

COPY public.blocks (hash, previous_hash, aa, product_code, title, "timestamp", price, description, category) FROM stdin;
\.
COPY public.blocks (hash, previous_hash, aa, product_code, title, "timestamp", price, description, category) FROM '$$PATH$$/3359.dat';

--
-- Name: block_aa_seq; Type: SEQUENCE SET; Schema: public; Owner: user4topic3
--

SELECT pg_catalog.setval('public.block_aa_seq', 8, true);


--
-- Name: blocks blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: user4topic3
--

ALTER TABLE ONLY public.blocks
    ADD CONSTRAINT blocks_pkey PRIMARY KEY (hash);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  