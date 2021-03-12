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
-- Name: cargo; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.cargo (
    cargo_id smallint,
    vessel_id smallint,
    trip_id smallint,
    quantity numeric(6,1) DEFAULT NULL::numeric,
    type character varying(9) DEFAULT NULL::character varying,
    quantity_type character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE svgc.cargo OWNER TO svgc;

--
-- Name: certificates; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.certificates (
    certificate_id character varying(1) DEFAULT NULL::character varying,
    prim_lang_desc character varying(1) DEFAULT NULL::character varying,
    seco_lang_desc character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE svgc.certificates OWNER TO svgc;

--
-- Name: certification; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.certification (
    certification_id character varying(1) DEFAULT NULL::character varying,
    vessel_id character varying(1) DEFAULT NULL::character varying,
    certificate_id character varying(1) DEFAULT NULL::character varying,
    expiration_date_time character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE svgc.certification OWNER TO svgc;

--
-- Name: defect; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.defect (
    defect_id smallint,
    vessel_id smallint,
    description character varying(11) DEFAULT NULL::character varying,
    type character varying(6) DEFAULT NULL::character varying
);


ALTER TABLE svgc.defect OWNER TO svgc;

--
-- Name: fleet; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.fleet (
    fleet_id smallint,
    name character varying(11) DEFAULT NULL::character varying
);


ALTER TABLE svgc.fleet OWNER TO svgc;

--
-- Name: fleet_members; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.fleet_members (
    member_id smallint,
    vessel_id smallint,
    fleet_id smallint
);


ALTER TABLE svgc.fleet_members OWNER TO svgc;

--
-- Name: lat_long; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.lat_long (
    lat_long_id smallint,
    location_id smallint,
    latitude numeric(8,4) DEFAULT NULL::numeric,
    longitude numeric(8,4) DEFAULT NULL::numeric,
    rank smallint
);


ALTER TABLE svgc.lat_long OWNER TO svgc;

--
-- Name: location; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.location (
    location_id smallint,
    prim_lang_name character varying(16) DEFAULT NULL::character varying,
    seco_lang_name character varying(16) DEFAULT NULL::character varying,
    location_type character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE svgc.location OWNER TO svgc;

--
-- Name: myattempt; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.myattempt (
    id character varying(1) DEFAULT NULL::character varying,
    lat character varying(1) DEFAULT NULL::character varying,
    lon character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE svgc.myattempt OWNER TO svgc;

--
-- Name: rights; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.rights (
    right_id smallint,
    prim_lang_name character varying(18) DEFAULT NULL::character varying,
    seco_lang_name character varying(19) DEFAULT NULL::character varying,
    code character varying(3) DEFAULT NULL::character varying
);


ALTER TABLE svgc.rights OWNER TO svgc;

--
-- Name: role_rights; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.role_rights (
    role_right_id smallint,
    user_role_id smallint,
    right_id smallint
);


ALTER TABLE svgc.role_rights OWNER TO svgc;

--
-- Name: status; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.status (
    status_id smallint,
    prim_lang_name character varying(53) DEFAULT NULL::character varying,
    seco_lang_name character varying(67) DEFAULT NULL::character varying,
    status_code character varying(3) DEFAULT NULL::character varying
);


ALTER TABLE svgc.status OWNER TO svgc;

--
-- Name: test; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.test (
    id smallint,
    name character varying(7) DEFAULT NULL::character varying
);


ALTER TABLE svgc.test OWNER TO svgc;

--
-- Name: traffic_event; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.traffic_event (
    event_id smallint,
    estimate_date_and_time character varying(19) DEFAULT NULL::character varying,
    actual_date_and_time character varying(19) DEFAULT NULL::character varying,
    vessel_id smallint,
    trip_id smallint,
    event_type character varying(11) DEFAULT NULL::character varying,
    location_id smallint,
    speed smallint,
    course smallint,
    rank_numb smallint
);


ALTER TABLE svgc.traffic_event OWNER TO svgc;

--
-- Name: trip; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.trip (
    trip_id smallint,
    vessel_id smallint,
    trip_number smallint,
    status_id smallint,
    activity character varying(1) DEFAULT NULL::character varying,
    people_aboard smallint,
    agent character varying(5) DEFAULT NULL::character varying,
    master character varying(4) DEFAULT NULL::character varying,
    current_event_id smallint,
    destination_event_id smallint,
    enter_vts_zone_id smallint,
    exit_vts_zone_id smallint,
    draught smallint,
    last_port_of_call character varying(6) DEFAULT NULL::character varying
);


ALTER TABLE svgc.trip OWNER TO svgc;

--
-- Name: user; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.user (
    user_id smallint,
    user_role_id character varying(1) DEFAULT NULL::character varying,
    user_name character varying(13) DEFAULT NULL::character varying,
    first_name character varying(13) DEFAULT NULL::character varying,
    last_name character varying(11) DEFAULT NULL::character varying,
    password character varying(64) DEFAULT NULL::character varying,
    organisation character varying(5) DEFAULT NULL::character varying,
    email character varying(33) DEFAULT NULL::character varying,
    status_id character varying(1) DEFAULT NULL::character varying,
    role character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE svgc.user OWNER TO svgc;

--
-- Name: user_role; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.user_role (
    user_role_id smallint,
    prim_lang_name character varying(13) DEFAULT NULL::character varying,
    seco_lang_name character varying(13) DEFAULT NULL::character varying,
    fleet_id smallint
);


ALTER TABLE svgc.user_role OWNER TO svgc;

--
-- Name: vessel; Type: TABLE; Owner: svgc
--

CREATE TABLE svgc.vessel (
    vessel_id smallint,
    lloyds_number integer,
    mmsi_number integer,
    call_sign character varying(7) DEFAULT NULL::character varying,
    current_name character varying(19) DEFAULT NULL::character varying,
    year_construct smallint,
    vessel_type character varying(20) DEFAULT NULL::character varying,
    registry_port character varying(8) DEFAULT NULL::character varying,
    ownerid character varying(23) DEFAULT NULL::character varying,
    countrycode character varying(7) DEFAULT NULL::character varying,
    ais_class character varying(7) DEFAULT NULL::character varying,
    ice_class character varying(11) DEFAULT NULL::character varying,
    maximum_draught numeric(3,1) DEFAULT NULL::numeric,
    maximum_power integer,
    maximum_speed numeric(3,1) DEFAULT NULL::numeric,
    moulded_depth numeric(4,2) DEFAULT NULL::numeric,
    width numeric(4,2) DEFAULT NULL::numeric,
    height numeric(4,2) DEFAULT NULL::numeric,
    length numeric(5,2) DEFAULT NULL::numeric,
    tonnage_net integer,
    tonnage_gross integer,
    tonnage_deadweight integer,
    status_id smallint
);


ALTER TABLE svgc.vessel OWNER TO svgc;

--
-- Data for Name: cargo; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.cargo (cargo_id, vessel_id, trip_id, quantity, type, quantity_type) FROM stdin;
7	2	18	4.0	dangerous	fd
8	2	19	4.0	dangerous	fd
127	2	13	4.0	dangerous	fd
128	2	13	213.0	dangerous	1234
129	2	13	213.0	dangerous	12342134
130	2	13	2314.0	dangerous	2134
133	1	38	0.0	dangerous	
176	1	36	1.0	dangerous	1
177	1	36	2.0	dangerous	2
258	9	34	2134.0	dangerous	1234
287	1	32	1.0	dangerous	1
288	1	32	2.0	dangerous	2
289	1	32	3.0	polluant	3
290	1	32	4.0	dangerous	4
291	1	36	1.0	dangerous	1
292	1	36	2.0	dangerous	2
293	1	36	3.0	polluant	3
294	1	36	4.0	dangerous	4
295	4	38	1.0	dangerous	1
296	4	38	2.0	dangerous	2
312	7	41	123.0	dangerous	123
313	7	41	1234.0	dangerous	1234
314	1	43	1.0	dangerous	1
315	1	43	2.0	dangerous	2
316	1	43	3.0	polluant	3
317	1	43	4.0	dangerous	4
318	1	43	0.0	dangerous	
329	1	42	1.0	dangerous	1
330	1	42	2.0	dangerous	2
331	1	42	3.0	polluant	3
332	1	42	4.0	dangerous	4
333	1	42	0.0	dangerous	
352	4	37	1.0	dangerous	1
353	4	37	2.0	dangerous	2
355	1	14	1.0	dangerous	1
356	1	14	2.0	dangerous	2
357	1	14	3.0	polluant	3
358	1	14	4.0	dangerous	4
362	1	55	35.0	polluant	te
363	1	55	35123.0	polluant	123
364	1	55	2134.0	polluant	1234
374	1	57	25.0	dangerous	25
375	1	57	125.0	dangerous	125
376	1	57	144.0	dangerous	144
377	1	57	15.0	dangerous	15
378	1	57	15.0	dangerous	15
379	1	62	144.0	polluant	144
380	2	65	12.0	polluant	B
381	0	72	3.0	dangerous	B
\.


--
-- Data for Name: certificates; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.certificates (certificate_id, prim_lang_desc, seco_lang_desc) FROM stdin;
\.


--
-- Data for Name: certification; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.certification (certification_id, vessel_id, certificate_id, expiration_date_time) FROM stdin;
\.


--
-- Data for Name: defect; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.defect (defect_id, vessel_id, description, type) FROM stdin;
1	3	Antenne AIS	AIS
2	5	Engines	Engine
\.


--
-- Data for Name: fleet; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.fleet (fleet_id, name) FROM stdin;
1	Traversier
2	Cargo
3	test
4	Coast Guard
5	Desgagnes
\.


--
-- Data for Name: fleet_members; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.fleet_members (member_id, vessel_id, fleet_id) FROM stdin;
11	4	2
12	6	2
13	8	2
14	2	3
15	1	3
16	6	3
18	2	4
20	5	4
24	9	4
26	5	1
27	9	1
28	3	3
29	4	3
30	5	3
31	7	3
32	8	3
33	9	3
34	10	3
35	3	4
\.


--
-- Data for Name: lat_long; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.lat_long (lat_long_id, location_id, latitude, longitude, rank) FROM stdin;
1	1	46.8211	-71.2066	1
2	2	45.5125	-73.5485	1
3	3	45.0000	63.0000	1
4	4	55.0000	55.0000	1
5	5	5.0000	55.0000	1
6	6	3.0000	-3.0000	1
7	7	8.0000	14.0000	1
8	8	4.0000	-3.0000	2
9	9	7.0000	12.0000	2
10	10	12.0000	12.0000	1
11	11	-10.0000	5.0000	1
12	12	9.0000	-5.0000	1
13	13	3.0000	-3.0000	1
14	14	3.0000	-2.0000	1
15	15	-1.0000	10.0000	1
16	16	1.0000	-1.0000	1
17	17	69.5500	-74.5600	1
18	18	2.0000	-2.0000	1
19	19	44.4400	44.4400	1
20	20	43.0000	343.0000	1
21	21	0.0000	0.0000	1
22	21	4.0000	4.0000	1
23	22	0.0000	0.0000	1
24	23	55.0000	-36.0000	1
25	24	0.0000	0.0000	1
26	25	0.0000	0.0000	1
27	26	0.0000	0.0000	1
28	27	0.0000	0.0000	1
29	28	4.0000	4.0000	1
30	29	0.0000	0.0000	1
31	30	0.0000	0.0000	1
32	31	0.0000	0.0000	1
33	32	0.0000	0.0000	1
34	33	0.0000	0.0000	1
35	34	0.0000	0.0000	1
36	35	0.0000	0.0000	1
37	36	0.0000	0.0000	1
38	37	0.0000	0.0000	1
39	38	0.0000	0.0000	1
40	39	0.0000	0.0000	1
41	40	0.0000	0.0000	1
42	41	0.0000	0.0000	1
43	42	0.0000	0.0000	1
44	43	0.0000	0.0000	1
45	44	0.0000	0.0000	1
46	45	0.0000	0.0000	1
47	46	0.0000	0.0000	1
48	47	0.0000	0.0000	1
49	48	0.0000	0.0000	1
50	49	0.0000	0.0000	1
51	50	155.0000	155.0000	2
52	51	0.0000	0.0000	1
53	52	0.0000	0.0000	1
54	53	0.0000	0.0000	1
55	54	0.0000	0.0000	1
56	55	277.0000	277.0000	1
57	56	0.0000	0.0000	1
58	57	0.0000	0.0000	1
59	58	0.0000	0.0000	1
60	59	0.0000	0.0000	1
61	60	26.0000	26.0000	1
62	61	0.0000	0.0000	1
63	62	0.0000	0.0000	1
64	63	0.0000	0.0000	1
65	64	0.0000	0.0000	1
66	65	25.0000	25.0000	2
67	66	125.0000	125.0000	1
68	67	0.0000	0.0000	1
69	68	0.0000	0.0000	1
70	69	0.0000	0.0000	1
71	70	0.0000	0.0000	1
72	71	144.0000	144.0000	2
73	72	0.0000	0.0000	1
74	73	0.0000	0.0000	1
75	74	0.0000	0.0000	1
76	75	0.0000	0.0000	1
77	76	15.0000	15.0000	2
78	77	0.0000	0.0000	1
79	78	0.0000	0.0000	1
80	79	0.0000	0.0000	1
81	80	0.0000	0.0000	1
82	81	15.0000	15.0000	2
83	82	0.0000	0.0000	1
84	83	0.0000	0.0000	1
85	84	0.0000	0.0000	1
86	85	0.0000	0.0000	1
87	86	25.0000	25.0000	2
88	87	0.0000	0.0000	1
89	88	0.0000	0.0000	1
90	89	0.0000	0.0000	1
91	90	44.0000	44.0000	1
92	91	0.0000	0.0000	1
93	92	0.0000	0.0000	1
94	93	0.0000	0.0000	1
95	94	0.0000	0.0000	1
96	95	1.0000	1.0000	2
97	96	0.0000	0.0000	1
98	97	0.0000	0.0000	1
99	98	0.0000	0.0000	1
100	99	0.0000	0.0000	1
101	100	44.0000	44.0000	1
102	101	0.0000	0.0000	1
103	102	0.0000	0.0000	1
104	103	0.0000	0.0000	1
105	104	0.0000	0.0000	1
106	105	0.0000	0.0000	1
107	106	0.0000	0.0000	1
108	107	0.0000	0.0000	1
109	108	0.0000	0.0000	1
110	109	0.0000	0.0000	1
111	110	0.0000	0.0000	1
112	111	0.0000	0.0000	1
113	112	0.0000	0.0000	1
114	113	0.0000	0.0000	1
115	114	0.0000	0.0000	1
116	115	0.0000	0.0000	1
117	116	0.0000	0.0000	1
118	117	25.0000	25.0000	1
119	118	11.0000	11.0000	1
120	119	12.0000	12.0000	1
121	120	0.0000	0.0000	1
122	121	12.0000	12.0000	1
123	122	12.0000	12.0000	1
124	123	12.0000	12.0000	1
125	124	255.0000	255.0000	1
126	125	0.0000	0.0000	1
127	126	0.0000	0.0000	1
128	127	255.0000	0.0000	1
129	128	0.0000	0.0000	1
130	129	2555.0000	2555.0000	1
131	130	0.0000	0.0000	1
132	131	0.0000	0.0000	1
133	132	0.0000	0.0000	1
134	133	0.0000	0.0000	1
135	134	0.0000	0.0000	1
136	135	0.0000	0.0000	1
137	136	0.0000	0.0000	1
138	137	0.0000	0.0000	1
139	138	0.0000	0.0000	1
140	139	0.0000	0.0000	1
141	140	0.0000	0.0000	1
142	141	0.0000	0.0000	1
143	142	0.0000	0.0000	1
144	143	0.0000	0.0000	1
145	144	0.0000	0.0000	1
146	145	0.0000	0.0000	1
147	146	0.0000	0.0000	1
148	147	0.0000	0.0000	1
149	148	0.0000	0.0000	1
150	149	0.0000	0.0000	1
151	150	0.0000	0.0000	1
152	151	0.0000	0.0000	1
153	152	0.0000	0.0000	1
154	153	0.0000	0.0000	1
155	154	0.0000	0.0000	1
156	155	0.0000	0.0000	1
157	156	0.0000	0.0000	1
158	157	0.0000	0.0000	1
159	158	0.0000	0.0000	1
160	159	0.0000	0.0000	1
161	160	0.0000	0.0000	1
162	161	0.0000	0.0000	1
163	162	0.0000	0.0000	1
164	163	0.0000	0.0000	1
165	164	0.0000	0.0000	1
166	165	0.0000	0.0000	1
167	166	0.0000	0.0000	1
168	167	0.0000	0.0000	1
169	168	0.0000	0.0000	1
170	169	0.0000	0.0000	1
171	170	0.0000	0.0000	1
172	171	0.0000	0.0000	1
173	172	0.0000	0.0000	1
174	173	0.0000	0.0000	1
175	174	0.0000	0.0000	1
176	175	-2.0000	5.0000	1
177	176	5.0000	0.0000	1
178	177	0.0000	0.0000	1
179	178	0.0000	0.0000	1
180	179	0.0000	0.0000	1
181	180	0.0000	0.0000	1
182	4	0.0000	0.0000	1
183	5	0.0000	0.0000	1
\.


--
-- Data for Name: location; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.location (location_id, prim_lang_name, seco_lang_name, location_type) FROM stdin;
1	Port de Québec	Port of Quebec	Port
2	Port de Montréal	Port of Montreal	Port
3	Montréal	Montreal	Ville
4	00	00	LLP
5	00	00	LLP
\.


--
-- Data for Name: myattempt; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.myattempt (id, lat, lon) FROM stdin;
\.


--
-- Data for Name: rights; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.rights (right_id, prim_lang_name, seco_lang_name, code) FROM stdin;
1	Administrator zone	Zone administrative	ADM
2	Vessel	Navire	VSL
3	Map	Carte	MAP
4	Tombstone	Données immuables	TMB
5	Add Trip	Ajout voyage	ADT
6	Trip	Voyage	TRP
\.


--
-- Data for Name: role_rights; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.role_rights (role_right_id, user_role_id, right_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	2	2
8	2	3
9	2	4
10	2	6
11	3	2
12	3	3
13	3	4
14	6	2
15	6	4
16	6	5
17	6	6
18	6	3
\.


--
-- Data for Name: status; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.status (status_id, prim_lang_name, seco_lang_name, status_code) FROM stdin;
1	New	Nouveau	USR
2	Active	Actif	USR
3	Inactive	Inactif	USR
4	Moving	En mouvement	VSL
5	Stop	Arrêt	VSL
6	Out of Canadian water	Hors des eaux Canadiennes	VSL
7	Incomplete	Incomplet	TRP
8	Cancel	Annuler	TRP
9	Ready to be approved	Prêt à approuver	TRP
10	Approved	Approuver	TRP
11	Archive	Archiver	TRP
13	At anchor	Ancré	VSL
14	Not under command	Sans commande	VSL
15	Restricted maneuverability	Manoeuvrabilité restreinte	VSL
16	Constrained by her draught	Contraint par son tirant d'eau	VSL
17	Moored	Amarré	VSL
18	Aground	Échoué	VSL
19	Engaged in fishing	Occupé à pêché	VSL
20	Under way sailing	En cours de navigation	VSL
21	Reserved for future ships carrying hazard or polluant	Réservé pour futurs navires transportant des substances polluantes	VSL
22	Reserved for future ships carrying dangerous goods	Réservé pour futurs navires transportant des substances dangereuses	VSL
23	Power-driven vessel towing asterns	Remorquage de navire par la poupe	VSL
24	Power-driven vessel pushing ahead or towing alongside	Navire à propulsion mécanique qui remorque	VSL
25	Reserved for future use	Réservé pour utilisation future	VSL
26	AIS-SART (active)	AIS-SART (actif)	VSL
27	Undefined	Non défini	VSL
\.


--
-- Data for Name: test; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.test (id, name) FROM stdin;
2	Name 2
22	bob
88	sdgsdfg
\.


--
-- Data for Name: traffic_event; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.traffic_event (event_id, estimate_date_and_time, actual_date_and_time, vessel_id, trip_id, event_type, location_id, speed, course, rank_numb) FROM stdin;
1	9999-04-23 01:00:00	2018-04-26 14:56:00	5	8	current	3	55	55	1
2	2018-04-23 13:00:00	2018-04-25 19:54:00	5	8	destination	1	0	0	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	1	1	destination	1	0	0	1
3	2018-04-24 00:00:00	2018-04-24 14:50:00	2	13	current	5	44	4	1
4	2018-04-27 00:00:00	2018-04-24 14:50:00	2	13	destination	1	0	0	1
5	2018-06-23 18:48:00	2018-04-27 20:33:00	1	14	current	2	214	214	1
6	2018-04-23 18:48:00	2018-04-27 20:33:00	1	14	destination	1	0	0	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	1	15	destination	1	0	0	1
7	2018-04-24 15:24:00	2018-04-24 15:24:00	2	19	waypoint	7	0	0	1
8	2018-04-24 15:47:00	2018-04-24 15:47:00	7	24	waypoint	8	0	0	2
9	2018-04-24 15:50:00	2018-04-24 15:50:00	9	25	waypoint	9	0	0	2
10	2018-04-24 15:51:00	2018-04-24 15:51:00	9	26	waypoint	10	0	0	1
11	2018-04-24 15:51:00	2018-04-24 15:51:00	9	26	waypoint	11	0	0	1
12	2018-04-24 17:07:00	2018-04-24 17:07:00	6	27	waypoint	12	0	0	1
13	2018-04-24 17:07:00	2018-04-24 17:07:00	8	28	waypoint	13	0	0	1
56	9999-01-01 00:00:00	2018-04-26 14:55:00	2	30	current	1	0	3	1
57	0001-01-01 00:00:00	2018-04-26 12:32:00	2	30	destination	2	0	0	1
58	0001-01-01 00:00:00	2018-04-26 12:32:00	2	30	enterVTS	1	0	0	1
59	0001-01-01 00:00:00	2018-04-26 12:32:00	2	30	exitVTS	2	0	0	1
60	0001-01-01 00:00:00	2018-04-26 15:05:00	4	31	current	2	2	1	1
61	0001-01-01 00:00:00	2018-04-26 12:39:00	4	31	destination	1	0	0	1
62	0001-01-01 00:00:00	2018-04-26 12:39:00	4	31	enterVTS	2	0	0	1
63	0001-01-01 00:00:00	2018-04-26 12:39:00	4	31	exitVTS	1	0	0	1
68	2018-04-24 17:34:00	2018-04-24 17:34:00	5	8	waypoint	14	0	0	1
69	2018-04-24 18:52:00	2018-04-24 18:52:00	5	8	waypoint	16	0	0	1
74	2019-05-01 01:00:00	2018-04-26 19:53:00	3	31	current	17	244	244	1
75	2019-01-01 01:00:00	2018-04-26 17:52:00	3	31	destination	1	0	0	1
76	2019-02-01 00:00:00	2018-04-26 17:52:00	3	31	exitVTS	1	0	0	1
107	0001-01-01 00:00:00	2018-04-27 13:33:00	10	33	destination	1	0	0	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	10	33	destination	1	0	0	1
1	9999-04-23 01:00:00	2018-04-26 14:56:00	5	8	current	3	55	55	1
2	2018-04-23 13:00:00	2018-04-25 19:54:00	5	8	destination	1	0	0	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	1	1	destination	1	0	0	1
3	2018-04-24 00:00:00	2018-04-24 14:50:00	2	13	current	5	44	4	1
4	2018-04-27 00:00:00	2018-04-24 14:50:00	2	13	destination	1	0	0	1
5	2018-06-23 18:48:00	2018-04-27 20:33:00	1	14	current	2	214	214	1
6	2018-04-23 18:48:00	2018-04-27 20:33:00	1	14	destination	1	0	0	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	1	15	destination	1	0	0	1
7	2018-04-24 15:24:00	2018-04-24 15:24:00	2	19	waypoint	7	0	0	1
8	2018-04-24 15:47:00	2018-04-24 15:47:00	7	24	waypoint	8	0	0	2
9	2018-04-24 15:50:00	2018-04-24 15:50:00	9	25	waypoint	9	0	0	2
10	2018-04-24 15:51:00	2018-04-24 15:51:00	9	26	waypoint	10	0	0	1
11	2018-04-24 15:51:00	2018-04-24 15:51:00	9	26	waypoint	11	0	0	1
12	2018-04-24 17:07:00	2018-04-24 17:07:00	6	27	waypoint	12	0	0	1
13	2018-04-24 17:07:00	2018-04-24 17:07:00	8	28	waypoint	13	0	0	1
56	9999-01-01 00:00:00	2018-04-26 14:55:00	2	30	current	1	0	3	1
57	0001-01-01 00:00:00	2018-04-26 12:32:00	2	30	destination	2	0	0	1
58	0001-01-01 00:00:00	2018-04-26 12:32:00	2	30	enterVTS	1	0	0	1
59	0001-01-01 00:00:00	2018-04-26 12:32:00	2	30	exitVTS	2	0	0	1
60	0001-01-01 00:00:00	2018-04-26 15:05:00	4	31	current	2	2	1	1
61	0001-01-01 00:00:00	2018-04-26 12:39:00	4	31	destination	1	0	0	1
62	0001-01-01 00:00:00	2018-04-26 12:39:00	4	31	enterVTS	2	0	0	1
63	0001-01-01 00:00:00	2018-04-26 12:39:00	4	31	exitVTS	1	0	0	1
68	2018-04-24 17:34:00	2018-04-24 17:34:00	5	8	waypoint	14	0	0	1
69	2018-04-24 18:52:00	2018-04-24 18:52:00	5	8	waypoint	16	0	0	1
74	2019-05-01 01:00:00	2018-04-26 19:53:00	3	31	current	17	244	244	1
75	2019-01-01 01:00:00	2018-04-26 17:52:00	3	31	destination	1	0	0	1
76	2019-02-01 00:00:00	2018-04-26 17:52:00	3	31	exitVTS	1	0	0	1
129	2018-04-24 17:34:00	2018-04-24 17:34:00	9	34	waypoint	14	0	0	1
130	2018-04-24 18:52:00	2018-04-24 18:52:00	9	34	waypoint	16	0	0	1
131	2018-04-24 17:34:00	2018-04-24 17:34:00	9	34	waypoint	14	0	0	1
132	2018-04-24 18:52:00	2018-04-24 18:52:00	9	34	waypoint	16	0	0	1
147	2018-04-26 19:53:00	2018-04-26 19:53:00	1	32	waypoint	18	0	0	1
148	2018-04-26 19:53:00	2018-04-26 19:53:00	1	32	waypoint	18	0	0	1
149	0001-01-01 00:00:00	2018-04-27 15:00:00	1	35	current	1	15	15	1
150	0001-01-01 00:00:00	2018-04-27 15:00:00	1	35	destination	1	0	0	1
151	0001-01-01 00:00:00	2018-04-27 15:00:00	1	35	enterVTS	1	0	0	1
152	0001-01-01 00:00:00	2018-04-27 15:00:00	1	35	exitVTS	1	0	0	1
153	0001-01-01 00:00:00	2018-04-27 15:01:00	1	36	current	1	0	0	1
154	0001-01-01 00:00:00	2018-04-27 15:01:00	1	36	destination	1	0	0	1
155	0001-01-01 00:00:00	2018-04-27 15:01:00	1	36	enterVTS	1	0	0	1
156	0001-01-01 00:00:00	2018-04-27 15:01:00	1	36	exitVTS	2	0	0	1
157	2018-04-26 19:53:00	2018-04-26 19:53:00	1	36	waypoint	18	0	0	1
158	2018-04-26 19:53:00	2018-04-26 19:53:00	1	36	waypoint	18	0	0	1
159	0001-01-01 00:00:00	2018-04-27 19:34:00	4	37	exitVTS	1	0	0	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	7	41	destination	1	0	0	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	7	41	destination	1	0	0	1
160	0001-01-01 00:00:00	2018-04-27 15:34:00	1	42	current	2	16	16	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	7	41	destination	1	0	0	1
163	0001-01-01 00:00:00	2018-04-27 15:00:00	1	43	current	1	15	15	1
164	2018-05-24 16:58:00	2018-04-27 15:27:00	1	43	destination	1	0	0	1
165	2018-05-24 16:58:00	2018-04-27 15:27:00	1	43	enterVTS	1	0	0	1
166	2018-05-24 16:58:00	2018-04-27 15:27:00	1	43	exitVTS	1	0	0	1
167	2018-04-26 19:53:00	2018-04-26 19:53:00	1	43	waypoint	18	0	0	1
168	2018-04-26 19:53:00	2018-04-26 19:53:00	1	43	waypoint	18	0	0	1
171	2018-04-27 00:00:00	2018-04-27 15:32:00	4	46	current	21	44	44	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	3	47	destination	1	0	0	1
0	0001-01-01 00:00:00	2018-04-27 19:52:00	3	47	destination	1	0	0	1
174	2018-04-26 19:53:00	2018-04-26 19:53:00	1	42	waypoint	18	0	0	1
175	2018-04-26 19:53:00	2018-04-26 19:53:00	1	42	waypoint	18	0	0	1
176	2018-05-24 16:58:00	2018-04-27 18:40:00	3	48	current	1	2	2	1
179	2018-05-24 16:58:00	2018-04-27 18:26:00	5	49	current	2	1	1	1
180	2018-05-24 16:58:00	2018-04-27 18:53:00	5	50	current	2	2	2	1
181	2018-05-24 16:58:00	2018-04-27 19:14:00	3	47	current	1	-1	2	1
182	2018-05-24 16:58:00	2018-04-27 19:16:00	1	51	current	2	1	1	1
183	0001-01-01 00:00:00	2018-04-27 19:19:00	6	51	current	1	2	2	1
184	0001-01-01 00:00:00	2018-04-27 19:19:00	6	51	destination	2	0	0	1
185	0001-01-01 00:00:00	2018-04-27 19:19:00	6	51	enterVTS	2	0	0	1
186	0001-01-01 00:00:00	2018-04-27 19:20:00	6	51	exitVTS	1	0	0	1
187	0001-01-01 00:00:00	2018-04-27 20:12:00	4	37	current	1	2	2	1
188	0001-01-01 00:00:00	2018-04-27 20:12:00	4	37	destination	2	0	0	1
189	0001-01-01 00:00:00	2018-04-27 20:19:00	5	52	current	2	0	0	1
190	0001-01-01 00:00:00	2018-04-27 20:19:00	5	52	destination	1	0	0	1
191	0001-01-01 00:00:00	2018-04-27 20:19:00	5	52	enterVTS	1	0	0	1
192	0001-01-01 00:00:00	2018-04-27 20:19:00	5	52	exitVTS	2	0	0	1
193	0001-01-01 00:00:00	2018-04-27 20:48:00	6	45	current	2	2	2	1
194	0001-01-01 00:00:00	2018-04-27 20:48:00	6	45	destination	1	0	0	1
195	0001-01-01 00:00:00	2018-04-27 20:48:00	6	45	enterVTS	1	0	0	1
196	0001-01-01 00:00:00	2018-04-27 20:48:00	6	45	exitVTS	2	0	0	1
197	0001-01-01 00:00:00	2018-04-27 20:27:00	9	54	current	1	1	1	1
198	0001-01-01 00:00:00	2018-04-27 20:27:00	9	54	destination	1	0	0	1
199	0001-01-01 00:00:00	2018-04-27 20:27:00	9	54	enterVTS	2	0	0	1
200	0001-01-01 00:00:00	2018-04-27 20:27:00	9	54	exitVTS	2	0	0	1
201	0001-01-01 00:00:00	2018-04-27 20:27:00	10	33	current	2	0	0	1
202	0001-01-01 00:00:00	2018-04-27 20:27:00	10	33	destination	2	0	0	1
203	0001-01-01 00:00:00	2018-04-27 20:27:00	10	33	enterVTS	2	0	0	1
204	0001-01-01 00:00:00	2018-04-27 20:27:00	10	33	exitVTS	2	0	0	1
205	0001-01-01 00:00:00	2018-04-27 20:33:00	1	14	enterVTS	1	0	0	1
206	0001-01-01 00:00:00	2018-04-27 20:33:00	1	14	exitVTS	2	0	0	1
207	2018-04-26 19:53:00	2018-04-26 19:53:00	1	14	waypoint	18	0	0	1
208	2018-04-26 19:53:00	2018-04-26 19:53:00	1	14	waypoint	18	0	0	1
209	0001-01-01 00:00:00	2018-04-30 20:11:00	1	55	current	1	5	5	1
210	0001-01-01 00:00:00	2018-04-30 20:11:00	1	55	destination	2	0	0	1
211	0001-01-01 00:00:00	2018-04-30 20:11:00	1	55	enterVTS	2	0	0	1
212	0001-01-01 00:00:00	2018-04-30 20:10:00	1	55	exitVTS	2	0	0	1
213	0001-01-01 00:00:00	2018-05-02 00:52:00	1	55	current	1	6	6	1
214	0001-01-01 00:00:00	2018-05-02 00:24:00	1	55	destination	24	0	0	1
215	0001-01-01 00:00:00	2018-05-02 00:48:00	1	55	enterVTS	2	0	0	1
216	0001-01-01 00:00:00	2018-05-02 00:51:00	1	55	exitVTS	1	0	0	1
260	0001-01-01 00:00:00	2018-05-02 01:55:00	2	56	current	30	25	25	1
261	0001-01-01 00:00:00	2018-05-02 01:55:00	2	56	destination	31	0	0	1
262	0001-01-01 00:00:00	2018-05-02 01:55:00	2	56	enterVTS	32	0	0	1
263	0001-01-01 00:00:00	2018-05-02 01:55:00	2	56	exitVTS	33	0	0	1
266	2018-05-02 00:47:00	2018-05-02 00:47:00	1	55	waypoint	29	0	0	1
267	0001-01-01 00:00:00	2018-05-02 19:57:00	1	57	current	34	0	0	1
268	0001-01-01 00:00:00	2018-05-02 19:57:00	1	57	destination	2	0	0	1
269	0001-01-01 00:00:00	2018-05-02 19:57:00	1	57	enterVTS	35	0	0	1
270	0001-01-01 00:00:00	2018-05-02 19:57:00	1	57	exitVTS	36	0	0	1
275	0001-01-01 00:00:00	2018-05-02 19:58:00	1	57	current	37	15	15	1
276	0001-01-01 00:00:00	2018-05-02 19:58:00	1	57	destination	38	0	0	1
277	0001-01-01 00:00:00	2018-05-02 19:58:00	1	57	enterVTS	39	0	0	1
278	0001-01-01 00:00:00	2018-05-02 19:58:00	1	57	exitVTS	40	0	0	1
280	0001-01-01 00:00:00	2018-05-02 19:59:00	1	57	current	41	15	15	1
281	0001-01-01 00:00:00	2018-05-02 19:59:00	1	57	destination	1	0	0	1
282	0001-01-01 00:00:00	2018-05-02 19:59:00	1	57	enterVTS	42	0	0	1
283	0001-01-01 00:00:00	2018-05-02 19:59:00	1	57	exitVTS	43	0	0	1
285	0001-01-01 00:00:00	2018-05-02 20:00:00	1	57	current	44	15	15	1
286	0001-01-01 00:00:00	2018-05-02 20:00:00	1	57	destination	2	0	0	1
287	0001-01-01 00:00:00	2018-05-02 20:00:00	1	57	enterVTS	45	0	0	1
288	0001-01-01 00:00:00	2018-05-02 20:00:00	1	57	exitVTS	46	0	0	1
289	0001-01-01 00:00:00	2018-05-02 20:01:00	1	57	current	47	2315	2135	1
290	0001-01-01 00:00:00	2018-05-02 20:01:00	1	57	destination	2	0	0	1
291	0001-01-01 00:00:00	2018-05-02 20:01:00	1	57	enterVTS	48	0	0	1
292	0001-01-01 00:00:00	2018-05-02 20:01:00	1	57	exitVTS	49	0	0	1
294	0001-01-01 00:00:00	2018-05-02 20:02:00	1	58	current	51	0	0	1
295	0001-01-01 00:00:00	2018-05-02 20:02:00	1	58	destination	52	0	0	1
296	0001-01-01 00:00:00	2018-05-02 20:02:00	1	58	enterVTS	53	0	0	1
297	0001-01-01 00:00:00	2018-05-02 20:02:00	1	58	exitVTS	54	0	0	1
299	0001-01-01 00:00:00	2018-05-02 20:04:00	1	59	current	56	0	0	1
300	0001-01-01 00:00:00	2018-05-02 20:04:00	1	59	destination	57	0	0	1
301	0001-01-01 00:00:00	2018-05-02 20:04:00	1	59	enterVTS	58	0	0	1
302	0001-01-01 00:00:00	2018-05-02 20:04:00	1	59	exitVTS	59	0	0	1
304	0001-01-01 00:00:00	2018-05-02 20:05:00	1	57	current	61	0	0	1
305	0001-01-01 00:00:00	2018-05-02 20:05:00	1	57	destination	62	0	0	1
306	0001-01-01 00:00:00	2018-05-02 20:05:00	1	57	enterVTS	63	0	0	1
307	0001-01-01 00:00:00	2018-05-02 20:05:00	1	57	exitVTS	64	0	0	1
309	2018-05-02 20:05:00	2018-05-02 20:05:00	1	57	waypoint	65	0	0	2
310	2018-05-02 20:06:00	2018-05-02 20:06:00	1	57	waypoint	66	0	0	1
311	0001-01-01 00:00:00	2018-05-02 20:06:00	1	57	current	67	0	0	1
312	0001-01-01 00:00:00	2018-05-02 20:06:00	1	57	destination	68	0	0	1
313	0001-01-01 00:00:00	2018-05-02 20:06:00	1	57	enterVTS	69	0	0	1
314	0001-01-01 00:00:00	2018-05-02 20:06:00	1	57	exitVTS	70	0	0	1
315	2018-05-02 20:06:00	2018-05-02 20:06:00	1	57	waypoint	71	0	0	2
316	0001-01-01 00:00:00	2018-05-02 20:10:00	1	57	current	72	0	0	1
317	0001-01-01 00:00:00	2018-05-02 20:10:00	1	57	destination	73	0	0	1
318	0001-01-01 00:00:00	2018-05-02 20:10:00	1	57	enterVTS	74	0	0	1
319	0001-01-01 00:00:00	2018-05-02 20:10:00	1	57	exitVTS	75	0	0	1
320	2018-05-02 20:10:00	2018-05-02 20:10:00	1	57	waypoint	76	0	0	2
321	0001-01-01 00:00:00	2018-05-02 20:18:00	1	57	current	77	15	0	1
322	0001-01-01 00:00:00	2018-05-02 20:18:00	1	57	destination	78	0	0	1
323	0001-01-01 00:00:00	2018-05-02 20:18:00	1	57	enterVTS	79	0	0	1
324	0001-01-01 00:00:00	2018-05-02 20:18:00	1	57	exitVTS	80	0	0	1
325	2018-05-02 20:18:00	2018-05-02 20:18:00	1	57	waypoint	81	0	0	2
326	0001-01-01 00:00:00	2018-05-02 20:19:00	1	58	current	82	25	25	1
327	0001-01-01 00:00:00	2018-05-02 20:19:00	1	58	destination	83	0	0	1
328	0001-01-01 00:00:00	2018-05-02 20:19:00	1	58	enterVTS	84	0	0	1
329	0001-01-01 00:00:00	2018-05-02 20:19:00	1	58	exitVTS	85	0	0	1
331	0001-01-01 00:00:00	2018-05-02 20:19:00	1	58	current	87	0	0	1
332	0001-01-01 00:00:00	2018-05-02 20:19:00	1	58	destination	88	0	0	1
333	0001-01-01 00:00:00	2018-05-02 20:19:00	1	58	enterVTS	89	0	0	1
334	0001-01-01 00:00:00	2018-05-02 20:19:00	1	58	exitVTS	90	0	0	1
335	0001-01-01 00:00:00	2018-05-02 20:27:00	1	59	current	91	44	44	1
336	0001-01-01 00:00:00	2018-05-02 20:27:00	1	59	destination	92	0	0	1
337	0001-01-01 00:00:00	2018-05-02 20:27:00	1	59	enterVTS	93	0	0	1
338	0001-01-01 00:00:00	2018-05-02 20:27:00	1	59	exitVTS	94	0	0	1
342	0001-01-01 00:00:00	2018-05-02 20:32:00	1	59	current	96	0	0	1
343	0001-01-01 00:00:00	2018-05-02 20:32:00	1	59	destination	97	0	0	1
344	0001-01-01 00:00:00	2018-05-02 20:32:00	1	59	enterVTS	98	0	0	1
345	0001-01-01 00:00:00	2018-05-02 20:32:00	1	59	exitVTS	99	0	0	1
347	0001-01-01 00:00:00	2018-05-02 20:44:00	0	60	current	101	0	0	1
348	0001-01-01 00:00:00	2018-05-02 20:44:00	0	60	destination	102	0	0	1
349	0001-01-01 00:00:00	2018-05-02 20:44:00	0	60	enterVTS	103	0	0	1
350	0001-01-01 00:00:00	2018-05-02 20:44:00	0	60	exitVTS	104	0	0	1
351	0001-01-01 00:00:00	2018-05-02 20:45:00	0	61	current	105	0	0	1
352	0001-01-01 00:00:00	2018-05-02 20:45:00	0	61	destination	106	0	0	1
353	0001-01-01 00:00:00	2018-05-02 20:45:00	0	61	enterVTS	107	0	0	1
354	0001-01-01 00:00:00	2018-05-02 20:45:00	0	61	exitVTS	108	0	0	1
355	0001-01-01 00:00:00	2018-05-02 22:45:00	1	62	current	109	25	25	1
356	0001-01-01 00:00:00	2018-05-02 22:45:00	1	62	destination	110	0	0	1
357	0001-01-01 00:00:00	2018-05-02 22:45:00	1	62	enterVTS	111	0	0	1
358	0001-01-01 00:00:00	2018-05-02 22:45:00	1	62	exitVTS	112	0	0	1
359	0001-01-01 00:00:00	2018-05-02 22:46:00	1	62	current	113	11	11	1
360	0001-01-01 00:00:00	2018-05-02 22:46:00	1	62	destination	114	0	0	1
361	0001-01-01 00:00:00	2018-05-02 22:46:00	1	62	enterVTS	115	0	0	1
362	0001-01-01 00:00:00	2018-05-02 22:46:00	1	62	exitVTS	116	0	0	1
363	0001-01-01 00:00:00	2018-05-02 22:48:00	1	62	current	119	0	0	1
364	0001-01-01 00:00:00	2018-05-02 22:48:00	1	62	destination	1	0	0	1
365	0001-01-01 00:00:00	2018-05-02 22:48:00	1	62	enterVTS	121	0	0	1
366	0001-01-01 00:00:00	2018-05-02 22:48:00	1	62	exitVTS	122	0	0	1
367	0001-01-01 00:00:00	2018-05-02 22:54:00	1	62	current	125	0	0	1
368	0001-01-01 00:00:00	2018-05-02 22:54:00	1	62	destination	126	0	0	1
369	0001-01-01 00:00:00	2018-05-02 22:54:00	1	62	enterVTS	127	0	0	1
370	0001-01-01 00:00:00	2018-05-02 22:54:00	1	62	exitVTS	128	0	0	1
371	2018-05-02 22:54:00	2018-05-02 22:54:00	1	62	waypoint	129	0	0	1
372	0001-01-01 00:00:00	2018-05-14 21:24:00	1	63	current	130	0	0	1
373	0001-01-01 00:00:00	2018-05-14 21:24:00	1	63	destination	131	0	0	1
374	0001-01-01 00:00:00	2018-05-14 21:24:00	1	63	enterVTS	132	0	0	1
375	0001-01-01 00:00:00	2018-05-14 21:24:00	1	63	exitVTS	133	0	0	1
376	0001-01-01 00:00:00	2018-05-14 21:44:00	3	63	current	134	10	55	1
377	0001-01-01 00:00:00	2018-05-14 21:44:00	3	63	destination	135	0	0	1
378	0001-01-01 00:00:00	2018-05-14 21:44:00	3	63	enterVTS	136	0	0	1
379	0001-01-01 00:00:00	2018-05-14 21:44:00	3	63	exitVTS	137	0	0	1
380	0001-01-01 00:00:00	2018-05-22 14:11:00	3	64	current	138	0	0	1
381	0001-01-01 00:00:00	2018-05-22 14:11:00	3	64	destination	139	0	0	1
382	0001-01-01 00:00:00	2018-05-22 14:11:00	3	64	enterVTS	140	0	0	1
383	0001-01-01 00:00:00	2018-05-22 14:11:00	3	64	exitVTS	141	0	0	1
384	0001-01-01 00:00:00	2018-05-22 14:15:00	3	65	current	142	4	4	1
385	0001-01-01 00:00:00	2018-05-22 14:15:00	3	65	destination	143	0	0	1
386	0001-01-01 00:00:00	2018-05-22 14:15:00	3	65	enterVTS	144	0	0	1
387	0001-01-01 00:00:00	2018-05-22 14:15:00	3	65	exitVTS	145	0	0	1
388	0001-01-01 00:00:00	2018-05-22 14:50:00	3	64	current	146	1	1	1
389	0001-01-01 00:00:00	2018-05-22 14:50:00	3	64	destination	147	0	0	1
390	0001-01-01 00:00:00	2018-05-22 14:50:00	3	64	enterVTS	148	0	0	1
391	0001-01-01 00:00:00	2018-05-22 14:50:00	3	64	exitVTS	149	0	0	1
392	2018-05-01 02:00:00	2018-05-31 17:49:00	2	65	current	1	0	0	1
393	2018-05-03 22:00:00	2018-05-31 17:49:00	2	65	destination	2	0	0	1
394	0001-01-01 00:00:00	2018-05-23 23:36:00	2	65	enterVTS	152	0	0	1
395	0001-01-01 00:00:00	2018-05-23 23:36:00	2	65	exitVTS	153	0	0	1
396	2018-05-23 00:00:00	2018-05-23 23:40:00	3	66	current	1	12	2	1
397	2018-02-04 02:00:00	2018-05-23 23:44:00	3	66	destination	2	0	0	1
398	0001-01-01 00:00:00	2018-05-23 23:40:00	3	66	enterVTS	155	0	0	1
399	0001-01-01 00:00:00	2018-05-23 23:40:00	3	66	exitVTS	156	0	0	1
400	2018-05-01 01:00:00	2018-05-24 00:29:00	1	67	current	2	11	0	1
401	2018-05-02 00:00:00	2018-05-24 00:29:00	1	67	destination	1	0	0	1
402	0001-01-01 00:00:00	2018-05-24 00:29:00	1	67	enterVTS	157	0	0	1
403	0001-01-01 00:00:00	2018-05-24 00:29:00	1	67	exitVTS	158	0	0	1
404	0001-01-01 00:00:00	2018-05-24 18:09:00	0	68	current	159	0	0	1
405	0001-01-01 00:00:00	2018-05-24 18:09:00	0	68	destination	160	0	0	1
406	0001-01-01 00:00:00	2018-05-24 18:09:00	0	68	enterVTS	161	0	0	1
407	0001-01-01 00:00:00	2018-05-24 18:09:00	0	68	exitVTS	162	0	0	1
408	0001-01-01 00:00:00	2018-05-24 19:22:00	0	69	current	163	0	0	1
409	0001-01-01 00:00:00	2018-05-24 19:22:00	0	69	destination	164	0	0	1
410	0001-01-01 00:00:00	2018-05-24 19:22:00	0	69	enterVTS	165	0	0	1
411	0001-01-01 00:00:00	2018-05-24 19:22:00	0	69	exitVTS	166	0	0	1
412	0001-01-01 00:00:00	2018-05-25 13:43:00	0	70	current	167	0	0	1
413	0001-01-01 00:00:00	2018-05-25 13:43:00	0	70	destination	168	0	0	1
414	0001-01-01 00:00:00	2018-05-25 13:43:00	0	70	enterVTS	169	0	0	1
415	0001-01-01 00:00:00	2018-05-25 13:43:00	0	70	exitVTS	170	0	0	1
416	0001-01-01 00:00:00	2018-05-25 15:13:00	1	71	current	171	0	0	1
417	0001-01-01 00:00:00	2018-05-25 15:13:00	1	71	destination	172	0	0	1
418	0001-01-01 00:00:00	2018-05-25 15:13:00	1	71	enterVTS	173	0	0	1
419	0001-01-01 00:00:00	2018-05-25 15:13:00	1	71	exitVTS	174	0	0	1
420	2018-05-31 17:49:00	2018-05-31 17:49:00	2	65	waypoint	175	0	0	1
421	2018-05-31 17:49:00	2018-05-31 17:49:00	2	65	waypoint	176	0	0	1
422	0001-01-01 00:00:00	2018-06-08 00:09:00	5	71	current	177	0	0	1
423	0001-01-01 00:00:00	2018-06-08 00:09:00	5	71	destination	178	0	0	1
424	0001-01-01 00:00:00	2018-06-08 00:09:00	5	71	enterVTS	179	0	0	1
425	0001-01-01 00:00:00	2018-06-08 00:09:00	5	71	exitVTS	180	0	0	1
426	0001-01-01 00:00:00	2018-06-19 01:23:00	0	72	current	2	0	0	1
427	0001-01-01 00:00:00	2018-06-19 01:23:00	0	72	destination	1	0	0	1
428	0001-01-01 00:00:00	2018-06-19 01:23:00	0	72	enterVTS	4	0	0	1
429	0001-01-01 00:00:00	2018-06-19 01:23:00	0	72	exitVTS	5	0	0	1
\.


--
-- Data for Name: trip; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.trip (trip_id, vessel_id, trip_number, status_id, activity, people_aboard, agent, master, current_event_id, destination_event_id, enter_vts_zone_id, exit_vts_zone_id, draught, last_port_of_call) FROM stdin;
4	0	4004	7		0			0	0	0	0	0	
5	0	5005	7		0			0	0	0	0	0	
6	0	5006	7		0			0	0	0	0	0	
7	0	5007	7		0			0	0	0	0	0	
8	5	5008	7		4444			1	2	0	0	4	
10	0	5010	7		0			0	0	0	0	0	
44	8	5044	7		0			0	0	0	0	0	
49	5	5049	7		0			179	0	0	0	0	
50	5	5050	7		0			180	0	0	0	0	
51	6	5051	7		0			183	184	185	186	0	
52	5	5052	7		0			189	190	191	192	0	
54	9	5054	7		0			197	198	199	200	0	
60	0	5060	7		0			347	348	349	350	0	
61	0	5061	7		0			351	352	353	354	0	
62	1	5062	7		0			367	368	369	370	0	
63	3	5063	7		5	m	m	376	377	378	379	10	m
65	2	5065	7		25	Baker	Mack	392	393	394	395	12	Quebec
68	0	5068	7		9999			404	405	406	407	0	
69	0	5069	7		0			408	409	410	411	0	
70	0	5070	7		0			412	413	414	415	0	
71	5	5071	7		0			422	423	424	425	0	
72	0	5072	7		25	C	M	426	427	428	429	6	Quebec
\.


--
-- Data for Name: user; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.user (user_id, user_role_id, user_name, first_name, last_name, password, organisation, email, status_id, role) FROM stdin;
1	1	admin	Administrator	System	$2a$10$ebyC4Z5WtCXXc.HGDc1Yoe6CLFzcntFmfse6/pTj7CeDY5I05w16C	XST	admin.system@xst.ca	2	ADMIN
2	2	reader	Read	Only	d2029280c9a03adea493889203fff15e0b8759ee20f9483e7186f031a0f86097	XST	read.only@xst.ca	2	USER
3	0	LpGobeil	Louis	Gobeil	4b303a86dbe5d444850fe692c4ea4e0f772a35dcf45e26c7999c40dfec740585	XST	louis-philippe.gobeil@xst.ca	1	USER
4	5	samcaron	Samuel	Caron	d2029280c9a03adea493889203fff15e0b8759ee20f9483e7186f031a0f86097	XST	samuel.caron@xst.ca	2	USER
5	0	Émile Gélinas	Émile	Gélinas	d2029280c9a03adea493889203fff15e0b8759ee20f9483e7186f031a0f86097	XST	gelinas.emile@xst.ca	3	USER
6	0	Alex	Alex	Lac	4e70aa8c3fae21f07c95a8dd3772f2bce26229d0d0e4b56e15f6f1ef3055c4df	Alex	alexlacasse25@hotmail.com	1	USER
11	0	test	Test	test	d2029280c9a03adea493889203fff15e0b8759ee20f9483e7186f031a0f86097	test	test@xst.ca	1	USER
12	0	test2	test2	test2	d2029280c9a03adea493889203fff15e0b8759ee20f9483e7186f031a0f86097	test2	test2@xst.ca	1	USER
13	0	LaboGcc	Labo	GCC	d2029280c9a03adea493889203fff15e0b8759ee20f9483e7186f031a0f86097	GCC	Labo@gcc.ca	2	USER
14	6	morinma	Marc-André	Morin	a5709dc3294d702b83d7f37902e6b608c9008d1e1ac2b84f155ad96c7f031d60	CCG	marc-andre.morin@dfo-mpo.gc.ca	2	USER
15	6	mathieu	Mathieu	Châteauvert	968f4a745911230591f5fe2ee60415fdadec2430008f70b9b2e5c83893ffdcda	GCC	mathieu.chateauvert@dfo-mpo.gc.ca	2	USER
16	1	admin	Admin	Admin	$2a$10$ebyC4Z5WtCXXc.HGDc1Yoe6CLFzcntFmfse6/pTj7CeDY5I05w16C	XST	demo@localhost	2	ADMIN
23					$2a$10$BLg7baPKB/oOlSabM15W.O9a2O9O4jsFErr5L0DqBN7F4j9O2kcb6		msoucy@t.com		USER
24					$2a$10$f2c03SzU0bFHEBAwl/YyEORAgxW0UlcnmPsVv20qMvQ3byRwx5ZZO		demo22@localhost		ADMIN
\.


--
-- Data for Name: user_role; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.user_role (user_role_id, prim_lang_name, seco_lang_name, fleet_id) FROM stdin;
1	Administrator	Administrator	3
2	Reader	Lecteur	2
3	Nouveau Role	Nouveau Role	2
4	geeg	geeg	1
5	TestLab	TestLab	2
6	GCC	GCC	4
\.


--
-- Data for Name: vessel; Type: TABLE svgc.DATA; Owner: svgc
--

COPY svgc.vessel (vessel_id, lloyds_number, mmsi_number, call_sign, current_name, year_construct, vessel_type, registry_port, ownerid, countrycode, ais_class, ice_class, maximum_draught, maximum_power, maximum_speed, moulded_depth, width, height, length, tonnage_net, tonnage_gross, tonnage_deadweight, status_id) FROM stdin;
1	9311622	636012814	A8IA6	VLADIMIR TIKHONOV	2006	TANKER	MONROVIA	BASSETT OCEANWAY	LIBERIA	Class A	NN	13.1	29598	14.3	23.00	50.06	53.44	280.50	51548	87146	162397	12
2	9273222	316009560	VAAP	ALGOSCOTIA	2004	TANKER	HALIFAX		CANADA	Class A	NN	6.2	8448	16.1	12.80	23.75	32.66	148.75	5609	13352	18610	12
3	7510846	316050000	CGDT	AMUNDSEN	1979	ICEBREAKER	OTTAWA		CANADA	Class A	Ice Class 1	7.3	17700	18.3	10.80	19.87	27.25	98.33	1678	5910	2865	12
4	9253727	310749000	ZCET5	TORONTO EXPRESS	2003	CARGO	HAMILTON	CANADA MARITIME	BERMUDA	Class A	NN	10.9	50680	18.8	21.50	32.31	56.88	293.98	22426	55994	47840	13
5	8409355	316007864	VD7857	CATHERINE LEGARDEUR	1985	PASSENGER	QUEBEC		CANADA	Class A	Ice Class 1	9.9	2259	6.9	5.74	21.34	12.33	62.50	536	1334	556	12
6	9590618	636015294	A8ZT4	SEAS 11	2013	CARGO	MONROVIA	AMINTA INTERNATIONAL SA	LIBERIA	Class A	1C	10.3	11869	14.6	15.20	28.00	42.55	190.00	12223	24196	37200	15
7	9345556	316011810	CFH8966	OCEAN K.RUSBY	2005	FIRE FIGHTING VESSEL	QUEBEC		CANADA	Class A	NN	5.8	5000	12.6	7.45	11.14	7.56	30.80	120	402	120	12
8	9413913	212340000	5BTE2	MACCOA	2009	CARGO	LIMASSOL	TRS RODE BV	CYPRUS	Class A	NN	10.8	9789	12.7	14.60	23.98	25.88	185.00	10208	19814	30898	12
9	7109233	316007848	VC7167	ALPHONSE DESJARDINS	1971	PASSENGER	QUEBEC		CANADA	Class A	NN	4.1	3239	12.2	5.30	21.80	14.89	66.47	1130	1741	220	13
10	9378371	247279600	ICJY	FANTASIA	2009	TANKER	BARI	MORFINI SPA	ITALY	Class A	NN	10.9	12889	15.0	19.10	32.20	35.69	176.00	13749	29614	51434	17
\.


--
-- PostgreSQL database dump complete
--

