--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: heros; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.heros (
    id bigint NOT NULL,
    name character varying,
    icon character varying,
    image character varying,
    element character varying,
    regen character varying,
    hero_type character varying,
    rarity character varying,
    jp_only character varying
);


--
-- Name: heros_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.heros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: heros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.heros_id_seq OWNED BY public.heros.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: stats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stats (
    id bigint NOT NULL,
    hp integer,
    atk integer,
    def integer,
    speed integer,
    hero_id bigint NOT NULL
);


--
-- Name: stats_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.stats_id_seq OWNED BY public.stats.id;


--
-- Name: heros id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.heros ALTER COLUMN id SET DEFAULT nextval('public.heros_id_seq'::regclass);


--
-- Name: stats id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stats ALTER COLUMN id SET DEFAULT nextval('public.stats_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-29 22:32:44.31372	2020-06-29 22:32:44.31372
schema_sha1	13a1d61b16a5f948545985f98845552e064230fd	2020-06-29 22:32:44.319751	2020-06-29 22:32:44.319751
\.


--
-- Data for Name: heros; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.heros (id, name, icon, image, element, regen, hero_type, rarity, jp_only) FROM stdin;
1	Adams	\N	\N	Darkness	\N	Attack	Legendary	\N
2	Afos	\N	\N	Frost	\N	Attack	Rare	\N
3	Alexei	\N	\N	Frost	\N	Defense	Legendary	\N
4	Alos	\N	\N	Machine	\N	Support	Rare	\N
5	Amedon	\N	\N	Fire	\N	Attack	Rare	\N
6	Anastasia	\N	\N	Frost	\N	Support	Fated	\N
7	Annie	\N	\N	Fire	\N	Attack	Legendary	\N
8	April	\N	\N	Light	\N	Support	Legendary	\N
9	Arno	\N	\N	Machine	\N	Defense	Rare	\N
10	Asiki	\N	\N	Nature	\N	Attack	Rare	\N
11	Astarte	\N	\N	Nature	\N	Attack	Legendary	\N
12	Baileysh	\N	\N	Darkness	\N	Chaos	Fated	\N
13	Baraka	\N	\N	Machine	\N	Chaos	Fated	\N
14	Bathory	\N	\N	Frost	\N	Attack	Fated	\N
15	Bayer	\N	\N	Machine	\N	Chaos	Legendary	\N
16	Bellum	\N	\N	Frost	\N	Support	Rare	\N
17	Benten	\N	\N	Nature	\N	Attack	Legendary	\N
18	Bernadette	\N	\N	Frost	\N	Attack	Fated	\N
19	Bernavas	\N	\N	Machine	\N	Defense	Fated	\N
20	Berol	\N	\N	Nature	\N	Defense	Rare	\N
21	Blaska	\N	\N	Nature	\N	Support	Rare	\N
22	Bongkoos	\N	\N	Nature	\N	Chaos	Legendary	\N
23	Brook	\N	\N	Fire	\N	Attack	Legendary	\N
24	Buck	\N	\N	Darkness	\N	Defense	Rare	\N
25	Carlos	\N	\N	Fire	\N	Chaos	Rare	\N
26	Chati	\N	\N	Nature	\N	Defense	Fated	\N
27	Clement	\N	\N	Fire	\N	Attack	Rare	\N
28	Colin	\N	\N	Machine	\N	Attack	Rare	\N
29	Colossal Drill Mk.I	\N	\N	Machine	\N	Defense	Rare	\N
30	Corgi	\N	\N	Fire	\N	Chaos	Legendary	\N
31	Cybele	\N	\N	Light	\N	Support	Legendary	\N
32	David Johnson	\N	\N	Fire	\N	Attack	Legendary	\N
33	Degas	\N	\N	Frost	\N	Defense	Legendary	\N
34	Deradan	\N	\N	Fire	\N	Chaos	Rare	\N
35	Deva	\N	\N	Machine	\N	Chaos	Legendary	\N
36	Dio	\N	\N	Frost	\N	Defense	Rare	\N
37	Duman	\N	\N	Machine	\N	Attack	Rare	\N
38	Duncan	\N	\N	Machine	\N	Attack	Legendary	\N
39	Eclipse	\N	\N	Darkness	\N	Support	Rare	\N
40	Edith	\N	\N	Nature	\N	Defense	Rare	\N
41	Emma	\N	\N	Darkness	\N	Support	Fated	\N
42	Eorile	\N	\N	Nature	\N	Chaos	Rare	\N
43	Fames	\N	\N	Fire	\N	Attack	Rare	\N
44	Fergie	\N	\N	Machine	\N	Support	Legendary	\N
45	Firis	\N	\N	Light	\N	Defense	Legendary	\N
46	Forbeta	\N	\N	Nature	\N	Chaos	Rare	\N
47	Freesia	\N	\N	Light	\N	Defense	Legendary	\N
48	Gale	\N	\N	Frost	\N	Attack	Rare	\N
49	Garff	\N	\N	Light	\N	Defense	Fated	\N
50	Gellmann	\N	\N	Nature	\N	Attack	Rare	\N
51	Genoi	\N	\N	Frost	\N	Attack	Rare	\N
52	Glenn	\N	\N	Machine	\N	Defense	Rare	\N
53	Godin	\N	\N	Frost	\N	Defense	Rare	\N
54	Gregory	\N	\N	Frost	\N	Attack	Rare	\N
55	Griesel	\N	\N	Nature	\N	Defense	Legendary	\N
56	Guter	\N	\N	Fire	\N	Defense	Legendary	\N
57	Guy	\N	\N	Machine	\N	Attack	Rare	\N
58	Hachion	\N	\N	Frost	\N	Attack	Rare	\N
59	Hawkeye	\N	\N	Light	\N	Defense	Legendary	\N
60	Hekin	\N	\N	Fire	\N	Chaos	Rare	\N
61	Heowon	\N	\N	Nature	\N	Chaos	Legendary	\N
62	Iden	\N	\N	Nature	\N	Chaos	Rare	\N
63	Iris	\N	\N	Light	\N	Support	Rare	\N
64	Ivan	\N	\N	Machine	\N	Chaos	Legendary	\N
65	Jean	\N	\N	Fire	\N	Chaos	Rare	\N
66	Jinai	\N	\N	Nature	\N	Chaos	Fated	\N
67	Jinn	\N	\N	Machine	\N	Chaos	Fated	\N
68	Kale	\N	\N	Darkness	\N	Support	Rare	\N
69	Kalinent	\N	\N	Fire	\N	Defense	Rare	\N
70	Kamodin	\N	\N	Frost	\N	Support	Rare	\N
71	Karin	\N	\N	Nature	\N	Support	Legendary	\N
72	Kasoke	\N	\N	Light	\N	Attack	Rare	\N
73	Kaya	\N	\N	Nature	\N	Support	Rare	\N
74	Kinberra	\N	\N	Nature	\N	Chaos	Legendary	\N
75	Kirina	\N	\N	Frost	\N	Chaos	Legendary	\N
76	Laman	\N	\N	Fire	\N	Chaos	Rare	\N
77	Leger	\N	\N	Light	\N	Support	Legendary	\N
78	Lepin	\N	\N	Frost	\N	Support	Legendary	\N
79	Leto	\N	\N	Machine	\N	Chaos	Rare	\N
80	Liechtenstein	\N	\N	Light	\N	Defense	Legendary	\N
81	Liffy	\N	\N	Darkness	\N	Chaos	Rare	\N
82	Lucinin	\N	\N	Nature	\N	Defense	Rare	\N
83	Luke	\N	\N	Fire	\N	Defense	Legendary	\N
84	Lyungen	\N	\N	Machine	\N	Defense	Legendary	\N
85	Magi	\N	\N	Fire	\N	Attack	Fated	\N
86	Mahar	\N	\N	Machine	\N	Defense	Fated	\N
87	Mamanti	\N	\N	Nature	\N	Chaos	Rare	\N
88	Maxim	\N	\N	Frost	\N	Chaos	Rare	\N
89	Metron	\N	\N	Light	\N	Chaos	Legendary	\N
90	Minea	\N	\N	Darkness	\N	Support	Legendary	\N
91	Mirrty	\N	\N	Machine	\N	Defense	Rare	\N
92	Molot	\N	\N	Frost	\N	Defense	Rare	\N
93	Monica	\N	\N	Frost	\N	Chaos	Legendary	\N
94	Morris	\N	\N	Machine	\N	Attack	Rare	\N
95	Navid	\N	\N	Nature	\N	Support	Rare	\N
96	Ned	\N	\N	Machine	\N	Chaos	Rare	\N
97	Nermash	\N	\N	Darkness	\N	Chaos	Rare	\N
98	Nero	\N	\N	Nature	\N	Chaos	Legendary	\N
99	Nika	\N	\N	Machine	\N	Defense	Legendary	\N
100	Obellia	\N	\N	Frost	\N	Support	Legendary	\N
101	Oos	\N	\N	Fire	\N	Attack	Rare	\N
102	Otard	\N	\N	Fire	\N	Attack	Legendary	\N
103	Pan	\N	\N	Fire	\N	Support	Legendary	\N
104	Patrick	\N	\N	Frost	\N	Chaos	Rare	\N
105	Pitbull	\N	\N	Fire	\N	Defense	Legendary	\N
106	Rachel	\N	\N	Fire	\N	Attack	Fated	\N
107	Raferit	\N	\N	Machine	\N	Chaos	Rare	\N
108	Ramge	\N	\N	Darkness	\N	Support	Fated	\N
109	Reedmarie	\N	\N	Frost	\N	Chaos	Legendary	\N
110	Rera	\N	\N	Nature	\N	Chaos	Fated	\N
111	Risis	\N	\N	Nature	\N	Chaos	Legendary	\N
112	Robert	\N	\N	Frost	\N	Attack	Rare	\N
113	Rudley	\N	\N	Nature	\N	Attack	Fated	\N
114	Sabrina	\N	\N	Fire	\N	Attack	Fated	\N
115	Santos	\N	\N	Frost	\N	Chaos	Rare	\N
116	Scarlet	\N	\N	Fire	\N	Attack	Legendary	\N
117	Sefer	\N	\N	Darkness	\N	Support	Legendary	\N
118	Seir	\N	\N	Frost	\N	Attack	Rare	\N
119	Sernando	\N	\N	Light	\N	Attack	Legendary	\N
120	Sharpei	\N	\N	Darkness	\N	Chaos	Legendary	\N
121	Shell	\N	\N	Machine	\N	Support	Fated	\N
122	Shufraken	\N	\N	Darkness	\N	Defense	Fated	\N
123	Spica	\N	\N	Frost	\N	Defense	Legendary	\N
124	Talia	\N	\N	Nature	\N	Support	Fated	\N
125	Tantalo	\N	\N	Nature	\N	Defense	Legendary	\N
126	Tashume	\N	\N	Nature	\N	Attack	Rare	\N
127	Tentol	\N	\N	Fire	\N	Defense	Rare	\N
128	Tereia	\N	\N	Darkness	\N	Support	Legendary	\N
129	Timur	\N	\N	Frost	\N	Defense	Rare	\N
130	Tomedes	\N	\N	Fire	\N	Support	Rare	\N
131	Topaki	\N	\N	Frost	\N	Defense	Rare	\N
132	Uloom	\N	\N	Machine	\N	Defense	Fated	\N
133	Ulrich	\N	\N	Machine	\N	Support	Rare	\N
134	Valarr	\N	\N	Nature	\N	Defense	Fated	\N
135	Valentina	\N	\N	Frost	\N	Chaos	Fated	\N
136	Venato	\N	\N	Nature	\N	Chaos	Rare	\N
137	Vincent	\N	\N	Machine	\N	Attack	Rare	\N
138	Vinity	\N	\N	Nature	\N	Chaos	Legendary	\N
139	Wagni	\N	\N	Light	\N	Defense	Rare	\N
140	Weiler	\N	\N	Frost	\N	Chaos	Rare	\N
141	Wilkes	\N	\N	Darkness	\N	Chaos	Rare	\N
142	Xiakhan	\N	\N	Frost	\N	Defense	Fated	\N
143	Yao	\N	\N	Machine	\N	Chaos	Legendary	\N
144	Yorm	\N	\N	Machine	\N	Chaos	Legendary	\N
145	Yulled	\N	\N	Light	\N	Attack	Rare	\N
146	Zarienne	\N	\N	Machine	\N	Chaos	Legendary	\N
147	Zeon	\N	\N	Fire	\N	Attack	Rare	\N
148	Zeradin	\N	\N	Fire	\N	Attack	Legendary	\N
149	Zetok	\N	\N	Frost	\N	Chaos	Rare	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations (version) FROM stdin;
20200629222558
20200629222655
\.


--
-- Data for Name: stats; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.stats (id, hp, atk, def, speed, hero_id) FROM stdin;
1	5645	1462	1216	90	1
2	5271	1364	1131	88	2
3	6181	736	1395	49	3
4	6438	945	713	67	4
5	5263	1362	1130	87	5
6	7584	1102	935	32	6
7	5472	1644	855	51	7
8	6930	1013	856	32	8
9	5774	697	1215	68	9
10	5263	1362	1130	87	10
11	5637	1460	1214	89	11
12	4984	1502	935	32	12
13	4800	1705	737	114	13
14	6016	1809	940	56	14
15	4565	1373	855	31	15
16	6438	945	713	67	16
17	5661	1465	1218	92	17
18	5992	1804	936	53	18
19	6784	802	1435	72	19
20	5782	698	1217	69	20
21	6438	945	713	67	21
22	4557	1371	854	110	22
23	5661	1465	1218	92	23
24	5790	700	1218	70	24
25	4280	1284	801	30	25
26	6784	802	1535	52	26
27	5263	1362	1130	87	27
28	5279	1366	1133	89	28
29	5766	695	1214	67	29
30	4557	1371	854	110	30
31	6906	1008	853	29	31
32	5661	1465	1218	92	32
33	6205	742	2077	32	33
34	4256	1278	797	107	34
35	4392	1556	675	112	35
36	5766	695	1214	\N	36
37	5263	1362	1130	87	37
38	5661	1465	1218	92	38
39	6438	945	713	67	39
40	5766	695	1214	67	40
41	7592	1103	836	73	41
42	4264	1280	798	108	42
43	5263	1362	1130	87	43
44	6914	1010	763	70	44
45	6205	742	1399	52	45
46	4088	1446	630	107	46
47	6189	738	1306	70	47
48	5287	1368	1134	90	48
49	6816	809	1540	56	49
50	5263	1362	1130	87	50
51	5263	1362	1130	87	51
52	5790	700	1218	70	52
53	5790	700	1301	50	53
54	5263	1362	1130	87	54
55	6197	740	1398	51	55
56	6189	738	1306	70	56
57	5095	1529	797	47	57
58	5095	1529	797	47	58
59	6181	736	1395	49	59
60	4280	1284	801	110	60
61	4557	1371	854	30	61
62	4112	1451	634	110	62
63	6462	951	717	70	63
64	4557	1371	854	110	64
65	4272	1282	799	109	65
66	5016	1510	940	36	66
67	4808	1707	738	115	67
68	6438	945	797	27	68
69	5766	695	1297	47	69
70	6438	945	713	67	70
71	6922	1011	855	31	71
72	5263	1362	1130	87	72
73	6462	951	801	30	73
74	4557	1371	854	110	74
75	4392	1556	675	112	75
76	4088	1446	630	107	76
77	6922	1011	855	31	77
78	6922	1011	855	31	78
79	4088	1446	630	\N	79
80	6205	742	1399	52	80
81	4280	1284	801	110	81
82	5766	695	1297	47	82
83	6189	738	2074	30	83
84	6205	742	1308	72	84
85	5992	1804	936	53	85
86	6792	804	2285	33	86
87	4088	1446	630	107	87
88	4248	1277	796	106	88
89	4565	1373	855	31	89
90	6922	1011	765	71	90
91	5782	698	1217	69	91
92	5758	693	1213	66	92
93	4557	1371	854	110	93
94	5279	1366	113	89	94
95	6446	947	714	68	95
96	4088	1446	630	107	96
97	4112	1451	634	110	97
98	4368	1550	672	109	98
99	6205	742	1308	72	99
100	6914	1010	763	70	100
101	5111	1533	799	49	101
102	5661	1465	1218	92	102
103	6922	1011	765	71	103
104	4256	1278	797	107	104
105	6181	736	1305	69	105
106	6216	1609	1340	96	106
107	4088	1446	630	\N	107
108	7600	1105	837	74	108
109	4573	1375	856	112	109
110	5008	1507	938	115	110
111	4557	1371	854	30	111
112	5263	1362	1130	87	112
113	6208	1607	1338	95	113
114	6184	1602	1335	92	114
115	4256	1278	797	107	115
116	5464	1643	854	50	116
117	6906	1008	762	69	117
118	5287	1368	1134	90	118
119	5464	1643	854	50	119
120	4392	1556	675	112	120
121	7600	1105	837	74	121
122	6816	809	1440	76	122
123	6197	740	1307	71	123
124	7592	1103	936	33	124
125	6205	742	2077	32	125
126	5255	1360	1129	86	126
127	5774	697	1298	48	127
128	6914	1010	763	70	128
129	5758	693	1921	26	129
130	6446	947	714	68	130
131	5782	698	1217	69	131
132	6800	806	2287	34	132
133	6438	945	713	67	133
134	6800	806	1437	74	134
135	5008	1507	938	35	135
136	4104	1449	632	109	136
137	5271	1364	1131	88	137
138	4368	1550	672	109	138
139	5766	695	1922	27	139
140	4104	1449	632	109	140
141	4280	1284	801	30	141
142	6808	807	1438	75	142
143	4368	1550	672	109	143
144	4549	1369	853	29	144
145	5263	1362	1130	87	145
146	4565	1373	855	111	146
147	5287	1368	1134	90	147
148	5472	1644	855	51	148
149	4096	1448	631	108	149
\.


--
-- Name: heros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.heros_id_seq', 149, true);


--
-- Name: stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.stats_id_seq', 149, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: heros heros_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.heros
    ADD CONSTRAINT heros_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: stats stats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT stats_pkey PRIMARY KEY (id);


--
-- Name: index_stats_on_hero_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_stats_on_hero_id ON public.stats USING btree (hero_id);


--
-- Name: stats fk_rails_b2395013d7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stats
    ADD CONSTRAINT fk_rails_b2395013d7 FOREIGN KEY (hero_id) REFERENCES public.heros(id);


--
-- PostgreSQL database dump complete
--

